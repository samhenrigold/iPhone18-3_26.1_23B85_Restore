void re::anonymous namespace::computeGeometryForCanonicalCorner(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, _OWORD *a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v237 = *MEMORY[0x1E69E9840];
  v219 = a5;
  v220 = a4;
  v218 = a6;
  v12 = re::GeomMesh::modifyVertexPositions(a1);
  v14 = v13;
  v216 = v12;
  v217 = v13;
  v15 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexTangent");
  v16 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v15);
  v206 = v17;
  v18 = v17;
  v19 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexNormal");
  v208 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
  v204 = v20;
  v21 = v20;
  if (v7)
  {
    v201 = a2;
    v22 = 0;
    v23 = 1.0 / (v8 + -1.0);
    v24 = 1.0 / (v7 + -1.0);
    while (1)
    {
      v25 = v22 == v7 - 1 ? 1.0 : v24 * v22;
      if (v8)
      {
        break;
      }

LABEL_31:
      v22 = (v22 + 1);
      if (v22 >= v7)
      {
        v14 = v217;
        a2 = v201;
        goto LABEL_33;
      }
    }

    v7 = 0;
    v14 = v6;
    v26 = v208 + 16 * v6;
    v6 = v16 + 16 * v6;
    while (1)
    {
      *v227 = 0u;
      v215 = 0u;
      v27 = v23 * v7;
      if (v7 == v8 - 1)
      {
        v27 = 1.0;
      }

      v8 = v217;
      if (v14 >= v217)
      {
        *&v213 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v69 = MEMORY[0x1E69E9C10];
        v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        if (v89)
        {
          v90 = 3;
        }

        else
        {
          v90 = 2;
        }

        *&v225[14] = 621;
        *&v225[18] = 2048;
        *&v225[20] = v14;
        *&v225[28] = 2048;
        *&v225[30] = v8;
        _os_log_send_and_compose_impl(v90, &v213, &v232, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
        _os_crash_msg();
        __break(1u);
LABEL_81:
        v211.i64[0] = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v91 = MEMORY[0x1E69E9C10];
        v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v227 = 136315906;
        *&v227[4] = "operator[]";
        *&v227[12] = 1024;
        if (v92)
        {
          v93 = 3;
        }

        else
        {
          v93 = 2;
        }

        *&v227[14] = 621;
        v228 = 2048;
        v229 = v22;
        v230 = 2048;
        v231 = v69;
        _os_log_send_and_compose_impl(v93, &v211, &v232, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
        _os_crash_msg();
        __break(1u);
LABEL_85:
        *&v213 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v21 = MEMORY[0x1E69E9C10];
        v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        if (v94)
        {
          v95 = 3;
        }

        else
        {
          v95 = 2;
        }

        *&v225[14] = 621;
        *&v225[18] = 2048;
        *&v225[20] = v14;
        *&v225[28] = 2048;
        *&v225[30] = v18;
        _os_log_send_and_compose_impl(v95, &v213, &v232, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
        _os_crash_msg();
        __break(1u);
LABEL_89:
        *&v213 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v96 = MEMORY[0x1E69E9C10];
        v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        if (v97)
        {
          v98 = 3;
        }

        else
        {
          v98 = 2;
        }

        *&v225[14] = 621;
        *&v225[18] = 2048;
        *&v225[20] = v14;
        *&v225[28] = 2048;
        *&v225[30] = v21;
        _os_log_send_and_compose_impl(v98, &v213, &v232, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
        _os_crash_msg();
        __break(1u);
LABEL_93:
        *&v213 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v21 = MEMORY[0x1E69E9C10];
        v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        if (v99)
        {
          v100 = 3;
        }

        else
        {
          v100 = 2;
        }

        *&v225[14] = 621;
        *&v225[18] = 2048;
        *&v225[20] = v14;
        *&v225[28] = 2048;
        *&v225[30] = v18;
        _os_log_send_and_compose_impl(v100, &v213, &v232, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
        _os_crash_msg();
        __break(1u);
LABEL_97:
        *&v213 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v101 = MEMORY[0x1E69E9C10];
        v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        if (v102)
        {
          v103 = 3;
        }

        else
        {
          v103 = 2;
        }

        *&v225[14] = 621;
        *&v225[18] = 2048;
        *&v225[20] = v14;
        *&v225[28] = 2048;
        *&v225[30] = v21;
        _os_log_send_and_compose_impl(v103, &v213, &v232, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
        _os_crash_msg();
        __break(1u);
LABEL_101:
        *&v213 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v104 = MEMORY[0x1E69E9C10];
        v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        if (v105)
        {
          v106 = 3;
        }

        else
        {
          v106 = 2;
        }

        *&v225[14] = 621;
        *&v225[18] = 2048;
        *&v225[20] = v14;
        *&v225[28] = 2048;
        *&v225[30] = v21;
        _os_log_send_and_compose_impl(v106, &v213, &v232, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
        _os_crash_msg();
        __break(1u);
LABEL_105:
        *&v213 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v107 = MEMORY[0x1E69E9C10];
        v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        if (v108)
        {
          v109 = 3;
        }

        else
        {
          v109 = 2;
        }

        *&v225[14] = 621;
        *&v225[18] = 2048;
        *&v225[20] = v14;
        *&v225[28] = 2048;
        *&v225[30] = v18;
        _os_log_send_and_compose_impl(v109, &v213, &v232, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
        _os_crash_msg();
        __break(1u);
LABEL_109:
        *&v213 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v21 = MEMORY[0x1E69E9C10];
        v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        if (v110)
        {
          v111 = 3;
        }

        else
        {
          v111 = 2;
        }

        *&v225[14] = 621;
        *&v225[18] = 2048;
        *&v225[20] = v14;
        *&v225[28] = 2048;
        *&v225[30] = v18;
        _os_log_send_and_compose_impl(v111, &v213, &v232, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
        _os_crash_msg();
        __break(1u);
LABEL_113:
        *&v213 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v68 = MEMORY[0x1E69E9C10];
        v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        *&v225[12] = 1024;
        if (v112)
        {
          v113 = 3;
        }

        else
        {
          v113 = 2;
        }

        *&v225[14] = 621;
        *&v225[18] = 2048;
        *&v225[20] = v14;
        *&v225[28] = 2048;
        *&v225[30] = v21;
        _os_log_send_and_compose_impl(v113, &v213, &v232, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
        _os_crash_msg();
        __break(1u);
LABEL_117:
        v211.i64[0] = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v114 = MEMORY[0x1E69E9C10];
        v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v227 = 136315906;
        *&v227[4] = "operator[]";
        *&v227[12] = 1024;
        if (v115)
        {
          v116 = 3;
        }

        else
        {
          v116 = 2;
        }

        *&v227[14] = 621;
        v228 = 2048;
        v229 = v22;
        v230 = 2048;
        v231 = v68;
        _os_log_send_and_compose_impl(v116, &v211, &v232, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
        _os_crash_msg();
        __break(1u);
LABEL_121:
        *v227 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v117 = MEMORY[0x1E69E9C10];
        v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        if (v118)
        {
          v119 = 3;
        }

        else
        {
          v119 = 2;
        }

        *&v225[12] = 1024;
        *&v225[14] = 621;
        *&v225[18] = 2048;
        *&v225[20] = v26;
        *&v225[28] = 2048;
        *&v225[30] = v14;
        _os_log_send_and_compose_impl(v119, v227, &v232, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
        _os_crash_msg();
        __break(1u);
        goto LABEL_125;
      }

      v30 = (v216 + 16 * v14);
      *v30 = v28;
      v30[1] = v29;
      v31 = *v227;
      v32 = vmulq_f32(v31, v31);
      v33 = v215;
      v34 = vmulq_f32(v33, v33);
      v35 = vmvn_s8(vceqz_f32(vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v34.i8, *v32.i8), vzip2_s32(*v34.i8, *v32.i8)))));
      if ((v35.i32[1] | v35.i32[0]))
      {
        v36 = xmmword_1E30476A0;
        if (v35.i8[0])
        {
          if (v35.i8[4])
          {
            if (v14 >= v18)
            {
              goto LABEL_105;
            }

            *v6 = *v227;
            v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), vnegq_f32(v31)), v33, vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL));
            v38 = vmulq_f32(v37, v37);
            v39 = v38.f32[1] + (v38.f32[2] + v38.f32[0]);
            if (v39 <= 0.0)
            {
              v46 = 0;
              v45 = 0;
            }

            else
            {
              v40 = LODWORD(v39);
              v41 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
              v42 = vrsqrte_f32(v40);
              v43 = vmul_f32(v42, vrsqrts_f32(v40, vmul_f32(v42, v42)));
              v44 = vmulq_n_f32(v41, vmul_f32(v43, vrsqrts_f32(v40, vmul_f32(v43, v43))).f32[0]);
              v45 = v44.i64[1];
              v46 = v44.i64[0];
            }

            if (v14 >= v21)
            {
              goto LABEL_113;
            }

            *v26 = v46;
            *(v26 + 8) = v45;
          }

          else
          {
            if (v14 >= v21)
            {
              goto LABEL_101;
            }

            *v26 = xmmword_1E30476A0;
            if (v14 >= v18)
            {
              goto LABEL_109;
            }

            v47 = vmlaq_f32(vmulq_f32(v33, xmmword_1E30661F0), xmmword_1E30476A0, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
            *v6 = vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL);
          }

          goto LABEL_23;
        }

        if (v14 >= v18)
        {
          goto LABEL_93;
        }

        *v6 = *v227;
        if (v14 >= v21)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v36 = xmmword_1E30476A0;
        if (v14 >= v18)
        {
          goto LABEL_85;
        }

        *v6 = xmmword_1E3047680;
        if (v14 >= v21)
        {
          goto LABEL_89;
        }
      }

      *v26 = v36;
LABEL_23:
      ++v14;
      v7 = (v7 + 1);
      v8 = v220;
      v26 += 16;
      v6 += 16;
      if (v7 >= v220)
      {
        v7 = v219;
        v6 = v14;
        goto LABEL_31;
      }
    }
  }

LABEL_33:
  v26 = (v6 - 1);
  if (v14 <= v26)
  {
    goto LABEL_121;
  }

  v48 = 0uLL;
  v49.i64[0] = 0;
  v49.i64[1] = *(v216 + 16 * v26 + 8);
  v215 = v49;
  if (v14 <= v6)
  {
LABEL_125:
    *v227 = 0;
    v235 = v48;
    v236 = v48;
    v233 = v48;
    v234 = v48;
    v232 = v48;
    v120 = MEMORY[0x1E69E9C10];
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    *&v225[12] = 1024;
    *&v225[14] = 621;
    *&v225[18] = 2048;
    *&v225[20] = v6;
    *&v225[28] = 2048;
    *&v225[30] = v14;
    _os_log_send_and_compose_impl(v122, v227, &v232, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_129;
  }

  v7 = v6;
  *(v216 + 16 * v6) = v215;
  if (v6 >= v206)
  {
LABEL_129:
    *v227 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    *&v225[12] = 1024;
    if (v123)
    {
      v124 = 3;
    }

    else
    {
      v124 = 2;
    }

    *&v225[14] = 621;
    *&v225[18] = 2048;
    *&v225[20] = v7;
    *&v225[28] = 2048;
    *&v225[30] = v18;
    _os_log_send_and_compose_impl(v124, v227, &v232, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_133;
  }

  *(v16 + 16 * v6) = xmmword_1E3047680;
  if (v6 >= v204)
  {
LABEL_133:
    *v227 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v125 = MEMORY[0x1E69E9C10];
    v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    *&v225[12] = 1024;
    if (v126)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    *&v225[14] = 621;
    *&v225[18] = 2048;
    *&v225[20] = v7;
    *&v225[28] = 2048;
    *&v225[30] = v21;
    _os_log_send_and_compose_impl(v127, v227, &v232, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_137;
  }

  *(v208 + 16 * v6) = xmmword_1E30476A0;
  v214 = v6;
  *v225 = &v215;
  *&v225[8] = &v218;
  *&v225[16] = &v220;
  *&v225[24] = &v219;
  *&v225[32] = &v214;
  v226 = &v216;
  v212 = 0u;
  v213 = 0u;
  v14 = v50;
  v8 = v51;
  a3 = (v6 + 1);
  v26 = v217;
  if (v217 <= a3)
  {
LABEL_137:
    v223 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v128 = MEMORY[0x1E69E9C10];
    v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v129)
    {
      v130 = 3;
    }

    else
    {
      v130 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = a3;
    v230 = 2048;
    v231 = v26;
    _os_log_send_and_compose_impl(v130, &v223, &v232, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_141;
  }

  v54.i64[0] = v14;
  v54.i64[1] = v8;
  v55.i64[0] = v52;
  v55.i64[1] = v53;
  v56 = vdupq_n_s32(0x3EAAAAABu);
  *(v216 + 16 * a3) = vmulq_f32(vaddq_f32(vaddq_f32(v54, v54), v55), v56);
  v8 = (v6 + 2);
  v26 = v217;
  if (v217 <= v8)
  {
LABEL_141:
    v223 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v131 = MEMORY[0x1E69E9C10];
    v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v132)
    {
      v133 = 3;
    }

    else
    {
      v133 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v8;
    v230 = 2048;
    v231 = v26;
    _os_log_send_and_compose_impl(v133, &v223, &v232, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_145;
  }

  *(v216 + 16 * v8) = vmulq_f32(vaddq_f32(vaddq_f32(v55, v55), v54), v56);
  v26 = v217;
  if (v217 <= a3)
  {
LABEL_145:
    v223 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v134 = MEMORY[0x1E69E9C10];
    v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v135)
    {
      v136 = 3;
    }

    else
    {
      v136 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = a3;
    v230 = 2048;
    v231 = v26;
    _os_log_send_and_compose_impl(v136, &v223, &v232, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_149;
  }

  v26 = v217;
  if (v217 <= v8)
  {
LABEL_149:
    v221 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v137 = MEMORY[0x1E69E9C10];
    v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v138)
    {
      v139 = 3;
    }

    else
    {
      v139 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v8;
    v230 = 2048;
    v231 = v26;
    _os_log_send_and_compose_impl(v139, &v221, &v232, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_153;
  }

  v58 = v223;
  if (v223 >= v206)
  {
LABEL_153:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v140 = MEMORY[0x1E69E9C10];
    v141 = v58;
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v141;
    v230 = 2048;
    v231 = v18;
    _os_log_send_and_compose_impl(v143, &v211, &v232, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_157;
  }

  v59 = HIDWORD(v223);
  if (HIDWORD(v223) >= v206)
  {
LABEL_157:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v144 = MEMORY[0x1E69E9C10];
    v145 = v59;
    v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v146)
    {
      v147 = 3;
    }

    else
    {
      v147 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v145;
    v230 = 2048;
    v231 = v18;
    _os_log_send_and_compose_impl(v147, &v211, &v232, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_161;
  }

  v60 = v224;
  if (v224 >= v206)
  {
LABEL_161:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v148 = MEMORY[0x1E69E9C10];
    v149 = v60;
    v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v150)
    {
      v151 = 3;
    }

    else
    {
      v151 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v149;
    v230 = 2048;
    v231 = v18;
    _os_log_send_and_compose_impl(v151, &v211, &v232, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_165;
  }

  if (a3 >= v206)
  {
LABEL_165:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v152 = MEMORY[0x1E69E9C10];
    v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v153)
    {
      v154 = 3;
    }

    else
    {
      v154 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = a3;
    v230 = 2048;
    v231 = v18;
    _os_log_send_and_compose_impl(v154, &v211, &v232, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_169;
  }

  LODWORD(v57) = DWORD1(v213);
  v61 = *&v213;
  v62 = *(&v213 + 2);
  *(v16 + 16 * a3) = vaddq_f32(vaddq_f32(vmulq_n_f32(*(v16 + 16 * v223), *&v213), vmulq_n_f32(*(v16 + 16 * HIDWORD(v223)), *(&v213 + 1))), vmulq_n_f32(*(v16 + 16 * v224), *(&v213 + 2)));
  v63 = v221;
  if (v221 >= v206)
  {
LABEL_169:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v155 = MEMORY[0x1E69E9C10];
    v156 = v63;
    v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v157)
    {
      v158 = 3;
    }

    else
    {
      v158 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v156;
    v230 = 2048;
    v231 = v18;
    _os_log_send_and_compose_impl(v158, &v211, &v232, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_173;
  }

  v6 = HIDWORD(v221);
  if (HIDWORD(v221) >= v206)
  {
LABEL_173:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v159 = MEMORY[0x1E69E9C10];
    v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v160)
    {
      v161 = 3;
    }

    else
    {
      v161 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v6;
    v230 = 2048;
    v231 = v18;
    _os_log_send_and_compose_impl(v161, &v211, &v232, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_177;
  }

  v14 = v222;
  if (v222 >= v206)
  {
LABEL_177:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v162 = MEMORY[0x1E69E9C10];
    v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v163)
    {
      v164 = 3;
    }

    else
    {
      v164 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v14;
    v230 = 2048;
    v231 = v18;
    _os_log_send_and_compose_impl(v164, &v211, &v232, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_181;
  }

  if (v8 >= v206)
  {
LABEL_181:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v165)
    {
      v166 = 3;
    }

    else
    {
      v166 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v8;
    v230 = 2048;
    v231 = v18;
    _os_log_send_and_compose_impl(v166, &v211, &v232, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
    goto LABEL_185;
  }

  v64 = v212;
  v65 = *(&v212 + 2);
  *(v16 + 16 * v8) = vaddq_f32(vaddq_f32(vmulq_n_f32(*(v16 + 16 * v221), *&v212), vmulq_n_f32(*(v16 + 16 * HIDWORD(v221)), *(&v212 + 1))), vmulq_n_f32(*(v16 + 16 * v222), *(&v212 + 2)));
  if (v8 >= v204)
  {
LABEL_185:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v167 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v167)
    {
      v168 = 3;
    }

    else
    {
      v168 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v8;
    v230 = 2048;
    v231 = v21;
    _os_log_send_and_compose_impl(v168, &v211, &v232, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v201, v203);
    _os_crash_msg();
    __break(1u);
LABEL_189:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v169 = MEMORY[0x1E69E9C10];
    v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v170)
    {
      v171 = 3;
    }

    else
    {
      v171 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v18;
    v230 = 2048;
    v231 = v68;
    _os_log_send_and_compose_impl(v171, &v211, &v232, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_193:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v69 = MEMORY[0x1E69E9C10];
    v172 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    if (v172)
    {
      v173 = 3;
    }

    else
    {
      v173 = 2;
    }

    *&v227[12] = 1024;
    *&v227[14] = 621;
    v228 = 2048;
    v229 = v26;
    v230 = 2048;
    v231 = v68;
    _os_log_send_and_compose_impl(v173, &v211, &v232, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_197;
  }

  *(v208 + 16 * v8) = *(v208 + 16 * v7);
  *(v208 + 16 * a3) = *(v208 + 16 * v7);
  if (!a2)
  {
    return;
  }

  v207 = v65;
  v209 = v62;
  v202 = v57;
  v210 = v61;
  v7 = v63;
  v205 = v60;
  v8 = v59;
  a3 = v58;
  v66 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a2);
  v18 = v218;
  v68 = v217;
  if (v217 <= v218)
  {
    goto LABEL_189;
  }

  LODWORD(v69) = v67;
  v70 = v216;
  v71 = *(v216 + 16 * v218);
  v72 = v219;
  if (v219)
  {
    v73 = 0;
    v74 = 0.0;
    v75 = v220;
    v26 = v218;
    v76 = v7;
    v78 = v209;
    v77 = v210;
    v80 = *(&v64 + 1);
    v79 = *&v64;
    v81 = v207;
    while (1)
    {
      v22 = v18 + v75 * v73;
      if (v68 <= v22)
      {
        goto LABEL_117;
      }

      v82 = *(v70 + 16 * v22);
      v83 = vsubq_f32(v82, v71);
      v84 = vmulq_f32(v83, v83);
      v74 = v74 + sqrtf(v84.f32[2] + vaddv_f32(*v84.f32));
      if (v75)
      {
        v22 = v26;
        v85 = v67 - v26;
        if (v67 < v26)
        {
          v85 = 0;
        }

        v86 = v75;
        do
        {
          if (!v85)
          {
            goto LABEL_81;
          }

          *(v66 + 4 * v22++) = v74;
          --v85;
          --v86;
        }

        while (v86);
        v26 = v22;
      }

      ++v73;
      v71 = v82;
      if (v73 == v72)
      {
        goto LABEL_65;
      }
    }
  }

  v82 = *(v216 + 16 * v218);
  v26 = v218;
  v76 = v7;
  v78 = v209;
  v77 = v210;
  v80 = *(&v64 + 1);
  v79 = *&v64;
  v81 = v207;
LABEL_65:
  if (v68 <= v26)
  {
    goto LABEL_193;
  }

  v18 = v26;
  if (v26 >= v67)
  {
LABEL_197:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v174 = MEMORY[0x1E69E9C10];
    v175 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v175)
    {
      v176 = 3;
    }

    else
    {
      v176 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v18;
    v230 = 2048;
    v231 = v69;
    _os_log_send_and_compose_impl(v176, &v211, &v232, 80, &dword_1E1C61000, v174, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_201;
  }

  v87 = vsubq_f32(*(v70 + 16 * v26), v82);
  v88 = vmulq_f32(v87, v87);
  *(v66 + 4 * v26) = sqrtf(v88.f32[2] + vaddv_f32(*v88.f32));
  if (a3 >= v67)
  {
LABEL_201:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v177 = MEMORY[0x1E69E9C10];
    v178 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v178)
    {
      v179 = 3;
    }

    else
    {
      v179 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = a3;
    v230 = 2048;
    v231 = v69;
    _os_log_send_and_compose_impl(v179, &v211, &v232, 80, &dword_1E1C61000, v177, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_205;
  }

  if (v8 >= v67)
  {
LABEL_205:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v180 = MEMORY[0x1E69E9C10];
    v181 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v181)
    {
      v182 = 3;
    }

    else
    {
      v182 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v8;
    v230 = 2048;
    v231 = v69;
    _os_log_send_and_compose_impl(v182, &v211, &v232, 80, &dword_1E1C61000, v180, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_209;
  }

  v7 = v205;
  if (v205 >= v67)
  {
LABEL_209:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v183 = MEMORY[0x1E69E9C10];
    v184 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v184)
    {
      v185 = 3;
    }

    else
    {
      v185 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v7;
    v230 = 2048;
    v231 = v69;
    _os_log_send_and_compose_impl(v185, &v211, &v232, 80, &dword_1E1C61000, v183, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_213;
  }

  v18 = (v26 + 1);
  if (v18 >= v67)
  {
LABEL_213:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v186 = MEMORY[0x1E69E9C10];
    v187 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v187)
    {
      v188 = 3;
    }

    else
    {
      v188 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v18;
    v230 = 2048;
    v231 = v69;
    _os_log_send_and_compose_impl(v188, &v211, &v232, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_217;
  }

  *(v66 + 4 * v18) = ((*&v202 * *(v66 + 4 * v8)) + (v77 * *(v66 + 4 * a3))) + (v78 * *(v66 + 4 * v205));
  if (v76 >= v67)
  {
LABEL_217:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v189 = MEMORY[0x1E69E9C10];
    v26 = v76;
    v190 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v190)
    {
      v191 = 3;
    }

    else
    {
      v191 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v26;
    v230 = 2048;
    v231 = v69;
    _os_log_send_and_compose_impl(v191, &v211, &v232, 80, &dword_1E1C61000, v189, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_221;
  }

  if (v6 >= v67)
  {
LABEL_221:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v192 = MEMORY[0x1E69E9C10];
    v193 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v193)
    {
      v194 = 3;
    }

    else
    {
      v194 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v6;
    v230 = 2048;
    v231 = v69;
    _os_log_send_and_compose_impl(v194, &v211, &v232, 80, &dword_1E1C61000, v192, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_225;
  }

  if (v14 >= v67)
  {
LABEL_225:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v195 = MEMORY[0x1E69E9C10];
    v196 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v196)
    {
      v197 = 3;
    }

    else
    {
      v197 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v14;
    v230 = 2048;
    v231 = v69;
    _os_log_send_and_compose_impl(v197, &v211, &v232, 80, &dword_1E1C61000, v195, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_229:
    v211.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v198 = MEMORY[0x1E69E9C10];
    v199 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v227 = 136315906;
    *&v227[4] = "operator[]";
    *&v227[12] = 1024;
    if (v199)
    {
      v200 = 3;
    }

    else
    {
      v200 = 2;
    }

    *&v227[14] = 621;
    v228 = 2048;
    v229 = v26;
    v230 = 2048;
    v231 = v69;
    _os_log_send_and_compose_impl(v200, &v211, &v232, 80, &dword_1E1C61000, v198, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v227, 38, v202, *(&v202 + 1));
    _os_crash_msg();
    __break(1u);
  }

  v26 = (v26 + 2);
  if (v26 >= v67)
  {
    goto LABEL_229;
  }

  *(v66 + 4 * v26) = ((v80 * *(v66 + 4 * v6)) + (v79 * *(v66 + 4 * v76))) + (v81 * *(v66 + 4 * v14));
}

uint64_t re::anonymous namespace::stitchTwoRows(uint64_t this, uint64_t a2, int *a3, int a4, void *a5, int a6, int *a7, unsigned int *a8)
{
  v14 = a3;
  v15 = this;
  v16 = (a3[2] - 1);
  if (a2 >= 2)
  {
    v8 = a7;
    v20 = a2;
    if (a3[2] == 1)
    {
      v23 = 1;
LABEL_16:
      v24 = *v8 + 1;
      *v8 = v24;
      v25 = v20 - 2;
      if (v20 != 2)
      {
        v26 = 0;
        do
        {
          if (v16)
          {
            LODWORD(a2) = *a8;
            v27 = v16;
            do
            {
              this = re::GeomMeshBuilder::setFaceVertices(v15, a2, *v8 - v23, *v8 + 1 - v23, *v8 + 1, *v8);
              ++*v8;
              a2 = *a8 + 1;
              *a8 = a2;
              --v27;
            }

            while (v27);
            v24 = *v8;
          }

          *v8 = ++v24;
          ++v26;
        }

        while (v26 != v25);
      }

      v28 = v24 - v23;
      *v8 = v24 - v23;
      if (!v16)
      {
LABEL_27:
        *v8 = v28 + 1;
        return this;
      }

      v29 = 0;
      while (1)
      {
        v14 = (v29 + 1);
        v30 = a5[1];
        if (v30 <= v29 + 1)
        {
          break;
        }

        this = re::GeomMeshBuilder::setFaceVertices(v15, *a8, v28, v28 + 1, *(*a5 + 4 * v29 + 4) + a6, *(*a5 + 4 * v29) + a6);
        ++*a8;
        v28 = *v8 + 1;
        *v8 = v28;
        v29 = v14;
        if (v16 == v14)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v21 = 0;
      while (1)
      {
        v22 = *(v14 + 1);
        if (v22 <= v21)
        {
          break;
        }

        v9 = (v21 + 1);
        if (v22 <= v21 + 1)
        {
          goto LABEL_30;
        }

        this = re::GeomMeshBuilder::setFaceVertices(v15, *a8, *(*v14 + 4 * v21) + a4, *(*v14 + 4 * v21 + 4) + a4, *v8 + 1, *v8);
        ++*v8;
        ++*a8;
        v21 = v9;
        if (v16 == v9)
        {
          v23 = v14[2];
          goto LABEL_16;
        }
      }

      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, v22);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v37);
      __break(1u);
LABEL_30:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v22);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v38);
      __break(1u);
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v30);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v33, v39);
    __break(1u);
  }

  else
  {
    if (a3[2] == 1)
    {
      return this;
    }

    v17 = 0;
    while (1)
    {
      v18 = *(v14 + 1);
      if (v18 <= v17)
      {
        break;
      }

      v8 = (v17 + 1);
      if (v18 <= v17 + 1)
      {
        goto LABEL_33;
      }

      v19 = a5[1];
      if (v19 <= v8)
      {
        goto LABEL_34;
      }

      this = re::GeomMeshBuilder::setFaceVertices(v15, *a8, *(*v14 + 4 * v17) + a4, *(*v14 + 4 * v17 + 4) + a4, *(*a5 + 4 * v17 + 4) + a6, *(*a5 + 4 * v17) + a6);
      ++*a8;
      v17 = v8;
      if (v16 == v8)
      {
        return this;
      }
    }
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v34, v40);
  __break(1u);
LABEL_33:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v18);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v35, v41);
  __break(1u);
LABEL_34:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17 + 1, v19);
  this = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v36, v42);
  __break(1u);
  return this;
}

float re::anonymous namespace::RoundedPatch::evalTangents(uint64_t a1, float32x4_t *a2, uint64_t a3, float a4, float a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 92);
  if (v9 <= 0.0)
  {
    a5 = 0.0;
  }

  re::internal::UIKitStyleBezierArc::eval(a1, a5);
  v13 = v12;
  v14 = *a1;
  v15 = 1.0;
  if (*a1 >= 1.0)
  {
    v15 = 1.5287;
  }

  else if (v14 > 0.0)
  {
    v15 = (v14 * 0.52866) + 1.0;
  }

  re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(v36, *(a1 + 96), (v11 / v15) + (*(a1 + 88) - v9));
  re::internal::UIKitStyleBezierArc::evalFirstDerivative(v36, a4);
  v17 = 0uLL;
  if (sqrtf(vaddv_f32(vmul_f32(v16, v16))) > 0.0)
  {
    *v17.f32 = v16;
    v18 = vmulq_f32(v17, v17);
    *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
    *v18.f32 = vrsqrte_f32(v19);
    *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
    v17 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  }

  v20 = 0;
  v35 = v17;
  *a2 = v17;
  v37 = xmmword_1E30A1010;
  v21 = 0uLL;
  do
  {
    *v21.f32 = vadd_f32(*v21.f32, vmul_n_f32(v36[v20 + 1], *(&v37 + v20)));
    ++v20;
  }

  while (v20 != 4);
  v22 = 0uLL;
  if (sqrtf(vaddv_f32(vmul_f32(*v21.f32, *v21.f32))) > 0.0)
  {
    v23 = vmulq_f32(v21, v21);
    *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
    *v23.f32 = vrsqrte_f32(v24);
    *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
    v22 = vmulq_n_f32(v21, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
  }

  v34 = v22;
  re::internal::UIKitStyleBezierArc::evalFirstDerivative(a1, a5);
  v26.i32[0] = 0;
  v27 = 0;
  v28 = 0.0;
  if (sqrtf(vaddv_f32(vmul_f32(v25, v25))) > 0.0)
  {
    v29 = vmulq_f32(v25, v25);
    *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
    *v29.f32 = vrsqrte_f32(v30);
    *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
    v26 = vmulq_n_f32(v25, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
    v27 = v26.i32[1];
    v28 = v26.f32[2];
  }

  v31 = vmulq_f32(v34, v35);
  v31.f32[0] = fmaxf(fminf(v31.f32[2] + vaddv_f32(*v31.f32), 1.0), -1.0);
  v32 = sqrtf(1.0 - (v31.f32[0] * v31.f32[0]));
  *a3 = (v31.f32[0] * v26.f32[0]) - (v32 * v28);
  *(a3 + 4) = (v31.f32[0] * v28) + (v32 * v26.f32[0]);
  *(a3 + 8) = v27;
  re::internal::UIKitStyleBezierArc::eval(v36, a4);
  return v13;
}

float32_t re::anonymous namespace::computeGeometryForCanonicalCorner(re::GeomMesh &,re::GeomAttribute *,re::anonymous namespace::RoundedPatch const&,unsigned int,unsigned int,unsigned int)::$_0::operator()(uint64_t a1, int *a2, uint64_t a3, float32x4_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  v5 = **(a1 + 16);
  v6 = (**(a1 + 8) + (**(a1 + 24) - 1) * v5);
  v7 = (v5 + v6 - 1);
  v8 = *(a1 + 32);
  v9 = *v8;
  *a2 = *v8;
  a2[1] = v9;
  a2[2] = *v8;
  *a3 = xmmword_1E3047670;
  if (v6 < v7)
  {
    a4 = vsubq_f32(a4, v4);
    v10 = *(a1 + 40);
    v11 = *(v10 + 8);
    v12 = vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL);
    v13 = vnegq_f32(a4);
    if (v11 <= v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = *(v10 + 8);
    }

    v15 = 16 * v6 + 16;
    for (i = v6; ; ++i)
    {
      if (v14 == i)
      {
        v36 = 0;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        v37 = 136315906;
        v38 = "operator[]";
        v39 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v29 = 3;
        }

        else
        {
          v29 = 2;
        }

        v40 = 621;
        v41 = 2048;
        v42 = v14;
        v43 = 2048;
        v44 = v11;
        _os_log_send_and_compose_impl(v29, &v36, &v45, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v35);
        _os_crash_msg();
        __break(1u);
LABEL_18:
        v36 = 0;
        v48 = 0u;
        v49 = 0u;
        if (v6 + 1 > v11)
        {
          v30 = v6 + 1;
        }

        else
        {
          v30 = v11;
        }

        v46 = 0uLL;
        v47 = 0uLL;
        v45 = 0uLL;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v37 = 136315906;
        v38 = "operator[]";
        v39 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v40 = 621;
        v41 = 2048;
        v42 = v30;
        v43 = 2048;
        v44 = v11;
        _os_log_send_and_compose_impl(v33, &v36, &v45, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v35);
        _os_crash_msg();
        __break(1u);
      }

      v17 = i + 1;
      if (i + 1 >= v11)
      {
        goto LABEL_18;
      }

      v18 = **a1;
      v19 = vsubq_f32(*(*v10 + v15 - 16), v18);
      v20 = vsubq_f32(*(*v10 + v15), v18);
      v21 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
      v22 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
      v23 = vmulq_f32(vmlaq_f32(vmulq_f32(v21, v13), v19, v12), vmlaq_f32(vmulq_f32(v22, v13), v20, v12));
      if ((v23.f32[1] + (v23.f32[2] + v23.f32[0])) < 0.0)
      {
        v24 = vmlaq_f32(vmulq_f32(v22, vnegq_f32(v19)), v20, v21);
        if (v24.f32[1] > 0.0)
        {
          break;
        }
      }

      v15 += 16;
      if (v7 == v17)
      {
        return a4.f32[0];
      }
    }

    *a2 = **(a1 + 32);
    a2[1] = i;
    a2[2] = i + 1;
    v25 = vsubq_f32(v19, a4);
    v26 = vsubq_f32(v20, a4);
    v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
    v25.i64[0] = vdivq_f32(vmlaq_f32(vmulq_f32(v27, vnegq_f32(v25)), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL)), v24).u64[0];
    a4.i64[0] = vdivq_f32(vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vnegq_f32(v26)), v27, a4), v24).u64[0];
    *a3 = vzip2_s32(*v25.i8, *a4.f32);
    a4.f32[0] = (1.0 - *&v25.i32[1]) - a4.f32[1];
    *(a3 + 8) = a4.i32[0];
  }

  return a4.f32[0];
}

unint64_t re::anonymous namespace::computeGeometryForInstancedFrontCorners(re::_anonymous_namespace_ *this, re::GeomMesh *a2, re::GeomAttribute *a3, unsigned int a4)
{
  v162 = a3;
  v188 = *MEMORY[0x1E69E9840];
  v8 = re::GeomMesh::modifyVertexPositions(this);
  v170 = v9;
  v10 = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexTangent");
  v11 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v10);
  v13 = v12;
  v165 = v12;
  v14 = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexNormal");
  result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v14);
  v24 = a2;
  v25 = result;
  v27 = v26;
  v164 = v26;
  v171 = a2;
  if (a2)
  {
    result = re::GeomAttribute::modifyValues<re::Vector3<float>>(a2);
    v24 = a2;
    v169 = result;
  }

  else
  {
    v169 = 0;
    v28 = 0xFFFFFFFFLL;
  }

  v166 = 2 * v162;
  HIDWORD(v160) = 3 * v162;
  v29 = v170;
  v172 = v8;
  if (a4)
  {
    v30 = 0;
    v31 = ((v162 + -3.0) / a4);
    v173 = v28;
    v167 = a4;
    v163 = v8 + 4;
    do
    {
      if (v31)
      {
        v32 = 0;
        v4 = 0;
        v33 = (v30 * v31);
        v161 = v30;
        result = (v33 + v166);
        v168 = v30 + 1;
        v34 = (v30 + 1) * v31;
        if (v170 >= v33)
        {
          v35 = v170 - v33;
        }

        else
        {
          v35 = 0;
        }

        if (v170 >= result)
        {
          v36 = v170 - result;
        }

        else
        {
          v36 = 0;
        }

        v37 = v8 + 16 * result;
        if (v165 >= v33)
        {
          v38 = v165 - v33;
        }

        else
        {
          v38 = 0;
        }

        v39 = v169 + 4 * v33;
        if (v165 >= result)
        {
          v40 = v165 - result;
        }

        else
        {
          v40 = 0;
        }

        v41 = v164 - v33;
        v42 = v163 + 16 * v33;
        if (v164 < v33)
        {
          v41 = 0;
        }

        v43 = v164 - result;
        if (v164 < result)
        {
          v43 = 0;
        }

        v44 = HIDWORD(v160) - 1 + v34;
        v45 = v162 - 1 + v34;
        v46 = v11 + 16 * v33;
        v47 = v25 + 16 * v33;
        do
        {
          if (v35 == v4)
          {
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v74 = MEMORY[0x1E69E9C10];
            v176 = "operator[]";
            v177 = 1024;
            v178 = 621;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v75 = 3;
            }

            else
            {
              v75 = 2;
            }

            v175 = 136315906;
            v179 = 2048;
            v180 = (v4 + v31 * v161);
            v181 = 2048;
            v182 = v170;
            _os_log_send_and_compose_impl(v75, &v174, &v183, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_74:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v76 = MEMORY[0x1E69E9C10];
            v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            if (v77)
            {
              v78 = 3;
            }

            else
            {
              v78 = 2;
            }

            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = v45;
            v181 = 2048;
            v182 = v170;
            _os_log_send_and_compose_impl(v78, &v174, &v183, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_78:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v79 = MEMORY[0x1E69E9C10];
            v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v176 = "operator[]";
            v177 = 1024;
            v178 = 621;
            if (v80)
            {
              v81 = 3;
            }

            else
            {
              v81 = 2;
            }

            v175 = 136315906;
            v179 = 2048;
            v180 = (v166 + v31 * v161 + v4);
            v181 = 2048;
            v182 = v170;
            _os_log_send_and_compose_impl(v81, &v174, &v183, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_82:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v82 = MEMORY[0x1E69E9C10];
            v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            if (v83)
            {
              v84 = 3;
            }

            else
            {
              v84 = 2;
            }

            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = v44;
            v181 = 2048;
            v182 = v170;
            _os_log_send_and_compose_impl(v84, &v174, &v183, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_86:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v85 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v86 = 3;
            }

            else
            {
              v86 = 2;
            }

            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = (v31 * v161) + v4;
            v181 = 2048;
            v182 = v165;
            _os_log_send_and_compose_impl(v86, &v174, &v183, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_90:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v87 = MEMORY[0x1E69E9C10];
            v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v88)
            {
              v89 = 3;
            }

            else
            {
              v89 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v8;
            v181 = 2048;
            v182 = v165;
            _os_log_send_and_compose_impl(v89, &v174, &v183, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_94:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v53 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v90 = 3;
            }

            else
            {
              v90 = 2;
            }

            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = (v166 + v31 * v161) + v4;
            v181 = 2048;
            v182 = v165;
            _os_log_send_and_compose_impl(v90, &v174, &v183, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_98:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v91 = MEMORY[0x1E69E9C10];
            v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v92)
            {
              v93 = 3;
            }

            else
            {
              v93 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v53;
            v181 = 2048;
            v182 = v165;
            _os_log_send_and_compose_impl(v93, &v174, &v183, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_102:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v94 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v95 = 3;
            }

            else
            {
              v95 = 2;
            }

            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = (v31 * v161) + v4;
            v181 = 2048;
            v182 = v164;
            _os_log_send_and_compose_impl(v95, &v174, &v183, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_106:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v96 = MEMORY[0x1E69E9C10];
            v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v97)
            {
              v98 = 3;
            }

            else
            {
              v98 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v8;
            v181 = 2048;
            v182 = v164;
            _os_log_send_and_compose_impl(v98, &v174, &v183, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_110:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v53 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v99 = 3;
            }

            else
            {
              v99 = 2;
            }

            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = (v166 + v31 * v161) + v4;
            v181 = 2048;
            v182 = v164;
            _os_log_send_and_compose_impl(v99, &v174, &v183, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_114:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v100 = MEMORY[0x1E69E9C10];
            v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v101)
            {
              v102 = 3;
            }

            else
            {
              v102 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v53;
            v181 = 2048;
            v182 = v164;
            _os_log_send_and_compose_impl(v102, &v174, &v183, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_118:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v103 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v104 = 3;
            }

            else
            {
              v104 = 2;
            }

            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = (v31 * v161) + v4;
            v181 = 2048;
            v182 = v173;
            _os_log_send_and_compose_impl(v104, &v174, &v183, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_122:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v105 = MEMORY[0x1E69E9C10];
            v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v106)
            {
              v107 = 3;
            }

            else
            {
              v107 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v8;
            v181 = 2048;
            v182 = v173;
            _os_log_send_and_compose_impl(v107, &v174, &v183, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_126:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v53 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v108 = 3;
            }

            else
            {
              v108 = 2;
            }

            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = (v166 + v31 * v161) + v4;
            v181 = 2048;
            v182 = v173;
            _os_log_send_and_compose_impl(v108, &v174, &v183, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_130:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v109 = MEMORY[0x1E69E9C10];
            v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v110)
            {
              v111 = 3;
            }

            else
            {
              v111 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v53;
            v181 = 2048;
            v182 = v173;
            _os_log_send_and_compose_impl(v111, &v174, &v183, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_134:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v112 = MEMORY[0x1E69E9C10];
            v113 = v29;
            v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v114)
            {
              v115 = 3;
            }

            else
            {
              v115 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v8;
            v181 = 2048;
            v182 = v113;
            _os_log_send_and_compose_impl(v115, &v174, &v183, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_138:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v116 = MEMORY[0x1E69E9C10];
            v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v117)
            {
              v118 = 3;
            }

            else
            {
              v118 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v8;
            v181 = 2048;
            v182 = v165;
            _os_log_send_and_compose_impl(v118, &v174, &v183, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_142:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v65 = MEMORY[0x1E69E9C10];
            v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v119)
            {
              v120 = 3;
            }

            else
            {
              v120 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v8;
            v181 = 2048;
            v182 = v164;
            _os_log_send_and_compose_impl(v120, &v174, &v183, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_146:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v59 = MEMORY[0x1E69E9C10];
            v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v121)
            {
              v122 = 3;
            }

            else
            {
              v122 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v4;
            v181 = 2048;
            v182 = v65;
            _os_log_send_and_compose_impl(v122, &v174, &v183, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_150:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v69 = MEMORY[0x1E69E9C10];
            v123 = v29;
            v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            if (v124)
            {
              v125 = 3;
            }

            else
            {
              v125 = 2;
            }

            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = v59;
            v181 = 2048;
            v182 = v123;
            _os_log_send_and_compose_impl(v125, &v174, &v183, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_154:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v126 = MEMORY[0x1E69E9C10];
            v127 = v29;
            v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v128)
            {
              v129 = 3;
            }

            else
            {
              v129 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v69;
            v181 = 2048;
            v182 = v127;
            _os_log_send_and_compose_impl(v129, &v174, &v183, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_158:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v71 = MEMORY[0x1E69E9C10];
            v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v130)
            {
              v131 = 3;
            }

            else
            {
              v131 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v4;
            v181 = 2048;
            v182 = v165;
            _os_log_send_and_compose_impl(v131, &v174, &v183, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_162:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v132 = MEMORY[0x1E69E9C10];
            v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v133)
            {
              v134 = 3;
            }

            else
            {
              v134 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v71;
            v181 = 2048;
            v182 = v165;
            _os_log_send_and_compose_impl(v134, &v174, &v183, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_166:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v135 = MEMORY[0x1E69E9C10];
            v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v136)
            {
              v137 = 3;
            }

            else
            {
              v137 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v69;
            v181 = 2048;
            v182 = v165;
            _os_log_send_and_compose_impl(v137, &v174, &v183, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_170:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v71 = MEMORY[0x1E69E9C10];
            v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v138)
            {
              v139 = 3;
            }

            else
            {
              v139 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v4;
            v181 = 2048;
            v182 = v164;
            _os_log_send_and_compose_impl(v139, &v174, &v183, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_174:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v140 = MEMORY[0x1E69E9C10];
            v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v141)
            {
              v142 = 3;
            }

            else
            {
              v142 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v71;
            v181 = 2048;
            v182 = v164;
            _os_log_send_and_compose_impl(v142, &v174, &v183, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_178:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v143 = MEMORY[0x1E69E9C10];
            v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            v177 = 1024;
            if (v144)
            {
              v145 = 3;
            }

            else
            {
              v145 = 2;
            }

            v178 = 621;
            v179 = 2048;
            v180 = v69;
            v181 = 2048;
            v182 = v164;
            _os_log_send_and_compose_impl(v145, &v174, &v183, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_182:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v146 = MEMORY[0x1E69E9C10];
            v147 = v28;
            v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            if (v148)
            {
              v149 = 3;
            }

            else
            {
              v149 = 2;
            }

            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = v8;
            v181 = 2048;
            v182 = v147;
            _os_log_send_and_compose_impl(v149, &v174, &v183, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_186:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v71 = MEMORY[0x1E69E9C10];
            v150 = v28;
            v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            if (v151)
            {
              v152 = 3;
            }

            else
            {
              v152 = 2;
            }

            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = v4;
            v181 = 2048;
            v182 = v150;
            _os_log_send_and_compose_impl(v152, &v174, &v183, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_190:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v153 = MEMORY[0x1E69E9C10];
            v69 = v28;
            v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            if (v154)
            {
              v155 = 3;
            }

            else
            {
              v155 = 2;
            }

            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = v71;
            v181 = 2048;
            v182 = v69;
            _os_log_send_and_compose_impl(v155, &v174, &v183, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
LABEL_194:
            v174 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            v156 = MEMORY[0x1E69E9C10];
            v157 = v28;
            v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v175 = 136315906;
            v176 = "operator[]";
            if (v158)
            {
              v159 = 3;
            }

            else
            {
              v159 = 2;
            }

            v177 = 1024;
            v178 = 621;
            v179 = 2048;
            v180 = v69;
            v181 = 2048;
            v182 = v157;
            _os_log_send_and_compose_impl(v159, &v174, &v183, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v175, 38, v160, v161);
            _os_crash_msg();
            __break(1u);
          }

          if (v45 >= v29)
          {
            goto LABEL_74;
          }

          v16.i32[0] = *(v42 + v32 - 4);
          *v18.i32 = -*v16.i32;
          v48 = *(v42 + v32);
          v49 = v18;
          *&v49.i32[1] = v48;
          v50 = *(v42 + v32 + 4);
          v49.i32[2] = v50;
          *(v8 + 16 * v45) = v49;
          if (v36 == v4)
          {
            goto LABEL_78;
          }

          v51 = -v48;
          *&v18.i32[1] = v51;
          v18.i32[2] = v50;
          *(v37 + 16 * v4) = v18;
          if (v44 >= v29)
          {
            goto LABEL_82;
          }

          *&v16.i32[1] = v51;
          v16.i32[2] = v50;
          *(v8 + 16 * v44) = v16;
          if (v38 == v4)
          {
            goto LABEL_86;
          }

          v8 = v45;
          if (v45 >= v13)
          {
            goto LABEL_90;
          }

          v16.i64[0] = *(v46 + v32 + 4);
          v18.i32[0] = *(v46 + v32);
          v52 = v18;
          *&v52.i32[1] = -*v16.i32;
          v52.i32[2] = v16.i32[1];
          *(v11 + 16 * v45) = v52;
          if (v40 == v4)
          {
            goto LABEL_94;
          }

          *v18.i32 = -*v18.i32;
          v19 = v18;
          *&v19.i32[1] = -*v16.i32;
          v53 = v44;
          v19.i32[2] = v16.i32[1];
          *(v11 + 16 * result + 16 * v4) = v19;
          if (v44 >= v13)
          {
            goto LABEL_98;
          }

          v17 = vextq_s8(v18, v18, 4uLL);
          v16 = vextq_s8(v17, v16, 0xCuLL);
          *(v11 + 16 * v44) = v16;
          if (v41 == v4)
          {
            goto LABEL_102;
          }

          if (v45 >= v27)
          {
            goto LABEL_106;
          }

          v16.i32[0] = *(v47 + v32);
          v54 = *(v47 + v32 + 4);
          *v18.i32 = -*v16.i32;
          v20 = v18;
          *&v20.i32[1] = v54;
          v55 = *(v47 + v32 + 8);
          v20.i32[2] = v55;
          *(v25 + 16 * v45) = v20;
          if (v43 == v4)
          {
            goto LABEL_110;
          }

          v56 = -v54;
          *&v18.i32[1] = v56;
          v18.i32[2] = v55;
          *(v25 + 16 * result + 16 * v4) = v18;
          if (v44 >= v27)
          {
            goto LABEL_114;
          }

          *&v16.i32[1] = v56;
          v16.i32[2] = v55;
          *(v25 + 16 * v44) = v16;
          if (v171)
          {
            if (v33 + v4 >= v28)
            {
              goto LABEL_118;
            }

            if (v28 <= v45)
            {
              goto LABEL_122;
            }

            v57 = *(v39 + 4 * v4);
            *(v169 + 4 * v45) = v57;
            v8 = v169;
            if (result + v4 >= v28)
            {
              goto LABEL_126;
            }

            *(v169 + 4 * result + 4 * v4) = v57;
            if (v28 <= v44)
            {
              goto LABEL_130;
            }

            *(v169 + 4 * v44) = *(v39 + 4 * v4);
          }

          ++v4;
          --v44;
          --v45;
          v32 += 16;
          v29 = v170;
          v8 = v172;
        }

        while (v31 != v4);
        v24 = v171;
        v58 = v168;
      }

      else
      {
        v58 = v30 + 1;
      }

      v30 = v58;
    }

    while (v58 != v167);
  }

  LODWORD(v59) = HIDWORD(v160) - 1;
  v60 = 4 * v162 - 1;
  v61 = v166 - 1;
  v62 = v162 - 1;
  v63 = -3;
  do
  {
    v64 = ((v63 + 4) + -3.0);
    if (v63 == -3)
    {
      v64 = 1;
    }

    v8 = v62;
    if (v62 >= v29)
    {
      goto LABEL_134;
    }

    if (v62 >= v13)
    {
      goto LABEL_138;
    }

    if (v62 >= v27)
    {
      goto LABEL_142;
    }

    v4 = (v61 - v64);
    v65 = v29;
    if (v4 >= v29)
    {
      goto LABEL_146;
    }

    v66 = v172 + 16 * v62;
    LODWORD(v21) = *v66;
    v22.i64[0] = *(v66 + 4);
    v67 = v11 + 16 * v62;
    v20.i32[0] = *v67;
    v19.i64[0] = *(v67 + 4);
    v68 = v25 + 16 * v62;
    v17.i32[0] = *v68;
    v18.i64[0] = *(v68 + 4);
    *v23.i32 = -*&v21;
    *(v172 + 16 * v4) = vextq_s8(vextq_s8(v23, v23, 4uLL), v22, 0xCuLL);
    v29 = v65;
    if (v59 >= v65)
    {
      goto LABEL_150;
    }

    *&v23.i32[1] = -*v22.i32;
    v23.i32[2] = v22.i32[1];
    *(v172 + 16 * v59) = v23;
    v69 = (v60 - v64);
    if (v69 >= v65)
    {
      goto LABEL_154;
    }

    *(&v21 + 1) = -*v22.i32;
    DWORD2(v21) = v22.i32[1];
    *(v172 + 16 * v69) = v21;
    if (v4 >= v13)
    {
      goto LABEL_158;
    }

    v70 = v20;
    *&v70.i32[1] = -*v19.i32;
    v71 = v59;
    v70.i32[2] = v19.i32[1];
    *(v11 + 16 * v4) = v70;
    if (v59 >= v13)
    {
      goto LABEL_162;
    }

    *v20.i32 = -*v20.i32;
    v22 = v20;
    *&v22.i32[1] = -*v19.i32;
    v22.i32[2] = v19.i32[1];
    *(v11 + 16 * v59) = v22;
    if (v69 >= v13)
    {
      goto LABEL_166;
    }

    v19 = vextq_s8(vextq_s8(v20, v20, 4uLL), v19, 0xCuLL);
    *(v11 + 16 * v69) = v19;
    if (v4 >= v27)
    {
      goto LABEL_170;
    }

    *v19.i32 = -*v17.i32;
    v20 = vextq_s8(vextq_s8(v19, v19, 4uLL), v18, 0xCuLL);
    *(v25 + 16 * v4) = v20;
    if (v59 >= v27)
    {
      goto LABEL_174;
    }

    *&v19.i32[1] = -*v18.i32;
    v19.i32[2] = v18.i32[1];
    *(v25 + 16 * v59) = v19;
    if (v69 >= v27)
    {
      goto LABEL_178;
    }

    *&v17.i32[1] = -*v18.i32;
    v17.i32[2] = v18.i32[1];
    *(v25 + 16 * v69) = v17;
    if (v24)
    {
      if (v28 <= v62)
      {
        goto LABEL_182;
      }

      if (v28 <= v4)
      {
        goto LABEL_186;
      }

      v72 = *(v169 + 4 * v62);
      *(v169 + 4 * v4) = v72;
      if (v28 <= v59)
      {
        goto LABEL_190;
      }

      *(v169 + 4 * v59) = v72;
      if (v28 <= v69)
      {
        goto LABEL_194;
      }

      *(v169 + 4 * v69) = *(v169 + 4 * v62);
    }

    LODWORD(v59) = v59 - 1;
    --v60;
    --v61;
    --v62;
  }

  while (!__CFADD__(v63++, 1));
  return result;
}

uint64_t re::anonymous namespace::translateCornerVertexPositions(uint64_t result, unsigned int a2, float32x4_t a3, float a4, float a5, float32x4_t a6)
{
  v65 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = 0;
    a6.f32[0] = a3.f32[0] * 0.5;
    v7 = a6;
    v7.f32[1] = a4 * 0.5;
    v8 = v7;
    a3.f32[0] = -(a3.f32[0] * 0.5);
    v9 = a3;
    v9.f32[1] = a4 * 0.5;
    v10 = v9;
    a3.f32[1] = -(a4 * 0.5);
    v11 = a3;
    a6.i32[1] = a3.i32[1];
    v12 = a6;
    v13 = 3 * a2;
    v14 = 6 * a2;
    v15 = 5 * a2;
    v16 = 4 * a2;
    v17 = 2 * a2;
    v19 = 7 * a2;
    do
    {
      v20 = *(result + 8);
      if (v6 >= v20)
      {
        v51 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v27 = MEMORY[0x1E69E9C10];
        v52 = 136315906;
        v53 = "operator[]";
        v54 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        v55 = 621;
        v56 = 2048;
        v57 = v6;
        v58 = 2048;
        v59 = v20;
        _os_log_send_and_compose_impl(v28, &v51, &v60, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
        _os_crash_msg();
        __break(1u);
LABEL_17:
        v51 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = "operator[]";
        v54 = 1024;
        v55 = 621;
        if (v30)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        v52 = 136315906;
        v56 = 2048;
        v57 = a2 + v6;
        v58 = 2048;
        v59 = v20;
        _os_log_send_and_compose_impl(v31, &v51, &v60, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
        _os_crash_msg();
        __break(1u);
LABEL_21:
        v51 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = "operator[]";
        v54 = 1024;
        v55 = 621;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v52 = 136315906;
        v56 = 2048;
        v57 = (v17 + v6);
        v58 = 2048;
        v59 = v20;
        _os_log_send_and_compose_impl(v34, &v51, &v60, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
        _os_crash_msg();
        __break(1u);
LABEL_25:
        v51 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = "operator[]";
        v54 = 1024;
        v55 = 621;
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v52 = 136315906;
        v56 = 2048;
        v57 = (v13 + v6);
        v58 = 2048;
        v59 = v20;
        _os_log_send_and_compose_impl(v37, &v51, &v60, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
        _os_crash_msg();
        __break(1u);
LABEL_29:
        v51 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v38 = MEMORY[0x1E69E9C10];
        v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = "operator[]";
        v54 = 1024;
        v55 = 621;
        if (v39)
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }

        v52 = 136315906;
        v56 = 2048;
        v57 = (v16 + v6);
        v58 = 2048;
        v59 = v20;
        _os_log_send_and_compose_impl(v40, &v51, &v60, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
        _os_crash_msg();
        __break(1u);
LABEL_33:
        v51 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v41 = MEMORY[0x1E69E9C10];
        v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = "operator[]";
        v54 = 1024;
        v55 = 621;
        if (v42)
        {
          v43 = 3;
        }

        else
        {
          v43 = 2;
        }

        v52 = 136315906;
        v56 = 2048;
        v57 = (v15 + v6);
        v58 = 2048;
        v59 = v20;
        _os_log_send_and_compose_impl(v43, &v51, &v60, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
        _os_crash_msg();
        __break(1u);
LABEL_37:
        v51 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v44 = MEMORY[0x1E69E9C10];
        v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = "operator[]";
        v54 = 1024;
        v55 = 621;
        if (v45)
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        v52 = 136315906;
        v56 = 2048;
        v57 = (v14 + v6);
        v58 = 2048;
        v59 = v20;
        _os_log_send_and_compose_impl(v46, &v51, &v60, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
        _os_crash_msg();
        __break(1u);
LABEL_41:
        v51 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v47 = MEMORY[0x1E69E9C10];
        v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = "operator[]";
        v54 = 1024;
        v55 = 621;
        if (v48)
        {
          v49 = 3;
        }

        else
        {
          v49 = 2;
        }

        v52 = 136315906;
        v56 = 2048;
        v57 = (v19 + v6);
        v58 = 2048;
        v59 = v20;
        _os_log_send_and_compose_impl(v49, &v51, &v60, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
        _os_crash_msg();
        __break(1u);
      }

      v8.f32[2] = a5 * 0.5;
      *(*result + 16 * v6) = vaddq_f32(v8, *(*result + 16 * v6));
      v20 = *(result + 8);
      if (a2 + v6 >= v20)
      {
        goto LABEL_17;
      }

      v10.f32[2] = a5 * 0.5;
      *(*result + 16 * a2 + 16 * v6) = vaddq_f32(v10, *(*result + 16 * a2 + 16 * v6));
      v20 = *(result + 8);
      if (v17 + v6 >= v20)
      {
        goto LABEL_21;
      }

      v21 = *result + 32 * a2;
      v11.f32[2] = a5 * 0.5;
      *(v21 + 16 * v6) = vaddq_f32(v11, *(v21 + 16 * v6));
      v20 = *(result + 8);
      if (v13 + v6 >= v20)
      {
        goto LABEL_25;
      }

      v22 = *result + 48 * a2;
      v12.f32[2] = a5 * 0.5;
      *(v22 + 16 * v6) = vaddq_f32(v12, *(v22 + 16 * v6));
      v20 = *(result + 8);
      if (v16 + v6 >= v20)
      {
        goto LABEL_29;
      }

      v23 = *result + 64 * a2;
      a6.f32[2] = -(a5 * 0.5);
      *(v23 + 16 * v6) = vaddq_f32(a6, *(v23 + 16 * v6));
      v20 = *(result + 8);
      if (v15 + v6 >= v20)
      {
        goto LABEL_33;
      }

      v24 = *result + 80 * a2;
      a3.f32[2] = -(a5 * 0.5);
      *(v24 + 16 * v6) = vaddq_f32(a3, *(v24 + 16 * v6));
      v20 = *(result + 8);
      if (v14 + v6 >= v20)
      {
        goto LABEL_37;
      }

      v25 = *result + 96 * a2;
      v9.f32[2] = -(a5 * 0.5);
      *(v25 + 16 * v6) = vaddq_f32(v9, *(v25 + 16 * v6));
      v20 = *(result + 8);
      if (v19 + v6 >= v20)
      {
        goto LABEL_41;
      }

      v26 = *result + 112 * a2;
      v7.f32[2] = -(a5 * 0.5);
      *(v26 + 16 * v6) = vaddq_f32(v7, *(v26 + 16 * v6));
      ++v6;
    }

    while (a2 != v6);
  }

  return result;
}

uint64_t re::anonymous namespace::computeGeometryToStitchTwoRows(uint64_t result, void *a2, unint64_t a3, void *a4, uint64_t a5, void *a6, int a7, uint64_t a8)
{
  v100 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v10 = result;
    v12 = a3;
    if (a2)
    {
      v14 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a2);
      LODWORD(v16) = v15;
    }

    else
    {
      v14 = 0;
      LODWORD(v16) = -1;
    }

    v17 = re::GeomMesh::modifyVertexPositions(v10);
    v83 = v18;
    v19 = re::internal::GeomAttributeManager::attributeByName((v10 + 64), "vertexTangent");
    v20 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
    v21 = v10;
    v22 = v20;
    v24 = v23;
    v80 = v23;
    v25 = re::internal::GeomAttributeManager::attributeByName((v21 + 64), "vertexNormal");
    result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v25);
    v27 = 0;
    v28 = v26;
    v29 = 1.0 / v12;
    v30 = *(a4 + 2);
    v31 = a8;
    v32 = *a8;
    v33 = (v12 - 1);
    v34 = a5;
    v35 = v83;
    while (1)
    {
      v36 = v27;
      v37 = a4[1];
      if (v37 <= v27)
      {
        goto LABEL_46;
      }

      v12 = (*(*a4 + 4 * v27) + v34);
      if (v12 >= v83)
      {
        goto LABEL_47;
      }

      v38 = a6[1];
      if (v38 <= v36)
      {
        goto LABEL_51;
      }

      a5 = (*(*a6 + 4 * v36) + a7);
      if (a5 >= v83)
      {
        goto LABEL_52;
      }

      if (a5 >= v24)
      {
        goto LABEL_56;
      }

      v39 = *(v17 + 16 * v12);
      v40 = *(v17 + 16 * a5);
      v85 = *(v22 + 16 * a5);
      if (a5 >= v26)
      {
        goto LABEL_60;
      }

      v84 = *(result + 16 * a5);
      v41 = 1;
      v42 = v33;
      v12 = v32;
      do
      {
        if (v12 >= v83)
        {
          v86 = 0;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v95 = 0u;
          v44 = MEMORY[0x1E69E9C10];
          v87 = 136315906;
          v88 = "operator[]";
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v45 = 3;
          }

          else
          {
            v45 = 2;
          }

          v89 = 1024;
          v90 = 621;
          v91 = 2048;
          v92 = v12;
          v93 = 2048;
          v94 = v83;
          _os_log_send_and_compose_impl(v45, &v86, &v95, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v87, 38, v78, v79);
          _os_crash_msg();
          __break(1u);
LABEL_29:
          v86 = 0;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v95 = 0u;
          v46 = MEMORY[0x1E69E9C10];
          v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v87 = 136315906;
          v88 = "operator[]";
          v89 = 1024;
          if (v47)
          {
            v48 = 3;
          }

          else
          {
            v48 = 2;
          }

          v90 = 621;
          v91 = 2048;
          v92 = a5;
          v93 = 2048;
          v94 = v80;
          _os_log_send_and_compose_impl(v48, &v86, &v95, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v87, 38, v78, v79);
          _os_crash_msg();
          __break(1u);
LABEL_33:
          v86 = 0;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v95 = 0u;
          a8 = MEMORY[0x1E69E9C10];
          v16 = v28;
          v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v87 = 136315906;
          v88 = "operator[]";
          v89 = 1024;
          if (v49)
          {
            v50 = 3;
          }

          else
          {
            v50 = 2;
          }

          v90 = 621;
          v91 = 2048;
          v92 = a5;
          v93 = 2048;
          v94 = v16;
          _os_log_send_and_compose_impl(v50, &v86, &v95, 80, &dword_1E1C61000, a8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v87, 38, v78, v79);
          _os_crash_msg();
          __break(1u);
LABEL_37:
          re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v36, v43);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v72, v75);
          __break(1u);
LABEL_38:
          v86 = 0;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v95 = 0u;
          v51 = MEMORY[0x1E69E9C10];
          v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v87 = 136315906;
          v88 = "operator[]";
          if (v52)
          {
            v53 = 3;
          }

          else
          {
            v53 = 2;
          }

          v89 = 1024;
          v90 = 621;
          v91 = 2048;
          v92 = a8;
          v93 = 2048;
          v94 = v16;
          _os_log_send_and_compose_impl(v53, &v86, &v95, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v87, 38, v78, v79);
          _os_crash_msg();
          __break(1u);
LABEL_42:
          v86 = 0;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v95 = 0u;
          v54 = MEMORY[0x1E69E9C10];
          v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v87 = 136315906;
          v88 = "operator[]";
          if (v55)
          {
            v56 = 3;
          }

          else
          {
            v56 = 2;
          }

          v89 = 1024;
          v90 = 621;
          v91 = 2048;
          v92 = a5;
          v93 = 2048;
          v94 = v16;
          _os_log_send_and_compose_impl(v56, &v86, &v95, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v87, 38, v78, v79);
          _os_crash_msg();
          __break(1u);
LABEL_46:
          re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v36, v37);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v73, v76);
          __break(1u);
LABEL_47:
          *&v85 = 0;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v95 = 0u;
          v57 = MEMORY[0x1E69E9C10];
          v58 = v35;
          v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v87 = 136315906;
          v88 = "operator[]";
          v89 = 1024;
          if (v59)
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          v90 = 621;
          v91 = 2048;
          v92 = v12;
          v93 = 2048;
          v94 = v58;
          _os_log_send_and_compose_impl(v60, &v85, &v95, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v87, 38, v78, v79);
          _os_crash_msg();
          __break(1u);
LABEL_51:
          re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v36, v38);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v74, v77);
          __break(1u);
LABEL_52:
          *&v85 = 0;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v95 = 0u;
          v61 = MEMORY[0x1E69E9C10];
          v62 = v35;
          v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v87 = 136315906;
          v88 = "operator[]";
          v89 = 1024;
          if (v63)
          {
            v64 = 3;
          }

          else
          {
            v64 = 2;
          }

          v90 = 621;
          v91 = 2048;
          v92 = a5;
          v93 = 2048;
          v94 = v62;
          _os_log_send_and_compose_impl(v64, &v85, &v95, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v87, 38, v78, v79);
          _os_crash_msg();
          __break(1u);
LABEL_56:
          *&v85 = 0;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v95 = 0u;
          v65 = MEMORY[0x1E69E9C10];
          v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v87 = 136315906;
          v88 = "operator[]";
          v89 = 1024;
          if (v66)
          {
            v67 = 3;
          }

          else
          {
            v67 = 2;
          }

          v90 = 621;
          v91 = 2048;
          v92 = a5;
          v93 = 2048;
          v94 = v80;
          _os_log_send_and_compose_impl(v67, &v85, &v95, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v87, 38, v78, v79);
          _os_crash_msg();
          __break(1u);
LABEL_60:
          *&v84 = 0;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v95 = 0u;
          v68 = MEMORY[0x1E69E9C10];
          v69 = v28;
          v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v87 = 136315906;
          v88 = "operator[]";
          v89 = 1024;
          if (v70)
          {
            v71 = 3;
          }

          else
          {
            v71 = 2;
          }

          v90 = 621;
          v91 = 2048;
          v92 = a5;
          v93 = 2048;
          v94 = v69;
          _os_log_send_and_compose_impl(v71, &v84, &v95, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v87, 38, v78, v79);
          _os_crash_msg();
          __break(1u);
        }

        a5 = v12;
        *(v17 + 16 * v12) = vaddq_f32(vmulq_n_f32(v40, v29 * v41), vmulq_n_f32(v39, 1.0 - (v29 * v41)));
        if (v12 >= v24)
        {
          goto LABEL_29;
        }

        *(v22 + 16 * v12) = v85;
        if (v12 >= v26)
        {
          goto LABEL_33;
        }

        *(result + 16 * v12) = v84;
        if (a2)
        {
          v43 = a4[1];
          if (v43 <= v36)
          {
            goto LABEL_37;
          }

          a8 = (*(*a4 + 4 * v36) + v34);
          if (v16 <= a8)
          {
            goto LABEL_38;
          }

          if (v16 <= v12)
          {
            goto LABEL_42;
          }

          *(v14 + 4 * v12) = *(v14 + 4 * a8);
        }

        v12 = (v12 + v30);
        ++v41;
        --v42;
      }

      while (v42);
      v32 = (v32 + 1);
      v27 = v36 + 1;
      if (v36 + 1 > (v30 - 1))
      {
        *v31 += v33 * v30;
        return result;
      }
    }
  }

  return result;
}

re *re::anonymous namespace::computeUVsToStitchTwoRows(re *result, re::GeomMesh *a2, void *a3, int a4, void *a5, int a6, _DWORD *a7)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    v13 = a2;
    result = re::modifyVertexUVs(result, a2);
    v15 = v14;
    v16 = 0;
    v17 = 1.0 / v13;
    v18 = *(a3 + 2);
    v19 = *a7;
    v20 = (v13 - 1);
    while (1)
    {
      v21 = v16;
      v22 = a3[1];
      if (v22 <= v16)
      {
        goto LABEL_17;
      }

      v13 = (*(*a3 + 4 * v16) + a4);
      if (v13 >= v14)
      {
        goto LABEL_18;
      }

      v23 = a5[1];
      if (v23 <= v21)
      {
        goto LABEL_22;
      }

      v7 = (*(*a5 + 4 * v21) + a6);
      if (v7 >= v14)
      {
        goto LABEL_23;
      }

      v24 = *(result + 8 * v13);
      v25 = *(result + 8 * v7);
      v26 = 1;
      v13 = v19;
      v27 = v20;
      do
      {
        if (v13 >= v14)
        {
          v42 = 0;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
          v28 = MEMORY[0x1E69E9C10];
          v43 = 136315906;
          v44 = "operator[]";
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v29 = 3;
          }

          else
          {
            v29 = 2;
          }

          v45 = 1024;
          v46 = 621;
          v47 = 2048;
          v48 = v13;
          v49 = 2048;
          v50 = v15;
          _os_log_send_and_compose_impl(v29, &v42, &v51, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v40, v41);
          _os_crash_msg();
          __break(1u);
LABEL_17:
          re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, v22);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v36, v38);
          __break(1u);
LABEL_18:
          v42 = 0;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
          v30 = MEMORY[0x1E69E9C10];
          v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v43 = 136315906;
          v44 = "operator[]";
          v45 = 1024;
          if (v31)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          v46 = 621;
          v47 = 2048;
          v48 = v13;
          v49 = 2048;
          v50 = v15;
          _os_log_send_and_compose_impl(v32, &v42, &v51, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v40, v41);
          _os_crash_msg();
          __break(1u);
LABEL_22:
          re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, v23);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v37, v39);
          __break(1u);
LABEL_23:
          v42 = 0;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
          v33 = MEMORY[0x1E69E9C10];
          v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v43 = 136315906;
          v44 = "operator[]";
          v45 = 1024;
          if (v34)
          {
            v35 = 3;
          }

          else
          {
            v35 = 2;
          }

          v46 = 621;
          v47 = 2048;
          v48 = v7;
          v49 = 2048;
          v50 = v15;
          _os_log_send_and_compose_impl(v35, &v42, &v51, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v40, v41);
          _os_crash_msg();
          __break(1u);
        }

        *(result + v13) = vadd_f32(vmul_n_f32(v25, v17 * v26), vmul_n_f32(v24, 1.0 - (v17 * v26)));
        ++v26;
        v13 = (v13 + v18);
        --v27;
      }

      while (v27);
      v19 = (v19 + 1);
      v16 = v21 + 1;
      if (v21 + 1 > (v18 - 1))
      {
        *a7 += v20 * v18;
        return result;
      }
    }
  }

  return result;
}

uint64_t re::anonymous namespace::normalizeUVs(re::GeomMesh &,re::anonymous namespace::InternalBoxRoundedCornersOptions const&)::$_0::operator()(uint64_t result, unsigned int a2, unsigned int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3 - a2;
  if (a3 > a2)
  {
    LODWORD(v4) = a2;
    v5 = *(result + 8);
    if (v5 > a2)
    {
      v6 = a2;
      v7 = *(*result + 8 * a2);
      if (a2 + 1 >= a3)
      {
        v10 = *(*result + 8 * a2);
      }

      else
      {
        if (~a2 + v5 <= (v3 - 2))
        {
          goto LABEL_21;
        }

        v8 = (*result + 8 * a2 + 8);
        v9 = ~a2 + a3;
        v10 = *(*result + 8 * a2);
        do
        {
          v11 = *v8++;
          v7 = vbsl_s8(vcgt_f32(v11, v7), v7, v11);
          v10 = vbsl_s8(vcgt_f32(v10, v11), v10, v11);
          --v9;
        }

        while (v9);
      }

      v12 = vsub_f32(v10, v7);
      __asm { FMOV            V3.2S, #1.0 }

      v18 = vbsl_s8(vcgtz_f32(v12), v12, _D3);
      while (1)
      {
        v5 = *(result + 8);
        if (v6 >= v5)
        {
          break;
        }

        *(*result + 8 * v6) = vdiv_f32(vsub_f32(*(*result + 8 * v6), v7), v18);
        ++v6;
        if (!--v3)
        {
          return result;
        }
      }

      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v4 = MEMORY[0x1E69E9C10];
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v31 = 621;
      v32 = 2048;
      v33 = v6;
      v34 = 2048;
      v35 = v5;
      _os_log_send_and_compose_impl(v19, &v27, &v36, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
    }

    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v30 = 1024;
    v31 = 621;
    v32 = 2048;
    v33 = v4;
    v34 = 2048;
    v35 = v5;
    _os_log_send_and_compose_impl(v22, &v27, &v36, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
    _os_crash_msg();
    __break(1u);
LABEL_21:
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

    v31 = 621;
    v32 = 2048;
    v33 = v5;
    v34 = 2048;
    v35 = v5;
    _os_log_send_and_compose_impl(v25, &v27, &v36, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

uint64_t re::computeBestFitPlane(float32x4_t *a1, unint64_t a2, double *a3, float32x2_t *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = &a1->i32[1];
    v6 = 0uLL;
    v7 = 0.0;
    v8 = a2;
    do
    {
      v7 = v7 + v5[-1].f32[1];
      v9 = *v5;
      v5 += 2;
      v6 = vaddq_f64(v6, vcvtq_f64_f32(v9));
      --v8;
    }

    while (v8);
    v10 = 1.0 / a2;
  }

  else
  {
    v7 = 0.0;
    v10 = 0.0;
    v6 = 0uLL;
  }

  v11 = vdupq_lane_s64(*&v6.f64[0], 0);
  v11.f64[0] = v7;
  v13 = vmulq_n_f64(v11, v10);
  *v13.f32 = vcvt_f32_f64(v13);
  v12 = vmuld_lane_f64(v10, v6, 1);
  v13.f32[2] = v12;
  *a3 = v13;
  memset(v24, 0, sizeof(v24));
  v25 = 0uLL;
  v26 = 0.0;
  if (a2)
  {
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *a1++;
      v18 = vsubq_f32(v17, v13);
      v14 = vaddq_f64(v14, vcvtq_f64_f32(vmul_lane_f32(*v18.f32, *v18.f32, 1)));
      *(&v24[1] + 8) = v14;
      v15 = vaddq_f64(v15, vcvtq_f64_f32(vmul_laneq_f32(*v18.f32, v18, 2)));
      v25 = v15;
      v19 = vmulq_f32(v18, v18);
      v20.i32[0] = vextq_s8(v19, v19, 8uLL).u32[0];
      v20.i32[1] = v19.i32[0];
      v16 = vaddq_f64(v16, vcvtq_f64_f32(v20));
      v24[0].f64[0] = v16.f64[1];
      v26 = v16.f64[0];
      --a2;
    }

    while (a2);
  }

  if (result)
  {
    *a4 = vcvt_f32_f64(v24[0]);
    v22 = v24[1].f64[0];
    a4[1].f32[0] = v22;
  }

  else
  {
    *a4 = 0x3F80000000000000;
    a4[1] = 0;
  }

  return result;
}

uint64_t re::anonymous namespace::computeEigenDecompositionOfCovarianceMatrix(re::_anonymous_namespace_ *this, double *a2, double *a3)
{
  v3 = dsyev_NEWLAPACK();
  MEMORY[0x1EEE9AC00](v3);
  dsyev_NEWLAPACK();
  return 0;
}

void re::computeConvexHull2d(uint64_t a1, uint64_t a2, uint64_t a3)
{
  collection_u = geom_create_collection_u();
  geom_convex_hull_2f();
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v5 = geom_collection_data_u();
  v6 = geom_collection_size_u();
  re::DynamicArray<float>::copy(a3, 0, v5, v6);

  os_release(collection_u);
}

void *re::computeSignedAreaOf2DPolygon(void *result, uint64_t a2)
{
  v2 = result[1];
  v3 = 0.0;
  if (v2 >= 3)
  {
    v4 = (v2 - 1);
    if (v2 >= v2 - 1)
    {
      v5 = v2 - 1;
    }

    else
    {
      v5 = result[1];
    }

    v6 = v4 - 1;
    if (v5 >= v4 - 1)
    {
      v5 = v4 - 1;
    }

    if (v2 != v5)
    {
      v7 = (*result + 8);
      while (v2 - 1 > v6)
      {
        v8 = *(v7 - 2);
        v9 = *(v7 - 1);
        v11 = *v7;
        v10 = v7[1];
        v7 += 2;
        *&v3 = *&v3 + ((v8 * v10) - (v9 * v11));
        if (!--v4)
        {
          return result;
        }
      }

      re::internal::assertLog(6, a2, v3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, result[1], v2);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v14);
      __break(1u);
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v2, v2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
  }

  return result;
}

uint64_t re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(re::GeomConnectivityManifold *this, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 8);
  if (v3 <= a2)
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
    v15 = v2;
    v16 = 2048;
    v17 = v3;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*(this + 10) + 4 * a2);
  return (v4 >> 28) & 3 | (4 * (v4 & 0xFFFFFFF));
}

uint64_t re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(re::GeomConnectivityManifold *this, int a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = (a3 + 4 * a2);
  v4 = *(this + 13);
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

    v13 = 797;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 15) + 4 * v3);
}

uint64_t re::GeomConnectivityManifold::faceVertexDualHalfEdge(re::GeomConnectivityManifold *this, int a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, a2, a3);
  v5 = v4;
  v6 = *(this + 8);
  if (v6 <= v4)
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

    v15 = 797;
    v16 = 2048;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 10) + 4 * v4);
}

uint64_t re::GeomConnectivityManifold::halfEdgePreviousDual(re::GeomConnectivityManifold *a1, unsigned int a2, unsigned int *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a2 & 0xFFFFFFF;
  v5 = *(a1 + 3);
  if (v5 <= v4)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = v4;
    v24 = 2048;
    v25 = v5;
    _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = v3;
    v24 = 2048;
    v25 = v4;
    _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  if (*(*(a1 + 5) + 16 * v4 + 12) == -1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  v9 = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(a1, a2 & 0xFFFFFFF, (v8 + ((a2 >> 28) & 3) - 1) % v8);
  *a3 = v9;
  v3 = v9;
  v4 = *(a1 + 8);
  if (v4 <= v9)
  {
    goto LABEL_11;
  }

  return *(*(a1 + 10) + 4 * v9);
}

uint64_t re::GeomConnectivityManifold::halfEdgeStartVertex(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2 & 0xFFFFFFF;
  v3 = *(a1 + 24);
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 40) + 16 * v2 + 4 * ((a2 >> 28) & 3));
}

uint64_t re::GeomConnectivityManifold::halfEdgeEndVertex(uint64_t a1, unsigned int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2 & 0xFFFFFFF;
  v3 = *(a1 + 24);
  if (v3 <= v2)
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

    v15 = 797;
    v16 = 2048;
    v17 = v2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v4 = ((a2 >> 28) & 3) + 1;
  v5 = *(a1 + 40) + 16 * v2;
  if (*(v5 + 12) == -1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  if (v4 < v6)
  {
    v6 = 0;
  }

  return *(v5 + 4 * (v4 - v6));
}

uint64_t re::GeomConnectivityManifold::halfEdgeNextIndex(re::GeomConnectivityManifold *this, unsigned int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 8);
  if (v3 <= a2)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = v2;
    v26 = 2048;
    v27 = v3;
    _os_log_send_and_compose_impl(v11, &v19, &v28, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(*(this + 10) + 4 * a2);
  v2 = v5 & 0xFFFFFFF;
  v3 = *(this + 3);
  if (v3 <= v2)
  {
LABEL_18:
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = v2;
    v26 = 2048;
    v27 = v3;
    _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v6 = ((v5 >> 28) & 3) + 1;
  if (*(*(this + 5) + 16 * v2 + 12) == -1)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  if (v6 < v7)
  {
    v7 = 0;
  }

  LODWORD(result) = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, v2, v6 - v7);
  v2 = result;
  v3 = *(this + 8);
  if (v3 <= result)
  {
LABEL_22:
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = v2;
    v26 = 2048;
    v27 = v3;
    _os_log_send_and_compose_impl(v17, &v19, &v28, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
  }

  v9 = *(*(this + 10) + 4 * result);
  if ((v9 & 0x40000000) != 0)
  {
    return result;
  }

  return re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, v9 & 0xFFFFFFF, (v9 >> 28) & 3);
}

uint64_t re::GeomConnectivityManifold::halfEdgePreviousIndex(re::GeomConnectivityManifold *this, unsigned int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 8);
  if (v3 <= a2)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = v2;
    v26 = 2048;
    v27 = v3;
    _os_log_send_and_compose_impl(v11, &v19, &v28, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v5 = *(*(this + 10) + 4 * a2);
  v2 = v5 & 0xFFFFFFF;
  v3 = *(this + 3);
  if (v3 <= v2)
  {
LABEL_16:
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = v2;
    v26 = 2048;
    v27 = v3;
    _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
LABEL_20:
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = v2;
    v26 = 2048;
    v27 = v3;
    _os_log_send_and_compose_impl(v17, &v19, &v28, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
  }

  v6 = (v5 >> 28) & 3;
  if (*(*(this + 5) + 16 * v2 + 12) == -1)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  LODWORD(result) = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, v2, (v7 + v6 - 1) % v7);
  v2 = result;
  v3 = *(this + 8);
  if (v3 <= result)
  {
    goto LABEL_20;
  }

  v9 = *(*(this + 10) + 4 * result);
  if ((v9 & 0x40000000) != 0)
  {
    return result;
  }

  return re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, v9 & 0xFFFFFFF, (v9 >> 28) & 3);
}

uint64_t re::GeomConnectivityManifold::halfEdgeDualIndex(re::GeomConnectivityManifold *this, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 8);
  if (v3 <= a2)
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
    v18 = v2;
    v19 = 2048;
    v20 = v3;
    _os_log_send_and_compose_impl(v7, &v12, &v21, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(*(this + 10) + 4 * a2);
  if ((v4 & 0x40000000) == 0)
  {
    v2 = (v4 >> 28) & 3 | (4 * (v4 & 0xFFFFFFF));
    v3 = *(this + 13);
    if (v3 > v2)
    {
      return *(*(this + 15) + 4 * v2);
    }

LABEL_10:
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
    v18 = v2;
    v19 = 2048;
    v20 = v3;
    _os_log_send_and_compose_impl(v10, &v12, &v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  return a2;
}

uint64_t re::GeomConnectivityManifold::edgeVertices(re::GeomConnectivityManifold *this, unsigned int a2, unsigned int *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 28);
  if (v4 <= a2)
  {
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v3;
    v22 = 2048;
    v23 = v4;
    _os_log_send_and_compose_impl(v10, &v15, &v24, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v3;
    v22 = 2048;
    v23 = v4;
    _os_log_send_and_compose_impl(v13, &v15, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(*(this + 30) + 4 * a2);
  v4 = *(this + 8);
  if (v4 <= v3)
  {
    goto LABEL_8;
  }

  v7 = *(*(this + 10) + 4 * v3);
  *a3 = re::GeomConnectivityManifold::halfEdgeStartVertex(this, v7);
  result = re::GeomConnectivityManifold::halfEdgeEndVertex(this, v7);
  a3[1] = result;
  return result;
}

uint64_t re::GeomConnectivityManifold::fetchVertexOneRing(re::GeomConnectivityManifold *a1, unsigned int a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v3 = a2;
  v4 = *(a1 + 18);
  if (v4 <= a2)
  {
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v22 = 797;
    v23 = 2048;
    v24 = v3;
    v25 = 2048;
    v26 = v4;
    _os_log_send_and_compose_impl(v13, &v18, &v27, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
LABEL_17:
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v14 = MEMORY[0x1E69E9C10];
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

    v22 = 797;
    v23 = 2048;
    v24 = v3;
    v25 = 2048;
    v26 = v4;
    _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(*(a1 + 20) + 4 * a2);
  v4 = *(a1 + 8);
  if (v4 <= v3)
  {
    goto LABEL_17;
  }

  v7 = *(*(a1 + 10) + 4 * v3);
  if ((v7 & 0x80000000) != 0)
  {
    if ((v7 & 0x40000000) != 0)
    {
      while (1)
      {
        LODWORD(v27) = re::GeomConnectivityManifold::halfEdgeEndVertex(a1, v7);
        re::DynamicArray<int>::add(a3, &v27);
        v11 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v7, &v27);
        if ((v11 & 0x80000000) == 0)
        {
          break;
        }

        v7 = v11;
        if ((v11 & 0x40000000) != 0)
        {
          LODWORD(v27) = re::GeomConnectivityManifold::halfEdgeStartVertex(a1, v11);
          re::DynamicArray<int>::add(a3, &v27);
          return *(a3 + 16);
        }
      }
    }

    else
    {
      v9 = v7;
      do
      {
        if ((v9 & 0x80000000) == 0)
        {
          break;
        }

        v10 = v9;
        LODWORD(v27) = re::GeomConnectivityManifold::halfEdgeEndVertex(a1, v9);
        re::DynamicArray<int>::add(a3, &v27);
        v9 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v10, &v27);
      }

      while (v7 != v9);
    }
  }

  return *(a3 + 16);
}

uint64_t re::GeomConnectivityManifold::fetchVertexIncidentEdges(re::GeomConnectivityManifold *a1, unsigned int a2, _anonymous_namespace_ *this)
{
  v42 = *MEMORY[0x1E69E9840];
  *(this + 2) = 0;
  ++*(this + 6);
  v4 = a2;
  v5 = *(a1 + 18);
  if (v5 <= a2)
  {
LABEL_21:
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v32 = 797;
    v33 = 2048;
    v34 = v4;
    v35 = 2048;
    v36 = v5;
    _os_log_send_and_compose_impl(v20, &v28, &v37, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  HIDWORD(v27) = *(*(a1 + 20) + 4 * a2);
  v5 = HIDWORD(v27);
  v4 = *(a1 + 8);
  if (v4 <= HIDWORD(v27))
  {
LABEL_25:
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v32 = 797;
    v33 = 2048;
    v34 = v5;
    v35 = 2048;
    v36 = v4;
    _os_log_send_and_compose_impl(v23, &v28, &v37, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
LABEL_29:
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v32 = 797;
    v33 = 2048;
    v34 = v5;
    v35 = 2048;
    v36 = v3;
    _os_log_send_and_compose_impl(v26, &v28, &v37, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(a1 + 10);
  v4 = *(v8 + 4 * HIDWORD(v27));
  if ((v4 & 0x40000000) == 0)
  {
    v5 = *(v8 + 4 * HIDWORD(v27));
    while (1)
    {
      v3 = HIDWORD(v27);
      v9 = *(a1 + 23);
      if (v9 <= HIDWORD(v27))
      {
        break;
      }

      re::DynamicArray<int>::add(this, (*(a1 + 25) + 4 * HIDWORD(v27)));
      v5 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v5, &v27 + 1);
      if (v4 == v5)
      {
        return *(this + 4);
      }
    }

    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v32 = 797;
    v33 = 2048;
    v34 = v3;
    v35 = 2048;
    v36 = v9;
    _os_log_send_and_compose_impl(v14, &v28, &v37, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
LABEL_17:
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v32 = 797;
    v33 = 2048;
    v34 = v5;
    v35 = 2048;
    v36 = v3;
    _os_log_send_and_compose_impl(v17, &v28, &v37, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v3 = *(a1 + 23);
  if (v3 <= HIDWORD(v27))
  {
    goto LABEL_29;
  }

  re::DynamicArray<int>::add(this, (*(a1 + 25) + 4 * HIDWORD(v27)));
  do
  {
    v10 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v4, &v27 + 1);
    v5 = HIDWORD(v27);
    v3 = *(a1 + 23);
    if (v3 <= HIDWORD(v27))
    {
      goto LABEL_17;
    }

    v4 = v10;
    re::DynamicArray<int>::add(this, (*(a1 + 25) + 4 * HIDWORD(v27)));
  }

  while ((v4 & 0x40000000) == 0);
  return *(this + 4);
}

uint64_t re::GeomConnectivityManifold::fetchVertexIncidentFaces(re::GeomConnectivityManifold *a1, unsigned int a2, _anonymous_namespace_ *this)
{
  v30 = *MEMORY[0x1E69E9840];
  *(this + 2) = 0;
  ++*(this + 6);
  v3 = a2;
  v4 = *(a1 + 18);
  if (v4 <= a2)
  {
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

    v20 = 797;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
LABEL_13:
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

    v20 = 797;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(*(a1 + 20) + 4 * a2);
  v4 = *(a1 + 8);
  if (v4 <= v3)
  {
    goto LABEL_13;
  }

  v7 = *(*(a1 + 10) + 4 * v3);
  if ((v7 & 0x40000000) != 0)
  {
    do
    {
      LODWORD(v25) = v7 & 0xFFFFFFF;
      re::DynamicArray<int>::add(this, &v25);
      v7 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v7, &v25);
    }

    while ((v7 & 0x40000000) == 0);
  }

  else
  {
    v8 = v7;
    do
    {
      LODWORD(v25) = v8 & 0xFFFFFFF;
      re::DynamicArray<int>::add(this, &v25);
      v8 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v8, &v25);
    }

    while (v7 != v8);
  }

  return *(this + 4);
}

uint64_t re::GeomConnectivityManifold::fetchFaceIncidentFaces(re::GeomConnectivityManifold *this, int a2, unsigned int *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = 0;
  v8 = 4 * re::GeomConnectivityManifold::faceIncidentEdges(this, a2, v11);
  do
  {
    if (re::GeomConnectivityManifold::edgeIncidentFaces(this, v11[v6 / 4], v10) == 2)
    {
      a3[v7++] = v10[v10[0] == a2];
    }

    v6 += 4;
  }

  while (v8 != v6);
  return v7;
}

uint64_t re::GeomConnectivityManifold::faceIncidentEdges(re::GeomConnectivityManifold *this, int a2, unsigned int *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 3);
  if (v4 <= a2)
  {
    goto LABEL_12;
  }

  v4 = 0;
  if (*(*(this + 5) + 16 * a2 + 12) == -1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  do
  {
    v9 = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, a2, v4);
    v3 = v9;
    v10 = *(this + 23);
    if (v10 <= v9)
    {
      v18 = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      v12 = MEMORY[0x1E69E9C10];
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v22 = 797;
      v23 = 2048;
      v24 = v3;
      v25 = 2048;
      v26 = v10;
      _os_log_send_and_compose_impl(v13, &v18, &v27, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
LABEL_12:
      v18 = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      v14 = MEMORY[0x1E69E9C10];
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

      v22 = 797;
      v23 = 2048;
      v24 = v3;
      v25 = 2048;
      v26 = v4;
      _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    a3[v4++] = *(*(this + 25) + 4 * v9);
  }

  while (v8 != v4);
  return v8;
}

uint64_t re::GeomConnectivityManifold::edgeIncidentFaces(re::GeomConnectivityManifold *this, unsigned int a2, unsigned int *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 28);
  if (v4 <= a2)
  {
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v3;
    v22 = 2048;
    v23 = v4;
    _os_log_send_and_compose_impl(v10, &v15, &v24, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v3;
    v22 = 2048;
    v23 = v4;
    _os_log_send_and_compose_impl(v13, &v15, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(*(this + 30) + 4 * a2);
  v4 = *(this + 8);
  if (v4 <= v3)
  {
    goto LABEL_11;
  }

  v6 = *(*(this + 10) + 4 * v3);
  if ((v6 & 0x40000000) != 0)
  {
    result = 1;
  }

  else
  {
    v7 = v6 & 0xFFFFFFF;
    v6 = re::GeomConnectivityManifold::faceVertexDualHalfEdge(this, v6 & 0xFFFFFFF, (v6 >> 28) & 3);
    a3[1] = v7;
    result = 2;
  }

  *a3 = v6 & 0xFFFFFFF;
  return result;
}

BOOL re::GeomConnectivityManifold::isBoundaryFace(re::GeomConnectivityManifold *this, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 3);
  if (v3 <= a2)
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
    v20 = v2;
    v21 = 2048;
    v22 = v3;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  if (*(*(this + 5) + 16 * a2 + 12) == -1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  if ((re::GeomConnectivityManifold::faceVertexDualHalfEdge(this, a2, 0) & 0x40000000) != 0)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    v9 = re::GeomConnectivityManifold::faceVertexDualHalfEdge(this, a2, v7);
    v7 = v8 + 1;
  }

  while ((v9 & 0x40000000) == 0);
  return v8 < v6;
}

BOOL re::GeomConnectivityManifold::isCollapseEdgeSafe(re::GeomConnectivityManifold *this, unsigned int a2)
{
  v156 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(this + 28);
  if (v5 <= a2)
  {
    *v144 = 0;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    *v151 = 0u;
    v152 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v62 = 3;
    }

    else
    {
      v62 = 2;
    }

    *&v140[14] = 797;
    *&v140[18] = 2048;
    *&v140[20] = v4;
    v141 = 2048;
    *v142 = v5;
    _os_log_send_and_compose_impl(v62, v144, v151, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
    _os_crash_msg();
    __break(1u);
    goto LABEL_112;
  }

  v4 = *(*(this + 30) + 4 * a2);
  v5 = *(this + 8);
  if (v5 <= v4)
  {
LABEL_112:
    *v144 = 0;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    *v151 = 0u;
    v152 = 0u;
    v63 = MEMORY[0x1E69E9C10];
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    if (v64)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    *&v140[14] = 797;
    *&v140[18] = 2048;
    *&v140[20] = v4;
    v141 = 2048;
    *v142 = v5;
    _os_log_send_and_compose_impl(v65, v144, v151, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
    _os_crash_msg();
    __break(1u);
LABEL_116:
    *v144 = 0;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    *v151 = 0u;
    v152 = 0u;
    v66 = MEMORY[0x1E69E9C10];
    v8 = v9;
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v140 = 136315906;
    *&v140[4] = "operator[]";
    *&v140[12] = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    *&v140[14] = 797;
    *&v140[18] = 2048;
    *&v140[20] = v8;
    v141 = 2048;
    *v142 = v3;
    _os_log_send_and_compose_impl(v68, v144, v151, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v139 = 0;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    *v151 = 0u;
    v152 = 0u;
    v69 = MEMORY[0x1E69E9C10];
    v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v144 = 136315906;
    *&v144[4] = "operator[]";
    v145 = 1024;
    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    v146 = 789;
    v147 = 2048;
    v148 = v5;
    v149 = 2048;
    v150 = v2;
    _os_log_send_and_compose_impl(v71, &v139, v151, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v144, 38, v138);
    _os_crash_msg();
    __break(1u);
    goto LABEL_124;
  }

  if ((*(*(this + 10) + 4 * v4) & 0x80000000) == 0)
  {
    return 0;
  }

  re::GeomConnectivityManifold::edgeVertices(this, a2, v151);
  v5 = v151[0];
  v8 = v151[1];
  *v143 = -1;
  v2 = re::GeomConnectivityManifold::edgeIncidentFaces(this, a2, v143);
  if (re::GeomConnectivityManifold::isBoundaryVertex(this, v5))
  {
    if (re::GeomConnectivityManifold::isBoundaryVertex(this, v8) && v2 == 2)
    {
      return 0;
    }
  }

  v9 = v143[0];
  v3 = *(this + 3);
  if (v3 <= v143[0])
  {
    goto LABEL_116;
  }

  v10 = *(this + 5);
  if (*(v10 + 16 * v143[0] + 12) != -1)
  {
    return 0;
  }

  v13 = 0;
  *v151 = *(v10 + 16 * v143[0]);
  while (1)
  {
    v14 = v151[v13];
    v15 = v14 == v5 || v14 == v8;
    if (!v15)
    {
      break;
    }

    if (++v13 == 3)
    {
      v14 = -1;
      break;
    }
  }

  if (v2 == 2)
  {
    v16 = v143[1];
    if (v3 <= v143[1])
    {
LABEL_136:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v81 = MEMORY[0x1E69E9C10];
      v82 = v16;
      v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v83)
      {
        v84 = 3;
      }

      else
      {
        v84 = 2;
      }

      *&v140[14] = 797;
      *&v140[18] = 2048;
      *&v140[20] = v82;
      v141 = 2048;
      *v142 = v3;
      _os_log_send_and_compose_impl(v84, v144, v151, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
LABEL_140:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v85 = MEMORY[0x1E69E9C10];
      v86 = v19;
      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v87)
      {
        v88 = 3;
      }

      else
      {
        v88 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v86;
      v141 = 2048;
      *v142 = v2;
      _os_log_send_and_compose_impl(v88, v144, v151, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
      goto LABEL_144;
    }

    if (*(v10 + 16 * v143[1] + 12) != -1)
    {
      return 0;
    }

    v17 = 0;
    *v151 = *(v10 + 16 * v143[1]);
    while (1)
    {
      v3 = v151[v17];
      if (v3 != v5 && v3 != v8)
      {
        break;
      }

      if (++v17 == 3)
      {
        v3 = 0xFFFFFFFFLL;
        break;
      }
    }

    v19 = 4 * v143[0];
    v2 = *(this + 13);
    if (v2 <= v19)
    {
      goto LABEL_140;
    }

    v20 = *(this + 15);
    v21 = *(v20 + 4 * v19);
    v22 = *(this + 8);
    if (v22 <= v21)
    {
LABEL_144:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v89 = MEMORY[0x1E69E9C10];
      v90 = v22;
      v91 = v21;
      v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v92)
      {
        v93 = 3;
      }

      else
      {
        v93 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v91;
      v141 = 2048;
      *v142 = v90;
      _os_log_send_and_compose_impl(v93, v144, v151, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
      goto LABEL_148;
    }

    v23 = v19 | 1;
    if (v2 <= v23)
    {
LABEL_148:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v94 = MEMORY[0x1E69E9C10];
      v95 = v23;
      v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v96)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v95;
      v141 = 2048;
      *v142 = v2;
      _os_log_send_and_compose_impl(v97, v144, v151, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
      goto LABEL_152;
    }

    v24 = *(v20 + 4 * v23);
    if (v22 <= v24)
    {
LABEL_152:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v98 = MEMORY[0x1E69E9C10];
      v99 = v22;
      v100 = v24;
      v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v101)
      {
        v102 = 3;
      }

      else
      {
        v102 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v100;
      v141 = 2048;
      *v142 = v99;
      _os_log_send_and_compose_impl(v102, v144, v151, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
      goto LABEL_156;
    }

    v25 = v19 | 2;
    if (v2 <= v25)
    {
LABEL_156:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v103 = MEMORY[0x1E69E9C10];
      v104 = v25;
      v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v105)
      {
        v106 = 3;
      }

      else
      {
        v106 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v104;
      v141 = 2048;
      *v142 = v2;
      _os_log_send_and_compose_impl(v106, v144, v151, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
      goto LABEL_160;
    }

    v26 = *(v20 + 4 * v25);
    if (v22 <= v26)
    {
LABEL_160:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v107 = MEMORY[0x1E69E9C10];
      v108 = v22;
      v109 = v26;
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v109;
      v141 = 2048;
      *v142 = v108;
      _os_log_send_and_compose_impl(v111, v144, v151, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
LABEL_164:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v112 = MEMORY[0x1E69E9C10];
      v113 = v28;
      v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v114)
      {
        v115 = 3;
      }

      else
      {
        v115 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v113;
      v141 = 2048;
      *v142 = v2;
      _os_log_send_and_compose_impl(v115, v144, v151, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
      goto LABEL_168;
    }

    v27 = *(this + 10);
    if (((*(v27 + 4 * v24) >> 30) & 1) + ((*(v27 + 4 * v21) >> 30) & 1) + ((*(v27 + 4 * v26) >> 30) & 1) == 2)
    {
      return 0;
    }

    v28 = 4 * v143[1];
    if (v2 <= v28)
    {
      goto LABEL_164;
    }

    v29 = *(v20 + 4 * v28);
    if (v22 <= v29)
    {
LABEL_168:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v116 = MEMORY[0x1E69E9C10];
      v117 = v22;
      v118 = v29;
      v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v119)
      {
        v120 = 3;
      }

      else
      {
        v120 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v118;
      v141 = 2048;
      *v142 = v117;
      _os_log_send_and_compose_impl(v120, v144, v151, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
      goto LABEL_172;
    }

    v30 = v28 | 1;
    if (v2 <= v30)
    {
LABEL_172:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v121 = MEMORY[0x1E69E9C10];
      v122 = v30;
      v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v123)
      {
        v124 = 3;
      }

      else
      {
        v124 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v122;
      v141 = 2048;
      *v142 = v2;
      _os_log_send_and_compose_impl(v124, v144, v151, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
      goto LABEL_176;
    }

    v31 = *(v20 + 4 * v30);
    if (v22 <= v31)
    {
LABEL_176:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v125 = MEMORY[0x1E69E9C10];
      v126 = v22;
      v127 = v31;
      v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v128)
      {
        v129 = 3;
      }

      else
      {
        v129 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v127;
      v141 = 2048;
      *v142 = v126;
      _os_log_send_and_compose_impl(v129, v144, v151, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
      goto LABEL_180;
    }

    v32 = v28 | 2;
    if (v2 <= v32)
    {
LABEL_180:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v130 = MEMORY[0x1E69E9C10];
      v131 = v32;
      v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v132)
      {
        v133 = 3;
      }

      else
      {
        v133 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v131;
      v141 = 2048;
      *v142 = v2;
      _os_log_send_and_compose_impl(v133, v144, v151, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
LABEL_184:
      *v144 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      *v151 = 0u;
      v152 = 0u;
      v134 = MEMORY[0x1E69E9C10];
      v135 = v22;
      v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v140 = 136315906;
      *&v140[4] = "operator[]";
      *&v140[12] = 1024;
      if (v136)
      {
        v137 = 3;
      }

      else
      {
        v137 = 2;
      }

      *&v140[14] = 789;
      *&v140[18] = 2048;
      *&v140[20] = v2;
      v141 = 2048;
      *v142 = v135;
      _os_log_send_and_compose_impl(v137, v144, v151, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v140, 38, v138, v139);
      _os_crash_msg();
      __break(1u);
    }

    v2 = *(v20 + 4 * v32);
    if (v22 <= v2)
    {
      goto LABEL_184;
    }

    if (((*(v27 + 4 * v31) >> 30) & 1) + ((*(v27 + 4 * v29) >> 30) & 1) + ((*(v27 + 4 * v2) >> 30) & 1) == 2)
    {
      return 0;
    }
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  *&v142[2] = 0;
  *v140 = 0;
  *&v140[8] = 0;
  v33 = *this;
  v34 = *(this + 37);
  if ((v33 & 0x3F) != 0)
  {
    v35 = (v33 >> 6) + 1;
  }

  else
  {
    v35 = v33 >> 6;
  }

  *(this + 37) = v33;
  *v151 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize((this + 248), v35, v151);
  if (v33 && v34 > v33)
  {
    v36 = 63;
    v37 = *(this + 37) & 0x3FLL;
    if (v37)
    {
      v15 = v37 == 63;
      v38 = -1 << v37;
      if (!v15)
      {
        v36 = ~v38;
      }
    }

    if (*(this + 264))
    {
      v39 = this + 272;
    }

    else
    {
      v39 = *(this + 35);
    }

    *&v39[8 * *(this + 32) - 8] &= v36;
  }

  v40 = *(this + 66);
  if (v40)
  {
    v41 = this + 272;
  }

  else
  {
    v41 = *(this + 35);
  }

  v42 = *(this + 32);
  while (1)
  {
    v43 = this + 272;
    if ((v40 & 1) == 0)
    {
      v43 = *(this + 35);
    }

    if (v41 == &v43[8 * v42])
    {
      break;
    }

    *v41 = 0;
    v41 += 8;
    v40 = *(this + 66);
  }

  *&v140[16] = 0;
  *&v140[24] = 1;
  v2 = *(this + 18);
  if (v2 <= v5)
  {
    goto LABEL_120;
  }

  v5 = *(*(this + 20) + 4 * v5);
  v2 = *(this + 8);
  if (v2 <= v5)
  {
LABEL_124:
    v139 = 0;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    *v151 = 0u;
    v152 = 0u;
    v72 = MEMORY[0x1E69E9C10];
    v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v144 = 136315906;
    *&v144[4] = "operator[]";
    v145 = 1024;
    if (v73)
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    v146 = 789;
    v147 = 2048;
    v148 = v5;
    v149 = 2048;
    v150 = v2;
    _os_log_send_and_compose_impl(v74, &v139, v151, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v144, 38, v138);
    _os_crash_msg();
    __break(1u);
LABEL_128:
    v139 = 0;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    *v151 = 0u;
    v152 = 0u;
    v75 = MEMORY[0x1E69E9C10];
    v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v144 = 136315906;
    *&v144[4] = "operator[]";
    v145 = 1024;
    if (v76)
    {
      v77 = 3;
    }

    else
    {
      v77 = 2;
    }

    v146 = 789;
    v147 = 2048;
    v148 = v8;
    v149 = 2048;
    v150 = v5;
    _os_log_send_and_compose_impl(v77, &v139, v151, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v144, 38, v138);
    _os_crash_msg();
    __break(1u);
    goto LABEL_132;
  }

  v44 = *(*(this + 10) + 4 * v5);
  if ((v44 & 0x40000000) != 0)
  {
    do
    {
      v47 = re::GeomConnectivityManifold::halfEdgeEndVertex(this, v44);
      re::DynamicBitset<unsigned long long,64ul>::setBit(this + 248, v47);
      v48 = re::GeomConnectivityManifold::halfEdgePreviousDual(this, v44, v151);
      v44 = v48;
    }

    while ((v48 & 0x40000000) == 0);
    started = re::GeomConnectivityManifold::halfEdgeStartVertex(this, v48);
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 248, started);
  }

  else
  {
    v45 = v44;
    do
    {
      v2 = v45;
      v46 = re::GeomConnectivityManifold::halfEdgeEndVertex(this, v45);
      re::DynamicBitset<unsigned long long,64ul>::setBit(this + 248, v46);
      v45 = re::GeomConnectivityManifold::halfEdgePreviousDual(this, v2, v151);
    }

    while (v44 != v45);
  }

  v5 = *(this + 18);
  if (v5 <= v8)
  {
    goto LABEL_128;
  }

  v8 = *(*(this + 20) + 4 * v8);
  v5 = *(this + 8);
  if (v5 <= v8)
  {
LABEL_132:
    v139 = 0;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    *v151 = 0u;
    v152 = 0u;
    v78 = MEMORY[0x1E69E9C10];
    v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v144 = 136315906;
    *&v144[4] = "operator[]";
    v145 = 1024;
    if (v79)
    {
      v80 = 3;
    }

    else
    {
      v80 = 2;
    }

    v146 = 789;
    v147 = 2048;
    v148 = v8;
    v149 = 2048;
    v150 = v5;
    _os_log_send_and_compose_impl(v80, &v139, v151, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v144, 38, v138);
    _os_crash_msg();
    __break(1u);
    goto LABEL_136;
  }

  v50 = *(*(this + 10) + 4 * v8);
  *v144 = -1;
  if ((v50 & 0x40000000) != 0)
  {
    while (1)
    {
      *v144 = re::GeomConnectivityManifold::halfEdgeEndVertex(this, v50);
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 248, *v144))
      {
        re::DynamicArray<int>::add(v140, v144);
      }

      v53 = re::GeomConnectivityManifold::halfEdgePreviousDual(this, v50, v151);
      if ((v53 & 0x40000000) != 0)
      {
        break;
      }

      v50 = v53;
    }

    *v144 = re::GeomConnectivityManifold::halfEdgeStartVertex(this, v53);
    if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 248, *v144))
    {
      re::DynamicArray<int>::add(v140, v144);
    }
  }

  else
  {
    v51 = v50;
    do
    {
      v52 = v51;
      *v144 = re::GeomConnectivityManifold::halfEdgeEndVertex(this, v51);
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 248, *v144))
      {
        re::DynamicArray<int>::add(v140, v144);
      }

      v51 = re::GeomConnectivityManifold::halfEdgePreviousDual(this, v52, v151);
    }

    while (v50 != v51);
  }

  if (*&v140[16])
  {
    v54 = 4 * *&v140[16] - 4;
    v55 = *&v142[2];
    do
    {
      v57 = *v55++;
      v56 = v57;
      v11 = v57 == v14 || v56 == v3;
      v59 = !v11 || v54 == 0;
      v54 -= 4;
    }

    while (!v59);
  }

  else
  {
    v11 = 1;
  }

  if (*v140)
  {
    v60 = *&v142[2] == 0;
  }

  else
  {
    v60 = 1;
  }

  if (!v60)
  {
    (*(**v140 + 40))();
  }

  return v11;
}

uint64_t re::GeomConnectivityManifold::glueHalfEdges(re::GeomConnectivityManifold *this, unint64_t a2, unsigned int a3)
{
  v124 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = *(this + 8);
  if (v8 <= a2)
  {
    v110 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v111 = 136315906;
    v112 = "operator[]";
    v113 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v114 = 789;
    v115 = 2048;
    v116 = v7;
    v117 = 2048;
    v118 = v8;
    _os_log_send_and_compose_impl(v29, &v110, &v119, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v110 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v111 = 136315906;
    v112 = "operator[]";
    v113 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v114 = 789;
    v115 = 2048;
    v116 = v5;
    v117 = 2048;
    v118 = v8;
    _os_log_send_and_compose_impl(v32, &v110, &v119, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v4 = a2;
  if ((*(*(this + 10) + 4 * a2) & 0x40000000) != 0)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, a2);
    v3 = v11;
    v8 = *(this + 13);
    if (v8 <= v11)
    {
LABEL_62:
      v110 = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      v39 = MEMORY[0x1E69E9C10];
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v111 = 136315906;
      v112 = "operator[]";
      v113 = 1024;
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v114 = 789;
      v115 = 2048;
      v116 = v3;
      v117 = 2048;
      v118 = v8;
      _os_log_send_and_compose_impl(v41, &v110, &v119, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
      _os_crash_msg();
      __break(1u);
      goto LABEL_66;
    }

    v3 = *(*(this + 15) + 4 * v11);
    v8 = *(this + 8);
  }

  v5 = a3;
  if (v8 <= a3)
  {
    goto LABEL_50;
  }

  if ((*(*(this + 10) + 4 * a3) & 0x40000000) != 0)
  {
    if (v3 != -1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v12 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, a3);
    v8 = v12;
    v6 = *(this + 13);
    if (v6 <= v12)
    {
LABEL_66:
      v110 = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      v42 = MEMORY[0x1E69E9C10];
      v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v111 = 136315906;
      v112 = "operator[]";
      v113 = 1024;
      if (v43)
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      v114 = 789;
      v115 = 2048;
      v116 = v8;
      v117 = 2048;
      v118 = v6;
      _os_log_send_and_compose_impl(v44, &v110, &v119, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
      _os_crash_msg();
      __break(1u);
      goto LABEL_70;
    }

    v8 = *(*(this + 15) + 4 * v12);
    if (v3 != -1 && v8 != -1)
    {
      v13 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, v8);
      v6 = v13;
      v14 = *(this + 13);
      if (v14 <= v13)
      {
LABEL_86:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v57 = MEMORY[0x1E69E9C10];
        v58 = v14;
        v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v59)
        {
          v60 = 3;
        }

        else
        {
          v60 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v6;
        v117 = 2048;
        v118 = v58;
        _os_log_send_and_compose_impl(v60, &v110, &v119, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_90;
      }

      *(*(this + 15) + 4 * v13) = v3;
      v15 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, v3);
      v6 = v15;
      v16 = *(this + 13);
      if (v16 <= v15)
      {
LABEL_90:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v61 = MEMORY[0x1E69E9C10];
        v62 = v16;
        v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v63)
        {
          v64 = 3;
        }

        else
        {
          v64 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v6;
        v117 = 2048;
        v118 = v62;
        _os_log_send_and_compose_impl(v64, &v110, &v119, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_94;
      }

      *(*(this + 15) + 4 * v15) = v8;
      v6 = *(this + 23);
      if (v6 <= a3)
      {
LABEL_94:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v65 = MEMORY[0x1E69E9C10];
        v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v66)
        {
          v67 = 3;
        }

        else
        {
          v67 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v5;
        v117 = 2048;
        v118 = v6;
        _os_log_send_and_compose_impl(v67, &v110, &v119, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_98;
      }

      if (v6 <= v7)
      {
LABEL_98:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v68 = MEMORY[0x1E69E9C10];
        v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v69)
        {
          v70 = 3;
        }

        else
        {
          v70 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v7;
        v117 = 2048;
        v118 = v6;
        _os_log_send_and_compose_impl(v70, &v110, &v119, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_102;
      }

      v17 = *(this + 25);
      v18 = *(v17 + 4 * v7);
      v7 = *(this + 28);
      if (v7 <= v18)
      {
LABEL_102:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v71 = MEMORY[0x1E69E9C10];
        v72 = v18;
        v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v73)
        {
          v74 = 3;
        }

        else
        {
          v74 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v72;
        v117 = 2048;
        v118 = v7;
        _os_log_send_and_compose_impl(v74, &v110, &v119, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_106;
      }

      v19 = *(v17 + 4 * a3);
      v20 = *(this + 30);
      *(v20 + 4 * v18) = v4;
      if (v7 <= v19)
      {
LABEL_106:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v75 = MEMORY[0x1E69E9C10];
        v76 = v19;
        v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v77)
        {
          v78 = 3;
        }

        else
        {
          v78 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v76;
        v117 = 2048;
        v118 = v7;
        _os_log_send_and_compose_impl(v78, &v110, &v119, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_110;
      }

      *(v20 + 4 * v19) = v3;
      v4 = v3;
      if (v6 <= v3)
      {
LABEL_110:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v79 = MEMORY[0x1E69E9C10];
        v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v80)
        {
          v81 = 3;
        }

        else
        {
          v81 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v4;
        v117 = 2048;
        v118 = v6;
        _os_log_send_and_compose_impl(v81, &v110, &v119, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_114;
      }

      *(v17 + 4 * v3) = v19;
      if (v6 <= v8)
      {
LABEL_114:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v82 = MEMORY[0x1E69E9C10];
        v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v83)
        {
          v84 = 3;
        }

        else
        {
          v84 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v8;
        v117 = 2048;
        v118 = v6;
        _os_log_send_and_compose_impl(v84, &v110, &v119, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_118;
      }

      *(v17 + 4 * v8) = v19;
LABEL_32:
      v7 = 1;
      goto LABEL_33;
    }

    if (v3 != -1)
    {
LABEL_27:
      v23 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, v3);
      v8 = v23;
      v4 = *(this + 13);
      if (v4 <= v23)
      {
LABEL_70:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v45 = MEMORY[0x1E69E9C10];
        v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v8;
        v117 = 2048;
        v118 = v4;
        _os_log_send_and_compose_impl(v47, &v110, &v119, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_74;
      }

      *(*(this + 15) + 4 * v23) = v3;
      v8 = *(this + 23);
      if (v8 <= v7)
      {
LABEL_74:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v48 = MEMORY[0x1E69E9C10];
        v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v49)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v7;
        v117 = 2048;
        v118 = v8;
        _os_log_send_and_compose_impl(v50, &v110, &v119, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_78;
      }

      v8 = *(*(this + 25) + 4 * v7);
      v4 = *(this + 28);
      if (v4 <= v8)
      {
LABEL_78:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v51 = MEMORY[0x1E69E9C10];
        v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v8;
        v117 = 2048;
        v118 = v4;
        _os_log_send_and_compose_impl(v53, &v110, &v119, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_82;
      }

      *(*(this + 30) + 4 * v8) = v3;
      v8 = v3;
      v4 = *(this + 8);
      if (v4 <= v3)
      {
LABEL_82:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v54 = MEMORY[0x1E69E9C10];
        v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v55)
        {
          v56 = 3;
        }

        else
        {
          v56 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v8;
        v117 = 2048;
        v118 = v4;
        _os_log_send_and_compose_impl(v56, &v110, &v119, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_86;
      }

      *(*(this + 10) + 4 * v3) |= 0x40000000u;
      goto LABEL_32;
    }

    if (v8 != -1)
    {
      v27 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, v8);
      v4 = v27;
      v7 = *(this + 13);
      if (v7 <= v27)
      {
LABEL_134:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v97 = MEMORY[0x1E69E9C10];
        v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v98)
        {
          v99 = 3;
        }

        else
        {
          v99 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v4;
        v117 = 2048;
        v118 = v7;
        _os_log_send_and_compose_impl(v99, &v110, &v119, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_138;
      }

      *(*(this + 15) + 4 * v27) = v8;
      v4 = *(this + 23);
      if (v4 <= a3)
      {
LABEL_138:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v100 = MEMORY[0x1E69E9C10];
        v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v101)
        {
          v102 = 3;
        }

        else
        {
          v102 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v5;
        v117 = 2048;
        v118 = v4;
        _os_log_send_and_compose_impl(v102, &v110, &v119, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
        goto LABEL_142;
      }

      v4 = *(*(this + 25) + 4 * a3);
      v7 = *(this + 28);
      if (v7 <= v4)
      {
LABEL_142:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v103 = MEMORY[0x1E69E9C10];
        v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v104)
        {
          v105 = 3;
        }

        else
        {
          v105 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v4;
        v117 = 2048;
        v118 = v7;
        _os_log_send_and_compose_impl(v105, &v110, &v119, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
LABEL_146:
        v110 = 0;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v119 = 0u;
        v106 = MEMORY[0x1E69E9C10];
        v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v111 = 136315906;
        v112 = "operator[]";
        v113 = 1024;
        if (v107)
        {
          v108 = 3;
        }

        else
        {
          v108 = 2;
        }

        v114 = 789;
        v115 = 2048;
        v116 = v8;
        v117 = 2048;
        v118 = v4;
        _os_log_send_and_compose_impl(v108, &v110, &v119, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
        _os_crash_msg();
        __break(1u);
      }

      *(*(this + 30) + 4 * v4) = v8;
      v4 = *(this + 8);
      if (v4 <= v8)
      {
        goto LABEL_146;
      }

      v7 = 0;
      *(*(this + 10) + 4 * v8) |= 0x40000000u;
      goto LABEL_33;
    }
  }

  v8 = *(this + 23);
  if (v8 <= v7)
  {
LABEL_118:
    v110 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v85 = MEMORY[0x1E69E9C10];
    v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v111 = 136315906;
    v112 = "operator[]";
    v113 = 1024;
    if (v86)
    {
      v87 = 3;
    }

    else
    {
      v87 = 2;
    }

    v114 = 789;
    v115 = 2048;
    v116 = v7;
    v117 = 2048;
    v118 = v8;
    _os_log_send_and_compose_impl(v87, &v110, &v119, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
    _os_crash_msg();
    __break(1u);
    goto LABEL_122;
  }

  v21 = *(this + 25);
  v6 = *(v21 + 4 * v7);
  v7 = *(this + 28);
  if (v7 <= v6)
  {
LABEL_122:
    v110 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v88 = MEMORY[0x1E69E9C10];
    v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v111 = 136315906;
    v112 = "operator[]";
    v113 = 1024;
    if (v89)
    {
      v90 = 3;
    }

    else
    {
      v90 = 2;
    }

    v114 = 789;
    v115 = 2048;
    v116 = v6;
    v117 = 2048;
    v118 = v7;
    _os_log_send_and_compose_impl(v90, &v110, &v119, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
    _os_crash_msg();
    __break(1u);
    goto LABEL_126;
  }

  v22 = *(this + 30);
  *(v22 + 4 * v6) = v4;
  if (v8 <= a3)
  {
LABEL_126:
    v110 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v91 = MEMORY[0x1E69E9C10];
    v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v111 = 136315906;
    v112 = "operator[]";
    v113 = 1024;
    if (v92)
    {
      v93 = 3;
    }

    else
    {
      v93 = 2;
    }

    v114 = 789;
    v115 = 2048;
    v116 = v5;
    v117 = 2048;
    v118 = v8;
    _os_log_send_and_compose_impl(v93, &v110, &v119, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
    _os_crash_msg();
    __break(1u);
    goto LABEL_130;
  }

  v8 = *(v21 + 4 * a3);
  if (v7 <= v8)
  {
LABEL_130:
    v110 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v94 = MEMORY[0x1E69E9C10];
    v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v111 = 136315906;
    v112 = "operator[]";
    v113 = 1024;
    if (v95)
    {
      v96 = 3;
    }

    else
    {
      v96 = 2;
    }

    v114 = 789;
    v115 = 2048;
    v116 = v8;
    v117 = 2048;
    v118 = v7;
    _os_log_send_and_compose_impl(v96, &v110, &v119, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
    _os_crash_msg();
    __break(1u);
    goto LABEL_134;
  }

  v7 = 0;
  *(v22 + 4 * v8) = v4;
LABEL_33:
  v8 = *(this + 8);
  if (v8 <= a3)
  {
LABEL_54:
    v110 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v111 = 136315906;
    v112 = "operator[]";
    v113 = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v114 = 789;
    v115 = 2048;
    v116 = v5;
    v117 = 2048;
    v118 = v8;
    _os_log_send_and_compose_impl(v35, &v110, &v119, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  result = re::GeomConnectivityManifold::halfEdgeStartVertex(this, *(*(this + 10) + 4 * a3));
  v8 = result;
  v4 = *(this + 18);
  if (v4 <= result)
  {
LABEL_58:
    v110 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v36 = MEMORY[0x1E69E9C10];
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v111 = 136315906;
    v112 = "operator[]";
    v113 = 1024;
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v114 = 789;
    v115 = 2048;
    v116 = v8;
    v117 = 2048;
    v118 = v4;
    _os_log_send_and_compose_impl(v38, &v110, &v119, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v111, 38, v109);
    _os_crash_msg();
    __break(1u);
    goto LABEL_62;
  }

  v25 = *(this + 20);
  v26 = v7 ^ 1;
  if (*(v25 + 4 * result) != a3)
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    *(v25 + 4 * result) = v3;
  }

  return result;
}

uint64_t re::GeomConnectivityManifold::collapseEdgeWithoutSafetyCheck(re::GeomConnectivityManifold *this, unsigned int a2, unsigned int *a3)
{
  v149 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = *(this + 28);
  if (v9 <= a2)
  {
    goto LABEL_99;
  }

  v12 = *(this + 30);
  v13 = *(v12 + 4 * a2);
  Index = re::GeomConnectivityManifold::halfEdgeNextIndex(this, *(v12 + 4 * a2));
  v15 = re::GeomConnectivityManifold::halfEdgePreviousIndex(this, v13);
  v3 = *(this + 8);
  if (v3 <= v13)
  {
LABEL_103:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v13;
    v142 = 2048;
    v143 = v3;
    _os_log_send_and_compose_impl(v51, &v135, &v144, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v123);
    _os_crash_msg();
    __break(1u);
LABEL_107:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v52 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v139 = 797;
    v140 = 2048;
    v141 = v5;
    v142 = 2048;
    v143 = v3;
    _os_log_send_and_compose_impl(v54, &v135, &v144, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v123);
    _os_crash_msg();
    __break(1u);
LABEL_111:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v55 = MEMORY[0x1E69E9C10];
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v3;
    v142 = 2048;
    v143 = v17;
    _os_log_send_and_compose_impl(v57, &v135, &v144, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v123);
    _os_crash_msg();
    __break(1u);
    goto LABEL_115;
  }

  v131 = v15;
  v133 = Index;
  v16 = *(*(this + 10) + 4 * v13);
  v5 = v16 & 0xFFFFFFF;
  v17 = (v16 >> 28) & 3;
  v134 = v16;
  if ((v16 & 0x40000000) != 0)
  {
    v19 = 0;
    v18 = -1;
    v132 = -1;
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    isBoundaryVertex = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, v16 & 0xFFFFFFF, (v16 >> 28) & 3);
    v7 = re::GeomConnectivityManifold::halfEdgeNextIndex(this, isBoundaryVertex);
    v18 = re::GeomConnectivityManifold::halfEdgePreviousIndex(this, isBoundaryVertex);
    v3 = isBoundaryVertex;
    v4 = *(this + 8);
    v132 = isBoundaryVertex;
    if (v4 <= isBoundaryVertex)
    {
LABEL_151:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      v139 = 789;
      v140 = 2048;
      v141 = v3;
      v142 = 2048;
      v143 = v4;
      _os_log_send_and_compose_impl(v85, &v135, &v144, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v123);
      _os_crash_msg();
      __break(1u);
      goto LABEL_155;
    }

    v19 = 4 * (*(*(this + 10) + 4 * isBoundaryVertex) & 0xFFFFFFF);
  }

  v3 = *(this + 3);
  if (v3 <= v5)
  {
    goto LABEL_107;
  }

  v144 = *(*(this + 5) + 16 * v5);
  v3 = *(&v144 | (4 * v17));
  v20 = v17 + 1;
  if (HIDWORD(v144) == -1)
  {
    v21 = 3;
  }

  else
  {
    v21 = 4;
  }

  if (v20 < v21)
  {
    v21 = 0;
  }

  v17 = *(this + 18);
  if (v17 <= v3)
  {
    goto LABEL_111;
  }

  v125 = v18;
  v126 = v7;
  v124 = v19;
  v7 = *(&v144 + v20 - v21);
  v17 = *(*(this + 20) + 4 * v3);
  isBoundaryVertex = re::GeomConnectivityManifold::isBoundaryVertex(this, v3);
  v22 = re::GeomConnectivityManifold::isBoundaryVertex(this, v7);
  v129 = a3;
  if ((v134 & 0x40000000) == 0)
  {
    if ((isBoundaryVertex & v22) == 1)
    {
      isBoundaryVertex = *(this + 18);
      if (isBoundaryVertex <= v3)
      {
LABEL_179:
        v135 = 0;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v144 = 0u;
        v104 = MEMORY[0x1E69E9C10];
        v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v136 = 136315906;
        v137 = "operator[]";
        v138 = 1024;
        if (v105)
        {
          v106 = 3;
        }

        else
        {
          v106 = 2;
        }

        v139 = 789;
        v140 = 2048;
        v141 = v3;
        v142 = 2048;
        v143 = isBoundaryVertex;
        _os_log_send_and_compose_impl(v106, &v135, &v144, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
        _os_crash_msg();
        __break(1u);
        goto LABEL_183;
      }

      v130 = v17;
      v23 = *(this + 20);
      if (*(v23 + 4 * v3) != v126)
      {
        goto LABEL_39;
      }

      if (isBoundaryVertex <= v7)
      {
LABEL_187:
        v135 = 0;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v144 = 0u;
        v110 = MEMORY[0x1E69E9C10];
        v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v136 = 136315906;
        v137 = "operator[]";
        v138 = 1024;
        if (v111)
        {
          v112 = 3;
        }

        else
        {
          v112 = 2;
        }

        v139 = 789;
        v140 = 2048;
        v141 = v7;
        v142 = 2048;
        v143 = isBoundaryVertex;
        _os_log_send_and_compose_impl(v112, &v135, &v144, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
        _os_crash_msg();
        __break(1u);
        goto LABEL_191;
      }

      v130 = *(v23 + 4 * v7);
      if (v130 != v133)
      {
        goto LABEL_39;
      }

      v17 = v131;
      v4 = *(this + 8);
      if (v4 <= v131)
      {
LABEL_195:
        v135 = 0;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v144 = 0u;
        v116 = MEMORY[0x1E69E9C10];
        v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v136 = 136315906;
        v137 = "operator[]";
        v138 = 1024;
        if (v117)
        {
          v118 = 3;
        }

        else
        {
          v118 = 2;
        }

        v139 = 789;
        v140 = 2048;
        v141 = v17;
        v142 = 2048;
        v143 = v4;
        _os_log_send_and_compose_impl(v118, &v135, &v144, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
        _os_crash_msg();
        __break(1u);
LABEL_199:
        v135 = 0;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v144 = 0u;
        v119 = MEMORY[0x1E69E9C10];
        v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v136 = 136315906;
        v137 = "operator[]";
        v138 = 1024;
        if (v120)
        {
          v121 = 3;
        }

        else
        {
          v121 = 2;
        }

        v139 = 789;
        v140 = 2048;
        v141 = v7;
        v142 = 2048;
        v143 = v17;
        _os_log_send_and_compose_impl(v121, &v135, &v144, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
        _os_crash_msg();
        __break(1u);
      }

      if ((*(*(this + 10) + 4 * v131) & 0x40000000) == 0)
      {
LABEL_37:
        v24 = this;
        v25 = v131;
        goto LABEL_38;
      }
    }

    else
    {
      if (!isBoundaryVertex)
      {
        if (v22)
        {
          v17 = v133;
          v4 = *(this + 8);
          if (v4 <= v133)
          {
LABEL_191:
            v135 = 0;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            v144 = 0u;
            v113 = MEMORY[0x1E69E9C10];
            v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v136 = 136315906;
            v137 = "operator[]";
            v138 = 1024;
            if (v114)
            {
              v115 = 3;
            }

            else
            {
              v115 = 2;
            }

            v139 = 789;
            v140 = 2048;
            v141 = v17;
            v142 = 2048;
            v143 = v4;
            _os_log_send_and_compose_impl(v115, &v135, &v144, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
            _os_crash_msg();
            __break(1u);
            goto LABEL_195;
          }

          if ((*(*(this + 10) + 4 * v133) & 0x40000000) == 0)
          {
            v17 = *(this + 18);
            if (v17 <= v7)
            {
              goto LABEL_199;
            }

            v130 = *(*(this + 20) + 4 * v7);
            goto LABEL_39;
          }
        }

        goto LABEL_37;
      }

      v130 = v17;
      v17 = *(this + 18);
      if (v17 <= v3)
      {
LABEL_183:
        v135 = 0;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v144 = 0u;
        v107 = MEMORY[0x1E69E9C10];
        v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v136 = 136315906;
        v137 = "operator[]";
        v138 = 1024;
        if (v108)
        {
          v109 = 3;
        }

        else
        {
          v109 = 2;
        }

        v139 = 789;
        v140 = 2048;
        v141 = v3;
        v142 = 2048;
        v143 = v17;
        _os_log_send_and_compose_impl(v109, &v135, &v144, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
        _os_crash_msg();
        __break(1u);
        goto LABEL_187;
      }

      if (*(*(this + 20) + 4 * v3) != v126)
      {
        goto LABEL_39;
      }
    }

    v24 = this;
    v25 = v125;
LABEL_38:
    v130 = re::GeomConnectivityManifold::halfEdgeDualIndex(v24, v25);
LABEL_39:
    v17 = v132;
    v4 = *(this + 8);
    if (v4 <= v132)
    {
LABEL_159:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v89 = MEMORY[0x1E69E9C10];
      v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v90)
      {
        v91 = 3;
      }

      else
      {
        v91 = 2;
      }

      v139 = 789;
      v140 = 2048;
      v141 = v17;
      v142 = 2048;
      v143 = v4;
      _os_log_send_and_compose_impl(v91, &v135, &v144, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
      _os_crash_msg();
      __break(1u);
      goto LABEL_163;
    }

    v26 = *(*(this + 10) + 4 * v132) & 0xFFFFFFF;
    goto LABEL_41;
  }

  v17 = *(this + 18);
  if (v17 <= v7)
  {
LABEL_155:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v86 = MEMORY[0x1E69E9C10];
    v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v87)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v7;
    v142 = 2048;
    v143 = v17;
    _os_log_send_and_compose_impl(v88, &v135, &v144, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
    _os_crash_msg();
    __break(1u);
    goto LABEL_159;
  }

  if (*(*(this + 20) + 4 * v7) == v133)
  {
    v130 = re::GeomConnectivityManifold::halfEdgeDualIndex(this, v131);
  }

  else
  {
    v130 = *(*(this + 20) + 4 * v7);
  }

  v26 = -1;
LABEL_41:
  v17 = *(this + 18);
  if (v17 <= v7)
  {
LABEL_115:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v7;
    v142 = 2048;
    v143 = v17;
    _os_log_send_and_compose_impl(v60, &v135, &v144, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
    _os_crash_msg();
    __break(1u);
    goto LABEL_119;
  }

  v17 = *(*(this + 20) + 4 * v7);
  v4 = *(this + 8);
  if (v4 <= v17)
  {
LABEL_119:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v61)
    {
      v62 = 3;
    }

    else
    {
      v62 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v17;
    v142 = 2048;
    v143 = v4;
    _os_log_send_and_compose_impl(v62, &v135, &v144, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v13;
    v142 = 2048;
    v143 = v8;
    _os_log_send_and_compose_impl(v64, &v135, &v144, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
    _os_crash_msg();
    __break(1u);
    goto LABEL_127;
  }

  v127 = v7;
  v128 = v8;
  v27 = *(this + 10);
  isBoundaryVertex = *(v27 + 4 * v17);
  if ((isBoundaryVertex & 0x40000000) == 0)
  {
    v7 = &v144;
    v4 = 3;
    v28 = *(v27 + 4 * v17);
    while (1)
    {
      v9 = v28 & 0xFFFFFFF;
      v29 = v9 == v5 || v9 == v26;
      if (!v29)
      {
        v8 = *(this + 3);
        if (v8 <= v9)
        {
          v135 = 0;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v144 = 0u;
          v43 = MEMORY[0x1E69E9C10];
          v136 = 136315906;
          v137 = "operator[]";
          v138 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v44 = 3;
          }

          else
          {
            v44 = 2;
          }

          v139 = 797;
          v140 = 2048;
          v141 = v9;
          v142 = 2048;
          v143 = v8;
          _os_log_send_and_compose_impl(v44, &v135, &v144, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
          _os_crash_msg();
          __break(1u);
LABEL_95:
          v135 = 0;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v144 = 0u;
          v45 = MEMORY[0x1E69E9C10];
          v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v136 = 136315906;
          v137 = "operator[]";
          v138 = 1024;
          if (v46)
          {
            v47 = 3;
          }

          else
          {
            v47 = 2;
          }

          v139 = 797;
          v140 = 2048;
          v141 = v9;
          v142 = 2048;
          v143 = v8;
          _os_log_send_and_compose_impl(v47, &v135, &v144, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
          _os_crash_msg();
          __break(1u);
LABEL_99:
          v135 = 0;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v144 = 0u;
          v13 = MEMORY[0x1E69E9C10];
          v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v136 = 136315906;
          v137 = "operator[]";
          v138 = 1024;
          if (v48)
          {
            v49 = 3;
          }

          else
          {
            v49 = 2;
          }

          v139 = 789;
          v140 = 2048;
          v141 = v8;
          v142 = 2048;
          v143 = v9;
          _os_log_send_and_compose_impl(v49, &v135, &v144, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v123);
          _os_crash_msg();
          __break(1u);
          goto LABEL_103;
        }

        v30 = *(this + 5) + 16 * v9;
        v144 = *v30;
        if (HIDWORD(v144) == -1)
        {
          v31 = 3;
        }

        else
        {
          v31 = 4;
        }

        v32 = (v28 >> 28) & 3;
        if (v32 < v31)
        {
          LOBYTE(v31) = 0;
        }

        v29 = HIDWORD(v144) == -1;
        *(&v144 | (4 * (v32 - v31))) = v3;
        v33 = DWORD2(v144);
        v34 = HIDWORD(v144);
        if (v29)
        {
          v34 = -1;
        }

        *v30 = v144;
        *(v30 + 8) = v33;
        *(v30 + 12) = v34;
      }

      v28 = re::GeomConnectivityManifold::halfEdgePreviousDual(this, v28, &v144);
      if (isBoundaryVertex == v28)
      {
        goto LABEL_77;
      }
    }
  }

  v4 = &v144;
  v7 = 3;
  do
  {
    v9 = isBoundaryVertex & 0xFFFFFFF;
    if (v9 != v5 && v9 != v26)
    {
      v8 = *(this + 3);
      if (v8 <= v9)
      {
        goto LABEL_95;
      }

      v36 = *(this + 5) + 16 * v9;
      v144 = *v36;
      if (HIDWORD(v144) == -1)
      {
        v37 = 3;
      }

      else
      {
        v37 = 4;
      }

      v38 = (isBoundaryVertex >> 28) & 3;
      if (v38 < v37)
      {
        LOBYTE(v37) = 0;
      }

      v29 = HIDWORD(v144) == -1;
      *(&v144 | (4 * (v38 - v37))) = v3;
      v39 = DWORD2(v144);
      v40 = HIDWORD(v144);
      if (v29)
      {
        v40 = -1;
      }

      *v36 = v144;
      *(v36 + 8) = v39;
      *(v36 + 12) = v40;
    }

    isBoundaryVertex = re::GeomConnectivityManifold::halfEdgePreviousDual(this, isBoundaryVertex, &v144);
  }

  while ((isBoundaryVertex & 0x40000000) == 0);
LABEL_77:
  v8 = *(this + 8);
  if (v8 <= v13)
  {
    goto LABEL_123;
  }

  *(*(this + 10) + 4 * v13) &= ~0x80000000;
  v17 = v133;
  v8 = *(this + 8);
  if (v8 <= v133)
  {
LABEL_127:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v17;
    v142 = 2048;
    v143 = v8;
    _os_log_send_and_compose_impl(v67, &v135, &v144, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
    _os_crash_msg();
    __break(1u);
    goto LABEL_131;
  }

  *(*(this + 10) + 4 * v133) &= ~0x80000000;
  v17 = v131;
  v8 = *(this + 8);
  if (v8 <= v131)
  {
LABEL_131:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v17;
    v142 = 2048;
    v143 = v8;
    _os_log_send_and_compose_impl(v70, &v135, &v144, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
    _os_crash_msg();
    __break(1u);
    goto LABEL_135;
  }

  *(*(this + 10) + 4 * v131) &= ~0x80000000;
  result = re::GeomConnectivityManifold::glueHalfEdges(this, v133, v131);
  v17 = (4 * v5);
  v8 = *(this + 13);
  if (v8 <= v17)
  {
LABEL_135:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v17;
    v142 = 2048;
    v143 = v8;
    _os_log_send_and_compose_impl(v73, &v135, &v144, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v5;
    v142 = 2048;
    v143 = v8;
    _os_log_send_and_compose_impl(v76, &v135, &v144, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
    _os_crash_msg();
    __break(1u);
    goto LABEL_143;
  }

  *(*(this + 15) + 4 * v17) = v13;
  v5 = v127;
  v4 = v128;
  isBoundaryVertex = v129;
  if ((v134 & 0x40000000) == 0)
  {
    v17 = v132;
    v8 = *(this + 8);
    if (v8 <= v132)
    {
LABEL_163:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v92 = MEMORY[0x1E69E9C10];
      v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v93)
      {
        v94 = 3;
      }

      else
      {
        v94 = 2;
      }

      v139 = 789;
      v140 = 2048;
      v141 = v17;
      v142 = 2048;
      v143 = v8;
      _os_log_send_and_compose_impl(v94, &v135, &v144, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
      _os_crash_msg();
      __break(1u);
      goto LABEL_167;
    }

    *(*(this + 10) + 4 * v132) &= ~0x80000000;
    v17 = v126;
    v8 = *(this + 8);
    if (v8 <= v126)
    {
LABEL_167:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v95 = MEMORY[0x1E69E9C10];
      v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v96)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      v139 = 789;
      v140 = 2048;
      v141 = v17;
      v142 = 2048;
      v143 = v8;
      _os_log_send_and_compose_impl(v97, &v135, &v144, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
      _os_crash_msg();
      __break(1u);
      goto LABEL_171;
    }

    *(*(this + 10) + 4 * v126) &= ~0x80000000;
    v17 = v125;
    v8 = *(this + 8);
    if (v8 <= v125)
    {
LABEL_171:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v98 = MEMORY[0x1E69E9C10];
      v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v99)
      {
        v100 = 3;
      }

      else
      {
        v100 = 2;
      }

      v139 = 789;
      v140 = 2048;
      v141 = v17;
      v142 = 2048;
      v143 = v8;
      _os_log_send_and_compose_impl(v100, &v135, &v144, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
      _os_crash_msg();
      __break(1u);
      goto LABEL_175;
    }

    *(*(this + 10) + 4 * v125) &= ~0x80000000;
    result = re::GeomConnectivityManifold::glueHalfEdges(this, v126, v125);
    v17 = *(this + 13);
    v8 = v124;
    if (v17 <= v124)
    {
LABEL_175:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v101 = MEMORY[0x1E69E9C10];
      v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v102)
      {
        v103 = 3;
      }

      else
      {
        v103 = 2;
      }

      v139 = 789;
      v140 = 2048;
      v141 = v8;
      v142 = 2048;
      v143 = v17;
      _os_log_send_and_compose_impl(v103, &v135, &v144, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
      _os_crash_msg();
      __break(1u);
      goto LABEL_179;
    }

    *(*(this + 15) + 4 * v124) = v132;
  }

  v8 = *(this + 18);
  if (v8 <= v127)
  {
    goto LABEL_139;
  }

  v42 = *(this + 20);
  *(v42 + 4 * v127) = v13;
  v17 = *(this + 28);
  if (v17 <= v128)
  {
LABEL_143:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v4;
    v142 = 2048;
    v143 = v17;
    _os_log_send_and_compose_impl(v79, &v135, &v144, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
    _os_crash_msg();
    __break(1u);
    goto LABEL_147;
  }

  *(*(this + 30) + 4 * v128) = v13;
  *v129 = v3;
  if (v8 <= v3)
  {
LABEL_147:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    v139 = 789;
    v140 = 2048;
    v141 = v3;
    v142 = 2048;
    v143 = v8;
    _os_log_send_and_compose_impl(v82, &v135, &v144, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v122, v124);
    _os_crash_msg();
    __break(1u);
    goto LABEL_151;
  }

  *(v42 + 4 * v3) = v130;
  return result;
}

re::GeomAttribute *re::addVertexUVs(re *this, re::GeomMesh *a2)
{
  result = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexUV");
  if (!result)
  {

    return re::GeomMesh::addAttribute(this, "vertexUV", 1, 6);
  }

  return result;
}

uint64_t re::accessVertexUVs(re *this, const re::GeomMesh *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexUV");
  if (!(*(*v2 + 16))(v2))
  {
    return 0;
  }

  if (!v2[5])
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

    v12 = 797;
    v13 = 2048;
    v14 = 0;
    v15 = 2048;
    v16 = 0;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  v3 = v2[7];
  (*(*v2 + 16))(v2);
  return v3;
}

uint64_t re::modifyVertexUVs(re *this, re::GeomMesh *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexUV");
  if (!(*(*v2 + 16))(v2))
  {
    return 0;
  }

  if (!v2[5])
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
    v14 = 0;
    v15 = 2048;
    v16 = 0;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  v3 = v2[7];
  (*(*v2 + 16))(v2);
  return v3;
}

uint64_t re::buildExtrudedText(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v19[1] = 0;
  v21 = 0;
  v20 = 0;
  v25 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v6 = DWORD2(v23);
  if (DWORD2(v23))
  {
    v7 = 0;
    v8 = 64;
    do
    {
      v9 = *(&v23 + 1);
      if (*(&v23 + 1) <= v7)
      {
        *v30 = 0;
        memset(v28, 0, 64);
        v27 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v37[0] = 136315906;
        *&v37[1] = "operator[]";
        LOWORD(v37[3]) = 1024;
        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        *(&v37[3] + 2) = 789;
        HIWORD(v37[4]) = 2048;
        *&v37[5] = v7;
        LOWORD(v37[7]) = 2048;
        *(&v37[7] + 2) = v9;
        _os_log_send_and_compose_impl(v14, v30, &v27, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v37, 38, v18, v19[0]);
        _os_crash_msg();
        __break(1u);
LABEL_15:
        v26 = 0;
        v38 = 0u;
        v39 = 0u;
        memset(v37, 0, sizeof(v37));
        v15 = MEMORY[0x1E69E9C10];
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v30 = 136315906;
        *&v30[4] = "operator[]";
        v31 = 1024;
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v32 = 789;
        v33 = 2048;
        v34 = v3;
        v35 = 2048;
        v36 = v4;
        _os_log_send_and_compose_impl(v17, &v26, v37, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v30, 38, v18, v19[0]);
        _os_crash_msg();
        __break(1u);
      }

      v4 = v20;
      v10 = (v25 + v8 - 64);
      v3 = *(v25 + v8);
      if (v20 <= v3)
      {
        goto LABEL_15;
      }

      v3 = (v22 + 736 * v3);
      *&v27 = 0;
      DWORD2(v27) = 0;
      bzero(v28, 0x2C8uLL);
      re::internal::GeomBaseMesh::GeomBaseMesh(v28);
      v29 = 0;
      re::GeomMesh::copy(v3, &v27);
      re::transform(&v27, v10);
      re::DynamicArray<re::GeomMesh>::add(a1, &v27);
      re::GeomMesh::~GeomMesh(&v27);
      ++v7;
      v8 += 80;
    }

    while (v6 != v7);
  }

  if (*(&v22 + 1))
  {
    if (v25)
    {
      (*(**(&v22 + 1) + 40))();
    }

    v25 = 0;
    v23 = 0uLL;
    *(&v22 + 1) = 0;
    ++v24;
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v19);
}

void re::anonymous namespace::buildExtrudedText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  else
  {
    v10 = v3;
    v11 = v4;
    v5 = &unk_1F5D03008;
    v6 = 0;
    *cf = 0u;
    memset(v8, 0, sizeof(v8));
    v9 = 0x7FFFFFFFLL;
    v5 = &unk_1F5D03008;
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

uint64_t re::buildExtrudedText(re *this, re::GeomMesh *a2, const re::GeomBuildExtrudedTextOptions *a3, re::GeomBuildExtrudedTextSupport *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v36[0] = 0;
  v36[1] = 0;
  v38 = 0;
  v37 = 0;
  v42 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v6 = *(&v40 + 1);
  v7 = DWORD2(v40);
  if (DWORD2(v40))
  {
    v8 = 0;
    v9 = 0;
    v10 = v37;
    v11 = (v42 + 64);
    v12 = *(&v40 + 1);
    v13 = DWORD2(v40);
    while (v12)
    {
      v4 = *v11;
      if (v37 <= v4)
      {
        goto LABEL_33;
      }

      v14 = v39 + 736 * v4;
      v8 = (*(v14 + 16) + v8);
      v9 = (v9 + *(v14 + 40));
      v11 += 20;
      --v12;
      if (!--v13)
      {
        goto LABEL_8;
      }
    }

    v67[0] = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    *v52 = 789;
    *&v52[4] = 2048;
    *&v52[6] = v6;
    *&v52[14] = 2048;
    *&v52[16] = v6;
    _os_log_send_and_compose_impl(v25, v67, &v44, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v50, 38, v35, v36[0]);
    _os_crash_msg();
    __break(1u);
LABEL_33:
    v67[0] = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    v51 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    *v52 = 789;
    *&v52[4] = 2048;
    *&v52[6] = v4;
    *&v52[14] = 2048;
    *&v52[16] = v10;
    _os_log_send_and_compose_impl(v28, v67, &v44, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v50, 38, v35, v36[0]);
    _os_crash_msg();
    __break(1u);
LABEL_37:
    *v60 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v67[0]) = 136315906;
    *(v67 + 4) = "operator[]";
    WORD2(v67[1]) = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    *(&v67[1] + 6) = 789;
    WORD1(v67[2]) = 2048;
    *(&v67[2] + 4) = v10;
    WORD2(v67[3]) = 2048;
    *(&v67[3] + 6) = v9;
    _os_log_send_and_compose_impl(v31, v60, &v44, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v35, v36[0]);
    _os_crash_msg();
    __break(1u);
LABEL_41:
    v43 = 0;
    v68 = 0u;
    v69 = 0u;
    memset(v67, 0, sizeof(v67));
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v60 = 136315906;
    *&v60[4] = "operator[]";
    v61 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v62 = 789;
    v63 = 2048;
    v64 = v8;
    v65 = 2048;
    v66 = v6;
    _os_log_send_and_compose_impl(v34, &v43, v67, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v60, 38, v35, v36[0]);
    _os_crash_msg();
    __break(1u);
  }

  v9 = 0;
  v8 = 0;
LABEL_8:
  bzero(v50, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v52[2], 1uLL);
  ++v53;
  re::internal::GeomAttributeManager::GeomAttributeManager(v55);
  re::internal::GeomAttributeManager::addAttribute(v55, "vertexPosition", 1, 7);
  if (v56)
  {
    v16 = v57;
    v6 = 8 * v56;
    do
    {
      v17 = *v16++;
      (*(*v17 + 88))(v17, v8);
      v6 -= 8;
    }

    while (v6);
  }

  if (*&v52[10] < v9)
  {
    re::DynamicArray<re::BlendNode>::setCapacity(&v52[2], v9);
  }

  if (v58)
  {
    v8 = v59;
    v18 = 8 * v58;
    do
    {
      v19 = *v8++;
      (*(v19->i64[0] + 88))(v19, v9);
      v18 -= 8;
    }

    while (v18);
  }

  if (v7)
  {
    v10 = 0;
    v20 = 64;
    do
    {
      v9 = *(&v40 + 1);
      if (*(&v40 + 1) <= v10)
      {
        goto LABEL_37;
      }

      v6 = v37;
      v21 = (v42 + v20 - 64);
      v8 = *(v42 + v20);
      if (v37 <= v8)
      {
        goto LABEL_41;
      }

      v8 = (v39 + 736 * v8);
      *&v44 = 0;
      DWORD2(v44) = 0;
      bzero(&v45, 0x2C8uLL);
      re::internal::GeomBaseMesh::GeomBaseMesh(&v45);
      v49 = 0;
      re::GeomMesh::copy(v8, &v44);
      re::transform(&v44, v21);
      re::GeomMeshBuilder::appendMesh(v50, &v44);
      re::GeomMesh::~GeomMesh(&v44);
      ++v10;
      v20 += 80;
    }

    while (v7 != v10);
  }

  re::GeomMesh::GeomMesh(&v44, 0);
  re::GeomMesh::operator=(&v44, &v50[8]);
  re::GeomMesh::setName(&v44, *v50);
  re::GeomMesh::freeName(v50);
  re::GeomMesh::freeName(v50);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v55);
  if (*&v52[2] && v54)
  {
    (*(**&v52[2] + 40))();
  }

  re::GeomMesh::operator=(this, &v44);
  re::GeomMesh::~GeomMesh(&v44);
  if (*(&v39 + 1))
  {
    if (v42)
    {
      (*(**(&v39 + 1) + 40))();
    }

    v42 = 0;
    v40 = 0uLL;
    *(&v39 + 1) = 0;
    ++v41;
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v36);
}

uint64_t re::buildExtrudedText(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v12 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  re::DynamicArray<re::GeomMesh>::operator=(a1, v7);
  re::DynamicArray<re::GeomMesh>::operator=(a2, &v9 + 1);
  if (*(&v9 + 1))
  {
    if (v12)
    {
      (*(**(&v9 + 1) + 40))();
    }

    v12 = 0;
    v10 = 0uLL;
    *(&v9 + 1) = 0;
    ++v11;
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v7);
}