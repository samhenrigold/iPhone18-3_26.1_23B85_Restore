void re::anonymous namespace::$_77::__invoke(_anonymous_namespace_ *a1, uint64_t *a2, uint64_t *a3)
{
  v240 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2;
    i = a1;
    v6 = 0;
    v7 = 456;
    do
    {
      v8 = (a3[18] + 456 * *(i + 8 * v6));
      v9 = v8[1];
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        v12 = 184;
        v13 = a3[3];
        while (1)
        {
          v14 = *(v8[2] + 8 * v11);
          if (v14 == -1)
          {
            break;
          }

          if (v13 <= v14)
          {
            goto LABEL_135;
          }

          if (*(a3[2] + 4 * v14))
          {
            break;
          }

          ++v11;
          v10 += 784;
          v12 += 192;
          if (v9 == v11)
          {
            goto LABEL_9;
          }
        }

        v15 = 0uLL;
        memset(v212, 0, sizeof(v212));
        memset(v211, 0, sizeof(v211));
        v209 = 0u;
        memset(v210, 0, sizeof(v210));
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v201 = 0u;
        v202 = 0u;
        v199 = 0u;
        v200 = 0u;
        v197 = 0u;
        v198 = 0u;
        v195 = 0u;
        v196 = 0u;
        v193 = 0u;
        v194 = 0u;
        v192 = 0u;
        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_145;
        }

        v191 = v6;
        v16 = v8[5] + v12;
        v7 = *(v16 - 176);
        v17 = v8[10];
        if (v7)
        {
          v21 = 0;
          i = *(v16 - 176);
          v22 = *(v16 - 168);
          v24 = *a3;
          v23 = a3[1];
          v26 = *(&v192 + 1);
          v25 = v193;
          while (i != v21)
          {
            v27 = *(v22 + 8 * v21);
            if (v23 <= v27)
            {
              goto LABEL_76;
            }

            if (v26 == v21)
            {
              goto LABEL_77;
            }

            *(v25 + 4 * v21++) = *(v24 + 4 * v27);
            if (v7 == v21)
            {
              goto LABEL_17;
            }
          }

          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v94 = MEMORY[0x1E69E9C10];
          v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v95)
          {
            v96 = 3;
          }

          else
          {
            v96 = 2;
          }

          v217 = 476;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = i;
          _os_log_send_and_compose_impl(v96, &v213, &v222, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_76:
          re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v27, v23);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v169, v178);
          __break(1u);
LABEL_77:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v97 = MEMORY[0x1E69E9C10];
          v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v98)
          {
            v99 = 3;
          }

          else
          {
            v99 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v26;
          v220 = 2048;
          v221 = v26;
          _os_log_send_and_compose_impl(v99, &v213, &v222, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_81:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v100 = MEMORY[0x1E69E9C10];
          v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v101)
          {
            v102 = 3;
          }

          else
          {
            v102 = 2;
          }

          v217 = 476;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = i;
          _os_log_send_and_compose_impl(v102, &v213, &v222, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_85:
          re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v37, v34);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v170, v179);
          __break(1u);
LABEL_86:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v103 = MEMORY[0x1E69E9C10];
          v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v104)
          {
            v105 = 3;
          }

          else
          {
            v105 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v26;
          v220 = 2048;
          v221 = v26;
          _os_log_send_and_compose_impl(v105, &v213, &v222, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_90:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v106 = MEMORY[0x1E69E9C10];
          v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v107)
          {
            v108 = 3;
          }

          else
          {
            v108 = 2;
          }

          v217 = 476;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = i;
          _os_log_send_and_compose_impl(v108, &v213, &v222, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_94:
          re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v47, v44);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v171, v180);
          __break(1u);
LABEL_95:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v109 = MEMORY[0x1E69E9C10];
          v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v110)
          {
            v111 = 3;
          }

          else
          {
            v111 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v26;
          v220 = 2048;
          v221 = v26;
          _os_log_send_and_compose_impl(v111, &v213, &v222, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_99:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v112 = MEMORY[0x1E69E9C10];
          v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v113)
          {
            v114 = 3;
          }

          else
          {
            v114 = 2;
          }

          v217 = 476;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = v16;
          _os_log_send_and_compose_impl(v114, &v213, &v222, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_103:
          re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v53, v54);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v172, v181);
          __break(1u);
LABEL_104:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v115 = MEMORY[0x1E69E9C10];
          v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v116)
          {
            v117 = 3;
          }

          else
          {
            v117 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = v16;
          _os_log_send_and_compose_impl(v117, &v213, &v222, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_108:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v118 = MEMORY[0x1E69E9C10];
          v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v119)
          {
            v120 = 3;
          }

          else
          {
            v120 = 2;
          }

          v217 = 476;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = v16;
          _os_log_send_and_compose_impl(v120, &v213, &v222, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_112:
          re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v64, v65);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v173, v182);
          __break(1u);
LABEL_113:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v121 = MEMORY[0x1E69E9C10];
          v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v122)
          {
            v123 = 3;
          }

          else
          {
            v123 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = v16;
          _os_log_send_and_compose_impl(v123, &v213, &v222, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_117:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v124 = MEMORY[0x1E69E9C10];
          v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v125)
          {
            v126 = 3;
          }

          else
          {
            v126 = 2;
          }

          v217 = 476;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = v26;
          _os_log_send_and_compose_impl(v126, &v213, &v222, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_121:
          re::internal::assertLog(6, v75, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v77, v78);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v174, v183);
          __break(1u);
LABEL_122:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v127 = MEMORY[0x1E69E9C10];
          v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v128)
          {
            v129 = 3;
          }

          else
          {
            v129 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = v26;
          _os_log_send_and_compose_impl(v129, &v213, &v222, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_126:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v130 = MEMORY[0x1E69E9C10];
          v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v131)
          {
            v132 = 3;
          }

          else
          {
            v132 = 2;
          }

          v217 = 476;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = v26;
          _os_log_send_and_compose_impl(v132, &v213, &v222, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_130:
          re::internal::assertLog(6, v83, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v84, v85);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v175, v184);
          __break(1u);
LABEL_131:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v133 = MEMORY[0x1E69E9C10];
          v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v134)
          {
            v135 = 3;
          }

          else
          {
            v135 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = v26;
          _os_log_send_and_compose_impl(v135, &v213, &v222, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_135:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v13);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v176, v185);
          __break(1u);
LABEL_136:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v136 = MEMORY[0x1E69E9C10];
          v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v137)
          {
            v138 = 3;
          }

          else
          {
            v138 = 2;
          }

          v217 = 476;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = v4;
          _os_log_send_and_compose_impl(v138, &v213, &v222, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_140:
          re::internal::assertLog(6, v89, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v91, v92);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v177, v186);
          __break(1u);
LABEL_141:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v139 = MEMORY[0x1E69E9C10];
          v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v140)
          {
            v141 = 3;
          }

          else
          {
            v141 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = i;
          v220 = 2048;
          v221 = v4;
          _os_log_send_and_compose_impl(v141, &v213, &v222, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_145:
          v213 = 0;
          v225 = v15;
          v226 = v15;
          v223 = v15;
          v224 = v15;
          v222 = v15;
          v142 = MEMORY[0x1E69E9C10];
          v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v143)
          {
            v144 = 3;
          }

          else
          {
            v144 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v11;
          v220 = 2048;
          v221 = v7;
          _os_log_send_and_compose_impl(v144, &v213, &v222, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_149:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v145 = MEMORY[0x1E69E9C10];
          v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v146)
          {
            v147 = 3;
          }

          else
          {
            v147 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v11;
          v220 = 2048;
          v221 = v7;
          _os_log_send_and_compose_impl(v147, &v213, &v222, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_153:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v148 = MEMORY[0x1E69E9C10];
          v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v149)
          {
            v150 = 3;
          }

          else
          {
            v150 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v11;
          v220 = 2048;
          v221 = v7;
          _os_log_send_and_compose_impl(v150, &v213, &v222, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_157:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v151 = MEMORY[0x1E69E9C10];
          v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v152)
          {
            v153 = 3;
          }

          else
          {
            v153 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v11;
          v220 = 2048;
          v221 = v7;
          _os_log_send_and_compose_impl(v153, &v213, &v222, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_161:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v154 = MEMORY[0x1E69E9C10];
          v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v155)
          {
            v156 = 3;
          }

          else
          {
            v156 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v11;
          v220 = 2048;
          v221 = v7;
          _os_log_send_and_compose_impl(v156, &v213, &v222, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_165:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v157 = MEMORY[0x1E69E9C10];
          v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v158)
          {
            v159 = 3;
          }

          else
          {
            v159 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v11;
          v220 = 2048;
          v221 = v7;
          _os_log_send_and_compose_impl(v159, &v213, &v222, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_169:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v160 = MEMORY[0x1E69E9C10];
          v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v161)
          {
            v162 = 3;
          }

          else
          {
            v162 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v11;
          v220 = 2048;
          v221 = v7;
          _os_log_send_and_compose_impl(v162, &v213, &v222, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_173:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v163 = MEMORY[0x1E69E9C10];
          v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v164)
          {
            v165 = 3;
          }

          else
          {
            v165 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v11;
          v220 = 2048;
          v221 = v7;
          _os_log_send_and_compose_impl(v165, &v213, &v222, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
LABEL_177:
          v213 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v166 = MEMORY[0x1E69E9C10];
          v167 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v214 = 136315906;
          v215 = "operator[]";
          v216 = 1024;
          if (v167)
          {
            v168 = 3;
          }

          else
          {
            v168 = 2;
          }

          v217 = 468;
          v218 = 2048;
          v219 = v11;
          v220 = 2048;
          v221 = v12;
          _os_log_send_and_compose_impl(v168, &v213, &v222, 80, &dword_1E1C61000, v166, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v214, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
        }

LABEL_17:
        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_149;
        }

        v16 = v8[5] + v12;
        v7 = *(v16 - 152);
        v28 = v8[13];
        if (v7)
        {
          v32 = 0;
          i = *(v16 - 152);
          v33 = *(v16 - 144);
          v35 = a3[2];
          v34 = a3[3];
          v36 = *(&v194 + 1);
          v26 = v194;
          while (i != v32)
          {
            v37 = *(v33 + 8 * v32);
            if (v34 <= v37)
            {
              goto LABEL_85;
            }

            if (v26 == v32)
            {
              goto LABEL_86;
            }

            *(v36 + 4 * v32++) = *(v35 + 4 * v37);
            if (v7 == v32)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_81;
        }

LABEL_24:
        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_153;
        }

        v16 = v8[5] + v12;
        v7 = *(v16 - 128);
        v38 = v8[16];
        if (v7)
        {
          v42 = 0;
          i = *(v16 - 128);
          v43 = *(v16 - 120);
          v45 = a3[4];
          v44 = a3[5];
          v26 = *(&v195 + 1);
          v46 = v196;
          while (i != v42)
          {
            v47 = *(v43 + 8 * v42);
            if (v44 <= v47)
            {
              goto LABEL_94;
            }

            if (v26 == v42)
            {
              goto LABEL_95;
            }

            *(v46 + 4 * v42++) = *(v45 + 4 * v47);
            if (v7 == v42)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_90;
        }

LABEL_31:
        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_157;
        }

        v26 = v8[5] + v12;
        v7 = *(v26 - 104);
        v48 = v8[19];
        if (v7)
        {
          v52 = 0;
          for (i = 0; i != v7; ++i)
          {
            v16 = *(v26 - 104);
            if (v16 <= i)
            {
              goto LABEL_99;
            }

            v53 = *(*(v26 - 96) + 8 * i);
            v54 = a3[7];
            if (v54 <= v53)
            {
              goto LABEL_103;
            }

            v16 = v197;
            if (v197 <= i)
            {
              goto LABEL_104;
            }

            v55 = (a3[6] + 48 * v53);
            v56 = (*(&v197 + 1) + v52);
            v57 = *v55;
            v58 = v55[2];
            v56[1] = v55[1];
            v56[2] = v58;
            *v56 = v57;
            v52 += 48;
          }
        }

        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_161;
        }

        v26 = v8[5] + v12;
        v7 = *(v26 - 80);
        v59 = v8[22];
        if (v7)
        {
          v63 = 0;
          for (i = 0; i != v7; ++i)
          {
            v16 = *(v26 - 80);
            if (v16 <= i)
            {
              goto LABEL_108;
            }

            v64 = *(*(v26 - 72) + 8 * i);
            v65 = a3[9];
            if (v65 <= v64)
            {
              goto LABEL_112;
            }

            v16 = *(&v198 + 1);
            if (*(&v198 + 1) <= i)
            {
              goto LABEL_113;
            }

            v66 = (a3[8] + (v64 << 6));
            v67 = (v199 + v63);
            v68 = *v66;
            v69 = v66[1];
            v70 = v66[3];
            v67[2] = v66[2];
            v67[3] = v70;
            *v67 = v68;
            v67[1] = v69;
            v63 += 64;
          }
        }

        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_165;
        }

        v71 = v8[5] + v12;
        v7 = *(v71 - 56);
        v72 = v8[25];
        if (v7)
        {
          v76 = 0;
          for (i = 0; i != v7; ++i)
          {
            v26 = *(v71 - 56);
            if (v26 <= i)
            {
              goto LABEL_117;
            }

            v77 = *(*(v71 - 48) + 8 * i);
            v78 = a3[11];
            if (v78 <= v77)
            {
              goto LABEL_121;
            }

            v26 = v200;
            if (v200 <= i)
            {
              goto LABEL_122;
            }

            *(*(&v200 + 1) + v76) = *(a3[10] + 16 * v77);
            v76 += 16;
          }
        }

        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_169;
        }

        v79 = v8[5] + v12;
        v7 = *(v79 - 32);
        v80 = v8[28];
        if (v7)
        {
          for (i = 0; i != v7; *(v202 + 8 * i++) = *(a3[12] + 8 * v84))
          {
            v26 = *(v79 - 32);
            if (v26 <= i)
            {
              goto LABEL_126;
            }

            v84 = *(*(v79 - 24) + 8 * i);
            v85 = a3[13];
            if (v85 <= v84)
            {
              goto LABEL_130;
            }

            v26 = *(&v201 + 1);
            if (*(&v201 + 1) <= i)
            {
              goto LABEL_131;
            }
          }
        }

        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_173;
        }

        v86 = v8[5];
        v7 = *(v86 + v12 - 8);
        v87 = v8[31];
        if (v7)
        {
          v90 = 0;
          for (i = 0; i != v7; ++i)
          {
            v4 = *(v86 + v12 - 8);
            if (v4 <= i)
            {
              goto LABEL_136;
            }

            v91 = *(*(v86 + v12) + 8 * i);
            v92 = a3[15];
            if (v92 <= v91)
            {
              goto LABEL_140;
            }

            v4 = v203;
            if (v203 <= i)
            {
              goto LABEL_141;
            }

            *(*(&v203 + 1) + v90) = *(a3[14] + 16 * v91);
            v90 += 16;
          }
        }

        v12 = v8[7];
        if (v12 <= v11)
        {
          goto LABEL_177;
        }

        v93 = v8[8] + v10;
        v238 = 0u;
        v239 = 0u;
        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        v232 = 0u;
        v233 = 0u;
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        v222 = 0u;
        v223 = 0u;
        re::EvaluationContextSlices::init(&v222, &v192);
        if ((*(*v93 + 16))(v93, &v222))
        {
        }

        re::EvaluationContext::~EvaluationContext(&v192);
        i = a1;
        v4 = a2;
        v6 = v191;
        v7 = 456;
      }

      else
      {
LABEL_9:
      }

      v6 = (v6 + 1);
    }

    while (v6 != v4);
  }
}

uint64_t re::anonymous namespace::mapBranchOutputs<int>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = result;
    for (i = 0; i != a3; ++i)
    {
      if (result == i)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
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

        v19 = 476;
        v20 = 2048;
        v21 = v6;
        v22 = 2048;
        v23 = v6;
        _os_log_send_and_compose_impl(v10, &v15, v24, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v13, v14);
        _os_crash_msg();
        __break(1u);
LABEL_11:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, a6);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v12);
        __break(1u);
      }

      v8 = *(a4 + 8 * i);
      if (v8 >= a6)
      {
        goto LABEL_11;
      }

      *(a5 + 4 * v8) = *(a2 + 4 * i);
    }
  }

  return result;
}

float re::anonymous namespace::mapBranchOutputs<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a1 == i)
      {
        v16 = 0;
        memset(v25, 0, sizeof(v25));
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

        v20 = 476;
        v21 = 2048;
        v22 = a1;
        v23 = 2048;
        v24 = a1;
        _os_log_send_and_compose_impl(v11, &v16, v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v14, v15);
        _os_crash_msg();
        __break(1u);
LABEL_11:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, a6);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v13);
        __break(1u);
      }

      v8 = *(a4 + 8 * i);
      if (v8 >= a6)
      {
        goto LABEL_11;
      }

      result = *(a2 + 4 * i);
      *(a5 + 4 * v8) = result;
    }
  }

  return result;
}

__n128 re::anonymous namespace::mapBranchOutputs<re::Matrix3x3<float>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(a2 + 80);
      if (v6 <= v5)
      {
        break;
      }

      v6 = *(a1 + 80);
      if (v6 <= v5)
      {
        goto LABEL_12;
      }

      v7 = *(*(a2 + 88) + 8 * v5);
      v8 = *(a3 + 56);
      if (v8 <= v7)
      {
        goto LABEL_16;
      }

      v9 = *(a1 + 88) + v4;
      v10 = *(a3 + 48) + 48 * v7;
      result = *v9;
      v12 = *(v9 + 32);
      *(v10 + 16) = *(v9 + 16);
      *(v10 + 32) = v12;
      *v10 = result;
      ++v5;
      v4 += 48;
      if (v3 == v5)
      {
        return result;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v26 = 476;
    v27 = 2048;
    v28 = v5;
    v29 = 2048;
    v30 = v6;
    _os_log_send_and_compose_impl(v14, &v22, &v31, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v20, v21);
    _os_crash_msg();
    __break(1u);
LABEL_12:
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

    v26 = 476;
    v27 = 2048;
    v28 = v5;
    v29 = 2048;
    v30 = v6;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v20, v21);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v19);
    __break(1u);
  }

  return result;
}

__n128 re::anonymous namespace::mapBranchOutputs<re::Matrix4x4<float>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 104);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(a2 + 104);
      if (v6 <= v5)
      {
        break;
      }

      v6 = *(a1 + 104);
      if (v6 <= v5)
      {
        goto LABEL_12;
      }

      v7 = *(*(a2 + 112) + 8 * v5);
      v8 = *(a3 + 72);
      if (v8 <= v7)
      {
        goto LABEL_16;
      }

      v9 = *(a1 + 112) + v4;
      v10 = *(a3 + 64) + (v7 << 6);
      result = *v9;
      v12 = *(v9 + 16);
      v13 = *(v9 + 48);
      *(v10 + 32) = *(v9 + 32);
      *(v10 + 48) = v13;
      *v10 = result;
      *(v10 + 16) = v12;
      ++v5;
      v4 += 64;
      if (v3 == v5)
      {
        return result;
      }
    }

    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v27 = 476;
    v28 = 2048;
    v29 = v5;
    v30 = 2048;
    v31 = v6;
    _os_log_send_and_compose_impl(v15, &v23, &v32, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21, v22);
    _os_crash_msg();
    __break(1u);
LABEL_12:
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v27 = 476;
    v28 = 2048;
    v29 = v5;
    v30 = 2048;
    v31 = v6;
    _os_log_send_and_compose_impl(v18, &v23, &v32, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21, v22);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v20);
    __break(1u);
  }

  return result;
}

__n128 re::anonymous namespace::mapBranchOutputs<re::Quaternion<float>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 128);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(a2 + 128);
      if (v6 <= v5)
      {
        break;
      }

      v6 = *(a1 + 128);
      if (v6 <= v5)
      {
        goto LABEL_12;
      }

      v7 = *(*(a2 + 136) + 8 * v5);
      v8 = *(a3 + 88);
      if (v8 <= v7)
      {
        goto LABEL_16;
      }

      result = *(*(a1 + 136) + v4);
      *(*(a3 + 80) + 16 * v7) = result;
      ++v5;
      v4 += 16;
      if (v3 == v5)
      {
        return result;
      }
    }

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

    v23 = 476;
    v24 = 2048;
    v25 = v5;
    v26 = 2048;
    v27 = v6;
    _os_log_send_and_compose_impl(v11, &v19, &v28, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v17, v18);
    _os_crash_msg();
    __break(1u);
LABEL_12:
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

    v23 = 476;
    v24 = 2048;
    v25 = v5;
    v26 = 2048;
    v27 = v6;
    _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v17, v18);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v16);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::mapBranchOutputs<re::Vector2<float>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 152);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a2 + 152);
      if (v5 <= v4)
      {
        break;
      }

      v5 = *(result + 152);
      if (v5 <= v4)
      {
        goto LABEL_12;
      }

      v6 = *(*(a2 + 160) + 8 * v4);
      v7 = *(a3 + 104);
      if (v7 <= v6)
      {
        goto LABEL_16;
      }

      *(*(a3 + 96) + 8 * v6) = *(*(result + 160) + 8 * v4++);
      if (v3 == v4)
      {
        return result;
      }
    }

    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v21 = 476;
    v22 = 2048;
    v23 = v4;
    v24 = 2048;
    v25 = v5;
    _os_log_send_and_compose_impl(v9, &v17, &v26, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
LABEL_12:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v21 = 476;
    v22 = 2048;
    v23 = v4;
    v24 = 2048;
    v25 = v5;
    _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v14);
    __break(1u);
  }

  return result;
}

__n128 re::anonymous namespace::mapBranchOutputs<re::Vector3<float>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 176);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(a2 + 176);
      if (v6 <= v5)
      {
        break;
      }

      v6 = *(a1 + 176);
      if (v6 <= v5)
      {
        goto LABEL_12;
      }

      v7 = *(*(a2 + 184) + 8 * v5);
      v8 = *(a3 + 120);
      if (v8 <= v7)
      {
        goto LABEL_16;
      }

      result = *(*(a1 + 184) + v4);
      *(*(a3 + 112) + 16 * v7) = result;
      ++v5;
      v4 += 16;
      if (v3 == v5)
      {
        return result;
      }
    }

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

    v23 = 476;
    v24 = 2048;
    v25 = v5;
    v26 = 2048;
    v27 = v6;
    _os_log_send_and_compose_impl(v11, &v19, &v28, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v17, v18);
    _os_crash_msg();
    __break(1u);
LABEL_12:
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

    v23 = 476;
    v24 = 2048;
    v25 = v5;
    v26 = 2048;
    v27 = v6;
    _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v17, v18);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v16);
    __break(1u);
  }

  return result;
}

uint64_t *re::animationLogObjects(re *this)
{
  {
    re::animationLogObjects(void)::logObjects = os_log_create("com.apple.re", "Animation");
  }

  return &re::animationLogObjects(void)::logObjects;
}

uint64_t re::AnimationLogObjects::loggingEnabled(re::AnimationLogObjects *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue(v8, "animation.log.enabled", v6);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::AnimationLogObjects::loggingEnabled(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[296];
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(re::StringID *a1)
{
  {
    re::introspect<re::ecs2::ECSService>(BOOL)::info = re::ecs2::introspect_ECSService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::ECSService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::EventBus>(re::StringID *a1)
{
  {
    re::introspect<re::EventBus>(BOOL)::info = re::introspect_EventBus(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::EventBus>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

uint64_t re::EventBus::subscribe<re::ecs2::Scene,RESceneDidAddEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<RESceneDidAddEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(a3, v5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t re::EventBus::subscribe<re::ecs2::Scene,RESceneWillRemoveEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v14[8] = *MEMORY[0x1E69E9840];
  v10 = re::EventBus::getTypeId<RESceneWillRemoveEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, v10);
  re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(a3, v5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

unint64_t *re::PeerAttributionService::getOrCreateContextForPeerId(re::PeerAttributionService *this, unint64_t a2)
{
  v28 = a2;
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v4 = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 96, &v28, v3 ^ (v3 >> 31), &v29);
  if (HIDWORD(v30) != 0x7FFFFFFF)
  {
    return *(*(this + 14) + 32 * HIDWORD(v30) + 16);
  }

  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 24, 8);
  v6[1] = 0;
  v6[2] = 0;
  *(v6 + 8) = -1;
  v7 = v28;
  *v6 = v28;
  v6[1] = *(this + 56);
  v8 = *(this + 9);
  if (v8)
  {
    LOWORD(v29) = *(*(this + 11) + 2 * v8 - 2);
    v9 = v29;
    *(this + 9) = v8 - 1;
    ++*(this + 20);
    if (v9 == 0xFFFF)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = *this;
    if (v9 > 0x1F)
    {
LABEL_18:
      v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
      v18 = v17 ^ (v17 >> 31);
      v19 = *(this + 106);
      if (v19)
      {
        v20 = v18 % v19;
        v21 = *(*(this + 51) + 4 * (v18 % v19));
        if (v21 != 0x7FFFFFFF)
        {
          v22 = *(this + 52);
          if (*(v22 + 24 * v21 + 16) == v7)
          {
LABEL_23:
            LOWORD(v9) = 0;
            goto LABEL_29;
          }

          while (1)
          {
            LODWORD(v21) = *(v22 + 24 * v21 + 8) & 0x7FFFFFFF;
            if (v21 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v22 + 24 * v21 + 16) == v7)
            {
              goto LABEL_23;
            }
          }
        }
      }

      else
      {
        LODWORD(v20) = 0;
      }

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(this + 400, v20, v18, &v28, &v28);
      LOWORD(v9) = 0;
      ++*(this + 110);
LABEL_29:
      *(v6 + 8) = v9;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 96, &v28, v23 ^ (v23 >> 31), &v29);
      if (HIDWORD(v30) == 0x7FFFFFFF)
      {
        v24 = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 12, v30, v29);
        *(v24 + 8) = v28;
        *(v24 + 16) = v6;
        ++*(this + 34);
      }

      return v6;
    }

    *this = v9 + 1;
    LOWORD(v29) = v9;
  }

  v10 = v9;
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v9) ^ ((0xBF58476D1CE4E5B9 * v9) >> 27));
  v12 = v11 ^ (v11 >> 31);
  v13 = *(this + 8);
  if (v13)
  {
    v14 = v12 % v13;
    v15 = *(*(this + 2) + 4 * (v12 % v13));
    if (v15 != 0x7FFFFFFF)
    {
      v16 = *(this + 3);
      if (*(v16 + 16 * v15 + 12) == v9)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v15 = *(v16 + 16 * v15 + 8) & 0x7FFFFFFF;
        if (v15 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v16 + 16 * v15 + 12) == v9)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(this + 8, v14, v12, &v29, &v29);
  ++*(this + 12);
  v9 = v29;
LABEL_16:
  if (v9 == 0xFFFF)
  {
    v7 = v28;
    goto LABEL_18;
  }

  v10 = v9;
LABEL_27:
  if (v9 < 0x20)
  {
    *(this + v10 + 18) = v6;
    goto LABEL_29;
  }

  re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v10, 32);
  result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v26, v27);
  __break(1u);
  return result;
}

re::PeerAttributionService *re::PeerAttributionService::destroyContext(re::PeerAttributionService *this, uint64_t a2)
{
  if (a2)
  {
    v3 = this;
    v4 = *(a2 + 16);
    if (v4)
    {
      if (v4 >= 0x20)
      {
        re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v4, 32);
        this = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v7, v8);
        __break(1u);
        return this;
      }

      *(this + v4 + 18) = 0;
      re::PeerAttributionService::releaseAttributionIndex(this, v4);
    }

    else
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 400, a2);
    }

    v5 = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v3 + 96, a2);
    v6 = *(*re::globalAllocators(v5)[2] + 40);

    return v6();
  }

  return this;
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % v2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (*(v9 + 24 * v7 + 16) != v3)
  {
    while (1)
    {
      v10 = v7;
      LODWORD(v7) = *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v9 + 24 * v7 + 16) == v3)
      {
        *(v9 + 24 * v10 + 8) = *(v9 + 24 * v10 + 8) & 0x80000000 | *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
        goto LABEL_9;
      }
    }
  }

  *(v6 + 4 * v5) = *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
LABEL_9:
  v11 = *(a1 + 16);
  v12 = v11 + 24 * v7;
  v15 = *(v12 + 8);
  v14 = (v12 + 8);
  v13 = v15;
  if (v15 < 0)
  {
    *v14 = v13 & 0x7FFFFFFF;
    v11 = *(a1 + 16);
    v13 = *(v11 + 24 * v7 + 8);
  }

  v16 = *(a1 + 40);
  *(v11 + 24 * v7 + 8) = *(a1 + 36) | v13 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v7;
  *(a1 + 40) = v16 + 1;
  return 1;
}

_anonymous_namespace_ *re::PeerAttributionService::releaseAttributionIndex(re::PeerAttributionService *this, __int16 a2)
{
  v4 = a2;
  result = re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::remove(this + 8, &v4);
  if (result)
  {
    return re::DynamicArray<unsigned short>::add((this + 56), &v4);
  }

  return result;
}

BOOL re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

uint64_t re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::remove(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v3) ^ ((0xBF58476D1CE4E5B9 * v3) >> 27));
  v5 = (v4 ^ (v4 >> 31)) % v2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = v9 + 16 * v7;
  if (*(v10 + 12) != v3)
  {
    while (1)
    {
      v11 = v7;
      v7 = *(v9 + 16 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        return 0;
      }

      v12 = v9 + 16 * v7;
      if (*(v12 + 12) == v3)
      {
        *(v9 + 16 * v11 + 8) = *(v9 + 16 * v11 + 8) & 0x80000000 | *(v12 + 8) & 0x7FFFFFFF;
        goto LABEL_9;
      }
    }
  }

  *(v6 + 4 * v5) = *(v10 + 8) & 0x7FFFFFFF;
LABEL_9:
  v13 = *(a1 + 16);
  v14 = v13 + 16 * v7;
  v17 = *(v14 + 8);
  v16 = (v14 + 8);
  v15 = v17;
  if (v17 < 0)
  {
    *v16 = v15 & 0x7FFFFFFF;
    v13 = *(a1 + 16);
    v15 = *(v13 + 16 * v7 + 8);
  }

  v18 = *(a1 + 40);
  *(v13 + 16 * v7 + 8) = *(a1 + 36) | v15 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v7;
  *(a1 + 40) = v18 + 1;
  return 1;
}

_anonymous_namespace_ *re::DynamicArray<unsigned short>::add(_anonymous_namespace_ *this, _WORD *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<unsigned short>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 2 * v4) = *a2;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<RESceneEntityDidActivateEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(a3, v5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<REComponentDidActivateEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(a3, v5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

void *re::allocInfo_PeerAttributionService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_27, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_27))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191610, "PeerAttributionService");
    __cxa_guard_release(&_MergedGlobals_27);
  }

  return &unk_1EE191610;
}

void re::initInfo_PeerAttributionService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xA3B5877921502CB0;
  v8[1] = "PeerAttributionService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x21800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_PeerAttributionService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 16;
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

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(uint64_t a1, uint64_t a2, char a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  if ((a3 & 1) != 0 || !*(a2 + 40))
  {
    *(a1 + 8) = -1;
  }

  else
  {
    *(a1 + 8) = 0;
    if (!*(a2 + 16))
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

    if (!**(*(a2 + 32) + 8))
    {
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(a1);
    }
  }

  return a1;
}

_WORD *re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(_WORD *result)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *result;
  v2 = *(*result + 16);
  v3 = v2 - 1;
  v4 = result[4];
  v5 = result[5];
  while (1)
  {
    ++v4;
    if (v5 < v3 && *(v1 + 44) <= v4)
    {
      v4 = 0;
      result[5] = ++v5;
    }

    if (v5 == v3 && *(v1 + 48) <= v4)
    {
      break;
    }

    v6 = v5;
    if (v2 <= v5)
    {
      result[4] = v4;
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

      v14 = 797;
      v15 = 2048;
      v16 = v6;
      v17 = 2048;
      v18 = v2;
      _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(*(v1 + 32) + 16 * v5 + 8) + 4 * v4))
    {
      result[4] = v4;
      return result;
    }
  }

  *(result + 2) = -1;
  return result;
}

uint64_t re::EventBus::EventInfo::addSubscription(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  v8 = *(a2 + 48);
  v21 = a1;
  v23 = v8;
  v24 = 0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v22, a2);
  *v25 = v7;
  *&v25[8] = v14;
  v15[0] = *a1;
  v15[1] = v7;
  if (!(a3 | a4))
  {
    v10 = a1 + 88;
    goto LABEL_5;
  }

  v9 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((a1 + 216), &v14);
  if (v9 != -1)
  {
    v10 = *(a1 + 224) + 144 * v9 + 16;
LABEL_5:
    if (!*(a1 + 16) || *(v10 + 96))
    {
      goto LABEL_7;
    }

LABEL_9:
    v16 = v21;
    v17[6] = v23;
    v17[7] = 0;
    v11 = re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v17, v22);
    v18 = *v25;
    v19 = *&v25[16];
    v12 = re::globalAllocators(v11);
    re::FunctionBase<24ul,void ()(void)>::FunctionBase<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void,void>(v20, &v16, v12[2]);
    re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::addNew((a1 + 280), v15, v20);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v20);
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v17);
    goto LABEL_10;
  }

  if (*(a1 + 16))
  {
    goto LABEL_9;
  }

  v10 = 0;
LABEL_7:
  re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(re::EventBus::Subscriptions *)#1}::operator()(&v21, v10);
LABEL_10:
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v22);
  return v15[0];
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB3028;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB3090;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<RESceneDidAddEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneDidAddEvent>(void)const::s_id = re::EventBus::typeStringToId(("18RESceneDidAddEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[24];
}

uint64_t re::EventBus::addOrGetEventInfo(re::EventBus *this, uint64_t a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a2;
  v4 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 3, &v10);
  if (v4 == -1 || (v5 = *(*(this + 4) + 48 * v4 + 8)) == 0)
  {
    v6 = re::globalAllocators(v4);
    v7 = (*(*v6[2] + 32))(v6[2], 344, 8);
    *v7 = a2;
    *(v7 + 120) = 0u;
    *(v7 + 136) = 0u;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0u;
    *(v7 + 176) = 0u;
    *(v7 + 192) = 0;
    *(v7 + 8) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 100) = 0u;
    *(v7 + 232) = 0u;
    *(v7 + 248) = 0u;
    *(v7 + 200) = 0u;
    *(v7 + 264) = 0u;
    *(v7 + 280) = 0u;
    *(v7 + 296) = 0u;
    *(v7 + 312) = 0u;
    *(v7 + 328) = 0u;
    *(v7 + 216) = 0u;
    v12[3] = v12;
    v11[3] = v11;
    v12[0] = &unk_1F5CB2F30;
    v10 = v7;
    v11[0] = &unk_1F5CB2F30;
    std::__function::__value_func<void ()(re::EventBus::EventInfo *)>::~__value_func[abi:nn200100](v12);
    v5 = *re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addNew(this + 3, &v9, &v10);
    std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>::~unique_ptr[abi:nn200100](&v10);
  }

  return v5;
}

unint64_t re::EventBus::typeStringToId(re::EventBus *this, const char *a2)
{
  v3 = strlen(this);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v10 = v3;
  if (v3)
  {
    memcpy(__p, this, v3);
  }

  *(__p + v4) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v6 = v10;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v11, v5, v6);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v4 + v7 + v13;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v13 + v5 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v6 + v8 + v19;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v31 + v29 + v40 + v30;
        v22 = __ROR8__(v31 + v29 + v40, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * ((v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v5);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void *re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addNew(uint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v6 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return (a1[1] + 48 * v6 + 8);
  }

  return re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(void *a1, unint64_t *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 48 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

void *re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  v17 = a1[1];
  v18 = 3 * v16;
  v19 = *a2;
  v20 = *a3;
  *a3 = 0;
  v21 = (v17 + 16 * v18);
  *v21 = v19;
  v21[1] = v20;
  std::__function::__value_func<void ()(re::EventBus::EventInfo *)>::__value_func[abi:nn200100]((v21 + 2), (a3 + 1));
  if (v15 == 255)
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
  }

  v23.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v23.i64[1] = v22;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v23);
  v24 = (a1[1] + 16 * v18);
  v26 = *v24;
  result = v24 + 1;
  v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) >> 27));
  a1[5] ^= (v27 >> 31) ^ v27;
  return result;
}

double re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::doResize(a1, v3);
}

void *re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 49 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 48 * v11), (*(v19[0] + 8) + 48 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

void *re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(void *result)
{
  v1 = result[2];
  v2 = v1 >> 4;
  v3 = *result;
  v4 = *(*result + 16);
  if (v1 >> 4 >= v4 >> 4)
  {
LABEL_8:
    v10 = -1;
    goto LABEL_9;
  }

  v5 = __clz(__rbit64(result[1] & (-2 << (v1 & 0xF))));
  if (v5 >= 0x40)
  {
    v6 = ~v2 + (v4 >> 4);
    v7 = 16 * v2;
    while (v6)
    {
      v8 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*v3 + v7 + 16)), xmmword_1E304FAD0)))), 0x3830282018100800);
      result[1] = v8;
      v9 = __clz(__rbit64(v8));
      --v6;
      v7 += 16;
      if (v9 <= 0x3F)
      {
        v10 = v9 + v7;
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v10 = v5 + (v1 & 0xFFFFFFFFFFFFFFF0);
LABEL_9:
  result[2] = v10;
  return result;
}

double re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v11 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>::~unique_ptr[abi:nn200100]((*(a1 + 8) + 48 * v8 + 8));
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
            v8 = v11;
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::EventBus::EventInfo *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 145 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>> re::makeDefaultUniquePtr<re::EventBus::EventInfo,unsigned long long &>(unsigned long long &)::{lambda(re::EventBus::EventInfo*)#1},std::allocator<std::allocator>,void ()(std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>> re::makeDefaultUniquePtr<re::EventBus::EventInfo,unsigned long long &>(unsigned long long &)::{lambda(re::EventBus::EventInfo*)#1})>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *re::internal::destroyPersistent<re::EventBus::EventInfo>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::deinit(a3 + 280);
    re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::deinit(a3 + 216);
    re::DynamicArray<unsigned long>::deinit(a3 + 168);
    re::DynamicArray<unsigned long>::deinit(a3 + 128);
    re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::deinit(a3 + 88);
    v5.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(a3 + 24);
    v6 = *(*v4 + 40);

    return v6(v4, a3, v5);
  }

  return result;
}

double re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v11 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            re::FunctionBase<24ul,void ()(void)>::destroyCallable(*(a1 + 8) + 56 * v8 + 16);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
            v8 = v11;
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(void)>::destroyCallable(uint64_t a1))(void)
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

double re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v11[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v11[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v12 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            v9 = *(a1 + 8) + 144 * v8;
            re::DynamicArray<unsigned long>::deinit(v9 + 96);
            re::DynamicArray<unsigned long>::deinit(v9 + 56);
            re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::deinit(v9 + 16);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v11);
            v8 = v12;
          }

          while (v12 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::deinit(uint64_t a1)
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
        v5 = v4 << 6;
        do
        {
          re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v3);
          v3 += 64;
          v5 -= 64;
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

double re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v9[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v9[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v10 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v9);
          }

          while (v10 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::EventBus::EventInfo *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
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

uint64_t *std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::EventBus::EventInfo *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::EventBus::EventInfo *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::EventBus::EventInfo *)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::addNew(v4, v5, v6);
}

uint64_t re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::addNew(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 56 * v6 + 16;
  }

  return re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t (***re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(re::EventBus::Subscriptions *)#1}::operator()(unint64_t *a1, unint64_t a2))(void)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 10);
  v5 = *a1;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addNew((*a1 + 24), a1 + 9, a1 + 5);
  if (!a2)
  {
    if (*v4 || a1[11])
    {
      v6 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((v5 + 216), v4);
      if (v6 == -1)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        memset(v13, 0, sizeof(v13));
        a2 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::addNew((v5 + 216), v4, v13);
        if (v17)
        {
          if (v19)
          {
            (*(*v17 + 40))();
          }

          *&v19 = 0;
          *&v18 = 0;
          v17 = 0uLL;
          ++DWORD2(v18);
        }

        if (*(&v14 + 1))
        {
          if (*(&v16 + 1))
          {
            (*(**(&v14 + 1) + 40))();
          }

          *(&v16 + 1) = 0;
          v15 = 0uLL;
          *(&v14 + 1) = 0;
          LODWORD(v16) = v16 + 1;
        }

        re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::deinit(v13);
      }

      else
      {
        a2 = *(v5 + 224) + 144 * v6 + 16;
      }
    }

    else
    {
      a2 = v5 + 88;
    }
  }

  v7 = a1[9];
  v21 = a1[7];
  v22 = 0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v20, (a1 + 1));
  re::EventBus::Subscriptions::add(a2, v7, v20);
  result = re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v20);
  if (*(v5 + 20))
  {
    v9 = 1;
  }

  else if (*v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1[11] == 0;
  }

  *(v5 + 20) = v9;
  v10 = (*(v5 + 21) & 1) != 0 || *v4 != 0;
  *(v5 + 21) = v10;
  v11 = (*(v5 + 22) & 1) != 0 || a1[11] != 0;
  *(v5 + 22) = v11;
  if (*(v5 + 23))
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v12 = *v4;
    if (*v4)
    {
      LOBYTE(v12) = a1[11] != 0;
    }
  }

  *(v5 + 23) = v12;
  return result;
}

uint64_t re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(a1);
    v4 = *(a2 + 56);
    if (*(a1 + 48) != *(a2 + 48) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x31)
        {
          v8 = v6;
          v9 = *(a1 + 48);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 56) = v7;
        (*(**(a2 + 56) + 32))(*(a2 + 56));
        re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 56) = v4;
      *(a2 + 56) = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(a1);
    v4 = *(a2 + 56);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x31)
      {
        v7 = v5;
        v8 = *(a1 + 48);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 56) = v6;
      (*(**(a2 + 56) + 24))(*(a2 + 56));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 56);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 56) != a1)
    {
      result = (*(**(a1 + 48) + 40))(*(a1 + 48));
    }

    *(a1 + 56) = 0;
  }

  return result;
}

unint64_t re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(uint64_t *a1, void *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  if (a1[2] < 0x10 || !a1[3])
  {
    return -1;
  }

  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2) % (a1[2] >> 4);
  while (1)
  {
    v5 = *a1;
    v6 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v19, a2);
    v7 = *(v5 + 16 * v4);
    v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(v6 & 0x7F), v7), xmmword_1E304FAD0)))), 0x3830282018100800);
    v9 = __clz(__rbit64(v8));
    v10.i64[0] = -1;
    v10.i64[1] = -1;
    if (v9 <= 0x3F)
    {
      break;
    }

LABEL_13:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (++v4 == a1[2] >> 4)
    {
      v4 = 0;
    }

    v17 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v20, a2) % (a1[2] >> 4);
    result = -1;
    if (v4 == v17)
    {
      return result;
    }
  }

  v11 = 16 * v4;
  while (1)
  {
    result = v9 + v11;
    v13 = (a1[1] + 144 * (v9 + v11));
    v15 = *v13;
    v14 = v13[1];
    if (*a2 == v15 && a2[1] == v14)
    {
      return result;
    }

    if (v9 <= 0x3E)
    {
      v9 = __clz(__rbit64((-2 << v9) & v8));
      if (v9 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_13;
  }
}

unint64_t re::Hash<re::Pair<void const*,void const*,true>>::operator()(uint64_t a1, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  return (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
}

unint64_t re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::find(uint64_t *a1, void *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  if (a1[2] < 0x10 || !a1[3])
  {
    return -1;
  }

  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2) % (a1[2] >> 4);
  while (1)
  {
    v5 = *a1;
    v6 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v19, a2);
    v7 = *(v5 + 16 * v4);
    v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(v6 & 0x7F), v7), xmmword_1E304FAD0)))), 0x3830282018100800);
    v9 = __clz(__rbit64(v8));
    v10.i64[0] = -1;
    v10.i64[1] = -1;
    if (v9 <= 0x3F)
    {
      break;
    }

LABEL_13:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (++v4 == a1[2] >> 4)
    {
      v4 = 0;
    }

    v17 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v20, a2) % (a1[2] >> 4);
    result = -1;
    if (v4 == v17)
    {
      return result;
    }
  }

  v11 = 16 * v4;
  while (1)
  {
    result = v9 + v11;
    v13 = (a1[1] + 56 * (v9 + v11));
    v15 = *v13;
    v14 = v13[1];
    if (*a2 == v15 && a2[1] == v14)
    {
      return result;
    }

    if (v9 <= 0x3E)
    {
      v9 = __clz(__rbit64((-2 << v9) & v8));
      if (v9 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_13;
  }
}

uint64_t re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::internalAdd(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || a1[2] > (8 * v6))
  {
    re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::resize(a1, 1);
  }

  v7 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2) % (a1[2] >> 4);
  v8 = *a1;
  v9 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v19, a2);
  v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v10 >= 0x40)
  {
    do
    {
      if (v7 + 1 == a1[2] >> 4)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      v8 = *a1;
      v9 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v19, a2);
      v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v10 > 0x3F);
  }

  v11 = v8 + 16 * v7;
  v12 = *(v11 + v10);
  *(v11 + v10) = v9 & 0x7F;
  v13 = 56 * (v10 + 16 * v7);
  *(a1[1] + v13) = *a2;
  v14 = a1[1] + v13;
  *(v14 + 40) = *(a3 + 24);
  *(v14 + 48) = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v14 + 16, a3);
  if (v12 == 255)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v16.i64[1] = v15;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v16);
  a1[5] ^= re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v20, (a1[1] + v13));
  return a1[1] + v13 + 16;
}

double re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::doResize(a1, v3);
}

void *re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 57 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 56 * v11), *(v19[0] + 8) + 56 * v11 + 16);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::deinit(v21);
}

uint64_t re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::FunctionBase<24ul,void ()(void)>::FunctionBase<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void,void>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3, 104, 0);
  }

  else
  {
    v5 = 0;
  }

  v6 = *a2;
  *v5 = &unk_1F5CB2FC0;
  *(v5 + 8) = v6;
  *(v5 + 64) = a2[7];
  *(v5 + 72) = 0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v5 + 16, (a2 + 1));
  v7 = a2[11];
  *(v5 + 80) = *(a2 + 9);
  *(v5 + 96) = v7;
  *(a1 + 32) = v5;
  return a1;
}

void *re::internal::Callable<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB2FC0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable((a1 + 2));
  return a1;
}

void re::internal::Callable<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB2FC0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable((a1 + 2));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5CB2FC0;
  *(a2 + 8) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = 0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(a2 + 16, a1 + 16);
  v5 = *(a1 + 96);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = v5;
  return a2;
}

uint64_t re::internal::Callable<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5CB2FC0;
  *(a2 + 8) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = 0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(a2 + 16, a1 + 16);
  v5 = *(a1 + 96);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = v5;
  return a2;
}

void *re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addNew(uint64_t *a1, unint64_t *a2, _OWORD *a3)
{
  v6 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return (a1[1] + 24 * v6 + 8);
  }

  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::addNew(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 144 * v6 + 16;
  }

  return re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t re::EventBus::Subscriptions::add(uint64_t a1, size_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v5 = *(a1 + 96);
  if (!v5)
  {
    re::DynamicArray<re::TransitionCondition *>::add((a1 + 40), &v14);
    result = re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::add(a1, a3);
    goto LABEL_6;
  }

  v6 = *(*(a1 + 112) + 8 * v5 - 8);
  *(a1 + 96) = v5 - 1;
  ++*(a1 + 104);
  v7 = *(a1 + 56);
  if (v7 <= v6)
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

    v19 = 789;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v7;
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

    v19 = 789;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v7;
    _os_log_send_and_compose_impl(v13, &v15, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 72) + 8 * v6) = a2;
  v7 = *(a1 + 16);
  if (v7 <= v6)
  {
    goto LABEL_11;
  }

  result = re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(*(a1 + 32) + (v6 << 6), a3);
LABEL_6:
  ++*(a1 + 120);
  return result;
}

uint64_t re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(void *a1, unint64_t *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 24 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

void *re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t *a1, void *a2, _OWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9;
  v9 = 0x94D049BB133111EBLL;
  v10 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
  v12 = v7 >> 4;
  v13 = *a1;
  v14 = v11 % v12;
  while (1)
  {
    v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v15 < 0x40)
    {
      break;
    }

    if (v14 + 1 == v12)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    if (v14 == v11 % v12)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
      __break(1u);
      break;
    }
  }

  v16 = v13 + 16 * v14;
  v17 = *(v16 + v15);
  *(v16 + v15) = v11 & 0x7F;
  v18 = a1[1] + 24 * (v15 + 16 * v14);
  *v18 = *a2;
  *(v18 + 8) = *a3;
  if (v17 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v20);
  v21 = (a1[1] + 24 * (v15 + 16 * v14));
  v23 = *v21;
  result = v21 + 1;
  v24 = (((v23 ^ (v23 >> 30)) * v8) ^ (((v23 ^ (v23 >> 30)) * v8) >> 27)) * v9;
  a1[5] ^= (v24 >> 31) ^ v24;
  return result;
}

{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 3 * (v13 + 16 * v11);
  v17 = a1[1] + 24 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  v20 = (a1[1] + 8 * v16);
  v22 = *v20;
  result = v20 + 1;
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
  a1[5] ^= (v23 >> 31) ^ v23;
  return result;
}

double re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::doResize(a1, v3);
}

void *re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 25 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 24 * v11), (*(v19[0] + 8) + 24 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

uint64_t re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::internalAdd(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || a1[2] > (8 * v6))
  {
    re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::resize(a1, 1);
  }

  v7 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v28, a2) % (a1[2] >> 4);
  v8 = *a1;
  v9 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v29, a2);
  v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v10 >= 0x40)
  {
    do
    {
      if (v7 + 1 == a1[2] >> 4)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      v8 = *a1;
      v9 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v29, a2);
      v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v10 > 0x3F);
  }

  v11 = v8 + 16 * v7;
  v12 = *(v11 + v10);
  *(v11 + v10) = v9 & 0x7F;
  v13 = 9 * (v10 + 16 * v7);
  *(a1[1] + 16 * v13) = *a2;
  v14 = a1[1] + 16 * v13;
  *(v14 + 48) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0;
  *(v14 + 40) = 0;
  v15 = *(a3 + 8);
  *(v14 + 16) = *a3;
  *(v14 + 24) = v15;
  *a3 = 0;
  *(a3 + 8) = 0;
  v16 = *(v14 + 32);
  *(v14 + 32) = *(a3 + 16);
  *(a3 + 16) = v16;
  v17 = *(v14 + 48);
  *(v14 + 48) = *(a3 + 32);
  *(a3 + 32) = v17;
  ++*(a3 + 24);
  ++*(v14 + 40);
  *(v14 + 88) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 56) = 0;
  *(v14 + 80) = 0;
  v18 = *(a3 + 48);
  *(v14 + 56) = *(a3 + 40);
  *(v14 + 64) = v18;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  v19 = *(v14 + 72);
  *(v14 + 72) = *(a3 + 56);
  *(a3 + 56) = v19;
  v20 = *(v14 + 88);
  *(v14 + 88) = *(a3 + 72);
  *(a3 + 72) = v20;
  ++*(a3 + 64);
  ++*(v14 + 80);
  *(v14 + 128) = 0;
  *(v14 + 104) = 0;
  *(v14 + 112) = 0;
  *(v14 + 96) = 0;
  *(v14 + 120) = 0;
  v21 = *(a3 + 88);
  *(v14 + 96) = *(a3 + 80);
  *(v14 + 104) = v21;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  v22 = *(v14 + 112);
  *(v14 + 112) = *(a3 + 96);
  *(a3 + 96) = v22;
  v23 = *(v14 + 128);
  v24 = *(a3 + 120);
  *(v14 + 128) = *(a3 + 112);
  *(a3 + 112) = v23;
  ++*(a3 + 104);
  ++*(v14 + 120);
  *(v14 + 136) = v24;
  if (v12 == 255)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  v26.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v26.i64[1] = v25;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v26);
  a1[5] ^= re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v30, (a1[1] + 16 * v13));
  return a1[1] + 16 * v13 + 16;
}

double re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::doResize(a1, v3);
}

double re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 144 * v11), *(v19[0] + 8) + 144 * v11 + 16);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::deinit(v21);
}

uint64_t re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 56) = 0;
  result = re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
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
        v10 = v9 << 6;
        v11 = v7;
        do
        {
          *(v11 + 48) = *(v8 + 48);
          *(v11 + 56) = 0;
          re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v11, v8);
          re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v8);
          v8 += 64;
          v11 += 64;
          v10 -= 64;
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

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3028;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3028;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3028;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3028;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3090;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3090;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3090;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3090;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB30E8;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB3140;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<RESceneWillRemoveEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneWillRemoveEvent>(void)const::s_id = re::EventBus::typeStringToId(("22RESceneWillRemoveEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[21];
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB30E8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB30E8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB30E8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB30E8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3140;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3140;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3140;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3140;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 32 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
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

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 24) != v2 && *(a1 + 28) <= v2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v13, v4, v2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (v2)
    {
      v12 = v2;
    }

    else
    {
      v12 = 3;
    }
  }
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_64, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 != *(a1 + 6))
    {
LABEL_27:
      *(a1 + 8) = v6 + 1;
      v19 = a1[2];
      v20 = *(v19 + 32 * v5);
      goto LABEL_28;
    }

    v7 = *(a1 + 7);
    v8 = 2 * v7;
    v9 = *a1;
    if (!*a1)
    {
      if (v8)
      {
        v21 = 2 * v7;
      }

      else
      {
        v21 = 3;
      }

      goto LABEL_26;
    }

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
      v25 = 0u;
      *v26 = 0u;
      *&v26[16] = 0x7FFFFFFF00000000;
      re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v25, v9, v8);
      v11 = *a1;
      v12 = a1[1];
      *a1 = v25;
      v13 = a1[2];
      a1[2] = *v26;
      v14 = *(a1 + 8);
      *(a1 + 3) = *&v26[8];
      if (v14)
      {
        v15 = (v13 + 4);
        v16 = v14;
        do
        {
          if ((*(v15 - 2) & 0x80000000) != 0)
          {
            v17 = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v15[1] % *(a1 + 6), v15[1]);
            v18 = *v15;
            *(v17 + 8) = *(v15 - 1);
            *(v17 + 16) = v18;
          }

          v15 += 4;
          --v16;
        }

        while (v16);
        if (!v11)
        {
          goto LABEL_26;
        }

        do
        {
          if ((*v13 & 0x80000000) != 0)
          {
            *v13 &= ~0x80000000;
          }

          v13 += 8;
          --v14;
        }

        while (v14);
        goto LABEL_25;
      }

      if (v11)
      {
LABEL_25:
        (*(*v11 + 40))(v11, v12);
      }
    }

LABEL_26:
    a2 = a3 % *(a1 + 6);
    v6 = *(a1 + 8);
    goto LABEL_27;
  }

  v19 = a1[2];
  v20 = *(v19 + 32 * v5);
  *(a1 + 9) = v20 & 0x7FFFFFFF;
LABEL_28:
  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = a1[1];
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 7);
  return v19 + 32 * v5;
}

void re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_64, 4 * v10);
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

BOOL re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v3 = a2[4];
    v4 = *(a1 + 16);
    v5 = *(v4 + 32 * v2) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v5;
      v6 = a2[3];
      v7 = a2[3];
    }

    else
    {
      *(v4 + 32 * v3) = *(v4 + 32 * v3) & 0x80000000 | v5;
      v6 = v2;
      v7 = v2;
    }

    v8 = *(a1 + 40);
    *(v4 + 32 * v6) = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v7;
    *(a1 + 40) = v8 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, _WORD *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 16 * v8 + 8) = v11 | 0x80000000;
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 16 * v8 + 8) = *(*(a1 + 16) + 16 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 16 * v8) = a3;
  *(*(a1 + 16) + 16 * v8 + 12) = *a5;
  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::setCapacity(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 24) != v2 && *(a1 + 28) <= v2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(v13, v4, v2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 12, (*&v13[16] + v10 + 12));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 16;
        }

        while (v11 < v9);
      }

      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (v2)
    {
      v12 = v2;
    }

    else
    {
      v12 = 3;
    }
  }
}

void re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 16 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_64, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

_anonymous_namespace_ *re::DynamicArray<unsigned short>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<unsigned short>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<unsigned short>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<unsigned short>::setCapacity(void *result, unint64_t a2)
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

        if ((a2 & 0x8000000000000000) != 0)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 2, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 2 * a2;
          result = (*(*result + 32))(result, 2 * a2, 2);
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
            memcpy(v7, v5[4], 2 * v5[2]);
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
        result = re::DynamicArray<unsigned short>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB3198;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB31F0;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<RESceneEntityDidActivateEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneEntityDidActivateEvent>(void)const::s_id = re::EventBus::typeStringToId(("29RESceneEntityDidActivateEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[13];
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3198;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3198;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3198;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3198;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB31F0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB31F0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB31F0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB31F0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB3248;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB32A0;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<REComponentDidActivateEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<REComponentDidActivateEvent>(void)const::s_id = re::EventBus::typeStringToId(("27REComponentDidActivateEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[15];
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3248;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3248;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3248;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3248;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB32A0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB32A0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB32A0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB32A0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::EventBus::getTypeId<REOwnershipChangedEvent>()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::EventBus::getTypeId<REOwnershipChangedEvent>(void)const::s_id = re::EventBus::typeStringToId(("23REOwnershipChangedEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 145);
}

void *re::allocInfo_FrameAnalysisService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1916A8, "FrameAnalysisService");
    __cxa_guard_release(&_MergedGlobals_28);
  }

  return &unk_1EE1916A8;
}

void re::initInfo_FrameAnalysisService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x8825A5C357582E58;
  v8[1] = "FrameAnalysisService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::FrameAnalysisService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::FrameAnalysisService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_FrameAnalysisService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void anonymous namespace::SharedEngineContext::instance(_anonymous_namespace_::SharedEngineContext *this)
{
  {
    qword_1EE1C7A70 = 0;
    dword_1EE1C7A78 = 0;
  }
}

void anonymous namespace::SharedEngineContext::retainOrInit(_anonymous_namespace_::SharedEngineContext *this, unsigned int a2, unsigned int a3)
{
  v5 = this;
  os_unfair_lock_lock(&dword_1EE1C7A78);
  if (++qword_1EE1C7A70 <= 1)
  {
    dword_1EE1C7A7C = v5;
    unk_1EE1C7A80 = a2;
    dword_1EE1C7A84 = a3;
    if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
    {
      dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
    }

    re::RenderGraphNodeRegistry::init(v6);
    re::RenderGraphEmitterRegistry::init(v7);
    v8 = re::RenderGraphNodeRegistry::m_instance;
    re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, _MergedGlobals_7);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CC8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CD0);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CD8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CE0);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CE8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CF0);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CF8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D00);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D08);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D10);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D18);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D20);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D28);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D30);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D38);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D40);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D48);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D50);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D58);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D60);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D68);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D70);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D78);
    re::RenderGraphNodeRegistry::registerNode(v8, &re::renderGraphNodeRegistryItem<re::RenderGraphVRRUnwarpNode>(void)::item);
    re::RenderGraphNodeRegistry::registerNode(v8, re::renderGraphNodeRegistryItem<re::RenderGraphMPSImageAreaMaxNode>(void)::item);
    re::RenderGraphNodeRegistry::registerNode(v8, re::renderGraphNodeRegistryItem<re::RenderGraphMPSImageGaussianBlurNode>(void)::item);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D80);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D88);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D90);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D98);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188DA0);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188DA8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188DB0);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188DB8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188DC0);
    v9 = re::RenderGraphEmitterRegistry::m_instance;
    re::RenderGraphEmitterRegistry::registerEmitter(re::RenderGraphEmitterRegistry::m_instance, off_1EE188DC8);
    re::RenderGraphEmitterRegistry::registerEmitter(v9, off_1EE188DD0);
    re::RenderGraphEmitterRegistry::registerEmitter(v9, &off_1EE188DD8);
    if ((v5 & 8) == 0)
    {
      re::initInputManagement(v10);
    }

    v11 = std::thread::hardware_concurrency();
    if ((v5 & 2) != 0)
    {
      LODWORD(v13) = 2;
    }

    else if ((v5 & 4) != 0)
    {
      LODWORD(v13) = 3;
    }

    else if ((v5 & 0x20) != 0)
    {
      LODWORD(v13) = 1;
    }

    else
    {
      LODWORD(v13) = 2;
    }

    if (a2 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2;
    }

    if (v5)
    {
      v15 = 16;
    }

    else
    {
      v15 = a3;
    }

    if (v5)
    {
      v14 = 1;
    }

    if (v11 >= v14)
    {
      LODWORD(v16) = v14;
    }

    else
    {
      LODWORD(v16) = v11;
    }

    if (v16 + 1 > v15)
    {
      LODWORD(v17) = v16 + 1;
    }

    else
    {
      LODWORD(v17) = v15;
    }

    v18 = (v5 & 0x10) == 0;
    re::Defaults::intValue(&v28, "threading.threads", v12);
    if (v28)
    {
      v16 = HIDWORD(v28);
    }

    else
    {
      v16 = v16;
    }

    re::Defaults::intValue(&v28, "threading.fibers", v19);
    if (v28)
    {
      v17 = HIDWORD(v28);
    }

    else
    {
      v17 = v17;
    }

    re::Defaults::intValue(&v28, "threading.fiberStackSize", v20);
    v21 = v28;
    v22 = HIDWORD(v28);
    re::Defaults::intValue(&v28, "threading.jobSystem", v23);
    if (v28)
    {
      v13 = HIDWORD(v28);
    }

    else
    {
      v13 = v13;
    }

    if (v21)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0x80000;
    }

    v27 = re::globalAllocators(v26);
  }

  os_unfair_lock_unlock(&dword_1EE1C7A78);
}

void RESharedEngineContextRelease(_anonymous_namespace_::SharedEngineContext *a1)
{
  os_unfair_lock_lock(&dword_1EE1C7A78);
  if (!--qword_1EE1C7A70)
  {
    v1 = re::internal::destroyPersistent<re::JobService>("sharedJobServiceDeinit", 585, g_jobService);
    g_jobService = 0;
    if ((dword_1EE1C7A7C & 8) == 0)
    {
      re::deinitInputManagement(v1);
    }

    re::internal::destroyPersistent<re::RenderGraphNodeRegistry>("deinit", 62, re::RenderGraphNodeRegistry::m_instance);
    re::RenderGraphNodeRegistry::m_instance = 0;
    re::internal::destroyPersistent<re::RenderGraphEmitterRegistry>("deinit", 42, re::RenderGraphEmitterRegistry::m_instance);
    re::RenderGraphEmitterRegistry::m_instance = 0;
  }

  os_unfair_lock_unlock(&dword_1EE1C7A78);
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphCameraSetupNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A308))
  {
    _MergedGlobals_99 = re::introspect_RenderGraphCameraSetupNode(a2);
    __cxa_guard_release(&qword_1EE18A308);
  }

  return _MergedGlobals_99;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphCameraSetupNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 352, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D14E70;
  *(v6 + 132) = 0;
  *(v6 + 17) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 20) = 0u;
  *(v6 + 42) = 0;
  *(v6 + 43) = -1;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewCameraSetupNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A318))
  {
    qword_1EE18A310 = re::introspect_RenderGraphMultiViewCameraSetupNode(a2);
    __cxa_guard_release(&qword_1EE18A318);
  }

  return qword_1EE18A310;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 352, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *(v7 + 132) = 0;
  *(v7 + 17) = 0u;
  *(v7 + 18) = 0u;
  *(v7 + 19) = 0u;
  *(v7 + 20) = 0u;
  *(v7 + 42) = 0;
  *(v7 + 43) = -1;
  *v7 = &unk_1F5D14F00;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphComputeNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A328))
  {
    qword_1EE18A320 = re::introspect_RenderGraphComputeNode(a2);
    __cxa_guard_release(&qword_1EE18A328);
  }

  return qword_1EE18A320;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphComputeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphComputeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::RenderGraphComputeNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 496, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D0F8D8;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphDebugNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A338))
  {
    qword_1EE18A330 = re::introspect_RenderGraphDebugNode(a2);
    __cxa_guard_release(&qword_1EE18A338);
  }

  return qword_1EE18A330;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDebugNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDebugNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphDebugNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *(v6 + 66) = 1;
  *(v6 + 268) = 0;
  *v6 = &unk_1F5D16008;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphDebugMaterialsNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A348))
  {
    qword_1EE18A340 = re::introspect_RenderGraphDebugMaterialsNode(a2);
    __cxa_guard_release(&qword_1EE18A348);
  }

  return qword_1EE18A340;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDebugMaterialsNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDebugMaterialsNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphDebugMaterialsNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *(v6 + 66) = 1;
  *(v6 + 268) = 0;
  *v6 = &unk_1F5CB4F88;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

void re::RenderGraphDebugMaterialsNode::~RenderGraphDebugMaterialsNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphNode::~RenderGraphNode(id *this)
{
  *this = &unk_1F5D11268;
  re::DynamicArray<unsigned long>::deinit((this + 28));
  re::DynamicArray<unsigned long>::deinit((this + 23));
  re::DynamicArray<unsigned long>::deinit((this + 18));
  re::DynamicArray<unsigned long>::deinit((this + 13));
  *this = &unk_1F5CB52A8;

  re::StringID::destroyString((this + 1));
}

{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphGenerateMipmapsNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A358))
  {
    qword_1EE18A350 = re::introspect_RenderGraphGenerateMipmapsNode(a2);
    __cxa_guard_release(&qword_1EE18A358);
  }

  return qword_1EE18A350;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphGenerateMipmapsNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphGenerateMipmapsNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphGenerateMipmapsNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 264, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D15920;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMaterialReplaceNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A368))
  {
    qword_1EE18A360 = re::introspect_RenderGraphMaterialReplaceNode(a2);
    __cxa_guard_release(&qword_1EE18A368);
  }

  return qword_1EE18A360;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMaterialReplaceNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMaterialReplaceNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphMaterialReplaceNode *re::RenderGraph::addNode<re::RenderGraphMaterialReplaceNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 376, 8);
  v9 = re::RenderGraphMaterialReplaceNode::RenderGraphMaterialReplaceNode(v5, a2);
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v9);
  v6 = *(a1 + 12);
  v7 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v6;
  *(v5 + 6) = v7;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMeshNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A378))
  {
    qword_1EE18A370 = re::introspect_RenderGraphMeshNode(a2);
    __cxa_guard_release(&qword_1EE18A378);
  }

  return qword_1EE18A370;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphMeshNode *re::RenderGraph::addNode<re::RenderGraphMeshNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 368, 8);
  v9 = re::RenderGraphMeshNode::RenderGraphMeshNode(v5, a2);
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v9);
  v6 = *(a1 + 12);
  v7 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v6;
  *(v5 + 6) = v7;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMultiPassMeshNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A388))
  {
    qword_1EE18A380 = re::introspect_RenderGraphMultiPassMeshNode(a2);
    __cxa_guard_release(&qword_1EE18A388);
  }

  return qword_1EE18A380;
}

re::RenderGraphMultiPassMeshNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiPassMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiPassMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 480, 8);
  re::RenderGraphMultiPassMeshNode::RenderGraphMultiPassMeshNode(v6, v4);
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiPassMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiPassMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewMeshNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A398))
  {
    qword_1EE18A390 = re::introspect_RenderGraphMultiViewMeshNode(a2);
    __cxa_guard_release(&qword_1EE18A398);
  }

  return qword_1EE18A390;
}

re::RenderGraphMeshNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 368, 8);
  v7 = re::RenderGraphMeshNode::RenderGraphMeshNode(v6, v4);
  *v7 = &unk_1F5D15EE8;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMRCNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A3A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A3A8))
  {
    qword_1EE18A3A0 = re::introspect_RenderGraphMRCNode(a2);
    __cxa_guard_release(&qword_1EE18A3A8);
  }

  return qword_1EE18A3A0;
}

re::RenderGraphMRCNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMRCNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMRCNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 448, 16);
  v10 = re::RenderGraphMRCNode::RenderGraphMRCNode(v6, v4);
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v10);
  v7 = *(a2 + 12);
  v8 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v7;
  *(v6 + 6) = v8;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMRCNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMRCNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphSynchronizeBufferNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A3B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A3B8))
  {
    qword_1EE18A3B0 = re::introspect_RenderGraphSynchronizeBufferNode(a2);
    __cxa_guard_release(&qword_1EE18A3B8);
  }

  return qword_1EE18A3B0;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphSynchronizeBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphSynchronizeBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 264, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D15B60;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphSynchronizeBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphSynchronizeBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphSynchronizeTargetNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A3C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A3C8))
  {
    qword_1EE18A3C0 = re::introspect_RenderGraphSynchronizeTargetNode(a2);
    __cxa_guard_release(&qword_1EE18A3C8);
  }

  return qword_1EE18A3C0;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphSynchronizeTargetNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphSynchronizeTargetNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphSynchronizeTargetNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 280, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D15AD0;
  *(v6 + 33) = 0;
  *(v6 + 34) = 0;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphFillBufferNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A3D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A3D8))
  {
    qword_1EE18A3D0 = re::introspect_RenderGraphFillBufferNode(a2);
    __cxa_guard_release(&qword_1EE18A3D8);
  }

  return qword_1EE18A3D0;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphFillBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphFillBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 272, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D15BF0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphFillBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphFillBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphTargetCopyNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A3E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A3E8))
  {
    qword_1EE18A3E0 = re::introspect_RenderGraphTargetCopyNode(a2);
    __cxa_guard_release(&qword_1EE18A3E8);
  }

  return qword_1EE18A3E0;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphTargetCopyNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphTargetCopyNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphTargetCopyNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 376, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D159B0;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 37) = 0;
  *(v6 + 38) = -1;
  *(v6 + 39) = -1;
  *(v6 + 40) = -1;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 353) = 0u;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphCopyEntityAttributeBufferNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A3F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A3F8))
  {
    qword_1EE18A3F0 = re::introspect_RenderGraphCopyEntityAttributeBufferNode(a2);
    __cxa_guard_release(&qword_1EE18A3F8);
  }

  return qword_1EE18A3F0;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphCopyEntityAttributeBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphCopyEntityAttributeBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphCopyEntityAttributeBufferNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 288, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D15A40;
  *(v6 + 33) = 0;
  *(v6 + 34) = 0;
  *(v6 + 35) = &str_67;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphTextNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A408))
  {
    qword_1EE18A400 = re::introspect_RenderGraphTextNode(a2);
    __cxa_guard_release(&qword_1EE18A408);
  }

  return qword_1EE18A400;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphTextNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphTextNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphTextNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *(v6 + 66) = 1;
  *(v6 + 268) = 0;
  *v6 = &unk_1F5D15F78;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphFullscreenNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  v2 = &unk_1EE187000;
  {
    v2 = &unk_1EE187000;
    if (v4)
    {
      re::introspect<re::RenderGraphFullscreenNode>(BOOL)::info = re::introspect_RenderGraphFullscreenNode(a2);
      v2 = &unk_1EE187000;
    }
  }

  return v2[178];
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphFullscreenNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphFullscreenNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphFullscreenNode *re::RenderGraph::addNode<re::RenderGraphFullscreenNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 472, 8);
  v9 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(v5, a2);
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v9);
  v6 = *(a1 + 12);
  v7 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v6;
  *(v5 + 6) = v7;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphResolveNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A418))
  {
    qword_1EE18A410 = re::introspect_RenderGraphResolveNode(a2);
    __cxa_guard_release(&qword_1EE18A418);
  }

  return qword_1EE18A410;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphResolveNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphResolveNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphResolveNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 264, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D154D8;
  *(v6 + 66) = 1;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphProfilerOverlayNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A428))
  {
    qword_1EE18A420 = re::introspect_RenderGraphProfilerOverlayNode(a2);
    __cxa_guard_release(&qword_1EE18A428);
  }

  return qword_1EE18A420;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphProfilerOverlayNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphProfilerOverlayNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphProfilerOverlayNode *re::RenderGraph::addNode<re::RenderGraphProfilerOverlayNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 512, 16);
  re::RenderGraphProfilerOverlayNode::RenderGraphProfilerOverlayNode(v5, a2);
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphCommitCommandBufferNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A438))
  {
    qword_1EE18A430 = re::introspect_RenderGraphCommitCommandBufferNode(a2);
    __cxa_guard_release(&qword_1EE18A438);
  }

  return qword_1EE18A430;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphCommitCommandBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphCommitCommandBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 264, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D149C0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphCommitCommandBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphCommitCommandBufferNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphVFXNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A448))
  {
    qword_1EE18A440 = re::introspect_RenderGraphVFXNode(a2);
    __cxa_guard_release(&qword_1EE18A448);
  }

  return qword_1EE18A440;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphVFXNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphVFXNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphVFXNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D12058;
  *(v6 + 264) = 0;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphVFXNotifyFrameNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A458))
  {
    qword_1EE18A450 = re::introspect_RenderGraphVFXNotifyFrameNode(a2);
    __cxa_guard_release(&qword_1EE18A458);
  }

  return qword_1EE18A450;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphVFXNotifyFrameNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphVFXNotifyFrameNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 272, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D120E8;
  *(v7 + 264) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphVFXNotifyFrameNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphVFXNotifyFrameNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphDummyNigiriNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A468))
  {
    qword_1EE18A460 = re::introspect_RenderGraphDummyNigiriNode(a2);
    __cxa_guard_release(&qword_1EE18A468);
  }

  return qword_1EE18A460;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDummyNigiriNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDummyNigiriNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 264, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5CB45A8;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDummyNigiriNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDummyNigiriNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraphNode::RenderGraphNode(re::RenderGraphNode *this, const char *a2)
{
  *this = &unk_1F5CB52A8;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = &str_67;
  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 16) = 1;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 88) = 0;
  *this = &unk_1F5D11268;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 32) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 52) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 62) = 0;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  return this;
}

void re::RenderGraphDummyNigiriNode::~RenderGraphDummyNigiriNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphVRRUnwarpNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  v2 = &unk_1EE187000;
  {
    v2 = &unk_1EE187000;
    if (v4)
    {
      re::introspect<re::RenderGraphVRRUnwarpNode>(BOOL)::info = re::introspect_RenderGraphVRRUnwarpNode(a2);
      v2 = &unk_1EE187000;
    }
  }

  return v2[181];
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphVRRUnwarpNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphVRRUnwarpNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphVRRUnwarpNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 344, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D11FB0;
  *(v6 + 33) = 0;
  *(v6 + 34) = -1;
  *(v6 + 35) = 0;
  *(v6 + 36) = -1;
  *(v6 + 37) = 0;
  *(v6 + 38) = -1;
  *(v6 + 67) = 0;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMPSImageAreaMaxNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  v2 = &unk_1EE187000;
  {
    v2 = &unk_1EE187000;
    if (v4)
    {
      re::introspect<re::RenderGraphMPSImageAreaMaxNode>(BOOL)::info = re::introspect_RenderGraphMPSImageAreaMaxNode(a2);
      v2 = &unk_1EE187000;
    }
  }

  return v2[175];
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMPSImageAreaMaxNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMPSImageAreaMaxNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphMPSImageAreaMaxNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 280, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D14A68;
  *(v6 + 268) = 0;
  *(v6 + 34) = 0;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMPSImageGaussianBlurNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  v2 = &unk_1EE187000;
  {
    v2 = &unk_1EE187000;
    if (v4)
    {
      re::introspect<re::RenderGraphMPSImageGaussianBlurNode>(BOOL)::info = re::introspect_RenderGraphMPSImageGaussianBlurNode(a2);
      v2 = &unk_1EE187000;
    }
  }

  return v2[171];
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMPSImageGaussianBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMPSImageGaussianBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphMPSImageGaussianBlurNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 288, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D0EFE8;
  *(v6 + 134) = 0;
  *(v6 + 34) = 0;
  *(v6 + 35) = 0;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::StencilPtInjectionNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A478))
  {
    qword_1EE18A470 = re::introspect_StencilPtInjectionNode(a2);
    __cxa_guard_release(&qword_1EE18A478);
  }

  return qword_1EE18A470;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::StencilPtInjectionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::StencilPtInjectionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 320, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D14B10;
  *(v7 + 264) = 1;
  *(v7 + 38) = 0;
  *(v7 + 35) = 0;
  *(v7 + 36) = 0;
  *(v7 + 34) = 0;
  *(v7 + 74) = 0;
  *(v7 + 156) = 0;
  *(v7 + 314) = 1;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::StencilPtInjectionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::StencilPtInjectionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::DummyEnvironmentNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A488))
  {
    qword_1EE18A480 = re::introspect_DummyEnvironmentNode(a2);
    __cxa_guard_release(&qword_1EE18A488);
  }

  return qword_1EE18A480;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::DummyEnvironmentNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::DummyEnvironmentNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 264, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5CB47E0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::DummyEnvironmentNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::DummyEnvironmentNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::DummyEnvironmentNode::~DummyEnvironmentNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphNodeRegistryItem<re::BtStencilPrepassNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A498))
  {
    qword_1EE18A490 = re::introspect_BtStencilPrepassNode(a2);
    __cxa_guard_release(&qword_1EE18A498);
  }

  return qword_1EE18A490;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::BtStencilPrepassNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::BtStencilPrepassNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 272, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5CB4950;
  *(v7 + 264) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::BtStencilPrepassNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::BtStencilPrepassNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::BtStencilPrepassNode::~BtStencilPrepassNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphNodeRegistryItem<re::DepthPatchNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A4A8))
  {
    qword_1EE18A4A0 = re::introspect_DepthPatchNode(a2);
    __cxa_guard_release(&qword_1EE18A4A8);
  }

  return qword_1EE18A4A0;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::DepthPatchNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::DepthPatchNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 296, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *(v7 + 66) = 1;
  *(v7 + 134) = 0;
  *v7 = &unk_1F5D150C0;
  *(v7 + 35) = 0;
  *(v7 + 36) = 0;
  *(v7 + 34) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::DepthPatchNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::DepthPatchNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::MXIOffscreenMeshNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A4B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A4B8))
  {
    qword_1EE18A4B0 = re::introspect_MXIOffscreenMeshNode(a2);
    __cxa_guard_release(&qword_1EE18A4B8);
  }

  return qword_1EE18A4B0;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::MXIOffscreenMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::MXIOffscreenMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraph::addNode<re::MXIOffscreenMeshNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 336, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *(v6 + 66) = 1;
  *(v6 + 268) = 0;
  *v6 = &unk_1F5D165F0;
  *(v6 + 17) = 0u;
  *(v6 + 18) = 0u;
  re::DynamicString::setCapacity((v5 + 272), 0);
  *(v5 + 304) = 0;
  *(v5 + 308) = 0;
  *(v5 + 328) = 0;
  v10 = v5;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 24) = *(a1 + 10);
  *(v5 + 32) = v7;
  *(v5 + 48) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::MXIBlurNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A4C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A4C8))
  {
    qword_1EE18A4C0 = re::introspect_MXIBlurNode(a2);
    __cxa_guard_release(&qword_1EE18A4C8);
  }

  return qword_1EE18A4C0;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::MXIBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::MXIBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 288, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *(v7 + 134) = 0;
  *(v7 + 34) = 0;
  *(v7 + 35) = 0;
  *v7 = &unk_1F5D16750;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::MXIBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::MXIBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::MXIColorConversionTileNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A4D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A4D8))
  {
    qword_1EE18A4D0 = re::introspect_MXIColorConversionTileNode(a2);
    __cxa_guard_release(&qword_1EE18A4D8);
  }

  return qword_1EE18A4D0;
}

re::RenderGraphMRCNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::MXIColorConversionTileNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::MXIColorConversionTileNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 448, 16);
  v7 = re::RenderGraphMRCNode::RenderGraphMRCNode(v6, v4);
  *v7 = &unk_1F5D168B8;
  *(v7 + 220) = 0;
  *(v7 + 442) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::MXIColorConversionTileNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::MXIColorConversionTileNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::MXIFullscreenNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A4E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A4E8))
  {
    qword_1EE18A4E0 = re::introspect_MXIFullscreenNode(a2);
    __cxa_guard_release(&qword_1EE18A4E8);
  }

  return qword_1EE18A4E0;
}

re::RenderGraphFullscreenNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::MXIFullscreenNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::MXIFullscreenNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 480, 8);
  v7 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(v6, v4);
  *v7 = &unk_1F5D16970;
  *(v7 + 472) = 1;
  *(v7 + 119) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::MXIFullscreenNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::MXIFullscreenNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::MXIMeshCrackNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A4F8))
  {
    qword_1EE18A4F0 = re::introspect_MXIMeshCrackNode(a2);
    __cxa_guard_release(&qword_1EE18A4F8);
  }

  return qword_1EE18A4F0;
}

re::RenderGraphMeshNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::MXIMeshCrackNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::MXIMeshCrackNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 376, 8);
  v7 = re::RenderGraphMeshNode::RenderGraphMeshNode(v6, v4);
  *v7 = &unk_1F5D16A18;
  *(v7 + 92) = 3;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::MXIMeshCrackNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::MXIMeshCrackNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphEmitterRegistryItem<re::RenderGraphSimpleForwardEmitter>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A508))
  {
    qword_1EE18A500 = re::introspect_RenderGraphSimpleForwardEmitter(a2);
    __cxa_guard_release(&qword_1EE18A508);
  }

  return qword_1EE18A500;
}

uint64_t re::RenderGraphEmitterRegistryItem<re::RenderGraphAREmitter>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A518))
  {
    qword_1EE18A510 = re::introspect_RenderGraphAREmitter(a2);
    __cxa_guard_release(&qword_1EE18A518);
  }

  return qword_1EE18A510;
}

uint64_t re::RenderGraphEmitterRegistryItem<re::RenderGraphSelectionEmitter>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A528))
  {
    qword_1EE18A520 = re::introspect_RenderGraphSelectionEmitter(a2);
    __cxa_guard_release(&qword_1EE18A528);
  }

  return qword_1EE18A520;
}

uint64_t *re::appLogObjects(re *this)
{
  {
    re::appLogObjects(void)::logObjects = os_log_create("com.apple.re", "App");
  }

  return &re::appLogObjects(void)::logObjects;
}

void REStartup(_anonymous_namespace_::SharedEngineContext *a1, uint64_t a2)
{
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) REStartup called too many times", "false", "REStartup", 26);
    _os_crash("assertion failure: (false) REStartup called too many times");
    __break(1u);
  }

  else
  {
    if (v2 <= 0)
    {
      std::thread::hardware_concurrency();
      v4 = std::thread::hardware_concurrency();
      re::initGlobalAllocators(v4);
      re::ecs2::initECSCore(v5);
      inited = re::ecs2::initECSComponents(v6);
    }
  }
}

void REStartupPrivate(re *a1, uint64_t a2)
{
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) REStartup called too many times", "false", "REStartupPrivate", 55);
    _os_crash("assertion failure: (false) REStartup called too many times");
    __break(1u);
  }

  else
  {
    if (v2 <= 0)
    {
      v3 = a2;
      v4 = a1;
      re::initGlobalAllocators(a1);
      re::ecs2::initECSCore(v5);
      inited = re::ecs2::initECSComponents(v6);
    }
  }
}

void REShutdown(_anonymous_namespace_::SharedEngineContext *result, uint64_t a2)
{
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) REShutdown called before REStartup", "false", "REShutdown", 76);
    _os_crash("assertion failure: (false) REShutdown called before REStartup");
    __break(1u);
  }

  else
  {
    if (v2 == 1)
    {
      RESharedEngineContextRelease(result);
      re::ecs2::deinitECSComponents(v3);
      re::ecs2::deinitECSCore(v4);

      re::deinitGlobalAllocators(v5);
    }
  }
}

void *re::FrameAnalysisProfilerProcessor::process(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a4;
  v5 = *(a4 + 8);
  if (*a4 != v5)
  {
    v6 = result[2];
    v7 = result[3];
    v8 = result[4];
    do
    {
      v9 = *v4++;
      v6 += v9[530];
      v7 += v9[498];
      v8 += v9[482];
    }

    while (v4 != v5);
    result[2] = v6;
    result[3] = v7;
    result[4] = v8;
  }

  return result;
}

uint64_t re::FrameAnalysisManager::FrameAnalysisManager(uint64_t a1, re::StringID *a2, char a3, char a4)
{
  v38 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CB5340;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0u;
  v8 = (a1 + 32);
  *(a1 + 25) = a4;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 160) = 0;
  *(a1 + 167) = 0;
  *(a1 + 208) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 216) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 332) = 0x7FFFFFFFLL;
  *(a1 + 376) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 380) = 0x7FFFFFFFLL;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 436) = 0x7FFFFFFFLL;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 484) = 0x7FFFFFFFLL;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 532) = 0x7FFFFFFFLL;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 684) = 0u;
  re::StringID::invalid((a1 + 720));
  *(a1 + 736) = 0;
  *(a1 + 744) = &str_67;
  *(a1 + 752) = 0;
  *(a1 + 760) = &str_67;
  *(a1 + 768) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  v9.i64[0] = 0x7F0000007FLL;
  v9.i64[1] = 0x7F0000007FLL;
  *(a1 + 848) = vnegq_f32(v9);
  *(a1 + 864) = v9;
  *(a1 + 32) = a2;
  *(a1 + 896) = re::ServiceLocator::serviceOrNull<re::ecs2::RenderOptionsService>(a2);
  *(a1 + 160) = 0;
  *(a1 + 165) = 0;
  *(a1 + 169) = 0;
  re::Defaults::BOOLValue(v35, "verboseFrameAnalysisManager", v10);
  if (LOBYTE(v35[0]))
  {
    v12 = BYTE1(v35[0]);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 712) = v12;
  re::Defaults::BOOLValue(v35, "drawFrameSkipWarningIcon", v11);
  if (LOBYTE(v35[0]))
  {
    v13 = BYTE1(v35[0]);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 713) = v13;
  v14 = re::ServiceLocator::serviceOrNull<re::DrawableQueueService>(*v8);
  if (v14)
  {
  }

  v15 = re::ServiceLocator::serviceOrNull<re::VideoService>(*v8);
  if (v15)
  {
    *(a1 + 56) = v15;
  }

  v16 = re::ServiceLocator::serviceOrNull<re::AssetService>(*v8);
  if (v16)
  {
    *(a1 + 64) = v16;
    atomic_load(v16 + 2177);
    *(a1 + 176) = *(v16 + 128);
  }

  v17 = re::ServiceLocator::serviceOrNull<re::EventBus>(*v8);
  if (v17)
  {
    v18 = v17;
    v19 = re::globalAllocators(v17)[2];
    v33 = v19;
    v20 = (*(*v19 + 32))(v19, 32, 0);
    *v20 = &unk_1F5CB54C0;
    v20[1] = a1;
    v20[2] = re::FrameAnalysisManager::processSceneDidAdd;
    v20[3] = 0;
    v34 = v20;
    v36 = v19;
    v37 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>(v35, v32);
    v21 = re::EventBus::subscribe<re::ecs2::Scene,RESceneDidAddEvent>(v18, 0, v35, 0, 0);
    v23 = v22;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable(v35);
    v24 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 192);
    *v24 = v21;
    v24[1] = v23;
    v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable(v32);
    v36 = re::globalAllocators(v25)[2];
    v26 = (*(*v36 + 32))(v36, 32, 0);
    *v26 = &unk_1F5CB5518;
    v26[1] = a1;
    v26[2] = re::FrameAnalysisManager::processSceneWillRemove;
    v26[3] = 0;
    v37 = v26;
    v27 = re::EventBus::subscribe<re::ecs2::Scene,RESceneWillRemoveEvent>(v18, v35, 0, 0);
    v29 = v28;
    v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 192);
    *v30 = v27;
    v30[1] = v29;
    v17 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable(v35);
  }

  return a1;
}

void re::FrameAnalysisManager::~FrameAnalysisManager(re::FrameAnalysisManager *this)
{
  *this = &unk_1F5CB5340;
  v2 = *(this + 70);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 33);
    while (1)
    {
      v5 = *v4;
      v4 += 20;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 70);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v6 = *(this + 70);
    do
    {
      v7 = *(this + 33) + 80 * v3;
      v8 = *(*(v7 + 8) + 288);
      if (v8)
      {
        v9 = *(v7 + 56);
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v7 + 16, i);
            re::EventBus::unsubscribe(v8, *v11, v11[1]);
          }

          v6 = *(this + 70);
        }
      }

      if (v6 <= v3 + 1)
      {
        v12 = v3 + 1;
      }

      else
      {
        v12 = v6;
      }

      while (v12 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 33) + 80 * v3) & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v3) = v12;
LABEL_21:
      ;
    }

    while (v3 != v2);
  }

  re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 31);
  v13 = re::ServiceLocator::serviceOrNull<re::EventBus>(*(this + 4));
  if (v13)
  {
    v14 = *(this + 29);
    if (v14)
    {
      v15 = v13;
      for (j = 0; j != v14; ++j)
      {
        v17 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](this + 192, j);
        re::EventBus::unsubscribe(v15, *v17, v17[1]);
      }
    }
  }

  re::BucketArray<RESubscriptionHandle,8ul>::deinit(this + 192);
  *(this + 40) = 0;
  *(this + 165) = 0;
  *(this + 169) = 0;
  v18 = *(this + 15);
  if (v18)
  {
    _Block_release(v18);
    *(this + 15) = 0;
  }

  *(this + 4) = 0;
  re::StringID::destroyString((this + 752));
  re::StringID::destroyString((this + 736));
  re::StringID::destroyString((this + 720));
  v19 = *(this + 84);
  if (v19)
  {
    if (*(this + 88))
    {
      (*(*v19 + 40))(v19);
    }

    *(this + 88) = 0;
    *(this + 85) = 0;
    *(this + 86) = 0;
    *(this + 84) = 0;
    ++*(this + 174);
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 62);
  for (k = 448; k != 352; k -= 48)
  {
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((this + k));
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 43);
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 37);
  re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 31);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(this + 192);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 192);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 9);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::FrameAnalysisManager::~FrameAnalysisManager(this);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::RenderOptionsService>(re::StringID *a1)
{
  {
    re::introspect<re::ecs2::RenderOptionsService>(BOOL)::info = re::ecs2::introspect_RenderOptionsService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::RenderOptionsService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::DrawableQueueService>(re::StringID *a1)
{
  {
    re::introspect<re::DrawableQueueService>(BOOL)::info = re::introspect_DrawableQueueService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::DrawableQueueService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::VideoService>(re::StringID *a1)
{
  {
    re::introspect<re::VideoService>(BOOL)::info = re::introspect_VideoService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::VideoService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::AssetService>(re::StringID *a1)
{
  {
    re::introspect<re::AssetService>(BOOL)::info = re::introspect_AssetService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::AssetService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::BucketArray<RESubscriptionHandle,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<RESubscriptionHandle,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::FrameAnalysisManager::processSceneDidAdd(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v28 = 0u;
  v29 = 1uLL;
  v30 = 0uLL;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(&v32, a1 + 248, a2, v4 ^ (v4 >> 31));
  if (HIDWORD(v33) == 0x7FFFFFFF)
  {
    v5 = re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1 + 248, v33, v32);
    *(v5 + 16) = 0;
    v6 = v5 + 16;
    *(v5 + 8) = a2;
    *(v5 + 24) = 0;
    *(v5 + 32) = 1;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;
    *(v5 + 40) = 0;
    *(v5 + 64) = 0;
    re::BucketArray<RESubscriptionHandle,8ul>::swap(v5 + 16, &v28);
    ++*(a1 + 288);
  }

  else
  {
    v6 = *(a1 + 264) + 80 * HIDWORD(v33) + 16;
  }

  re::BucketArray<RESubscriptionHandle,8ul>::deinit(&v28);
  v7 = v28;
  if (v28 && (v29 & 1) == 0)
  {
    v7 = (*(*v28 + 40))();
  }

  v9 = *(a2 + 288);
  if (v9)
  {
    v42 = re::globalAllocators(v8)[2];
    v10 = (*(*v42 + 32))(v42, 32, 0);
    *v10 = &unk_1F5CB5570;
    v10[1] = a1;
    v10[2] = re::FrameAnalysisManager::processComponentDidChangeEvent;
    v10[3] = 0;
    v43 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v41, 0, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v6);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v41);
    v39 = re::globalAllocators(v15)[2];
    v16 = (*(*v39 + 32))(v39, 32, 0);
    *v16 = &unk_1F5CB55C8;
    v16[1] = a1;
    v16[2] = re::FrameAnalysisManager::processComponentDidActivateEvent;
    v16[3] = 0;
    v40 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v38, 0, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v6);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v38);
    v36 = re::globalAllocators(v21)[2];
    v22 = (*(*v36 + 32))(v36, 32, 0);
    *v22 = &unk_1F5CB5620;
    v22[1] = a1;
    v22[2] = re::FrameAnalysisManager::processComponentWillDeactivateEvent;
    v22[3] = 0;
    v37 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v35, 0, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v6);
    *v26 = v23;
    v26[1] = v25;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v35);
  }

  return 0;
}

uint64_t re::EventBus::subscribe<re::ecs2::Scene,RESceneWillRemoveEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Scene,RESceneWillRemoveEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::FrameAnalysisManager::processSceneWillRemove(uint64_t a1, unint64_t a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v15, a1 + 248, a2, v5);
  v6 = *(a2 + 288);
  if (v6)
  {
    v7 = *(a1 + 264) + 80 * v17;
    v8 = *(v7 + 56);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v7 + 16, i);
        re::EventBus::unsubscribe(v6, *v10, v10[1]);
      }
    }
  }

  re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v15, a1 + 248, a2, v5);
  v11 = v17;
  if (v17 != 0x7FFFFFFF)
  {
    v12 = *(a1 + 264);
    v13 = *(v12 + 80 * v17) & 0x7FFFFFFF;
    if (v18 == 0x7FFFFFFF)
    {
      *(*(a1 + 256) + 4 * v16) = v13;
    }

    else
    {
      *(v12 + 80 * v18) = *(v12 + 80 * v18) & 0x80000000 | v13;
    }

    re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::free(v12, v11);
    *(*(a1 + 264) + 80 * v11) = *(*(a1 + 264) + 80 * v11) & 0x80000000 | *(a1 + 284);
    *(a1 + 284) = v11;
    --*(a1 + 276);
    ++*(a1 + 288);
  }

  return 0;
}

void re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 80 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_165, 4 * v10);
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

double re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::free(a1[2], v3++);
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

uint64_t re::BucketArray<RESubscriptionHandle,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<RESubscriptionHandle,8ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

void re::FrameAnalysisManager::beginNewFrame(re::FrameAnalysisManager *this)
{
  if (*(this + 712) == 1)
  {
    v2 = *re::foundationProfilingLogObjects(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "FrameAnalysisManager::beginNewFrame()", buf, 2u);
    }
  }

  *(this + 86) = 0;
  ++*(this + 174);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = v3[2] - *(this + 81);
    v5 = v3[3] - *(this + 82);
    v6 = v3[4] - *(this + 83);
    v7 = *(this + 68);
    v8 = v7 + 1;
    v9 = v7 == -1;
    *(this + 68) = v7 + 1;
    v10 = v7 % 6;
    *(this + v7 % 6 + 69) = v4;
    v11 = (this + 600);
    *(this + v10 + 75) = v5 + v4 + v6;
    v12 = v3[4];
    *(this + 648) = *(v3 + 1);
    *(this + 83) = v12;
    if (v8 >= 6)
    {
      v13 = 6;
    }

    else
    {
      v13 = v8;
    }

    if (v9)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v16 = v13;
      do
      {
        v15 += *(v11 - 6);
        v17 = *v11++;
        v14 += v17;
        --v16;
      }

      while (v16);
    }

    v18 = v5;
    v19 = v6 + v6;
    if (((v14 / v13) * 0.7) >= (v15 / v13))
    {
      if (v19 >= v18)
      {
        return;
      }

      buf[0] = 1;
      v26 = (this + 672);
      v27 = buf;
      goto LABEL_42;
    }

    v20 = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(*(this + 4));
    if (v20 && !(*(*v20 + 120))(v20) || (v22 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(*(this + 4))) == 0 || (v23 = (*(*v22 + 288))(v22) + 120, re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(buf, v23, 0), v39 = *buf, v40 = v42, v23 == *buf) && v42 == 0xFFFFFFFFLL)
    {
      v24 = 0;
      v25 = 1;
    }

    else
    {
      v28 = 0;
      v24 = 0;
      do
      {
        v29 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v39);
        v31 = *(v29 + 200);
        if (v31)
        {
          v32 = *(v29 + 216);
          v33 = *(re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
          v34 = 8 * v31;
          while (1)
          {
            if (*(*v32 + 224) > v33)
            {
              v35 = *(*(*v32 + 240) + 8 * v33);
              if (v35)
              {
                if (*(v35 + 384))
                {
                  break;
                }
              }
            }

            v32 += 8;
            v34 -= 8;
            if (!v34)
            {
              goto LABEL_30;
            }
          }

          re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(v24, v30);
          v43[v24++] = 3;
          ++v28;
        }

LABEL_30:
        re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v39);
      }

      while (v39 != v23 || v40 != 0xFFFF || HIWORD(v40) != 0xFFFF);
      *buf = v24;
      v42 = v28;
      v25 = v28 + 1;
    }

    re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(v24, v21);
    v43[v24] = 2;
    v38 = v24 + 1;
    *buf = v38;
    v42 = v25;
    if (v19 < v18)
    {
      if (v4 > v5)
      {
        re::DynamicArray<REFrameAnalysisBottleneck>::copy((this + 672), *(this + 86), v43, v38);
        LOBYTE(v39) = 1;
        v26 = (this + 672);
        v27 = &v39;
LABEL_42:
        re::DynamicArray<BOOL>::add(v26, v27);
        return;
      }

      LOBYTE(v39) = 1;
      re::DynamicArray<BOOL>::add((this + 672), &v39);
    }

    re::DynamicArray<REFrameAnalysisBottleneck>::copy((this + 672), *(this + 86), v43, v38);
  }
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(re::StringID *a1)
{
  {
    re::introspect<re::ecs2::ThrottleService>(BOOL)::info = re::ecs2::introspect_ThrottleService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::ThrottleService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

uint64_t re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(unsigned __int16 *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = *(*a1 + 16);
  if (v2 <= v1)
  {
    v7 = 0;
    memset(v16, 0, sizeof(v16));
    v4 = MEMORY[0x1E69E9C10];
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v11 = 797;
    v12 = 2048;
    v13 = v1;
    v14 = 2048;
    v15 = v2;
    _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(*a1 + 32) + 16 * v1) + 240 * a1[4];
}

_anonymous_namespace_ *re::DynamicArray<REFrameAnalysisBottleneck>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, size_t __len)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!__len)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v20 = 0;
    memset(v26, 0, sizeof(v26));
    v13 = MEMORY[0x1E69E9C10];
    *v21 = 136315906;
    *&v21[4] = "copy";
    *&v21[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    *&v21[14] = 643;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v8;
    _os_log_send_and_compose_impl(v14, &v20, v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v21, 38, v17, v19);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v20, *v21);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v15, v16, v18);
    __break(1u);
  }

  v4 = __len;
  v9 = a2 + __len;
  if (__CFADD__(a2, __len))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + a2), __src, __len);
  }

  else
  {
    re::DynamicArray<BOOL>::growCapacity(this, a2 + __len);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + v5), __src, v12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + v5), &__src[v12], v4 - v12);
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

void re::FrameAnalysisManager::afterFrameUpdate(re::FrameAnalysisManager *this)
{
  v177 = *MEMORY[0x1E69E9840];
  *buf = (*(**(this + 112) + 16))(*(this + 112));
  v2 = *(this + 94);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 45) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 94);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    v6 = *(this + 45) + 24 * v3;
    v7 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 296, (v6 + 16));
    if (!v7)
    {
      __break(1u);
    }

    v9 = v7;
    WeakRetained = objc_loadWeakRetained(v7);
    if (WeakRetained)
    {
      v11 = WeakRetained;
      if (*(re::ecs2::RenderOptions::forEntity(buf, WeakRetained - 8) + 1) == 1)
      {
        v12 = *(v9 + 11);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12 & 1;
      if (*(v9 + 8) != v13)
      {
        *(v9 + 8) = v13;
        re::FrameAnalysisManager::markECSDirty(this, "Entity changed visibility state");
      }

      if (v13)
      {
        if (*(v9 + 10) == 1)
        {
          re::FrameAnalysisManager::markECSDirty(this, "Visible entity changed transform or ");
        }

        if (*(v9 + 9) == 1)
        {
          re::FrameAnalysisManager::markECSDirty(this, "Visible entity changed due to renderable component change");
        }
      }

      *(v9 + 9) = 0;
      if ((v9[1] & 1) == 0)
      {
        re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 296, (v6 + 16));
      }
    }

    else
    {
      if (*(v9 + 8) == 1 && *(v9 + 11) == 1)
      {
        re::FrameAnalysisManager::markECSDirty(this, "Entity removed from scene, and was previously renderable");
      }

      re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 296, (v6 + 16));
    }

    v14 = *(this + 94);
    if (v14 <= v3 + 1)
    {
      v14 = v3 + 1;
    }

    while (v14 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 45) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_33;
      }
    }

    LODWORD(v3) = v14;
LABEL_33:
    ;
  }

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 344);
  v16 = this + 400;
  v17 = *(this + 98);
  if (v17 >= -1)
  {
    v18 = (v17 + 1) & 1;
  }

  else
  {
    v18 = -((v17 + 1) & 1);
  }

  v19 = &v16[48 * v18];
  v20 = *(v19 + 8);
  if (v20)
  {
    v21 = 0;
    v22 = (*(v19 + 2) + 8);
    while (1)
    {
      v23 = *v22;
      v22 += 6;
      if (v23 < 0)
      {
        break;
      }

      if (v20 == ++v21)
      {
        LODWORD(v21) = *(v19 + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v21) = 0;
  }

  if (v21 != v20)
  {
    v24 = &v16[48 * v17];
    do
    {
      v25 = *(v19 + 2) + 24 * v21;
      v15 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v24, (v25 + 16));
      if (!v15)
      {
        re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 296, (v25 + 16));
      }

      v26 = *(v19 + 8);
      if (v26 <= v21 + 1)
      {
        v26 = v21 + 1;
      }

      while (v26 - 1 != v21)
      {
        LODWORD(v21) = v21 + 1;
        if ((*(*(v19 + 2) + 24 * v21 + 8) & 0x80000000) != 0)
        {
          goto LABEL_53;
        }
      }

      LODWORD(v21) = v26;
LABEL_53:
      ;
    }

    while (v21 != v20);
  }

  v27 = *(this + 8);
  if (v27)
  {
    v28 = *(this + 22);
    atomic_load((v27 + 2177));
    v29 = *(v27 + 1024);
    *(this + 22) = v29;
    *(this + 184) = v28 != v29;
  }

  v30 = *(this + 6);
  if (v30)
  {
    *(this + 164) = *(v30 + 72);
  }

  v31 = *(this + 7);
  if (v31)
  {
    *(this + 81) = *(v31 + 264);
  }

  if (*(this + 712) == 1)
  {
    v32 = *re::foundationProfilingLogObjects(v15);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(this + 160);
      v34 = *(this + 161);
      v35 = *(this + 162);
      v36 = *(this + 164);
      v37 = *(this + 165);
      v38 = *(this + 166);
      v39 = *(this + 167);
      v40 = *(this + 168);
      v41 = *(this + 169);
      v42 = *(this + 184);
      v43 = *(this + 170);
      *buf = 67111680;
      *&buf[4] = v33;
      *&buf[8] = 1024;
      *&buf[10] = v34;
      *&buf[14] = 1024;
      LODWORD(v174) = v35;
      WORD2(v174) = 1024;
      *(&v174 + 6) = v36;
      WORD5(v174) = 1024;
      HIDWORD(v174) = v37;
      *v175 = 1024;
      *&v175[2] = v38;
      *&v175[6] = 1024;
      *&v175[8] = v39;
      *&v175[12] = 1024;
      *&v175[14] = v40;
      *&v175[18] = 1024;
      *&v175[20] = v41;
      *&v175[24] = 1024;
      *&v175[26] = v42;
      *&v175[30] = 1024;
      v176 = v43;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "FrameAnalysisManager::afterFrameUpdate(), ecs dirty %d, CARE %d, video %d, drawable %d, materials %d, probes %d, render effects %d, embedded stereo %d, depth mitigation %d, assets: %d, external %d", buf, 0x44u);
    }
  }

  v44 = *(this + 162);
  v45 = *(this + 164);
  v46 = *(this + 165);
  v47 = *(this + 166);
  v48 = *(this + 167);
  v49 = *(this + 168) << 7;
  v156.i32[0] = *(this + 161);
  v158.i32[0] = *(this + 160);
  v50 = *(this + 169);
  v51 = *(this + 184);
  v52 = *(this + 170);
  *(this + 32) = 1;
  *(this + 68) = (v51 << 9) | (v50 << 8) | ((4 * v44) | (2 * v156.i8[0]) | (16 * v46) | (32 * v47) | (v48 << 6) | (8 * v45) | v49 | v158.i8[0]) | (v52 << 10);
  v154.i64[0] = re::packCharArrayToUInt64ForAriadne(*(this + 93), 0);
  v151.i64[0] = re::packCharArrayToUInt64ForAriadne(*(this + 95), 0);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (*(this + 713) == 1)
  {
    v53 = re::ServiceLocator::serviceOrNull<re::TransformService>(*(this + 4));
    v54 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(*(this + 4));
    if (v54)
    {
      v55 = (*(*v54 + 288))(v54) + 120;
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(buf, v55, 0);
      *&v169 = *buf;
      DWORD2(v169) = *&buf[8];
      if (v55 != *buf || *&buf[8] != 0xFFFFFFFFLL)
      {
        v57 = 0;
        do
        {
          v58 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v169);
          v59 = *(v58 + 200);
          if (v59)
          {
            v60 = *(v58 + 216);
            v61 = 8 * v59;
            do
            {
              v62 = *v60;
              CustomMatrixCameraInScene = re::ecs2::CustomMatrixCameraComponent::firstCustomMatrixCameraInScene(*v60);
              if (CustomMatrixCameraInScene)
              {
                v64 = *(CustomMatrixCameraInScene + 16);
                if (v64)
                {
                  re::TransformService::worldMatrix(v53, v64, 0, buf);
                  v156 = v174;
                  v158 = *buf;
                  v151 = *&v175[16];
                  v154 = *v175;
                  if ((v57 & 1) == 0)
                  {
                    v57 = 1;
                  }
                }
              }

              PerspectiveCameraInScene = re::ecs2::PerspectiveCameraComponent::firstPerspectiveCameraInScene(v62);
              if (PerspectiveCameraInScene)
              {
                v66 = *(PerspectiveCameraInScene + 16);
                if (v66)
                {
                  re::TransformService::worldMatrix(v53, v66, 0, buf);
                  v156 = v174;
                  v158 = *buf;
                  v151 = *&v175[16];
                  v154 = *v175;
                  if ((v57 & 1) == 0)
                  {
                    v57 = 1;
                  }
                }
              }

              ++v60;
              v61 -= 8;
            }

            while (v61);
          }

          re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v169);
        }

        while (v169 != v55 || WORD4(v169) != 0xFFFF || WORD5(v169) != 0xFFFF);
        if (v57)
        {
          v69 = 0;
          v70 = vmulq_f32(v158, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v154, v154, 0xCuLL), v154, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v156, v156), v156, 0xCuLL))), vextq_s8(vuzp1q_s32(v154, v154), v154, 0xCuLL), vextq_s8(vextq_s8(v156, v156, 0xCuLL), v156, 8uLL)));
          v71 = vaddv_f32(*v70.f32);
          v72 = -1.0;
          if ((v70.f32[2] + v71) > 0.0)
          {
            v72 = 1.0;
          }

          v73 = vmulq_f32(v158, v158);
          v74 = vmulq_f32(v156, v156);
          v75 = vadd_f32(vzip1_s32(*v73.i8, *v74.i8), vzip2_s32(*v73.i8, *v74.i8));
          v76 = vextq_s8(v73, v73, 8uLL);
          *v76.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v76.f32, *&vextq_s8(v74, v74, 8uLL)), v75));
          v77 = vmulq_f32(v154, v154);
          v76.i32[2] = sqrtf(v77.f32[2] + vaddv_f32(*v77.f32));
          v78 = vmulq_n_f32(v76, v72);
          v79 = vdupq_lane_s32(0, 0);
          v80 = v79;
          LODWORD(v80) = v78.i32[0];
          v81 = v79;
          DWORD1(v81) = v78.i32[1];
          v79.i32[2] = v78.i32[2];
          v169 = v80;
          v170 = v81;
          v171 = v79;
          v172 = xmmword_1E30474D0;
          do
          {
            *&buf[v69] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v158, COERCE_FLOAT(*(&v169 + v69))), v156, *(&v169 + v69), 1), v154, *(&v169 + v69), 2), v151, *(&v169 + v69), 3);
            v69 += 16;
          }

          while (v69 != 64);
          v157 = v174;
          v159 = *buf;
          v152 = *&v175[16];
          v155 = *v175;
          v82 = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(this + 4));
          if (v82)
          {
            v83 = v82;
            re::FrameAnalysisManager::loadFont(this);
            v84 = 0;
            v85 = xmmword_1E3053E70;
            v168 = xmmword_1E3053E70;
            v169 = xmmword_1E3047670;
            v170 = xmmword_1E3047680;
            v171 = xmmword_1E30476A0;
            v172 = xmmword_1E3053E80;
            do
            {
              *&buf[v84] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v159, COERCE_FLOAT(*(&v169 + v84))), v157, *(&v169 + v84), 1), v155, *(&v169 + v84), 2), v152, *(&v169 + v84), 3);
              v84 += 16;
            }

            while (v84 != 64);
            v86 = 0;
            v87 = *buf;
            v88 = v174;
            v89 = *v175;
            v90 = *&v175[16];
            v161 = *buf;
            v162 = v174;
            v163 = *v175;
            v164 = *&v175[16];
            v169 = xmmword_1E3047670;
            v170 = xmmword_1E3047680;
            v171 = xmmword_1E30476A0;
            v172 = xmmword_1E3053E90;
            do
            {
              *&buf[v86] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, COERCE_FLOAT(*(&v169 + v86))), v88, *(&v169 + v86), 1), v89, *(&v169 + v86), 2), v90, *(&v169 + v86), 3);
              v86 += 16;
            }

            while (v86 != 64);
            v91 = 0;
            v92 = *buf;
            v93 = v174;
            v94 = *v175;
            v95 = *&v175[16];
            v169 = xmmword_1E3053EA0;
            v170 = xmmword_1E3053EB0;
            v171 = xmmword_1E3053EC0;
            v172 = xmmword_1E30474D0;
            do
            {
              *&buf[v91] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, COERCE_FLOAT(*(&v169 + v91))), v93, *(&v169 + v91), 1), v94, *(&v169 + v91), 2), v95, *(&v169 + v91), 3);
              v91 += 16;
            }

            while (v91 != 64);
            v96 = 0;
            v160[0] = *buf;
            v160[1] = v174;
            v160[2] = *v175;
            v160[3] = *&v175[16];
            v169 = xmmword_1E3047670;
            v170 = xmmword_1E3047680;
            v171 = xmmword_1E30476A0;
            v172 = xmmword_1E3053ED0;
            do
            {
              *&buf[v96] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, COERCE_FLOAT(*(&v169 + v96))), v88, *(&v169 + v96), 1), v89, *(&v169 + v96), 2), v90, *(&v169 + v96), 3);
              v96 += 16;
            }

            while (v96 != 64);
            v97 = 0;
            v98 = *buf;
            v99 = v174;
            v100 = *v175;
            v101 = *&v175[16];
            v169 = xmmword_1E3053EA0;
            v170 = xmmword_1E3053EB0;
            v171 = xmmword_1E3053EC0;
            v172 = xmmword_1E30474D0;
            do
            {
              *&buf[v97] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, COERCE_FLOAT(*(&v169 + v97))), v99, *(&v169 + v97), 1), v100, *(&v169 + v97), 2), v101, *(&v169 + v97), 3);
              v97 += 16;
            }

            while (v97 != 64);
            v102 = *(v83 + 10);
            v169 = xmmword_1E3053E70;
            v85.n128_u32[0] = 1031127695;
            re::DebugRenderer::drawCircle(v102, &v161, 0x20u, &v169, 0, v85);
            re::DebugRenderer::drawText(v102, v160, "No frame", this + 45, &v168, 0);
            re::DebugRenderer::drawText(v102, buf, "skipping", this + 45, &v168, 0);
          }
        }
      }
    }
  }

  v103 = *(this + 192);
  _VF = __OFSUB__(v103, 1);
  v105 = v103 - 1;
  if (v105 < 0 == _VF)
  {
    *(this + 192) = v105;
    v106 = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(this + 4));
    if (v106)
    {
      v107 = *(v106 + 10);
      __asm { FMOV            V0.4S, #1.0 }

      v153 = _Q0;
      *buf = _Q0;
      re::DebugRenderer::drawBox(v107, this + 49, this + 212, buf, 0);
      v160[0] = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      re::ExtractAngularSizePoints(this + 53, v160, &v168, &v167, &v166);
      v111 = 0;
      v165 = xmmword_1E3047670;
      v112 = v160[0];
      HIDWORD(v112) = 1.0;
      v113 = *(this + 49);
      v114 = *(this + 50);
      v115 = *(this + 51);
      v116 = *(this + 52);
      v169 = xmmword_1E3047670;
      v170 = xmmword_1E3047680;
      v171 = xmmword_1E30476A0;
      v172 = v112;
      do
      {
        *&buf[v111] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, COERCE_FLOAT(*(&v169 + v111))), v114, *(&v169 + v111), 1), v115, *(&v169 + v111), 2), v116, *(&v169 + v111), 3);
        v111 += 16;
      }

      while (v111 != 64);
      re::DebugRenderer::drawSphere(v107, buf, 8u, &v165, 0, 0.01);
      v117 = 0;
      v118 = v168;
      HIDWORD(v118) = 1.0;
      v119 = *(this + 49);
      v120 = *(this + 50);
      v121 = *(this + 51);
      v122 = *(this + 52);
      v169 = xmmword_1E3047670;
      v170 = xmmword_1E3047680;
      v171 = xmmword_1E30476A0;
      v172 = v118;
      do
      {
        *&buf[v117] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119, COERCE_FLOAT(*(&v169 + v117))), v120, *(&v169 + v117), 1), v121, *(&v169 + v117), 2), v122, *(&v169 + v117), 3);
        v117 += 16;
      }

      while (v117 != 64);
      re::DebugRenderer::drawSphere(v107, buf, 8u, &v165, 0, 0.01);
      v123 = 0;
      v124 = v167;
      HIDWORD(v124) = 1.0;
      v125 = *(this + 49);
      v126 = *(this + 50);
      v127 = *(this + 51);
      v128 = *(this + 52);
      v169 = xmmword_1E3047670;
      v170 = xmmword_1E3047680;
      v171 = xmmword_1E30476A0;
      v172 = v124;
      do
      {
        *&buf[v123] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125, COERCE_FLOAT(*(&v169 + v123))), v126, *(&v169 + v123), 1), v127, *(&v169 + v123), 2), v128, *(&v169 + v123), 3);
        v123 += 16;
      }

      while (v123 != 64);
      re::DebugRenderer::drawSphere(v107, buf, 8u, &v165, 0, 0.01);
      v129 = 0;
      v130 = v166;
      HIDWORD(v130) = 1.0;
      v131 = *(this + 49);
      v132 = *(this + 50);
      v133 = *(this + 51);
      v134 = *(this + 52);
      v169 = xmmword_1E3047670;
      v170 = xmmword_1E3047680;
      v171 = xmmword_1E30476A0;
      v172 = v130;
      do
      {
        *&buf[v129] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, COERCE_FLOAT(*(&v169 + v129))), v132, *(&v169 + v129), 1), v133, *(&v169 + v129), 2), v134, *(&v169 + v129), 3);
        v129 += 16;
      }

      while (v129 != 64);
      re::DebugRenderer::drawSphere(v107, buf, 8u, &v165, 0, 0.01);
      re::FrameAnalysisManager::loadFont(this);
      v135 = 0;
      v136 = *(this + 50);
      v161 = *(this + 49);
      v162 = v136;
      v137 = *(this + 51);
      v138 = *(this + 52);
      v163 = v137;
      v164 = v138;
      do
      {
        v137.i64[0] = v161.i64[v135 / 2];
        v137.i32[2] = v161.i32[v135 + 2];
        v139 = vmulq_f32(v137, v137);
        *&v140 = v139.f32[2] + vaddv_f32(*v139.f32);
        *v139.f32 = vrsqrte_f32(v140);
        *v139.f32 = vmul_f32(*v139.f32, vrsqrts_f32(v140, vmul_f32(*v139.f32, *v139.f32)));
        v137 = vmulq_n_f32(v137, vmul_f32(*v139.f32, vrsqrts_f32(v140, vmul_f32(*v139.f32, *v139.f32))).f32[0]);
        v137.i32[3] = v161.i32[v135 + 3];
        *(&v161 + v135 * 4) = v137;
        v135 += 4;
      }

      while (v135 != 12);
      v141 = 0;
      v142 = v161;
      v143 = v162;
      v144 = v163;
      v145 = v164;
      v169 = xmmword_1E3047670;
      v170 = xmmword_1E3047680;
      v171 = xmmword_1E30476A0;
      v172 = xmmword_1E3053EE0;
      do
      {
        *&buf[v141] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*(&v169 + v141))), v143, *(&v169 + v141), 1), v144, *(&v169 + v141), 2), v145, *(&v169 + v141), 3);
        v141 += 16;
      }

      while (v141 != 64);
      v146 = 0;
      v147 = *buf;
      v148 = v174;
      v149 = *v175;
      v150 = *&v175[16];
      v169 = xmmword_1E3053EA0;
      v170 = xmmword_1E3053EB0;
      v171 = xmmword_1E3053EC0;
      v172 = xmmword_1E30474D0;
      do
      {
        *&buf[v146] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v147, COERCE_FLOAT(*(&v169 + v146))), v148, *(&v169 + v146), 1), v149, *(&v169 + v146), 2), v150, *(&v169 + v146), 3);
        v146 += 16;
      }

      while (v146 != 64);
      v161 = *buf;
      v162 = v174;
      v163 = *v175;
      v164 = *&v175[16];
      snprintf(buf, 0x200uLL, "Vertical: %.1f\nHorizontal: %.1f", *(this + 220), *(this + 221));
      v169 = v153;
      re::DebugRenderer::drawText(v107, &v161, buf, this + 45, &v169, 0);
    }
  }
}