void sub_1DCB77170()
{
  v1 = v0;
  OUTLINED_FUNCTION_66();
  v5 = type metadata accessor for PromptForValueFlowAsync.State(0, *(v2 + 80), v3, v4);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27 - v10;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v12 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v12, qword_1EDE57E00);
  swift_retain_n();
  v28 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v28, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v14 = 136315394;

    v15 = OUTLINED_FUNCTION_76_13();
    MEMORY[0x1E12A66E0](v15);

    v16 = OUTLINED_FUNCTION_76_13();
    v19 = sub_1DCB10E9C(v16, v17, v18);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = *(*v1 + 112);
    OUTLINED_FUNCTION_156(v1 + v20, v29);
    (*(v7 + 16))(v11, v1 + v20, v5);

    sub_1DCB78F10(v5);

    (*(v7 + 8))(v11, v5);
    v21 = OUTLINED_FUNCTION_76_13();
    v24 = sub_1DCB10E9C(v21, v22, v23);

    *(v14 + 14) = v24;
    _os_log_impl(&dword_1DCAFC000, v28, v13, "PromptForValueFlow [%s] transitioned to state %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();

    OUTLINED_FUNCTION_49();
  }

  else
  {

    OUTLINED_FUNCTION_49();
  }
}

uint64_t sub_1DCB77430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_1DCB21038(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for ParameterClause(0);
    sub_1DCC8BC94(v9 + *(*(v10 - 8) + 72) * v8, a3);
    v11 = a3;
    v12 = 0;
    v13 = 1;
    v14 = v10;
  }

  else
  {
    type metadata accessor for ParameterClause(0);
    v11 = OUTLINED_FUNCTION_2_1();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1DCB774F8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  swift_storeEnumTagMultiPayload();
  sub_1DCB753CC(v1);
  static ExecuteResponse.ongoing(requireInput:)(1, v2);

  OUTLINED_FUNCTION_29();

  return v3();
}

_BYTE *sub_1DCB77584(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v198 = *(sub_1DD0DB04C() - 8);
  v212 = *(v198 + 64);
  v195 = sub_1DD0DC76C();
  v208 = *(v195 - 8);
  v194 = v208;
  v3 = *(v208 + 80);
  v193 = sub_1DD0DB1EC();
  v210 = *(v193 - 8);
  v192 = v210;
  v201 = *(v210 + 80) | v3;
  v197 = sub_1DD0DB4BC();
  v206 = *(v197 - 8);
  v219 = v206;
  v4 = *(v206 + 80) & 0xF8;
  v196 = sub_1DD0DB3EC();
  v5 = *(v196 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v8 = sub_1DD0DD12C();
  v203 = *(v8 - 8);
  v190 = v203;
  v191 = v8;
  v9 = *(v203 + 80);
  v10 = sub_1DD0DD08C();
  v11 = v208;
  v209 = *(v10 - 8);
  v12 = (v201 | (v9 | *(v209 + 80))) & 0xF8 | v7;
  v13 = v212 + v12;
  v14 = *(v11 + 64);
  v213 = v14 + 7;
  if (((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v14)
  {
    v14 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v14 <= *(v210 + 64))
  {
    v14 = *(v210 + 64);
  }

  v15 = *(v206 + 64);
  v16 = v15 + v6;
  v17 = (v15 + v6) & ~v6;
  v202 = v5;
  v18 = *(v5 + 84);
  v19 = *(v5 + 64);
  if (v18)
  {
    v20 = *(v5 + 64);
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = (v20 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v14 <= v22)
  {
    v14 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v23 = v21 + 31;
  if (v14 <= (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v207 = *(v203 + 64);
  v211 = v7 + 16;
  v24 = v4 | v6 | 7;
  v25 = *(v219 + 84);
  if (v18)
  {
    v26 = v18 - 1;
  }

  else
  {
    v26 = 0;
  }

  if (v26 <= v25)
  {
    v27 = *(v219 + 84);
  }

  else
  {
    v27 = v26;
  }

  if (v27 <= 0x7FFFFFFE)
  {
    v28 = 2147483646;
  }

  else
  {
    v28 = v27;
  }

  v29 = ((v23 + ((v7 + 16 + ((v207 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 <= v29)
  {
    v14 = v29;
  }

  v30 = *(*(v10 - 8) + 64);
  if (v14 > v30)
  {
    v30 = v14;
  }

  if (v30 <= 0x18)
  {
    v31 = 24;
  }

  else
  {
    v31 = v30;
  }

  v32 = ((((v31 + (v13 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v33 = *(*(a3 + 16) - 8);
  if (*(v33 + 64) <= 9uLL)
  {
    v34 = 9;
  }

  else
  {
    v34 = *(v33 + 64);
  }

  if (v34 + 1 > v32)
  {
    v32 = v34 + 1;
  }

  if (v32 <= 9)
  {
    v35 = 9;
  }

  else
  {
    v35 = v32;
  }

  v36 = a2[v35];
  v37 = v36 - 4;
  if (v36 < 4)
  {
    v39 = a1;
  }

  else
  {
    if (v35 <= 3)
    {
      v38 = v35;
    }

    else
    {
      v38 = 4;
    }

    v39 = a1;
    switch(v38)
    {
      case 1:
        v40 = *a2;
        goto LABEL_46;
      case 2:
        v40 = *a2;
        goto LABEL_46;
      case 3:
        v40 = *a2 | (a2[2] << 16);
        goto LABEL_46;
      case 4:
        v40 = *a2;
LABEL_46:
        if (v35 < 4)
        {
          v40 |= v37 << (8 * v35);
        }

        v36 = v40 + 4;
        break;
      default:
        break;
    }
  }

  v189 = v28;
  v41 = ~v12;
  v42 = ~v24;
  switch(v36)
  {
    case 0u:
      v43 = v10;
      v181 = ~v6;
      v183 = v16;
      v175 = v18;
      v173 = v19;
      v177 = v17;
      __n = v20;
      v185 = v20 + 7;
      v187 = v35;
      v204 = v31 + 1;
      v216 = v31;
      (*(v198 + 16))(v39);
      __dst = (&v39[v13] & v41);
      v44 = (&a2[v13] & v41);
      v45 = v44[v216];
      v46 = v45 - 10;
      if (v45 >= 0xA)
      {
        if (v216 <= 3)
        {
          v47 = v216;
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 1:
            v48 = *v44;
            goto LABEL_90;
          case 2:
            v48 = *v44;
            goto LABEL_90;
          case 3:
            v48 = *(&a2[v13] & v41) | (*((&a2[v13] & v41) + 2) << 16);
            goto LABEL_90;
          case 4:
            v48 = *v44;
LABEL_90:
            if (v216 < 4)
            {
              v45 = (v48 | (v46 << (8 * v216))) + 10;
            }

            else
            {
              v45 = v48 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v45)
      {
        case 0u:
          v65 = (&v39[v13] & v41);
          (*(v194 + 16))(__dst, v44, v195);
          *(__dst + v216) = 0;
          goto LABEL_167;
        case 1u:
          (*(v194 + 16))(__dst, v44, v195);
          *((__dst + v213) & 0xFFFFFFFFFFFFFFF8) = *(&v44[v213] & 0xFFFFFFFFFFFFFFF8);
          *(__dst + v216) = 1;
          sub_1DD0DCF8C();
        case 2u:
          v65 = (&v39[v13] & v41);
          *__dst = *v44;
          v65[1] = *((&a2[v13] & v41) + 8);
          v65[2] = *((&a2[v13] & v41) + 0x10);
          *(__dst + v216) = 2;

          goto LABEL_145;
        case 3u:
          v65 = (&v39[v13] & v41);
          *__dst = *v44;
          *(__dst + v216) = 3;
          swift_unknownObjectRetain();
          goto LABEL_167;
        case 4u:
          v65 = (&v39[v13] & v41);
          v67 = v216;
          (*(v192 + 16))(__dst, v44, v193);
          v68 = 4;
          goto LABEL_104;
        case 5u:
          v75 = *v44;
          v65 = (&v39[v13] & v41);
          *__dst = *v44;
          *(__dst + v216) = 5;
          v76 = v75;
          goto LABEL_167;
        case 6u:
          v65 = (&v39[v13] & v41);
          (*(v219 + 16))(__dst, v44, v197);
          v79 = ((__dst + v183) & v181);
          v80 = (&v44[v183] & v181);
          if (__swift_getEnumTagSinglePayload(v80, 1, v196))
          {
            memcpy(v79, v80, __n);
          }

          else
          {
            (*(v202 + 16))(v79, v80, v196);
            __swift_storeEnumTagSinglePayload(v79, 0, 1, v196);
          }

          v125 = ((v79 + v185) & 0xFFFFFFFFFFFFFFF8);
          v126 = ((v80 + v185) & 0xFFFFFFFFFFFFFFF8);
          *v125 = *v126;
          v125[1] = v126[1];
          v127 = (v125 + 19) & 0xFFFFFFFFFFFFFFF8;
          v128 = (v126 + 19) & 0xFFFFFFFFFFFFFFF8;
          v129 = *v128;
          *(v127 + 4) = *(v128 + 4);
          *v127 = v129;
          *(__dst + v216) = 6;
          goto LABEL_145;
        case 7u:
          v65 = (&v39[v13] & v41);
          (*(v219 + 16))(__dst, v44, v197);
          v71 = ((__dst + v183) & v181);
          v72 = (&v44[v183] & v181);
          if (__swift_getEnumTagSinglePayload(v72, 1, v196))
          {
            memcpy(v71, v72, __n);
          }

          else
          {
            (*(v202 + 16))(v71, v72, v196);
            __swift_storeEnumTagSinglePayload(v71, 0, 1, v196);
          }

          v103 = ((v71 + v185) & 0xFFFFFFFFFFFFFFF8);
          v104 = ((v72 + v185) & 0xFFFFFFFFFFFFFFF8);
          *v103 = *v104;
          v103[1] = v104[1];
          v105 = (v103 + 19) & 0xFFFFFFFFFFFFFFF8;
          v106 = (v104 + 19) & 0xFFFFFFFFFFFFFFF8;
          v107 = *v106;
          *(v105 + 4) = *(v106 + 4);
          *v105 = v107;
          v108 = ((__dst + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
          v109 = (&v44[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v108 = *v109;
          v108[1] = v109[1];
          v110 = ((v108 + 23) & 0xFFFFFFFFFFFFFFF8);
          v111 = ((v109 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v110 = *v111;
          v110[1] = v111[1];
          v112 = ((v110 + 23) & 0xFFFFFFFFFFFFFFF8);
          v113 = ((v111 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v112 = *v113;
          v112[1] = v113[1];
          *(__dst + v216) = 7;

LABEL_145:

          goto LABEL_167;
        case 8u:
          (*(v190 + 16))(__dst, v44, v191);
          v83 = ((__dst + v207 + 7) & 0xFFFFFFFFFFFFFFF8);
          v84 = (&v44[v207 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v83 = *v84;
          v83[1] = v84[1];
          v85 = ((v83 + v211) & v42);
          v86 = ((v84 + v211) & v42);

          if (v25 != v189)
          {
            v90 = ((v86 + v183) & v181);
            if (v26 == v189)
            {
              v91 = v196;
              v65 = __dst;
              if (v175 < 2)
              {
LABEL_153:
                v92 = v219;
                v88 = ~v6;
                v89 = v183;
                goto LABEL_154;
              }

              if (__swift_getEnumTagSinglePayload((v86 + v183) & v181, v175, v196) >= 2)
              {
                goto LABEL_134;
              }
            }

            else
            {
              v135 = *(((v90 + v185) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v135 >= 0xFFFFFFFF)
              {
                LODWORD(v135) = -1;
              }

              v65 = __dst;
              if ((v135 + 1) >= 2)
              {
                goto LABEL_134;
              }
            }

            v91 = v196;
            goto LABEL_153;
          }

          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, v25, v197);
          v65 = __dst;
          if (EnumTagSinglePayload)
          {
LABEL_134:
            memcpy(v85, v86, v22);
LABEL_165:
            v144 = __n;
            goto LABEL_166;
          }

          v88 = ~v6;
          v89 = v183;
          v90 = ((v86 + v183) & v181);
          v91 = v196;
          v92 = v219;
LABEL_154:
          (*(v92 + 16))(v85, v86, v197);
          v136 = ((v85 + v89) & v88);
          if (__swift_getEnumTagSinglePayload(v90, 1, v91))
          {
            memcpy(v136, v90, __n);
          }

          else
          {
            (*(v202 + 16))(v136, v90, v91);
            __swift_storeEnumTagSinglePayload(v136, 0, 1, v91);
          }

          v139 = ((v136 + v185) & 0xFFFFFFFFFFFFFFF8);
          v140 = ((v90 + v185) & 0xFFFFFFFFFFFFFFF8);
          *v139 = *v140;
          v139[1] = v140[1];
          v141 = (v139 + 19) & 0xFFFFFFFFFFFFFFF8;
          v142 = (v140 + 19) & 0xFFFFFFFFFFFFFFF8;
          v143 = *v142;
          *(v141 + 4) = *(v142 + 4);
          *v141 = v143;

          v144 = v173;
          if (!v175)
          {
            goto LABEL_165;
          }

LABEL_166:
          v145 = (((v177 + v144 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v146 = ((v85 + v145 + 7) & 0xFFFFFFFFFFFFFFF8);
          v147 = *((v86 + v145 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v146 = v147;
          *(v65 + v216) = 8;
          v148 = v147;
          v39 = a1;
LABEL_167:
          v149 = (&v44[v204 + 7] & 0xFFFFFFFFFFFFFFF8);
          v150 = ((v65 + v204 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v150 = *v149;
          v151 = (v150 + 15) & 0xFFFFFFFFFFFFFFF8;
          v152 = (v149 + 15) & 0xFFFFFFFFFFFFFFF8;
          v153 = *(v152 + 24);

          if (v153 < 0xFFFFFFFF)
          {
            v154 = *v152;
            v155 = *(v152 + 16);
            *(v151 + 32) = *(v152 + 32);
            *v151 = v154;
            *(v151 + 16) = v155;
          }

          else
          {
            *(v151 + 24) = v153;
            *(v151 + 32) = *(v152 + 32);
            (**(v153 - 8))(v151, v152, v153);
          }

          *(v151 + 40) = *(v152 + 40);
          v39[v187] = 0;
          return v39;
        case 9u:
          v65 = (&v39[v13] & v41);
          v67 = v216;
          (*(v209 + 16))(__dst, v44, v43);
          v68 = 9;
LABEL_104:
          *(v65 + v67) = v68;
          goto LABEL_167;
        default:
          v65 = (&v39[v13] & v41);
          memcpy(__dst, v44, v204);
          goto LABEL_167;
      }

    case 1u:
      v56 = v10;
      v182 = ~v6;
      v184 = v16;
      v176 = v18;
      v174 = v19;
      v178 = v17;
      __na = v20;
      v186 = v20 + 7;
      v188 = v35;
      v205 = v31 + 1;
      v217 = v31;
      (*(v198 + 16))(v39);
      __dsta = (&v39[v13] & v41);
      v57 = (&a2[v13] & v41);
      v58 = v57[v217];
      v59 = v58 - 10;
      if (v58 >= 0xA)
      {
        if (v217 <= 3)
        {
          v60 = v217;
        }

        else
        {
          v60 = 4;
        }

        switch(v60)
        {
          case 1:
            v61 = *v57;
            goto LABEL_96;
          case 2:
            v61 = *v57;
            goto LABEL_96;
          case 3:
            v61 = *(&a2[v13] & v41) | (*((&a2[v13] & v41) + 2) << 16);
            goto LABEL_96;
          case 4:
            v61 = *v57;
LABEL_96:
            if (v217 < 4)
            {
              v58 = (v61 | (v59 << (8 * v217))) + 10;
            }

            else
            {
              v58 = v61 + 10;
            }

            break;
          default:
            goto LABEL_99;
        }
      }

      break;
    case 2u:
      v49 = a2[v34];
      v50 = v49 - 2;
      if (v49 >= 2)
      {
        if (v34 <= 3)
        {
          v51 = v34;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *a2;
            goto LABEL_77;
          case 2:
            v52 = *a2;
            goto LABEL_77;
          case 3:
            v52 = *a2 | (a2[2] << 16);
            goto LABEL_77;
          case 4:
            v52 = *a2;
LABEL_77:
            if (v34 < 4)
            {
              v49 = (v52 | (v50 << (8 * v34))) + 2;
            }

            else
            {
              v49 = v52 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v49 == 1)
      {
        v63 = *a2;
        v64 = *a2;
        *v39 = v63;
        v39[8] = a2[8];
        v39[v34] = 1;
      }

      else if (v49)
      {
        memcpy(v39, a2, v34 + 1);
      }

      else
      {
        (*(v33 + 16))(v39);
        v39[v34] = 0;
      }

      v55 = 2;
      goto LABEL_86;
    case 3u:
      v53 = *a2;
      v54 = *a2;
      *v39 = v53;
      v39[8] = a2[8];
      v55 = 3;
LABEL_86:
      v39[v35] = v55;
      return v39;
    default:

      return memcpy(v39, a2, v35 + 1);
  }

LABEL_99:
  switch(v58)
  {
    case 0u:
      v66 = (&v39[v13] & v41);
      (*(v194 + 16))(__dsta, v57, v195);
      *(__dsta + v217) = 0;
      goto LABEL_175;
    case 1u:
      (*(v194 + 16))(__dsta, v57, v195);
      *((__dsta + v213) & 0xFFFFFFFFFFFFFFF8) = *(&v57[v213] & 0xFFFFFFFFFFFFFFF8);
      *(__dsta + v217) = 1;
      sub_1DD0DCF8C();
    case 2u:
      v66 = (&v39[v13] & v41);
      *__dsta = *v57;
      v66[1] = *((&a2[v13] & v41) + 8);
      v66[2] = *((&a2[v13] & v41) + 0x10);
      *(__dsta + v217) = 2;

      goto LABEL_148;
    case 3u:
      v66 = (&v39[v13] & v41);
      *__dsta = *v57;
      *(__dsta + v217) = 3;
      swift_unknownObjectRetain();
      goto LABEL_175;
    case 4u:
      v66 = (&v39[v13] & v41);
      v69 = v217;
      (*(v192 + 16))(__dsta, v57, v193);
      v70 = 4;
      goto LABEL_106;
    case 5u:
      v77 = *v57;
      v66 = (&v39[v13] & v41);
      *__dsta = *v57;
      *(__dsta + v217) = 5;
      v78 = v77;
      goto LABEL_175;
    case 6u:
      v66 = (&v39[v13] & v41);
      (*(v219 + 16))(__dsta, v57, v197);
      v81 = ((__dsta + v184) & v182);
      v82 = (&v57[v184] & v182);
      if (__swift_getEnumTagSinglePayload(v82, 1, v196))
      {
        memcpy(v81, v82, __na);
      }

      else
      {
        (*(v202 + 16))(v81, v82, v196);
        __swift_storeEnumTagSinglePayload(v81, 0, 1, v196);
      }

      v130 = ((v81 + v186) & 0xFFFFFFFFFFFFFFF8);
      v131 = ((v82 + v186) & 0xFFFFFFFFFFFFFFF8);
      *v130 = *v131;
      v130[1] = v131[1];
      v132 = (v130 + 19) & 0xFFFFFFFFFFFFFFF8;
      v133 = (v131 + 19) & 0xFFFFFFFFFFFFFFF8;
      v134 = *v133;
      *(v132 + 4) = *(v133 + 4);
      *v132 = v134;
      *(__dsta + v217) = 6;
      goto LABEL_148;
    case 7u:
      v66 = (&v39[v13] & v41);
      (*(v219 + 16))(__dsta, v57, v197);
      v73 = ((__dsta + v184) & v182);
      v74 = (&v57[v184] & v182);
      if (__swift_getEnumTagSinglePayload(v74, 1, v196))
      {
        memcpy(v73, v74, __na);
      }

      else
      {
        (*(v202 + 16))(v73, v74, v196);
        __swift_storeEnumTagSinglePayload(v73, 0, 1, v196);
      }

      v114 = ((v73 + v186) & 0xFFFFFFFFFFFFFFF8);
      v115 = ((v74 + v186) & 0xFFFFFFFFFFFFFFF8);
      *v114 = *v115;
      v114[1] = v115[1];
      v116 = (v114 + 19) & 0xFFFFFFFFFFFFFFF8;
      v117 = (v115 + 19) & 0xFFFFFFFFFFFFFFF8;
      v118 = *v117;
      *(v116 + 4) = *(v117 + 4);
      *v116 = v118;
      v119 = ((__dsta + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      v120 = (&v57[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v119 = *v120;
      v119[1] = v120[1];
      v121 = ((v119 + 23) & 0xFFFFFFFFFFFFFFF8);
      v122 = ((v120 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v121 = *v122;
      v121[1] = v122[1];
      v123 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
      v124 = ((v122 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v123 = *v124;
      v123[1] = v124[1];
      *(__dsta + v217) = 7;

LABEL_148:

      goto LABEL_175;
    case 8u:
      (*(v190 + 16))(__dsta, v57, v191);
      v93 = ((__dsta + v207 + 7) & 0xFFFFFFFFFFFFFFF8);
      v94 = (&v57[v207 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v93 = *v94;
      v93[1] = v94[1];
      v95 = ((v93 + v211) & v42);
      v96 = ((v94 + v211) & v42);

      if (v25 == v189)
      {
        v97 = __swift_getEnumTagSinglePayload(v96, v25, v197);
        v66 = __dsta;
        if (!v97)
        {
          v98 = ~v6;
          v99 = v184;
          v100 = ((v96 + v184) & v182);
          v101 = v196;
          v102 = v219;
          goto LABEL_161;
        }

LABEL_138:
        memcpy(v95, v96, v22);
        goto LABEL_173;
      }

      v100 = ((v96 + v184) & v182);
      if (v26 == v189)
      {
        v101 = v196;
        v66 = __dsta;
        if (v176 < 2)
        {
LABEL_160:
          v102 = v219;
          v98 = ~v6;
          v99 = v184;
LABEL_161:
          (*(v102 + 16))(v95, v96, v197);
          v138 = ((v95 + v99) & v98);
          if (__swift_getEnumTagSinglePayload(v100, 1, v101))
          {
            memcpy(v138, v100, __na);
          }

          else
          {
            (*(v202 + 16))(v138, v100, v101);
            __swift_storeEnumTagSinglePayload(v138, 0, 1, v101);
          }

          v156 = ((v138 + v186) & 0xFFFFFFFFFFFFFFF8);
          v157 = ((v100 + v186) & 0xFFFFFFFFFFFFFFF8);
          *v156 = *v157;
          v156[1] = v157[1];
          v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
          v159 = (v157 + 19) & 0xFFFFFFFFFFFFFFF8;
          v160 = *v159;
          *(v158 + 4) = *(v159 + 4);
          *v158 = v160;

          v161 = v174;
          if (v176)
          {
LABEL_174:
            v162 = (((v178 + v161 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
            v163 = ((v95 + v162 + 7) & 0xFFFFFFFFFFFFFFF8);
            v164 = *((v96 + v162 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v163 = v164;
            *(v66 + v217) = 8;
            v165 = v164;
            v39 = a1;
LABEL_175:
            v166 = (&v57[v205 + 7] & 0xFFFFFFFFFFFFFFF8);
            v167 = ((v66 + v205 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v167 = *v166;
            v168 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
            v169 = (v166 + 15) & 0xFFFFFFFFFFFFFFF8;
            v170 = *(v169 + 24);

            if (v170 < 0xFFFFFFFF)
            {
              v171 = *v169;
              v172 = *(v169 + 16);
              *(v168 + 32) = *(v169 + 32);
              *v168 = v171;
              *(v168 + 16) = v172;
            }

            else
            {
              *(v168 + 24) = v170;
              *(v168 + 32) = *(v169 + 32);
              (**(v170 - 8))(v168, v169, v170);
            }

            *(v168 + 40) = *(v169 + 40);
            v39[v188] = 1;
            return v39;
          }

LABEL_173:
          v161 = __na;
          goto LABEL_174;
        }

        if (__swift_getEnumTagSinglePayload((v96 + v184) & v182, v176, v196) >= 2)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v137 = *(((v100 + v186) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v137 >= 0xFFFFFFFF)
        {
          LODWORD(v137) = -1;
        }

        v66 = __dsta;
        if ((v137 + 1) >= 2)
        {
          goto LABEL_138;
        }
      }

      v101 = v196;
      goto LABEL_160;
    case 9u:
      v66 = (&v39[v13] & v41);
      v69 = v217;
      (*(v209 + 16))(__dsta, v57, v56);
      v70 = 9;
LABEL_106:
      *(v66 + v69) = v70;
      goto LABEL_175;
    default:
      v66 = (&v39[v13] & v41);
      memcpy(__dsta, v57, v205);
      goto LABEL_175;
  }
}

unint64_t sub_1DCB78BC8()
{
  result = qword_1EDE46178;
  if (!qword_1EDE46178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46178);
  }

  return result;
}

void sub_1DCB78C0C(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([a1 _type] == 2 && !sub_1DCB08B14(a2))
  {
    sub_1DCF4A748(v3);
  }

  else
  {
    v4 = [v3 _intentInstanceDescription];
    v5 = OUTLINED_FUNCTION_33_4();
    v6 = sub_1DCB08B14(v5);
    if (!v6)
    {
LABEL_18:

      return;
    }

    v7 = v6;
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      v21 = v3;
      do
      {
        if ((a2 & 0xC000000000000001) == 0)
        {
          sub_1DD0DCF8C();
        }

        v10 = MEMORY[0x1E12A72C0](v8, a2);
        if (*(v10 + 24) == 1 && (v11 = sub_1DD0DDF8C(), v12 = [v3 slotByName_], v11, v12))
        {

          v14 = *(v10 + 32);
          v13 = *(v10 + 40);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DCB34108(0, *(v9 + 16) + 1, 1, v9);
            v9 = v18;
          }

          v16 = *(v9 + 16);
          v15 = *(v9 + 24);
          if (v16 >= v15 >> 1)
          {
            v19 = OUTLINED_FUNCTION_21_0(v15);
            sub_1DCB34108(v19, v16 + 1, 1, v9);
            v9 = v20;
          }

          *(v9 + 16) = v16 + 1;
          v17 = v9 + 16 * v16;
          *(v17 + 32) = v14;
          *(v17 + 40) = v13;
          v3 = v21;
        }

        else
        {
        }

        ++v8;
      }

      while (v7 != v8);
      goto LABEL_18;
    }

    __break(1u);
  }
}

uint64_t sub_1DCB78DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Parse(0);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1DCB78E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Parse(0);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t OutputGenerationManifest.printSupportingDialogInDisplayModes.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 64)) = v0;
  return result;
}

void OUTLINED_FUNCTION_160(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[23] = a1;
  v3[24] = a2;
  v3[20] = v2;

  sub_1DD0DCF8C();
}

unint64_t sub_1DCB78F10(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646574726174732ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v3 + 8))(v5, a1);
      result = 0x65646E7573696D2ELL;
      break;
    case 2:
      (*(v3 + 8))(v5, a1);
      result = 0x74656C706D6F632ELL;
      break;
    case 3:
      (*(v3 + 8))(v5, a1);
      result = 0x726F7272652ELL;
      break;
    case 4:
      return result;
    case 5:
      result = 0x5374706D6F72702ELL;
      break;
    case 6:
      result = 0x61507974706D652ELL;
      break;
    case 7:
      result = 0x6C6C65636E61632ELL;
      break;
    default:
      (*(v3 + 8))(v5, a1);
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DCB7915C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCB79258()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCB792D0()
{
  sub_1DCB79304();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB79304()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
  sub_1DCB79360(*(v0 + 272), *(v0 + 280));
  return v0;
}

void sub_1DCB79360(void *result, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    sub_1DCB79378(result, a2 & 1);
  }
}

void sub_1DCB79378(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1DCB79384()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DCB79474, 0, 0);
}

uint64_t sub_1DCB79474()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB794CC()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_1DCB795F4()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB79808()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCB79974(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = v1 + *(*v1 + 144);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *(v4 + 16);
  *v4 = *a1;
  *(v4 + 16) = v2;
  v8 = *(v4 + 24);
  *(v4 + 24) = v3;
  sub_1DCB799DC(v6, v5, v7, v8);

  sub_1DCB795F4();
}

void sub_1DCB799DC(void *a1, void *a2, void *a3, char a4)
{
  switch(a4)
  {
    case 0:

      a1 = a3;
      goto LABEL_7;
    case 1:
    case 2:

      a1 = a2;
LABEL_7:

      goto LABEL_5;
    case 3:
      v4 = a3 & 1;

      sub_1DCB74F28(a1, a2, v4);
      return;
    case 4:

LABEL_5:

      break;
    default:
      return;
  }
}

id sub_1DCB79AD0@<X0>(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v4 = *v2;
  v5 = v2 + *(*v2 + 144);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 24);
  if (v8 == 4)
  {
    *a1 = v6;
    *(a1 + 8) = v7 & 1;
    *(a1 + 16) = 1;

    return v6;
  }

  else
  {
    v9 = *(v5 + 16);
    if (v8 == 3)
    {
      *a1 = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = v9 & 1;

      return sub_1DCB79C24(v6, v7, v9 & 1);
    }

    else
    {
      type metadata accessor for SiriKitHandleIntentFlow.HandleIntentFlowError(0, *(v4 + 80), *(v4 + 88), a2);
      OUTLINED_FUNCTION_4_59();
      WitnessTable = swift_getWitnessTable();
      v12 = OUTLINED_FUNCTION_79_0(WitnessTable);
      *v13 = v6;
      *(v13 + 8) = v7;
      *(v13 + 16) = v9;
      *(v13 + 24) = v8;
      *a1 = v12;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;
      OUTLINED_FUNCTION_26_18();

      return sub_1DCB61AE4(v14, v15, v16, v8);
    }
  }
}

id sub_1DCB79C24(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    v5 = a1;
    a1 = a2;
  }

  return a1;
}

uint64_t sub_1DCB79C80(unint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v16 = a3;
  v5 = sub_1DD0DD89C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1DD0DD85C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v12 = sub_1DD0DD88C();
  __swift_project_value_buffer(v12, qword_1EDE57DD0);
  v13 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  v15 = sub_1DD0DE7EC();
  result = sub_1DD0DE92C();
  if ((result & 1) == 0)
  {

    return (*(v8 + 8))(v11, v7);
  }

  if ((v16 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (HIDWORD(a1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
LABEL_10:
      sub_1DD0DCF8C();
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DCB79F5C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCB7A03C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCB7A138()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_65();

  OUTLINED_FUNCTION_29();

  return v0();
}

void sub_1DCB7A1A0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    (*(v3[27] + 8))(v3[28], v3[26]);

    v7 = *(v5 + 8);

    v7();
  }
}

uint64_t sub_1DCB7A2E0()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  v4 = *(v1 + 120);
  v5 = *(v1 + 128);

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCB7A420()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 112);

  v2 = OUTLINED_FUNCTION_86();
  sub_1DCB799DC(v2, v3, v1, 2);
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCB7A4A4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCB79C24(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for ParseCodingErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1DCB7A560()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_99_7();
  v2 = *(v1 + 88);
  v3 = OUTLINED_FUNCTION_80_8();
  type metadata accessor for RCHFlowAsync.RCHFlowError(v3, v4, v2, v5);
  OUTLINED_FUNCTION_9();
  v58 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v57[1] = type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v11 = OUTLINED_FUNCTION_80_8();
  v14 = type metadata accessor for RCHFlowAsync.State(v11, v12, v2, v13);
  OUTLINED_FUNCTION_9();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_10_2();
  v60 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (v57 - v23);
  v25 = *(v0 + 8);
  v59 = *v0;
  v26 = *(v0 + 16);
  sub_1DCB7AC2C(v57 - v23);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v27 = *v24;

    if (v26)
    {
      v28 = v25;
      if (v25)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v29 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
        v30 = sub_1DD0DD8EC();
        v31 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_61_1(v31))
        {
          v32 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_47_0(v32);
          OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v33, v34, "RCHFlow Handle resulted in an error that was already handled. Cancelling with no ouput");
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_45_19(0x8000000000000000);
        OUTLINED_FUNCTION_95_6();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_88_11();
      }

      v45 = v60;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v46 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v46, qword_1EDE57E00);
      v47 = v59;
      v48 = v59;
      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE6EC();
      sub_1DCB74F28(v47, v28, 1);
      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_151();
        v58 = v27;
        v52 = v51;
        v53 = OUTLINED_FUNCTION_83();
        v61 = v53;
        *v52 = 136315138;
        swift_getErrorValue();
        v54 = sub_1DD0DF18C();
        OUTLINED_FUNCTION_102_4(v54, v55);
        OUTLINED_FUNCTION_104_0();

        *(v52 + 4) = v47;
        _os_log_impl(&dword_1DCAFC000, v49, v50, "RCHFlow Handle resulted in an error that not handled. Will attempt to send error dialog: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        OUTLINED_FUNCTION_80();
        v47 = v59;
        OUTLINED_FUNCTION_80();
      }

      *v45 = v47;
      OUTLINED_FUNCTION_131();
      swift_storeEnumTagMultiPayload();
      v56 = v47;
      OUTLINED_FUNCTION_88_11();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v36 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v36, qword_1EDE57E00);
    v37 = sub_1DD0DD8EC();
    v38 = sub_1DD0DE6DC();
    v39 = OUTLINED_FUNCTION_61_1(v38);
    v40 = v59;
    if (v39)
    {
      v41 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_47_0(v41);
      OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v42, v43, "RCHFlow Handle completed normally");
      OUTLINED_FUNCTION_37();
    }

    v44 = v60;
    *v60 = v27;
    v44[1] = v40;
    v44[2] = v25;
    OUTLINED_FUNCTION_95_6();
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  (*(v16 + 8))(v24, v14);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v35 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB7AC2C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 152);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  type metadata accessor for RCHFlowAsync.State(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_2();
  return (*(v8 + 16))(a1, v1 + v4);
}

void *sub_1DCB7ACD8(unint64_t *a1, void *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DB04C();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      v7 = type metadata accessor for Input(0);
      v8 = v7[5];
      v9 = a1 + v8;
      v10 = a2 + v8;
      v11 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v12 = sub_1DD0DC76C();
          (*(*(v12 - 8) + 16))(v9, v10, v12);
          goto LABEL_88;
        case 1u:
          v81 = sub_1DD0DC76C();
          (*(*(v81 - 8) + 16))(v9, v10, v81);
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v9[*(v82 + 48)] = *&v10[*(v82 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v58 = *(v10 + 1);
          *v9 = *v10;
          *(v9 + 1) = v58;
          *(v9 + 2) = *(v10 + 2);

          goto LABEL_88;
        case 3u:
          *v9 = *v10;
          swift_unknownObjectRetain();
          goto LABEL_88;
        case 4u:
          v51 = sub_1DD0DB1EC();
          (*(*(v51 - 8) + 16))(v9, v10, v51);
          goto LABEL_88;
        case 5u:
          v88 = *v10;
          *v9 = *v10;
          v89 = v88;
          goto LABEL_88;
        case 6u:
          v92 = sub_1DD0DB4BC();
          (*(*(v92 - 8) + 16))(v9, v10, v92);
          v93 = type metadata accessor for USOParse(0);
          v94 = v93[5];
          v95 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v10[v94], 1, v95))
          {
            v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v9[v94], &v10[v94], *(*(v96 - 8) + 64));
          }

          else
          {
            (*(*(v95 - 8) + 16))(&v9[v94], &v10[v94], v95);
            __swift_storeEnumTagSinglePayload(&v9[v94], 0, 1, v95);
          }

          v194 = v93[6];
          v195 = &v9[v194];
          v196 = &v10[v194];
          v197 = *(v196 + 1);
          *v195 = *v196;
          *(v195 + 1) = v197;
          v198 = v93[7];
          v199 = &v9[v198];
          v200 = &v10[v198];
          v199[4] = v200[4];
          *v199 = *v200;

          goto LABEL_88;
        case 7u:
          v75 = sub_1DD0DB4BC();
          (*(*(v75 - 8) + 16))(v9, v10, v75);
          v76 = type metadata accessor for USOParse(0);
          v77 = v76[5];
          v78 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v10[v77], 1, v78))
          {
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v9[v77], &v10[v77], *(*(v79 - 8) + 64));
          }

          else
          {
            (*(*(v78 - 8) + 16))(&v9[v77], &v10[v77], v78);
            __swift_storeEnumTagSinglePayload(&v9[v77], 0, 1, v78);
          }

          v154 = v76[6];
          v155 = &v9[v154];
          v156 = &v10[v154];
          v157 = *(v156 + 1);
          *v155 = *v156;
          *(v155 + 1) = v157;
          v158 = v76[7];
          v159 = &v9[v158];
          v160 = &v10[v158];
          v159[4] = v160[4];
          *v159 = *v160;
          v161 = type metadata accessor for LinkParse(0);
          v162 = v161[5];
          v163 = &v9[v162];
          v164 = &v10[v162];
          v165 = *(v164 + 1);
          *v163 = *v164;
          *(v163 + 1) = v165;
          v166 = v161[6];
          v167 = &v9[v166];
          v168 = &v10[v166];
          v169 = *(v168 + 1);
          *v167 = *v168;
          *(v167 + 1) = v169;
          v170 = v161[7];
          v171 = &v9[v170];
          v172 = &v10[v170];
          v173 = *(v172 + 1);
          *v171 = *v172;
          *(v171 + 1) = v173;

          goto LABEL_88;
        case 8u:
          v97 = sub_1DD0DD12C();
          (*(*(v97 - 8) + 16))(v9, v10, v97);
          v98 = type metadata accessor for NLRouterParse(0);
          v99 = *(v98 + 20);
          v100 = &v9[v99];
          v101 = &v10[v99];
          v102 = *(v101 + 1);
          *v100 = *v101;
          *(v100 + 1) = v102;
          v103 = *(v98 + 24);
          v277 = v98;
          __dsta = &v9[v103];
          v104 = &v10[v103];
          v105 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v104, 1, v105))
          {
            v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dsta, v104, *(*(v106 - 8) + 64));
          }

          else
          {
            v201 = sub_1DD0DB4BC();
            (*(*(v201 - 8) + 16))(__dsta, v104, v201);
            v202 = v105[5];
            v274 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v104[v202], 1, v274))
            {
              v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dsta[v202], &v104[v202], *(*(v203 - 8) + 64));
            }

            else
            {
              (*(*(v274 - 8) + 16))(&__dsta[v202], &v104[v202]);
              __swift_storeEnumTagSinglePayload(&__dsta[v202], 0, 1, v274);
            }

            v234 = v105[6];
            v235 = &__dsta[v234];
            v236 = &v104[v234];
            v237 = *(v236 + 1);
            *v235 = *v236;
            *(v235 + 1) = v237;
            v238 = v105[7];
            v239 = &__dsta[v238];
            v240 = &v104[v238];
            v239[4] = v240[4];
            *v239 = *v240;

            __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v105);
          }

          v241 = *(v277 + 28);
          v242 = *&v10[v241];
          *&v9[v241] = v242;
          v243 = v242;
          goto LABEL_88;
        case 9u:
          v54 = sub_1DD0DD08C();
          (*(*(v54 - 8) + 16))(v9, v10, v54);
LABEL_88:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v9, v10, *(*(v11 - 8) + 64));
          break;
      }

      *(a1 + v7[6]) = *(a2 + v7[6]);
      v244 = v7[7];
      v245 = a1 + v244;
      v246 = a2 + v244;
      v247 = *(a2 + v244 + 24);

      if (v247)
      {
        v248 = *(v246 + 4);
        *(v245 + 3) = v247;
        *(v245 + 4) = v248;
        (**(v247 - 8))(v245, v246, v247);
      }

      else
      {
        v249 = *(v246 + 1);
        *v245 = *v246;
        *(v245 + 1) = v249;
        *(v245 + 4) = *(v246 + 4);
      }

      *(a1 + v7[8]) = *(a2 + v7[8]);
      swift_getAssociatedTypeWitness();
      v250 = *(swift_getTupleTypeMetadata2() + 48);
      v251 = *(a2 + v250);
      *(a1 + v250) = v251;
      v252 = v251;
      goto LABEL_101;
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      v24 = *a2;
      v25 = a2[1];
      *a1 = v24;
      a1[1] = v25;
      sub_1DD0DCF8C();
    case 3u:
      v26 = *a2;
      v27 = a2[1];
      *a1 = v26;
      a1[1] = v27;
      sub_1DD0DCF8C();
    case 4u:
      v15 = sub_1DD0DB04C();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v16 = type metadata accessor for Input(0);
      v17 = v16[5];
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v21 = sub_1DD0DC76C();
          (*(*(v21 - 8) + 16))(v18, v19, v21);
          goto LABEL_80;
        case 1u:
          v52 = sub_1DD0DC76C();
          (*(*(v52 - 8) + 16))(v18, v19, v52);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v18[*(v53 + 48)] = *&v19[*(v53 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v45 = *(v19 + 1);
          *v18 = *v19;
          *(v18 + 1) = v45;
          *(v18 + 2) = *(v19 + 2);

          goto LABEL_80;
        case 3u:
          *v18 = *v19;
          swift_unknownObjectRetain();
          goto LABEL_80;
        case 4u:
          v43 = sub_1DD0DB1EC();
          (*(*(v43 - 8) + 16))(v18, v19, v43);
          goto LABEL_80;
        case 5u:
          v55 = *v19;
          *v18 = *v19;
          v56 = v55;
          goto LABEL_80;
        case 6u:
          v59 = sub_1DD0DB4BC();
          (*(*(v59 - 8) + 16))(v18, v19, v59);
          v60 = type metadata accessor for USOParse(0);
          v61 = v60[5];
          v62 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v61], 1, v62))
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v61], &v19[v61], *(*(v63 - 8) + 64));
          }

          else
          {
            (*(*(v62 - 8) + 16))(&v18[v61], &v19[v61], v62);
            __swift_storeEnumTagSinglePayload(&v18[v61], 0, 1, v62);
          }

          v144 = v60[6];
          v145 = &v18[v144];
          v146 = &v19[v144];
          v147 = *(v146 + 1);
          *v145 = *v146;
          *(v145 + 1) = v147;
          v148 = v60[7];
          v149 = &v18[v148];
          v150 = &v19[v148];
          v149[4] = v150[4];
          *v149 = *v150;

          goto LABEL_80;
        case 7u:
          v46 = sub_1DD0DB4BC();
          (*(*(v46 - 8) + 16))(v18, v19, v46);
          v47 = type metadata accessor for USOParse(0);
          v48 = v47[5];
          v49 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v48], 1, v49))
          {
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v48], &v19[v48], *(*(v50 - 8) + 64));
          }

          else
          {
            (*(*(v49 - 8) + 16))(&v18[v48], &v19[v48], v49);
            __swift_storeEnumTagSinglePayload(&v18[v48], 0, 1, v49);
          }

          v124 = v47[6];
          v125 = &v18[v124];
          v126 = &v19[v124];
          v127 = *(v126 + 1);
          *v125 = *v126;
          *(v125 + 1) = v127;
          v128 = v47[7];
          v129 = &v18[v128];
          v130 = &v19[v128];
          v129[4] = v130[4];
          *v129 = *v130;
          v131 = type metadata accessor for LinkParse(0);
          v132 = v131[5];
          v133 = &v18[v132];
          v134 = &v19[v132];
          v135 = *(v134 + 1);
          *v133 = *v134;
          *(v133 + 1) = v135;
          v136 = v131[6];
          v137 = &v18[v136];
          v138 = &v19[v136];
          v139 = *(v138 + 1);
          *v137 = *v138;
          *(v137 + 1) = v139;
          v140 = v131[7];
          v141 = &v18[v140];
          v142 = &v19[v140];
          v143 = *(v142 + 1);
          *v141 = *v142;
          *(v141 + 1) = v143;

          goto LABEL_80;
        case 8u:
          v64 = sub_1DD0DD12C();
          (*(*(v64 - 8) + 16))(v18, v19, v64);
          v65 = type metadata accessor for NLRouterParse(0);
          v66 = *(v65 + 20);
          v67 = &v18[v66];
          v68 = &v19[v66];
          v69 = *(v68 + 1);
          *v67 = *v68;
          *(v67 + 1) = v69;
          v70 = *(v65 + 24);
          v276 = v65;
          __dst = &v18[v70];
          v71 = &v19[v70];
          v72 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v71, 1, v72))
          {
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v71, *(*(v73 - 8) + 64));
          }

          else
          {
            v151 = sub_1DD0DB4BC();
            (*(*(v151 - 8) + 16))(__dst, v71, v151);
            v152 = v72[5];
            v273 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v71[v152], 1, v273))
            {
              v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v152], &v71[v152], *(*(v153 - 8) + 64));
            }

            else
            {
              (*(*(v273 - 8) + 16))(&__dst[v152], &v71[v152]);
              __swift_storeEnumTagSinglePayload(&__dst[v152], 0, 1, v273);
            }

            v214 = v72[6];
            v215 = &__dst[v214];
            v216 = &v71[v214];
            v217 = *(v216 + 1);
            *v215 = *v216;
            *(v215 + 1) = v217;
            v218 = v72[7];
            v219 = &__dst[v218];
            v220 = &v71[v218];
            v219[4] = v220[4];
            *v219 = *v220;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v72);
          }

          v221 = *(v276 + 28);
          v222 = *&v19[v221];
          *&v18[v221] = v222;
          v223 = v222;
          goto LABEL_80;
        case 9u:
          v44 = sub_1DD0DD08C();
          (*(*(v44 - 8) + 16))(v18, v19, v44);
LABEL_80:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v18, v19, *(*(v20 - 8) + 64));
          break;
      }

      *(a1 + v16[6]) = *(a2 + v16[6]);
      v224 = v16[7];
      v225 = a1 + v224;
      v226 = a2 + v224;
      v227 = *(a2 + v224 + 24);

      if (v227)
      {
        v228 = *(v226 + 4);
        *(v225 + 3) = v227;
        *(v225 + 4) = v228;
        (**(v227 - 8))(v225, v226, v227);
      }

      else
      {
        v229 = *(v226 + 1);
        *v225 = *v226;
        *(v225 + 1) = v229;
        *(v225 + 4) = *(v226 + 4);
      }

      *(a1 + v16[8]) = *(a2 + v16[8]);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v231, v232);
      sub_1DD0DE97C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
      sub_1DD0DCF8C();
    case 5u:
      v28 = sub_1DD0DB04C();
      (*(*(v28 - 8) + 16))(a1, a2, v28);
      v29 = type metadata accessor for Input(0);
      v30 = v29[5];
      v31 = a1 + v30;
      v32 = a2 + v30;
      v33 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v34 = sub_1DD0DC76C();
          (*(*(v34 - 8) + 16))(v31, v32, v34);
          goto LABEL_96;
        case 1u:
          v90 = sub_1DD0DC76C();
          (*(*(v90 - 8) + 16))(v31, v32, v90);
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v31[*(v91 + 48)] = *&v32[*(v91 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v80 = *(v32 + 1);
          *v31 = *v32;
          *(v31 + 1) = v80;
          *(v31 + 2) = *(v32 + 2);

          goto LABEL_96;
        case 3u:
          *v31 = *v32;
          swift_unknownObjectRetain();
          goto LABEL_96;
        case 4u:
          v57 = sub_1DD0DB1EC();
          (*(*(v57 - 8) + 16))(v31, v32, v57);
          goto LABEL_96;
        case 5u:
          v107 = *v32;
          *v31 = *v32;
          v108 = v107;
          goto LABEL_96;
        case 6u:
          v109 = sub_1DD0DB4BC();
          (*(*(v109 - 8) + 16))(v31, v32, v109);
          v110 = type metadata accessor for USOParse(0);
          v111 = v110[5];
          v112 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v32[v111], 1, v112))
          {
            v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v31[v111], &v32[v111], *(*(v113 - 8) + 64));
          }

          else
          {
            (*(*(v112 - 8) + 16))(&v31[v111], &v32[v111], v112);
            __swift_storeEnumTagSinglePayload(&v31[v111], 0, 1, v112);
          }

          v204 = v110[6];
          v205 = &v31[v204];
          v206 = &v32[v204];
          v207 = *(v206 + 1);
          *v205 = *v206;
          *(v205 + 1) = v207;
          v208 = v110[7];
          v209 = &v31[v208];
          v210 = &v32[v208];
          v209[4] = v210[4];
          *v209 = *v210;

          goto LABEL_96;
        case 7u:
          v83 = sub_1DD0DB4BC();
          (*(*(v83 - 8) + 16))(v31, v32, v83);
          v84 = type metadata accessor for USOParse(0);
          v85 = v84[5];
          v86 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v32[v85], 1, v86))
          {
            v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v31[v85], &v32[v85], *(*(v87 - 8) + 64));
          }

          else
          {
            (*(*(v86 - 8) + 16))(&v31[v85], &v32[v85], v86);
            __swift_storeEnumTagSinglePayload(&v31[v85], 0, 1, v86);
          }

          v174 = v84[6];
          v175 = &v31[v174];
          v176 = &v32[v174];
          v177 = *(v176 + 1);
          *v175 = *v176;
          *(v175 + 1) = v177;
          v178 = v84[7];
          v179 = &v31[v178];
          v180 = &v32[v178];
          v179[4] = v180[4];
          *v179 = *v180;
          v181 = type metadata accessor for LinkParse(0);
          v182 = v181[5];
          v183 = &v31[v182];
          v184 = &v32[v182];
          v185 = *(v184 + 1);
          *v183 = *v184;
          *(v183 + 1) = v185;
          v186 = v181[6];
          v187 = &v31[v186];
          v188 = &v32[v186];
          v189 = *(v188 + 1);
          *v187 = *v188;
          *(v187 + 1) = v189;
          v190 = v181[7];
          v191 = &v31[v190];
          v192 = &v32[v190];
          v193 = *(v192 + 1);
          *v191 = *v192;
          *(v191 + 1) = v193;

          goto LABEL_96;
        case 8u:
          v114 = sub_1DD0DD12C();
          (*(*(v114 - 8) + 16))(v31, v32, v114);
          v115 = type metadata accessor for NLRouterParse(0);
          v116 = *(v115 + 20);
          v117 = &v31[v116];
          v118 = &v32[v116];
          v119 = *(v118 + 1);
          *v117 = *v118;
          *(v117 + 1) = v119;
          v120 = *(v115 + 24);
          v278 = v115;
          __dstb = &v31[v120];
          v121 = &v32[v120];
          v122 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v121, 1, v122))
          {
            v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v121, *(*(v123 - 8) + 64));
          }

          else
          {
            v211 = sub_1DD0DB4BC();
            (*(*(v211 - 8) + 16))(__dstb, v121, v211);
            v212 = v122[5];
            v275 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v121[v212], 1, v275))
            {
              v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v212], &v121[v212], *(*(v213 - 8) + 64));
            }

            else
            {
              (*(*(v275 - 8) + 16))(&__dstb[v212], &v121[v212]);
              __swift_storeEnumTagSinglePayload(&__dstb[v212], 0, 1, v275);
            }

            v253 = v122[6];
            v254 = &__dstb[v253];
            v255 = &v121[v253];
            v256 = *(v255 + 1);
            *v254 = *v255;
            *(v254 + 1) = v256;
            v257 = v122[7];
            v258 = &__dstb[v257];
            v259 = &v121[v257];
            v258[4] = v259[4];
            *v258 = *v259;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v122);
          }

          v260 = *(v278 + 28);
          v261 = *&v32[v260];
          *&v31[v260] = v261;
          v262 = v261;
          goto LABEL_96;
        case 9u:
          v74 = sub_1DD0DD08C();
          (*(*(v74 - 8) + 16))(v31, v32, v74);
LABEL_96:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v31, v32, *(*(v33 - 8) + 64));
          break;
      }

      *(a1 + v29[6]) = *(a2 + v29[6]);
      v263 = v29[7];
      v264 = a1 + v263;
      v265 = a2 + v263;
      v266 = *(a2 + v263 + 24);

      if (v266)
      {
        v267 = *(v265 + 4);
        *(v264 + 3) = v266;
        *(v264 + 4) = v267;
        (**(v266 - 8))(v264, v265, v266);
      }

      else
      {
        v268 = *(v265 + 1);
        *v264 = *v265;
        *(v264 + 1) = v268;
        *(v264 + 4) = *(v265 + 4);
      }

      *(a1 + v29[8]) = *(a2 + v29[8]);
      v269 = swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData(255, v269, v270, v271);
      sub_1DD0DE97C();
      v272 = swift_getTupleTypeMetadata2();
      *(a1 + *(v272 + 48)) = *(a2 + *(v272 + 48));
      sub_1DD0DCF8C();
    case 6u:
      v35 = *a2;
      v36 = a2[1];
      *a1 = v35;
      a1[1] = v36;
      sub_1DD0DCF8C();
    case 7u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 8u:
      v40 = a2[1];
      *a1 = *a2;
      a1[1] = v40;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 9u:
      v22 = *a2;
      v23 = a2[1];
      *a1 = v22;
      a1[1] = v23;
      sub_1DD0DCF8C();
    case 0xAu:
      v37 = *a2;
      v38 = a2[1];
      v39 = a2[2];
      sub_1DCB72E48(v37, v38, v39);
      *a1 = v37;
      a1[1] = v38;
      a1[2] = v39;
      goto LABEL_101;
    case 0xBu:
      v13 = *a2;
      v14 = v13;
      *a1 = v13;
LABEL_101:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v41 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v41);
      break;
  }

  return result;
}

void sub_1DCB7C864(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 152);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  v8 = type metadata accessor for RCHFlowAsync.State(0, v6, *(v5 + 88), v7);
  (*(*(v8 - 8) + 24))(v1 + v4, a1, v8);
  v9 = swift_endAccess();
  sub_1DCB7E62C(v9, v10, v11, v12);
}

unint64_t *sub_1DCB7C958(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 - 8);
    (*(v5 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v6 = sub_1DD0DB04C();
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        v7 = type metadata accessor for Input(0);
        v8 = v7[5];
        v9 = a1 + v8;
        v10 = a2 + v8;
        v11 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v12 = sub_1DD0DC76C();
            (*(*(v12 - 8) + 16))(v9, v10, v12);
            goto LABEL_89;
          case 1u:
            v68 = sub_1DD0DC76C();
            (*(*(v68 - 8) + 16))(v9, v10, v68);
            v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v9[*(v69 + 48)] = *&v10[*(v69 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v9 = *v10;
            *(v9 + 1) = *(v10 + 1);
            *(v9 + 2) = *(v10 + 2);

            goto LABEL_89;
          case 3u:
            *v9 = *v10;
            swift_unknownObjectRetain();
            goto LABEL_89;
          case 4u:
            v41 = sub_1DD0DB1EC();
            (*(*(v41 - 8) + 16))(v9, v10, v41);
            goto LABEL_89;
          case 5u:
            v75 = *v10;
            *v9 = *v10;
            v76 = v75;
            goto LABEL_89;
          case 6u:
            v79 = sub_1DD0DB4BC();
            (*(*(v79 - 8) + 16))(v9, v10, v79);
            v80 = type metadata accessor for USOParse(0);
            v81 = v80[5];
            v82 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v10[v81], 1, v82))
            {
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v9[v81], &v10[v81], *(*(v83 - 8) + 64));
            }

            else
            {
              (*(*(v82 - 8) + 16))(&v9[v81], &v10[v81], v82);
              __swift_storeEnumTagSinglePayload(&v9[v81], 0, 1, v82);
            }

            v170 = v80[6];
            v171 = &v9[v170];
            v172 = &v10[v170];
            *v171 = *v172;
            *(v171 + 1) = *(v172 + 1);
            v173 = v80[7];
            v174 = &v9[v173];
            v175 = &v10[v173];
            v176 = *v175;
            v174[4] = v175[4];
            *v174 = v176;

            goto LABEL_89;
          case 7u:
            v63 = sub_1DD0DB4BC();
            (*(*(v63 - 8) + 16))(v9, v10, v63);
            v64 = type metadata accessor for USOParse(0);
            v65 = v64[5];
            v66 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v10[v65], 1, v66))
            {
              v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v9[v65], &v10[v65], *(*(v67 - 8) + 64));
            }

            else
            {
              (*(*(v66 - 8) + 16))(&v9[v65], &v10[v65], v66);
              __swift_storeEnumTagSinglePayload(&v9[v65], 0, 1, v66);
            }

            v136 = v64[6];
            v137 = &v9[v136];
            v138 = &v10[v136];
            *v137 = *v138;
            *(v137 + 1) = *(v138 + 1);
            v139 = v64[7];
            v140 = &v9[v139];
            v141 = &v10[v139];
            v142 = *v141;
            v140[4] = v141[4];
            *v140 = v142;
            v143 = type metadata accessor for LinkParse(0);
            v144 = v143[5];
            v145 = &v9[v144];
            v146 = &v10[v144];
            *v145 = *v146;
            *(v145 + 1) = *(v146 + 1);
            v147 = v143[6];
            v148 = &v9[v147];
            v149 = &v10[v147];
            *v148 = *v149;
            *(v148 + 1) = *(v149 + 1);
            v150 = v143[7];
            v151 = &v9[v150];
            v152 = &v10[v150];
            *v151 = *v152;
            *(v151 + 1) = *(v152 + 1);

            goto LABEL_89;
          case 8u:
            v84 = sub_1DD0DD12C();
            (*(*(v84 - 8) + 16))(v9, v10, v84);
            v85 = type metadata accessor for NLRouterParse(0);
            v86 = *(v85 + 20);
            v87 = &v9[v86];
            v88 = &v10[v86];
            *v87 = *v88;
            *(v87 + 1) = *(v88 + 1);
            v89 = *(v85 + 24);
            v253 = v85;
            __dsta = &v9[v89];
            v90 = &v10[v89];
            v91 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v90, 1, v91))
            {
              v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dsta, v90, *(*(v92 - 8) + 64));
            }

            else
            {
              v177 = sub_1DD0DB4BC();
              (*(*(v177 - 8) + 16))(__dsta, v90, v177);
              v178 = v91[5];
              v250 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v90[v178], 1, v250))
              {
                v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dsta[v178], &v90[v178], *(*(v179 - 8) + 64));
              }

              else
              {
                (*(*(v250 - 8) + 16))(&__dsta[v178], &v90[v178]);
                __swift_storeEnumTagSinglePayload(&__dsta[v178], 0, 1, v250);
              }

              v210 = v91[6];
              v211 = &__dsta[v210];
              v212 = &v90[v210];
              *v211 = *v212;
              *(v211 + 1) = *(v212 + 1);
              v213 = v91[7];
              v214 = &__dsta[v213];
              v215 = &v90[v213];
              v216 = *v215;
              v214[4] = v215[4];
              *v214 = v216;

              __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v91);
            }

            v217 = *(v253 + 28);
            v218 = *&v10[v217];
            *&v9[v217] = v218;
            v219 = v218;
            goto LABEL_89;
          case 9u:
            v44 = sub_1DD0DD08C();
            (*(*(v44 - 8) + 16))(v9, v10, v44);
LABEL_89:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v9, v10, *(*(v11 - 8) + 64));
            break;
        }

        *(a1 + v7[6]) = *(a2 + v7[6]);
        v220 = v7[7];
        v221 = a1 + v220;
        v222 = a2 + v220;
        v223 = *(a2 + v220 + 24);

        if (v223)
        {
          *(v221 + 3) = v223;
          *(v221 + 4) = *(v222 + 4);
          (**(v223 - 8))(v221, v222, v223);
        }

        else
        {
          v224 = *v222;
          v225 = *(v222 + 1);
          *(v221 + 4) = *(v222 + 4);
          *v221 = v224;
          *(v221 + 1) = v225;
        }

        *(a1 + v7[8]) = *(a2 + v7[8]);
        swift_getAssociatedTypeWitness();
        v226 = *(swift_getTupleTypeMetadata2() + 48);
        v227 = *(a2 + v226);
        *(a1 + v226) = v227;
        v228 = v227;
        goto LABEL_102;
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        a1[1] = a2[1];
        sub_1DD0DCF8C();
      case 3u:
        *a1 = *a2;
        a1[1] = a2[1];
        sub_1DD0DCF8C();
      case 4u:
        v15 = sub_1DD0DB04C();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        v16 = type metadata accessor for Input(0);
        v17 = v16[5];
        v18 = a1 + v17;
        v19 = a2 + v17;
        v20 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v21 = sub_1DD0DC76C();
            (*(*(v21 - 8) + 16))(v18, v19, v21);
            goto LABEL_81;
          case 1u:
            v42 = sub_1DD0DC76C();
            (*(*(v42 - 8) + 16))(v18, v19, v42);
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v18[*(v43 + 48)] = *&v19[*(v43 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v18 = *v19;
            *(v18 + 1) = *(v19 + 1);
            *(v18 + 2) = *(v19 + 2);

            goto LABEL_81;
          case 3u:
            *v18 = *v19;
            swift_unknownObjectRetain();
            goto LABEL_81;
          case 4u:
            v34 = sub_1DD0DB1EC();
            (*(*(v34 - 8) + 16))(v18, v19, v34);
            goto LABEL_81;
          case 5u:
            v45 = *v19;
            *v18 = *v19;
            v46 = v45;
            goto LABEL_81;
          case 6u:
            v48 = sub_1DD0DB4BC();
            (*(*(v48 - 8) + 16))(v18, v19, v48);
            v49 = type metadata accessor for USOParse(0);
            v50 = v49[5];
            v51 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v19[v50], 1, v51))
            {
              v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v18[v50], &v19[v50], *(*(v52 - 8) + 64));
            }

            else
            {
              (*(*(v51 - 8) + 16))(&v18[v50], &v19[v50], v51);
              __swift_storeEnumTagSinglePayload(&v18[v50], 0, 1, v51);
            }

            v126 = v49[6];
            v127 = &v18[v126];
            v128 = &v19[v126];
            *v127 = *v128;
            *(v127 + 1) = *(v128 + 1);
            v129 = v49[7];
            v130 = &v18[v129];
            v131 = &v19[v129];
            v132 = *v131;
            v130[4] = v131[4];
            *v130 = v132;

            goto LABEL_81;
          case 7u:
            v36 = sub_1DD0DB4BC();
            (*(*(v36 - 8) + 16))(v18, v19, v36);
            v37 = type metadata accessor for USOParse(0);
            v38 = v37[5];
            v39 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v19[v38], 1, v39))
            {
              v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v18[v38], &v19[v38], *(*(v40 - 8) + 64));
            }

            else
            {
              (*(*(v39 - 8) + 16))(&v18[v38], &v19[v38], v39);
              __swift_storeEnumTagSinglePayload(&v18[v38], 0, 1, v39);
            }

            v109 = v37[6];
            v110 = &v18[v109];
            v111 = &v19[v109];
            *v110 = *v111;
            *(v110 + 1) = *(v111 + 1);
            v112 = v37[7];
            v113 = &v18[v112];
            v114 = &v19[v112];
            v115 = *v114;
            v113[4] = v114[4];
            *v113 = v115;
            v116 = type metadata accessor for LinkParse(0);
            v117 = v116[5];
            v118 = &v18[v117];
            v119 = &v19[v117];
            *v118 = *v119;
            *(v118 + 1) = *(v119 + 1);
            v120 = v116[6];
            v121 = &v18[v120];
            v122 = &v19[v120];
            *v121 = *v122;
            *(v121 + 1) = *(v122 + 1);
            v123 = v116[7];
            v124 = &v18[v123];
            v125 = &v19[v123];
            *v124 = *v125;
            *(v124 + 1) = *(v125 + 1);

            goto LABEL_81;
          case 8u:
            v53 = sub_1DD0DD12C();
            (*(*(v53 - 8) + 16))(v18, v19, v53);
            v54 = type metadata accessor for NLRouterParse(0);
            v55 = *(v54 + 20);
            v56 = &v18[v55];
            v57 = &v19[v55];
            *v56 = *v57;
            *(v56 + 1) = *(v57 + 1);
            v58 = *(v54 + 24);
            v252 = v54;
            __dst = &v18[v58];
            v59 = &v19[v58];
            v60 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v59, 1, v60))
            {
              v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dst, v59, *(*(v61 - 8) + 64));
            }

            else
            {
              v133 = sub_1DD0DB4BC();
              (*(*(v133 - 8) + 16))(__dst, v59, v133);
              v134 = v60[5];
              v249 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v59[v134], 1, v249))
              {
                v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dst[v134], &v59[v134], *(*(v135 - 8) + 64));
              }

              else
              {
                (*(*(v249 - 8) + 16))(&__dst[v134], &v59[v134]);
                __swift_storeEnumTagSinglePayload(&__dst[v134], 0, 1, v249);
              }

              v190 = v60[6];
              v191 = &__dst[v190];
              v192 = &v59[v190];
              *v191 = *v192;
              *(v191 + 1) = *(v192 + 1);
              v193 = v60[7];
              v194 = &__dst[v193];
              v195 = &v59[v193];
              v196 = *v195;
              v194[4] = v195[4];
              *v194 = v196;

              __swift_storeEnumTagSinglePayload(__dst, 0, 1, v60);
            }

            v197 = *(v252 + 28);
            v198 = *&v19[v197];
            *&v18[v197] = v198;
            v199 = v198;
            goto LABEL_81;
          case 9u:
            v35 = sub_1DD0DD08C();
            (*(*(v35 - 8) + 16))(v18, v19, v35);
LABEL_81:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v18, v19, *(*(v20 - 8) + 64));
            break;
        }

        *(a1 + v16[6]) = *(a2 + v16[6]);
        v200 = v16[7];
        v201 = a1 + v200;
        v202 = a2 + v200;
        v203 = *(a2 + v200 + 24);

        if (v203)
        {
          *(v201 + 3) = v203;
          *(v201 + 4) = *(v202 + 4);
          (**(v203 - 8))(v201, v202, v203);
        }

        else
        {
          v204 = *v202;
          v205 = *(v202 + 1);
          *(v201 + 4) = *(v202 + 4);
          *v201 = v204;
          *(v201 + 1) = v205;
        }

        *(a1 + v16[8]) = *(a2 + v16[8]);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v207, v208);
        sub_1DD0DE97C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
        sub_1DD0DCF8C();
      case 5u:
        v22 = sub_1DD0DB04C();
        (*(*(v22 - 8) + 16))(a1, a2, v22);
        v23 = type metadata accessor for Input(0);
        v24 = v23[5];
        v25 = a1 + v24;
        v26 = a2 + v24;
        v27 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v28 = sub_1DD0DC76C();
            (*(*(v28 - 8) + 16))(v25, v26, v28);
            goto LABEL_97;
          case 1u:
            v77 = sub_1DD0DC76C();
            (*(*(v77 - 8) + 16))(v25, v26, v77);
            v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v25[*(v78 + 48)] = *&v26[*(v78 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v25 = *v26;
            *(v25 + 1) = *(v26 + 1);
            *(v25 + 2) = *(v26 + 2);

            goto LABEL_97;
          case 3u:
            *v25 = *v26;
            swift_unknownObjectRetain();
            goto LABEL_97;
          case 4u:
            v47 = sub_1DD0DB1EC();
            (*(*(v47 - 8) + 16))(v25, v26, v47);
            goto LABEL_97;
          case 5u:
            v93 = *v26;
            *v25 = *v26;
            v94 = v93;
            goto LABEL_97;
          case 6u:
            v95 = sub_1DD0DB4BC();
            (*(*(v95 - 8) + 16))(v25, v26, v95);
            v96 = type metadata accessor for USOParse(0);
            v97 = v96[5];
            v98 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v26[v97], 1, v98))
            {
              v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v25[v97], &v26[v97], *(*(v99 - 8) + 64));
            }

            else
            {
              (*(*(v98 - 8) + 16))(&v25[v97], &v26[v97], v98);
              __swift_storeEnumTagSinglePayload(&v25[v97], 0, 1, v98);
            }

            v180 = v96[6];
            v181 = &v25[v180];
            v182 = &v26[v180];
            *v181 = *v182;
            *(v181 + 1) = *(v182 + 1);
            v183 = v96[7];
            v184 = &v25[v183];
            v185 = &v26[v183];
            v186 = *v185;
            v184[4] = v185[4];
            *v184 = v186;

            goto LABEL_97;
          case 7u:
            v70 = sub_1DD0DB4BC();
            (*(*(v70 - 8) + 16))(v25, v26, v70);
            v71 = type metadata accessor for USOParse(0);
            v72 = v71[5];
            v73 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v26[v72], 1, v73))
            {
              v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v25[v72], &v26[v72], *(*(v74 - 8) + 64));
            }

            else
            {
              (*(*(v73 - 8) + 16))(&v25[v72], &v26[v72], v73);
              __swift_storeEnumTagSinglePayload(&v25[v72], 0, 1, v73);
            }

            v153 = v71[6];
            v154 = &v25[v153];
            v155 = &v26[v153];
            *v154 = *v155;
            *(v154 + 1) = *(v155 + 1);
            v156 = v71[7];
            v157 = &v25[v156];
            v158 = &v26[v156];
            v159 = *v158;
            v157[4] = v158[4];
            *v157 = v159;
            v160 = type metadata accessor for LinkParse(0);
            v161 = v160[5];
            v162 = &v25[v161];
            v163 = &v26[v161];
            *v162 = *v163;
            *(v162 + 1) = *(v163 + 1);
            v164 = v160[6];
            v165 = &v25[v164];
            v166 = &v26[v164];
            *v165 = *v166;
            *(v165 + 1) = *(v166 + 1);
            v167 = v160[7];
            v168 = &v25[v167];
            v169 = &v26[v167];
            *v168 = *v169;
            *(v168 + 1) = *(v169 + 1);

            goto LABEL_97;
          case 8u:
            v100 = sub_1DD0DD12C();
            (*(*(v100 - 8) + 16))(v25, v26, v100);
            v101 = type metadata accessor for NLRouterParse(0);
            v102 = *(v101 + 20);
            v103 = &v25[v102];
            v104 = &v26[v102];
            *v103 = *v104;
            *(v103 + 1) = *(v104 + 1);
            v105 = *(v101 + 24);
            v254 = v101;
            __dstb = &v25[v105];
            v106 = &v26[v105];
            v107 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v106, 1, v107))
            {
              v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v106, *(*(v108 - 8) + 64));
            }

            else
            {
              v187 = sub_1DD0DB4BC();
              (*(*(v187 - 8) + 16))(__dstb, v106, v187);
              v188 = v107[5];
              v251 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v106[v188], 1, v251))
              {
                v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v188], &v106[v188], *(*(v189 - 8) + 64));
              }

              else
              {
                (*(*(v251 - 8) + 16))(&__dstb[v188], &v106[v188]);
                __swift_storeEnumTagSinglePayload(&__dstb[v188], 0, 1, v251);
              }

              v229 = v107[6];
              v230 = &__dstb[v229];
              v231 = &v106[v229];
              *v230 = *v231;
              *(v230 + 1) = *(v231 + 1);
              v232 = v107[7];
              v233 = &__dstb[v232];
              v234 = &v106[v232];
              v235 = *v234;
              v233[4] = v234[4];
              *v233 = v235;

              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v107);
            }

            v236 = *(v254 + 28);
            v237 = *&v26[v236];
            *&v25[v236] = v237;
            v238 = v237;
            goto LABEL_97;
          case 9u:
            v62 = sub_1DD0DD08C();
            (*(*(v62 - 8) + 16))(v25, v26, v62);
LABEL_97:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v25, v26, *(*(v27 - 8) + 64));
            break;
        }

        *(a1 + v23[6]) = *(a2 + v23[6]);
        v239 = v23[7];
        v240 = a1 + v239;
        v241 = a2 + v239;
        v242 = *(a2 + v239 + 24);

        if (v242)
        {
          *(v240 + 3) = v242;
          *(v240 + 4) = *(v241 + 4);
          (**(v242 - 8))(v240, v241, v242);
        }

        else
        {
          v243 = *v241;
          v244 = *(v241 + 1);
          *(v240 + 4) = *(v241 + 4);
          *v240 = v243;
          *(v240 + 1) = v244;
        }

        *(a1 + v23[8]) = *(a2 + v23[8]);
        v245 = swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData(255, v245, v246, v247);
        sub_1DD0DE97C();
        v248 = swift_getTupleTypeMetadata2();
        *(a1 + *(v248 + 48)) = *(a2 + *(v248 + 48));
        sub_1DD0DCF8C();
      case 6u:
        *a1 = *a2;
        a1[1] = a2[1];
        sub_1DD0DCF8C();
      case 7u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 8u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 9u:
        *a1 = *a2;
        a1[1] = a2[1];
        sub_1DD0DCF8C();
      case 0xAu:
        v29 = *a2;
        v30 = a2[1];
        v31 = a2[2];
        sub_1DCB72E48(v29, v30, v31);
        *a1 = v29;
        a1[1] = v30;
        a1[2] = v31;
        goto LABEL_102;
      case 0xBu:
        v13 = *a2;
        v14 = v13;
        *a1 = v13;
LABEL_102:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v32 = *(v5 + 64);

        return memcpy(a1, a2, v32);
    }
  }

  return a1;
}

void sub_1DCB7E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RCHFlowAsync.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  MEMORY[0x1EEE9AC00](v5, v6);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

unint64_t sub_1DCB7E8CC(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v6 = 0x696C616974696E49;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD000000000000017;
      break;
    case 2u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD00000000000001DLL;
      break;
    case 3u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD000000000000021;
      break;
    case 4u:
      type metadata accessor for Input(255);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v8, v9);
      sub_1DD0DE97C();
      swift_getTupleTypeMetadata2();

      sub_1DCEED454();
      v6 = 0x706552736465654ELL;
      break;
    case 5u:
      v6 = 0xD000000000000016;
      type metadata accessor for Input(255);
      v10 = swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData(255, v10, v11, v12);
      sub_1DD0DE97C();
      swift_getTupleTypeMetadata2();

      goto LABEL_13;
    case 6u:
      (*(v3 + 8))(v5, a1);
      v6 = 0x4365766C6F736552;
      break;
    case 7u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD000000000000018;
      break;
    case 8u:
      (*(v3 + 8))(v5, a1);
      v6 = 0x656C646E6148;
      break;
    case 9u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD000000000000010;
      break;
    case 0xAu:
      (*(v3 + 8))(v5, a1);
      v6 = 0x6574656C706D6F43;
      break;
    case 0xBu:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD000000000000014;
      break;
    case 0xCu:
      return v6;
    case 0xDu:
      v6 = 0x64657472617453;
      break;
    default:
      v6 = 0xD000000000000016;
      type metadata accessor for Input(255);
      swift_getAssociatedTypeWitness();

LABEL_13:
      sub_1DCEED454();
      break;
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_128_2()
{
  *(v0 + 40) = v1;

  return sub_1DCB17D04(v1, v0 + 104);
}

uint64_t OUTLINED_FUNCTION_128_3()
{

  return sub_1DD0DF0AC();
}

uint64_t sub_1DCB7EE3C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 120)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v5 + 128)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v6 + 136)));
  OUTLINED_FUNCTION_66();
  sub_1DCB799DC(*(v0 + *(v7 + 144)), *(v0 + *(v7 + 144) + 8), *(v0 + *(v7 + 144) + 16), *(v0 + *(v7 + 144) + 24));
  return v0;
}

uint64_t sub_1DCB7EF3C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_1DCB7EFB4()
{
  OUTLINED_FUNCTION_39();
  *(v1 + 568) = v0;
  *(v1 + 560) = v2;
  sub_1DD0DCC7C();
}

void sub_1DCB7F1FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  sub_1DCB7EFB4();
}

uint64_t Parse.DirectInvocation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void sub_1DCB7F3C0()
{
  OUTLINED_FUNCTION_20_10();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4(0, AssociatedTypeWitness);
  (*(v10 + 16))(v15, v0, v8);
  v2(v15, v8, v6);
  OUTLINED_FUNCTION_15_5();
}

uint64_t AnyValueFlow.__allocating_init<A>(_:)()
{
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_57_2();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_116();
  AnyValueFlow.init<A>(_:)();
  return v0;
}

uint64_t sub_1DCB7F560(uint64_t a1, uint64_t a2)
{
  v8 = type metadata accessor for DefaultSharingPolicyCheckFlowStrategy();
  v9 = &off_1F5872EA8;
  *&v7 = a1;
  *(a2 + 16) = 0;
  if (qword_1EDE4CCC8 != -1)
  {
    OUTLINED_FUNCTION_3_115(&qword_1EDE4CCC8);
  }

  sub_1DCB17CA0(&qword_1EDE4CCD0, a2 + 24);
  if (qword_1EDE4CC80 != -1)
  {
    OUTLINED_FUNCTION_2_106(&qword_1EDE4CC80);
  }

  sub_1DCB17CA0(&qword_1EDE4CC88, a2 + 64);
  v4 = type metadata accessor for DefaultSharingPolicyProvider();
  inited = swift_initStaticObject();
  *(a2 + 128) = v4;
  *(a2 + 136) = &off_1F5872E98;
  *(a2 + 104) = inited;
  sub_1DCAFF9E8(&v7, a2 + 144);
  return a2;
}

uint64_t GuardFlow.init(preconditionFlows:)(unint64_t a1)
{
  v2 = sub_1DCB7F6D8(a1, sub_1DCE1A29C, sub_1DCF77C68);
  sub_1DCB7F77C(v2, 0);
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = 0;
  return v1;
}

unint64_t sub_1DCB7F6D8(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1DD0DEB3C();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void sub_1DCB7F77C(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_40();
    return;
  }

LABEL_9:
  __break(1u);
}

void Flow.guarded<A>(by:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v27 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ConditionalFlow(0, AssociatedTypeWitness, v24, v25);
  (*(v18 + 16))(v22, v10, v6);
  (*(v12 + 16))(v16, v1, v8);
  ConditionalFlow.__allocating_init<A, B>(preconditionFlow:executableFlow:)(v22, v16, v6, v8, v27, v4);
  OUTLINED_FUNCTION_49();
}

uint64_t ConditionalFlow.__allocating_init<A, B>(preconditionFlow:executableFlow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_13();
  v12 = swift_allocObject();
  ConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)(v9, v8, v7, v6, a5, a6);
  return v12;
}

void *ConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  OUTLINED_FUNCTION_1_13();
  v13 = *v6;
  Flow.eraseToAnyValueFlow()(v14, v15);
  OUTLINED_FUNCTION_55_1();
  *(v6 + *(v16 + 96)) = v17;
  Flow.eraseToAnyValueFlow()(v7, a6);
  v19 = v18;
  (*(*(v7 - 8) + 8))(v9, v7);
  (*(*(v8 - 8) + 8))(v10, v8);
  OUTLINED_FUNCTION_55_1();
  *(v11 + *(v20 + 104)) = v19;
  OUTLINED_FUNCTION_55_1();
  v22 = *(v21 + 88);
  v25 = type metadata accessor for ConditionalFlowResult(0, *(v13 + 80), v23, v24);
  __swift_storeEnumTagSinglePayload(v11 + v22, 1, 2, v25);
  return v11;
}

double sub_1DCB7FB14()
{
  OUTLINED_FUNCTION_61_9();
  Flow.eraseToAnyFlow()();
  v1 = OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_47_10(v1);
  OUTLINED_FUNCTION_53_7();
  *(v0 + 24) = 0;
  return OUTLINED_FUNCTION_10_32();
}

uint64_t sub_1DCB7FB98@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_66();
  v3 = *(v2 + 80);
  v6 = type metadata accessor for ConditionalFlow.State(0, v3, v4, v5);
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - v11;
  sub_1DCB7FCDC(&v17 - v11);
  v15 = type metadata accessor for ConditionalFlowResult(0, v3, v13, v14);
  if (!__swift_getEnumTagSinglePayload(v12, 2, v15))
  {
    return (*(*(v15 - 8) + 32))(a1, v12, v15);
  }

  (*(v8 + 8))(v12, v6);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

uint64_t sub_1DCB7FCDC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 88);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  type metadata accessor for ConditionalFlow.State(0, *(v5 + 80), v6, v7);
  OUTLINED_FUNCTION_2();
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t sub_1DCB7FD78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB193FC;

  return sub_1DCB7FE14(a1);
}

uint64_t sub_1DCB7FE14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  OUTLINED_FUNCTION_66();
  v4 = *(v3 + 80);
  v2[4] = v4;
  v7 = type metadata accessor for ConditionalFlow.State(0, v4, v5, v6);
  v2[5] = v7;
  v2[6] = *(v7 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB55264, 0, 0);
}

uint64_t OUTLINED_FUNCTION_59_6(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v5;
  *(v2 + 96) = v4;
  v9 = *(v2 + 40);

  return sub_1DCB4F1DC(v7, v9, v3, v6);
}

uint64_t OUTLINED_FUNCTION_59_7@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *(v1 + a1 + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);

  return AceServiceInvokerAsync.submitAndForget(_:)(v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_59_9(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_59_10(float a1)
{
  *v1 = a1;
}

uint64_t OUTLINED_FUNCTION_59_14()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_59_20()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_59_21()
{
}

void OUTLINED_FUNCTION_59_22(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_59_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Resolvable(0, v4, a3, a4);
}

void sub_1DCB80128(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 32);
  type metadata accessor for AnyChildCompletion();
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v11 + 16) = a5;
  *(v11 + 24) = v12;
  v13 = type metadata accessor for ExecuteResponse(0);
  v14 = *(v13 + 36);
  v15 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(a6 + v14, 1, 1, v15);
  *a6 = 0;
  *(a6 + 8) = v10;
  *(a6 + 16) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 24) = v11;
  *(a6 + 48) = -4;
  v16 = (a6 + *(v13 + 40));
  *v16 = 0u;
  v16[1] = 0u;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB80218(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB193FC;

  return sub_1DCB8058C(a1);
}

uint64_t sub_1DCB802B4()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  if ((*(v1 + 48) & 1) == 0)
  {
    swift_beginAccess();
    sub_1DCB805AC();
    v7 = v6;
    swift_endAccess();
    if (v7)
    {
      sub_1DD0DCF8C();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "GuardFlow failed a previous guard. Exiting as complete.", v5, 2u);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  v9.n128_f64[0] = static ExecuteResponse.complete()();
  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1DCB8058C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB802B4, 0, 0);
}

void sub_1DCB805AC()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1 != v2 >> 1)
  {
    if (v1 < (v2 >> 1))
    {
      sub_1DCB54800(v1 + 1, v2 >> 1, *v0, v0[1], v1, v2);
      sub_1DD0DCF8C();
    }

    __break(1u);
  }
}

uint64_t sub_1DCB80664()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t static CommonGuardFlowUtils.makeGuardFlow(withGuards:)(uint64_t a1)
{
  type metadata accessor for GuardFlow();

  return GuardFlow.__allocating_init(withGuards:)(v1);
}

uint64_t GuardFlow.__allocating_init(withGuards:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DD0DED0C();
    sub_1DD0DCF8C();
  }

  v1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for GuardFlow();
  swift_allocObject();
  return GuardFlow.init(preconditionFlows:)(v1);
}

void sub_1DCB807EC()
{
  type metadata accessor for DefaultSharingPolicyCheckFlowStrategy();
  inited = swift_initStaticObject();
  type metadata accessor for SharingPolicyCheckFlow();
  v1 = swift_allocObject();
  v2 = sub_1DCB7F560(inited, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2420, &qword_1DD0E8410);
  swift_allocObject();
  sub_1DCB80A54(v2);
}

uint64_t RefreshableDeviceState.restrictedCommands.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v4);
  v1 = OUTLINED_FUNCTION_12_3();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

void sub_1DCB80900(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for AnyFlow();
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB80A90()
{
  OUTLINED_FUNCTION_13_7();
  v2 = type metadata accessor for SharingPolicyCheckFlow();
  v0[4] = v1;
  v0[7] = v2;
  v0[8] = &unk_1DD0E2D78;
  v0[9] = v1;
  v0[10] = sub_1DCBF9A50;
  v0[11] = v1;
  v0[12] = &unk_1DD0E2D88;
  v0[13] = v1;
  v0[14] = sub_1DCB81794;
  OUTLINED_FUNCTION_3_16();
  v16 = v3;
  OUTLINED_FUNCTION_145_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1FB0, &qword_1DD0E2D90);
  OUTLINED_FUNCTION_143_0(v4, v5);
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_48_4(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18);
  return OUTLINED_FUNCTION_78_4();
}

uint64_t OUTLINED_FUNCTION_152_1()
{
  result = *(v1 - 136);
  *(v1 - 160) = *(v0 + 16);
  return result;
}

uint64_t sub_1DCB80BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7();
  Flow.eraseToAnyValueFlow()(a3, a4);
  v11 = v10;
  (*(v6 + 8))(v9, a3);
  return v11;
}

void sub_1DCB80CA8()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_14_23();
  v9 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v9, v10, v11, v12);
  OUTLINED_FUNCTION_47_7();
  if (!OUTLINED_FUNCTION_34_12(&v45, v46) || v45 == 2)
  {
    OUTLINED_FUNCTION_48_8();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    v14 = OUTLINED_FUNCTION_59_0(v13, qword_1EDE57E00);
    v15 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v15))
    {
      OUTLINED_FUNCTION_43_0();
      v46[0] = OUTLINED_FUNCTION_24_14();
      LODWORD(type metadata for GuardFlowResult.Kind) = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3170, &unk_1DD0E9300);
      v16 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_61_7(v16, v17);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v44 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v18 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_61_7(v18, v19);
      OUTLINED_FUNCTION_148();
      *(&type metadata for GuardFlowResult.Description + 6) = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v20, v21, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v22 = OUTLINED_FUNCTION_10_23();
    v23(v22);
    v24 = OUTLINED_FUNCTION_8_31();
    v27 = __swift_storeEnumTagSinglePayload(v24, v25, v26, v13);
    OUTLINED_FUNCTION_44_6(v27, v28, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v29)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v30 = sub_1DD0DD8EC();
      v31 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v31))
      {
        OUTLINED_FUNCTION_83();
        v46[0] = OUTLINED_FUNCTION_54();
        *v43 = 136315650;
        v32 = OUTLINED_FUNCTION_45_6("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Flow.swift");
        sub_1DCB10E9C(v32, v33, v46);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v34 = OUTLINED_FUNCTION_21_7();
        *(v43 + 24) = sub_1DCB10E9C(v34, v35, v36);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v37, v38, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v39 = OUTLINED_FUNCTION_13_18();
      v40(v39);
    }

    v41 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v41, v42);
  }

  LOBYTE(v44) = v45 & 1;
  v1(&v44);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB80FF0(char *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "GuardFlow applying result to existing exitValue.", v7, 2u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  result = swift_beginAccess();
  *(a2 + 48) = (*(a2 + 48) | v3) & 1;
  return result;
}

uint64_t sub_1DCB81104()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_17(v1);

  return SharingPolicyCheckFlow.execute()(v3);
}

BOOL sub_1DCB8118C@<W0>(_BYTE *a1@<X8>)
{
  result = SharingPolicyCheckFlow.exitValue.getter();
  *a1 = result;
  return result;
}

void sub_1DCB811D0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a2 + 80);
  v6 = type metadata accessor for ConditionalFlow.State(0, v5, a3, a4);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v11 = &v16 - v10;
  if (*a1 == 1)
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    v14 = type metadata accessor for ConditionalFlowResult(0, v5, v12, v13);
    v15 = 0;
  }

  else
  {
    v14 = type metadata accessor for ConditionalFlowResult(0, v5, v8, v9);
    v15 = 2;
  }

  __swift_storeEnumTagSinglePayload(v11, v15, 2, v14);
  sub_1DCB812C0(v11);
}

void sub_1DCB812C0(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 88);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v8 = type metadata accessor for ConditionalFlow.State(0, *(v5 + 80), v6, v7);
  (*(*(v8 - 8) + 24))(v1 + v4, a1, v8);
  v9 = swift_endAccess();
  sub_1DCB813A8(v9, v10, v11, v12);
}

void sub_1DCB813A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ConditionalFlow.State(0, *(*v4 + 80), a3, a4);
  MEMORY[0x1EEE9AC00](v5, v6);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB81644(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v8 = type metadata accessor for ConditionalFlowResult(0, *(a1 + 16), v6, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 2, v8);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0x7845736465656E2ELL;
    }
  }

  else
  {
    (*(v3 + 8))(v5, a1);
    return 0x74656C706D6F632ELL;
  }
}

BOOL sub_1DCB8179C@<W0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for GuardFlowResult;
  result = SharingPolicyCheckFlow.exitValue.getter();
  *a1 = result;
  return result;
}

void sub_1DCB817D8()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_46_8();
  type metadata accessor for AnyChildCompletion();
  sub_1DD0DCF8C();
}

uint64_t RefreshableDeviceState.isPod.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

uint64_t sub_1DCB81954()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

void SiriEnvironment.flowTask.getter()
{
  type metadata accessor for FlowTaskProvider();
  OUTLINED_FUNCTION_1_125(&qword_1EDE4B0C0);

  sub_1DD0DCA7C();
}

void sub_1DCB81AA8()
{
  OUTLINED_FUNCTION_61_9();
  v1 = OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_47_10(v1);
  OUTLINED_FUNCTION_53_7();
  *(v0 + 24) = 0;
  OUTLINED_FUNCTION_10_32();

  sub_1DD0DCF8C();
}

void sub_1DCB81B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a2 + 80);
  v6 = type metadata accessor for ConditionalFlow.State(0, v5, a3, a4);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  (*(*(v5 - 8) + 16))(&v13 - v8, a1, v5);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v5);
  v12 = type metadata accessor for ConditionalFlowResult(0, v5, v10, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 2, v12);
  sub_1DCB812C0(v9);
}

uint64_t MachineUtteranceBuilder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

void sub_1DCB81C48(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_1DD0DCF8C();
}

uint64_t RCHChildFlowProducersAsync.appResolutionBeforeNextResolveFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  result = sub_1DCB370A4(*(v1 + 144), *(v1 + 152));
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t RCHChildFlowProducersAsync.appResolutionFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  result = sub_1DCB370A4(*(v1 + 128), *(v1 + 136));
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  result = sub_1DCB370A4(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfirmationResponse(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DCB81E04);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  result = sub_1DCB370A4(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)()
{
  OUTLINED_FUNCTION_1_98();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v10 = OUTLINED_FUNCTION_0_93(v2, v3, v4, v5, v6, v7, v8, v9, v16);
  v11(v10);
  OUTLINED_FUNCTION_10_62();
  v12 = OUTLINED_FUNCTION_39_24();
  v13 = OUTLINED_FUNCTION_3_97(v12);
  v14(v13);
  return OUTLINED_FUNCTION_11_56();
}

{
  OUTLINED_FUNCTION_1_98();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v10 = OUTLINED_FUNCTION_0_93(v2, v3, v4, v5, v6, v7, v8, v9, v16);
  v11(v10);
  OUTLINED_FUNCTION_10_62();
  v12 = OUTLINED_FUNCTION_39_24();
  v13 = OUTLINED_FUNCTION_3_97(v12);
  v14(v13);
  return OUTLINED_FUNCTION_11_56();
}

uint64_t RCHChildFlowProducersAsync.continueInAppFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  result = sub_1DCB370A4(*(v1 + 112), *(v1 + 120));
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

void *sub_1DCB81F60()
{
  OUTLINED_FUNCTION_85_9();
  if (*v2)
  {
    v3 = *(v1 + 8);
    *v0 = *v2;
    v0[1] = v3;
    sub_1DD0DCF8C();
  }

  *v0 = *v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v1 + 24);
    v0[2] = v4;
    v0[3] = v5;
    sub_1DD0DCF8C();
  }

  *(v0 + 1) = *(v1 + 16);
  v6 = *(v1 + 32);
  if (v6)
  {
    v7 = *(v1 + 40);
    v0[4] = v6;
    v0[5] = v7;
    sub_1DD0DCF8C();
  }

  *(v0 + 2) = *(v1 + 32);
  v8 = *(v1 + 48);
  if (v8)
  {
    v9 = *(v1 + 56);
    v0[6] = v8;
    v0[7] = v9;
    sub_1DD0DCF8C();
  }

  *(v0 + 3) = *(v1 + 48);
  v10 = *(v1 + 64);
  if (v10)
  {
    v11 = *(v1 + 72);
    v0[8] = v10;
    v0[9] = v11;
    sub_1DD0DCF8C();
  }

  *(v0 + 4) = *(v1 + 64);
  v12 = *(v1 + 80);
  if (v12)
  {
    v13 = *(v1 + 88);
    v0[10] = v12;
    v0[11] = v13;
    sub_1DD0DCF8C();
  }

  *(v0 + 5) = *(v1 + 80);
  v14 = *(v1 + 96);
  if (v14)
  {
    v15 = *(v1 + 104);
    v0[12] = v14;
    v0[13] = v15;
    sub_1DD0DCF8C();
  }

  *(v0 + 6) = *(v1 + 96);
  v16 = *(v1 + 112);
  if (v16)
  {
    v17 = *(v1 + 120);
    v0[14] = v16;
    v0[15] = v17;
    sub_1DD0DCF8C();
  }

  *(v0 + 7) = *(v1 + 112);
  v18 = *(v1 + 128);
  if (v18)
  {
    v19 = *(v1 + 136);
    v0[16] = v18;
    v0[17] = v19;
    sub_1DD0DCF8C();
  }

  *(v0 + 8) = *(v1 + 128);
  v20 = *(v1 + 144);
  if (v20)
  {
    v21 = *(v1 + 152);
    v0[18] = v20;
    v0[19] = v21;
    sub_1DD0DCF8C();
  }

  *(v0 + 9) = *(v1 + 144);
  v22 = *(v1 + 160);
  if (v22)
  {
    v23 = *(v1 + 168);
    v0[20] = v22;
    v0[21] = v23;
    sub_1DD0DCF8C();
  }

  *(v0 + 10) = *(v1 + 160);
  return v0;
}

void sub_1DCB82130()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2890, &qword_1DD0E6C40);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24(&qword_1EDE4DB40);
  sub_1DD0DCEDC();
}

uint64_t OUTLINED_FUNCTION_125_3()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_125_5()
{

  sub_1DD0DCB0C();
}

uint64_t RCHChildFlowFactory.init(producers:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0;
  nullsub_1();
  memcpy(__srca, __dst, 0xB0uLL);
  sub_1DCB82380(&__srca[22]);
  memcpy((v1 + 16), __srca, 0x160uLL);
  return v1;
}

void static RCHChildFlowProducers.withRCHFlowDelegate<A>(delegate:)(uint64_t a1)
{
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void *sub_1DCB825A4(void *result)
{
  v1 = result;
  if (*result)
  {
  }

  if (v1[2])
  {
  }

  if (v1[4])
  {
  }

  if (v1[6])
  {
  }

  if (v1[8])
  {
  }

  if (v1[10])
  {
  }

  if (v1[12])
  {
  }

  if (v1[14])
  {
  }

  if (v1[16])
  {
  }

  if (v1[18])
  {
  }

  if (v1[20])
  {
  }

  return result;
}

void RCHFlowFactory.init(strategy:childFlowFactory:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  (*(v10 + 16))(a5, a1);
  *(a5 + *(type metadata accessor for RCHFlowFactory(0, a3, a4, v11) + 36)) = a2;
  sub_1DD0DCF8C();
}

void sub_1DCB82888()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [objc_opt_self() sharedStream];
  type metadata accessor for SiriAnalyticsInstrumentationClient();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  sub_1DCB829E8(v0, v2);
}

void sub_1DCB829E8(uint64_t a1, uint64_t a2)
{
  v11 = type metadata accessor for SiriAnalyticsInstrumentationClient();
  v12 = &off_1F5862290;
  v10[0] = a2;
  type metadata accessor for DialogGradingOutputPublisher();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  MEMORY[0x1EEE9AC00](v5, v5);
  v7 = (&v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  sub_1DCB82DA4(a1, *v7, v4);
}

uint64_t sub_1DCB82B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = type metadata accessor for ResolveConfirmHandleExecutor();
  v17 = &off_1F58710E8;
  v15[0] = a3;
  type metadata accessor for ResolveConfirmHandleService();
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v11 = (v10 - v9);
  (*(v12 + 16))(v10 - v9);
  v13 = sub_1DCB82CDC(a1, a2, *v11, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v13;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1DCB82CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = type metadata accessor for RefreshableAceServiceInvoker();
  v11[4] = &protocol witness table for RefreshableAceServiceInvoker;
  v11[0] = a1;
  v10[3] = type metadata accessor for RefreshableDeviceState();
  v10[4] = &protocol witness table for RefreshableDeviceState;
  v10[0] = a2;
  v9[3] = type metadata accessor for ResolveConfirmHandleExecutor();
  v9[4] = &off_1F58710E8;
  v9[0] = a3;
  sub_1DCB17D04(v11, a4 + 16);
  sub_1DCB17D04(v10, a4 + 56);
  sub_1DCB17D04(v9, a4 + 96);
  sub_1DCB83278();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return a4;
}

void sub_1DCB82DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_1DCB82E78();
  v10 = &off_1F587A178;
  *&v8 = a1;
  v6 = type metadata accessor for SiriAnalyticsInstrumentationClient();
  v7 = &off_1F5862290;
  *&v5 = a2;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42D0, &qword_1DD0EB878);
  swift_allocObject();
  sub_1DD0DCACC();
}

unint64_t sub_1DCB82E78()
{
  result = qword_1EDE46228;
  if (!qword_1EDE46228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46228);
  }

  return result;
}

void sub_1DCB82EBC()
{
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void sub_1DCB83278()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v2 = OUTLINED_FUNCTION_33_4();
  v4 = v3(v2, v1);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = [objc_opt_self() sharedPreferences];
    if (v8)
    {
      v9 = v8;
      sub_1DCB2C534(v6, v7, v8, &selRef__setCachedSiriLanguageCode_);
    }

    else
    {
    }
  }
}

uint64_t RefreshableDeviceState.preferencesLanguageCode.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return OUTLINED_FUNCTION_33_1();
}

void sub_1DCB833F8()
{
  OUTLINED_FUNCTION_10_15();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7980, &qword_1DD0F98A8);
      v7 = OUTLINED_FUNCTION_23_20(v6);
      OUTLINED_FUNCTION_7_46(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_2_24();
        sub_1DCB8382C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7988, &qword_1DD0F98B0);
    OUTLINED_FUNCTION_14_46(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

void RCHFlowFactory.makeRCHFlowWithResolvedApp(_:intent:hasUserBeenAuthorizedForApp:)(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v4, v5);
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  sub_1DCB837D4();
  sub_1DD0DCB0C();
}

char *sub_1DCB837AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

unint64_t sub_1DCB837D4()
{
  result = qword_1EDE48A98;
  if (!qword_1EDE48A98)
  {
    type metadata accessor for EnvironmentSummoner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE48A98);
  }

  return result;
}

uint64_t sub_1DCB83854(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 15;

  __swift_destroy_boxed_opaque_existential_1Tm((v4 & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1DCB839B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

void sub_1DCB83A90(uint64_t *a1@<X8>)
{
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE57DF8;
  a1[3] = type metadata accessor for RefreshableSiriKitEventSending();
  a1[4] = &off_1F5873940;
  *a1 = v2;
  sub_1DD0DCF8C();
}

void sub_1DCB83BC0(uint64_t a1, void x1_0, uint64_t a2, void *a3, uint64_t a4, void x5_0, void x6_0, uint64_t a5, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v114 = swift_getAssociatedTypeWitness();
  RCHChildFlowProducers.init()(AssociatedTypeWitness, v114);
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v10);
  v12 = (*(v11 + 96))(v10, v11);
  type metadata accessor for ViewFactory();
  *(swift_allocObject() + 16) = v12 & 1;
  v13 = OUTLINED_FUNCTION_4_92();
  OUTLINED_FUNCTION_3_98(v13, v14, v15, v16, v17, v18, v19, v20, v78, v86, v94, v98, v102, a1, a4, v114, v118, v122, v126, v127, v128, v129, v130);
  sub_1DCB17CA0(a2, &v126);
  v103 = type metadata accessor for ResolveParameterResponseGenerator();
  v21 = OUTLINED_FUNCTION_2_85(v103);
  v123 = OUTLINED_FUNCTION_0_94(v21, v22, v23, v24, v25, v26, v27, v28, v79, v87);
  v29 = OUTLINED_FUNCTION_4_92();
  OUTLINED_FUNCTION_3_98(v29, v30, v31, v32, v33, v34, v35, v36, v80, v88, v95, v99, v103, v107, v111, v115, v119, v123, v126, v127, v128, v129, v130);
  sub_1DCB17CA0(a2, &v126);
  v37 = type metadata accessor for ConfirmIntentResponseGenerator();
  v38 = OUTLINED_FUNCTION_2_85(v37);
  v120 = OUTLINED_FUNCTION_0_94(v38, v39, v40, v41, v42, v43, v44, v45, v81, v89);
  v46 = OUTLINED_FUNCTION_4_92();
  OUTLINED_FUNCTION_3_98(v46, v47, v48, v49, v50, v51, v52, v53, v82, v90, v96, v100, v104, v108, v112, v116, v120, v124, v126, v127, v128, v129, v130);
  sub_1DCB17CA0(a2, &v126);
  v101 = type metadata accessor for HandleIntentResponseGenerator();
  v54 = OUTLINED_FUNCTION_2_85(v101);
  v97 = OUTLINED_FUNCTION_0_94(v54, v55, v56, v57, v58, v59, v60, v61, v83, v91);
  v62 = OUTLINED_FUNCTION_4_92();
  OUTLINED_FUNCTION_3_98(v62, v63, v64, v65, v66, v67, v68, v69, v84, v92, v97, v101, v105, v109, v113, v117, v121, v125, v126, v127, v128, v129, v130);
  sub_1DCB17CA0(a2, &v126);
  v93 = type metadata accessor for AppResolutionResponseGenerator();
  v70 = OUTLINED_FUNCTION_2_85(v93);
  OUTLINED_FUNCTION_0_94(v70, v71, v72, v73, v74, v75, v76, v77, v85, v93);
  sub_1DD0DCF8C();
}

void sub_1DCB83F78()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 80);
  v8 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for RCHFlowAsync.State(v8, v9, v10, v11);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_16();
  (*(v15 + 16))(v19 - v18, v6, v7);
  sub_1DCB17D04(v4, &v21);
  sub_1DCB843DC(v2, &v20);
  sub_1DD0DCF8C();
}

_OWORD *initializeWithCopy for FlowExecutionEnvironment(_OWORD *a1, _OWORD *a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = a2[4];
  a1[4] = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  v6 = *(a2 + 104);
  *(a1 + 104) = v6;
  (**(v6 - 8))(a1 + 5, a2 + 5);
  return a1;
}

uint64_t sub_1DCB84380(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  sub_1DCAFF9E8(a2, v4 + 24);
  sub_1DCAFF9E8(a3, v4 + 64);
  sub_1DCAFF9E8(a4, v4 + 104);
  return v4;
}

void sub_1DCB84438()
{
  OUTLINED_FUNCTION_4_82();
  swift_allocObject();
  OUTLINED_FUNCTION_116_6();
  sub_1DCB844D8();
}

void sub_1DCB844D8()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  (*(*(*(v12 + 80) - 8) + 16))(&v1[*(v12 + 96)], v11, *(v12 + 80));
  OUTLINED_FUNCTION_55_1();
  *&v1[*(v15 + 104)] = v9;
  OUTLINED_FUNCTION_55_1();
  sub_1DCB17D04(v7, &v1[*(v16 + 112)]);
  OUTLINED_FUNCTION_55_1();
  sub_1DCB17D04(v3, &v1[*(v17 + 120)]);
  OUTLINED_FUNCTION_55_1();
  sub_1DCB17D04(v3 + 40, &v1[*(v18 + 128)]);
  OUTLINED_FUNCTION_55_1();
  sub_1DCB17D04(v3 + 80, &v1[*(v19 + 136)]);
  OUTLINED_FUNCTION_55_1();
  *&v1[*(v20 + 144)] = v5;
  OUTLINED_FUNCTION_55_1();
  v21 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for RCHFlowAsync.State(v21, v22, v23, v24);
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

void sub_1DCB848CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for RCHProtectedAppCheckClient();
  v8 = &off_1F586F018;
  v6 = a2;
  sub_1DD0DCF8C();
}

uint64_t destroy for FlowExecutionEnvironment(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);

  return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 10);
}

uint64_t sub_1DCB84CAC(uint64_t a1, __int128 *a2)
{
  *(v2 + 64) = 0;
  *(v2 + 16) = a1;
  sub_1DCB18FF0(a2, v2 + 24);
  *(v2 + 64) = 0;
  return v2;
}

uint64_t sub_1DCB84D04()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_86();
  sub_1DCB84CAC(v1, v2);
  return v0;
}

uint64_t sub_1DCB84D68()
{
  type metadata accessor for ParameterHints();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_70();
  type metadata accessor for ParameterClause(v1);
  *(v0 + 16) = sub_1DD0DDE9C();
  return v0;
}

uint64_t sub_1DCB84E4C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1DCB84F10(a1, a2, a3);
  return v6;
}

void *sub_1DCB84EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_1DCB84F10(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 104) = 0;
  *(v3 + 16) = a1;
  sub_1DCAFF9E8(a2, v3 + 24);
  sub_1DCAFF9E8(a3, v3 + 64);
  *(v3 + 104) = 0;
  return v3;
}

void sub_1DCB84F5C()
{
  type metadata accessor for AnyFlow();
  swift_allocObject();
  sub_1DD0DCF8C();
}

_BYTE *sub_1DCB85070(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 - 8);
  (*(v5 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      v21 = sub_1DD0DB04C();
      (*(*(v21 - 8) + 32))(a1, a2, v21);
      v15 = type metadata accessor for Input(0);
      v22 = v15[5];
      v23 = &a1[v22];
      v24 = &a2[v22];
      v25 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v26 = sub_1DD0DC76C();
          (*(*(v26 - 8) + 32))(v23, v24, v26);
          goto LABEL_70;
        case 1u:
          v52 = sub_1DD0DC76C();
          (*(*(v52 - 8) + 32))(v23, v24, v52);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v23[*(v53 + 48)] = *&v24[*(v53 + 48)];
          goto LABEL_70;
        case 4u:
          v65 = sub_1DD0DB1EC();
          (*(*(v65 - 8) + 32))(v23, v24, v65);
          goto LABEL_70;
        case 6u:
          v72 = sub_1DD0DB4BC();
          (*(*(v72 - 8) + 32))(v23, v24, v72);
          v73 = type metadata accessor for USOParse(0);
          v74 = v73[5];
          v75 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v24[v74], 1, v75))
          {
            v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v23[v74], &v24[v74], *(*(v76 - 8) + 64));
          }

          else
          {
            (*(*(v75 - 8) + 32))(&v23[v74], &v24[v74], v75);
            __swift_storeEnumTagSinglePayload(&v23[v74], 0, 1, v75);
          }

          *&v23[v73[6]] = *&v24[v73[6]];
          v120 = v73[7];
          v121 = &v23[v120];
          v122 = &v24[v120];
          v121[4] = v122[4];
          *v121 = *v122;
          goto LABEL_70;
        case 7u:
          v77 = sub_1DD0DB4BC();
          (*(*(v77 - 8) + 32))(v23, v24, v77);
          v78 = type metadata accessor for USOParse(0);
          v79 = v78[5];
          v80 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v24[v79], 1, v80))
          {
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v23[v79], &v24[v79], *(*(v81 - 8) + 64));
          }

          else
          {
            (*(*(v80 - 8) + 32))(&v23[v79], &v24[v79], v80);
            __swift_storeEnumTagSinglePayload(&v23[v79], 0, 1, v80);
          }

          *&v23[v78[6]] = *&v24[v78[6]];
          v123 = v78[7];
          v124 = &v23[v123];
          v125 = &v24[v123];
          v124[4] = v125[4];
          *v124 = *v125;
          v126 = type metadata accessor for LinkParse(0);
          *&v23[v126[5]] = *&v24[v126[5]];
          *&v23[v126[6]] = *&v24[v126[6]];
          *&v23[v126[7]] = *&v24[v126[7]];
          goto LABEL_70;
        case 8u:
          v36 = sub_1DD0DD12C();
          (*(*(v36 - 8) + 32))(v23, v24, v36);
          v37 = type metadata accessor for NLRouterParse(0);
          *&v23[*(v37 + 20)] = *&v24[*(v37 + 20)];
          v166 = v37;
          v38 = *(v37 + 24);
          v39 = &v23[v38];
          v40 = &v24[v38];
          v41 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v40, 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v39, v40, *(*(v42 - 8) + 64));
          }

          else
          {
            v99 = sub_1DD0DB4BC();
            v163 = v39;
            (*(*(v99 - 8) + 32))(v39, v40, v99);
            v100 = v41[5];
            v101 = sub_1DD0DB3EC();
            v160 = v100;
            v102 = &v40[v100];
            v103 = v101;
            if (__swift_getEnumTagSinglePayload(v102, 1, v101))
            {
              v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v105 = v163;
              memcpy(&v163[v160], &v40[v160], *(*(v104 - 8) + 64));
            }

            else
            {
              v157 = v103;
              (*(*(v103 - 8) + 32))(&v163[v160], &v40[v160], v103);
              v105 = v163;
              __swift_storeEnumTagSinglePayload(&v163[v160], 0, 1, v157);
            }

            *(v105 + v41[6]) = *&v40[v41[6]];
            v145 = v41[7];
            v146 = v105 + v145;
            v147 = &v40[v145];
            *(v146 + 4) = v147[4];
            *v146 = *v147;
            __swift_storeEnumTagSinglePayload(v105, 0, 1, v41);
          }

          *&v23[*(v166 + 28)] = *&v24[*(v166 + 28)];
          goto LABEL_70;
        case 9u:
          v58 = sub_1DD0DD08C();
          (*(*(v58 - 8) + 32))(v23, v24, v58);
LABEL_70:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v23, v24, *(*(v25 - 8) + 64));
          break;
      }

      goto LABEL_66;
    case 4:
      v14 = sub_1DD0DB04C();
      (*(*(v14 - 8) + 32))(a1, a2, v14);
      v15 = type metadata accessor for Input(0);
      v16 = v15[5];
      v17 = &a1[v16];
      v18 = &a2[v16];
      v19 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v20 = sub_1DD0DC76C();
          (*(*(v20 - 8) + 32))(v17, v18, v20);
          goto LABEL_65;
        case 1u:
          v43 = sub_1DD0DC76C();
          (*(*(v43 - 8) + 32))(v17, v18, v43);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v17[*(v44 + 48)] = *&v18[*(v44 + 48)];
          goto LABEL_65;
        case 4u:
          v57 = sub_1DD0DB1EC();
          (*(*(v57 - 8) + 32))(v17, v18, v57);
          goto LABEL_65;
        case 6u:
          v59 = sub_1DD0DB4BC();
          (*(*(v59 - 8) + 32))(v17, v18, v59);
          v60 = type metadata accessor for USOParse(0);
          v61 = v60[5];
          v62 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v18[v61], 1, v62))
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v17[v61], &v18[v61], *(*(v63 - 8) + 64));
          }

          else
          {
            (*(*(v62 - 8) + 32))(&v17[v61], &v18[v61], v62);
            __swift_storeEnumTagSinglePayload(&v17[v61], 0, 1, v62);
          }

          *&v17[v60[6]] = *&v18[v60[6]];
          v113 = v60[7];
          v114 = &v17[v113];
          v115 = &v18[v113];
          v114[4] = v115[4];
          *v114 = *v115;
          goto LABEL_65;
        case 7u:
          v66 = sub_1DD0DB4BC();
          (*(*(v66 - 8) + 32))(v17, v18, v66);
          v67 = type metadata accessor for USOParse(0);
          v68 = v67[5];
          v69 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v18[v68], 1, v69))
          {
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v17[v68], &v18[v68], *(*(v70 - 8) + 64));
          }

          else
          {
            (*(*(v69 - 8) + 32))(&v17[v68], &v18[v68], v69);
            __swift_storeEnumTagSinglePayload(&v17[v68], 0, 1, v69);
          }

          *&v17[v67[6]] = *&v18[v67[6]];
          v116 = v67[7];
          v117 = &v17[v116];
          v118 = &v18[v116];
          v117[4] = v118[4];
          *v117 = *v118;
          v119 = type metadata accessor for LinkParse(0);
          *&v17[v119[5]] = *&v18[v119[5]];
          *&v17[v119[6]] = *&v18[v119[6]];
          *&v17[v119[7]] = *&v18[v119[7]];
          goto LABEL_65;
        case 8u:
          v29 = sub_1DD0DD12C();
          (*(*(v29 - 8) + 32))(v17, v18, v29);
          v30 = type metadata accessor for NLRouterParse(0);
          *&v17[*(v30 + 20)] = *&v18[*(v30 + 20)];
          v165 = v30;
          v31 = *(v30 + 24);
          v32 = &v17[v31];
          v33 = &v18[v31];
          v34 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v33, 1, v34))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v32, v33, *(*(v35 - 8) + 64));
          }

          else
          {
            v92 = sub_1DD0DB4BC();
            v162 = v32;
            (*(*(v92 - 8) + 32))(v32, v33, v92);
            v93 = v34[5];
            v94 = sub_1DD0DB3EC();
            v159 = v93;
            v95 = &v33[v93];
            v96 = v94;
            if (__swift_getEnumTagSinglePayload(v95, 1, v94))
            {
              v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v98 = v162;
              memcpy(&v162[v159], &v33[v159], *(*(v97 - 8) + 64));
            }

            else
            {
              v156 = v96;
              (*(*(v96 - 8) + 32))(&v162[v159], &v33[v159], v96);
              v98 = v162;
              __swift_storeEnumTagSinglePayload(&v162[v159], 0, 1, v156);
            }

            *(v98 + v34[6]) = *&v33[v34[6]];
            v134 = v34[7];
            v135 = v98 + v134;
            v136 = &v33[v134];
            *(v135 + 4) = v136[4];
            *v135 = *v136;
            __swift_storeEnumTagSinglePayload(v98, 0, 1, v34);
          }

          *&v17[*(v165 + 28)] = *&v18[*(v165 + 28)];
          goto LABEL_65;
        case 9u:
          v56 = sub_1DD0DD08C();
          (*(*(v56 - 8) + 32))(v17, v18, v56);
LABEL_65:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v17, v18, *(*(v19 - 8) + 64));
          break;
      }

LABEL_66:
      *&a1[v15[6]] = *&a2[v15[6]];
      v137 = v15[7];
      v138 = &a1[v137];
      v139 = &a2[v137];
      v140 = *(v139 + 1);
      *v138 = *v139;
      *(v138 + 1) = v140;
      *(v138 + 4) = *(v139 + 4);
      a1[v15[8]] = a2[v15[8]];
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v142, v143);
      sub_1DD0DE97C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
LABEL_77:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 0:
      v7 = sub_1DD0DB04C();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = type metadata accessor for Input(0);
      v9 = v8[5];
      v10 = &a1[v9];
      v11 = &a2[v9];
      v12 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v13 = sub_1DD0DC76C();
          (*(*(v13 - 8) + 32))(v10, v11, v13);
          goto LABEL_75;
        case 1u:
          v54 = sub_1DD0DC76C();
          (*(*(v54 - 8) + 32))(v10, v11, v54);
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v10[*(v55 + 48)] = *&v11[*(v55 + 48)];
          goto LABEL_75;
        case 4u:
          v71 = sub_1DD0DB1EC();
          (*(*(v71 - 8) + 32))(v10, v11, v71);
          goto LABEL_75;
        case 6u:
          v82 = sub_1DD0DB4BC();
          (*(*(v82 - 8) + 32))(v10, v11, v82);
          v83 = type metadata accessor for USOParse(0);
          v84 = v83[5];
          v85 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v11[v84], 1, v85))
          {
            v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v10[v84], &v11[v84], *(*(v86 - 8) + 64));
          }

          else
          {
            (*(*(v85 - 8) + 32))(&v10[v84], &v11[v84], v85);
            __swift_storeEnumTagSinglePayload(&v10[v84], 0, 1, v85);
          }

          *&v10[v83[6]] = *&v11[v83[6]];
          v127 = v83[7];
          v128 = &v10[v127];
          v129 = &v11[v127];
          v128[4] = v129[4];
          *v128 = *v129;
          goto LABEL_75;
        case 7u:
          v87 = sub_1DD0DB4BC();
          (*(*(v87 - 8) + 32))(v10, v11, v87);
          v88 = type metadata accessor for USOParse(0);
          v89 = v88[5];
          v90 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v11[v89], 1, v90))
          {
            v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v10[v89], &v11[v89], *(*(v91 - 8) + 64));
          }

          else
          {
            (*(*(v90 - 8) + 32))(&v10[v89], &v11[v89], v90);
            __swift_storeEnumTagSinglePayload(&v10[v89], 0, 1, v90);
          }

          *&v10[v88[6]] = *&v11[v88[6]];
          v130 = v88[7];
          v131 = &v10[v130];
          v132 = &v11[v130];
          v131[4] = v132[4];
          *v131 = *v132;
          v133 = type metadata accessor for LinkParse(0);
          *&v10[v133[5]] = *&v11[v133[5]];
          *&v10[v133[6]] = *&v11[v133[6]];
          *&v10[v133[7]] = *&v11[v133[7]];
          goto LABEL_75;
        case 8u:
          v45 = sub_1DD0DD12C();
          (*(*(v45 - 8) + 32))(v10, v11, v45);
          v46 = type metadata accessor for NLRouterParse(0);
          *&v10[*(v46 + 20)] = *&v11[*(v46 + 20)];
          v167 = v46;
          v47 = *(v46 + 24);
          v48 = &v10[v47];
          v49 = &v11[v47];
          v50 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v49, 1, v50))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v48, v49, *(*(v51 - 8) + 64));
          }

          else
          {
            v106 = sub_1DD0DB4BC();
            v164 = v48;
            (*(*(v106 - 8) + 32))(v48, v49, v106);
            v107 = v50[5];
            v108 = sub_1DD0DB3EC();
            v161 = v107;
            v109 = &v49[v107];
            v110 = v108;
            if (__swift_getEnumTagSinglePayload(v109, 1, v108))
            {
              v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v112 = v164;
              memcpy(&v164[v161], &v49[v161], *(*(v111 - 8) + 64));
            }

            else
            {
              v158 = v110;
              (*(*(v110 - 8) + 32))(&v164[v161], &v49[v161], v110);
              v112 = v164;
              __swift_storeEnumTagSinglePayload(&v164[v161], 0, 1, v158);
            }

            *(v112 + v50[6]) = *&v49[v50[6]];
            v148 = v50[7];
            v149 = v112 + v148;
            v150 = &v49[v148];
            *(v149 + 4) = v150[4];
            *v149 = *v150;
            __swift_storeEnumTagSinglePayload(v112, 0, 1, v50);
          }

          *&v10[*(v167 + 28)] = *&v11[*(v167 + 28)];
          goto LABEL_75;
        case 9u:
          v64 = sub_1DD0DD08C();
          (*(*(v64 - 8) + 32))(v10, v11, v64);
LABEL_75:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v10, v11, *(*(v12 - 8) + 64));
          break;
      }

      *&a1[v8[6]] = *&a2[v8[6]];
      v151 = v8[7];
      v152 = &a1[v151];
      v153 = &a2[v151];
      v154 = *(v153 + 1);
      *v152 = *v153;
      *(v152 + 1) = v154;
      *(v152 + 4) = *(v153 + 4);
      a1[v8[8]] = a2[v8[8]];
      swift_getAssociatedTypeWitness();
      v155 = swift_getTupleTypeMetadata2();
      *&a1[*(v155 + 48)] = *&a2[*(v155 + 48)];
      goto LABEL_77;
  }

  v27 = *(v5 + 64);

  return memcpy(a1, a2, v27);
}

uint64_t sub_1DCB867DC()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB86818()
{
  OUTLINED_FUNCTION_13_7();
  v2 = type metadata accessor for AppRCHAuthorizationFlow();
  v0[4] = v1;
  v0[7] = v2;
  v0[8] = &unk_1DD0E1EA0;
  v0[9] = v1;
  v0[10] = sub_1DCBF2ABC;
  v0[11] = v1;
  v0[12] = &unk_1DD0E1EB0;
  v0[13] = v1;
  v0[14] = sub_1DCB8D60C;
  OUTLINED_FUNCTION_3_16();
  v16 = v3;
  OUTLINED_FUNCTION_145_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D28, &unk_1DD0E63E0);
  OUTLINED_FUNCTION_143_0(v4, v5);
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_48_4(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18);
  return OUTLINED_FUNCTION_78_4();
}

uint64_t sub_1DCB86920()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCB869B0(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  sub_1DCAFF9E8(a2, v3 + 24);
  sub_1DCAFF9E8(a3, v3 + 64);
  return v3;
}

uint64_t sub_1DCB869F4(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1DCB869B0(a1, a2, a3);
  return v6;
}

uint64_t sub_1DCB86A4C(uint64_t a1, uint64_t *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCB4AE1C;

  return sub_1DCB86AEC(a1);
}

uint64_t sub_1DCB86AEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCB86BA0(a1);
}

uint64_t sub_1DCB86BA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB86C24, 0, 0);
}

uint64_t sub_1DCB86BC0(uint64_t a1, __int128 *a2)
{
  OUTLINED_FUNCTION_0_3();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1DCAFF9E8(a2, v4 + 24);
  return v4;
}

uint64_t sub_1DCB86C24(uint64_t a1)
{
  if (*(v1[3] + 280) == 255)
  {
    if (sub_1DCB86F6C())
    {
      v2 = -2;
    }

    else
    {
      v2 = -3;
    }

    sub_1DCB87830(0, v2);
  }

  switch(*(v1[3] + 280))
  {
    case 0xFC:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v3 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v3, qword_1EDE57E00);
      v4 = sub_1DD0DD8EC();
      v5 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1DCAFC000, v4, v5, "ProtectedAppCheck exited without unlocking required apps. Terminating AppRCHAuthorizationFlow.", v6, 2u);
        OUTLINED_FUNCTION_62();
      }

      v7 = swift_task_alloc();
      v1[4] = v7;
      *v7 = v1;
      v7[1] = sub_1DCC1FC04;

      result = sub_1DCC1FEFC();
      break;
    case 0xFD:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v17 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v17, qword_1EDE57E00);
      v18 = sub_1DD0DD8EC();
      v19 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v18, v19))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v20, v21, "AppRCHAuthorizationFlow is pushing ProtectedAppCheck");
        OUTLINED_FUNCTION_62();
      }

      sub_1DCB87BD4();
    case 0xFE:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v9 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v9, qword_1EDE57E00);
      v10 = sub_1DD0DD8EC();
      v11 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v10, v11))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v12, v13, "AppRCHAuthorizationFlow has determined this user case requires a device unlock. Pushing UnlockDeviceFlow.");
        OUTLINED_FUNCTION_62();
      }

      sub_1DCC1FD8C();
    case 0xFF:
      v14 = sub_1DCC20BCC();
      v15 = OUTLINED_FUNCTION_34(&type metadata for AppRCHAuthorizationFlow.InvalidStateError, v14);
      *v16 = 0xD000000000000020;
      v16[1] = 0x80000001DD1144E0;
      sub_1DCB87830(v15, 1u);
    default:
      v22.n128_f64[0] = static ExecuteResponse.complete()();
      v23 = v1[1];

      result = v23(v22);
      break;
  }

  return result;
}

BOOL sub_1DCB86F6C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v41 - v8;
  v10 = v0[22];
  v11 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v10);
  if (((*(v11 + 104))(v10, v11) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
LABEL_27:
      swift_once();
    }

    v20 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v20, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Device is already unlocked, no need for unlock flow";
    goto LABEL_10;
  }

  v12 = v0[22];
  v13 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v12);
  if ((*(v13 + 8))(v12, v13))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Bypassing potential device unlock for HomePod requests";
LABEL_10:
    _os_log_impl(&dword_1DCAFC000, v16, v17, v19, v18, 2u);
    MEMORY[0x1E12A8390](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v41 = v9;
  v42 = v6;
  v23 = 0;
  v24 = v0[2];
  v25 = *(v24 + 16);
  v44 = v24;
  v45 = v25;
  v26 = (v24 + 40);
  *&v14 = 136315138;
  v43 = v14;
  while (1)
  {
    v21 = v45 != v23;
    if (v45 == v23)
    {
      return v21;
    }

    if (v23 >= *(v44 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v28 = *(v26 - 1);
    v27 = *v26;
    __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);

    v29 = sub_1DCC181F8(v28, v27);
    if (v29)
    {

      v30 = [v29 actionsRestrictedWhileLocked];
      v31 = sub_1DD0DE57C();

      v46 = v1[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2418, &unk_1DD0E51E0);
      v32 = sub_1DD0DE02C();
      v34 = sub_1DCCE6C7C(v32, v33, v31);

      if (v34)
      {
        return v21;
      }
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v35 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v35, qword_1EDE57E00);

      v36 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v46 = v39;
        *v38 = v43;
        v40 = sub_1DCB10E9C(v28, v27, &v46);

        *(v38 + 4) = v40;
        _os_log_impl(&dword_1DCAFC000, v36, v37, "Bypassing device unlock check for %s. No application record found.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x1E12A8390](v39, -1, -1);
        MEMORY[0x1E12A8390](v38, -1, -1);
      }

      else
      {
      }
    }

    v26 += 2;
    ++v23;
  }
}

uint64_t sub_1DCB87714(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1DCAFF9E8(a2, v4 + 24);
  return v4;
}

uint64_t RefreshableDeviceState.isLockedWithPasscode.getter()
{
  sub_1DCB4E718(v3);
  OUTLINED_FUNCTION_4_38(v3);
  v0 = OUTLINED_FUNCTION_7_1();
  v1(v0);
  return OUTLINED_FUNCTION_11_28(v3);
}

void sub_1DCB87830(void *a1, unsigned __int8 a2)
{
  v3 = *(v2 + 272);
  *(v2 + 272) = a1;
  v4 = *(v2 + 280);
  *(v2 + 280) = a2;
  sub_1DCB87A3C(a1, a2);
  sub_1DCB79360(v3, v4);
  sub_1DCB878A0();
}

void sub_1DCB878A0()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

id sub_1DCB87A3C(id result, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    return sub_1DCB8D4CC(result, a2 & 1);
  }

  return result;
}

unint64_t sub_1DCB87A54(uint64_t a1, char a2)
{
  result = 0x6C616974696E692ELL;
  switch(a2)
  {
    case -4:
      result = 0xD00000000000001BLL;
      break;
    case -3:
      result = 0xD000000000000012;
      break;
    case -2:
      result = 0xD000000000000015;
      break;
    case -1:
      return result;
    default:
      sub_1DCB8D4CC(0x6C616974696E692ELL, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
      v3 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v3);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      result = 0x74656C706D6F632ELL;
      break;
  }

  return result;
}

void sub_1DCB87BD4()
{
  sub_1DCB17CA0(v1 + 72, v7);
  sub_1DCB17CA0(v1 + 232, v6);
  sub_1DCB17CA0(v1 + 152, v5);
  sub_1DCB17CA0(v1 + 192, v4);
  type metadata accessor for ProtectedAppCheck(0);
  swift_allocObject();

  v3 = ProtectedAppCheck.init(appIDs:strategy:client:deviceState:outputPublisher:)(v2, v7, v6, v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2420, &qword_1DD0E8410);
  swift_initStackObject();
  sub_1DCB887E4(v3);
}

uint64_t ProtectedAppCheck.init(appIDs:strategy:client:deviceState:outputPublisher:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  *(v5 + 192) = ResponseFactory.init()();
  v12 = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_state;
  v13 = sub_1DD0DB04C();
  __swift_storeEnumTagSinglePayload(v6 + v12, 1, 4, v13);
  *(v6 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_appsRemainInaccessible) = 0;
  *(v6 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_noAppsRequireUnlock) = 0;
  v14 = v6 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult;
  *v14 = 0;
  *(v14 + 8) = -1;
  *(v6 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses) = MEMORY[0x1E69E7CC0];
  sub_1DCB87FE0(a1);
  OUTLINED_FUNCTION_67_14();

  *(v6 + 24) = v12;
  sub_1DCB17CA0(a2, v6 + 32);
  *(v6 + 16) = 0;
  sub_1DCB8878C();
  sub_1DCB8878C();
  if (!v18)
  {
    if (qword_1EDE46628 != -1)
    {
      OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
    }

    v15 = qword_1EDE46630;
    sub_1DCB4E718(&v19);
    __swift_destroy_boxed_opaque_existential_1Tm(&v19);
    v20 = type metadata accessor for RefreshableDeviceState();
    v21 = &protocol witness table for RefreshableDeviceState;
    *&v19 = v15;
    sub_1DD0DCF8C();
  }

  sub_1DCAFF9E8(&v17, &v19);
  sub_1DCAFF9E8(&v19, v6 + 112);
  sub_1DCB8878C();
  if (!v18)
  {
    sub_1DCB82888();
  }

  sub_1DCB0E9D8(a5, &qword_1ECCA57C8, &unk_1DD0F2D20);
  sub_1DCB0E9D8(a4, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  sub_1DCB0E9D8(a3, &qword_1ECCA2568, &unk_1DD0FE510);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  sub_1DCAFF9E8(&v17, &v19);
  sub_1DCAFF9E8(&v19, v6 + 152);
  return v6;
}

uint64_t sub_1DCB87FE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *(v2 - 1);
      v4 = *v2;
      swift_bridgeObjectRetain_n();
      v6 = sub_1DCB88110();

      if (v6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DCB34108(0, *(v3 + 16) + 1, 1, v3);
          v3 = v10;
        }

        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1DCB34108(v7 > 1, v8 + 1, 1, v3);
          v3 = v11;
        }

        *(v3 + 16) = v8 + 1;
        v9 = v3 + 16 * v8;
        *(v9 + 32) = v5;
        *(v9 + 40) = v4;
      }

      else
      {
      }

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  return v3;
}

BOOL sub_1DCB88110()
{
  OUTLINED_FUNCTION_25_13();
  sub_1DD0DDF2C();
  sub_1DD0DF20C();
  OUTLINED_FUNCTION_30_20();
  while (1)
  {
    OUTLINED_FUNCTION_29_16();
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_49_10();
    v6 = *v5 == v3 && v5[1] == v1;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      OUTLINED_FUNCTION_49_10();
      v8 = v7[1];
      *v0 = *v7;
      v0[1] = v8;

      return v4 == 0;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_56_10();
  v9 = OUTLINED_FUNCTION_40_14();
  sub_1DCB88424(v9, v10, v11, v12);
  *v2 = v14;
  *v0 = v3;
  v0[1] = v1;
  return v4 == 0;
}

uint64_t sub_1DCB881F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2870, &qword_1DD0E6B80);
  result = sub_1DD0DEBDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1DD0DF1DC();

        sub_1DD0DDF2C();
        result = sub_1DD0DF20C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_1DCB88424(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DCD414B8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DCB881F0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1DD0DF1DC();
      sub_1DD0DDF2C();
      v16 = sub_1DD0DF20C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_1DD0DF0AC() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1DCD42D78();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1DD0DF11C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

__n128 *OUTLINED_FUNCTION_67_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_67_3()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_67_6()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_67_7(uint64_t a1)
{
  *(v1 + *(a1 + 48)) = *(v2 + *(a1 + 48));

  sub_1DD0DCF8C();
}

double OUTLINED_FUNCTION_67_8()
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = v0;
  *(v1 + 24) = v2;
  sub_1DCB79378(v3, v4);

  return static ExecuteResponse.complete()();
}

uint64_t OUTLINED_FUNCTION_67_10(uint64_t a1, uint64_t a2)
{

  return sub_1DD0DDF2C();
}

uint64_t OUTLINED_FUNCTION_67_13()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_67_16(uint64_t a1)
{

  Flow.eraseToAnyValueFlow()(v1, a1);
}

uint64_t OUTLINED_FUNCTION_67_17()
{
}

uint64_t OUTLINED_FUNCTION_67_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 10) = v16;
  *(v14 + 18) = v15;
  v17 = *(a14 + 48);
  __swift_project_boxed_opaque_existential_1((a14 + 24), v17);
  return v17;
}

uint64_t sub_1DCB8878C()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_33_1();
  v4(v3);
  return v0;
}

uint64_t sub_1DCB88820()
{
  v2 = OUTLINED_FUNCTION_13_7();
  v3 = type metadata accessor for ProtectedAppCheck(v2);
  v0[4] = v1;
  v0[7] = v3;
  v0[8] = &unk_1DD0E1F18;
  v0[9] = v1;
  v0[10] = sub_1DCBF2C84;
  v0[11] = v1;
  v0[12] = &unk_1DD0E1F28;
  v0[13] = v1;
  v0[14] = sub_1DCB8CD44;
  OUTLINED_FUNCTION_3_16();
  v17 = v4;
  OUTLINED_FUNCTION_145_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D40, &qword_1DD0E1F30);
  OUTLINED_FUNCTION_143_0(v5, v6);
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_48_4(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17, v18, v19);
  return OUTLINED_FUNCTION_78_4();
}

uint64_t sub_1DCB88910()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCB889A0(uint64_t a1, uint64_t *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCB4AE1C;

  return sub_1DCB88A40(a1);
}

uint64_t sub_1DCB88A40(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return sub_1DCB88ADC();
}

uint64_t sub_1DCB88ADC()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_21_35();
  v1[7] = OUTLINED_FUNCTION_38();
  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB88B4C()
{
  OUTLINED_FUNCTION_21();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_33_1();
  v3(v2);
  return v0;
}

uint64_t sub_1DCB88BA4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[7];
  OUTLINED_FUNCTION_156(v0[6] + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_state, (v0 + 2));
  OUTLINED_FUNCTION_6_62();
  sub_1DCB88B4C();
  v2 = sub_1DD0DB04C();
  switch(__swift_getEnumTagSinglePayload(v1, 4, v2))
  {
    case 1u:
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[8] = v29;
      *v29 = v30;
      OUTLINED_FUNCTION_41_0(v29);

      result = sub_1DCB88EAC();
      break;
    case 2u:
      goto LABEL_3;
    case 3u:
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[9] = v31;
      *v31 = v32;
      OUTLINED_FUNCTION_41_0(v31);

      result = sub_1DCE9F1A0();
      break;
    case 4u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v17 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v17, qword_1EDE57E00);
      v18 = sub_1DD0DD8EC();
      v19 = sub_1DD0DE6FC();
      if (OUTLINED_FUNCTION_23(v19))
      {
        v20 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v20);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v21, v22, v23, v24, v25, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[10] = v26;
      *v26 = v27;
      v28 = OUTLINED_FUNCTION_41_0(v26);

      result = sub_1DCB8C5C4(v28);
      break;
    default:
      OUTLINED_FUNCTION_2_80();
      sub_1DCB551D4(v3, v4);
LABEL_3:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v5 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v5, qword_1EDE57E00);
      v6 = sub_1DD0DD8EC();
      v7 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v7))
      {
        v8 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v8);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v9, v10, v11, v12, v13, 2u);
        OUTLINED_FUNCTION_62();
      }

      v14 = v0[5];

      static ExecuteResponse.ongoing(requireInput:)(1, v14);

      OUTLINED_FUNCTION_29();

      result = v15();
      break;
  }

  return result;
}

uint64_t sub_1DCB88EAC()
{
  OUTLINED_FUNCTION_42();
  v1[18] = v2;
  v1[19] = v0;
  OUTLINED_FUNCTION_21_35();
  v1[20] = OUTLINED_FUNCTION_38();
  v3 = type metadata accessor for SiriKitEventPayload(0);
  v1[21] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v1[22] = OUTLINED_FUNCTION_38();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCB88F44()
{
  sub_1DCB890C8();

  return swift_deallocClassInstance();
}

void sub_1DCB88F78()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void *sub_1DCB890C8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t sub_1DCB890F8()
{
  *(v1 + 232) = v0;
  v2 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DCB89120()
{
  OUTLINED_FUNCTION_125();
  v29 = v0;
  sub_1DCB8878C();
  if (!*(v0 + 80))
  {
    type metadata accessor for ProtectedAppCheck(0);
    OUTLINED_FUNCTION_26_28();
    sub_1DCB8BBF0(v1, v2, &protocol conformance descriptor for ProtectedAppCheck);
    sub_1DD0DCB0C();
  }

  sub_1DCAFF9E8((v0 + 56), v0 + 16);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v3 = sub_1DD0DD8FC();
  *(v0 + 240) = OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
  sub_1DCB17CA0(v0 + 16, v0 + 96);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_83();
    v28 = v7;
    *v6 = 136315138;
    v8 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    v9 = OUTLINED_FUNCTION_67_14();
    v11 = v10(v9, v8);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    sub_1DCB10E9C(v11, v13, &v28);
    OUTLINED_FUNCTION_67_14();

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "PAC: rebuilding statuses using %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_62();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  }

  v14 = *(v0 + 232);
  v15 = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses;
  *(v0 + 248) = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses;
  OUTLINED_FUNCTION_2_20(v14 + v15, v0 + 136);
  *(v14 + v15) = MEMORY[0x1E69E7CC0];

  v16 = *(v14 + 24);
  *(v0 + 256) = v16;
  v17 = v16[2];
  *(v0 + 264) = v17;
  if (v17)
  {
    *(v0 + 272) = 0;
    v18 = v16[4];
    *(v0 + 280) = v18;
    v19 = v16[5];
    *(v0 + 288) = v19;
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
    v22 = *(v21 + 8);

    v27 = (v22 + *v22);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 296) = v23;
    *v23 = v24;
    OUTLINED_FUNCTION_23_23(v23);

    return v27(v0 + 184, v18, v19, v20, v21);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    OUTLINED_FUNCTION_29();

    return v26();
  }
}

uint64_t RCHChildFlowFactory.init(producers:withFallbacks:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0;
  nullsub_1();
  OUTLINED_FUNCTION_123_1(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17], v14[18], v14[19], v14[20], v14[21], v14[22], v14[23], v14[24], v14[25], v14[26], v14[27], v14[28], v14[29], v14[30], v14[31], v14[32], v14[33], v14[34], v14[35], v14[36], v14[37], v14[38], v14[39], v14[40], v14[41], v14[42], v14[43], __dst[0]);
  memcpy(__srca, a2, sizeof(__srca));
  nullsub_1();
  memcpy((v3 + 176), __srca, 0xB0uLL);
  memcpy((v2 + 16), v14, 0x160uLL);
  return v2;
}

uint64_t sub_1DCB89600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB193FC;

  return sub_1DCB896B4(a1, a2, a3);
}

uint64_t sub_1DCB896B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCB896D8, 0, 0);
}

uint64_t sub_1DCB896D8()
{
  v1 = v0[16];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v4 = v0[14];
    v3 = v0[15];

    v5 = sub_1DCB21038(v4, v3);
    if (v6)
    {
      v7 = *(v2 + 56) + 24 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 17);

      if (v10)
      {
        v12 = v0[13];
        *v12 = v9;
        *(v12 + 8) = v8;
        *(v12 + 16) = 1;
        *(v12 + 17) = v11;
        v13 = v0[1];

        return v13();
      }
    }
  }

  sub_1DCB17CA0(v0[16] + 24, (v0 + 2));
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v20 = (*(v16 + 8) + **(v16 + 8));
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_1DCB8A1F8;
  v18 = v0[14];
  v19 = v0[15];

  return v20(v0 + 10, v18, v19, v15, v16);
}

uint64_t sub_1DCB898EC()
{
  OUTLINED_FUNCTION_41();
  v1 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v2 = OUTLINED_FUNCTION_33_1();
  v4 = OUTLINED_FUNCTION_74_13(v2, v3);
  v0[6] = v4;
  if (v1)
  {

LABEL_3:
    v5 = v0[4];
    v6 = v0[2];
    *v6 = v0[3];
LABEL_4:
    *(v6 + 8) = v5;
    *(v6 + 16) = 0;

    OUTLINED_FUNCTION_29();

    return v7();
  }

  v9 = v4;
  if (!v4)
  {
    goto LABEL_3;
  }

  v10 = [v4 applicationState];
  v11 = [v10 isInstalled];

  if ((v11 & 1) == 0)
  {
    v21 = v0[3];
    v5 = v0[4];
    v6 = v0[2];

    *v6 = v21;
    goto LABEL_4;
  }

  v12 = v0[5];
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  OUTLINED_FUNCTION_12_4();
  v22 = (v15 + *v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[7] = v16;
  *v16 = v17;
  v16[1] = sub_1DCB8A0BC;
  v18 = v0[3];
  v19 = v0[4];
  v20 = v0[2];

  return v22(v20, v18, v19, v13, v14);
}

uint64_t sub_1DCB89ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCB89B8C(a1, a2, a3);
}

uint64_t sub_1DCB89B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCB898EC, 0, 0);
}

id sub_1DCB89BB0(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DD0DDF8C();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1DD0DAE0C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1DCB89C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCB89D50(a1, a2, a3);
}

uint64_t sub_1DCB89D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_1DD0DC81C();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB89E14, 0, 0);
}

uint64_t sub_1DCB89E14()
{
  OUTLINED_FUNCTION_33();
  (*(v0[23] + 104))(v0[24], *MEMORY[0x1E698B088], v0[22]);
  v1 = sub_1DD0DC80C();
  v2 = OUTLINED_FUNCTION_194();
  v3(v2);
  if ((v1 & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = objc_opt_self();
  OUTLINED_FUNCTION_33_1();
  v5 = sub_1DD0DDF8C();
  v6 = [v4 applicationWithBundleIdentifier_];
  v0[25] = v6;

  if ([v6 isHidden])
  {
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[19];

    v10 = 0;
    *v9 = v8;
    v11 = 1;
LABEL_10:
    *(v9 + 8) = v7;
    *(v9 + 16) = v10;
    *(v9 + 17) = v11;

    OUTLINED_FUNCTION_29();

    return v14();
  }

  if (![v6 isLocked])
  {

LABEL_9:
    v7 = v0[21];
    v9 = v0[19];
    *v9 = v0[20];
    v11 = 3;
    v10 = 1;
    goto LABEL_10;
  }

  v12 = [objc_opt_self() sharedGuard];
  v0[26] = v12;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DCEA0ADC;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8AC8, &qword_1DD0FE968);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DCEA0E24;
  v0[13] = &block_descriptor_9;
  v0[14] = v13;
  [v12 getIsChallengeCurrentlyRequiredForSubject:v6 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DCB8A0BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB8A1A0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB8A1F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DCB8A2F4, 0, 0);
}

uint64_t sub_1DCB8A2F4()
{
  v11 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 97);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v8[0] = v1;
  v8[1] = v2;
  v9 = v3;
  v10 = v4;
  sub_1DCB8A398(v8);
  v5 = *(v0 + 104);
  *v5 = v1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  *(v5 + 17) = v4;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DCB8A398(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);

  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    v20[1] = v3;
    *v10 = 136315138;
    v20[2] = v4;
    v21 = v5;
    v22 = v6;
    v12 = ProtectedAppStatus.debugDescription.getter();
    v14 = v3;
    v15 = v6;
    v16 = v5;
    v17 = sub_1DCB10E9C(v12, v13, v20);

    *(v10 + 4) = v17;
    v5 = v16;
    v6 = v15;
    v3 = v14;
    _os_log_impl(&dword_1DCAFC000, v8, v9, "RCHProtectedAppCheckClient caching PAC status: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A8390](v11, -1, -1);
    MEMORY[0x1E12A8390](v10, -1, -1);
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = *(v2 + 16);
  sub_1DCB8A730(v3, v4, v5 | (v6 << 8), v3, v4, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v20[0];
  return swift_endAccess();
}

uint64_t ProtectedAppStatus.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000019, 0x80000001DD120360);
  MEMORY[0x1E12A6780](v1, v2);
  MEMORY[0x1E12A6780](0x656363417369202CLL, 0xEF3D656C62697373);
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v5, v6);

  MEMORY[0x1E12A6780](0x3D6574617473202CLL, 0xE800000000000000);
  v7 = 0xEB0000000064656CLL;
  v8 = OUTLINED_FUNCTION_7_56();
  switch(v4)
  {
    case 1:
      v7 = 0xE600000000000000;
      v8 = OUTLINED_FUNCTION_71_11();
      break;
    case 2:
      v7 = 0xE600000000000000;
      v8 = OUTLINED_FUNCTION_49_16();
      break;
    case 3:
      v7 = 0xE600000000000000;
      v8 = 0x6C616D726F6ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1E12A6780](v8, v7);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCB8A730(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_1DCB21038(a4, a5);
  OUTLINED_FUNCTION_0_17();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2808, &unk_1DD0E6B30);
  if ((sub_1DD0DEDCC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_1DCB21038(a4, a5);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *v6;
  if (v16)
  {
    v20 = v19[7] + 24 * v15;
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = a3 & 1;
    *(v20 + 17) = HIBYTE(a3);
    OUTLINED_FUNCTION_49();
  }

  else
  {
    sub_1DCB8A884(v15, a4, a5, a1, a2, a3 & 0xFF01, v19);
    OUTLINED_FUNCTION_49();
  }
}

unint64_t sub_1DCB8A884(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  *(v8 + 17) = HIBYTE(a6);
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_1DCB8A8E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCB8A9C8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 201);

  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();

  v37 = v3;
  v38 = v4;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_1DCB10E9C(v8, v7, &v39);

    *(v9 + 4) = v10;
    *(v9 + 12) = 2080;
    *(v0 + 208) = v1;
    *(v0 + 216) = v2;
    *(v0 + 224) = v3;
    *(v0 + 225) = v38;
    v11 = ProtectedAppStatus.debugDescription.getter();
    v13 = sub_1DCB10E9C(v11, v12, &v39);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "PAC: status for %s: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v14 = *(v0 + 248);
  v15 = *(v0 + 232);
  swift_beginAccess();
  v16 = *(v15 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + v14) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = *(v0 + 248);
    v34 = *(v0 + 232);
    OUTLINED_FUNCTION_64_13();
    OUTLINED_FUNCTION_47_19();
    sub_1DCB8AE54();
    v16 = v35;
    *(v34 + v33) = v35;
  }

  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  if (v19 >= v18 >> 1)
  {
    OUTLINED_FUNCTION_21_0(v18);
    sub_1DCB8AE54();
    v16 = v36;
  }

  v20 = *(v0 + 264);
  v21 = *(v0 + 248);
  v22 = *(v0 + 232);
  v23 = *(v0 + 272) + 1;
  *(v16 + 16) = v19 + 1;
  v24 = v16 + 24 * v19;
  *(v24 + 32) = v1;
  *(v24 + 40) = v2;
  *(v24 + 48) = v37;
  *(v24 + 49) = v38;
  *(v22 + v21) = v16;
  swift_endAccess();
  if (v23 == v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_33_5();

    __asm { BRAA            X1, X16 }
  }

  v27 = *(v0 + 272) + 1;
  *(v0 + 272) = v27;
  v28 = *(v0 + 256) + 16 * v27;
  *(v0 + 280) = *(v28 + 32);
  *(v0 + 288) = *(v28 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 296) = v29;
  *v29 = v30;
  OUTLINED_FUNCTION_23_23(v29);
  OUTLINED_FUNCTION_33_5();

  __asm { BRAA            X5, X16 }
}

void sub_1DCB8AD98()
{
  OUTLINED_FUNCTION_13_48();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_17(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_27_25();
    if (v3)
    {
      OUTLINED_FUNCTION_38_21(v7, v8, v9, v10, v11, v12);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_39_20(v14);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_25_19();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_24_25();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1DCB8AE84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCB8AF68()
{
  v70 = v0;
  OUTLINED_FUNCTION_156(v0[19] + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses, (v0 + 11));

  sub_1DCB8B610(v1);
  v3 = v2;
  v5 = v4;

  v6 = *(v3 + 16);
  if (v6)
  {
    v64 = v5;
    v68 = v0;
    v66 = v0 + 14;
    v69 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_70_10();
    v7 = 0;
    v8 = v69;
    v9 = v69[2];
    v10 = 16 * v9;
    do
    {
      v12 = *(v3 + v7 + 32);
      v11 = *(v3 + v7 + 40);
      v69 = v8;
      v13 = *(v8 + 24);

      if (v9 >= v13 >> 1)
      {
        sub_1DCB38954();
        v8 = v69;
      }

      *(v8 + 16) = v9 + 1;
      v14 = v8 + v10;
      *(v14 + 32) = v12;
      *(v14 + 40) = v11;
      v10 += 16;
      v7 += 24;
      ++v9;
      --v6;
    }

    while (v6);
    v0 = v68;
    v15 = v68[19];

    v16 = v15[7];
    v17 = v15[8];
    __swift_project_boxed_opaque_existential_1(v15 + 4, v16);
    v18 = (*(v17 + 8))(v15, v8, v16, v17);
    v19 = 0;
    v67 = *(v18 + 16);
    v20 = v18 + 40;
    v65 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v21 = (v20 + 16 * v19);
    while (v67 != v19)
    {
      if (v19 >= *(v18 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      v23 = *(v21 - 1);
      v22 = *v21;
      v0[14] = v23;
      v0[15] = v22;
      v24 = swift_task_alloc();
      *(v24 + 16) = v66;

      v25 = sub_1DCC3EBE4(sub_1DCD00108, v24, v8);

      if (v25)
      {
        v26 = v65;
        v69 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_64_13();
          OUTLINED_FUNCTION_47_19();
          sub_1DCB38954();
          v26 = v69;
        }

        v28 = *(v26 + 16);
        v27 = *(v26 + 24);
        if (v28 >= v27 >> 1)
        {
          OUTLINED_FUNCTION_21_0(v27);
          sub_1DCB38954();
          v26 = v69;
        }

        ++v19;
        *(v26 + 16) = v28 + 1;
        v65 = v26;
        v29 = v26 + 16 * v28;
        *(v29 + 32) = v23;
        *(v29 + 40) = v22;
        v0 = v68;
        v20 = v18 + 40;
        goto LABEL_7;
      }

      v21 += 2;
      ++v19;
      v0 = v68;
    }

    if (!v65[2])
    {
      v5 = v64;
      goto LABEL_26;
    }

    if (!v65[2])
    {
      goto LABEL_47;
    }

    v30 = v0[19];
    v31 = v65[4];
    v0[25] = v31;
    v32 = v65[5];
    v0[26] = v32;

    v33 = v30[17];
    v34 = v30[18];
    __swift_project_boxed_opaque_existential_1(v30 + 14, v33);
    if ((*(v34 + 104))(v33, v34))
    {
      v35 = v0[19];

      v36 = v35[OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult + 8];
      v37 = sub_1DD0DD8EC();
      if (v36 != 255)
      {
        v38 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = OUTLINED_FUNCTION_50_0();
          *v39 = 0;
          _os_log_impl(&dword_1DCAFC000, v37, v38, "PAC: Device is still locked after we already pushed deviceUnlockFlow. Stopping execution.", v39, 2u);
          OUTLINED_FUNCTION_80();
        }

        static ExecuteResponse.complete()();

        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_141();

        __asm { BRAA            X1, X16 }
      }

      v60 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v37, v60))
      {
        v61 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v61);
        _os_log_impl(&dword_1DCAFC000, v37, v60, "PAC: Device is locked, will push UnlockDeviceFlow, which should make locked apps accessible as a side-effect.", v35, 2u);
        OUTLINED_FUNCTION_62();
      }

      sub_1DCE9DF34();
    }

    v54 = sub_1DD0DD8EC();
    v55 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_151();
      v57 = OUTLINED_FUNCTION_83();
      v69 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_1DCB10E9C(v31, v32, &v69);
      _os_log_impl(&dword_1DCAFC000, v54, v55, "PAC: Device is unlocked, will send an unlocked request for app %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_37();
    }

    v58 = swift_task_alloc();
    v0[27] = v58;
    *v58 = v0;
    OUTLINED_FUNCTION_59_16(v58);
    OUTLINED_FUNCTION_141();

    sub_1DCE9C928();
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v40 = *(v5 + 16);

    if (!v40)
    {
      v43 = v65[2];

      if (!v43)
      {
        v44 = sub_1DD0DD8EC();
        v45 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_23(v45))
        {
          v46 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v46);
          OUTLINED_FUNCTION_36_0();
          _os_log_impl(v47, v48, v49, v50, v51, 2u);
          OUTLINED_FUNCTION_62();
        }

        v52 = v0[19];

        *(v52 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_noAppsRequireUnlock) = 1;
      }

      v53 = sub_1DD0DB04C();
      OUTLINED_FUNCTION_12_53(v53);
    }

    v41 = swift_task_alloc();
    v0[32] = v41;
    *v41 = v0;
    OUTLINED_FUNCTION_59_16(v41);
    OUTLINED_FUNCTION_141();

    sub_1DCE9E284();
  }
}

void sub_1DCB8B610(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 49;
  v41 = a1 + 49;
  v43 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = (v3 + 24 * v1);
    v5 = v1;
    while (2)
    {
      if (v2 == v5)
      {
        v21 = 0;
        v22 = a1 + 49;
        v45 = MEMORY[0x1E69E7CC0];
        v42 = v22;
        while (1)
        {
          v23 = (v22 + 24 * v21);
          v24 = v21;
          while (2)
          {
            if (v2 == v24)
            {
              type metadata accessor for ProtectedAppCheck(0);
              OUTLINED_FUNCTION_26_28();
              sub_1DCB8BBF0(v39, v40, &protocol conformance descriptor for ProtectedAppCheck);
              sub_1DD0DCB0C();
            }

            if (v24 >= v2)
            {
              goto LABEL_37;
            }

            v21 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_38;
            }

            v25 = *(v23 - 17);
            v26 = *(v23 - 9);
            v27 = *(v23 - 1);
            OUTLINED_FUNCTION_38_23();
            v28 = *v23;
            v29 = OUTLINED_FUNCTION_7_56();
            switch(v28)
            {
              case 1:

                goto LABEL_29;
              case 2:
                v29 = OUTLINED_FUNCTION_49_16();
                goto LABEL_26;
              case 3:
                v29 = OUTLINED_FUNCTION_18_41();
                goto LABEL_26;
              default:
LABEL_26:
                v30 = OUTLINED_FUNCTION_61_17(v29);

                if ((v30 & 1) == 0)
                {

                  ++v24;
                  v23 += 24;
                  continue;
                }

LABEL_29:
                v31 = v45;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_64_13();
                  v32 = OUTLINED_FUNCTION_47_19();
                  sub_1DCE06BE8(v32, v33, v34);
                  v31 = v45;
                }

                v22 = v42;
                v36 = *(v31 + 16);
                v35 = *(v31 + 24);
                if (v36 >= v35 >> 1)
                {
                  v38 = OUTLINED_FUNCTION_21_0(v35);
                  sub_1DCE06BE8(v38, v36 + 1, 1);
                  v31 = v45;
                }

                *(v31 + 16) = v36 + 1;
                v45 = v31;
                v37 = v31 + 24 * v36;
                *(v37 + 32) = v25;
                *(v37 + 40) = v26;
                *(v37 + 48) = v27;
                *(v37 + 49) = v28;
                break;
            }

            break;
          }
        }
      }

      if (v5 >= v2)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        JUMPOUT(0x1DCB8B998);
      }

      v1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_36;
      }

      v6 = *(v4 - 17);
      v7 = *(v4 - 9);
      v8 = *(v4 - 1);
      OUTLINED_FUNCTION_38_23();
      v9 = *v4;
      v10 = OUTLINED_FUNCTION_7_56();
      switch(v9)
      {
        case 1:
          v10 = OUTLINED_FUNCTION_71_11();
          goto LABEL_11;
        case 2:

          if ((v8 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        case 3:
          v10 = OUTLINED_FUNCTION_18_41();
          goto LABEL_11;
        default:
LABEL_11:
          v11 = OUTLINED_FUNCTION_62_11(v10);

          if (v8 & 1 | ((v11 & 1) == 0))
          {
LABEL_12:

            ++v5;
            v4 += 24;
            continue;
          }

LABEL_13:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v14 = OUTLINED_FUNCTION_47_19();
            sub_1DCE06BE8(v14, v15, v16);
            v13 = v43;
          }

          v3 = v41;
          v18 = *(v13 + 16);
          v17 = *(v13 + 24);
          if (v18 >= v17 >> 1)
          {
            v20 = OUTLINED_FUNCTION_21_0(v17);
            sub_1DCE06BE8(v20, v18 + 1, 1);
            v13 = v43;
          }

          *(v13 + 16) = v18 + 1;
          v43 = v13;
          v19 = v13 + 24 * v18;
          *(v19 + 32) = v6;
          *(v19 + 40) = v7;
          *(v19 + 48) = 0;
          *(v19 + 49) = v9;
          break;
      }

      break;
    }
  }
}

void *OUTLINED_FUNCTION_61_6(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

unint64_t OUTLINED_FUNCTION_61_7(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 112));
}

uint64_t OUTLINED_FUNCTION_61_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1DCAFF9E8(&a9, va);
}

uint64_t OUTLINED_FUNCTION_61_12(uint64_t a1)
{

  return sub_1DD0DE02C();
}

double OUTLINED_FUNCTION_61_14(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1DCB90D40();
}

unint64_t OUTLINED_FUNCTION_61_15()
{
  *(v1 + 14) = v3;
  *(v1 + 22) = v4;
  *(v2 + 136) = v0;

  return sub_1DCDCB08C(v0);
}

void OUTLINED_FUNCTION_61_16(uint64_t a1, uint64_t a2)
{

  sub_1DD0DC9EC();
}

uint64_t OUTLINED_FUNCTION_61_17(uint64_t a1)
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_61_19@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + a1), *(v1 + a1 + 24));

  return type metadata accessor for SiriKitEvent(0);
}

unint64_t OUTLINED_FUNCTION_61_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DCB10E9C(v4, v5, va);
}

void *OUTLINED_FUNCTION_61_24()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 184), v0);
}

uint64_t OUTLINED_FUNCTION_61_25()
{
  v6 = (v3 + *(v4 + 68));
  *v6 = v0;
  v6[1] = v1;
  *(v3 + v2) = 0;

  return type metadata accessor for ResponseFactory();
}

__n128 OUTLINED_FUNCTION_61_26(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22)
{
  result = a22;
  a1[1] = a22;
  return result;
}

uint64_t sub_1DCB8BBF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DCB8BC38(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DCB8BCD0(v4, 1);
  OUTLINED_FUNCTION_56_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_5();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_8(v3 + 24 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_55_5();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DCB8BCE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1DCB8BD60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_state;
  swift_beginAccess();
  sub_1DCB8BE08(a1, v1 + v3);
  swift_endAccess();
  sub_1DCB8BE6C();
}

uint64_t SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 24) = a3;
  *(v4 + 16) = a4;
  return v4;
}

uint64_t sub_1DCB8BE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtectedAppCheck.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1DCB8BE6C()
{
  v0 = type metadata accessor for ProtectedAppCheck.State(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

id sub_1DCB8C088@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = [a1 batchSlotResolutionResult];
  sub_1DCB36A4C();
  v6 = v5;

  if (!v6)
  {
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_93_8();
    v13 = 0xD000000000000037;
LABEL_7:
    *a2 = CommandFailure.init(errorCode:reason:)(v11, v13, v12);
    goto LABEL_8;
  }

  result = [a1 batchSlotResolutionResult];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  sub_1DCB359BC();
  v10 = v9;

  if (!v10)
  {

    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    OUTLINED_FUNCTION_94_9();
    v13 = v14 + 12;
    v12 = v6 | 0x8000000000000000;
    v11 = -1;
    goto LABEL_7;
  }

  *a2 = v6;
  a2[1] = v10;
  type metadata accessor for ResolveConfirmProcessingResult(0);
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABB0, &qword_1DD103690);
  OUTLINED_FUNCTION_28();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCB8C254()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB8C338(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCB8C3D4(a1);
}

uint64_t sub_1DCB8C3D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB8C3E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_129_2();
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v7 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCB8C4E4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_76_6(v1);
  *v2 = v3;
  v2[1] = sub_1DCB8C57C;
  v4 = *(v0 + 16);

  return sub_1DCB4DF50(v4);
}

uint64_t sub_1DCB8C580(uint64_t a1)
{
  v2 = sub_1DD0DB04C();

  return __swift_getEnumTagSinglePayload(a1, 4, v2);
}

uint64_t sub_1DCB8C5C4(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  v3 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCB8C5EC()
{
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 216);
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v4 = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses;
  OUTLINED_FUNCTION_156(v1 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses, v0 + 16);
  v5 = *(v1 + v4);
  v6 = *(v3 + 32);

  v6(v1, v5, v2, v3);

  if (*(v1 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_appsRemainInaccessible) == 1)
  {
    v7 = *(v0 + 216);
    v8 = v7 + 16;
    v9 = v0 + 184;
  }

  else
  {
    v7 = *(v0 + 216);
    v10 = *(v7 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult + 8);
    if (v10 == 255 || (v10 & 1) == 0)
    {
      v11 = *(v1 + v4);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = (v11 + 48);
        v14 = v12 + 1;
        while (--v14)
        {
          v15 = *v13;
          v13 += 24;
          if (v15 == 1)
          {
            v16 = v7 + 16;
            v17 = v0 + 40;
            goto LABEL_13;
          }
        }

        if (*(v7 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_noAppsRequireUnlock) == 1)
        {
          OUTLINED_FUNCTION_2_20(v7 + 16, v0 + 112);
          *(v7 + 16) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_2_20(v7 + 16, v0 + 88);
          *(v7 + 16) = 1;
        }
      }

      else
      {
        v16 = v7 + 16;
        v17 = v0 + 136;
LABEL_13:
        OUTLINED_FUNCTION_2_20(v16, v17);
        *(v7 + 16) = 0;
      }

LABEL_14:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v18 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    v8 = v7 + 16;
    v9 = v0 + 160;
  }

  OUTLINED_FUNCTION_2_20(v8, v9);
  *(v7 + 16) = 1;
  goto LABEL_14;
}

void sub_1DCB8C8AC(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);

  oslog = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x1E12A6960](a2, &type metadata for ProtectedAppStatus);
    v9 = sub_1DCB10E9C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DCAFC000, oslog, v4, "DefaultProtectedAppCheckStrategy.protectedAppCheck called with status %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A8390](v6, -1, -1);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }
}

uint64_t sub_1DCB8CA44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DCB8CA94()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DCB8CBB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCB8CC98()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCB8CCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for GuardFlowResult;
  result = OUTLINED_FUNCTION_156(a1 + 16, v5);
  *a2 = *(a1 + 16);
  return result;
}

void sub_1DCB8CD48(_BYTE *a1)
{
  if (*a1)
  {
    v1 = -4;
  }

  else
  {
    v1 = 0;
  }

  sub_1DCB87830(0, v1);
}

void sub_1DCB8CD88(__n128 a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DD0DEB3C())
  {
    a1.n128_u64[0] = 136315650;
    v34 = a1;
    a1.n128_u64[0] = 136315138;
    v33 = a1;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E12A72C0](0, v4);
      if (!*(a3 + 16) || (v8 = *(v7 + 32), v9 = *(v7 + 40), , v10 = sub_1DCB21038(v8, v9), v12 = v11, , (v12 & 1) == 0))
      {
LABEL_21:
        sub_1DD0DCF8C();
      }

      v13 = *(*(a3 + 56) + 8 * v10);
      v14 = sub_1DCB08B14(v13);
      a3 = v13 & 0xC000000000000001;

      v15 = 0;
      v4 = &selRef_setResetFlowTaskState_;
      do
      {
        if (v14 == v15)
        {
          goto LABEL_20;
        }

        if (a3)
        {
          v16 = MEMORY[0x1E12A72C0](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          __break(1u);
          goto LABEL_41;
        }

        v18 = [v16 resolutionResultCode];

        ++v15;
      }

      while (v18 != 3);
      v19 = *(*(v7 + 16) + 16);
      v20 = sub_1DCB08B14(v13);
      if (v19 == v20)
      {
LABEL_20:

        goto LABEL_21;
      }

      v21 = v20;
      if (*(*(v7 + 16) + 16))
      {
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v22 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v22, qword_1EDE57E00);
        sub_1DD0DCF8C();
      }

      if (!v20)
      {

        v24 = MEMORY[0x1E69E7CC0];
        goto LABEL_37;
      }

      v36 = MEMORY[0x1E69E7CC0];
      sub_1DCE06B48();
      if ((v21 & 0x8000000000000000) == 0)
      {
        v35 = v7;
        v23 = 0;
        v24 = v36;
        v25 = v21;
        do
        {
          if (a3)
          {
            v26 = MEMORY[0x1E12A72C0](v23, v13);
          }

          else
          {
            v26 = *(v13 + 8 * v23 + 32);
          }

          v27 = v26;
          v28 = [v26 *(v4 + 464)] == 0;

          v29 = *(v36 + 16);
          if (v29 >= *(v36 + 24) >> 1)
          {
            sub_1DCE06B48();
          }

          ++v23;
          *(v36 + 16) = v29 + 1;
          *(v36 + v29 + 32) = 2 * v28;
          v4 = 0x1E864F000;
        }

        while (v25 != v23);

        v7 = v35;
LABEL_37:
        v30 = *(v7 + 32);
        v31 = *(v7 + 40);
        v32 = *(v7 + 24);
        type metadata accessor for SiriKitParameterMetadata();
        swift_allocObject();
        SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)(v30, v31, v32, v24);

        sub_1DD0DCF8C();
      }

      __break(1u);
      return;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      sub_1DD0DCF8C();
    }

LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }
}

id sub_1DCB8D4CC(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void *sub_1DCB8D4D8()
{
  v1 = v0;
  v2 = *(v0 + 280);
  if (v2 <= 0xFB)
  {
    v7 = *(v1 + 272);
    sub_1DCB8D4CC(v7, v2 & 1);
  }

  else
  {
    sub_1DD0DEC1C();

    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    sub_1DCB87A3C(v3, v4);
    v5 = sub_1DCC1F6F4(v3, v4);
    MEMORY[0x1E12A6780](v5);

    v6 = sub_1DCC20BCC();
    v7 = OUTLINED_FUNCTION_34(&type metadata for AppRCHAuthorizationFlow.InvalidStateError, v6);
    *v8 = 0xD00000000000002ALL;
    v8[1] = 0x80000001DD114450;
  }

  return v7;
}

void *sub_1DCB8D5C0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
  result = sub_1DCB8D4D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_1DCB8D62C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_14_23();
  v9 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v9, v10, v11, v12);
  OUTLINED_FUNCTION_47_7();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
  if (!OUTLINED_FUNCTION_16_13(v13) || v50 == 255)
  {
    OUTLINED_FUNCTION_27_11();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v14 = sub_1DD0DD8FC();
    v15 = OUTLINED_FUNCTION_59_0(v14, qword_1EDE57E00);
    v16 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v16))
    {
      OUTLINED_FUNCTION_43_0();
      v17 = OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_53_3(v17);
      OUTLINED_FUNCTION_52_7(4.8151e-34);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3140, &qword_1DD0E92B8);
      v19 = OUTLINED_FUNCTION_42_9(v18);
      OUTLINED_FUNCTION_41_10(v19, v20);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v51 = v3;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v22 = OUTLINED_FUNCTION_42_9(v21);
      OUTLINED_FUNCTION_41_10(v22, v23);
      OUTLINED_FUNCTION_148();
      *algn_1ECCA3CEE = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v24, v25, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v26 = OUTLINED_FUNCTION_10_23();
    v27(v26);
    v28 = OUTLINED_FUNCTION_8_31();
    v31 = __swift_storeEnumTagSinglePayload(v28, v29, v30, v14);
    OUTLINED_FUNCTION_44_6(v31, v32, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v33)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v34 = sub_1DD0DD8EC();
      v35 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v35))
      {
        OUTLINED_FUNCTION_83();
        v36 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_54_8(v36);
        *v48 = 136315650;
        v37 = OUTLINED_FUNCTION_45_6("/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/Flow.swift");
        OUTLINED_FUNCTION_58_5(v37, v38);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v39 = OUTLINED_FUNCTION_21_7();
        *(v48 + 24) = sub_1DCB10E9C(v39, v40, v41);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v42, v43, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v44 = OUTLINED_FUNCTION_13_18();
      v45(v44);
    }

    v46 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v46, v47);
  }

  v51 = v49;
  v52 = v50 & 1;
  v1(&v51);
  sub_1DCB5524C(v49, v50);
  OUTLINED_FUNCTION_49();
}

void sub_1DCB8D960(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DCB8DA04(a1, a2);
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB8DA04(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1DCB8DA54(a1, a2);
  return v4;
}

uint64_t sub_1DCB8DA54(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1DCB18FF0(a2, v2 + 24);
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 4;
  return v2;
}

void sub_1DCB8DA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RCHFlowAsync.State(0, *(*a2 + 80), *(*a2 + 88), a4);
  MEMORY[0x1EEE9AC00](v7, v7);
  v9 = &v12 - v8;
  if (*(a1 + 8) == 1)
  {
    v10 = *a1;
    *v9 = *a1 | 0x4000000000000000;
    *(v9 + 8) = xmmword_1DD0E5100;
    swift_storeEnumTagMultiPayload();
    v11 = v10;
    sub_1DCB7C864(v9);
  }

  *v9 = a3;
  *(v9 + 1) = a4;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t ProtectedAppCheck.__deallocating_deinit()
{
  ProtectedAppCheck.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB8DC6C(void *a1)
{
  v2 = [a1 intentId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCB8DCDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCB8DD78(a1);
}

uint64_t sub_1DCB8DD78(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB8DDC0, 0, 0);
}

void sub_1DCB8DDC0()
{
  v43 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[11] = OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_137();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v4);
    OUTLINED_FUNCTION_22_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  v10 = v0[9];

  v11 = *v10;
  v12 = v10 + *(*v10 + 152);
  v13 = *v12;
  v0[12] = *v12;
  v14 = *(v12 + 8);
  v0[13] = v14;
  v15 = *(v12 + 16);
  v0[14] = v15;
  v16 = *(v12 + 24);
  v0[15] = v16;
  v17 = *(v12 + 32);
  v0[16] = v17;
  switch(*(v12 + 40))
  {
    case 0:
      OUTLINED_FUNCTION_3_105();
      sub_1DCB3C2E8(v18, v19, v20, v21, v22, 0);
      sub_1DD0DCF8C();
    case 1:
      sub_1DCF2F3D4(*(v0[9] + *(v11 + 104)), *(v0[10] + 80), *(v0[10] + 88));
    case 7:
      sub_1DCB8E3C0(v13, v14);
      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v24))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_241(&dword_1DCAFC000, v25, v26, "ResolveConfirmFlow processing complete. Exiting");
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_3_105();
      v32 = 7;
      goto LABEL_14;
    case 8:
      v33 = v13;
      v23 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v34))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_241(&dword_1DCAFC000, v35, v36, "ResolveConfirmFlow is in an error state. Exiting");
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_3_105();
      v32 = 8;
LABEL_14:
      sub_1DCB150B8(v27, v28, v29, v30, v31, v32);
      goto LABEL_15;
    case 9:
      if (v14 | v13 | v15 | v16 | v17)
      {
        goto LABEL_17;
      }

      v23 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_137();
      if (os_log_type_enabled(v23, v39))
      {
        v40 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v40);
        OUTLINED_FUNCTION_120(&dword_1DCAFC000, v41, v42, "ResolveConfirmFlow intent is cancelled. Exiting");
        OUTLINED_FUNCTION_92_0();
        sub_1DCB150B8(0, 0, 0, 0, v17, 9);
      }

LABEL_15:

      static ExecuteResponse.complete()();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_33_5();

      __asm { BRAA            X1, X16 }

      return;
    default:
LABEL_17:
      sub_1DD0DCF8C();
  }
}

id sub_1DCB8E3C0(id result, unsigned __int8 a2)
{
  if ((a2 >> 6) <= 1u)
  {
    return result;
  }

  return result;
}

void sub_1DCB8E460(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v20 = a3;
  v21 = v5;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  v14 = v9[4];
  v15 = *(v9 + 40);
  v16 = v9[6];
  v22 = type metadata accessor for NeedsValueFlowStrategyAdapter(0, v17, v18, v17);
  (*(v6 + 16))(v8, v20, a4);
  v23 = v10;
  v24 = v11;
  v25 = v13;
  v26 = v12;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB8E6F8(uint64_t a1, void *a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  v4[8] = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB8E840, 0, 0);
}

uint64_t sub_1DCB8E7E8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1DCB8E9B0(a1, a2, a3);
  return v6;
}

void sub_1DCB8E840()
{
  OUTLINED_FUNCTION_125();
  v1 = v0[4];
  v0[10] = *(v1 + 16);
  v0[11] = *(v1 + 24);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB8E9B0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v15 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  OUTLINED_FUNCTION_112();
  (*(v9 + 32))(v3 + v10);
  OUTLINED_FUNCTION_66();
  v12 = v3 + *(v11 + 104);
  *v12 = *a2;
  *(v12 + 16) = v15;
  *(v12 + 32) = v6;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v3 + *(v13 + 112));
  return v3;
}

uint64_t sub_1DCB8EAD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PromptForValueFlowAsync.__allocating_init<A>(strategy:outputPublisher:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)(a1, a2, a3, a4);
  return v8;
}

void PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  v10 = OUTLINED_FUNCTION_76_13();
  v11(v10);
  v4[8] = sub_1DCB598EC(8);
  v4[9] = v12;
  v4[10] = v13;
  v4[11] = v14;
  v15 = OUTLINED_FUNCTION_24_17();
  type metadata accessor for PromptForValueFlowAsync.State(v15, v16, v17, v18);
  swift_storeEnumTagMultiPayload();
  v19 = OUTLINED_FUNCTION_24_17();
  type metadata accessor for AnyPromptForValueFlowStrategy(v19, v20, v21, v22);
  v4[2] = sub_1DCB8EDB0(a1, a3, a4);
  sub_1DCAFF9E8(a2, (v4 + 3));
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB8EDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_63_12();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_52_1();
  sub_1DCB15440(v6, a2, a3);
  return v3;
}

uint64_t sub_1DCB8EDFC()
{
  OUTLINED_FUNCTION_42();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABB0, &qword_1DD103690);
  v1[12] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v1[13] = OUTLINED_FUNCTION_38();
  v8 = sub_1DD0DD85C();
  v1[14] = v8;
  OUTLINED_FUNCTION_99(v8);
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCB8EED8()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[17] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v10 = sub_1DD0DD88C();
  v0[18] = __swift_project_value_buffer(v10, qword_1EDE57DD0);
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_103_8();
  sub_1DCB70034(v11, v12, v13, v14);
  v0[19] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[20] = v16;
  *v16 = v17;
  v16[1] = sub_1DCB8C254;
  v18 = v0[10];
  v19 = v0[7];

  return sub_1DCB8F054((v0 + 2), v19, v18);
}

uint64_t sub_1DCB8F054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB8F06C()
{
  OUTLINED_FUNCTION_41();
  if (*(v0[14] + 80) == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v1 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
    v2 = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v3))
    {
      v4 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v4);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_62();
    }

    v10 = v0[15];

    __swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
    v11 = swift_task_alloc();
    v0[16] = v11;
    sub_1DCB10E5C(0, &qword_1EDE460D0, 0x1E69C7870);
    OUTLINED_FUNCTION_45_22();
    *v11 = v12;
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_48();

    return AceServiceInvokerAsync.submitToCompanion<A>(_:)();
  }

  else
  {
    if (sub_1DCB610F0())
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v15 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v15, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    OUTLINED_FUNCTION_23_29(v0[15]);
    v16 = swift_task_alloc();
    v0[21] = v16;
    sub_1DCB10E5C(0, &qword_1EDE460D0, 0x1E69C7870);
    OUTLINED_FUNCTION_45_22();
    *v16 = v17;
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_48();

    return AceServiceInvokerAsync.submit<A>(_:)();
  }
}

uint64_t PromptForValueFlowAsync.execute()()
{
  OUTLINED_FUNCTION_39();
  v1[5] = v2;
  v1[6] = v0;
  v3 = *v0;
  v4 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_20_0(v4);
  v1[7] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[8] = v5;
  OUTLINED_FUNCTION_80_9(v5, *(v3 + 80), v6, v7);
  OUTLINED_FUNCTION_24_0();
  v1[10] = v8;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCB8F4D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return PromptForValueFlowAsync.execute()();
}

uint64_t sub_1DCB8F56C()
{
  v76 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  v5 = *(*v4 + 112);
  OUTLINED_FUNCTION_156(v4 + v5, (v0 + 2));
  (*(v3 + 16))(v1, v4 + v5, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1DCC333DC(v0[12], v0[8]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v6 = v0[7];
      v7 = v0[8];
      v8 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v8, qword_1EDE57E00);
      OUTLINED_FUNCTION_13_57();
      sub_1DCB2479C(v7, v6, v9);
      v10 = sub_1DD0DD8EC();
      v11 = sub_1DD0DE6DC();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[7];
      if (v12)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v75 = v15;
        *v14 = 136315138;
        v16 = Input.description.getter();
        v18 = v17;
        OUTLINED_FUNCTION_6_60();
        sub_1DCB28690(v13, v19);
        v20 = sub_1DCB10E9C(v16, v18, &v75);

        *(v14 + 4) = v20;
        _os_log_impl(&dword_1DCAFC000, v10, v11, "PromptForValueFlow parsing response from user: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_6_60();
        sub_1DCB28690(v13, v71);
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[17] = v72;
      *v72 = v73;
      v72[1] = sub_1DCE8B7B8;
      OUTLINED_FUNCTION_76();

      result = sub_1DCE8C6BC();
      break;
    case 1u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v35 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
      v36 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v37))
      {
        v38 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v38);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[19] = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_41_0(v44);
      OUTLINED_FUNCTION_76();

      result = sub_1DCE8CE8C();
      break;
    case 4u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v22 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v24))
      {
        v25 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v25);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v26, v27, v28, v29, v30, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[13] = v31;
      *v31 = v32;
      OUTLINED_FUNCTION_41_0(v31);
      OUTLINED_FUNCTION_76();

      result = sub_1DCE8C2B8();
      break;
    case 6u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v47 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v47, qword_1EDE57E00);
      v48 = sub_1DD0DD8EC();
      v49 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v49))
      {
        v50 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v50);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v51, v52, v53, v54, v55, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[21] = v56;
      *v56 = v57;
      OUTLINED_FUNCTION_41_0(v56);
      OUTLINED_FUNCTION_76();

      result = sub_1DCE8D0B4();
      break;
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v59 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v59, qword_1EDE57E00);
      v60 = sub_1DD0DD8EC();
      v61 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v61))
      {
        v62 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v62);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v63, v64, v65, v66, v67, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[15] = v68;
      *v68 = v69;
      OUTLINED_FUNCTION_41_0(v68);
      OUTLINED_FUNCTION_76();

      result = sub_1DCE8C3E0();
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v21 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v21, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCB8FD3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB92594;

  return sub_1DCB8FDD8(a1);
}

uint64_t sub_1DCB8FDD8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB8FE20, 0, 0);
}

uint64_t sub_1DCB8FE20()
{
  v1 = v0[10];
  v2 = *(v1 + 64);
  v0[12] = v2;
  v3 = *(v1 + 72);
  v0[13] = v3;
  v4 = *(v1 + 80);
  v0[14] = v4;
  v5 = *(v1 + 88);
  v0[15] = v5;
  v6 = *(v1 + 96);
  v0[16] = v6;
  v7 = *(v1 + 104);
  v0[17] = v7;
  switch(*(v1 + 112))
  {
    case 0:
      v8 = OUTLINED_FUNCTION_5_98();
      sub_1DCB903F8(v8, v9, v10, v11, v12, v13, 0);
      sub_1DD0DCF8C();
    case 2:
      sub_1DCF349BC(v2, v3, v4, v5);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v27 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v27, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_182();
      if (os_log_type_enabled(v16, v28))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_30_37(&dword_1DCAFC000, v29, v30, "RouteResolutionResultFlow in state complete. Exiting.");
        OUTLINED_FUNCTION_80();
      }

      v20 = OUTLINED_FUNCTION_5_98();
      v26 = 2;
      goto LABEL_13;
    case 3:
      v14 = v2;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v15 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v15, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_182();
      if (os_log_type_enabled(v16, v17))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_30_37(&dword_1DCAFC000, v18, v19, "RouteResolutionResultFlow in an error state. Exiting.");
        OUTLINED_FUNCTION_80();
      }

      v20 = OUTLINED_FUNCTION_5_98();
      v26 = 3;
LABEL_13:
      sub_1DCB17238(v20, v21, v22, v23, v24, v25, v26);

      goto LABEL_26;
    case 4:
      if (v2 != 1 || (v4 | v3 | v5 | v6 | v7) != 0)
      {
        goto LABEL_18;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v33 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v33, qword_1EDE57E00);
      v34 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_182();
      if (os_log_type_enabled(v34, v35))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_31_28(&dword_1DCAFC000, v36, v37, "RouteResolutionResultFlow in state cancelled. Exiting.");
        OUTLINED_FUNCTION_80();
        sub_1DCB17238(1, 0, 0, v5, v6, v7, 4);
      }

LABEL_26:
      static ExecuteResponse.complete()();
      OUTLINED_FUNCTION_29();

      return v38();
    default:
LABEL_18:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v32 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }
}

void sub_1DCB903F8(id result, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
      sub_1DD0DCF8C();
    case 1:
      sub_1DD0DCF8C();
    case 2:

      sub_1DCF349BC(result, a2, a3, a4);
      break;
    case 3:

      v7 = result;
      break;
    default:
      return;
  }
}

uint64_t sub_1DCB904E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1DCB90534, 0, 0);
}

uint64_t sub_1DCB90534()
{
  v63 = v0;
  v2 = v0[5];
  v3 = v2[4];
  v4 = v2[5];
  v0[8] = v4;
  v5 = v2[3];

  v6 = sub_1DCB90DA0(v3, v4, v5);
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    v60 = v6 & 0xC000000000000001;
    v61 = sub_1DCB08B14(v6);
    v59 = v8 & 0xFFFFFFFFFFFFFF8;
    v56 = v4;
    v58 = v8;
    while (1)
    {
      if (v61 == v9)
      {

        OUTLINED_FUNCTION_28_31();
        if (!v13)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v49 = v3;
        v50 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v50, qword_1EDE57E00);
        v51 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_182();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = OUTLINED_FUNCTION_50_0();
          *v53 = 0;
          _os_log_impl(&dword_1DCAFC000, v51, v5, "Results did not require requesting any further values from the user. Transitioning to complete.", v53, 2u);
          OUTLINED_FUNCTION_80();
        }

        v54 = v0[6];

        v48 = *(v54 + 64);
        v41 = *(v54 + 72);
        v43 = *(v54 + 80);
        v44 = *(v54 + 88);
        v45 = *(v54 + 96);
        v46 = *(v54 + 104);
        *(v54 + 64) = v49;
        *(v54 + 72) = v4;
        *(v54 + 80) = v10;
        *(v54 + 88) = 0;
        *(v54 + 96) = 0;
        *(v54 + 104) = 0;
        v47 = *(v54 + 112);
        *(v54 + 112) = 2;
        goto LABEL_39;
      }

      if (v60)
      {
        v11 = MEMORY[0x1E12A72C0](v9, v8);
      }

      else
      {
        if (v9 >= *(v59 + 16))
        {
          goto LABEL_43;
        }

        v11 = *(v8 + 8 * v9 + 32);
      }

      v1 = v11;
      v0[9] = v11;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        OUTLINED_FUNCTION_1_2();
        swift_once();
LABEL_28:
        v24 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v24, qword_1EDE57E00);

        v25 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();

        if (OUTLINED_FUNCTION_62_0())
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v62 = v27;
          *v26 = 136315394;
          *(v26 + 4) = sub_1DCB10E9C(v3, v56, &v62);
          *(v26 + 12) = 2048;
          *(v26 + 14) = v9;
          OUTLINED_FUNCTION_32_29(&dword_1DCAFC000, v28, v29, "RouteResolutionResultFlow in state resolveParameter for parameter name='%s' index=%ld.");
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          v4 = v56;
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_37();
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_45();
        v0[10] = v30;
        *v30 = v31;
        v30[1] = sub_1DCB921CC;
        v32 = v0[3];
        v33 = v0[4];

        return sub_1DCB91174(v32, v33, v1, v3, v4, v9);
      }

      v12 = [v11 resolutionResultCode];
      v10 = v12;
      if (v12 == 5)
      {
        break;
      }

      v13 = (v12 - 1) < 4 || v12 == 6;
      if (v13)
      {

        OUTLINED_FUNCTION_28_31();
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_28;
      }

      OUTLINED_FUNCTION_28_31();
      if (!v13)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v14 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);
      v1 = v1;
      v5 = sub_1DD0DD8EC();
      v15 = sub_1DD0DE6DC();

      if (OUTLINED_FUNCTION_62_0())
      {
        v16 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v62 = v57;
        *v16 = 136315138;
        v0[2] = [v1 resolutionResultCode];
        type metadata accessor for INResolutionResultCode(0);
        v17 = sub_1DD0DE02C();
        v19 = sub_1DCB10E9C(v17, v18, &v62);
        v8 = v58;

        *(v16 + 4) = v19;
        v4 = v56;
        _os_log_impl(&dword_1DCAFC000, v5, v15, "Found a resolution result '%s' that didn't need dialog, looking at the next one", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        goto LABEL_21;
      }

LABEL_24:
      ++v9;
    }

    OUTLINED_FUNCTION_28_31();
    if (!v13)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v20 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);

    v5 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6DC();

    if (OUTLINED_FUNCTION_62_0())
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v62 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1DCB10E9C(v3, v4, &v62);
      _os_log_impl(&dword_1DCAFC000, v5, v21, "Result code .notRequired should nil out the parameter value for %s. This is handled elsewhere. ", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v8 = v58;
LABEL_21:
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    goto LABEL_24;
  }

  v35 = v3;
  v36 = v0[6];
  v37 = type metadata accessor for RouteResolutionResultFlow.ResolutionResultProcessingError(0, *(v0[7] + 80), *(v0[7] + 88), v7);
  OUTLINED_FUNCTION_1_117();
  WitnessTable = swift_getWitnessTable();
  v39 = OUTLINED_FUNCTION_34(v37, WitnessTable);
  *v40 = v35;
  *(v40 + 8) = v4;
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0u;
  *(v40 + 48) = 0;
  v42 = *(v36 + 64);
  v41 = *(v36 + 72);
  v43 = *(v36 + 80);
  v44 = *(v36 + 88);
  v45 = *(v36 + 96);
  v46 = *(v36 + 104);
  *(v36 + 64) = v39;
  *(v36 + 72) = 0u;
  *(v36 + 88) = 0u;
  *(v36 + 104) = 0;
  v47 = *(v36 + 112);
  *(v36 + 112) = 3;
  v48 = v42;
LABEL_39:
  sub_1DCB17238(v48, v41, v43, v44, v45, v46, v47);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v55();
}

uint64_t sub_1DCB90B4C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v4[13] = v0;

  OUTLINED_FUNCTION_92_6();

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCB90C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1DCB21038(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_14(v3);
}

uint64_t sub_1DCB90CAC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_28_21();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB91D68;
  v2 = OUTLINED_FUNCTION_4_76(*(v0 + 72));

  return sub_1DCB90DA8(v2, v3, v4, v5, v6);
}

double sub_1DCB90D40()
{
  OUTLINED_FUNCTION_1_16();
  if (v4 && (v5 = v3, v6 = sub_1DCB21038(v1, v2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_1DCB0DF6C(v8, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

uint64_t sub_1DCB90DA8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 104) = a4;
  *(v6 + 112) = v5;
  *(v6 + 88) = a1;
  *(v6 + 96) = a3;
  *(v6 + 120) = type metadata accessor for SiriKitEventPayload(0);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 152) = *a2;
  *(v6 + 153) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1DCB90E60, 0, 0);
}

uint64_t sub_1DCB90E60()
{
  v1 = *(v0 + 88);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (sub_1DCB651D0(v2))
  {
    v19 = *(v0 + 153);
    v16 = *(v0 + 152);
    v3 = *(v0 + 128);
    v4 = *(v0 + 112);
    v18 = *(v0 + 104);
    v17 = *(v0 + 96);
    v5 = (v4 + *(*v4 + 112));
    v6 = (v4 + *(*v4 + 104));
    v7 = [v6[1] typeName];
    v8 = sub_1DD0DDFBC();
    v10 = v9;

    v11 = *v6;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v12 = v6[2];
    v13 = v6[3];
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    type metadata accessor for SiriKitEvent(0);
    *v3 = v16;
    *(v3 + 8) = v8;
    *(v3 + 16) = v10;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = v11;
    sub_1DCB17C3C(v0 + 56, v3 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    sub_1DCB17C3C(v0 + 16, v3 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
    *(v3 + 136) = v12;
    *(v3 + 144) = v13;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
    *(v3 + 168) = v17;
    *(v3 + 176) = v18;
    *(v3 + 184) = v19;
    swift_storeEnumTagMultiPayload();

    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_29();

  return v14();
}

uint64_t sub_1DCB91174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[42] = a6;
  v7[43] = v6;
  v7[40] = a4;
  v7[41] = a5;
  v7[38] = a2;
  v7[39] = a3;
  v7[37] = a1;
  v7[44] = *v6;
  return MEMORY[0x1EEE6DFA0](sub_1DCB911C8, 0, 0);
}

uint64_t ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = 0;
  *(a7 + 48) = a6;
  return result;
}

uint64_t sub_1DCB9199C(uint64_t a1)
{
  *(v2 + 448) = v1;
  *(v2 + 456) = *v1;
  OUTLINED_FUNCTION_72_15(a1);
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCB919EC()
{
  OUTLINED_FUNCTION_36_30();
  OUTLINED_FUNCTION_24_28();
  if (!v1 && v0[2])
  {
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_39_23(v0[56]);
  OUTLINED_FUNCTION_23_24();
  if (!v1)
  {
    v4 = v0[24];
    v0[58] = v4;
    if (v4)
    {
      v5 = v0[56];
      v6 = v0[25];
      v0[59] = v6;
      v7 = swift_task_alloc();
      v0[60] = v7;
      v7[2] = v4;
      v7[3] = v6;
      v7[4] = v5;
      v7[5] = v0 + 46;
      sub_1DD0DCF8C();
    }
  }

  v8 = type metadata accessor for IntentPromptAnswer(0, *(v0[57] + 80), v2, v3);
  sub_1DCEB86C0(0x6C6156736465654ELL, 0xEE00776F6C466575, v8, v9);
}