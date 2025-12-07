void sub_1E3A0958C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = 0x746C7561666564;
  OUTLINED_FUNCTION_8();
  v4 += 275;
  v5 = *v4;
  v6 = 0xE700000000000000;
  v7 = (*v4)();
  v8 = 0x746C7561666564;
  switch(v7)
  {
    case 1:

      v10 = xmmword_1E42B2A20;
      v11 = xmmword_1E42B2A30;
      if (v2)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    case 2:
      v8 = OUTLINED_FUNCTION_13_72();
      goto LABEL_6;
    case 3:
      v6 = 0xE600000000000000;
      v8 = OUTLINED_FUNCTION_6_77();
      goto LABEL_6;
    default:
LABEL_6:
      v12 = OUTLINED_FUNCTION_40_5(v8, v6, 0x7478654E7075);

      if (v12)
      {
        v13 = -1;
      }

      else
      {
        v13 = 0;
      }

      v14 = vdupq_n_s64(v13);
      v11 = vbslq_s8(v14, xmmword_1E42B2A30, xmmword_1E42B2A40);
      v10 = vbslq_s8(v14, xmmword_1E42B2A20, xmmword_1E42B2A30);
      if (v2)
      {
LABEL_10:
        v45 = xmmword_1E42B29E0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v42 = v11;
        v41 = v11.i64[0];
        v43 = v11.i64[0];
        v44 = 0;
        v38 = v10;
        v37 = v10.i64[0];
        v39 = v10.i64[0];
        v40 = 0;
        __asm { FMOV            V0.2D, #18.0 }

        v35[0] = _Q0;
        v35[1] = xmmword_1E42B2A50;
        v36 = 0;
        v20 = 0xE600000000000000;
        v21 = (v5)(v9);
        v22 = 0x7478654E7075;
        switch(v21)
        {
          case 1:
            goto LABEL_14;
          case 2:

            v24 = 0x4020000000000000;
            goto LABEL_16;
          case 3:
            v22 = OUTLINED_FUNCTION_6_77();
            goto LABEL_14;
          default:
            v20 = 0xE700000000000000;
            v22 = 0x746C7561666564;
LABEL_14:
            v25 = OUTLINED_FUNCTION_38_23(v22, v20, 0x79616C5079656BLL);

            v24 = 0x4024000000000000;
            if (v25)
            {
              v24 = 0x4020000000000000;
            }

LABEL_16:
            v32 = xmmword_1E42B2A00;
            v31 = v24;
            v33 = 0x4028000000000000;
            v34 = 0;
            (v5)(v23);
            OUTLINED_FUNCTION_25_43();
            switch(v26)
            {
              case 1:
                v0 = 0xE600000000000000;
                v3 = 0x7478654E7075;
                goto LABEL_20;
              case 2:

                v27 = 0x4014000000000000;
                goto LABEL_22;
              case 3:
                v0 = 0xE600000000000000;
                v3 = 0x736172747865;
                goto LABEL_20;
              default:
LABEL_20:
                OUTLINED_FUNCTION_38_23(v3, v0, 0x79616C5079656BLL);
                OUTLINED_FUNCTION_28_3();
                v27 = 0x4028000000000000;
                if (v3)
                {
                  v27 = 0x4014000000000000;
                }

LABEL_22:
                __dst[0] = v27;
                *&__dst[1] = xmmword_1E42B2A60;
                __dst[3] = 0x4028000000000000;
                LOBYTE(__dst[4]) = 0;
                type metadata accessor for UIEdgeInsets();
                sub_1E3C2FCB8(&v45, &v41, &v37, v35, &v31, __dst, v28, __src);
                memcpy(__dst, __src, 0xE9uLL);
                OUTLINED_FUNCTION_18();
                OUTLINED_FUNCTION_9_2();
                OUTLINED_FUNCTION_42_31();
                v29();
                break;
            }

            break;
        }
      }

LABEL_23:
      OUTLINED_FUNCTION_25_2();
      return;
  }
}

uint64_t sub_1E3A098D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A098D0();
  *a1 = 0;
  return result;
}

void sub_1E3A09908()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_8();
  v0 += 233;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  v2 = OUTLINED_FUNCTION_15_8();
  v3(v2);

  (v1)(v4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_10_7();
  v6(v5);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  v8 = OUTLINED_FUNCTION_10_7();
  v9(v8);

  (v1)(v10);
  LOBYTE(v231) = 10;
  LOBYTE(v226) = 10;
  LOBYTE(v221) = 10;
  LOBYTE(v216) = 5;
  v11 = sub_1E3C3DE00();
  v237[0] = v211;
  v19 = OUTLINED_FUNCTION_4_96(v11, v12, v13, v14, v15, v16, v17, v18, v171, v187, 11);
  sub_1E3C2FCB8(v19, v20, v21, &v221, v237, &v216, &qword_1F5D54AF8, v22);
  OUTLINED_FUNCTION_11_70();
  OUTLINED_FUNCTION_14();
  v31 = OUTLINED_FUNCTION_4_68(v23, v24, v25, v26, v27, v28, v29, v30, v172, v188, __dst[0]);
  v32(v31, 54);

  v34 = (v1)(v33);
  LOBYTE(v231) = 22;
  LOBYTE(v226) = 22;
  LOBYTE(v221) = 26;
  LOBYTE(v216) = 17;
  LOBYTE(v211) = 22;
  v42 = OUTLINED_FUNCTION_4_96(v34, v35, v36, v37, v38, v39, v40, v41, v173, v189, 21);
  OUTLINED_FUNCTION_20_51(v42, v43, v44, v45, v174, v190, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220);
  OUTLINED_FUNCTION_11_70();
  OUTLINED_FUNCTION_14();
  v54 = OUTLINED_FUNCTION_4_68(v46, v47, v48, v49, v50, v51, v52, v53, v175, v191, __dst[0]);
  v55(v54, 48);

  (v1)(v56);
  *&v57 = OUTLINED_FUNCTION_45_24();
  *__dst = v57;
  *&__dst[16] = v57;
  __dst[32] = 1;
  v231 = 0x4020000000000000;
  v232 = 0;
  v233 = 0;
  v234 = 0;
  v235 = 0;
  v226 = 0x4020000000000000;
  v227 = 0;
  v228 = 0;
  v229 = 0;
  v230 = 0;
  v221 = 0x402C000000000000;
  v222 = 0;
  v223 = 0;
  v224 = 0;
  v225 = 0;
  v216 = 0x4024000000000000;
  v217 = 0;
  v218 = 0;
  v219 = 0;
  LOBYTE(v220) = 0;
  v58 = *MEMORY[0x1E69DDCE0];
  v59 = *(MEMORY[0x1E69DDCE0] + 8);
  v61 = *(MEMORY[0x1E69DDCE0] + 16);
  v60 = *(MEMORY[0x1E69DDCE0] + 24);
  v211 = *MEMORY[0x1E69DDCE0];
  LOBYTE(v215) = 0;
  type metadata accessor for UIEdgeInsets();
  v63 = v62;
  v71 = OUTLINED_FUNCTION_4_96(v62, v64, v65, v66, v67, v68, v69, v70, v176, v192, __dst[0]);
  OUTLINED_FUNCTION_20_51(v71, v72, v73, v74, v177, v193, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v210, v211, v59, v61, v60, v215, v216, v217, v218, v219, v220);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v83 = OUTLINED_FUNCTION_4_68(v75, v76, v77, v78, v79, v80, v81, v82, v178, v194, __dst[0]);
  v84(v83, 0);

  OUTLINED_FUNCTION_9_2();
  v86 = (*(v85 + 2224))();
  if ((v86 & 1) == 0)
  {
    v1();
    *&v87 = OUTLINED_FUNCTION_45_24();
    *&__dst[8] = *(&v87 + 1);
    *&__dst[16] = v87;
    __dst[32] = 1;
    v231 = v58;
    v232 = v59;
    v233 = v61;
    v234 = v60;
    v235 = 0;
    v226 = v58;
    v227 = v59;
    v228 = v61;
    v229 = v60;
    v230 = 0;
    v221 = v58;
    v222 = v59;
    v223 = v61;
    v224 = v60;
    v225 = 0;
    v216 = v58;
    v217 = v59;
    v218 = v61;
    v219 = v60;
    LOBYTE(v220) = 0;
    v211 = v58;
    v212 = v59;
    v213 = v61;
    v214 = v60;
    LOBYTE(v215) = 0;
    v96 = OUTLINED_FUNCTION_4_96(v88, v89, v90, v91, v92, v93, v94, v95, v179, v195, v87);
    OUTLINED_FUNCTION_20_51(v96, v97, v98, v99, v180, v196, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220);
    memcpy(__dst, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v108 = OUTLINED_FUNCTION_4_68(v100, v101, v102, v103, v104, v105, v106, v107, v181, v197, __dst[0]);
    v109(v108, 0);
  }

  v110 = (v1)(v86);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v111 = *(*v110 + 680);
  v112 = v63;
  v111(v63);

  (v1)(v113);
  __dst[0] = 11;
  LOBYTE(v231) = 2;
  LOBYTE(v226) = 0;
  LOBYTE(v221) = 0;
  sub_1E3C3DE00();
  v114 = OUTLINED_FUNCTION_52_19();
  HIBYTE(v195) = v237[0];
  v122 = OUTLINED_FUNCTION_4_96(v114, v115, v116, v117, v118, v119, v120, v121, v179, v195, __dst[0]);
  OUTLINED_FUNCTION_51_19(v122, v123, v124, v125, v182, v198, v203, v205, v207, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
  OUTLINED_FUNCTION_11_70();
  OUTLINED_FUNCTION_14();
  v134 = OUTLINED_FUNCTION_4_68(v126, v127, v128, v129, v130, v131, v132, v133, v183, v199, __dst[0]);
  v135(v134, 23);

  (v1)(v136);
  __dst[0] = 4;
  LOBYTE(v231) = 1;
  LOBYTE(v226) = 1;
  LOBYTE(v221) = 1;
  sub_1E3C3DE00();
  v137 = OUTLINED_FUNCTION_52_19();
  HIBYTE(v200) = v237[0];
  v145 = OUTLINED_FUNCTION_4_96(v137, v138, v139, v140, v141, v142, v143, v144, v184, v200, __dst[0]);
  OUTLINED_FUNCTION_51_19(v145, v146, v147, v148, v185, v201, v204, v206, v208, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
  OUTLINED_FUNCTION_11_70();
  OUTLINED_FUNCTION_14();
  v157 = OUTLINED_FUNCTION_4_68(v149, v150, v151, v152, v153, v154, v155, v156, v186, v202, __dst[0]);
  v158(v157, 22);

  (v1)(v159);
  OUTLINED_FUNCTION_2_1();
  (*(v160 + 1936))(2);

  (v1)(v161);
  OUTLINED_FUNCTION_2_1();
  (*(v162 + 2008))(1);

  v164 = (v1)(v163);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v165 = *(*v164 + 872);
  v166 = &unk_1F5D99950;
  v165(&unk_1F5D99950);

  (v1)(v167);
  OUTLINED_FUNCTION_2_1();
  (*(v168 + 1984))(5);

  (v1)(v169);
  OUTLINED_FUNCTION_2_1();
  (*(v170 + 1936))(2);

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3A0A0B8(double a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1576))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 preferredContentSizeCategory];

    v6 = [objc_opt_self() defaultMetrics];
    sub_1E42067C4();
    a1 = v7;
  }

  return a1;
}

void sub_1E3A0A19C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33_0();
  v11 = sub_1E3A06FE4(v6, v4, v10);
  OUTLINED_FUNCTION_36();
  v13 = (*(v12 + 2224))() & 1;
  (*(*v1 + 2104))();
  v14 = sub_1E39DFD08();

  v15 = (v13 != v11) | v14;
  v16 = sub_1E324FBDC();
  (*(v8 + 16))(v2, v16, v0);
  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v13 != v11;
    v20 = swift_slowAlloc();
    *v20 = 67109632;
    *(v20 + 4) = v19;
    *(v20 + 8) = 1024;
    *(v20 + 10) = v14 & 1;
    *(v20 + 14) = 1024;
    *(v20 + 16) = v15 & 1;
    _os_log_impl(&dword_1E323F000, v17, v18, "SportsLockup:: requiresReconfiguration shouldReconfigure:%{BOOL}d,\nshouldScoreboardReconfigure:%{BOOL}d, result:%{BOOL}d)", v20, 0x14u);
    MEMORY[0x1E69143B0](v20, -1, -1);
  }

  (*(v8 + 8))(v2, v0);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3A0A3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30B18;
  if (!qword_1ECF30B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B18);
  }

  return result;
}

unint64_t sub_1E3A0A440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30B20;
  if (!qword_1ECF30B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsLockupCellLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsLockupCellLayout.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_22()
{
  STACK[0x400] = STACK[0x430];

  return sub_1E3C3DE00();
}

id OUTLINED_FUNCTION_53_20()
{
  v3 = *(v1 + 2336);

  return [v0 v3];
}

void sub_1E3A0A6B8(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + 1640);

  v8(v9);
  v10 = *(*a1 + 464);

  v12 = v10(v11);

  if (v12)
  {
    v32 = v7;
    v33 = v4;
    v34 = v2;
    v35 = a1;
    v13 = sub_1E32AE9B0(v12);
    for (i = 0; ; ++i)
    {
      if (v13 == i)
      {

        v2 = v34;
        a1 = v35;
        v7 = v32;
        v4 = v33;
        goto LABEL_16;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](i, v12);
        v15 = v16;
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v15 = *(v12 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v40 = *(v15 + 98);
      v39 = 39;
      sub_1E3742F1C(v16, v17, v18);
      sub_1E4206254();
      sub_1E4206254();
      if (v38[0] == v36 && v38[1] == v37)
      {

LABEL_20:

        return;
      }

      v20 = sub_1E42079A4();

      if (v20)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_16:
    v21 = sub_1E3E37FFC();
    (*(v4 + 16))(v7, v21, v2);

    v22 = sub_1E41FFC94();
    v23 = sub_1E42067F4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v2;
      v25 = swift_slowAlloc();
      v26 = v4;
      v27 = swift_slowAlloc();
      v38[0] = v27;
      *v25 = 136315138;
      v36 = a1;
      type metadata accessor for LibLockupViewModel(0);
      sub_1E3A0AD54();
      v28 = sub_1E4207944();
      v30 = sub_1E3270FC8(v28, v29, v38);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1E323F000, v22, v23, "Unable to find image view model for lockup view model: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E69143B0](v27, -1, -1);
      MEMORY[0x1E69143B0](v25, -1, -1);

      (*(v26 + 8))(v7, v24);
    }

    else
    {

      (*(v4 + 8))(v7, v2);
    }
  }
}

double sub_1E3A0AAAC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
  }

  else
  {
    sub_1E42037C4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B38, &qword_1E42B2C90);
  sub_1E3A0ADAC();
  sub_1E4201F44();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1E3A0AB70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  sub_1E4200E64();
  if (v10 <= 0.0 || (sub_1E4200E64(), v11 <= 0.0))
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    sub_1E4200E64();
    v13 = v12;
    v15 = v14;
    v16 = j__OUTLINED_FUNCTION_51_1();
    v17 = j__OUTLINED_FUNCTION_18();
    sub_1E3EB9C0C(v13, v15, 0, 0, 0, 1, v16 & 1, 1, v20, 0, 1, 0, 1, 0, 0, v17 & 1, 1);
    v18 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(a1, v20, 0, v18 & 1, 0, 0, v9);
    sub_1E375C31C(v20);
    (*(v6 + 32))(a2, v9, v4);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

unint64_t sub_1E3A0AD54()
{
  result = qword_1ECF30B30;
  if (!qword_1ECF30B30)
  {
    type metadata accessor for LibLockupViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B30);
  }

  return result;
}

unint64_t sub_1E3A0ADAC()
{
  result = qword_1ECF30B40;
  if (!qword_1ECF30B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30B38, &qword_1E42B2C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B40);
  }

  return result;
}

unint64_t sub_1E3A0AE44()
{
  result = qword_1ECF30B48;
  if (!qword_1ECF30B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30B50, &qword_1E42B2D28);
    sub_1E3A0ADAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B48);
  }

  return result;
}

uint64_t sub_1E3A0AF0C(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1E3251BE8(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_1E3A0AF64()
{
  OUTLINED_FUNCTION_9_65();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_8_67();
  sub_1E3A0AFCC();
  return v0;
}

uint64_t sub_1E3A0AFCC()
{
  OUTLINED_FUNCTION_9_65();
  *(v0 + 16) = 0;
  v1 = type metadata accessor for SSDPNative();
  v2 = swift_allocObject();

  OUTLINED_FUNCTION_8_67();
  sub_1E3A0B7C4();
  v5 = v1;
  v6 = &off_1F5D68E20;

  *&v4 = v2;

  sub_1E3251BE8(&v4, v0 + 24);
  return v0;
}

uint64_t sub_1E3A0B090()
{
  OUTLINED_FUNCTION_9_65();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_8_67();
  sub_1E3A0B7C4();
  return v0;
}

uint64_t sub_1E3A0B11C()
{
  if ((*(*v0 + 96))() == 2)
  {
    OUTLINED_FUNCTION_111();
    (*(v1 + 120))(v9);
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v2 = OUTLINED_FUNCTION_12_64();
    v3(v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  OUTLINED_FUNCTION_111();
  (*(v4 + 120))(v9);
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v5 = OUTLINED_FUNCTION_12_64();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  OUTLINED_FUNCTION_111();
  return (*(v7 + 104))(2);
}

uint64_t sub_1E3A0B254()
{
  if ((*(*v0 + 96))() != 1)
  {
    OUTLINED_FUNCTION_111();
    (*(v1 + 120))(v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v2 = OUTLINED_FUNCTION_12_64();
    v3(v2);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  OUTLINED_FUNCTION_111();
  return (*(v4 + 104))(1);
}

uint64_t sub_1E3A0B334()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1E3A0B36C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  *a1 = result;
  return result;
}

id sub_1E3A0B41C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  v3 = *(v2 + 16);

  return v3;
}

void sub_1E3A0B454(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 16, a2);
  v4 = *(v2 + 16);
  *(v2 + 16) = a1;
}

uint64_t sub_1E3A0B490(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 24, a2);
  v3 = *(v2 + 24);

  return v3;
}

uint64_t sub_1E3A0B4D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 24, a2);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1E3A0B518(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 40, a2);
  v3 = *(v2 + 40);

  return v3;
}

double sub_1E3A0B558(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 40, a2);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return result;
}

uint64_t sub_1E3A0B5E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 56, a2);
  v3 = *(v2 + 56);

  return v3;
}

double sub_1E3A0B624(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 56, a2);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  return result;
}

double sub_1E3A0B6DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 72, a2);
  *(v2 + 72) = a1;

  return result;
}

double sub_1E3A0B788(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 80, a2);
  *(v2 + 80) = a1;

  return result;
}

void sub_1E3A0B7C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v21 = v2;
  v22 = v3;
  v5 = v4;
  v7 = v6;
  v23 = v8;
  v24 = v9;
  v10 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E4203FF4();
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v19 = sub_1E4206974();
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v1[10] = 0;
  v1[9] = 0;
  v1[5] = v7;
  v1[6] = v5;
  v1[7] = v21;
  v1[8] = v22;
  swift_beginAccess();
  v1[9] = 0;
  swift_beginAccess();
  v1[10] = 0;
  sub_1E32ADE38();

  sub_1E4206964();
  sub_1E4203FE4();
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8090], v10);
  v1[2] = sub_1E4206A44();
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0xD000000000000052, 0x80000001E426C7D0);
  MEMORY[0x1E69109E0](v23, v24);

  MEMORY[0x1E69109E0](168626701, 0xE400000000000000);

  v1[3] = 0;
  v1[4] = 0xE000000000000000;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0BA20()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B58, &qword_1E42B2D30);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v39 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = sub_1E324FBDC();
  v36 = *(v8 + 16);
  v37 = v15;
  v36(v14);
  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1E323F000, v16, v17, "SSDP:: Start", v18, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v38 = *(v8 + 8);
  v38(v14, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B60, &qword_1E42B2D38);
  v19 = sub_1E42008B4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E4297BE0;
  v24 = v23 + v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B68, &qword_1E42B2D40);
  sub_1E4200894();
  sub_1E42008A4();
  (*(v21 + 104))(v24, *MEMORY[0x1E6977B08], v19);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v19);
  sub_1E42008F4();
  swift_allocObject();
  sub_1E42008E4();
  OUTLINED_FUNCTION_111();
  v26 = *(v25 + 232);

  v26(v27);
  sub_1E42008D4();

  sub_1E42008C4();
  sub_1E42009B4();
  swift_allocObject();
  v28 = sub_1E4200934();
  (*(*v1 + 256))(v28);
  OUTLINED_FUNCTION_111();
  v30 = *(v29 + 248);
  v31 = v30();
  if (v31)
  {

    sub_1E4200904();
  }

  v32 = (v30)(v31);
  if (v32)
  {

    sub_1E34AF604(sub_1E3A0D1A8, v1);
    OUTLINED_FUNCTION_13_8();
    sub_1E4200914();
  }

  if ((v30)(v32))
  {
    OUTLINED_FUNCTION_111();
    v34 = (*(v33 + 128))();
    sub_1E4200954();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0BF7C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v63 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B58, &qword_1E42B2D30);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_1E4205F64();
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  if (v4 >> 60 != 15)
  {
    v62 = v17;
    *&v64 = v6;
    *(&v64 + 1) = v4;
    v24 = OUTLINED_FUNCTION_13_8();
    sub_1E38DCD14(v24, v25);
    v26 = sub_1E4205F54();
    sub_1E3A0D380(v26, v27, v28);
    v29 = sub_1E4205F34();
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      v33 = (*(*v1 + 176))();
      v33(v31, v32);

      v34 = sub_1E324FBDC();
      (*(v62 + 16))(v21, v34, v15);

      v35 = sub_1E41FFC94();
      v36 = sub_1E42067E4();

      if (os_log_type_enabled(v35, v36))
      {
        v60 = v36;
        v61 = v35;
        v37 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v66 = v59;
        *v37 = 136315650;
        sub_1E4200984();
        v38 = sub_1E42008B4();
        if (__swift_getEnumTagSinglePayload(v14, 1, v38) == 1)
        {
          sub_1E325F748(v14, &qword_1ECF30B58, &qword_1E42B2D30);
          v64 = 0u;
          v65 = 0u;
        }

        else
        {
          *(&v65 + 1) = v38;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
          (*(*(v38 - 8) + 32))(boxed_opaque_existential_1, v14, v38);
        }

        v46 = sub_1E3294FA4(&v64);
        v48 = sub_1E3270FC8(v46, v47, &v66);

        *(v37 + 4) = v48;
        *(v37 + 12) = 2080;
        sub_1E4200974();
        if (__swift_getEnumTagSinglePayload(v11, 1, v38) == 1)
        {
          sub_1E325F748(v11, &qword_1ECF30B58, &qword_1E42B2D30);
          v64 = 0u;
          v65 = 0u;
        }

        else
        {
          *(&v65 + 1) = v38;
          v49 = __swift_allocate_boxed_opaque_existential_1(&v64);
          (*(*(v38 - 8) + 32))(v49, v11, v38);
        }

        v50 = sub_1E3294FA4(&v64);
        v52 = sub_1E3270FC8(v50, v51, &v66);

        *(v37 + 14) = v52;
        *(v37 + 22) = 1024;
        *(v37 + 24) = v63 & 1;
        v53 = v61;
        _os_log_impl(&dword_1E323F000, v61, v60, "SSDP:: Received message from: %s to: %s isComplete: %{BOOL}d", v37, 0x1Cu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
        v54 = OUTLINED_FUNCTION_13_8();
        sub_1E38DCE1C(v54, v55);

        v56 = OUTLINED_FUNCTION_53();
        v57(v56);
      }

      else
      {
        v41 = OUTLINED_FUNCTION_13_8();
        sub_1E38DCE1C(v41, v42);

        v43 = OUTLINED_FUNCTION_53();
        v44(v43);
      }
    }

    else
    {
      v39 = OUTLINED_FUNCTION_13_8();
      sub_1E38DCE1C(v39, v40);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0C414()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B58, &qword_1E42B2D30);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v76 - v6;
  sub_1E4205F64();
  OUTLINED_FUNCTION_0_10();
  v81 = v8;
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v80 = v10 - v9;
  v11 = sub_1E4200944();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v89 = (v15 - v16);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v76 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - v20;
  v22 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v87 = v26 - v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v76 - v29;
  v31 = sub_1E324FBDC();
  v90 = v24;
  v32 = *(v24 + 16);
  v85 = v31;
  v86 = v24 + 16;
  v84 = v32;
  (v32)(v30);
  v91 = v13;
  v33 = *(v13 + 16);
  v88 = v3;
  v33(v21, v3, v11);
  v34 = sub_1E41FFC94();
  v35 = sub_1E42067E4();
  v36 = "ractor";
  if (os_log_type_enabled(v34, v35))
  {
    v37 = swift_slowAlloc();
    v79 = v1;
    v38 = v37;
    v77 = swift_slowAlloc();
    v94 = v11;
    v95[0] = v77;
    *v38 = 136315138;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v93);
    v33(boxed_opaque_existential_1, v21, v11);
    v36 = v22;
    v40 = sub_1E3294FA4(v93);
    v78 = v33;
    v42 = v41;
    v43 = OUTLINED_FUNCTION_18_49(v91);
    v44(v43);
    v45 = v40;
    v22 = v36;
    v46 = sub_1E3270FC8(v45, v42, v95);
    v33 = v78;

    *(v38 + 4) = v46;
    _os_log_impl(&dword_1E323F000, v34, v35, "SSDP:: Group entered state %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    OUTLINED_FUNCTION_6_0();
    v1 = v79;
    OUTLINED_FUNCTION_6_0();

    v47 = OUTLINED_FUNCTION_14_74();
    (v36)(v47);
    v48 = v91;
  }

  else
  {

    v48 = v91;
    v49 = OUTLINED_FUNCTION_18_49(v91);
    v50(v49);
    v51 = OUTLINED_FUNCTION_14_74();
    ("ractor")(v51);
  }

  v52 = v92;
  v53 = v88;
  v33(v92, v88, v11);
  v54 = (*(v48 + 88))(v52, v11);
  v55 = v33;
  v56 = v89;
  if (v54 == *MEMORY[0x1E6977CD0])
  {
    if ((*(*v1 + 248))())
    {
      (*(*v1 + 152))();
      v57 = v80;
      sub_1E4205F54();
      v58 = sub_1E4205F24();
      v60 = v59;

      (*(v81 + 8))(v57, v82);
      v61 = sub_1E42008B4();
      v62 = v83;
      __swift_storeEnumTagSinglePayload(v83, 1, 1, v61);
      sub_1E42009A4();

      sub_1E4200994();
      sub_1E4200924();

      sub_1E38DCE1C(v58, v60);

      sub_1E325F748(v62, &qword_1ECF30B58, &qword_1E42B2D30);
    }
  }

  else
  {
    v63 = v87;
    v84(v87, v85, v22);
    v55(v56, v53, v11);
    v64 = sub_1E41FFC94();
    LODWORD(v88) = sub_1E42067E4();
    v65 = os_log_type_enabled(v64, v88);
    v91 = v22;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v94 = v11;
      v95[0] = v67;
      *v66 = 136315138;
      v68 = __swift_allocate_boxed_opaque_existential_1(v93);
      v55(v68, v56, v11);
      v69 = v36;
      v70 = sub_1E3294FA4(v93);
      v72 = v71;
      v73 = OUTLINED_FUNCTION_15_65();
      v56(v73);
      v74 = sub_1E3270FC8(v70, v72, v95);

      *(v66 + 4) = v74;
      _os_log_impl(&dword_1E323F000, v64, v88, "SSDP:: Group entered state %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (v69)(v87, v91);
    }

    else
    {

      v75 = OUTLINED_FUNCTION_15_65();
      v56(v75);
      (v36)(v63, v91);
    }

    (v56)(v92, v11);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0CB14()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B78, &qword_1E42B2E48);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = sub_1E42009C4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  sub_1E3A0D310(v3, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1E325F748(v14, &qword_1ECF30B78, &qword_1E42B2E48);
    OUTLINED_FUNCTION_111();
    v26 = (*(v25 + 200))();
    v26();
  }

  else
  {
    (*(v17 + 32))(v24, v14, v15);
    v27 = sub_1E324FBDC();
    v51 = v6;
    (*(v6 + 16))(v10, v27, v4);
    v28 = *(v17 + 16);
    v28(v21, v24, v15);
    v29 = sub_1E41FFC94();
    v50 = sub_1E42067E4();
    if (os_log_type_enabled(v29, v50))
    {
      v30 = swift_slowAlloc();
      v46 = v29;
      v31 = v30;
      v47 = swift_slowAlloc();
      v52[3] = v15;
      v53 = v47;
      *v31 = 136315138;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      v28(boxed_opaque_existential_1, v21, v15);
      v33 = sub_1E3294FA4(v52);
      v48 = v4;
      v49 = v1;
      v35 = v34;
      v36 = *(v17 + 8);
      v37 = OUTLINED_FUNCTION_21_48();
      v36(v37);
      v38 = sub_1E3270FC8(v33, v35, &v53);

      v39 = v31;
      *(v31 + 4) = v38;
      v40 = v36;
      v41 = v46;
      _os_log_impl(&dword_1E323F000, v46, v50, "SSDP:: Send complete with error %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v51 + 8))(v10, v48);
    }

    else
    {

      v40 = *(v17 + 8);
      v42 = OUTLINED_FUNCTION_21_48();
      v40(v42);
      (*(v51 + 8))(v10, v4);
    }

    OUTLINED_FUNCTION_111();
    (*(v43 + 288))();
    v44 = OUTLINED_FUNCTION_53();
    v40(v44);
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3A0CEEC()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E324FBDC();
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v9, "SSDP:: Stop", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_111();
  if ((*(v11 + 248))())
  {
    sub_1E4200964();
  }

  return result;
}

uint64_t sub_1E3A0D064()
{

  return v0;
}

uint64_t sub_1E3A0D0AC()
{
  sub_1E3A0D064();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1E3A0D0E0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 272))();
  *a1 = result;
  return result;
}

unint64_t sub_1E3A0D1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF30B70;
  if (!qword_1ECF30B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SSDP.SSDPState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3A0D310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B78, &qword_1E42B2E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3A0D380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE28A460;
  if (!qword_1EE28A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A460);
  }

  return result;
}

uint64_t sub_1E3A0D3D4()
{
  result = sub_1E32859C4(v0, &selRef_title);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E3A0D408()
{
  result = sub_1E32859C4(v0, &selRef_genreName);
  if (!v2)
  {
    return 0;
  }

  return result;
}

void sub_1E3A0D454(SEL *a1)
{
  v2 = [v1 *a1];
  if (v2)
  {
    v3 = v2;
    [v2 doubleValue];
  }
}

uint64_t sub_1E3A0D4E4()
{
  type metadata accessor for MediaShowcasingMetadataPresenter(0);
  OUTLINED_FUNCTION_0_112();
  sub_1E3A15394(v0, v1);
  OUTLINED_FUNCTION_32_0();

  return sub_1E42010C4();
}

void sub_1E3A0D54C()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v3;
  v86 = v5;
  v7 = v6;
  v8 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v90 = v13 - v12;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v88 = v15;
  v89 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v87 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B80, &qword_1E42B2E50);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_49_2();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B88, &qword_1E42B2E58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_26_2();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B90, &qword_1E42B2E60);
  OUTLINED_FUNCTION_0_10();
  v79 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v23);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B98, &qword_1E42B2E68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31_2();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BA0, &qword_1E42B2E70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v72 - v30;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BA8, &qword_1E42B2E78);
  OUTLINED_FUNCTION_0_10();
  v84 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BB0, &qword_1E42B2E80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v36);
  v91 = v4;
  if (sub_1E392583C())
  {
    OUTLINED_FUNCTION_26_0();
    v38 = (*(v37 + 392))();
    if (v38)
    {
      v39 = v38;
      v75 = v10;
      type metadata accessor for MediaShowcasingMetadataLayout();
      OUTLINED_FUNCTION_20_2();
      if (swift_dynamicCastClass())
      {
        v72 = v39;
        v74 = v7;
        OUTLINED_FUNCTION_26_0();
        v41 = (*(v40 + 504))();
        v73 = v8;
        if (v41 == 18 || (sub_1E4125604(v41) & 1) == 0)
        {
          v42 = sub_1E4201B64();
        }

        else
        {
          v42 = sub_1E4201B74();
        }

        v43 = v42;
        OUTLINED_FUNCTION_111();
        (*(v44 + 456))();
        *v2 = v43;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BB8, &qword_1E42B2E88);
        sub_1E3A0DD84();
        v45 = sub_1E4202754();
        v46 = sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v45)
        {
          v46 = sub_1E4202774();
        }

        if ((TVAppFeature.isEnabled.getter(20, v47, v48) & 1) == 0 || sub_1E39277A4())
        {
          OUTLINED_FUNCTION_111();
          (*(v54 + 152))();
        }

        sub_1E4200A54();
        OUTLINED_FUNCTION_3();
        sub_1E3741EA0(v2, v0, &qword_1ECF30B80, &qword_1E42B2E50);
        v55 = (v0 + *(v78 + 36));
        *v55 = v46;
        OUTLINED_FUNCTION_11_4(v55);
        v56 = swift_allocObject();
        v57 = v91;
        *(v56 + 16) = v86;
        *(v56 + 24) = v57;
        sub_1E3A0EF68();

        v58 = OUTLINED_FUNCTION_51_1();
        v59 = v77;
        sub_1E40AB6EC(v58 & 1);

        sub_1E325F69C(v0, &qword_1ECF30B88);
        v60 = sub_1E39256E8();
        (*(v79 + 32))(v1, v59, v81);
        *(v1 + *(v76 + 36)) = v60;
        v61 = sub_1E4202744();
        sub_1E3741EA0(v1, v28, &qword_1ECF30B98, &qword_1E42B2E68);
        v62 = v83;
        *(v28 + *(v83 + 36)) = v61;
        sub_1E3741EA0(v28, v31, &qword_1ECF30BA0, &qword_1E42B2E70);
        v63 = v87;
        sub_1E4202474();
        v64 = sub_1E3A0F020();
        v65 = v82;
        sub_1E4203224();
        (*(v88 + 8))(v63, v89);
        sub_1E325F69C(v31, &qword_1ECF30BA0);
        v66 = v90;
        sub_1E4201C64();
        v93 = v62;
        v94 = v64;
        swift_getOpaqueTypeConformance2();
        v67 = v80;
        v68 = v85;
        sub_1E4203294();

        (*(v75 + 8))(v66, v73);
        (*(v84 + 8))(v65, v68);
        sub_1E3741EA0(v67, v74, &qword_1ECF30BB0, &qword_1E42B2E80);
        v69 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v69, v70, v71, v92);
        OUTLINED_FUNCTION_10_3();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
}

void sub_1E3A0DD84()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v44 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C80, &qword_1E42B33D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C88, &qword_1E42B33D8);
  OUTLINED_FUNCTION_0_10();
  v39 = v13;
  v40 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C90, &qword_1E42B33E0);
  OUTLINED_FUNCTION_0_10();
  v42 = v18;
  v43 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v41 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v38 = v22;
  v23 = (*(*v6 + 504))();
  v37 = 1;
  if (v23 != 18)
  {
    v23 = sub_1E412561C(v23);
    if (v23)
    {
      v37 = 0;
    }
  }

  if (v4 == 7 || (sub_1E3793D00(v23, v24, v25), (sub_1E4205E84() & 1) == 0))
  {
    v26 = sub_1E4201D54();
  }

  else
  {
    v26 = sub_1E4201D44();
  }

  *v1 = v26;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C98, &qword_1E42B33E8);
  sub_1E3A0E2C0();
  v27 = (*(*v6 + 1920))();
  if (v27 == 13)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }

  else
  {
    sub_1E3B033CC(v27, v2);
  }

  sub_1E3B03114(v2, v0);
  sub_1E325F69C(v2, &qword_1ECF2A250);
  sub_1E3A1558C(&qword_1EE2884E0, &qword_1ECF30C80);
  sub_1E3A1558C(&qword_1EE23ACD8, &qword_1ECF2A1F8);
  sub_1E4202FA4();
  sub_1E325F69C(v0, &qword_1ECF2A1F8);
  sub_1E325F69C(v1, &qword_1ECF30C80);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E38838AC(v6, 2u, 2, v40, OpaqueTypeConformance2, v38);
  (*(v39 + 8))(v16, v40);
  v33 = *(v42 + 16);
  v33(v41, v38, v43);
  *v44 = 0;
  *(v44 + 8) = 0;
  *(v44 + 9) = v37;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30CA0, &qword_1E42B33F0);
  v33(v44 + *(v34 + 48), v41, v43);
  v35 = v44 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 0;
  v36 = *(v42 + 8);
  v36(v38, v43);
  v36(v41, v43);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0E2C0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v101 = v6;
  v7 = v2;
  v92 = type metadata accessor for StageMediaShowcasingMetadataView.StageMediaTagsView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30CA8, &qword_1E42B33F8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v93 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30CB0, &qword_1E42B3400);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v102 = v18 - v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v100 = v21;
  type metadata accessor for MediaShowcasingMetadataPresenter(0);
  OUTLINED_FUNCTION_0_112();
  sub_1E3A15394(v22, v23);
  swift_retain_n();
  v24 = sub_1E42010C4();
  v98 = v24;
  v99 = v25;
  if (v7 == 7)
  {
  }

  else
  {
    LOBYTE(v115[0]) = v3;
    LOBYTE(v114[0]) = 1;
    sub_1E3793D00(v24, v25, v26);

    if (sub_1E4205E84())
    {
      sub_1E4203DA4();
      goto LABEL_6;
    }
  }

  sub_1E4203DB4();
LABEL_6:
  LOBYTE(v114[0]) = 1;
  v94 = *(*v5 + 776);
  v94(v115, v114, &unk_1F5D5D9A8, &off_1F5D5C958);
  if (v115[3])
  {
    if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v114[0]) == 1)
    {
      OUTLINED_FUNCTION_71_2();
      (*(v29 + 248))();
      OUTLINED_FUNCTION_27_17();
      OUTLINED_FUNCTION_23_3();
      sub_1E42015C4();
      v115[0] = v5;

      goto LABEL_12;
    }
  }

  else
  {
    sub_1E325F69C(v115, &unk_1ECF296E0);
  }

  memset(v115, 0, 120);
LABEL_12:
  if (TVAppFeature.isEnabled.getter(20, v27, v28))
  {
    OUTLINED_FUNCTION_71_2();
    (*(v32 + 248))();
    if ((v33 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_17();
      if (v34)
      {
        v35 = sub_1E4206804();
        v36 = sub_1E42026D4();
        OUTLINED_FUNCTION_108(v35, &dword_1E323F000, v36, "Contradictory frame constraints specified.");
      }
    }

    OUTLINED_FUNCTION_27_17();
    v37 = OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_33_6(v37, v38, v39, v40, v41, v42, v43, v44, v91);
    v114[0] = v5;
  }

  else
  {
    memset(v114, 0, 120);
  }

  if ((TVAppFeature.isEnabled.getter(10, v30, v31) & 1) != 0 && sub_1E3CCE274(*(v1 + 120), 5u) && sub_1E39C408C() && (OUTLINED_FUNCTION_71_2(), v46 = (*(v45 + 2112))(), v48 = sub_1E392B158(v46, v47), , v49 = sub_1E3D3CD34(v48), , !v49))
  {
    v96 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_157();
    swift_retain_n();
    v96 = v5;
  }

  v50 = sub_1E42010C4();
  v95 = v51;
  v112[0] = 1;
  OUTLINED_FUNCTION_157();
  swift_retain_n();
  v94(v113, v112, &unk_1F5D5D9A8, &off_1F5D5C958);
  if (!v113[3])
  {
    sub_1E325F69C(v113, &unk_1ECF296E0);
LABEL_29:
    v55 = *(v92 + 24);
    *(v11 + v55) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
    swift_storeEnumTagMultiPayload();
    *v11 = v5;
    *(v11 + 8) = 47;
    OUTLINED_FUNCTION_71_2();
    v57 = *(v56 + 248);

    v57(v58);
    if ((v59 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_17();
      if (v34)
      {
        v60 = sub_1E4206804();
        v61 = sub_1E42026D4();
        OUTLINED_FUNCTION_108(v60, &dword_1E323F000, v61, "Contradictory frame constraints specified.");
      }
    }

    OUTLINED_FUNCTION_27_17();
    v62 = OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_33_6(v62, v63, v64, v65, v66, v67, v68, v69, v91);
    sub_1E3A15164(v11, v93);
    v54 = v97;
    memcpy((v93 + *(v97 + 36)), v116, 0x70uLL);
    OUTLINED_FUNCTION_48_23();
    sub_1E3741EA0(v70, v71, v72, v73);
    v53 = v100;
    OUTLINED_FUNCTION_48_23();
    sub_1E3741EA0(v74, v75, v76, v77);
    v52 = 0;
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v112[0] & 1) == 0)
  {
    goto LABEL_29;
  }

  v52 = 1;
  v53 = v100;
  v54 = v97;
LABEL_34:
  v78 = __swift_storeEnumTagSinglePayload(v53, v52, 1, v54);
  if ((*(*v5 + 392))(v78))
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for MediaShowcasingMetadataLayout();
    OUTLINED_FUNCTION_20_2();
    v79 = swift_dynamicCastClass();
    if (!v79)
    {
    }
  }

  else
  {
    v79 = 0;
  }

  v80 = (*(*v5 + 488))();
  if (v80)
  {
    v83 = sub_1E373E010(15, v80, v82);
  }

  else
  {
    v83 = 0;
  }

  if ((TVAppFeature.isEnabled.getter(20, v81, v82) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (!v79)
  {
LABEL_49:

    goto LABEL_50;
  }

  if (!sub_1E3CCE24C(*(v79 + 120)))
  {
    goto LABEL_48;
  }

  if (!v83)
  {
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_71_2();
  v85 = *(v84 + 392);

  v87 = v85(v86);

  if (!v87)
  {
LABEL_48:

    goto LABEL_49;
  }

  OUTLINED_FUNCTION_8();
  v89 = (*(v88 + 936))();

  if ((v89 & 1) == 0)
  {
LABEL_50:
    OUTLINED_FUNCTION_157();
    swift_retain_n();
    v90 = v5;
    goto LABEL_51;
  }

  v90 = 0;
LABEL_51:
  v110[0] = v5;
  v110[1] = v98;
  v110[2] = v99;
  v111[0] = v110;
  memcpy(v109, v115, sizeof(v109));
  v111[1] = v109;
  memcpy(v108, v114, sizeof(v108));
  v111[2] = v108;
  v111[3] = &v107;
  v106[0] = v5;
  v106[1] = v50;
  v106[2] = v95;
  v107 = v96;
  v105 = v5;
  v111[4] = v106;
  v111[5] = &v105;
  sub_1E3743538(v53, v102, &qword_1ECF30CB0, &qword_1E42B3400);
  v103 = v5;
  v104 = v90;
  v111[6] = v102;
  v111[7] = &v104;
  v111[8] = &v103;

  sub_1E3A0EDA8(v111, v101);
  swift_retain_n();

  sub_1E3743538(v115, v113, &qword_1ECF30CB8, &qword_1E42B3438);
  sub_1E3743538(v114, v113, &qword_1ECF30CC0, &qword_1E42B3440);
  OUTLINED_FUNCTION_157();

  sub_1E325F69C(v114, &qword_1ECF30CC0);
  sub_1E325F69C(v115, &qword_1ECF30CB8);

  OUTLINED_FUNCTION_157();

  sub_1E325F69C(v53, &qword_1ECF30CB0);

  sub_1E325F69C(v102, &qword_1ECF30CB0);

  memcpy(v112, v108, sizeof(v112));
  sub_1E325F69C(v112, &qword_1ECF30CC0);
  memcpy(v113, v109, sizeof(v113));
  sub_1E325F69C(v113, &qword_1ECF30CB8);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A0EDA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  *a2 = **a1;
  a2[1] = v5;
  a2[2] = v6;
  memcpy(__dst, v4, sizeof(__dst));
  memmove(a2 + 3, v4, 0x78uLL);
  v7 = a1[2];
  memcpy(v16, v7, sizeof(v16));
  memmove(a2 + 18, v7, 0x78uLL);
  v8 = a1[4];
  a2[33] = *a1[3];
  v9 = v8[1];
  v10 = v8[2];
  a2[34] = *v8;
  a2[35] = v9;
  a2[36] = v10;
  a2[37] = *a1[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30CC8, &qword_1E42B3448);
  sub_1E3743538(a1[6], a2 + v11[32], &qword_1ECF30CB0, &qword_1E42B3400);
  v12 = a1[8];
  *(a2 + v11[36]) = *a1[7];
  *(a2 + v11[40]) = *v12;

  sub_1E3743538(__dst, v14, &qword_1ECF30CB8, &qword_1E42B3438);
  sub_1E3743538(v16, v14, &qword_1ECF30CC0, &qword_1E42B3440);
}

unint64_t sub_1E3A0EF68()
{
  result = qword_1EE2897D8;
  if (!qword_1EE2897D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30B88, &qword_1E42B2E58);
    sub_1E3A1558C(&qword_1EE2885C8, &qword_1ECF30B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897D8);
  }

  return result;
}

unint64_t sub_1E3A0F020()
{
  result = qword_1EE289620;
  if (!qword_1EE289620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30BA0, &qword_1E42B2E70);
    sub_1E3A0F0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289620);
  }

  return result;
}

unint64_t sub_1E3A0F0AC()
{
  result = qword_1EE2899F8;
  if (!qword_1EE2899F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30B98, &qword_1E42B2E68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30B88, &qword_1E42B2E58);
    sub_1E3A0EF68();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899F8);
  }

  return result;
}

void sub_1E3A0F18C()
{
  OUTLINED_FUNCTION_93();
  v82 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C70, &qword_1E42B33C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_2();
  v6 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v79 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC0, &qword_1E429C968);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC8, &unk_1E429C970);
  OUTLINED_FUNCTION_0_10();
  v81 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v80 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v22);
  OUTLINED_FUNCTION_36();
  v24 = (*(v23 + 488))();
  if (v24)
  {
    v26 = sub_1E373E010(40, v24, v25);

    if (v26)
    {
      v77 = v16;
      type metadata accessor for ImageViewModel();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v28 = v27;
        v76 = v0;
        v78 = v3;
        OUTLINED_FUNCTION_26_0();
        v30 = *(v29 + 392);

        v32 = v30(v31);

        if (v32)
        {
          type metadata accessor for ImageLayout();
          v33 = swift_dynamicCastClass();
          if (v33)
          {
            v34 = v33;
            v35 = sub_1E3925954();
            if (v35)
            {
              v36 = *(*v34 + 2288);
              v82 = v35;
              v36();
              v75 = v82;
              sub_1E381AC64(v75);
              v37 = *MEMORY[0x1E6981630];
              v82 = v34;
              v38 = v79;
              (*(v79 + 104))(v11, v37, v6);
              OUTLINED_FUNCTION_5_8();
              v74 = sub_1E4203824();

              (*(v38 + 8))(v11, v6);
              v91 = v74;

              v39 = MEMORY[0x1E6981748];
              v40 = MEMORY[0x1E6981710];
              v41 = OUTLINED_FUNCTION_51_1();
              v42 = OUTLINED_FUNCTION_18();
              sub_1E3C8F60C(v82, v41 & 1, v42 & 1, v39, v40);

              sub_1E4203DA4();
              OUTLINED_FUNCTION_59();
              v43 = sub_1E4200D94();
              v44 = &v15[*(v12 + 36)];
              v45 = v88;
              *v44 = v87;
              *(v44 + 1) = v45;
              *(v44 + 2) = v89;
              (*(*v28 + 904))(v43);
              sub_1E37AC740();
              v46 = v83;
              sub_1E3E03528();

              sub_1E325F69C(v15, &qword_1ECF29CC0);
              OUTLINED_FUNCTION_8();
              v48 = *(v47 + 152);

              v48(&v90, v49);

              OUTLINED_FUNCTION_68_10(v50);
              OUTLINED_FUNCTION_59();
              v51 = OUTLINED_FUNCTION_36_0();
              OUTLINED_FUNCTION_69_10(v51, v52);
              v82 = v91;
              OUTLINED_FUNCTION_28_33();
              v86 = 1;
              v85 = v53;
              v84 = v54;
              v55 = v81;
              v73 = v32;
              v56 = *(v81 + 16);
              v57 = v80;
              v58 = v46;
              v59 = v77;
              v56(v80, v58, v77);
              LOBYTE(v40) = v86;
              LOBYTE(v48) = v85;
              HIDWORD(v72) = v84;
              v60 = v76;
              v56(v76, v57, v59);
              v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C78, &qword_1E42B33C8) + 48);

              v62 = v60 + v61;
              *v62 = 0;
              *(v62 + 8) = v40;
              *(v62 + 16) = v82;
              *(v62 + 24) = v48;
              *(v62 + 32) = v79;
              *(v62 + 40) = BYTE4(v72);
              OUTLINED_FUNCTION_53_21(v60 + v61);
              v63 = *(v55 + 8);
              v63(v83, v59);
              v63(v57, v59);
              sub_1E3741EA0(v60, v78, &qword_1ECF30C70, &qword_1E42B33C0);
              v64 = OUTLINED_FUNCTION_22_1();
              __swift_storeEnumTagSinglePayload(v64, v65, v66, v4);
              OUTLINED_FUNCTION_54_0();
              return;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
}

void sub_1E3A0F890()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C50, &qword_1E42B33A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v73 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C58, &qword_1E42B33A8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C60, &qword_1E42B33B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_1();
  if ((*(*v1 + 392))())
  {
    v72 = v4;
    v17 = type metadata accessor for MediaShowcasingMetadataLayout();
    v18 = OUTLINED_FUNCTION_71_14(v17);
    if (v18)
    {
      v19 = v18;
      v71 = v3;
      OUTLINED_FUNCTION_66_3();
      v21 = (*(v20 + 488))();
      if (!v21)
      {
        goto LABEL_17;
      }

      v23 = sub_1E373E010(229, v21, v22);

      if (!v23)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_8();
      v25 = (*(v24 + 552))();
      if (v25)
      {
        v26 = v25;
        v79 = &unk_1F5D7BE68;
        v27 = OUTLINED_FUNCTION_50_18(&off_1F5D7BC48);
        sub_1E3F9F164(v27, v26, MEMORY[0x1E69E7CA0] + 8);

        __swift_destroy_boxed_opaque_existential_1(&v76);
        if (*(&v83 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
          if (swift_dynamicCast())
          {
            v28 = *(v76 + 16);

            if (v28)
            {
              goto LABEL_22;
            }
          }

LABEL_17:
          OUTLINED_FUNCTION_66_3();
          v35 = (*(v34 + 552))();
          if (v35)
          {
            v36 = v35;
            v70 = v19;
            v79 = &unk_1F5D7BE68;
            v37 = OUTLINED_FUNCTION_50_18(&off_1F5D7BC48);
            sub_1E3F9F164(v37, v36, MEMORY[0x1E69E7CA0] + 8);

            __swift_destroy_boxed_opaque_existential_1(&v76);
            if (*(&v83 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
              if (swift_dynamicCast())
              {
                v38 = *(v76 + 16);

                if (v38)
                {

                  v23 = v1;
                  v19 = v70;
LABEL_22:
                  v39 = *(v19 + 104);

                  sub_1E3820C20(v23, v39, 0, 0, 47, v14);
                  v40 = v1[3];
                  v41 = &v14[*(v7 + 52)];
                  *v41 = v1[2];
                  *(v41 + 1) = v40;

                  sub_1E4203DA4();
                  OUTLINED_FUNCTION_59();
                  v42 = OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_69_10(v42, v43);
                  v69 = v78;
                  v70 = v76;
                  v67 = v81;
                  v68 = v80;
                  LOBYTE(v82) = 1;
                  v75 = v77;
                  v74 = v79;
                  sub_1E3743538(v14, v11, &qword_1ECF30C58, &qword_1E42B33A8);
                  LOBYTE(v39) = v82;
                  v65 = v75;
                  v66 = v74;
                  v44 = v73;
                  sub_1E3743538(v11, v73, &qword_1ECF30C58, &qword_1E42B33A8);
                  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C68, &qword_1E42B33B8) + 48);

                  v46 = v44 + v45;
                  *v46 = 0;
                  *(v46 + 8) = v39;
                  *(v46 + 16) = v70;
                  *(v46 + 24) = v65;
                  *(v46 + 32) = v69;
                  *(v46 + 40) = v66;
                  v47 = v67;
                  *(v46 + 48) = v68;
                  *(v46 + 56) = v47;
                  sub_1E325F69C(v14, &qword_1ECF30C58);
                  sub_1E325F69C(v11, &qword_1ECF30C58);
                  v48 = OUTLINED_FUNCTION_46_2();
                  sub_1E3741EA0(v48, v49, v50, v51);
                  OUTLINED_FUNCTION_114();
                  __swift_storeEnumTagSinglePayload(v52, v53, v54, v72);
LABEL_26:
                  v58 = OUTLINED_FUNCTION_124();
                  sub_1E3741EA0(v58, v59, v60, v61);
                  OUTLINED_FUNCTION_114();
                  __swift_storeEnumTagSinglePayload(v62, v63, v64, v15);
                  OUTLINED_FUNCTION_25_2();
                  return;
                }
              }

LABEL_25:

              OUTLINED_FUNCTION_32_2();
              __swift_storeEnumTagSinglePayload(v55, v56, v57, v72);
              goto LABEL_26;
            }
          }

          else
          {
            v82 = 0u;
            v83 = 0u;
          }

          sub_1E325F69C(&v82, &unk_1ECF296E0);
          goto LABEL_25;
        }
      }

      else
      {

        v82 = 0u;
        v83 = 0u;
      }

      sub_1E325F69C(&v82, &unk_1ECF296E0);
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
}

void sub_1E3A0FE64()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C50, &qword_1E42B33A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C58, &qword_1E42B33A8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C60, &qword_1E42B33B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_36();
  if ((*(v18 + 392))())
  {
    v55 = v6;
    v19 = type metadata accessor for MediaShowcasingMetadataLayout();
    v20 = OUTLINED_FUNCTION_71_14(v19);
    if (v20)
    {
      v21 = v20;
      v53 = v0;
      v54 = v5;
      OUTLINED_FUNCTION_8();
      v23 = (*(v22 + 488))();
      if (v23 && (v25 = sub_1E373E010(225, v23, v24), , v25))
      {
        v26 = *(v21 + 104);
        v52 = v25;

        sub_1E3820C20(v25, v26, 0, 0, 47, v15);
        v27 = *(v3 + 24);
        v28 = &v15[*(v8 + 52)];
        *v28 = *(v3 + 16);
        *(v28 + 1) = v27;

        sub_1E4203DA4();
        OUTLINED_FUNCTION_59();
        v29 = OUTLINED_FUNCTION_36_0();
        OUTLINED_FUNCTION_69_10(v29, v30);
        v50 = v61;
        v51 = v59;
        v48 = v64;
        v49 = v63;
        v58 = 1;
        v57 = v60;
        v56 = v62;
        sub_1E3743538(v15, v12, &qword_1ECF30C58, &qword_1E42B33A8);
        LOBYTE(v26) = v58;
        v31 = v57;
        HIDWORD(v47) = v56;
        v32 = v53;
        sub_1E3743538(v12, v53, &qword_1ECF30C58, &qword_1E42B33A8);
        v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C68, &qword_1E42B33B8) + 48);

        v34 = v32 + v33;
        *v34 = 0;
        *(v34 + 8) = v26;
        v35 = v50;
        *(v34 + 16) = v51;
        *(v34 + 24) = v31;
        *(v34 + 32) = v35;
        *(v34 + 40) = BYTE4(v47);
        v36 = v48;
        *(v34 + 48) = v49;
        *(v34 + 56) = v36;
        sub_1E325F69C(v15, &qword_1ECF30C58);
        sub_1E325F69C(v12, &qword_1ECF30C58);
        sub_1E3741EA0(v32, v1, &qword_1ECF30C50, &qword_1E42B33A0);
        v37 = v1;
        v38 = 0;
      }

      else
      {

        v37 = v1;
        v38 = 1;
      }

      __swift_storeEnumTagSinglePayload(v37, v38, 1, v55);
      sub_1E3741EA0(v1, v54, &qword_1ECF30C60, &qword_1E42B33B0);
      v39 = OUTLINED_FUNCTION_22_1();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v16);
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
}

void sub_1E3A1023C()
{
  OUTLINED_FUNCTION_9_4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for TextBadge(0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v92 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C30, &qword_1E42B3380);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v88 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v89 = v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C38, &qword_1E42B3388);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v91 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C40, &qword_1E42B3390);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v86 - v18;
  OUTLINED_FUNCTION_36();
  v21 = *(v20 + 488);
  v93 = v1;
  v22 = v21();
  if (!v22)
  {
LABEL_11:
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    return;
  }

  v23 = v22;
  v86 = v19;
  v87 = v8;
  v94 = v16;
  v95 = v3;
  v24 = v22 + 64;
  OUTLINED_FUNCTION_34_33();
  v27 = v26 & v25;
  v29 = (v28 + 63) >> 6;

  v30 = 0;
  if (!v27)
  {
    goto LABEL_4;
  }

  do
  {
    v31 = v30;
LABEL_7:
    v32 = *(*(v23 + 56) + ((v31 << 9) | (8 * __clz(__rbit64(v27)))));

    if (sub_1E385050C())
    {

      v39 = v93;
      v40 = (v21)(v38);
      v43 = v86;
      v42 = v87;
      v44 = v92;
      if (v40)
      {
        v45 = sub_1E373E010(234, v40, v41);

        if (v45)
        {
          type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
          v46 = swift_dynamicCastClass();
          if (v46)
          {
            v47 = v46;
            OUTLINED_FUNCTION_26_0();
            v49 = *(v48 + 392);

            v51 = v49(v50);

            if (v51)
            {
              if (*v51 == _TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout)
              {
LABEL_21:

                v92 = v45;

                sub_1E385EB44(v47, v51, v32, 0, 0, 4, &v98);
                v52 = sub_1E4202754();
                v53 = sub_1E4202774();
                sub_1E4202774();
                if (sub_1E4202774() != v52)
                {
                  v53 = sub_1E4202774();
                }

                OUTLINED_FUNCTION_66_3();
                v55 = (*(v54 + 392))();
                sub_1E3A10908(v55, v39);

                sub_1E4200A54();
                v96[0] = v98;
                v96[1] = v99[0];
                *(&v96[1] + 9) = *(v99 + 9);
                v97 = 0;
                LOBYTE(v96[3]) = v53;
                *(&v96[3] + 1) = v56;
                *&v96[4] = v57;
                *(&v96[4] + 1) = v58;
                *&v96[5] = v59;
                BYTE8(v96[5]) = 0;
                memcpy(v91, v96, 0x59uLL);
                swift_storeEnumTagMultiPayload();
                v60 = &qword_1ECF30C48;
                OUTLINED_FUNCTION_48_23();
                sub_1E3743538(v61, v62, v63, v64);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C48, &qword_1E42B3398);
                sub_1E3A14934();
                sub_1E3A14A14();
                sub_1E4201F44();

                v65 = v96;
LABEL_28:
                sub_1E325F69C(v65, v60);
                sub_1E3741EA0(v43, v95, &qword_1ECF30C40, &qword_1E42B3390);
                OUTLINED_FUNCTION_114();
                __swift_storeEnumTagSinglePayload(v83, v84, v85, v94);
                OUTLINED_FUNCTION_10_3();
                return;
              }
            }

            type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
            v51 = sub_1E392DC1C();
            goto LABEL_21;
          }
        }
      }

      sub_1E3FC96D0(v66, 0, v44);
      v67 = sub_1E4202754();
      v68 = sub_1E4202774();
      sub_1E4202774();
      if (sub_1E4202774() != v67)
      {
        v68 = sub_1E4202774();
      }

      OUTLINED_FUNCTION_66_3();
      v70 = (*(v69 + 392))();
      sub_1E3A10908(v70, v39);

      sub_1E4200A54();
      OUTLINED_FUNCTION_3();
      v71 = v44;
      v72 = v88;
      sub_1E3A15164(v71, v88);
      v73 = (v72 + *(v42 + 36));
      *v73 = v68;
      OUTLINED_FUNCTION_11_4(v73);
      v60 = &qword_1ECF30C30;
      v74 = v89;
      OUTLINED_FUNCTION_48_23();
      sub_1E3741EA0(v75, v76, v77, v78);
      OUTLINED_FUNCTION_48_23();
      sub_1E3743538(v79, v80, v81, v82);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C48, &qword_1E42B3398);
      sub_1E3A14934();
      sub_1E3A14A14();
      sub_1E4201F44();

      v65 = v74;
      goto LABEL_28;
    }

    v27 &= v27 - 1;

    v30 = v31;
  }

  while (v27);
LABEL_4:
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v29)
    {

      goto LABEL_11;
    }

    v27 = *(v24 + 8 * v31);
    ++v30;
    if (v27)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

double sub_1E3A10908(uint64_t a1, void *a2)
{
  v3 = (*a2 + 488);
  v4 = *v3;
  v5 = (*v3)();
  if (v5 && (v7 = sub_1E373E010(234, v5, v6), , v7) || (v8 = v4()) != 0 && (v10 = sub_1E373E010(229, v8, v9), , v10))
  {
  }

  else
  {
    v13 = v4();
    if (v13)
    {
      v15 = sub_1E373E010(39, v13, v14);

      if (v15)
      {

        v17 = (v4)(v16);
        if (v17)
        {
          v19 = sub_1E373E010(23, v17, v18);

          if (v19)
          {
            OUTLINED_FUNCTION_36();
            v21 = v20;

            if (v21 == _TtC8VideosUI13TextViewModel)
            {
              if (a1)
              {
                OUTLINED_FUNCTION_111();
                (*(v22 + 1592))(23);
                return v23;
              }

              return 0.0;
            }
          }
        }
      }
    }
  }

  if (!a1)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_111();
  (*(v11 + 152))(v24);
  result = *&v24[2];
  if (v25)
  {
    return 0.0;
  }

  return result;
}

void sub_1E3A10AFC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  v5 = *(v4 + 392);
  v6 = swift_retain_n();
  if (!v5(v6))
  {
    goto LABEL_8;
  }

  type metadata accessor for MediaShowcasingMetadataLayout();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_8:

    sub_1E3A143A4(v220);
    goto LABEL_42;
  }

  v8 = v7;
  OUTLINED_FUNCTION_8();
  v9 += 61;
  v10 = *v9;
  v11 = (*v9)();
  if (!v11)
  {
    OUTLINED_FUNCTION_33_10();

LABEL_10:
    v23 = (v10)(v14);
    if (v23)
    {
      sub_1E373E010(229, v23, v24);
      OUTLINED_FUNCTION_20_17();
      if (*v8 == _TtC8VideosUI34MediaShowcasingScoreboardViewModel)
      {

        v26 = sub_1E3BB3BA4(v25);
        v28 = v27;
        if ((*(*v8 + 392))())
        {
          OUTLINED_FUNCTION_26_0();
          (*(v29 + 248))();
          v31 = v30;
        }

        else
        {
          v31 = 1;
        }

        v126 = sub_1E4203DA4();
        v128 = v127;
        if ((v31 & 1) == 0)
        {
          OUTLINED_FUNCTION_38_17();
          if (v129)
          {
            v130 = sub_1E4206804();
            v194 = v28;
            v131 = v3;
            v132 = sub_1E42026D4();
            OUTLINED_FUNCTION_108(v130, &dword_1E323F000, v132, "Contradictory frame constraints specified.");

            v3 = v131;
            v28 = v194;
          }
        }

        OUTLINED_FUNCTION_27_17();
        v133 = OUTLINED_FUNCTION_23_3();
        OUTLINED_FUNCTION_33_6(v133, v134, v135, v136, v137, v138, v139, v140, v160);
        *__src = v26;
        *&__src[8] = v28;
        memcpy(__dst, __src, 0x80uLL);
        sub_1E3A1486C(__dst);
        memcpy(v220, __dst, 0x81uLL);
        sub_1E3743538(__src, v219, &qword_1ECF30C20, &qword_1E42B3370);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C18, &qword_1E42B3368);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C20, &qword_1E42B3370);
        sub_1E3A14510();
        sub_1E3A14644();
        sub_1E4201F44();
        memcpy(v214, v219, 0x81uLL);
        sub_1E3A14878(v214);
        memcpy(v220, v214, 0x82uLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C10, &qword_1E42B3360);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C28, &qword_1E42B3378);
        sub_1E3A14484();
        sub_1E3A14724();
        OUTLINED_FUNCTION_42_32();
        v141 = sub_1E4201F44();
        OUTLINED_FUNCTION_55_19(v141, v142, v143, v144, v145, v146, v147, v148, v163, v165, v169, v173, v126, v128, v185, v190, v194, v199, v203, v207, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v214[0], v214[1], v214[2], v214[3], v214[4], v214[5], v214[6], v214[7], v214[8]);
        v149 = sub_1E3A14864(v215);
        OUTLINED_FUNCTION_39_22(v149, v150, v151, v152, v153, v154, v155, v156, v164, v168, v172, v176, v180, v184, v189, v193, v198, v202, v206, v211, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v214[0], v214[1], v214[2], v214[3], v214[4], v214[5], v214[6], v214[7], v214[8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C08, &qword_1E42B3358);
        v157 = sub_1E3A143F8();
        sub_1E3A14804(v157, v158, v159);
        OUTLINED_FUNCTION_40_31();
        sub_1E4201F44();

        sub_1E325F69C(__src, &qword_1ECF30C20);
        goto LABEL_40;
      }
    }

    v74 = (v10)(v23);
    if (v74)
    {
      sub_1E373E010(39, v74, v75);
      OUTLINED_FUNCTION_20_17();
      OUTLINED_FUNCTION_33_10();

      type metadata accessor for MediaShowcasingMetadataPresenter(0);
      OUTLINED_FUNCTION_0_112();
      sub_1E3A15394(v76, v77);

      v78 = sub_1E42010C4();
      v80 = OUTLINED_FUNCTION_62_12(v78, v79);
      v219[24] = 0;
      goto LABEL_25;
    }

    v85 = (v10)(v83);
    if (v85)
    {
      sub_1E373E010(23, v85, v84);
      OUTLINED_FUNCTION_20_17();
      if (*v8 == _TtC8VideosUI13TextViewModel)
      {

        type metadata accessor for MediaShowcasingMetadataPresenter(0);
        OUTLINED_FUNCTION_0_112();
        sub_1E3A15394(v86, v87);

        v88 = sub_1E42010C4();
        v80 = OUTLINED_FUNCTION_62_12(v88, v89);
        v219[24] = 1;
LABEL_25:
        v90 = sub_1E3A147B0(v80, v81, v82);
        sub_1E3A14804(v90, v91, v92);
        OUTLINED_FUNCTION_33_10();
        swift_retain_n();
        swift_retain_n();
        OUTLINED_FUNCTION_40_31();
        sub_1E4201F44();
        *v214 = v220[0];
        v214[2] = *&v220[1];
        LOBYTE(v214[3]) = BYTE8(v220[1]);
        sub_1E3A14858(v214);
        memcpy(v220, v214, 0x82uLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C10, &qword_1E42B3360);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C28, &qword_1E42B3378);
        sub_1E3A14484();
        sub_1E3A14724();
        OUTLINED_FUNCTION_42_32();
        v93 = sub_1E4201F44();
        OUTLINED_FUNCTION_55_19(v93, v94, v95, v96, v97, v98, v99, v100, v160, v165, v169, v173, v177, v181, v185, v190, v194, v199, v203, v207, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v214[0], v214[1], v214[2], v214[3], v214[4], v214[5], v214[6], v214[7], v214[8]);
        v101 = sub_1E3A14864(v215);
        OUTLINED_FUNCTION_39_22(v101, v102, v103, v104, v105, v106, v107, v108, v162, v167, v171, v175, v179, v183, v188, v192, v197, v201, v205, v210, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v214[0], v214[1], v214[2], v214[3], v214[4], v214[5], v214[6], v214[7], v214[8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C08, &qword_1E42B3358);
        sub_1E3A143F8();
        OUTLINED_FUNCTION_40_31();
        sub_1E4201F44();
LABEL_26:

        OUTLINED_FUNCTION_33_10();

LABEL_40:
        memcpy(v218, v220, 0x83uLL);
        nullsub_1();
        goto LABEL_41;
      }
    }

    v110 = (v10)(v109);
    if (v110)
    {
      sub_1E373E010(24, v110, v111);
      OUTLINED_FUNCTION_20_17();
      if (*v8 == _TtC8VideosUI13TextViewModel)
      {

        type metadata accessor for MediaShowcasingMetadataPresenter(0);
        OUTLINED_FUNCTION_0_112();
        sub_1E3A15394(v112, v113);

        *v215 = v1;
        v216 = sub_1E42010C4();
        v217 = v114;
        v115 = sub_1E3A143EC(v215);
        OUTLINED_FUNCTION_39_22(v115, v116, v117, v118, v119, v120, v121, v122, v160, v165, v169, v173, v177, v181, v185, v190, v194, v199, v203, v207, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v214[0], v214[1], v214[2], v214[3], v214[4], v214[5], v214[6], v214[7], v214[8]);
        OUTLINED_FUNCTION_33_10();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C08, &qword_1E42B3358);
        v123 = sub_1E3A143F8();
        sub_1E3A14804(v123, v124, v125);
        OUTLINED_FUNCTION_40_31();
        sub_1E4201F44();
        goto LABEL_26;
      }
    }

    sub_1E3A143C8(v218);
LABEL_41:
    memcpy(v219, v218, 0x83uLL);
    nullsub_1();
    memcpy(v220, v219, 0x83uLL);
    goto LABEL_42;
  }

  v13 = sub_1E373E010(234, v11, v12);

  OUTLINED_FUNCTION_33_10();

  if (!v13)
  {
    goto LABEL_10;
  }

  v17 = TVAppFeature.isEnabled.getter(10, v15, v16);

  if (v17)
  {
    type metadata accessor for MediaShowcasingMetadataPresenter(0);
    OUTLINED_FUNCTION_0_112();
    sub_1E3A15394(v21, v22);

    v18 = sub_1E42010C4();
    *v219 = v1;
    *&v219[8] = v8;
    *&v219[16] = v18;
    *&v219[24] = v19;
    v219[32] = 0;
  }

  else
  {
    *v219 = v1;
    memset(&v219[8], 0, 24);
    v219[32] = 1;
  }

  v32 = sub_1E3A1459C(v18, v19, v20);
  sub_1E3A145F0(v32, v33, v34);
  OUTLINED_FUNCTION_40_31();
  sub_1E4201F44();
  *v186 = v220[0];
  *v195 = v220[1];
  *__src = v220[0];
  *&__src[16] = v220[1];
  __src[32] = v220[2];
  sub_1E3A14880(__src);
  memcpy(v220, __src, 0x81uLL);
  v35 = OUTLINED_FUNCTION_7_96();
  sub_1E3A14888(v35, v36, v37, v38, v39);
  v40 = OUTLINED_FUNCTION_7_96();
  sub_1E3A14888(v40, v41, v42, v43, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C18, &qword_1E42B3368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C20, &qword_1E42B3370);
  sub_1E3A14510();
  sub_1E3A14644();
  sub_1E4201F44();
  memcpy(__dst, v219, 0x81uLL);
  sub_1E3A14878(__dst);
  memcpy(v220, __dst, 0x82uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C10, &qword_1E42B3360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C28, &qword_1E42B3378);
  sub_1E3A14484();
  sub_1E3A14724();
  OUTLINED_FUNCTION_42_32();
  sub_1E4201F44();
  v45 = memcpy(v214, v218, 0x82uLL);
  OUTLINED_FUNCTION_55_19(v45, v46, v47, v48, v49, v50, v51, v52, v160, v165, v169, v173, v177, v181, v186[0], v186[1], v195[0], v195[1], v203, v3, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v214[0], v214[1], v214[2], v214[3], v214[4], v214[5], v214[6], v214[7], v214[8]);
  v53 = sub_1E3A14864(v215);
  OUTLINED_FUNCTION_39_22(v53, v54, v55, v56, v57, v58, v59, v60, v161, v166, v170, v174, v178, v182, v187, v191, v196, v200, v204, v208, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v214[0], v214[1], v214[2], v214[3], v214[4], v214[5], v214[6], v214[7], v214[8]);
  sub_1E3743538(v214, v220, &qword_1ECF30C08, &qword_1E42B3358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C08, &qword_1E42B3358);
  v61 = sub_1E3A143F8();
  sub_1E3A14804(v61, v62, v63);
  OUTLINED_FUNCTION_40_31();
  sub_1E4201F44();
  v64 = OUTLINED_FUNCTION_7_96();
  sub_1E3A148D0(v64, v65, v66, v67, v68);
  sub_1E325F69C(v214, &qword_1ECF30C08);

  v69 = OUTLINED_FUNCTION_7_96();
  sub_1E3A148D0(v69, v70, v71, v72, v73);
  memcpy(v218, v220, 0x83uLL);
  nullsub_1();
  memcpy(v219, v218, 0x83uLL);
  nullsub_1();
  memcpy(v220, v219, 0x83uLL);
  v3 = v209;
LABEL_42:
  memcpy(v3, v220, 0x83uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A11650()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8, &qword_1E4297EB0);
  OUTLINED_FUNCTION_0_10();
  v79 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D28, &qword_1E42B3688);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v71 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D30, &qword_1E42B3690);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v82 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D38, &qword_1E42B3698);
  OUTLINED_FUNCTION_0_10();
  v81 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v80 = v17;
  OUTLINED_FUNCTION_36();
  v19 = (*(v18 + 488))();
  if (v19)
  {
    v21 = sub_1E373E010(234, v19, v20);

    if (v21)
    {
      v78 = v11;
      v22 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
      v23 = OUTLINED_FUNCTION_71_14(v22);
      if (v23)
      {
        v24 = v23;
        v77 = v2;
        memset(v91, 0, sizeof(v91));
        v25 = 1;
        v92 = 1;
        swift_retain_n();
        v26 = sub_1E382A9B4(v24, v91, 0, v0);
        v27 = *v24;
        v74 = *(*v24 + 392);
        v75 = v27 + 392;
        v28 = v74(v26);
        v76 = v9;
        if (v28)
        {
          OUTLINED_FUNCTION_8();
          v30 = (*(v29 + 248))();
          v25 = v31;
          v28 = v30;
        }

        sub_1E4203DA4();
        if ((v25 & 1) == 0)
        {
          OUTLINED_FUNCTION_38_17();
          if (v33)
          {
            v72 = v32;
            HIDWORD(v71) = sub_1E4206804();
            v34 = sub_1E42026D4();
            v73 = v28;
            v35 = v34;
            OUTLINED_FUNCTION_108(HIDWORD(v71), &dword_1E323F000, v34, "Contradictory frame constraints specified.");
          }
        }

        OUTLINED_FUNCTION_27_17();
        v36 = OUTLINED_FUNCTION_23_3();
        OUTLINED_FUNCTION_33_6(v36, v37, v38, v39, v40, v41, v42, v43, v70);
        (*(v79 + 32))(v8, v0, v3);
        v44 = memcpy(&v8[*(v83 + 36)], v86, 0x70uLL);
        v45 = v74;
        v46 = v74(v44);

        if (!v46 || (v48 = (*(*v46 + 792))(v47), , v48 == 11))
        {
          v48 = 0;
        }

        memset(v89, 0, sizeof(v89));
        v90 = 1;
        v49 = sub_1E3A151BC();
        sub_1E3A6929C(v48, 0, 0, 1, v89, v83, v49);
        v50 = sub_1E325F69C(v8, &qword_1ECF30D28);
        v51 = v45(v50);

        v53 = v76;
        v52 = v77;
        if (v51)
        {
          OUTLINED_FUNCTION_8();
          (*(v54 + 552))(v87);

          v55 = v78;
          if ((v88 & 1) == 0)
          {
            v61 = OUTLINED_FUNCTION_6();
            sub_1E3952BE8(v61, v62, v63, v64);
          }
        }

        else
        {
          v55 = v78;
        }

        v84 = v83;
        v85 = v49;
        swift_getOpaqueTypeConformance2();
        v65 = v80;
        v66 = v82;
        sub_1E3E361E8();

        (*(v55 + 8))(v66, v53);
        (*(v81 + 32))(v52, v65, v14);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v67, v68, v69, v14);
        OUTLINED_FUNCTION_10_3();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
}

void sub_1E3A11C2C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D20, &unk_1E42B3678);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  OUTLINED_FUNCTION_36();
  v14 = *(v13 + 488);
  v15 = v14();
  if (!v15)
  {
    goto LABEL_14;
  }

  v17 = sub_1E373E010(234, v15, v16);

  if (!v17)
  {
    goto LABEL_14;
  }

  v50 = v12;
  type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

LABEL_14:
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    return;
  }

  v19 = v18;
  v49 = v3;
  v20 = v14();
  if (v20)
  {
    v21 = v20;
    v48 = v8;
    v22 = v20 + 64;
    OUTLINED_FUNCTION_34_33();
    v25 = v24 & v23;
    v27 = (v26 + 63) >> 6;

    v28 = 0;
    v51 = v1;
    if (!v25)
    {
      goto LABEL_7;
    }

    do
    {
      v29 = v28;
LABEL_10:
      v30 = *(*(v21 + 56) + ((v29 << 9) | (8 * __clz(__rbit64(v25)))));

      if (sub_1E385050C())
      {

        v8 = v48;
        goto LABEL_19;
      }

      v25 &= v25 - 1;

      v28 = v29;
    }

    while (v25);
LABEL_7:
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {

        v30 = 0;
        v8 = v48;
        goto LABEL_19;
      }

      v25 = *(v22 + 8 * v29);
      ++v28;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = 0;
LABEL_19:
    OUTLINED_FUNCTION_66_3();
    v37 = *(v36 + 2112);

    v39 = v37(v38);

    sub_1E385D788(v19, v39, v30, 0, v8);
    v40 = *(*v19 + 392);

    v42 = v40(v41);

    if (v42)
    {
      (*(*v42 + 248))(v43);
    }

    sub_1E4203DB4();
    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_23_3();
    sub_1E42015C4();

    v44 = v50;
    sub_1E3A15164(v8, v50);
    memcpy((v44 + *(v9 + 36)), v52, 0x70uLL);
    sub_1E3741EA0(v44, v49, &qword_1ECF30D20, &unk_1E42B3678);
    v45 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v9);
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3A12088()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D40, &qword_1E42B36A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_36();
  if ((*(v4 + 392))())
  {
    type metadata accessor for MediaShowcasingMetadataLayout();
    if (swift_dynamicCastClass())
    {
      if (sub_1E3926038())
      {
        OUTLINED_FUNCTION_26_0();
        v6 = (*(v5 + 392))();

        if (v6)
        {
          type metadata accessor for ImageLayout();
          v7 = swift_dynamicCastClass();
          if (v7)
          {
            v8 = v7;
            v9 = sub_1E39258D4();
            if (!v9)
            {
              v9 = *sub_1E418A748();
            }

            v10 = v9;
            (*(*v8 + 2288))();
            *v1 = sub_1E4201D44();
            *(v1 + 8) = 0;
            *(v1 + 16) = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D48, &qword_1E42B36A8);
            sub_1E3A122D0();

            sub_1E3741EA0(v1, v0, &qword_1ECF30D40, &qword_1E42B36A0);
            v11 = OUTLINED_FUNCTION_22_1();
            __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
            OUTLINED_FUNCTION_54_0();
            return;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void sub_1E3A122D0()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v59 = v3;
  v5 = v4;
  v58 = v6;
  v8 = v7;
  v62 = v9;
  v10 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC0, &qword_1E429C968);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_49_2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC8, &unk_1E429C970);
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v60 = (v22 - v23);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v55 - v25;
  sub_1E381AC64(v8);
  (*(v12 + 104))(v16, *MEMORY[0x1E6981630], v10);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_46_2();
  v27 = sub_1E4203824();

  v28 = OUTLINED_FUNCTION_32_0();
  v29(v28);
  v71 = v27;
  v30 = MEMORY[0x1E6981748];
  v31 = MEMORY[0x1E6981710];
  OUTLINED_FUNCTION_46_2();
  LOBYTE(v10) = OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_46_2();
  v32 = OUTLINED_FUNCTION_18();
  sub_1E3C8F60C(v58, v10 & 1, v32 & 1, v30, v31);

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_70_11(v5, 0);
  v33 = (v0 + *(v17 + 36));
  v34 = v68;
  *v33 = v67;
  v33[1] = v34;
  v33[2] = v69;
  if (sub_1E3926038())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v35 + 904))();
  }

  sub_1E37AC740();
  v59 = v26;
  sub_1E3E03528();

  sub_1E325F69C(v0, &qword_1ECF29CC0);
  if (sub_1E3CCE24C(*(v2 + 120)) && [objc_opt_self() isMac])
  {
    OUTLINED_FUNCTION_8();
    v37 = (*(v36 + 152))(&v70);
    OUTLINED_FUNCTION_68_10(v37);
    OUTLINED_FUNCTION_59();
    v38 = OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_69_10(v38, v39);
    v57 = 0;
    v58 = v71;
    OUTLINED_FUNCTION_28_33();
    v65 = 1;
    v64 = v40;
    v63 = v41;
    v42 = 1;
    v43 = v40;
    v44 = v41;
    v66 = 0;
  }

  else
  {
    v58 = 0;
    v56 = 0;
    v55[1] = 0;
    v55[0] = 0;
    v44 = 0;
    v43 = 0;
    v42 = 0;
    v57 = 1;
  }

  v45 = v20;
  v46 = *(v20 + 16);
  v47 = v60;
  v48 = v59;
  v49 = v61;
  v46(v60, v59, v61);
  v50 = v62;
  v51 = OUTLINED_FUNCTION_46_2();
  (v46)(v51);
  v52 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CD0, &qword_1E42B36B0) + 48));
  *v52 = 0;
  v52[1] = v42;
  v52[2] = v58;
  v52[3] = v43;
  v52[4] = v56;
  v52[5] = v44;
  OUTLINED_FUNCTION_53_21(v52);
  *(v53 + 64) = v57;
  v54 = *(v45 + 8);
  v54(v48, v49);
  v54(v47, v49);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3A127CC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_28_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v8 = *(v7 + 488);
  v9 = v8();
  if (v9)
  {
    sub_1E373E010(23, v9, v10);
    v9 = OUTLINED_FUNCTION_20_17();
    if (v2)
    {
      if (*v2 == _TtC8VideosUI13TextViewModel)
      {
        goto LABEL_8;
      }
    }
  }

  v12 = (v8)(v9);
  if (v12)
  {
    v14 = sub_1E373E010(24, v12, v13);

    if (v14)
    {
      if (*v14 != _TtC8VideosUI13TextViewModel)
      {
LABEL_12:

        goto LABEL_13;
      }

LABEL_8:
      if (sub_1E3C27528(v9, v11))
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastClass())
        {

          OUTLINED_FUNCTION_18();
          sub_1E3F23370();
          OUTLINED_FUNCTION_33_10();

          (*(v5 + 32))(v0, v1, v3);
          v15 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v15, v16, v17, v3);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

void sub_1E3A12A1C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_28_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C00, &unk_1E42B3348);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 488))();
  if (v15)
  {
    v17 = sub_1E373E010(22, v15, v16);

    if (v17)
    {
      if (*v17 == _TtC8VideosUI13TextViewModel && sub_1E3C27528(v18, v19))
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_26_0();
          v21 = *(v20 + 152);
          v44 = v17;
          v21(v48);
          sub_1E4203DA4();
          OUTLINED_FUNCTION_59();
          v22 = OUTLINED_FUNCTION_36_0();
          OUTLINED_FUNCTION_70_11(v22, v23);
          v42 = v50;
          v43 = v48[5];
          v40 = v53;
          v41 = v52;
          v47 = 1;
          v46 = v49;
          v45 = v51;
          OUTLINED_FUNCTION_18();
          sub_1E3F23370();
          HIDWORD(v37) = v47;
          v38 = v46;
          v39 = v45;
          v24 = *(v6 + 16);
          v24(v10, v13, v4);
          *v1 = 0;
          *(v1 + 8) = BYTE4(v37);
          *(v1 + 16) = v43;
          *(v1 + 24) = v38;
          *(v1 + 32) = v42;
          *(v1 + 40) = v39;
          v25 = v40;
          *(v1 + 48) = v41;
          *(v1 + 56) = v25;
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2B8, &qword_1E42A0100);
          v24((v1 + *(v26 + 48)), v10, v4);

          v27 = *(v6 + 8);
          v27(v13, v4);
          v28 = OUTLINED_FUNCTION_124();
          (v27)(v28);
          sub_1E3741EA0(v1, v0, &qword_1ECF30C00, &unk_1E42B3348);
          v29 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
}

void sub_1E3A12DA4()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BE0, &qword_1E42B3328);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_2();
  type metadata accessor for MediaTags(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BE8, &qword_1E42B3330);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v63 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v62 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BF0, &qword_1E42B3338);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8_4();
  v19 = *v0;
  if ((*(**v0 + 392))())
  {
    v59 = v2;
    v20 = type metadata accessor for MediaShowcasingMetadataLayout();
    v21 = OUTLINED_FUNCTION_71_14(v20);
    if (v21)
    {
      v22 = v21;
      v58 = v11;
      v60 = v4;
      v23 = *(*v19 + 552);
      v24 = *(v21 + 104);
      v25 = v23();
      if (v25)
      {
        v71 = &unk_1F5D7BE68;
        v72 = &off_1F5D7BC48;
        LOBYTE(v68) = 6;
        sub_1E3F9F164(&v68, v25, MEMORY[0x1E69E7CA0] + 8);

        __swift_destroy_boxed_opaque_existential_1(&v68);
        if (*(&v67 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
          if (swift_dynamicCast())
          {
            v26 = *(v68 + 16);

            if (v26)
            {
              [v24 margin];
              sub_1E4203DA4();
              OUTLINED_FUNCTION_59();
              v27 = OUTLINED_FUNCTION_36_0();
              OUTLINED_FUNCTION_70_11(v27, v28);
              v57 = v68;
              v56 = v70;
              v55 = v72;
              v54 = v73;
              LOBYTE(v66) = 1;
              v65 = v69;
              v64 = v71;
              v29 = v0[4];
              v53 = v24;

              sub_1E3820C20(v30, v53, 0, 0, v29, v10);
              v31 = [v53 textLayout];
              v32 = [v31 blendMode];

              sub_1E3A1339C(v32, *(v22 + 120));
              sub_1E3A15394(&qword_1EE23BD30, type metadata accessor for MediaTags);
              sub_1E37B93F0();
              sub_1E3A14348(v10);
              v61 = v19[3];
              v33 = (v62 + *(v58 + 52));
              *v33 = v19[2];
              v33[1] = v61;
              v34 = v66;
              sub_1E3743538(v62, v63, &qword_1ECF30BE8, &qword_1E42B3330);
              *v59 = 0;
              *(v59 + 8) = v34;
              *(v59 + 16) = v57;
              *(v59 + 24) = v65;
              *(v59 + 32) = v56;
              *(v59 + 40) = v64;
              *(v59 + 48) = v55;
              *(v59 + 56) = v54;
              v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BF8, &qword_1E42B3340);
              sub_1E3743538(v63, v59 + *(v35 + 48), &qword_1ECF30BE8, &qword_1E42B3330);

              v36 = OUTLINED_FUNCTION_46_2();
              sub_1E325F69C(v36, v37);
              sub_1E325F69C(v63, &qword_1ECF30BE8);
              sub_1E3741EA0(v59, v1, &qword_1ECF30BE0, &qword_1E42B3328);
              OUTLINED_FUNCTION_114();
              __swift_storeEnumTagSinglePayload(v38, v39, v40, v5);
              v41 = v60;
LABEL_19:
              sub_1E3741EA0(v1, v41, &qword_1ECF30BF0, &qword_1E42B3338);
              v50 = OUTLINED_FUNCTION_22_1();
              __swift_storeEnumTagSinglePayload(v50, v51, v52, v17);
              OUTLINED_FUNCTION_25_2();
              return;
            }
          }

          else
          {
          }

          v41 = v60;
LABEL_18:
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v47, v48, v49, v5);
          goto LABEL_19;
        }
      }

      else
      {

        v66 = 0u;
        v67 = 0u;
      }

      v41 = v60;
      sub_1E325F69C(&v66, &unk_1ECF296E0);
      goto LABEL_18;
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
}

uint64_t sub_1E3A1339C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v19 - v12);
  if (sub_1E3CCE24C(v2) && (TVAppFeature.isEnabled.getter(20, v14, v15) & 1) != 0)
  {
    return 0;
  }

  if (a1 == 27)
  {
    type metadata accessor for StageMediaShowcasingMetadataView.StageMediaTagsView(0);
    sub_1E379EBAC(v13);
    (*(v6 + 104))(v10, *MEMORY[0x1E697DBA8], v4);
    v16 = sub_1E4200B34();
    v17 = *(v6 + 8);
    v17(v10, v4);
    v17(v13, v4);
    if (v16)
    {
      return 27;
    }

    else
    {
      return 26;
    }
  }

  return a1;
}

void sub_1E3A13518()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BD0, &unk_1E42B3310);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98, &qword_1E429CA30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  v16 = (*(*v2 + 488))(v13);
  if (v16)
  {
    v18 = sub_1E373E010(15, v16, v17);

    if (v18)
    {
      if (*v18 == _TtC8VideosUI13TextViewModel && sub_1E3C27528(v19, v20))
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        v21 = swift_dynamicCastClass();
        if (v21)
        {
          v22 = v21;
          v67 = v18;
          OUTLINED_FUNCTION_26_0();
          (*(v23 + 152))(&v75);
          if (![objc_opt_self() isTV])
          {
            goto LABEL_20;
          }

          v24 = (*(*v2 + 552))();
          if (v24)
          {
            v86 = &unk_1F5D7BE68;
            v87 = &off_1F5D7BC48;
            LOBYTE(v83) = 6;
            sub_1E3F9F164(&v83, v24, MEMORY[0x1E69E7CA0] + 8);

            __swift_destroy_boxed_opaque_existential_1(&v83);
            if (*(&v82 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
              if (swift_dynamicCast())
              {
                v25 = *(v83 + 16);

                if (v25)
                {
LABEL_20:
                  sub_1E4203DA4();
                  OUTLINED_FUNCTION_59();
                  v31 = OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_70_11(v31, v32);
                  v66 = v75;
                  v65 = v77;
                  v64 = v79;
                  v63 = v80;
                  v74 = 1;
                  v73 = v76;
                  v72 = v78;
                  OUTLINED_FUNCTION_18();
                  sub_1E3F23370();
                  *&v15[*(v7 + 36)] = 256;
                  if ((*(*v2 + 392))())
                  {
                    type metadata accessor for MediaShowcasingMetadataLayout();
                    v33 = swift_dynamicCastClass();
                    if (v33 && (sub_1E3CCE22C(*(v33 + 120)) & 1) != 0)
                    {
                      OUTLINED_FUNCTION_8();
                      (*(v34 + 152))(&v81);
                      sub_1E4203DA4();
                      OUTLINED_FUNCTION_59();
                      OUTLINED_FUNCTION_36_0();
                      sub_1E4200D94();
                      v62 = v83;
                      v35 = v84;
                      v61 = v85;
                      v36 = v86;
                      v60 = v87;
                      v59 = v88;

                      v58 = 0;
                      v70 = 1;
                      v69 = v35;
                      v68 = v36;
                      v55 = 1;
                      v56 = v35;
                      v57 = v36;
                      v71 = 0;
LABEL_26:
                      v37 = v74;
                      v38 = v73;
                      v39 = v72;
                      v40 = OUTLINED_FUNCTION_124();
                      sub_1E3743538(v40, v41, &qword_1ECF29D98, v42);
                      *v0 = 0;
                      *(v0 + 8) = v37;
                      *(v0 + 16) = v66;
                      *(v0 + 24) = v38;
                      *(v0 + 32) = v65;
                      *(v0 + 40) = v39;
                      v43 = v63;
                      *(v0 + 48) = v64;
                      *(v0 + 56) = v43;
                      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BD8, &qword_1E42B3320);
                      sub_1E3743538(v11, v0 + *(v44 + 48), &qword_1ECF29D98, &qword_1E429CA30);
                      v45 = *(v44 + 64);

                      v46 = v0 + v45;
                      v47 = v55;
                      *v46 = 0;
                      *(v46 + 8) = v47;
                      v48 = v56;
                      *(v46 + 16) = v62;
                      *(v46 + 24) = v48;
                      v49 = v57;
                      *(v46 + 32) = v61;
                      *(v46 + 40) = v49;
                      v50 = v59;
                      *(v46 + 48) = v60;
                      *(v46 + 56) = v50;
                      *(v46 + 64) = v58;
                      sub_1E325F69C(v15, &qword_1ECF29D98);
                      sub_1E325F69C(v11, &qword_1ECF29D98);
                      sub_1E3741EA0(v0, v4, &qword_1ECF30BD0, &unk_1E42B3310);
                      v51 = OUTLINED_FUNCTION_22_1();
                      __swift_storeEnumTagSinglePayload(v51, v52, v53, v5);
                      OUTLINED_FUNCTION_54_0();
                      return;
                    }
                  }

                  v62 = 0;
                  v61 = 0;
                  v60 = 0;
                  v59 = 0;
                  v57 = 0;
                  v56 = 0;
                  v55 = 0;
                  v58 = 1;
                  goto LABEL_26;
                }
              }

LABEL_19:
              (*(*v22 + 1592))(23);
              goto LABEL_20;
            }
          }

          else
          {
            v81 = 0u;
            v82 = 0u;
          }

          sub_1E325F69C(&v81, &unk_1ECF296E0);
          goto LABEL_19;
        }
      }
    }
  }

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
}

void sub_1E3A13C14()
{
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v43 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BC8, &qword_1E42B3308);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 488))();
  if (v15)
  {
    v17 = sub_1E373E010(30, v15, v16);

    if (v17)
    {
      if (*v17 == _TtC8VideosUI13TextViewModel && sub_1E3C27528(v18, v19))
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        v20 = swift_dynamicCastClass();
        v42 = v17;
        if (v20)
        {
          OUTLINED_FUNCTION_18();
          sub_1E3F23370();
          OUTLINED_FUNCTION_8();
          v22 = *(v21 + 152);
          v40 = v21 + 152;
          v41 = v22;

          v41(&v44, v23);

          if (v45)
          {
            OUTLINED_FUNCTION_5_8();
          }

          else
          {
            v29.n128_f64[0] = OUTLINED_FUNCTION_6();
            j_nullsub_1(v29, v30, v31, v32);
          }

          OUTLINED_FUNCTION_3();
          v33 = sub_1E4202734();

          v34 = OUTLINED_FUNCTION_124();
          v35(v34);
          v36 = (v1 + *(v4 + 36));
          *v36 = v33;
          OUTLINED_FUNCTION_11_4(v36);
          sub_1E3741EA0(v1, v10, &qword_1ECF28CC0, &qword_1E4298440);
          *(v10 + *(v6 + 36)) = 256;
          sub_1E3741EA0(v10, v13, &qword_1ECF30BC8, &qword_1E42B3308);
          sub_1E3741EA0(v13, v0, &qword_1ECF30BC8, &qword_1E42B3308);
          v37 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v37, v38, v39, v6);
          OUTLINED_FUNCTION_10_3();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

unint64_t sub_1E3A13FA0()
{
  result = qword_1EE289900;
  if (!qword_1EE289900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30BB0, &qword_1E42B2E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30BA0, &qword_1E42B2E70);
    sub_1E3A0F020();
    swift_getOpaqueTypeConformance2();
    sub_1E3A15394(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289900);
  }

  return result;
}

uint64_t type metadata accessor for StageMediaShowcasingMetadataView.StageMediaTagsView(uint64_t a1)
{
  result = qword_1EE291B40;
  if (!qword_1EE291B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A1412C(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E3A141B8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E3A141B8(uint64_t a1)
{
  if (!qword_1EE289EC0)
  {
    sub_1E4200B44();
    v1 = sub_1E4200B94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289EC0);
    }
  }
}

uint64_t sub_1E3A14348(uint64_t a1)
{
  v2 = type metadata accessor for MediaTags(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1E3A143A4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 130) = -2;
  *(a1 + 128) = 0;
  return result;
}

double sub_1E3A143C8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 130) = -1;
  *(a1 + 128) = 0;
  return result;
}

unint64_t sub_1E3A143F8()
{
  result = qword_1EE288AF8;
  if (!qword_1EE288AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C08, &qword_1E42B3358);
    sub_1E3A14484();
    sub_1E3A14724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AF8);
  }

  return result;
}

unint64_t sub_1E3A14484()
{
  result = qword_1EE288C08;
  if (!qword_1EE288C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C10, &qword_1E42B3360);
    sub_1E3A14510();
    sub_1E3A14644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C08);
  }

  return result;
}

unint64_t sub_1E3A14510()
{
  result = qword_1EE288FD0;
  if (!qword_1EE288FD0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C18, &qword_1E42B3368);
    v6 = sub_1E3A1459C(v1, v2, v3);
    sub_1E3A145F0(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FD0);
  }

  return result;
}

unint64_t sub_1E3A1459C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE291DE0[0];
  if (!qword_1EE291DE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE291DE0);
  }

  return result;
}

unint64_t sub_1E3A145F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE291D58[0];
  if (!qword_1EE291D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE291D58);
  }

  return result;
}

unint64_t sub_1E3A14644()
{
  result = qword_1EE289B70;
  if (!qword_1EE289B70)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C20, &qword_1E42B3370);
    sub_1E3A146D0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B70);
  }

  return result;
}

unint64_t sub_1E3A146D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE246870;
  if (!qword_1EE246870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE246870);
  }

  return result;
}

unint64_t sub_1E3A14724()
{
  result = qword_1EE288FC8;
  if (!qword_1EE288FC8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C28, &qword_1E42B3378);
    v6 = sub_1E3A147B0(v1, v2, v3);
    sub_1E3A14804(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FC8);
  }

  return result;
}

unint64_t sub_1E3A147B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE291F00[0];
  if (!qword_1EE291F00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE291F00);
  }

  return result;
}

unint64_t sub_1E3A14804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE291E78;
  if (!qword_1EE291E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE291E78);
  }

  return result;
}

uint64_t sub_1E3A14888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

double sub_1E3A148D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1E3A14934()
{
  result = qword_1EE289B88;
  if (!qword_1EE289B88)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C48, &qword_1E42B3398);
    sub_1E3A149C0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B88);
  }

  return result;
}

unint64_t sub_1E3A149C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24E8B8;
  if (!qword_1EE24E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24E8B8);
  }

  return result;
}

unint64_t sub_1E3A14A14()
{
  result = qword_1EE289B38;
  if (!qword_1EE289B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C30, &qword_1E42B3380);
    sub_1E3A15394(qword_1EE23BBE8, type metadata accessor for TextBadge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B38);
  }

  return result;
}

void *sub_1E3A14AE4(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3A14B3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3A14B78(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3A14BC0()
{
  result = qword_1EE289730;
  if (!qword_1EE289730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30BC8, &qword_1E42B3308);
    sub_1E38C9F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289730);
  }

  return result;
}

unint64_t sub_1E3A14C4C()
{
  result = qword_1EE288340;
  if (!qword_1EE288340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30CD8, &qword_1E42B34F0);
    sub_1E3A1558C(&qword_1EE288348, &qword_1ECF30BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288340);
  }

  return result;
}

unint64_t sub_1E3A14CFC()
{
  result = qword_1EE288350;
  if (!qword_1EE288350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30BF0, &qword_1E42B3338);
    sub_1E3A1558C(&qword_1EE288360, &qword_1ECF30BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288350);
  }

  return result;
}

unint64_t sub_1E3A14DAC()
{
  result = qword_1EE288368;
  if (!qword_1EE288368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30CE8, &qword_1E42B3500);
    sub_1E3A1558C(&qword_1EE288370, &qword_1ECF30C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288368);
  }

  return result;
}

unint64_t sub_1E3A14E8C()
{
  result = qword_1EE288A90;
  if (!qword_1EE288A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D00, &qword_1E42B3518);
    v3 = sub_1E3A143F8();
    sub_1E3A14804(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A90);
  }

  return result;
}

unint64_t sub_1E3A14F18()
{
  result = qword_1EE288F58;
  if (!qword_1EE288F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C40, &qword_1E42B3390);
    sub_1E3A14934();
    sub_1E3A14A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F58);
  }

  return result;
}

unint64_t sub_1E3A14FA4()
{
  result = qword_1EE2882F8;
  if (!qword_1EE2882F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C60, &qword_1E42B33B0);
    sub_1E3A1558C(&qword_1EE288308, &qword_1ECF30C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2882F8);
  }

  return result;
}

unint64_t sub_1E3A15054()
{
  result = qword_1EE288378;
  if (!qword_1EE288378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D18, &qword_1E42B3530);
    sub_1E3A1558C(&qword_1EE288380, &qword_1ECF30C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288378);
  }

  return result;
}

uint64_t sub_1E3A15164(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

unint64_t sub_1E3A151BC()
{
  result = qword_1EE289C68;
  if (!qword_1EE289C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D28, &qword_1E42B3688);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C68);
  }

  return result;
}

uint64_t sub_1E3A15260(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3A152D8()
{
  result = qword_1EE289B68;
  if (!qword_1EE289B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D20, &unk_1E42B3678);
    sub_1E3A15394(qword_1EE23E7D8, type metadata accessor for SportsCanonicalBannerScoreboardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B68);
  }

  return result;
}

uint64_t sub_1E3A15394(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3A153D8()
{
  result = qword_1ECF30D58;
  if (!qword_1ECF30D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D60, &qword_1E42B36C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D30, &qword_1E42B3690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D28, &qword_1E42B3688);
    sub_1E3A151BC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30D58);
  }

  return result;
}

unint64_t sub_1E3A154DC()
{
  result = qword_1EE2884C0;
  if (!qword_1EE2884C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D68, &qword_1E42B36C8);
    sub_1E3A1558C(&qword_1EE2884C8, &qword_1ECF30D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2884C0);
  }

  return result;
}

uint64_t sub_1E3A1558C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_53_21(uint64_t a1@<X8>)
{
  v2 = *(v1 - 352);
  *(a1 + 48) = *(v1 - 344);
  *(a1 + 56) = v2;
}

unint64_t OUTLINED_FUNCTION_62_12(unint64_t result, unint64_t a2)
{
  STACK[0x308] = v2;
  STACK[0x310] = result;
  STACK[0x318] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_10(uint64_t a1)
{

  return sub_1E4203DA4();
}

uint64_t OUTLINED_FUNCTION_69_10(uint64_t a1, uint64_t a2)
{

  return sub_1E4200D94();
}

uint64_t OUTLINED_FUNCTION_70_11(uint64_t a1, uint64_t a2)
{

  return sub_1E4200D94();
}

uint64_t sub_1E3A15658()
{
  result = sub_1E39DFFC8();
  v1 = 0.0;
  if (result)
  {
    v1 = 15.0;
  }

  qword_1ECF713F0 = *&v1;
  return result;
}

char *sub_1E3A15688()
{
  v1 = OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView;
  type metadata accessor for RootSideBarProfileView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = &v0[OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView____lazy_storage___accountSettingsVoiceOverString];
  v3 = type metadata accessor for PadRootSideBarProfileView();
  *v2 = 0;
  *(v2 + 1) = 0;
  v22.receiver = v0;
  v22.super_class = v3;
  v4 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView;
  v6 = *&v4[OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView];
  v7 = v4;
  [v7 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E4299720;
  v9 = sub_1E42001D4();
  v10 = MEMORY[0x1E69DC2B0];
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  v11 = sub_1E41FFDE4();
  v12 = MEMORY[0x1E69DC0A0];
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
  sub_1E4206EC4();
  swift_unknownObjectRelease();

  v13 = *&v4[v5];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = v13;

  v16 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x140);

  v16(sub_1E3A15948, v14);

  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  sub_1E37FB7F0(v17, v18, v7, &selRef_setVuiAccessibilityIdentifier_);

  sub_1E3A15A68();
  sub_1E37FB7F0(v19, v20, v7, &selRef_vui_setAccessibilityText_);

  return v7;
}

void sub_1E3A15948(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong invalidateIntrinsicContentSize];
  }
}

void sub_1E3A159B4()
{
  v1 = OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView;
  type metadata accessor for RootSideBarProfileView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView____lazy_storage___accountSettingsVoiceOverString);
  *v2 = 0;
  v2[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3A15A68()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView____lazy_storage___accountSettingsVoiceOverString);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView____lazy_storage___accountSettingsVoiceOverString + 8))
  {
    goto LABEL_5;
  }

  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E3741090(0xD000000000000019, 0x80000001E425ECD0, v2);
    v6 = v5;

    if (v6)
    {
      *v1 = v4;
      v1[1] = v6;

LABEL_5:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1E3A15B34()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PadRootSideBarProfileView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  [v0 bounds];
  Height = CGRectGetHeight(v9);
  if (qword_1ECF52D90 != -1)
  {
    OUTLINED_FUNCTION_0_113(&qword_1ECF52D90);
  }

  v2 = Height - *&qword_1ECF713F0;
  [v0 bounds];
  v3.n128_u64[0] = CGRectGetWidth(v10);
  v4.n128_u64[0] = 0;
  v5.n128_u64[0] = 0;
  v6.n128_f64[0] = v2;
  return [*&v0[OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView] setFrame_];
}

double sub_1E3A15C40(double a1)
{
  [*(v1 + OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView) vui:a1 sizeThatFits:0.0];
  if (qword_1ECF52D90 != -1)
  {
    OUTLINED_FUNCTION_0_113(&qword_1ECF52D90);
  }

  return a1;
}

id sub_1E3A15DA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PadRootSideBarProfileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3A15E48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

double sub_1E3A15EFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3A15FE4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3A16078(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30, &qword_1E429F570);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = OUTLINED_FUNCTION_11_6();
  v8(v7);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__tooltipOpacity, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_1E3A161A0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_1();
  sub_1E4200674();

  return v3;
}

uint64_t sub_1E3A16208@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3A162B0(void *a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_11_3(v3 + *a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3A1632C(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v7 + 16))(&v13[-v10 - 8], a1, v5, v9);
  OUTLINED_FUNCTION_11_3(v2 + *a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t sub_1E3A1644C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_tooltipUtility;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_tooltipUtility, a2);
  return *(v2 + v3);
}

uint64_t sub_1E3A16484(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_tooltipUtility;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_tooltipUtility, a2);
  *(v2 + v4) = a1;
  return result;
}

double sub_1E3A16504(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_viewContainerRef, a2);
  swift_weakAssign();

  return result;
}

void (*sub_1E3A16558(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_viewContainerRef;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3(v1 + v4, v3);
  v3[3] = swift_weakLoadStrong();
  return sub_1E376E4FC;
}

uint64_t sub_1E3A165D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = swift_allocObject();
  sub_1E3A1662C();
  return v3;
}

void sub_1E3A1662C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v45 = v3;
  v44 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49_2();
  v17 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__showTooltip;
  LOBYTE(v48[0]) = 0;
  sub_1E4200634();
  v38 = v17;
  v39 = v15;
  v18 = *(v15 + 32);
  v41 = v13;
  v18(v2 + v17, v1, v13);
  v19 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__tooltipOpacity;
  v48[0] = 0;
  sub_1E4200634();
  v42 = v9;
  v43 = v7;
  v20 = *(v9 + 32);
  v40 = v19;
  v20(v2 + v19, v12, v7);
  v21 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_tooltipUtility;
  *(v2 + OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_tooltipUtility) = 2;
  swift_weakInit();
  v22 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_autostartTooltipUtility;
  *(v2 + v22) = sub_1E395AC48(1) & 1;
  v23 = v44;

  v24 = v6;
  v25 = v23;
  sub_1E3AC5824();
  type metadata accessor for SportsLiveActivitiesAutostartController();
  v26 = sub_1E410B4E4();
  sub_1E410B510();
  v27 = OUTLINED_FUNCTION_33_11();
  *(v2 + 16) = sub_1E410B550(v27, v28, v29, v26, v30);

  LOBYTE(v22) = sub_1E410B5AC();

  if (v22)
  {

    v31 = 1;
  }

  else
  {
    sub_1E4205004();
    v32 = sub_1E4204FF4();
    v33 = sub_1E4204F74();

    LOBYTE(v32) = sub_1E3862230(v24, v25, v33);

    if (v32)
    {
      v34 = 2;
      goto LABEL_7;
    }

    v35 = v38;
    OUTLINED_FUNCTION_11_3(v2 + v38, v48);
    (*(v39 + 8))(v2 + v35, v41);
    LOBYTE(v47) = 1;
    sub_1E4200634();
    swift_endAccess();
    v36 = v40;
    OUTLINED_FUNCTION_11_3(v2 + v40, v48);
    (*(v42 + 8))(v2 + v36, v43);
    v47 = 0x3FF0000000000000;
    sub_1E4200634();
    swift_endAccess();
    v31 = 0;
  }

  v34 = sub_1E395AC48(v31) & 1;
LABEL_7:
  swift_beginAccess();
  *(v2 + v21) = v34;
  if (v34 == 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_1E395A5E4();
  }

  OUTLINED_FUNCTION_11_3(v2 + OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__tooltipHasPreviouslyShown, &v47);
  v46 = v37 & 1;
  sub_1E4200634();
  swift_endAccess();
  OUTLINED_FUNCTION_25_2();
}

BOOL sub_1E3A16A10()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 280))();
  if (v1 == 2)
  {
    return 0;
  }

  v3 = v1 & 1;

  return sub_1E34AF508(v3, 1);
}

uint64_t sub_1E3A16A7C()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 280))();
  if (result != 2)
  {
    v2 = result & 1;

    return sub_1E395A698(v2);
  }

  return result;
}

double sub_1E3A16AE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_50_1();
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_1E4206434();

  v8 = sub_1E4206424();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  sub_1E376FE58(0, 0, v0, &unk_1E42B3818, v9);

  return result;
}

uint64_t sub_1E3A16BF8()
{
  OUTLINED_FUNCTION_24();
  v0[8] = v1;
  sub_1E4206434();
  v0[9] = sub_1E4206424();
  v3 = sub_1E42063B4();
  v0[10] = v3;
  v0[11] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3A16C8C, v3, v2);
}

uint64_t sub_1E3A16C8C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_5_0(v0[8] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v0[13] = *(Strong + 16);

    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_1E3A16D80;

    return sub_1E410BB7C();
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t sub_1E3A16D80()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  *(v2 + 120) = v3;
  *(v2 + 128) = v4;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E3A16ECC, v6, v5);
}

uint64_t sub_1E3A16ECC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 128);

  v2 = *(v0 + 120);
  if (v1)
  {
    sub_1E3A203D0(v2, 1);
  }

  else
  {
    v3 = *(v0 + 96);
    if (v2)
    {
      sub_1E3A15EC0(1);
      v4 = sub_1E3A15FE4();
      v5 = (*(*v3 + 304))(v4);
      if (v5)
      {
        v6 = v5;
        OUTLINED_FUNCTION_5_0(v5 + 16, v0 + 40);
        v7 = *(v6 + 16);

        v7(v8);
      }
    }
  }

  OUTLINED_FUNCTION_54();

  return v9();
}

uint64_t sub_1E3A16FE4()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E37E1058;

  return sub_1E3A16BF8();
}

uint64_t sub_1E3A17074()
{

  v1 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__showTooltip;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v5 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__tooltipOpacity;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v0 + v5);
  v4(v0 + OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__tooltipHasPreviouslyShown, v2);
  swift_weakDestroy();
  return v0;
}

uint64_t sub_1E3A17160()
{
  sub_1E3A17074();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3A171B8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SportsCanonicalBannerAccessoryViewModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t sub_1E3A17238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3A17280(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for SportsCanonicalBannerAccessoryView(0) + 32)) && (type metadata accessor for ViewModel(), OUTLINED_FUNCTION_26_40(), sub_1E3A17238(v2, v3, &protocol conformance descriptor for ViewModel), , v4 = sub_1E4205E84(), , (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_6_78();
    v8 = (*(v5 + 1216))(v6, v7) ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

void sub_1E3A173B0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v13[2] = MEMORY[0x1E69E7CC0];
  v6 = sub_1E32AE9B0(a3);
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v11 = v4;
  v12 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v6 == v7)
    {

      return;
    }

    if (v8)
    {
      v9 = MEMORY[0x1E6911E60](v7, v4);
    }

    else
    {
      if (v7 >= *(v12 + 16))
      {
        goto LABEL_16;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    v13[0] = v9;
    v10 = a1(v13);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      sub_1E4207544();
      sub_1E4207584();
      v4 = v11;
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }

    ++v7;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1E3A17538(char a1, uint64_t a2, uint64_t a3)
{
  v4 = TVAppFeature.isEnabled.getter(2, a2, a3);
  if ((a1 & 1) == 0)
  {
    if (v4)
    {
      v7 = 0;
      goto LABEL_7;
    }

    return 0;
  }

  if ((v4 & 1) == 0 || (sub_1E3A7E390(0, v5, v6) & 1) == 0)
  {
    return 0;
  }

  v7 = 1;
LABEL_7:

  return sub_1E3A7E390(v7, v5, v6);
}

BOOL sub_1E3A175A4()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (sub_1E3A17538(v3 == 1, v4, v5) & 1) != 0 && (v6 = type metadata accessor for SportsCanonicalBannerAccessoryView(0), OUTLINED_FUNCTION_6_78(), ((*(v7 + 1192))()) && (OUTLINED_FUNCTION_8(), ((*(v8 + 1216))() & 1) == 0))
  {
    return *(v1 + *(v6 + 32)) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3A17698()
{
  if (sub_1E3A175A4() && (OUTLINED_FUNCTION_41_27(), OUTLINED_FUNCTION_6_78(), ((*(v0 + 136))() & 1) != 0))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v1 + 352))())
    {
      v2 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_8();
      v2 = (*(v4 + 232))() ^ 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1E3A1774C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v90 = v11 - v10;
  v12 = OUTLINED_FUNCTION_138();
  v13 = type metadata accessor for SportsCanonicalBannerAccessoryView(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_15(v13[7]);
  OUTLINED_FUNCTION_66_15(v13[8]);
  OUTLINED_FUNCTION_66_15(v13[9]);
  OUTLINED_FUNCTION_66_15(v13[10]);
  v18 = v17 + v13[13];
  type metadata accessor for CGRect(0);
  sub_1E42038E4();
  v19 = v100;
  v20 = v99[1];
  *v18 = v99[0];
  *(v18 + 1) = v20;
  *(v18 + 4) = v19;
  OUTLINED_FUNCTION_66_15(v13[15]);
  v21 = v17 + v13[16];
  v22 = sub_1E42038E4();
  v23 = *(&v99[0] + 1);
  *v21 = v99[0];
  *(v21 + 1) = v23;
  *(v17 + v13[12]) = v1;
  v24 = (*(*v5 + 392))(v22);
  if (v24)
  {
    if (*v24 == _TtC8VideosUI37LegacySportsCanonicalBannerViewLayout)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for LegacySportsCanonicalBannerViewLayout();
  v24 = sub_1E37C2700();
LABEL_5:
  v25 = v7;
  v89 = v8;
  *(v17 + v13[11]) = v24;
  v83 = v17;
  *(v17 + v13[14]) = v3;
  v26 = *(*v5 + 464);

  v28 = v26(v27);
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v92 = sub_1E32AE9B0(v29);
  if (v92)
  {
    v80 = v3;
    v81 = v13;
    v82 = v25;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v98 = v29 & 0xC000000000000001;
    v95 = v29 & 0xFFFFFFFFFFFFFF8;
    v93 = 0;
    v94 = v29 + 32;
    v33 = v83;
    v34 = v90;
    v91 = v29;
    v35 = v92;
    do
    {
      if (v98)
      {
        v36 = MEMORY[0x1E6911E60](v30, v29);
      }

      else
      {
        if (v30 >= *(v95 + 16))
        {
          goto LABEL_65;
        }

        v36 = *(v94 + 8 * v30);
      }

      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return;
      }

      v38 = *(v36 + 98);
      switch(v38)
      {
        case 11:
          if (*v36 != _TtC8VideosUI13TextViewModel)
          {

            v36 = 0;
          }

          *(v33 + v86) = v36;
          v31 = v36;
          break;
        case 17:
          if (*v36 != _TtC8VideosUI13TextViewModel)
          {

            v36 = 0;
          }

          *(v33 + v88) = v36;
          break;
        case 59:

          break;
        case 91:
          OUTLINED_FUNCTION_111();
          v40 = (*(v39 + 464))();

          *(v33 + v85) = v40;
          if (v40)
          {
            v41 = sub_1E32AE9B0(v40);
            for (i = 0; ; ++i)
            {
              if (v41 == i)
              {

                v43 = 0;
                goto LABEL_53;
              }

              if ((v40 & 0xC000000000000001) != 0)
              {
                v44 = MEMORY[0x1E6911E60](i, v40);
                v43 = v44;
              }

              else
              {
                if (i >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_64;
                }

                v43 = *(v40 + 8 * i + 32);
              }

              if (__OFADD__(i, 1))
              {
                goto LABEL_63;
              }

              sub_1E3742F1C(v44, v45, v46);
              sub_1E4206254();
              sub_1E4206254();
              if (!*&v99[0] && *(&v99[0] + 1) == 0)
              {
                break;
              }

              v48 = sub_1E42079A4();

              if (v48)
              {
                goto LABEL_52;
              }
            }

LABEL_52:

LABEL_53:
            v59 = v83;
          }

          else
          {

            v59 = v33;
            v43 = 0;
          }

          *(v59 + v84) = v43;
          v34 = v90;
          v29 = v91;
          v35 = v92;
          v33 = v59;
          break;
        case 97:

          *(v33 + v87) = v36;
          v32 = v36;
          break;
        case 234:

          type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
          v93 = swift_dynamicCastClass();
          if (!v93)
          {

            v93 = 0;
          }

          break;
        default:
          v97 = v32;
          v96 = v31;
          sub_1E3E37F30();
          OUTLINED_FUNCTION_36_5();
          v49(v34);

          v50 = sub_1E41FFC94();
          v51 = sub_1E4206814();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            *&v99[0] = v53;
            *v52 = 136315138;
            sub_1E384EE08(v38);
            v56 = v33;
            v57 = sub_1E3270FC8(v54, v55, v99);

            *(v52 + 4) = v57;
            v33 = v56;
            _os_log_impl(&dword_1E323F000, v50, v51, "SportsCanonicalBannerAccessoryView: unhandled view model type [%s]", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v53);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();

            OUTLINED_FUNCTION_36_5();
            v34 = v90;
          }

          else
          {

            OUTLINED_FUNCTION_36_5();
          }

          v58(v34, v89);
          v31 = v96;
          v32 = v97;
          v29 = v91;
          v35 = v92;
          break;
      }
    }

    while (v30 != v35);

    if (v93)
    {
      v60 = (v33 + *(v81 + 20));
      type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
      OUTLINED_FUNCTION_21_49();
      sub_1E3A17238(v61, v62, &unk_1E42E1620);

      v63 = sub_1E42010C4();
      v65 = v64;
      *v60 = v63;
      v60[1] = v64;
      v66 = (*(*v93 + 1096))();
      (*(*v93 + 1224))(v66);
      type metadata accessor for SportsCanonicalBannerAccessoryViewModel(0);
      swift_allocObject();
      sub_1E3A1662C();
      v67 = (v33 + *(v81 + 24));
      OUTLINED_FUNCTION_19_54();
      sub_1E3A17238(v68, v69, &unk_1E42B3968);
      *v67 = sub_1E42010C4();
      v67[1] = v70;
      v71 = *(*v70 + 312);

      v71(v72);
      (*(*v65 + 1288))(v80);

      sub_1E3A1FE98(v33, v82, type metadata accessor for SportsCanonicalBannerAccessoryView);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v81);
      sub_1E3A1FEF4();
      goto LABEL_61;
    }

    v13 = v81;
    v76 = v33;
  }

  else
  {

    v76 = v83;
  }

  sub_1E325F69C(v76, &qword_1ECF28BB8);

  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v13);
LABEL_61:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A182D8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D88, &qword_1E42B3850);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v14 = *(v0 + *(v5 + 68));
  if (v14)
  {
    v35 = v3;
    MEMORY[0x1EEE9AC00](v13);
    v33 = v0;

    sub_1E3A173B0(sub_1E3A2048C, (&v34 - 4), v14);
    v16 = sub_1E3741880(v15);

    v36 = v16;
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_118();
    sub_1E3A1FE98(v0, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_0_114();
    sub_1E3A1FE3C(v8, v20 + v18, v21);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1E3A1E838;
    *(v22 + 24) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A38, &unk_1E429FEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D90, &qword_1E42B3880);
    sub_1E374AD40(&qword_1ECF28A48, &qword_1ECF28A38, &unk_1E429FEB0, MEMORY[0x1E69E6338]);
    OUTLINED_FUNCTION_26_40();
    sub_1E3A17238(v23, v24, &protocol conformance descriptor for ViewModel);
    v33 = sub_1E3A1E89C();
    sub_1E4203B34();
    (*(v11 + 32))(v35, v1, v9);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v9);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

void sub_1E3A18620()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v91 = v4;
  v92 = v3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DE8, &qword_1E42B38B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  OUTLINED_FUNCTION_0_10();
  v82 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DC0, &unk_1E42B3898);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF0, &qword_1E42B38B8);
  OUTLINED_FUNCTION_0_10();
  v86 = v13;
  v87 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v81 = v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DB8, &qword_1E42B3890);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v85 = v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DA8, &qword_1E42B3888);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  v88 = v23;
  v24 = sub_1E3A175A4();
  v27 = *(v0 + v6[8]);
  if (v24 && v27 && v27 == v92)
  {
    v80 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = *(v0 + v6[5] + 8);
    v29 = *(*v28 + 2240);
    v77 = *v28 + 2240;
    v78 = v29;
    v74 = v29();
    v30 = (*(*v28 + 2264))();
    v76 = v21;
    if (v30)
    {
      v31 = v30;
      if (object_getClass(v30) == _TtC8VideosUI27Tier1PlusLiveUpdateProvider)
      {
        OUTLINED_FUNCTION_5_0((v31 + 120), &v103);
        HIDWORD(v73) = v31[120];
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
    }

    HIDWORD(v73) = 0;
LABEL_15:
    v40 = v2 + v6[13];
    v41 = *(v40 + 32);
    v42 = *(v40 + 16);
    v96 = *v40;
    v97 = v42;
    *&v98 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8, &unk_1E42B38C0);
    sub_1E4203914();
    OUTLINED_FUNCTION_1_118();
    v79 = v43;
    v44 = v80;
    sub_1E3A1FE98(v2, v80, v45);
    v82 = *(v82 + 80);
    v46 = (v82 + 16) & ~v82;
    v75 = v46;
    swift_allocObject();
    OUTLINED_FUNCTION_0_114();
    v48 = v47 + v46;
    v50 = v49;
    sub_1E3A1FE3C(v44, v48, v51);

    sub_1E37DBE34();
    v78();
    sub_1E3848584();

    sub_1E3A1EAD4();
    v52 = v81;
    View.accessibilityIdentifier(key:location:)();
    sub_1E325F69C(v1, &qword_1ECF30DC0);
    v53 = v2 + v6[16];
    v54 = *v53;
    v55 = *(v53 + 8);
    LOBYTE(v96) = v54;
    *(&v96 + 1) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
    sub_1E42038F4();
    v56 = v93[0];
    KeyPath = swift_getKeyPath();
    v58 = swift_allocObject();
    *(v58 + 16) = (v56 & 1) == 0;
    v59 = v85;
    (*(v86 + 32))(v85, v52, v87);
    v60 = (v59 + *(v84 + 36));
    *v60 = KeyPath;
    v60[1] = sub_1E37E09AC;
    v60[2] = v58;
    v61 = v80;
    sub_1E3A1FE98(v2, v80, v79);
    v62 = v75;
    v63 = swift_allocObject();
    sub_1E3A1FE3C(v61, v63 + v62, v50);
    v64 = v59;
    v65 = v76;
    sub_1E3741EA0(v64, v76, &qword_1ECF30DB8, &qword_1E42B3890);
    v66 = v88;
    v67 = (v65 + *(v89 + 36));
    *v67 = sub_1E3A1EDD8;
    v67[1] = v63;
    v67[2] = 0;
    v67[3] = 0;
    sub_1E3741EA0(v65, v66, &qword_1ECF30DA8, &qword_1E42B3888);
    OUTLINED_FUNCTION_40_21();
    sub_1E3743538(v68, v69, v70, &qword_1E42B3888);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DE0, &qword_1E42B38A8);
    sub_1E3A1E954();
    OUTLINED_FUNCTION_20_52();
    sub_1E3A1F924(v71, &qword_1ECF30DE0, &qword_1E42B38A8, v72);
    OUTLINED_FUNCTION_49_5();
    sub_1E4201F44();
    sub_1E325F69C(v66, &qword_1ECF30DA8);
    goto LABEL_16;
  }

  if (v27 && v27 == v92 || (TVAppFeature.isEnabled.getter(10, v25, v26) & 1) != 0)
  {
    bzero(v95, 0xF8uLL);
  }

  else
  {

    v32 = sub_1E37C1C0C();
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 2;
    v102 = 0;
    v104 = 0u;
    v105 = 0u;
    v103 = 1;
    v106 = 0;
    v94 = 0;
    memset(v93, 0, sizeof(v93));
    v33 = sub_1E383C8A8();
    v34 = sub_1E383C8B0();
    sub_1E383C8FC(v92, v32, &v96, v34, &v103, 0, 1, v93, v95, v33);
  }

  OUTLINED_FUNCTION_40_21();
  sub_1E3743538(v35, v36, v37, &qword_1E42B38A8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DE0, &qword_1E42B38A8);
  sub_1E3A1E954();
  OUTLINED_FUNCTION_20_52();
  sub_1E3A1F924(v38, &qword_1ECF30DE0, &qword_1E42B38A8, v39);
  sub_1E4201F44();
  sub_1E325F69C(v95, &qword_1ECF30DE0);
LABEL_16:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3A18DC4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v54 = v6 - v5;
  OUTLINED_FUNCTION_138();
  v7 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v53 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v52 = v11 - v10;
  v12 = OUTLINED_FUNCTION_138();
  v13 = type metadata accessor for SportsCanonicalBannerAccessoryView(v12);
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v55 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  OUTLINED_FUNCTION_6_78();
  v25 = (*(v24 + 136))();
  if (v25)
  {
    v50 = v3;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 2) = v0;
    sub_1E4203E44();
    v49 = v7;
    v48 = v1;
    sub_1E4200FE4();

    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v46 = sub_1E4206A04();
    sub_1E4204004();
    v26.n128_u64[0] = 0.5;
    sub_1E4204074(v26);
    v47 = *(v16 + 8);
    v47(v20, v55);
    OUTLINED_FUNCTION_1_118();
    sub_1E3A1FE98(v0, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
    v28 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_0_114();
    sub_1E3A1FE3C(&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v28, v31);
    v56[4] = sub_1E3A20300;
    v56[5] = v29;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v56[2] = v32;
    v56[3] = &block_descriptor_128;
    v33 = _Block_copy(v56);

    v34 = v52;
    sub_1E4203FE4();
    v56[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_23_39();
    sub_1E3A17238(v35, v36, MEMORY[0x1E69E7F70]);
    v37 = OUTLINED_FUNCTION_33_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
    OUTLINED_FUNCTION_47();
    sub_1E374AD40(v39, v40, &qword_1E429B000, v41);
    v42 = v54;
    v43 = v48;
    sub_1E42072E4();
    v44 = v46;
    MEMORY[0x1E69112E0](v23, v34, v42, v33);
    _Block_release(v33);

    (*(v50 + 8))(v42, v43);
    (*(v53 + 8))(v34, v49);
    v47(v23, v55);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A1926C()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  v5 = v4;
  if (v3 == 1)
  {
    if (*(v1 + *(v4 + 60)))
    {
      MEMORY[0x1EEE9AC00](v4);
      OUTLINED_FUNCTION_57_11();
      *(v6 - 16) = v1;

      OUTLINED_FUNCTION_164();
      sub_1E3A173B0(v7, v8, v9);
      sub_1E32AE9B0(v10);
    }
  }

  else
  {
    sub_1E401C478();
    v11 = v1 + *(v5 + 52);
    v12 = *(v11 + 32);
    v13 = *(v11 + 16);
    v15[0] = *v11;
    v15[1] = v13;
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8, &unk_1E42B38C0);
    sub_1E4203914();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A860, &unk_1E42B3900);
    MEMORY[0x1E690E3F0](v15, v14);
  }
}

void *sub_1E3A19434@<X0>(void *a1@<X8>)
{
  if (sub_1E3A175A4() && (sub_1E3A17698() & 1) != 0 && ((sub_1E3A1926C(), v3 > 0.0) || (OUTLINED_FUNCTION_41_27(), OUTLINED_FUNCTION_6_78(), ((*(v4 + 352))() & 1) != 0)) && (v5 = type metadata accessor for SportsCanonicalBannerAccessoryView(0), OUTLINED_FUNCTION_6_78(), (*(v6 + 280))() != 2))
  {
    if (*(v1 + *(v5 + 32)))
    {
      *&__src[0] = *(v1 + *(v5 + 32));
      sub_1E3A19588();
    }

    else
    {
      sub_1E3A1EE70(v9);
    }

    memcpy(__dst, v9, sizeof(__dst));
    nullsub_1();
    memcpy(__src, __dst, 0xC1uLL);
  }

  else
  {
    sub_1E3A1EE5C(__src);
  }

  return memcpy(a1, __src, 0xC1uLL);
}

void sub_1E3A19588()
{
  OUTLINED_FUNCTION_21_5();
  v36 = v3;
  v5 = v4;
  v37 = v6;
  v7 = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  v16 = *v5;

  sub_1E3A1926C();
  v18 = v17;
  sub_1E3746E10(v15);
  LOBYTE(v5) = sub_1E3B0352C();
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_1_118();
  v35 = v19;
  v20 = OUTLINED_FUNCTION_75();
  sub_1E3A1FE98(v20, v21, v22);
  v23 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_0_114();
  v34 = v25;
  sub_1E3A1FE3C(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v23, v27);
  sub_1E3A19888(v16, v36 & 1, v5 & 1, sub_1E3A20160, v24, v38, v18);
  memcpy(v39, v38, 0x51uLL);
  type metadata accessor for BubbleTipModelBox();
  v28 = swift_allocObject();
  sub_1E3A1EECC(v38, v40);
  sub_1E3A1BCE8();
  LOBYTE(v16) = sub_1E4202744();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  LOBYTE(v40[0]) = 0;
  OUTLINED_FUNCTION_6_78();
  v30 = (*(v29 + 184))();
  v31 = OUTLINED_FUNCTION_75();
  sub_1E3A1FE98(v31, v32, v35);
  v33 = swift_allocObject();
  sub_1E3A1FE3C(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v23, v34);
  memcpy(v40, v39, 0x58uLL);
  v40[11] = v28;
  v40[12] = 0;
  LOBYTE(v40[13]) = v16;
  *&v40[14] = v18;
  v40[15] = v0;
  v40[16] = v1;
  v40[17] = v2;
  LOBYTE(v40[18]) = 0;
  *&v40[19] = v30;
  v40[20] = sub_1E3A201AC;
  v40[21] = v33;
  v40[22] = 0;
  v40[23] = 0;
  LOBYTE(v40[24]) = 1;
  nullsub_1();
  memcpy(v37, v40, 0xC1uLL);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3A19888@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v13 = *(*a1 + 464);

  v14 = v13();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  result = sub_1E32AE9B0(v15);
  v37 = a4;
  v38 = a5;
  if (!result)
  {
    v19 = a1;
    goto LABEL_16;
  }

  v17 = result;
  if (result >= 1)
  {
    v18 = 0;
    v19 = a1;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = OUTLINED_FUNCTION_159();
        v21 = MEMORY[0x1E6911E60](v20);
      }

      else
      {
        v21 = *(v15 + 8 * v18 + 32);
      }

      if (*(v21 + 98) == 80)
      {

        v19 = v21;
      }

      else
      {
      }

      ++v18;
    }

    while (v17 != v18);
LABEL_16:

    if (a2)
    {
      v22 = 6;
    }

    else
    {
      v22 = 3;
    }

    if (a2)
    {
      v23 = 7;
    }

    else
    {
      v23 = 4;
    }

    v46[3] = &unk_1F5D5D528;
    v46[4] = &off_1F5D5C858;
    LOBYTE(v46[0]) = v22;
    v44 = &unk_1F5D5D528;
    v45 = &off_1F5D5C858;
    LOBYTE(v43[0]) = v23;
    v24 = __swift_project_boxed_opaque_existential_1(v46, &unk_1F5D5D528);
    v25 = *(*v19 + 776);
    v25(v41, v24, &unk_1F5D5D528, &off_1F5D5C858);
    if (v42)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_29:
        v31 = a3;
        goto LABEL_30;
      }

      v27 = v39;
      v26 = v40;
      v28 = v44;
      v29 = v45;
      v30 = __swift_project_boxed_opaque_existential_1(v43, v44);
      v25(v41, v30, v28, v29);
      if (v42)
      {
        v31 = a3;
        if (swift_dynamicCast())
        {
          v33 = v39;
          v32 = v40;
LABEL_33:
          v34 = a2 & 1;
          v35 = sub_1E34AF508(a2 & 1, 0);

          __swift_destroy_boxed_opaque_existential_1(v43);
          __swift_destroy_boxed_opaque_existential_1(v46);
          result = swift_allocObject();
          *(result + 16) = v34;
          *a6 = v27;
          *(a6 + 8) = v26;
          *(a6 + 16) = v33;
          *(a6 + 24) = v32;
          *(a6 + 32) = sub_1E3A1EE78;
          *(a6 + 40) = result;
          *(a6 + 48) = v37;
          *(a6 + 56) = v38;
          *(a6 + 64) = v35;
          *(a6 + 72) = a7;
          *(a6 + 80) = v31 & 1;
          return result;
        }

LABEL_30:
        v33 = 0xD00000000000003ELL;
        if (a2)
        {
          v32 = 0x80000001E426C9D0;
          v33 = 0xD000000000000040;
          v26 = 0xEC00000073657461;
          v27 = 0x647055206576694CLL;
        }

        else
        {
          v26 = 0x80000001E426CA20;
          v32 = 0x80000001E426CA40;
          v27 = 0x1000000000000018;
        }

        goto LABEL_33;
      }
    }

    sub_1E325F69C(v41, &unk_1ECF296E0);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

void sub_1E3A19C0C()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v1;
  v59 = v5;
  v6 = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  OUTLINED_FUNCTION_0_10();
  v56 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v57 = v9;
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E00, &qword_1E42B3910);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_50_1();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E08, &qword_1E42B3918);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E10, &qword_1E42B3920);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49_2();
  v18 = *(v4 + *(v6 + 60));
  if (v18)
  {
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_57_11();
    *(v19 - 16) = v4;

    sub_1E3A173B0(sub_1E3A2048C, v2, v18);
    v21 = sub_1E32AE9B0(v20);
  }

  else
  {
    v21 = 0;
  }

  v60[0] = v21;
  LOBYTE(v60[1]) = v18 == 0;
  v61[0] = 1;
  v22 = sub_1E414A658(v60, v61, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
  if (v22)
  {
    if (v18)
    {
      MEMORY[0x1EEE9AC00](v22);
      v53 = v4;

      sub_1E3A173B0(sub_1E3A2048C, &v51, v18);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1E6911E60](0, v23);
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v24 = *(v23 + 32);
      }
    }

    else
    {
      v24 = 0;
    }

    v60[3] = &unk_1F5D5D0A8;
    v60[4] = &off_1F5D5C758;
    LOBYTE(v60[0]) = 2;
    type metadata accessor for ViewModel();
    v25 = j__OUTLINED_FUNCTION_18();
    sub_1E39C3418(v60, v25 & 1, v24);

    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  *v0 = sub_1E4201D44();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E18, &unk_1E42B3928);
  sub_1E3A1A160();
  v53 = sub_1E4203D84();
  v54 = v26;
  v52 = 0;
  v51 = 0x7FF0000000000000;
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  sub_1E3741EA0(v0, v14, &qword_1ECF30E00, &qword_1E42B3910);
  memcpy(&v14[*(v55 + 36)], v60, 0x70uLL);
  sub_1E37C1AE4();
  OUTLINED_FUNCTION_30();
  (*(v27 + 176))(v61);
  v28 = v61[0];
  v29 = v61[1];
  v30 = v61[2];
  v31 = v61[3];

  if (v62)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v32.n128_u64[0] = v28;
    v33.n128_u64[0] = v29;
    v34.n128_u64[0] = v30;
    v35.n128_u64[0] = v31;
    j_nullsub_1(v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_3();
  v36 = v58;
  v37 = v56;
  v38 = sub_1E4202734();
  v39 = OUTLINED_FUNCTION_159();
  sub_1E3741EA0(v39, v40, v41, v42);
  v43 = (v3 + *(v15 + 36));
  *v43 = v38;
  OUTLINED_FUNCTION_11_4(v43);
  OUTLINED_FUNCTION_1_118();
  v44 = OUTLINED_FUNCTION_75();
  sub_1E3A1FE98(v44, v45, v46);
  v47 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_0_114();
  sub_1E3A1FE3C(v36, v48 + v47, v49);
  sub_1E3A1EF54();
  v50 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB6EC(v50 & 1);

  sub_1E325F69C(v3, &qword_1ECF30E10);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3A1A160()
{
  OUTLINED_FUNCTION_9_4();
  v151 = v4;
  v6 = v5;
  v141 = v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EC0, &qword_1E42B3E00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v134 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EC8, &qword_1E42B3E08);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v153 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30ED0, &qword_1E42B3E10);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v148 = v19;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30ED8, &qword_1E42B3E18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v147 = v21;
  v22 = OUTLINED_FUNCTION_138();
  v23 = type metadata accessor for SportsCanonicalBannerAccessoryView(v22);
  OUTLINED_FUNCTION_0_10();
  v143 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v144 = v26;
  v145 = (&v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = OUTLINED_FUNCTION_138();
  v28 = type metadata accessor for SportsAccessoryButtonLayout(v27);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v146 = v30 - v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_19_7();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EE0, &unk_1E42B3E20);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v140 = v35 - v36;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25_3();
  v152 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v135 = v40;
  v136 = v39;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  v137 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_26_2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8, &qword_1E42AF320);
  v46 = OUTLINED_FUNCTION_17_2(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4_6();
  v138 = v47 - v48;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25_3();
  v154 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EE8, &qword_1E42B3E30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EF0, &qword_1E42B3E38);
  v53 = OUTLINED_FUNCTION_17_2(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_4_6();
  v150 = v54 - v55;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_25_3();
  v155 = v57;
  v156 = v23;
  v58 = *(v6 + *(v23 + 28));
  v142 = v14;
  if (v58)
  {
    *&v161[0] = v58;
    v59 = v6;
    sub_1E3A1AE74();
  }

  else
  {
    v59 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EF8, &qword_1E42B3E40);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  }

  sub_1E3A1F924(&qword_1ECF30F00, &qword_1ECF30EE8, &qword_1E42B3E30, sub_1E3A1FB68);
  sub_1E4203374();
  v64 = OUTLINED_FUNCTION_33_11();
  sub_1E325F69C(v64, v65);
  if (v151)
  {
    v66 = v59;
    if (*(v59 + v156[10]))
    {

      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      v67 = sub_1E4202754();
      v130 = v67;
      v69 = sub_1E3C27528(v67, v68);
      v70 = v145;
      if (v69 && (OUTLINED_FUNCTION_30(), (*(v71 + 152))(v162), , (v163 & 1) == 0))
      {
        sub_1E4200A54();
        v131 = v75;
        v132 = v74;
        v128 = v77;
        v129 = v76;

        v72 = 0;
        *&v78 = v131;
        *(&v78 + 1) = v128;
        v131 = v78;
        *&v78 = v132;
        *(&v78 + 1) = v129;
        v132 = v78;
      }

      else
      {

        v131 = 0u;
        v132 = 0u;
        v72 = 1;
      }

      (*(v135 + 32))(v0, v137, v136);
      v79 = v0 + *(v43 + 36);
      *v79 = v130;
      v80 = v132;
      *(v79 + 24) = v131;
      *(v79 + 8) = v80;
      *(v79 + 40) = v72;
      sub_1E3741EA0(v0, v154, &qword_1ECF28CC0, &qword_1E4298440);
      v73 = 0;
    }

    else
    {
      v73 = 1;
      v70 = v145;
    }
  }

  else
  {
    v73 = 1;
    v66 = v59;
    v70 = v145;
  }

  v81 = v143;
  __swift_storeEnumTagSinglePayload(v154, v73, 1, v43);
  v82 = *(v66 + v156[11]);
  v83 = sub_1E3952BE0(v82[22], v82[23], v82[24], v82[25]);
  v84 = sub_1E3952BD8(v82[22], v82[23], v82[24]);
  sub_1E3746E10((v1 + *(v28 + 32)));
  v85 = sub_1E37C1C0C();
  v86 = sub_1E37C1AE4();
  OUTLINED_FUNCTION_1_118();
  sub_1E3A1FE98(v66, v70, v87);
  v88 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v89 = swift_allocObject();
  OUTLINED_FUNCTION_0_114();
  sub_1E3A1FE3C(v70, v90 + v88, v91);
  *v1 = v83;
  v1[1] = v84;
  *(v1 + 2) = v86;
  *(v1 + 3) = v85;
  v92 = (v1 + *(v28 + 36));
  *v92 = sub_1E3A1FDDC;
  v92[1] = v89;
  v93 = v146;
  sub_1E3A1FE3C(v1, v146, type metadata accessor for SportsAccessoryButtonLayout);
  v94 = v148;
  sub_1E3A1FE98(v93, v148, type metadata accessor for SportsAccessoryButtonLayout);
  v95 = v147;
  sub_1E3743538(v94, v147, &qword_1ECF30ED0, &qword_1E42B3E10);
  sub_1E3A1B2C4(v95 + *(v149 + 44));
  sub_1E325F69C(v94, &qword_1ECF30ED0);
  sub_1E3A1FEF4();
  sub_1E3A1FF48();
  sub_1E4203374();
  sub_1E325F69C(v95, &qword_1ECF30ED8);
  v96 = *(v66 + v156[9]);
  v145 = v82;
  if (!v96)
  {
    v108 = 1;
    v107 = 0;
LABEL_40:
    if (v151)
    {
      v113 = 1;
    }

    else
    {
      v113 = 1;
      if (*(v66 + v156[10]))
      {

        v114 = sub_1E4201D44();
        v115 = v134;
        *v134 = v114;
        *(v115 + 8) = 0;
        *(v115 + 16) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F58, &qword_1E42B3E70);
        sub_1E3A1B5F0();

        sub_1E3741EA0(v115, v153, &qword_1ECF30EC0, &qword_1E42B3E00);
        v113 = 0;
      }
    }

    __swift_storeEnumTagSinglePayload(v153, v113, 1, v139);
    v116 = [objc_opt_self() currentDevice];
    v117 = [v116 userInterfaceIdiom];

    if (v117 == 1)
    {
      sub_1E3A2007C(v161);
    }

    else
    {
      sub_1E3A19434(v157);
      v118 = sub_1E4202724();
      sub_1E4200A54();
      OUTLINED_FUNCTION_3();
      LOBYTE(v161[0]) = 0;
      memcpy(v160, v157, 0xC8uLL);
      LOBYTE(v160[25]) = v118;
      *&v160[26] = v83;
      *&v160[27] = v84;
      v160[28] = v2;
      v160[29] = v3;
      LOBYTE(v160[30]) = 0;
      nullsub_1();
      memcpy(v161, v160, 0xF1uLL);
    }

    v119 = v150;
    sub_1E3743538(v155, v150, &qword_1ECF30EF0, &qword_1E42B3E38);
    v159[0] = v119;
    v120 = v154;
    v121 = v138;
    sub_1E3743538(v154, v138, &qword_1ECF2F9A8, &qword_1E42AF320);
    v159[1] = v121;
    v122 = v152;
    v123 = v140;
    sub_1E3743538(v152, v140, &qword_1ECF30EE0, &unk_1E42B3E20);
    v158[0] = v108;
    v158[1] = v107;
    v158[2] = 0;
    v159[2] = v123;
    v159[3] = v158;
    v124 = v153;
    v125 = v142;
    sub_1E3743538(v153, v142, &qword_1ECF30EC8, &qword_1E42B3E08);
    v159[4] = v125;
    memcpy(v157, v161, 0xF1uLL);
    v159[5] = v157;
    sub_1E3A1B4AC(v159, v141);
    sub_1E325F69C(v124, &qword_1ECF30EC8);
    sub_1E325F69C(v122, &qword_1ECF30EE0);
    sub_1E325F69C(v120, &qword_1ECF2F9A8);
    sub_1E325F69C(v155, &qword_1ECF30EF0);
    memcpy(v160, v157, 0xF1uLL);
    sub_1E325F69C(v160, &qword_1ECF30F50);
    v126 = OUTLINED_FUNCTION_33_11();
    sub_1E325F69C(v126, v127);
    sub_1E3A2002C(v158[0]);
    sub_1E325F69C(v123, &qword_1ECF30EE0);
    sub_1E325F69C(v121, &qword_1ECF2F9A8);
    sub_1E325F69C(v150, &qword_1ECF30EF0);
    OUTLINED_FUNCTION_10_3();
    return;
  }

  OUTLINED_FUNCTION_8();
  v98 = *(v97 + 392);

  v100 = v98(v99);
  v101 = v100;
  if (v100 && *v100 != _TtCC8VideosUI37LegacySportsCanonicalBannerViewLayout26ScoreAccessoryDetailLayout)
  {

    v101 = 0;
  }

  OUTLINED_FUNCTION_8();
  v103 = (*(v102 + 464))();
  if (v103)
  {
    v104 = v103;
  }

  else
  {
    v104 = MEMORY[0x1E69E7CC0];
  }

  v105 = sub_1E32AE9B0(v104);
  v133 = v66;
  v149 = v101;
  if (!v105)
  {
    v107 = 0;
    v108 = 0;
LABEL_39:

    v66 = v133;
    goto LABEL_40;
  }

  v106 = v105;
  if (v105 >= 1)
  {
    v107 = 0;
    v108 = 0;
    v109 = 0;
    while (1)
    {
      if ((v104 & 0xC000000000000001) != 0)
      {
        v110 = OUTLINED_FUNCTION_159();
        v111 = MEMORY[0x1E6911E60](v110);
      }

      else
      {
        v111 = *(v104 + 8 * v109 + 32);
      }

      v112 = *(v111 + 98);
      if (v112 == 17)
      {

        if (*v111 != _TtC8VideosUI13TextViewModel)
        {
          v107 = 0;
          goto LABEL_34;
        }

        v107 = v111;
      }

      else
      {
        if (v112 != 23)
        {
          goto LABEL_34;
        }

        if (*v111 != _TtC8VideosUI13TextViewModel)
        {
          v108 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v108 = v111;
      }

LABEL_35:
      if (v106 == ++v109)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
}

void sub_1E3A1AE74()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98, &qword_1E429CA30) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-v5];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F28, &unk_1E42B3E50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F18, &qword_1E42B3E48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-v10];
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  *&v6[*(v3 + 44)] = 256;
  type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  v12 = sub_1E37C192C();
  (*(*v12 + 248))();

  sub_1E4203DA4();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  sub_1E3741EA0(v6, v0, &qword_1ECF29D98, &qword_1E429CA30);
  memcpy((v0 + *(v22 + 36)), v23, 0x70uLL);
  sub_1E37588FC();
  v13 = sub_1E4202AB4();
  KeyPath = swift_getKeyPath();
  sub_1E3741EA0(v0, v11, &qword_1ECF30F28, &unk_1E42B3E50);
  v15 = &v11[*(v8 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  LOBYTE(v13) = sub_1E4202754();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v11, v2, &qword_1ECF30F18, &qword_1E42B3E48);
  v16 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EF8, &qword_1E42B3E40) + 36));
  *v16 = v13;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3A1B1A4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_5();
  v5 = type metadata accessor for SportsCanonicalBannerAccessoryView(v4);
  if (!*(a2 + *(v5 + 60)))
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v5);

  OUTLINED_FUNCTION_40_21();
  sub_1E3A173B0(v6, v7, v8);
  v15[1] = v9;
  v13 = v2;
  v14 = 0;
  v10 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  sub_1E374AD40(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6340]);
  sub_1E38D2054(&v13, v15);

  return v15[0];
}

uint64_t sub_1E3A1B2C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E70, &unk_1E42B3CB0);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_7();
  sub_1E3A182D8();
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    sub_1E3A19434(v20);
    nullsub_1();
    memcpy(v21, v20, 0xC1uLL);
  }

  else
  {
    sub_1E3A200E4(v21);
  }

  OUTLINED_FUNCTION_164();
  sub_1E3743538(v8, v9, v10, &unk_1E42B3CB0);
  memcpy(v18, v21, sizeof(v18));
  OUTLINED_FUNCTION_40_21();
  sub_1E3743538(v11, v12, v13, &unk_1E42B3CB0);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F70, &qword_1E42B3EB8) + 48);
  memcpy(v19, v18, 0xC1uLL);
  memcpy((a1 + v14), v18, 0xC1uLL);
  sub_1E3743538(v19, v20, &qword_1ECF30F78, &unk_1E42B3EC0);
  sub_1E325F69C(v1, &qword_1ECF30E70);
  memcpy(v20, v18, 0xC1uLL);
  sub_1E325F69C(v20, &qword_1ECF30F78);
  v15 = OUTLINED_FUNCTION_67_0();
  return sub_1E325F69C(v15, v16);
}

uint64_t sub_1E3A1B4AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3743538(*a1, a2, &qword_1ECF30EF0, &qword_1E42B3E38);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F68, &qword_1E42B3EB0);
  sub_1E3743538(a1[1], a2 + v4[12], &qword_1ECF2F9A8, &qword_1E42AF320);
  sub_1E3743538(a1[2], a2 + v4[16], &qword_1ECF30EE0, &unk_1E42B3E20);
  v5 = (a2 + v4[20]);
  v7 = a1[3];
  v6 = a1[4];
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  *v5 = *v7;
  v5[1] = v9;
  v5[2] = v10;
  sub_1E3743538(v6, a2 + v4[24], &qword_1ECF30EC8, &qword_1E42B3E08);
  v11 = v4[28];
  v12 = a1[5];
  memcpy(__dst, v12, 0xF1uLL);
  memmove((a2 + v11), v12, 0xF1uLL);
  sub_1E3A20090(v8);
  return sub_1E3743538(__dst, &v14, &qword_1ECF30F50, &qword_1E42B3E68);
}

void sub_1E3A1B5F0()
{
  OUTLINED_FUNCTION_93();
  v46 = v1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_2();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for ScaledBaselineRelativeSpacer(0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  if (sub_1E3C27528(v18, v19))
  {
    OUTLINED_FUNCTION_30();
    (*(v20 + 152))(&v47);

    if (v48)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v47;
    }
  }

  else
  {
    v21 = 0.0;
  }

  sub_1E40E4CD4(v17, v21);
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v22 = sub_1E4202754();
  v23 = v22;
  if (sub_1E3C27528(v22, v24) && (OUTLINED_FUNCTION_30(), (*(v25 + 152))(&v49), , (v50 & 1) == 0))
  {
    sub_1E4200A54();
    v26 = 0;
    *(&v28 + 1) = v27;
    *(&v30 + 1) = v29;
    v42 = v28;
    v43 = v30;
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v26 = 1;
  }

  v31 = OUTLINED_FUNCTION_159();
  v32(v31);
  v33 = &v6[*(v44 + 36)];
  *v33 = v23;
  v34 = v43;
  *(v33 + 24) = v42;
  *(v33 + 8) = v34;
  v33[40] = v26;
  sub_1E3741EA0(v6, v9, &qword_1ECF28CC0, &qword_1E4298440);
  sub_1E3A1FE98(v17, v14, type metadata accessor for ScaledBaselineRelativeSpacer);
  OUTLINED_FUNCTION_59_1();
  sub_1E3743538(v35, v36, v37, &qword_1E4298440);
  v38 = v46;
  sub_1E3A1FE98(v14, v46, type metadata accessor for ScaledBaselineRelativeSpacer);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F60, &qword_1E42B3EA8);
  sub_1E3743538(v0, v38 + *(v39 + 48), &qword_1ECF28CC0, &qword_1E4298440);
  v40 = OUTLINED_FUNCTION_11_6();
  sub_1E325F69C(v40, v41);
  sub_1E3A1FEF4();
  sub_1E325F69C(v0, &qword_1ECF28CC0);
  sub_1E3A1FEF4();
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3A1B960()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v31[1] = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v31[0] = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v16 = sub_1E4206A04();
  OUTLINED_FUNCTION_1_118();
  sub_1E3A1FE98(v1, v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_0_114();
  sub_1E3A1FE3C(v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18, v21);
  v32[4] = sub_1E3A1FA8C;
  v32[5] = v19;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v32[2] = v22;
  v32[3] = &block_descriptor_42;
  v23 = _Block_copy(v32);

  sub_1E4203FE4();
  v32[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_23_39();
  sub_1E3A17238(v24, v25, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_47();
  sub_1E374AD40(v26, v27, &qword_1E429B000, v28);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v12, v6, v23);
  _Block_release(v23);

  v29 = OUTLINED_FUNCTION_11_6();
  v30(v29);
  (*(v8 + 8))(v12, v31[0]);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A1BC80(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_1();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1E3A1BCB8()
{

  v0 = OUTLINED_FUNCTION_35_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3A1BCE8()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F80, &qword_1E42B3ED0);
  OUTLINED_FUNCTION_0_10();
  v45 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_50_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F88, &qword_1E42B3ED8);
  OUTLINED_FUNCTION_0_10();
  v47 = v11;
  v48 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F90, &qword_1E42B3EE0);
  OUTLINED_FUNCTION_0_10();
  v51 = v16;
  v52 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v50 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v53 = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CD0];
  v49 = v1 + 16;
  v24 = *v3;
  v23 = *(v3 + 8);
  v26 = *(v3 + 16);
  v25 = *(v3 + 24);
  v27 = objc_allocWithZone(MEMORY[0x1E698C8C0]);

  v28 = sub_1E3A1E654(v24, v23, v26, v25);
  [v28 setStyle_];
  sub_1E3280A90(0, &qword_1ECF30F98, 0x1E698C8B8);
  v44 = sub_1E3A1C340(0, 0, 2);
  [v28 addButtonAction_];
  sub_1E3A1C3BC(0xD000000000000010, 0x80000001E426CC30, v22);
  v29 = sub_1E41FE414();
  v30 = 0;
  if (__swift_getEnumTagSinglePayload(v22, 1, v29) != 1)
  {
    v30 = sub_1E41FE364();
    (*(*(v29 - 8) + 8))(v22, v29);
  }

  [v28 setIconURL_];

  sub_1E41FFB04();
  swift_allocObject();
  v31 = v28;
  *(v53 + 24) = sub_1E41FFAF4();
  if (*(v3 + 64))
  {
    v32 = 0.5;
    if ((*(v3 + 80) & 1) == 0)
    {
      v32 = *(v3 + 72);
    }

    v33 = objc_allocWithZone(MEMORY[0x1E698CC78]);

    [v33 initWithArrowDirection:0 relativeArrowOffset:v32];
    sub_1E41FFAE4();
  }

  sub_1E41FFB14();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v34 = sub_1E4206A04();
  v54[0] = v34;
  sub_1E42069A4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_1E374AD40(&qword_1ECF30FA0, &qword_1ECF30F80, &qword_1E42B3ED0, MEMORY[0x1E695C068]);
  sub_1E3746800();
  v39 = v46;
  sub_1E42007D4();
  sub_1E325F69C(v7, &unk_1ECF2D2B0);

  (*(v45 + 8))(v0, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30FA8, &qword_1E42B3EE8);
  sub_1E374AD40(&qword_1ECF30FB0, &qword_1ECF30F88, &qword_1E42B3ED8, MEMORY[0x1E695BE98]);
  v40 = v50;
  v41 = v48;
  sub_1E42006C4();
  (*(v47 + 8))(v14, v41);
  v42 = swift_allocObject();
  memcpy((v42 + 16), v3, 0x51uLL);
  sub_1E3A1EECC(v3, v54);
  sub_1E374AD40(&qword_1ECF30FB8, &qword_1ECF30F90, &qword_1E42B3EE0, MEMORY[0x1E695BC80]);
  v43 = v52;
  sub_1E4200844();

  (*(v51 + 8))(v40, v43);
  OUTLINED_FUNCTION_11_3(v49, v54);
  sub_1E42004C4();
  swift_endAccess();

  sub_1E3A20100(v3);

  OUTLINED_FUNCTION_54_0();
}

id sub_1E3A1C340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() actionWithTitle:v4 style:a3];

  return v5;
}

uint64_t sub_1E3A1C3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1E42074B4();

  strcpy(v14, "systemimage://");
  HIBYTE(v14[1]) = -18;
  MEMORY[0x1E69109E0](a1, a2);

  sub_1E41FE404();

  v10 = sub_1E41FE414();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    sub_1E325F69C(v9, &unk_1ECF363C0);
    v11 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_164();
    v12();
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v11, 1, v10);
}

id sub_1E3A1C530@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_1E3A2013C(v2, v3);
}

uint64_t sub_1E3A1C548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (*(a1 + 8) == 1)
  {
    v11 = *a1;
    v12 = sub_1E3E37F30();
    (*(v6 + 16))(v10, v12, v4);
    v13 = v11;
    v14 = sub_1E41FFC94();
    v15 = sub_1E4206814();
    sub_1E3A20130(v11);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1E323F000, v14, v15, "BubbleTipModel $selection publisher failed: %@", v16, 0xCu);
      sub_1E325F69C(v17, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    return (*(v6 + 8))(v10, v4);
  }

  else
  {
    v21 = (*(a2 + 48))();
    return (*(a2 + 32))(v21);
  }
}

uint64_t sub_1E3A1C71C()
{

  v0 = OUTLINED_FUNCTION_35_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3A1C754()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E38, &qword_1E42B3938);
  sub_1E42038F4();

  return sub_1E41FFAD4();
}

void sub_1E3A1CA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EA8, &unk_1E42B3DC8);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &a9 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &a9 - v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_19_7();
  if (v27)
  {
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98, &qword_1E429CA30);
    *&v42[*(v44 + 36)] = 256;
    v45 = v42;
    v46 = 0;
  }

  else
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98, &qword_1E429CA30);
    v45 = v42;
    v46 = 1;
  }

  __swift_storeEnumTagSinglePayload(v45, v46, 1, v44);
  sub_1E3741EA0(v42, v21, &qword_1ECF30EA8, &unk_1E42B3DC8);
  if (v25)
  {
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98, &qword_1E429CA30);
    *&v36[*(v47 + 36)] = 256;
    v48 = v36;
    v49 = 0;
  }

  else
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98, &qword_1E429CA30);
    v48 = v36;
    v49 = 1;
  }

  __swift_storeEnumTagSinglePayload(v48, v49, 1, v47);
  OUTLINED_FUNCTION_49_5();
  sub_1E3741EA0(v50, v51, v52, v53);
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v54, v55, v56, v57);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v58, v59, v60, v61);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v62, v63, v64, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EB0, &unk_1E42B3DD8);
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v66, v67, v68, v69);
  OUTLINED_FUNCTION_83_4(v39);
  OUTLINED_FUNCTION_83_4(v21);
  OUTLINED_FUNCTION_83_4(v32);
  OUTLINED_FUNCTION_83_4(v20);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A1CCB0()
{
  OUTLINED_FUNCTION_21_5();
  v157 = v0;
  v3 = v2;
  v149 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v148 = v7;
  OUTLINED_FUNCTION_138();
  v154 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v168 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v153 = v11 - v10;
  OUTLINED_FUNCTION_138();
  v12 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v143 = v16 - v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v162 = v19;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E40, &unk_1E42D8890);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v166 = v21;
  OUTLINED_FUNCTION_138();
  v22 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E48, &qword_1E42B3950);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_26_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E50, &unk_1E42B3958);
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v143 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18, qword_1E42AD5E0);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4_6();
  v147 = v37 - v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  v156 = &v143 - v40;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v12);
  (*(v24 + 16))(v34, v149, v22);
  v145 = v34;
  sub_1E3743538(v34, v31, &qword_1ECF30E50, &unk_1E42B3958);
  v44 = OUTLINED_FUNCTION_33_11();
  v45 = v22;
  v46(v44);
  OUTLINED_FUNCTION_25_44();
  sub_1E3A17238(v47, &qword_1ECF30E50, MEMORY[0x1E697E3D0]);
  sub_1E4206194();
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58, &unk_1E42DD790) + 36);
  v49 = OUTLINED_FUNCTION_28_34(&qword_1EE289D88);
  v50 = 0;
  v158 = 0;
  v163 = 0;
  v167 = (v14 + 16);
  v144 = v14;
  v164 = v14 + 32;
  v150 = *MEMORY[0x1E697E6C0];
  v151 = v168 + 104;
  v152 = v168 + 8;
  v51 = MEMORY[0x1E69E7CC0];
  v155 = v12;
  v160 = v48;
  v159 = v49;
  while (1)
  {
    sub_1E4206724();
    if (*(v1 + v48) == v180)
    {
      break;
    }

    v52 = sub_1E4206764();
    v53 = *v167;
    v54 = v12;
    v55 = v162;
    (*v167)(v162);
    v52(&v180, 0);
    v56 = v50;
    v57 = v1;
    v58 = v45;
    sub_1E4206734();
    v59 = *(v161 + 48);
    v60 = v166;
    *v166 = v56;
    OUTLINED_FUNCTION_36_5();
    v61 = v55;
    v12 = v54;
    v63 = v62(&v60[v59], v61, v54);
    v168 = v56;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      return;
    }

    sub_1E3A1F0B8(v63, v64, v65);
    sub_1E4200F44();
    if (v180 == 1)
    {
      v66 = v156;
      sub_1E325F69C(v156, &qword_1ECF2ED18);
      (v53)(v66, &v60[v59], v54);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v54);
      v70 = v60;
      v45 = v58;
      v1 = v57;
      v48 = v160;
      v71 = v168;
      goto LABEL_30;
    }

    v72 = type metadata accessor for SportsAccessoryButtonLayout(0);
    v73 = (*(v157 + *(v72 + 36)))(v168);
    v45 = v58;
    if (!v73)
    {
      v180 = 0u;
      v181 = 0u;
      v74 = v163;
      v1 = v57;
LABEL_14:
      sub_1E325F69C(&v180, &unk_1ECF296E0);
      v165 = 0;
      v77 = 0;
      goto LABEL_15;
    }

    LOBYTE(v175) = 1;
    (*(*v73 + 776))(&v180, &v175, &unk_1F5D5D0A8, &off_1F5D5C758);

    v74 = v163;
    v1 = v57;
    if (!*(&v181 + 1))
    {
      goto LABEL_14;
    }

    v75 = swift_dynamicCast();
    v76 = *&v175;
    if (!v75)
    {
      v76 = 0;
    }

    v165 = v76;
    if (v75)
    {
      v77 = *&v176;
    }

    else
    {
      v77 = 0;
    }

LABEL_15:
    v48 = v160;
    if (!v51[2])
    {
      goto LABEL_17;
    }

    v78 = sub_1E41494A8(v158, v74);

    if (v78)
    {
      goto LABEL_17;
    }

    if (v74)
    {
      if (!v77 || (v158 == v165 ? (v87 = v74 == v77) : (v87 = 0), !v87 && (sub_1E42079A4() & 1) == 0))
      {
LABEL_17:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1E3A1E6F4(0, v51[2] + 1, 1, v51);
        }

        v80 = v51[2];
        v79 = v51[3];
        if (v80 >= v79 >> 1)
        {
          v51 = sub_1E3A1E6F4((v79 > 1), v80 + 1, 1, v51);
        }

        v51[2] = v80 + 1;
        v51[v80 + 4] = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }
    }

    else if (v77)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_36_5();
    v88(v153, v150, v154);
    OUTLINED_FUNCTION_22_39();
    sub_1E3A17238(&qword_1EE289CD0, v89, MEMORY[0x1E697E748]);
    OUTLINED_FUNCTION_164();
    v90 = sub_1E4205E14();
    OUTLINED_FUNCTION_36_5();
    v91 = OUTLINED_FUNCTION_67_0();
    v92(v91);
    if ((v90 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_22:

    v81 = v51[2];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (!v81)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v51 = sub_1E3A1E824(v51);
      if (!v81)
      {
        goto LABEL_72;
      }
    }

    if (v81 > v51[2])
    {
      goto LABEL_73;
    }

    v82 = v51 + 3;
    v83 = v51[v81 + 3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[v81 + 3] = v83;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v93 = *(v83 + 2);

      v82[v81] = sub_1E3997AA8(0, v93 + 1, 1, v83);

      v83 = v82[v81];
    }

    v86 = *(v83 + 2);
    v85 = *(v83 + 3);
    if (v86 >= v85 >> 1)
    {
      v83 = sub_1E3997AA8((v85 > 1), v86 + 1, 1, v83);
      v82[v81] = v83;
    }

    *(v83 + 2) = v86 + 1;
    v71 = v168;
    *&v83[8 * v86 + 32] = v168;
    v158 = v165;
    v163 = v77;
    v12 = v155;
    v70 = v166;
LABEL_30:
    sub_1E325F69C(v70, &qword_1ECF30E40);
    v50 = v71 + 1;
  }

  v94 = *(v146 + 36);
  sub_1E325F69C(v145, &qword_1ECF30E50);
  *(v1 + v94) = v50;
  sub_1E325F69C(v1, &qword_1ECF30E48);
  v95 = v157;
  OUTLINED_FUNCTION_111();
  (*(v96 + 152))(&v175);
  if ((v179 & 1) == 0)
  {
    v97 = v175;
    v98 = v176;
    v99 = v177;
    v100 = v178;
    v101 = *(v95 + 16);
    if (!v101)
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_8();
    (*(v102 + 176))(&v180);
    if (v182)
    {
      v101 = 0;
LABEL_48:
      v103 = 1;
    }

    else
    {
      v103 = 0;
      v101 = sub_1E3952BE0(*&v180, *(&v180 + 1), *&v181, *(&v181 + 1));
    }

    v104 = sub_1E3952BE0(v97, v98, v99, v100);
    v3 = v3 - sub_1E4149E0C(v101, v103, v104);
  }

  OUTLINED_FUNCTION_111();
  v106 = COERCE_DOUBLE((*(v105 + 248))());
  if (v107)
  {
    v108 = INFINITY;
  }

  else
  {
    v108 = v106;
  }

  OUTLINED_FUNCTION_111();
  v173 = (*(v109 + 200))();
  v174 = v110 & 1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  sub_1E3A1F10C(v111, v112, v113);
  sub_1E4149AF0(v111, &v171);
  v114 = v171;
  if (v172)
  {
    v114 = v3;
  }

  if (v114 >= v108)
  {
    v114 = v108;
  }

  v173 = *&v114;
  v115 = v51[2];
  v116 = 4;
  while (v115)
  {
    v117 = *(v51[v116++] + 16);
    --v115;
    if (v117 >= 2)
    {

      goto LABEL_63;
    }
  }

  type metadata accessor for SportsAccessoryButtonLayout(0);
  OUTLINED_FUNCTION_36_5();
  v118 = v153;
  v119 = v154;
  v120(v153);
  OUTLINED_FUNCTION_22_39();
  sub_1E3A17238(v121, v122, MEMORY[0x1E697E748]);

  v123 = sub_1E4205E14();
  OUTLINED_FUNCTION_36_5();
  v124(v118, v119);
  if ((v123 & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_63:
  if (v3 >= v108)
  {
    *&v125 = v108;
  }

  else
  {
    *&v125 = v3;
  }

  v173 = v125;
LABEL_67:
  type metadata accessor for SportsAccessoryButtonLayout(0);
  OUTLINED_FUNCTION_111();
  v127 = (*(v126 + 328))();
  v129 = v128;
  v130 = *MEMORY[0x1E6980F00];
  v131 = sub_1E4202A94();
  OUTLINED_FUNCTION_2();
  v133 = v148;
  (*(v132 + 104))(v148, v130, v131);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v131);
  v137 = v157;
  sub_1E405F150(v127, v129 & 1);
  v138 = sub_1E325F69C(v133, &qword_1ECF2DEE8);
  v171 = 0.0;
  v139 = MEMORY[0x1EEE9AC00](v138).n128_u64[0];
  *(&v143 - 6) = &v173;
  *(&v143 - 5) = v137;
  *(&v143 - 4) = v149;
  *(&v143 - 3) = &v171;
  *(&v143 - 2) = v139;
  sub_1E3A1DBD8(sub_1E3A1F160, (&v143 - 8), v51);
  v140 = v147;
  sub_1E3743538(v156, v147, &qword_1ECF2ED18, qword_1E42AD5E0);
  if (__swift_getEnumTagSinglePayload(v140, 1, v12) == 1)
  {
    sub_1E325F69C(v140, &qword_1ECF2ED18);
  }

  else
  {
    v141 = v144;
    v142 = v143;
    (*(v144 + 32))(v143, v140, v12);
    v170 = 0;
    v169 = 1;
    sub_1E4200EF4();
    (*(v141 + 8))(v142, v12);
  }

  sub_1E325F69C(v156, &qword_1ECF2ED18);

  OUTLINED_FUNCTION_20_0();
}

void (*sub_1E3A1DBD8(void (*result)(uint64_t *), uint64_t a2, uint64_t a3))(uint64_t *)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;

      v4(&v7);
      if (v3)
      {
        break;
      }

      ++v6;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1E3A1DC6C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4200F34();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v5 + 16);
  if (v10)
  {
    v11 = *v5 + 32;
    v12 = (v7 + 8);
    v13 = MEMORY[0x1E69E7DE0];
    do
    {
      v11 += 8;
      sub_1E4201054();
      LOBYTE(v22) = 0;
      LOBYTE(v20) = 1;
      sub_1E4200EF4();
      v15 = v14;
      v16 = (*v12)(v9, v6);
      v24[0] = v1;
      v22 = v15;
      v23 = 0;
      v20 = *v3;
      v21 = 0;
      v19 = sub_1E3793CAC(v16, v17, v18);
      max<A>(_:_:_:)(v24, &v22, &v20, v13, v19);
      *v3 = v24[1];
      --v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_54_0();
}

double sub_1E3A1DE08(uint64_t a1, char a2)
{
  v2 = 0.0;
  if ((a2 & 1) == 0)
  {
    v2 = *&a1;
    sub_1E3A1CCB0();
  }

  return v2;
}

void sub_1E3A1DE78(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  v70 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58, &unk_1E42DD790);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v81 = v15;
  OUTLINED_FUNCTION_138();
  sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v19);
  v79 = v64 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v29 = v64 - v28;
  if ((a2 & 1) == 0)
  {
    v67 = v13;
    v64[2] = v27;
    v78 = v26;
    v65 = v25;
    v85 = v24;
    v82 = a5;
    sub_1E3A1CCB0();
    v31 = v30;
    v69 = v32;
    v64[1] = v33;
    v34 = 0;
    v35 = 0;
    v83 = *(v30 + 16);
    v66 = v36;
    v77 = v36;
    v84 = (v17 + 8);
    v80 = v8;
    v68 = v5;
    while (v83 != v35)
    {
      if (v35 >= *(v31 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v37 = *(v31 + 8 * v35 + 32);
      v38 = *v5;
      v39 = *(v37 + 16);

      v88.origin.x = OUTLINED_FUNCTION_2_0();
      Width = CGRectGetWidth(v88);
      v41 = *(v37 + 16);
      if (v41)
      {
        v42 = 0;
        v43 = v5[1];
        v76 = (v69 - v38 * (v39 - 1)) / v39;
        v74 = (Width - v69) * 0.5;
        v73 = (v66 + v43) * v35;
        v75 = v76;
        v72 = v38 + v76;
        ++v35;
        do
        {
          v44 = sub_1E4201054();
          sub_1E3A1F0B8(v44, v45, v46);
          sub_1E4200F44();
          if ((v86[0] & 1) == 0)
          {
            v86[0] = 0;
            v87 = 0;
            sub_1E4200EF4();
            v89.origin.x = OUTLINED_FUNCTION_2_0();
            CGRectGetMinX(v89);
            v90.origin.x = OUTLINED_FUNCTION_2_0();
            CGRectGetMinY(v90);
            if (__OFADD__(v34++, 1))
            {
              goto LABEL_21;
            }

            sub_1E4203F04();
            OUTLINED_FUNCTION_53_22();
            sub_1E4200F04();
          }

          ++v42;
          (*v84)(v29, v85);
        }

        while (v41 != v42);

        v5 = v68;
        v8 = v80;
      }

      else
      {

        ++v35;
      }
    }

    (*(v70 + 16))(v67, v82, v8);
    OUTLINED_FUNCTION_25_44();
    sub_1E3A17238(v48, v35, MEMORY[0x1E697E3D0]);
    v49 = v81;
    sub_1E4206194();
    v50 = *(v71 + 36);
    OUTLINED_FUNCTION_28_34(&qword_1EE289D88);
    v51 = (v17 + 16);
    v52 = (v17 + 32);
    v53 = v85;
    while (1)
    {
      sub_1E4206724();
      if (*(v49 + v50) == *v86)
      {
        sub_1E325F69C(v49, &qword_1ECF30E58);
        return;
      }

      v54 = sub_1E4206764();
      v55 = v79;
      (*v51)(v79);
      v54(v86, 0);
      sub_1E4206734();
      v56 = *v52;
      v57 = v78;
      v58 = (*v52)(v78, v55, v53);
      sub_1E3A1F0B8(v58, v59, v60);
      sub_1E4200F44();
      if (v86[0] == 1)
      {
        break;
      }

      (*v84)(v57, v53);
      v49 = v81;
    }

    sub_1E325F69C(v81, &qword_1ECF30E58);
    v61 = OUTLINED_FUNCTION_32_0();
    v56(v61);
    v62 = v65;
    v63 = OUTLINED_FUNCTION_11_6();
    v56(v63);
    v91.origin.x = OUTLINED_FUNCTION_2_0();
    CGRectGetWidth(v91);
    OUTLINED_FUNCTION_53_22();
    OUTLINED_FUNCTION_82_7();
    sub_1E4200EF4();
    v92.origin.x = OUTLINED_FUNCTION_2_0();
    CGRectGetMinX(v92);
    sub_1E4203F04();
    OUTLINED_FUNCTION_53_22();
    OUTLINED_FUNCTION_82_7();
    sub_1E4200F04();
    (*v84)(v62, v53);
  }
}

void (*sub_1E3A1E5DC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_59_1();
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

id sub_1E3A1E654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_1E4205ED4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_1E4205ED4();

LABEL_6:
  v8 = [v4 initWithTitle:v6 message:v7];

  return v8;
}

void *sub_1E3A1E6F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EB8, &qword_1E42B3DE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32EC0, &unk_1E42B3DF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3A1E838()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();
  sub_1E3A18620();
}

unint64_t sub_1E3A1E89C()
{
  result = qword_1ECF30D98;
  if (!qword_1ECF30D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D90, &qword_1E42B3880);
    sub_1E3A1E954();
    sub_1E3A1F924(&qword_1ECF30DD8, &qword_1ECF30DE0, &qword_1E42B38A8, sub_1E37ADF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30D98);
  }

  return result;
}

unint64_t sub_1E3A1E954()
{
  result = qword_1ECF30DA0;
  if (!qword_1ECF30DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30DA8, &qword_1E42B3888);
    sub_1E3A1E9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30DA0);
  }

  return result;
}

unint64_t sub_1E3A1E9E0()
{
  result = qword_1ECF30DB0;
  if (!qword_1ECF30DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30DB8, &qword_1E42B3890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30DC0, &unk_1E42B3898);
    sub_1E3A1EAD4();
    swift_getOpaqueTypeConformance2();
    sub_1E374AD40(&qword_1EE288760, &unk_1ECF2A928, &unk_1E429E7C0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30DB0);
  }

  return result;
}

unint64_t sub_1E3A1EAD4()
{
  result = qword_1ECF30DC8;
  if (!qword_1ECF30DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30DC0, &unk_1E42B3898);
    sub_1E3A17238(&qword_1ECF30DD0, type metadata accessor for FollowLiveUpdatesButton, &unk_1E429E608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30DC8);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(type metadata accessor for SportsCanonicalBannerAccessoryView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1E3A1ED34()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_6_78();
  if (((*(v0 + 232))() & 1) == 0)
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 360))();
  }

  sub_1E3A18DC4();
}

uint64_t sub_1E3A1EDD8()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_6_78();
  return (*(v0 + 368))();
}

uint64_t sub_1E3A1EE78()
{
  v1 = sub_1E395AC48(*(v0 + 16)) & 1;

  return sub_1E395A698(v1);
}

void sub_1E3A1EF04()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();

  sub_1E3A1B960();
}

unint64_t sub_1E3A1EF54()
{
  result = qword_1ECF30E20;
  if (!qword_1ECF30E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30E10, &qword_1E42B3920);
    sub_1E3A1EFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30E20);
  }

  return result;
}

unint64_t sub_1E3A1EFE0()
{
  result = qword_1ECF30E28;
  if (!qword_1ECF30E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30E08, &qword_1E42B3918);
    sub_1E374AD40(&qword_1ECF30E30, &qword_1ECF30E00, &qword_1E42B3910, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30E28);
  }

  return result;
}

unint64_t sub_1E3A1F0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF52DE8[0];
  if (!qword_1ECF52DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF52DE8);
  }

  return result;
}

unint64_t sub_1E3A1F10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE28A3F0;
  if (!qword_1EE28A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A3F0);
  }

  return result;
}

void sub_1E3A1F214(uint64_t a1)
{
  OUTLINED_FUNCTION_29_37(a1, &qword_1EE289F50, MEMORY[0x1E69E6370]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_29_37(v1 - 8, &qword_1EE28A0A8, MEMORY[0x1E69E7DE0]);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E3A1F34C(uint64_t a1)
{
  sub_1E3A1F62C(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  OUTLINED_FUNCTION_39_6();
  if (!(!v3 & v2))
  {
    sub_1E3867038(319);
    OUTLINED_FUNCTION_39_6();
    if (!(!v3 & v2))
    {
      sub_1E3A1F598(319);
      OUTLINED_FUNCTION_39_6();
      if (!(!v3 & v2))
      {
        sub_1E3A1F62C(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
        OUTLINED_FUNCTION_39_6();
        if (!(!v3 & v2))
        {
          sub_1E3A1F62C(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
          if (v5 > 0x3F)
          {
            return v4;
          }

          else
          {
            type metadata accessor for LegacySportsCanonicalBannerViewLayout();
            OUTLINED_FUNCTION_39_6();
            if (!(!v3 & v2))
            {
              type metadata accessor for SportsCanonicalBannerProxy(319);
              OUTLINED_FUNCTION_39_6();
              if (!(!v3 & v2))
              {
                sub_1E3A1F62C(319, &qword_1EE288650, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
                OUTLINED_FUNCTION_39_6();
                if (!(!v3 & v2))
                {
                  type metadata accessor for SportsCanonicalBannerAccessoryView.ContainerRef();
                  sub_1E3A1F6B4(319);
                  OUTLINED_FUNCTION_39_6();
                  if (!(!v3 & v2))
                  {
                    sub_1E3A203DC(319, &qword_1EE288668, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                    OUTLINED_FUNCTION_39_6();
                    if (!(!v3 & v2))
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1E3A1F598(uint64_t a1)
{
  if (!qword_1ECF30E68)
  {
    type metadata accessor for SportsCanonicalBannerAccessoryViewModel(255);
    sub_1E3A17238(&qword_1ECF30D80, type metadata accessor for SportsCanonicalBannerAccessoryViewModel, &unk_1E42B3968);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF30E68);
    }
  }
}

void sub_1E3A1F62C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E3A1F6B4(uint64_t a1)
{
  if (!qword_1EE23B530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C790, &qword_1E42996A0);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE23B530);
    }
  }
}

uint64_t sub_1E3A1F718(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3A1F768(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3A1F7A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 81) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

void sub_1E3A1F830(uint64_t a1)
{
  sub_1E3A1F62C(319, qword_1EE286B30, type metadata accessor for ViewLayout, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ButtonLayout();
    if (v2 <= 0x3F)
    {
      sub_1E42012F4();
      if (v3 <= 0x3F)
      {
        sub_1E37E0144();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E3A1F924(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3A1F9D4()
{
  result = qword_1ECF30E98;
  if (!qword_1ECF30E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30E88, &qword_1E42B3DB8);
    sub_1E374AD40(&qword_1ECF30EA0, &qword_1ECF30E80, &qword_1E42B3DB0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30E98);
  }

  return result;
}

uint64_t sub_1E3A1FA8C()
{
  v1 = type metadata accessor for SportsCanonicalBannerAccessoryView(0) - 8;
  OUTLINED_FUNCTION_135_0();
  v3 = *(v0 + v2 + *(v1 + 64));
  OUTLINED_FUNCTION_5_0(v3 + 16, v7);
  v4 = *(v3 + 16);

  v4(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  return sub_1E4203904();
}

unint64_t sub_1E3A1FB68()
{
  result = qword_1ECF30F08;
  if (!qword_1ECF30F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30EF8, &qword_1E42B3E40);
    sub_1E3A1FBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30F08);
  }

  return result;
}

unint64_t sub_1E3A1FBF4()
{
  result = qword_1ECF30F10;
  if (!qword_1ECF30F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30F18, &qword_1E42B3E48);
    sub_1E3A1FCAC();
    sub_1E374AD40(&qword_1EE2887A0, &qword_1ECF2A208, &unk_1E42BB350, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30F10);
  }

  return result;
}

unint64_t sub_1E3A1FCAC()
{
  result = qword_1ECF30F20;
  if (!qword_1ECF30F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30F28, &unk_1E42B3E50);
    sub_1E3A1FD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30F20);
  }

  return result;
}

unint64_t sub_1E3A1FD38()
{
  result = qword_1EE289CA0;
  if (!qword_1EE289CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29D98, &qword_1E429CA30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CA0);
  }

  return result;
}

uint64_t sub_1E3A1FDDC(uint64_t a1)
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();

  return sub_1E3A1B1A4(a1, v1 + v3);
}

uint64_t sub_1E3A1FE3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3A1FE98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3A1FEF4()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1E3A1FF48()
{
  result = qword_1ECF30F30;
  if (!qword_1ECF30F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30ED8, &qword_1E42B3E18);
    sub_1E374AD40(&qword_1ECF30F38, &qword_1ECF30ED0, &qword_1E42B3E10, MEMORY[0x1E697DDD0]);
    sub_1E374AD40(&qword_1ECF30F40, &unk_1ECF30F48, &unk_1E42B3E60, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30F30);
  }

  return result;
}

double sub_1E3A2002C(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1E3A20090(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

id sub_1E3A2013C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1E3A20154(result);
  }

  return result;
}

void sub_1E3A20160()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();
  sub_1E3A18DC4();
}

uint64_t sub_1E3A201AC()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_6_78();
  result = (*(v1 + 352))();
  if (result)
  {
    result = (*(*v0 + 232))();
    if ((result & 1) == 0)
    {
      return (*(*v0 + 360))();
    }
  }

  return result;
}

uint64_t sub_1E3A20288()
{
  v1 = *(v0 + 16);
  v2 = **(v1 + *(type metadata accessor for SportsCanonicalBannerAccessoryView(0) + 24) + 8);
  return (*(v2 + 336))(0.0);
}

double sub_1E3A20300()
{
  v1 = type metadata accessor for SportsCanonicalBannerAccessoryView(0) - 8;
  OUTLINED_FUNCTION_135_0();
  v3 = v0 + v2;
  OUTLINED_FUNCTION_6_78();
  (*(v4 + 344))();
  v5 = *(v3 + *(v1 + 64));
  OUTLINED_FUNCTION_15_0(v5 + 16, v6);
  v7 = *(v5 + 16);

  v7(v8);

  return result;
}

void sub_1E3A203D0(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_1E3A203DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP06VideosB0E12onSizeChange7enabled_QrSb_ySo6CGSizeVctFQOyAA15ModifiedContentVyAJyAA6VStackVyAA05TupleC0VyAJyAJyAJyAJyAJyAD11TextFactoryO04makenC09viewModel15preferredLayout04textT5StateQrAD0ncR0C_AD0nT0CSgAD0ntV0OtFZQOy_Qo_AA06_FixedfT0VGAA010_FlexFrameT0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingT0VGSgAA31AccessibilityAttachmentModifierVG_AJyA0_A15_GSgAJyAA09_VariadicC0O4TreeVy_AA01_T4RootVyAD021SportsAccessoryButtonT0VGANyAA7ForEachVySaySi6offset_AD0cR0C7elementtGA36_AA012_ConditionalK0VyAJyAJyAcDE23accessibilityIdentifier3key8locationQrAD29SportsAccessibilityIdentifierV3KeyO_A45_8LocationOtFQOyAD23FollowLiveUpdatesButtonVSg_Qo_AA01_Z20KeyTransformModifierVySbGGAA25_AppearanceActionModifierVGAD19ButtonRepresentableVSgGGSg_AJyAJyAJyAJyAD7TooltipVA15_GAA14_OpacityEffectVGA59_GAA21_TraitWritingModifierVyAA01_T5TraitVyAD07TooltipT3Key33_F8BD00E7B2F013BF7477CF938F1CE3A0LLVGGGSgSgSgtGGA19_GAD027SportsBannerAccessoryDetailC0A79_LLVSgALyANyAD28ScaledBaselineRelativeSpacerV_A21_tGGSgAJyA85_A15_GSgtGGA5_GA15_G_Qo_HOTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_40_2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_83_4(uint64_t a1)
{

  return sub_1E325F69C(a1, v1);
}

id sub_1E3A204F8()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___valueLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___valueLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___valueLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() systemFontOfSize_];
    v6 = OUTLINED_FUNCTION_17_1();
    [v6 v7];

    [v4 setTextAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E3A205D4()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___descriptionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___descriptionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___descriptionLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v6 = [objc_opt_self() systemFontOfSize_];
    OUTLINED_FUNCTION_13_0(v6, sel_setFont_);

    type metadata accessor for MetricsCellPresentationUtilities();
    v7 = sub_1E3B625A8();
    OUTLINED_FUNCTION_13_0(v7, sel_setTextColor_);

    [v5 setTextAlignment_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E3A206D4()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___descriptionLabel) = 0;
  v6 = type metadata accessor for MetricsDataFieldStackView();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v6);
  sub_1E3A20810();

  return v4;
}

void sub_1E3A207A0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___descriptionLabel) = 0;
  OUTLINED_FUNCTION_4_97();
  __break(1u);
}

id sub_1E3A20810()
{
  [v0 setDistribution_];
  [v0 setAxis_];
  [v0 setSpacing_];
  v1 = sub_1E3A205D4();
  [v0 addArrangedSubview_];

  v2 = sub_1E3A204F8();
  [v0 addArrangedSubview_];

  return [v0 sizeToFit];
}

void sub_1E3A208C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E3A204F8();
  sub_1E390E98C(a1, a2, v8);

  v9 = sub_1E3A205D4();
  sub_1E390E98C(a3, a4, v9);
}

id sub_1E3A209D0()
{
  v1 = OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v6 = [objc_opt_self() systemFontOfSize_];
    OUTLINED_FUNCTION_13_0(v6, sel_setFont_);

    type metadata accessor for MetricsCellPresentationUtilities();
    v7 = sub_1E3B625A8();
    OUTLINED_FUNCTION_13_0(v7, sel_setTextColor_);

    [v5 setTextAlignment_];
    [v5 setAdjustsFontSizeToFitWidth_];
    [v5 setMinimumScaleFactor_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E3A20B10(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    type metadata accessor for MetricsDataFieldStackView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1E3A20B94(uint64_t a1)
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel);
  if (v3)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for MetricsEventCell();
  v5 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v4);

  v6 = v5;
  sub_1E3A20C80();

  return v6;
}

void sub_1E3A20C80()
{
  [v0 setAccessoryType_];
  v1 = [v0 contentView];
  v2 = sub_1E3A209D0();
  v3 = OUTLINED_FUNCTION_17_1();
  [v3 v4];

  v5 = [v0 contentView];
  v6 = sub_1E3A20AF8();
  v7 = OUTLINED_FUNCTION_17_1();
  [v7 v8];

  v9 = [v0 contentView];
  v10 = sub_1E3A20B04();
  v11 = OUTLINED_FUNCTION_17_1();
  [v11 v12];

  v13 = OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel;
  v14 = [*&v0[OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel] leadingAnchor];
  v15 = OUTLINED_FUNCTION_0_115();
  v16 = [v15 layoutMarginsGuide];

  v17 = [v16 &selRef_loadFairPlayStreamingKeyRequests_completion_ + 1];
  v18 = OUTLINED_FUNCTION_17_1();
  v20 = [v18 v19];

  OUTLINED_FUNCTION_5_95(v21, sel_setActive_);
  v22 = [*&v0[v13] topAnchor];
  v23 = OUTLINED_FUNCTION_0_115();
  v24 = OUTLINED_FUNCTION_6_79(v23);

  v25 = [v24 topAnchor];
  v26 = OUTLINED_FUNCTION_17_1();
  v28 = [v26 v27];

  OUTLINED_FUNCTION_2_11();
  v29 = [*&v0[v13] bottomAnchor];
  v30 = OUTLINED_FUNCTION_0_115();
  v31 = OUTLINED_FUNCTION_6_79(v30);

  v32 = [v31 &selRef_catchUpToLiveViewControllerWithIndex_playable_segments_metadataViewModels_nextToken_ + 5];
  v33 = OUTLINED_FUNCTION_17_1();
  v35 = [v33 v34];

  OUTLINED_FUNCTION_2_11();
  v36 = [*&v0[v13] widthAnchor];
  v37 = OUTLINED_FUNCTION_0_115();
  v38 = OUTLINED_FUNCTION_6_79(v37);

  v39 = [v38 &selRef_weakToWeakObjectsMapTable + 6];
  v40 = OUTLINED_FUNCTION_17_1();
  v42 = [v40 v41];

  OUTLINED_FUNCTION_2_11();
  v43 = OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___appearTimeView;
  v44 = [*&v0[OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___appearTimeView] trailingAnchor];
  v45 = OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___totalTimeView;
  v46 = [*&v0[OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___totalTimeView] leadingAnchor];
  v47 = OUTLINED_FUNCTION_17_1();
  v49 = [v47 v48];

  OUTLINED_FUNCTION_2_11();
  v50 = [*&v0[v43] topAnchor];
  v51 = OUTLINED_FUNCTION_0_115();
  v52 = OUTLINED_FUNCTION_6_79(v51);

  v53 = [v52 topAnchor];
  v54 = OUTLINED_FUNCTION_17_1();
  v56 = [v54 v55];

  OUTLINED_FUNCTION_2_11();
  v57 = [*&v0[v43] bottomAnchor];
  v58 = OUTLINED_FUNCTION_0_115();
  v59 = OUTLINED_FUNCTION_6_79(v58);

  v60 = [v59 bottomAnchor];
  v61 = OUTLINED_FUNCTION_17_1();
  v63 = [v61 v62];

  OUTLINED_FUNCTION_2_11();
  v64 = [*&v0[v45] widthAnchor];
  v65 = OUTLINED_FUNCTION_0_115();
  v66 = OUTLINED_FUNCTION_6_79(v65);

  v67 = [v66 widthAnchor];
  v68 = OUTLINED_FUNCTION_17_1();
  v70 = [v68 v69];

  OUTLINED_FUNCTION_2_11();
  v71 = [*&v0[v45] trailingAnchor];
  v72 = OUTLINED_FUNCTION_0_115();
  v73 = [v72 &selRef_configurationWithTextStyle_scale_ + 1];

  v74 = [v73 trailingAnchor];
  v75 = OUTLINED_FUNCTION_17_1();
  v77 = [v75 v76];

  OUTLINED_FUNCTION_5_95(v78, &selRef_setBookmarkTimestamp_);
  v79 = [*&v0[v45] topAnchor];
  v80 = OUTLINED_FUNCTION_0_115();
  v81 = [v80 &selRef_configurationWithTextStyle_scale_ + 1];

  v82 = [v81 topAnchor];
  v83 = OUTLINED_FUNCTION_17_1();
  v85 = [v83 v84];

  OUTLINED_FUNCTION_5_95(v86, &selRef_setBookmarkTimestamp_);
  v87 = [*&v0[v45] bottomAnchor];
  v88 = OUTLINED_FUNCTION_0_115();
  v89 = [v88 &selRef_configurationWithTextStyle_scale_ + 1];

  v90 = [v89 bottomAnchor];
  v91 = OUTLINED_FUNCTION_17_1();
  v93 = [v91 v92];

  OUTLINED_FUNCTION_5_95(v94, &selRef_setBookmarkTimestamp_);
  v95 = [*&v0[v45] widthAnchor];
  v96 = OUTLINED_FUNCTION_0_115();
  v97 = [v96 &selRef_configurationWithTextStyle_scale_ + 1];

  v98 = [v97 widthAnchor];
  v99 = [v44 constraintEqualToAnchor:v98 multiplier:0.25];

  [v99 &selRef:1 setBookmarkTimestamp:?];
}