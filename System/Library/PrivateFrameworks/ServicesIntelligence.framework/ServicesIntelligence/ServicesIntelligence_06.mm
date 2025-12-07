uint64_t sub_230D86FA8()
{
  v1 = *(v0 + 1184);
  *(v0 + 1168) = MEMORY[0x277D84FA0];
  *(v0 + 1360) = *(v1 + 16);
  *(v0 + 1861) = 40;
  v2 = swift_task_alloc();
  *(v0 + 1368) = v2;
  *v2 = v0;
  v2[1] = sub_230D87098;

  return static RequestContext.from(_:correlationID:)(v0 + 440, (v0 + 1861), 0, 0);
}

uint64_t sub_230D87098()
{

  return MEMORY[0x2822009F8](sub_230D871C0, 0, 0);
}

uint64_t sub_230D871C0()
{
  v1 = *(v0 + 440);
  *(v0 + 1865) = v1;
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  *(v0 + 1376) = v2;
  *(v0 + 1384) = v3;
  v4 = *(v0 + 464);
  *(v0 + 1866) = v4;
  v5 = *(v0 + 465);
  *(v0 + 1867) = v5;
  v6 = *(v0 + 472);
  *(v0 + 1392) = v6;
  *(v0 + 480) = v1;
  *(v0 + 488) = v2;
  *(v0 + 496) = v3;
  *(v0 + 504) = v4;
  *(v0 + 505) = v5;
  *(v0 + 512) = v6;
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v7 = qword_27DB5A438;
  *(v0 + 1400) = qword_27DB5A438;

  return MEMORY[0x2822009F8](sub_230D872F4, v7, 0);
}

uint64_t sub_230D872F4()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1384);
    v4 = *(v0 + 1376);
    v5 = *(v0 + 1865);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E808D0, v28);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(v4, v3, v28);
    *(v6 + 22) = 2080;
    v26 = 0x6C616E7265746E69;
    v27 = 0xE90000000000002ELL;
    v25 = v5;
    v8 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v8);

    v9 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v28);

    *(v6 + 24) = v9;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 1392);
  v11 = *(v0 + 1867);
  v12 = *(v0 + 1865);
  LOBYTE(v26) = *(v0 + 1866);
  BYTE1(v26) = v11;
  v27 = v10;
  v25 = 40;
  LOBYTE(v28[0]) = v12;

  v13 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v25, v28);

  if (v13)
  {
    sub_230E68950();
    *(v0 + 1408) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1480) = 0u;
    *(v0 + 1496) = 0u;
    *(v0 + 1512) = 0u;
    *(v0 + 1528) = 0u;
    *(v0 + 1544) = 0u;
    *(v0 + 1560) = 0u;
    *(v0 + 1576) = 0u;
    *(v0 + 1592) = 0u;
    *(v0 + 1608) = 0u;
    *(v0 + 1624) = 0u;
    *(v0 + 1640) = 0u;
    *(v0 + 1656) = 0u;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 0u;
    *(v0 + 1720) = 0u;
    *(v0 + 1736) = 0u;
    *(v0 + 1752) = 0u;
    *(v0 + 1768) = 0u;
    *(v0 + 1784) = 0u;
    *(v0 + 1800) = 0u;
    *(v0 + 1816) = 0u;
    *(v0 + 1832) = 0u;
    *(v0 + 1848) = 0;
    *(v0 + 1852) = 93;
    v14 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1480), (v0 + 1852));
    *(v0 + 1856) = v14;
    v15 = 0.0;
    if (!v14)
    {
      v16 = *(v0 + 1528);
      v17 = *(v0 + 1600);
      v18 = __CFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        __break(1u);
      }

      v15 = vcvtd_n_f64_u64(v19, 0x14uLL);
    }

    *(v0 + 1432) = v15;
    *(v0 + 1160) = 0;
    v20 = swift_task_alloc();
    *(v0 + 1440) = v20;
    *v20 = v0;
    v21 = sub_230D87838;
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 1416) = v20;
    *v20 = v0;
    v21 = sub_230D876E0;
  }

  v20[1] = v21;
  v22 = *(v0 + 1352);
  v23 = *(v0 + 1862);

  return sub_230E41A9C(v0 + 256, v23, v22, v0 + 480);
}

uint64_t sub_230D876E0()
{
  v2 = *v1;
  *(*v1 + 1424) = v0;

  v3 = *(v2 + 1400);
  if (v0)
  {
    v4 = sub_230D89A64;
  }

  else
  {
    v4 = sub_230D89974;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D87838()
{
  v2 = *v1;
  *(*v1 + 1448) = v0;

  v3 = *(v2 + 1400);
  if (v0)
  {
    v4 = sub_230D87AB4;
  }

  else
  {
    v4 = sub_230D87990;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D87990()
{
  v1 = *(v0 + 1304);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1232);
  sub_230D340D4(40, *(v0 + 1432), *(v0 + 1856) != 0, v0 + 480, (v0 + 1160), *(v0 + 1408));
  v4 = *(v2 + 8);
  v4(v1, v3);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = *(v0 + 1448);
  *(v0 + 1464) = v4;
  *(v0 + 1456) = v5;
  v6 = *(v0 + 1200);

  return MEMORY[0x2822009F8](sub_230D87C14, v6, 0);
}

uint64_t sub_230D87AB4(uint64_t a1)
{
  v2 = *(v1 + 1448);
  v3 = *(v1 + 1432);
  v4 = *(v1 + 1408);
  v5 = *(v1 + 1304);
  v6 = *(v1 + 1240);
  v7 = *(v1 + 1232);
  v8 = *(v1 + 1856) != 0;
  *(v1 + 1160) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D340D4(40, v3, v8, v1 + 480, (v1 + 1160), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v1 + 1472) = *(v1 + 1448);
  v10 = *(v1 + 1200);

  return MEMORY[0x2822009F8](sub_230D89848, v10, 0);
}

uint64_t sub_230D87C14(uint64_t a1)
{
  v247 = v1;
  v246 = *MEMORY[0x277D85DE8];
  if (!*(v1 + 264))
  {
    v10 = *(v1 + 1862);
    sub_230D8FDD0();
    swift_allocError();
    *v11 = v10;
    swift_willThrow();
LABEL_9:

    v14 = *(v1 + 8);
LABEL_10:

    return v14();
  }

  v231 = *(v1 + 264);
  v2 = *(v1 + 256);
  v3 = *(v1 + 272);
  v4 = *(v1 + 280);
  v6 = *(v1 + 288);
  v5 = *(v1 + 296);
  v7 = *(v1 + 1456);
  sub_230DCB5D4(&v240);
  if (v7)
  {
    MEMORY[0x23191E910](v7);
    v8 = v2;
    v9 = v231;
LABEL_8:
    sub_230D8FE24(v8, v9, v3, v4, v6, v5);
    v12 = *(v1 + 1862) | 0x40;
    sub_230D8FDD0();
    swift_allocError();
    *v13 = v12;
    swift_willThrow();
    goto LABEL_9;
  }

  if (!sub_230D829F0(v240, v231))
  {
    v8 = v2;
    v9 = v231;
    goto LABEL_8;
  }

  sub_230DCB5D4(&v240);
  v213 = v240;
  v235 = v2;
  if (*(v1 + 1192))
  {
    v16 = *(v1 + 1192);
  }

  else
  {
    v17 = sub_230E69030();
    v18 = sub_230E69030();
    v16 = [objc_opt_self() bagForProfile:v17 profileVersion:v18];
  }

  swift_unknownObjectRetain();
  v208 = v5;
  v209 = sub_230D8FE88(v16);
  v19 = *(v1 + 1360);
  swift_unknownObjectRelease();
  v232 = v6;
  if (!v19)
  {
    v210 = 0;
    v20 = *(v1 + 1360);
LABEL_171:
    v206 = *(v1 + 1176);

    sub_230D8FE24(v235, v231, v3, v4, v232, v208);

    v207 = *(v1 + 1168);
    *v206 = v20;
    v206[1] = v210;
    v206[2] = v207;

    v14 = *(v1 + 8);
    goto LABEL_10;
  }

  v210 = 0;
  v20 = 0;
  v220 = (v1 + 560);
  v211 = (*(v1 + 1216) + 8);
  v212 = *(v1 + 1184) + 32;
  v233 = v4;
  v234 = v3;
  while (1)
  {
    v21 = (v212 + 56 * v20);
    v22 = v21[1];
    v23 = v21[3];
    v24 = v21[4];
    v25 = v21[5];
    v218 = *v21;
    v219 = v21[6];
    v216 = v20;
    v217 = v21[2];
    if (*(v1 + 1862))
    {
      v26 = sub_230E698C0();

      if ((v26 & 1) == 0)
      {
        v27 = v217;

        v221 = v22;
        v223 = v217;
        goto LABEL_49;
      }
    }

    else
    {
    }

    v240 = 0;
    v241 = 0xE000000000000000;
    if (v213 > 4)
    {
      v32 = 0x65676175676E616CLL;
      if (v213 != 8)
      {
        v32 = 0x7974697275636573;
      }

      v33 = 0xE800000000000000;
      if (v213 == 7)
      {
        v32 = 0x6E6F6D6D6F63;
        v33 = 0xE600000000000000;
      }

      v34 = 0x7374736163646F70;
      if (v213 != 5)
      {
        v34 = 0x6F65646976;
      }

      v35 = 0xE500000000000000;
      if (v213 == 5)
      {
        v35 = 0xE800000000000000;
      }

      v30 = v213 <= 6 ? v34 : v32;
      v31 = v213 <= 6 ? v35 : v33;
    }

    else if (v213 <= 1)
    {
      if (v213)
      {
        v31 = 0xE400000000000000;
        v30 = 1936748641;
      }

      else
      {
        v31 = 0xE800000000000000;
        v30 = 0x6C616E7265746E69;
      }
    }

    else
    {
      v28 = 0x7373656E746966;
      if (v213 != 3)
      {
        v28 = 0x636973756DLL;
      }

      v29 = 0xE700000000000000;
      if (v213 != 3)
      {
        v29 = 0xE500000000000000;
      }

      v30 = v213 == 2 ? 0x736B6F6F62 : v28;
      v31 = v213 == 2 ? 0xE500000000000000 : v29;
    }

    MEMORY[0x23191DA00](v30, v31);

    MEMORY[0x23191DA00](46, 0xE100000000000000);
    v27 = v217;

    MEMORY[0x23191DA00](v22, v217);

    v221 = v240;
    v223 = v241;
LABEL_49:
    v36 = *(v1 + 1224);
    v37 = *(v1 + 1208);
    v225 = sub_230D0E264(MEMORY[0x277D84F90]);
    v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD00, &qword_230E734C0);
    v38 = swift_allocObject();
    v240 = v38;
    v38[2] = v218;
    v38[3] = v22;
    v38[4] = v27;
    v38[5] = v23;
    v38[6] = v24;
    v38[7] = v25;
    v38[8] = v219;

    sub_230E699E0();
    sub_230E699F0();
    (*v211)(v36, v37);
    sub_230E695E0();

    sub_230E69660();
    v39 = *(v1 + 384);
    *(v1 + 176) = *(v1 + 368);
    *(v1 + 192) = v39;
    *(v1 + 160) = *(v1 + 352);
    if (*(v1 + 200))
    {
      v40 = v232;
      while (1)
      {
        v42 = *(v1 + 160);
        v41 = *(v1 + 168);
        sub_230D0E394((v1 + 176), (v1 + 936));
        if (!v41)
        {
          break;
        }

        sub_230E68D70();
        sub_230D82664(v1 + 936, v1 + 968);

        v43 = sub_230E68D60();
        v44 = sub_230E693F0();

        v45 = os_log_type_enabled(v43, v44);
        v46 = *(v1 + 1464);
        v47 = *(v1 + 1296);
        v48 = *(v1 + 1232);
        if (v45)
        {
          v237 = v42;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v240 = v50;
          *v49 = 136315394;
          *(v49 + 4) = sub_230D7E620(v237, v41, &v240);
          *(v49 + 12) = 2080;
          sub_230D82664(v1 + 968, v1 + 744);
          v51 = sub_230E690C0();
          v227 = v46;
          v52 = v41;
          v54 = v53;
          __swift_destroy_boxed_opaque_existential_1((v1 + 968));
          v55 = sub_230D7E620(v51, v54, &v240);
          v41 = v52;

          *(v49 + 14) = v55;
          v40 = v232;
          _os_log_impl(&dword_230D02000, v43, v44, "[ServicesIntelligenceProvider][logMetrics] processing event with label: %s and value: %s", v49, 0x16u);
          swift_arrayDestroy();
          v56 = v50;
          v4 = v233;
          MEMORY[0x23191EAE0](v56, -1, -1);
          v57 = v49;
          v42 = v237;
          MEMORY[0x23191EAE0](v57, -1, -1);

          v227(v47, v48);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1((v1 + 968));
          v46(v47, v48);
        }

        v3 = v234;
        if (!*(v4 + 16) || (v64 = sub_230DA41A0(v42, v41), (v65 & 1) == 0))
        {
          sub_230E68D70();

          v69 = sub_230E68D60();
          v70 = sub_230E693E0();

          v71 = os_log_type_enabled(v69, v70);
          v72 = *(v1 + 1464);
          v73 = *(v1 + 1280);
          v74 = *(v1 + 1232);
          if (v71)
          {
            v75 = v41;
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v240 = v77;
            *v76 = 136315138;
            *(v76 + 4) = sub_230D7E620(v42, v75, &v240);
            _os_log_impl(&dword_230D02000, v69, v70, "[ServicesIntelligenceProvider][logMetrics] Field %s not found in schema, omitting", v76, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v77);
            v78 = v77;
            v3 = v234;
            MEMORY[0x23191EAE0](v78, -1, -1);
            v79 = v76;
            v41 = v75;
            v4 = v233;
            MEMORY[0x23191EAE0](v79, -1, -1);
          }

          v72(v73, v74);
          v40 = v232;
          sub_230D8F4B0(&v240, v42, v41);

LABEL_67:
          v80 = (v1 + 936);
          goto LABEL_68;
        }

        v66 = (*(v4 + 56) + 16 * v64);
        v67 = *v66;
        v68 = v66[1];
        if (v42 == 0x707954746E657665 && v41 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
        {
          *(v1 + 1024) = MEMORY[0x277D837D0];
          *(v1 + 1000) = v221;
          *(v1 + 1008) = v223;
        }

        else
        {
          sub_230D82664(v1 + 936, v1 + 1000);
        }

        if (*(v1 + 1863) == 1)
        {
          sub_230D8D4F8((v1 + 1000), (v1 + 1128));
          sub_230D0E394((v1 + 1128), (v1 + 680));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v240 = v225;
          v115 = sub_230DA41A0(v42, v41);
          v117 = *(v225 + 16);
          v118 = (v116 & 1) == 0;
          v119 = __OFADD__(v117, v118);
          v120 = v117 + v118;
          if (v119)
          {
            goto LABEL_178;
          }

          v121 = v116;
          if (*(v225 + 24) < v120)
          {
            sub_230DB7074(v120, isUniquelyReferenced_nonNull_native);
            v115 = sub_230DA41A0(v42, v41);
            if ((v121 & 1) != (v122 & 1))
            {
              goto LABEL_174;
            }

LABEL_98:
            v123 = v41;
            v81 = v235;
            if (v121)
            {
              goto LABEL_99;
            }

LABEL_109:
            v138 = v240;
            v240[(v115 >> 6) + 8] |= 1 << v115;
            v139 = (v138[6] + 16 * v115);
            *v139 = v42;
            v139[1] = v123;
            sub_230D0E394((v1 + 680), (v138[7] + 32 * v115));
            __swift_destroy_boxed_opaque_existential_1((v1 + 936));
            v140 = v138[2];
            v119 = __OFADD__(v140, 1);
            v141 = v140 + 1;
            if (v119)
            {
              goto LABEL_179;
            }

LABEL_114:
            v225 = v138;
            v138[2] = v141;
LABEL_115:
            __swift_destroy_boxed_opaque_existential_1((v1 + 1000));
            goto LABEL_70;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_98;
          }

          v123 = v41;
          v137 = v115;
          sub_230DBA17C();
          v115 = v137;
          v81 = v235;
          if ((v121 & 1) == 0)
          {
            goto LABEL_109;
          }

LABEL_99:
          v124 = v115;

          v225 = v240;
          v125 = (v240[7] + 32 * v124);
          __swift_destroy_boxed_opaque_existential_1(v125);
          v126 = (v1 + 680);
LABEL_107:
          sub_230D0E394(v126, v125);
          __swift_destroy_boxed_opaque_existential_1((v1 + 936));
          goto LABEL_115;
        }

        v238 = v42;

        v83 = sub_230E69680();
        if (v83 >= 5)
        {
          sub_230E68D70();

          v93 = sub_230E68D60();
          v94 = sub_230E693E0();

          v95 = os_log_type_enabled(v93, v94);
          v96 = *(v1 + 1464);
          v97 = *(v1 + 1264);
          v98 = *(v1 + 1232);
          if (v95)
          {
            v99 = swift_slowAlloc();
            v228 = v96;
            v100 = v41;
            v101 = swift_slowAlloc();
            v240 = v101;
            *v99 = 136315394;
            v102 = sub_230D7E620(v67, v68, &v240);

            *(v99 + 4) = v102;
            *(v99 + 12) = 2080;
            v103 = v238;
            *(v99 + 14) = sub_230D7E620(v238, v100, &v240);
            _os_log_impl(&dword_230D02000, v93, v94, "[ServicesIntelligenceProvider][logMetrics] Unknown type %s in schema for field %s, omitting", v99, 0x16u);
            swift_arrayDestroy();
            v104 = v101;
            v41 = v100;
            MEMORY[0x23191EAE0](v104, -1, -1);
            v105 = v99;
            v40 = v232;
            MEMORY[0x23191EAE0](v105, -1, -1);

            v228(v97, v98);
          }

          else
          {

            v96(v97, v98);
            v103 = v238;
          }

          sub_230D8F4B0(&v240, v103, v41);

          __swift_destroy_boxed_opaque_existential_1((v1 + 936));
          __swift_destroy_boxed_opaque_existential_1((v1 + 1000));
          v4 = v233;
          v3 = v234;
          goto LABEL_69;
        }

        v84 = v83;

        if (sub_230D8E084(v1 + 1000, v84))
        {
          sub_230D8D4F8((v1 + 1000), (v1 + 1096));
          v127 = swift_isUniquelyReferenced_nonNull_native();
          v240 = v225;
          v128 = sub_230DA41A0(v238, v41);
          v130 = *(v225 + 16);
          v131 = (v129 & 1) == 0;
          v119 = __OFADD__(v130, v131);
          v132 = v130 + v131;
          if (v119)
          {
            goto LABEL_180;
          }

          v133 = v129;
          if (*(v225 + 24) >= v132)
          {
            if (v127)
            {
              goto LABEL_105;
            }

            v135 = v41;
            v142 = v128;
            sub_230DBA17C();
            v128 = v142;
            v81 = v235;
            if (v133)
            {
LABEL_106:
              v136 = v128;

              v225 = v240;
              v125 = (v240[7] + 32 * v136);
              __swift_destroy_boxed_opaque_existential_1(v125);
              v126 = (v1 + 1096);
              goto LABEL_107;
            }
          }

          else
          {
            sub_230DB7074(v132, v127);
            v128 = sub_230DA41A0(v238, v41);
            if ((v133 & 1) != (v134 & 1))
            {
              goto LABEL_174;
            }

LABEL_105:
            v135 = v41;
            v81 = v235;
            if (v133)
            {
              goto LABEL_106;
            }
          }

          v138 = v240;
          v240[(v128 >> 6) + 8] |= 1 << v128;
          v143 = (v138[6] + 16 * v128);
          *v143 = v238;
          v143[1] = v135;
          sub_230D0E394((v1 + 1096), (v138[7] + 32 * v128));
          __swift_destroy_boxed_opaque_existential_1((v1 + 936));
          v144 = v138[2];
          v119 = __OFADD__(v144, 1);
          v141 = v144 + 1;
          if (v119)
          {
            goto LABEL_181;
          }

          goto LABEL_114;
        }

        sub_230E68D70();
        sub_230D82664(v1 + 1000, v1 + 1032);

        v85 = sub_230E68D60();
        v86 = sub_230E693E0();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v240 = v88;
          *v87 = 136315650;
          *(v87 + 4) = sub_230D7E620(v238, v41, &v240);
          *(v87 + 12) = 2080;
          v89 = v84;
          v90 = v41;
          if (v89 <= 1)
          {
            v91 = 0xE600000000000000;
            if (v89)
            {
              v92 = 0x7265626D756ELL;
            }

            else
            {
              v92 = 0x676E69727473;
            }
          }

          else if (v89 == 2)
          {
            v91 = 0xE400000000000000;
            v92 = 1819242338;
          }

          else if (v89 == 3)
          {
            v91 = 0xEA00000000007972;
            v92 = 0x616E6F6974636964;
          }

          else
          {
            v91 = 0xE500000000000000;
            v92 = 0x7961727261;
          }

          v229 = *(v1 + 1464);
          v214 = *(v1 + 1232);
          v215 = *(v1 + 1272);
          v109 = sub_230D7E620(v92, v91, &v240);

          *(v87 + 14) = v109;
          *(v87 + 22) = 2080;
          sub_230D82664(v1 + 1032, v1 + 1064);
          v110 = sub_230E690C0();
          v112 = v111;
          __swift_destroy_boxed_opaque_existential_1((v1 + 1032));
          v113 = sub_230D7E620(v110, v112, &v240);

          *(v87 + 24) = v113;
          _os_log_impl(&dword_230D02000, v85, v86, "[ServicesIntelligenceProvider][logMetrics] Field %s type mismatch. Expected: %s, got: %s", v87, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23191EAE0](v88, -1, -1);
          MEMORY[0x23191EAE0](v87, -1, -1);

          v229(v215, v214);
          v40 = v232;
          v3 = v234;
        }

        else
        {
          v90 = v41;
          v106 = *(v1 + 1464);
          v107 = *(v1 + 1272);
          v108 = *(v1 + 1232);

          __swift_destroy_boxed_opaque_existential_1((v1 + 1032));
          v106(v107, v108);
        }

        sub_230D8F4B0(&v240, v238, v90);

        __swift_destroy_boxed_opaque_existential_1((v1 + 936));
        v80 = (v1 + 1000);
LABEL_68:
        __swift_destroy_boxed_opaque_existential_1(v80);
LABEL_69:
        v81 = v235;
LABEL_70:
        sub_230E69660();
        v82 = *(v1 + 384);
        *(v1 + 176) = *(v1 + 368);
        *(v1 + 192) = v82;
        *(v1 + 160) = *(v1 + 352);
        if (!*(v1 + 200))
        {
          goto LABEL_117;
        }
      }

      sub_230E68D70();
      v58 = sub_230E68D60();
      v59 = sub_230E69400();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_230D02000, v58, v59, "[ServicesIntelligenceProvider][logMetrics] property without label.", v60, 2u);
        MEMORY[0x23191EAE0](v60, -1, -1);
      }

      v61 = *(v1 + 1464);
      v62 = *(v1 + 1288);
      v63 = *(v1 + 1232);

      v61(v62, v63);
      goto LABEL_67;
    }

    v40 = v232;
    v81 = v235;
LABEL_117:

    if (*(v225 + 16))
    {
      break;
    }

    sub_230E68D70();
    v145 = sub_230E68D60();
    v146 = sub_230E693E0();
    v147 = os_log_type_enabled(v145, v146);
    v148 = *(v1 + 1464);
    v149 = *(v1 + 1256);
    v150 = *(v1 + 1232);
    if (v147)
    {
      v151 = swift_slowAlloc();
      *v151 = 0;
      _os_log_impl(&dword_230D02000, v145, v146, "[ServicesIntelligenceProvider][logMetrics] No valid fields for event, skipping", v151, 2u);
      MEMORY[0x23191EAE0](v151, -1, -1);
    }

    else
    {
    }

    v148(v149, v150);
LABEL_163:
    v3 = v234;
LABEL_164:
    v20 = v216 + 1;
    if (v216 + 1 == *(v1 + 1360))
    {
      goto LABEL_171;
    }
  }

  if ((*(v1 + 1864) & 1) == 0)
  {
    LOBYTE(v240) = v81;
    v241 = v231;
    v242 = v3;
    v243 = v4;
    v244 = v40;
    v245 = v208;
    if (!sub_230D6BFA8(v221, v223))
    {

      goto LABEL_164;
    }
  }

  v152 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v153 = sub_230E69030();

  v154 = [v152 initWithTopic_];

  v155 = sub_230E69030();

  [v154 setEventType_];

  v230 = v154;
  [v154 setAnonymous_];
  v156 = 0;
  v157 = -1 << *(v225 + 32);
  if (-v157 < 64)
  {
    v158 = ~(-1 << -v157);
  }

  else
  {
    v158 = -1;
  }

  v159 = v158 & *(v225 + 64);
  v160 = (63 - v157) >> 6;
  if (v159)
  {
    while (1)
    {
      v161 = v156;
LABEL_137:
      v164 = __clz(__rbit64(v159));
      v159 &= v159 - 1;
      v165 = v164 | (v161 << 6);
      v166 = (*(v225 + 48) + 16 * v165);
      v168 = *v166;
      v167 = v166[1];
      sub_230D82664(*(v225 + 56) + 32 * v165, v1 + 712);
      *(v1 + 208) = v168;
      *(v1 + 216) = v167;
      sub_230D0E394((v1 + 712), (v1 + 224));

      v163 = v161;
LABEL_138:
      v169 = *(v1 + 224);
      *(v1 + 304) = *(v1 + 208);
      *(v1 + 320) = v169;
      *(v1 + 336) = *(v1 + 240);
      if (!*(v1 + 312))
      {
        break;
      }

      sub_230D0E394((v1 + 320), (v1 + 904));
      __swift_project_boxed_opaque_existential_1((v1 + 904), *(v1 + 928));
      v170 = sub_230E698B0();
      __swift_destroy_boxed_opaque_existential_1((v1 + 904));
      v171 = sub_230E69030();

      [v230 setProperty:v170 forBodyKey:v171];

      swift_unknownObjectRelease();
      v156 = v163;
      if (!v159)
      {
        goto LABEL_130;
      }
    }

    v172 = [v230 dictionaryForPosting];
    v173 = sub_230E68F50();

    v174 = 0;
    v176 = v173 + 64;
    v175 = *(v173 + 64);
    v222 = v173;
    v177 = -1 << *(v173 + 32);
    if (-v177 < 64)
    {
      v178 = ~(-1 << -v177);
    }

    else
    {
      v178 = -1;
    }

    v179 = v178 & v175;
    v180 = (63 - v177) >> 6;
    v181 = v1 + 600;
    if ((v178 & v175) == 0)
    {
LABEL_149:
      if (v180 <= v174 + 1)
      {
        v183 = v174 + 1;
      }

      else
      {
        v183 = v180;
      }

      v184 = v183 - 1;
      while (1)
      {
        v182 = v174 + 1;
        if (__OFADD__(v174, 1))
        {
          goto LABEL_173;
        }

        if (v182 >= v180)
        {
          break;
        }

        v179 = *(v176 + 8 * v182);
        ++v174;
        if (v179)
        {
          goto LABEL_156;
        }
      }

      v179 = 0;
      *(v1 + 80) = 0;
      *(v1 + 48) = 0u;
      *(v1 + 64) = 0u;
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
      goto LABEL_157;
    }

    while (1)
    {
      v182 = v174;
LABEL_156:
      v185 = __clz(__rbit64(v179));
      v179 &= v179 - 1;
      v186 = v185 | (v182 << 6);
      sub_230D8FF88(*(v222 + 48) + 40 * v186, v220);
      sub_230D82664(*(v222 + 56) + 32 * v186, v1 + 776);
      v187 = *(v1 + 576);
      *(v1 + 16) = *v220;
      *(v1 + 32) = v187;
      *(v1 + 48) = *(v1 + 592);
      sub_230D0E394((v1 + 776), (v1 + 56));
      v184 = v182;
      v181 = v1 + 600;
LABEL_157:
      *(v1 + 152) = *(v1 + 80);
      v188 = *(v1 + 48);
      *(v1 + 136) = *(v1 + 64);
      *(v1 + 120) = v188;
      v189 = *(v1 + 16);
      *(v1 + 104) = *(v1 + 32);
      *(v1 + 88) = v189;
      if (!*(v1 + 112))
      {
        break;
      }

      v190 = *(v1 + 104);
      *v181 = *(v1 + 88);
      *(v181 + 16) = v190;
      *(v181 + 32) = *(v1 + 120);
      sub_230D0E394((v1 + 128), (v1 + 808));
      sub_230E68D70();
      sub_230D8FF88(v181, v1 + 640);
      sub_230D82664(v1 + 808, v1 + 840);
      v191 = sub_230E68D60();
      v192 = sub_230E693E0();
      v193 = os_log_type_enabled(v191, v192);
      v194 = *(v1 + 1464);
      v236 = *(v1 + 1232);
      v239 = *(v1 + 1248);
      if (v193)
      {
        v226 = v184;
        v195 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        v240 = v196;
        *v195 = 136315394;
        v224 = v194;
        v197 = sub_230E694F0();
        v199 = v198;
        sub_230D8FFE4(v1 + 640);
        v200 = sub_230D7E620(v197, v199, &v240);

        *(v195 + 4) = v200;
        *(v195 + 12) = 2080;
        sub_230D82664(v1 + 840, v1 + 872);
        v201 = sub_230E690C0();
        v203 = v202;
        __swift_destroy_boxed_opaque_existential_1((v1 + 840));
        v204 = sub_230D7E620(v201, v203, &v240);
        v181 = v1 + 600;

        *(v195 + 14) = v204;
        _os_log_impl(&dword_230D02000, v191, v192, "[ServicesIntelligenceProvider] Field: %s = %s", v195, 0x16u);
        swift_arrayDestroy();
        v205 = v196;
        v4 = v233;
        MEMORY[0x23191EAE0](v205, -1, -1);
        MEMORY[0x23191EAE0](v195, -1, -1);

        v224(v239, v236);
        __swift_destroy_boxed_opaque_existential_1((v1 + 808));
        sub_230D8FFE4(v1 + 600);
        v174 = v226;
        if (!v179)
        {
          goto LABEL_149;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1((v1 + 840));
        sub_230D8FFE4(v1 + 640);
        v194(v239, v236);
        __swift_destroy_boxed_opaque_existential_1((v1 + 808));
        sub_230D8FFE4(v181);
        v174 = v184;
        if (!v179)
        {
          goto LABEL_149;
        }
      }
    }

    [v209 enqueueEvent_];

    v119 = __OFADD__(v210++, 1);
    if (v119)
    {
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
    }

    goto LABEL_163;
  }

LABEL_130:
  if (v160 <= v156 + 1)
  {
    v162 = v156 + 1;
  }

  else
  {
    v162 = v160;
  }

  v163 = v162 - 1;
  while (1)
  {
    v161 = v156 + 1;
    if (__OFADD__(v156, 1))
    {
      break;
    }

    if (v161 >= v160)
    {
      v159 = 0;
      *(v1 + 224) = 0u;
      *(v1 + 240) = 0u;
      *(v1 + 208) = 0u;
      goto LABEL_138;
    }

    v159 = *(v225 + 64 + 8 * v161);
    ++v156;
    if (v159)
    {
      goto LABEL_137;
    }
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:

  return sub_230E69950();
}

uint64_t sub_230D89848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D89974()
{
  v1 = *(v0[155] + 8);
  v1(v0[163], v0[154]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v2 = v0[178];
  v0[183] = v1;
  v0[182] = v2;
  v3 = v0[150];

  return MEMORY[0x2822009F8](sub_230D87C14, v3, 0);
}

uint64_t sub_230D89A64()
{
  (*(v0[155] + 8))(v0[163], v0[154]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[184] = v0[178];
  v1 = v0[150];

  return MEMORY[0x2822009F8](sub_230D89848, v1, 0);
}

uint64_t sub_230D89B48(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 1248) = v7;
  *(v8 + 1240) = a7;
  *(v8 + 1232) = a6;
  *(v8 + 1224) = a5;
  *(v8 + 1951) = a4;
  *(v8 + 1950) = a3;
  *(v8 + 1216) = a1;
  v11 = sub_230E69A00();
  *(v8 + 1256) = v11;
  *(v8 + 1264) = *(v11 - 8);
  *(v8 + 1272) = swift_task_alloc();
  v12 = *(a6 - 8);
  *(v8 + 1280) = v12;
  *(v8 + 1288) = *(v12 + 64);
  *(v8 + 1296) = swift_task_alloc();
  *(v8 + 1304) = swift_task_alloc();
  v13 = sub_230E68D80();
  *(v8 + 1312) = v13;
  *(v8 + 1320) = *(v13 - 8);
  *(v8 + 1328) = swift_task_alloc();
  *(v8 + 1336) = swift_task_alloc();
  *(v8 + 1344) = swift_task_alloc();
  *(v8 + 1352) = swift_task_alloc();
  *(v8 + 1360) = swift_task_alloc();
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = swift_task_alloc();
  *(v8 + 1392) = swift_task_alloc();
  *(v8 + 1952) = *a2;
  *(v8 + 1400) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_230D89D8C, v7, 0);
}

uint64_t sub_230D89D8C()
{
  v21 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();
  swift_bridgeObjectRetain_n();
  v1 = sub_230E68D60();
  v2 = sub_230E693F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1952);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20[0] = v5;
    *v4 = 136315394;
    v6 = 0x8000000230E802F0;
    v7 = 0xD00000000000001FLL;
    if (v3 != 1)
    {
      v7 = 0xD000000000000012;
      v6 = 0x8000000230E80310;
    }

    if (v3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x6F5F706D615F7078;
    }

    if (v3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEE00676F6C5F7064;
    }

    v10 = *(v0 + 1320);
    v18 = *(v0 + 1312);
    v19 = *(v0 + 1392);
    v11 = sub_230D7E620(v8, v9, v20);

    *(v4 + 4) = v11;
    *(v4 + 12) = 2048;
    v12 = sub_230E69290();

    *(v4 + 14) = v12;

    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][logMetrics] Starting with topic: %s and %ld events", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x23191EAE0](v5, -1, -1);
    MEMORY[0x23191EAE0](v4, -1, -1);

    (*(v10 + 8))(v19, v18);
  }

  else
  {
    v13 = *(v0 + 1392);
    v14 = *(v0 + 1320);
    v15 = *(v0 + 1312);
    swift_bridgeObjectRelease_n();

    (*(v14 + 8))(v13, v15);
  }

  *(v0 + 1949) = 39;
  v16 = swift_task_alloc();
  *(v0 + 1408) = v16;
  *v16 = v0;
  v16[1] = sub_230D8A080;

  return static RequestContext.from(_:correlationID:)(v0 + 440, (v0 + 1949), 0, 0);
}

uint64_t sub_230D8A080()
{
  v1 = *(*v0 + 1248);

  return MEMORY[0x2822009F8](sub_230D8A1BC, v1, 0);
}

uint64_t sub_230D8A1BC()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  *(v0 + 1416) = v3;
  v4 = *(v0 + 464);
  v5 = *(v0 + 465);
  v6 = *(v0 + 472);
  *(v0 + 1424) = v6;
  *(v0 + 600) = v1;
  *(v0 + 608) = v2;
  *(v0 + 616) = v3;
  *(v0 + 624) = v4;
  *(v0 + 625) = v5;
  *(v0 + 632) = v6;

  v7 = swift_task_alloc();
  *(v0 + 1432) = v7;
  *v7 = v0;
  v7[1] = sub_230D8A2D8;
  v8 = *(v0 + 1248);

  return sub_230D6F7D0(39, v0 + 600, v8, v8);
}

uint64_t sub_230D8A2D8(uint64_t a1)
{
  v3 = *v2;
  v3[180] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[156];

    return MEMORY[0x2822009F8](sub_230D8A544, v6, 0);
  }
}

uint64_t sub_230D8A544()
{
  *(v0 + 1200) = MEMORY[0x277D84FA0];
  *(v0 + 1448) = sub_230E69290();
  *(v0 + 1948) = 40;
  v1 = swift_task_alloc();
  *(v0 + 1456) = v1;
  *v1 = v0;
  v1[1] = sub_230D8A638;

  return static RequestContext.from(_:correlationID:)(v0 + 520, (v0 + 1948), 0, 0);
}

uint64_t sub_230D8A638()
{

  return MEMORY[0x2822009F8](sub_230D8A760, 0, 0);
}

uint64_t sub_230D8A760()
{
  v1 = *(v0 + 520);
  *(v0 + 1953) = v1;
  v2 = *(v0 + 528);
  *(v0 + 1464) = v2;
  v3 = *(v0 + 536);
  *(v0 + 1472) = v3;
  v4 = *(v0 + 544);
  *(v0 + 1954) = v4;
  v5 = *(v0 + 545);
  *(v0 + 1955) = v5;
  v6 = *(v0 + 552);
  *(v0 + 1480) = v6;
  *(v0 + 400) = v1;
  *(v0 + 408) = v2;
  *(v0 + 416) = v3;
  *(v0 + 424) = v4;
  *(v0 + 425) = v5;
  *(v0 + 432) = v6;
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v7 = qword_27DB5A438;
  *(v0 + 1488) = qword_27DB5A438;

  return MEMORY[0x2822009F8](sub_230D8A898, v7, 0);
}

uint64_t sub_230D8A898()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1472);
    v4 = *(v0 + 1464);
    v5 = *(v0 + 1953);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E808D0, v28);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(v4, v3, v28);
    *(v6 + 22) = 2080;
    v26 = 0x6C616E7265746E69;
    v27 = 0xE90000000000002ELL;
    v25 = v5;
    v8 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v8);

    v9 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v28);

    *(v6 + 24) = v9;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 1480);
  v11 = *(v0 + 1955);
  v12 = *(v0 + 1953);
  LOBYTE(v26) = *(v0 + 1954);
  BYTE1(v26) = v11;
  v27 = v10;
  v25 = 40;
  LOBYTE(v28[0]) = v12;

  v13 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v25, v28);

  if (v13)
  {
    sub_230E68950();
    *(v0 + 1496) = CFAbsoluteTimeGetCurrent();
    *(v0 + 1568) = 0u;
    *(v0 + 1584) = 0u;
    *(v0 + 1600) = 0u;
    *(v0 + 1616) = 0u;
    *(v0 + 1632) = 0u;
    *(v0 + 1648) = 0u;
    *(v0 + 1664) = 0u;
    *(v0 + 1680) = 0u;
    *(v0 + 1696) = 0u;
    *(v0 + 1712) = 0u;
    *(v0 + 1728) = 0u;
    *(v0 + 1744) = 0u;
    *(v0 + 1760) = 0u;
    *(v0 + 1776) = 0u;
    *(v0 + 1792) = 0u;
    *(v0 + 1808) = 0u;
    *(v0 + 1824) = 0u;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *(v0 + 1872) = 0u;
    *(v0 + 1888) = 0u;
    *(v0 + 1904) = 0u;
    *(v0 + 1920) = 0u;
    *(v0 + 1936) = 0;
    *(v0 + 1940) = 93;
    v14 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 1568), (v0 + 1940));
    *(v0 + 1944) = v14;
    v15 = 0.0;
    if (!v14)
    {
      v16 = *(v0 + 1616);
      v17 = *(v0 + 1688);
      v18 = __CFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        __break(1u);
      }

      v15 = vcvtd_n_f64_u64(v19, 0x14uLL);
    }

    *(v0 + 1520) = v15;
    *(v0 + 1208) = 0;
    v20 = swift_task_alloc();
    *(v0 + 1528) = v20;
    *v20 = v0;
    v21 = sub_230D8ADDC;
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 1504) = v20;
    *v20 = v0;
    v21 = sub_230D8AC84;
  }

  v20[1] = v21;
  v22 = *(v0 + 1440);
  v23 = *(v0 + 1952);

  return sub_230E41A9C(v0 + 160, v23, v22, v0 + 400);
}

uint64_t sub_230D8AC84()
{
  v2 = *v1;
  *(*v1 + 1512) = v0;

  v3 = *(v2 + 1488);
  if (v0)
  {
    v4 = sub_230D8D1E8;
  }

  else
  {
    v4 = sub_230D8D0F8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D8ADDC()
{
  v2 = *v1;
  *(*v1 + 1536) = v0;

  v3 = *(v2 + 1488);
  if (v0)
  {
    v4 = sub_230D8B058;
  }

  else
  {
    v4 = sub_230D8AF34;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D8AF34()
{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1320);
  v3 = *(v0 + 1312);
  sub_230D340D4(40, *(v0 + 1520), *(v0 + 1944) != 0, v0 + 400, (v0 + 1208), *(v0 + 1496));
  v4 = *(v2 + 8);
  v4(v1, v3);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = *(v0 + 1536);
  *(v0 + 1552) = v4;
  *(v0 + 1544) = v5;
  v6 = *(v0 + 1248);

  return MEMORY[0x2822009F8](sub_230D8B1B8, v6, 0);
}

uint64_t sub_230D8B058(uint64_t a1)
{
  v2 = *(v1 + 1536);
  v3 = *(v1 + 1520);
  v4 = *(v1 + 1496);
  v5 = *(v1 + 1384);
  v6 = *(v1 + 1320);
  v7 = *(v1 + 1312);
  v8 = *(v1 + 1944) != 0;
  *(v1 + 1208) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D340D4(40, v3, v8, v1 + 400, (v1 + 1208), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v1 + 1560) = *(v1 + 1536);
  v10 = *(v1 + 1248);

  return MEMORY[0x2822009F8](sub_230D8CFB0, v10, 0);
}

uint64_t sub_230D8B1B8(uint64_t a1)
{
  v265 = v1;
  v264 = *MEMORY[0x277D85DE8];
  v2 = v1 + 20;
  if (!v1[21])
  {
    v10 = *(v1 + 1952);
LABEL_9:
    sub_230D8FDD0();
    swift_allocError();
    *v11 = v10;
    swift_willThrow();

    v12 = v257[1];
    goto LABEL_10;
  }

  v241 = v1[20];
  v247 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v6 = v1[24];
  v5 = v1[25];
  v7 = v1[193];
  sub_230DCB5D4(&v258);
  if (v7)
  {
    MEMORY[0x23191E910](v7);
    v8 = v241;
    v9 = v247;
LABEL_8:
    sub_230D8FE24(v8, v9, v3, v4, v6, v5);
    v10 = *(v1 + 1952) | 0x40;
    goto LABEL_9;
  }

  if (!sub_230D829F0(v258, v247))
  {
    v8 = v241;
    v9 = v247;
    goto LABEL_8;
  }

  sub_230DCB5D4(&v258);
  v231 = v258;
  if (v1[153])
  {
    v14 = v1[153];
  }

  else
  {
    v15 = sub_230E69030();
    v16 = sub_230E69030();
    v14 = [objc_opt_self() bagForProfile:v15 profileVersion:v16];
  }

  swift_unknownObjectRetain();
  v223 = v5;
  v224 = sub_230D8FE88(v14);
  swift_unknownObjectRelease();

  if (!sub_230E69290())
  {
    v226 = 0;
LABEL_170:
    v219 = v1[181];
    v220 = v257[152];

    sub_230D8FE24(v241, v247, v3, v4, v6, v223);

    v221 = v257[150];
    *v220 = v219;
    v220[1] = v226;
    v220[2] = v221;

    v12 = v257[1];
LABEL_10:

    return v12();
  }

  v226 = 0;
  v17 = 0;
  v246 = v1 + 2;
  v235 = (v1 + 80);
  v222 = v1[161];
  v18 = v1[160];
  v233 = (v18 + 16);
  v228 = (v18 + 32);
  v229 = (v1[155] + 24);
  v227 = (v1[158] + 8);
  v230 = v18;
  v225 = (v18 + 8);
  v250 = v4;
  v248 = v6;
  v234 = v3;
  v256 = v1 + 20;
  v240 = v1 + 11;
  while (2)
  {
    v19 = sub_230E69280();
    sub_230E69250();
    if (v19)
    {
      v20 = *(v230 + 16);
      v20(v1[163], v1[175] + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v17, v1[154]);
    }

    else
    {
      result = sub_230E69550();
      if (v222 != 8)
      {
        __break(1u);
        return result;
      }

      v216 = result;
      v2 = v256;
      v1 = v257;
      v217 = v257[163];
      v218 = v257[154];
      v257[149] = v216;
      v20 = *v233;
      (*v233)(v217, (v256 + 129), v218);
      swift_unknownObjectRelease();
      v4 = v250;
      v6 = v248;
      v3 = v234;
    }

    v232 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_177;
    }

    v21 = *(v1 + 1952);
    (*v228)(v1[162], v1[163], v1[154]);
    if (!v21)
    {

      goto LABEL_27;
    }

    v22 = sub_230E698C0();

    if (v22)
    {
LABEL_27:
      v258 = 0;
      v259 = 0xE000000000000000;
      if (v231 > 4)
      {
        v28 = 0x65676175676E616CLL;
        if (v231 != 8)
        {
          v28 = 0x7974697275636573;
        }

        v29 = 0xE800000000000000;
        if (v231 == 7)
        {
          v28 = 0x6E6F6D6D6F63;
          v29 = 0xE600000000000000;
        }

        v30 = 0x7374736163646F70;
        if (v231 != 5)
        {
          v30 = 0x6F65646976;
        }

        v31 = 0xE500000000000000;
        if (v231 == 5)
        {
          v31 = 0xE800000000000000;
        }

        if (v231 <= 6)
        {
          v26 = v30;
        }

        else
        {
          v26 = v28;
        }

        if (v231 <= 6)
        {
          v27 = v31;
        }

        else
        {
          v27 = v29;
        }
      }

      else if (v231 <= 1)
      {
        if (v231)
        {
          v27 = 0xE400000000000000;
          v26 = 1936748641;
        }

        else
        {
          v27 = 0xE800000000000000;
          v26 = 0x6C616E7265746E69;
        }
      }

      else
      {
        v24 = 0x7373656E746966;
        if (v231 != 3)
        {
          v24 = 0x636973756DLL;
        }

        v25 = 0xE700000000000000;
        if (v231 != 3)
        {
          v25 = 0xE500000000000000;
        }

        if (v231 == 2)
        {
          v26 = 0x736B6F6F62;
        }

        else
        {
          v26 = v24;
        }

        if (v231 == 2)
        {
          v27 = 0xE500000000000000;
        }

        else
        {
          v27 = v25;
        }
      }

      v32 = v1[155];
      v33 = v1[154];
      MEMORY[0x23191DA00](v26, v27);

      MEMORY[0x23191DA00](46, 0xE100000000000000);
      v34 = (*v229)(v33, v32);
      MEMORY[0x23191DA00](v34);

      v238 = v258;
      v244 = v259;
      v2 = v256;
      goto LABEL_54;
    }

    v238 = (*v229)(v1[154], v1[155]);
    v244 = v23;
LABEL_54:
    v35 = v1[162];
    v36 = v1[159];
    v37 = v1[157];
    v38 = v1[154];
    v242 = sub_230D0E264(MEMORY[0x277D84F90]);
    v1[96] = v38;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 73);
    v20(boxed_opaque_existential_0, v35, v38);
    sub_230E699E0();
    sub_230E699F0();
    (*v227)(v36, v37);
    sub_230E695E0();

    while (1)
    {
      sub_230E69660();
      v40 = v2[8];
      v2[4] = v2[7];
      v2[5] = v40;
      v2[3] = v2[6];
      if (!v1[31])
      {
        break;
      }

      v42 = v1[26];
      v41 = v1[27];
      sub_230D0E394(v1 + 14, (v2 + 744));
      if (v41)
      {
        v254 = v42;
        sub_230E68D70();
        sub_230D82664(v2 + 744, v2 + 776);

        v43 = sub_230E68D60();
        v44 = sub_230E693F0();

        v45 = os_log_type_enabled(v43, v44);
        v251 = v1[194];
        v46 = v1[172];
        v47 = v1[164];
        if (v45)
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v258 = v49;
          *v48 = 136315394;
          *(v48 + 4) = sub_230D7E620(v254, v41, &v258);
          *(v48 + 12) = 2080;
          sub_230D82664(v2 + 776, v2 + 1000);
          v50 = v41;
          v51 = sub_230E690C0();
          v53 = v52;
          __swift_destroy_boxed_opaque_existential_1(v2 + 97);
          v54 = sub_230D7E620(v51, v53, &v258);
          v3 = v234;

          *(v48 + 14) = v54;
          v41 = v50;
          _os_log_impl(&dword_230D02000, v43, v44, "[ServicesIntelligenceProvider][logMetrics] processing event with label: %s and value: %s", v48, 0x16u);
          swift_arrayDestroy();
          v55 = v49;
          v6 = v248;
          MEMORY[0x23191EAE0](v55, -1, -1);
          v56 = v48;
          v4 = v250;
          v1 = v257;
          MEMORY[0x23191EAE0](v56, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v2 + 97);
        }

        v251(v46, v47);
        v64 = v254;
        if (*(v4 + 16) && (v65 = sub_230DA41A0(v254, v41), (v66 & 1) != 0))
        {
          v67 = (*(v4 + 56) + 16 * v65);
          v69 = *v67;
          v68 = v67[1];
          if (v254 == 0x707954746E657665 && v41 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
          {
            v1[124] = MEMORY[0x277D837D0];
            v1[121] = v238;
            v1[122] = v244;

            v2 = v256;
          }

          else
          {
            v2 = v256;
            sub_230D82664((v256 + 93), (v256 + 101));
          }

          if (*(v2 + 1790) == 1)
          {
            sub_230D8D4F8(v2 + 101, v2 + 117);
            sub_230D0E394((v2 + 936), (v2 + 968));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v258 = v242;
            v116 = v41;
            v117 = sub_230DA41A0(v254, v41);
            v119 = *(v242 + 16);
            v120 = (v118 & 1) == 0;
            v121 = __OFADD__(v119, v120);
            v122 = v119 + v120;
            if (v121)
            {
              goto LABEL_178;
            }

            v123 = v118;
            if (*(v242 + 24) < v122)
            {
              sub_230DB7074(v122, isUniquelyReferenced_nonNull_native);
              v117 = sub_230DA41A0(v254, v116);
              if ((v123 & 1) != (v124 & 1))
              {
                goto LABEL_173;
              }

              goto LABEL_100;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_100:
              if (v123)
              {
                goto LABEL_101;
              }
            }

            else
            {
              v138 = v117;
              sub_230DBA17C();
              v117 = v138;
              if (v123)
              {
LABEL_101:
                v125 = v117;

                v242 = v258;
                v126 = (v258[7] + 32 * v125);
                __swift_destroy_boxed_opaque_existential_1(v126);
                v127 = (v2 + 968);
LABEL_109:
                sub_230D0E394(v127, v126);
                __swift_destroy_boxed_opaque_existential_1(v2 + 93);
                v63 = v2 + 101;
                goto LABEL_64;
              }
            }

            v139 = v258;
            v258[(v117 >> 6) + 8] |= 1 << v117;
            v140 = (v139[6] + 16 * v117);
            *v140 = v254;
            v140[1] = v116;
            sub_230D0E394((v2 + 968), (v139[7] + 32 * v117));
            __swift_destroy_boxed_opaque_existential_1(v2 + 93);
            v141 = v139[2];
            v121 = __OFADD__(v141, 1);
            v142 = v141 + 1;
            if (v121)
            {
              goto LABEL_179;
            }

LABEL_116:
            v242 = v139;
            v139[2] = v142;
            v63 = v2 + 101;
            goto LABEL_64;
          }

          v82 = sub_230E69680();
          if (v82 > 4)
          {
            sub_230E68D70();

            v92 = sub_230E68D60();
            v93 = sub_230E693E0();

            v94 = os_log_type_enabled(v92, v93);
            v95 = v257[194];
            v96 = v257[170];
            v97 = v257[164];
            if (v94)
            {
              v98 = v41;
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v258 = v100;
              *v99 = 136315394;
              v101 = sub_230D7E620(v69, v68, &v258);

              *(v99 + 4) = v101;
              *(v99 + 12) = 2080;
              v102 = v254;
              *(v99 + 14) = sub_230D7E620(v254, v98, &v258);
              _os_log_impl(&dword_230D02000, v92, v93, "[ServicesIntelligenceProvider][logMetrics] Unknown type %s in schema for field %s, omitting", v99, 0x16u);
              swift_arrayDestroy();
              v103 = v100;
              v3 = v234;
              MEMORY[0x23191EAE0](v103, -1, -1);
              v104 = v99;
              v41 = v98;
              MEMORY[0x23191EAE0](v104, -1, -1);

              v95(v96, v97);
              v6 = v248;
            }

            else
            {

              v95(v96, v97);
              v6 = v248;
              v102 = v254;
            }

            v2 = v256;
            sub_230D8F4B0(&v258, v102, v41);

            __swift_destroy_boxed_opaque_existential_1(v256 + 93);
            __swift_destroy_boxed_opaque_existential_1(v256 + 101);
            v1 = v257;
            goto LABEL_56;
          }

          v83 = v82;

          if (sub_230D8E084(v2 + 808, v83))
          {
            v1 = v257;
            sub_230D8D4F8(v2 + 101, v2 + 113);
            v128 = swift_isUniquelyReferenced_nonNull_native();
            v258 = v242;
            v129 = v41;
            v130 = sub_230DA41A0(v254, v41);
            v132 = *(v242 + 16);
            v133 = (v131 & 1) == 0;
            v121 = __OFADD__(v132, v133);
            v134 = v132 + v133;
            if (v121)
            {
              goto LABEL_180;
            }

            v135 = v131;
            v4 = v250;
            if (*(v242 + 24) < v134)
            {
              sub_230DB7074(v134, v128);
              v130 = sub_230DA41A0(v254, v129);
              if ((v135 & 1) != (v136 & 1))
              {
                goto LABEL_173;
              }

              goto LABEL_107;
            }

            if (v128)
            {
LABEL_107:
              if (v135)
              {
                goto LABEL_108;
              }
            }

            else
            {
              v143 = v130;
              sub_230DBA17C();
              v130 = v143;
              if (v135)
              {
LABEL_108:
                v137 = v130;

                v242 = v258;
                v126 = (v258[7] + 32 * v137);
                __swift_destroy_boxed_opaque_existential_1(v126);
                v127 = (v2 + 904);
                goto LABEL_109;
              }
            }

            v139 = v258;
            v258[(v130 >> 6) + 8] |= 1 << v130;
            v144 = (v139[6] + 16 * v130);
            *v144 = v254;
            v144[1] = v129;
            sub_230D0E394((v2 + 904), (v139[7] + 32 * v130));
            __swift_destroy_boxed_opaque_existential_1(v2 + 93);
            v145 = v139[2];
            v121 = __OFADD__(v145, 1);
            v142 = v145 + 1;
            if (v121)
            {
              goto LABEL_181;
            }

            goto LABEL_116;
          }

          v1 = v257;
          sub_230E68D70();
          sub_230D82664(v2 + 808, v2 + 840);

          v84 = sub_230E68D60();
          v85 = sub_230E693E0();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v258 = v87;
            *v86 = 136315650;
            *(v86 + 4) = sub_230D7E620(v254, v41, &v258);
            *(v86 + 12) = 2080;
            if (v83 <= 1u)
            {
              v89 = v41;
              v88 = v257;
              v90 = 0xE600000000000000;
              if (v83)
              {
                v91 = 0x7265626D756ELL;
              }

              else
              {
                v91 = 0x676E69727473;
              }
            }

            else
            {
              v88 = v257;
              v89 = v41;
              if (v83 == 2)
              {
                v90 = 0xE400000000000000;
                v91 = 1819242338;
              }

              else if (v83 == 3)
              {
                v90 = 0xEA00000000007972;
                v91 = 0x616E6F6974636964;
              }

              else
              {
                v90 = 0xE500000000000000;
                v91 = 0x7961727261;
              }
            }

            v252 = v88[194];
            v109 = v257[171];
            v236 = v257[164];
            v110 = sub_230D7E620(v91, v90, &v258);

            *(v86 + 14) = v110;
            *(v86 + 22) = 2080;
            v2 = v256;
            sub_230D82664((v256 + 105), (v256 + 109));
            v111 = sub_230E690C0();
            v113 = v112;
            __swift_destroy_boxed_opaque_existential_1(v256 + 105);
            v114 = sub_230D7E620(v111, v113, &v258);

            *(v86 + 24) = v114;
            _os_log_impl(&dword_230D02000, v84, v85, "[ServicesIntelligenceProvider][logMetrics] Field %s type mismatch. Expected: %s, got: %s", v86, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23191EAE0](v87, -1, -1);
            MEMORY[0x23191EAE0](v86, -1, -1);

            v1 = v257;
            v252(v109, v236);
            v6 = v248;
            v105 = v234;
          }

          else
          {
            v105 = v3;
            v89 = v41;
            v106 = v257[194];
            v107 = v257[171];
            v108 = v257[164];

            __swift_destroy_boxed_opaque_existential_1(v2 + 105);
            v106(v107, v108);
          }

          sub_230D8F4B0(&v258, v254, v89);

          __swift_destroy_boxed_opaque_existential_1(v2 + 93);
          __swift_destroy_boxed_opaque_existential_1(v2 + 101);
          v4 = v250;
          v3 = v105;
        }

        else
        {
          v70 = v3;
          sub_230E68D70();

          v71 = sub_230E68D60();
          v72 = v41;
          v73 = sub_230E693E0();

          v74 = os_log_type_enabled(v71, v73);
          v75 = v1[194];
          v76 = v1[169];
          v77 = v1[164];
          if (v74)
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v258 = v79;
            *v78 = 136315138;
            *(v78 + 4) = sub_230D7E620(v254, v72, &v258);
            _os_log_impl(&dword_230D02000, v71, v73, "[ServicesIntelligenceProvider][logMetrics] Field %s not found in schema, omitting", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v79);
            v80 = v79;
            v6 = v248;
            MEMORY[0x23191EAE0](v80, -1, -1);
            v81 = v78;
            v64 = v254;
            MEMORY[0x23191EAE0](v81, -1, -1);
          }

          v75(v76, v77);
          v2 = v256;
          sub_230D8F4B0(&v258, v64, v72);

          __swift_destroy_boxed_opaque_existential_1(v256 + 93);
          v3 = v70;
LABEL_56:
          v4 = v250;
        }
      }

      else
      {
        sub_230E68D70();
        v57 = sub_230E68D60();
        v58 = sub_230E69400();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_230D02000, v57, v58, "[ServicesIntelligenceProvider][logMetrics] property without label.", v59, 2u);
          MEMORY[0x23191EAE0](v59, -1, -1);
        }

        v60 = v1[194];
        v61 = v1[168];
        v62 = v1[164];

        v60(v61, v62);
        v63 = v2 + 93;
LABEL_64:
        __swift_destroy_boxed_opaque_existential_1(v63);
      }
    }

    if (!*(v242 + 16))
    {

      sub_230E68D70();
      v146 = sub_230E68D60();
      v147 = sub_230E693E0();
      v148 = os_log_type_enabled(v146, v147);
      v149 = v1[194];
      v150 = v1[167];
      v151 = v1[164];
      v152 = v1[162];
      v153 = v1[154];
      if (v148)
      {
        v154 = swift_slowAlloc();
        *v154 = 0;
        _os_log_impl(&dword_230D02000, v146, v147, "[ServicesIntelligenceProvider][logMetrics] No valid fields for event, skipping", v154, 2u);
        v155 = v154;
        v6 = v248;
        MEMORY[0x23191EAE0](v155, -1, -1);
      }

      v149(v150, v151);
      (*v225)(v152, v153);
      v3 = v234;
      v2 = v256;
LABEL_19:
      v17 = v232;
      if (v232 == sub_230E69290())
      {
        goto LABEL_170;
      }

      continue;
    }

    break;
  }

  if ((*(v2 + 1791) & 1) == 0)
  {
    LOBYTE(v258) = v241;
    v259 = v247;
    v260 = v3;
    v261 = v4;
    v262 = v6;
    v263 = v223;
    if (!sub_230D6BFA8(v238, v244))
    {
      (*v225)(v1[162], v1[154]);

      goto LABEL_19;
    }
  }

  v156 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v157 = sub_230E69030();

  v158 = [v156 initWithTopic_];

  v159 = sub_230E69030();

  [v158 setEventType_];

  v245 = v158;
  [v158 setAnonymous_];
  v160 = 0;
  v161 = -1 << *(v242 + 32);
  if (-v161 < 64)
  {
    v162 = ~(-1 << -v161);
  }

  else
  {
    v162 = -1;
  }

  v163 = v162 & *(v242 + 64);
  v164 = (63 - v161) >> 6;
  if (v163)
  {
    while (1)
    {
      v165 = v160;
LABEL_135:
      v168 = __clz(__rbit64(v163));
      v163 &= v163 - 1;
      v169 = v168 | (v165 << 6);
      v170 = (*(v242 + 48) + 16 * v169);
      v172 = *v170;
      v171 = v170[1];
      v173 = v256;
      sub_230D82664(*(v242 + 56) + 32 * v169, (v256 + 69));
      v1[44] = v172;
      v1[45] = v171;
      sub_230D0E394(v256 + 69, v1 + 23);

      v167 = v165;
LABEL_136:
      v174 = v173[13];
      v173[9] = v173[12];
      v173[10] = v174;
      v173[11] = v173[14];
      if (!v1[39])
      {
        break;
      }

      sub_230D0E394(v1 + 20, (v173 + 712));
      __swift_project_boxed_opaque_existential_1(v173 + 89, v1[112]);
      v175 = sub_230E698B0();
      __swift_destroy_boxed_opaque_existential_1(v173 + 89);
      v176 = sub_230E69030();

      [v245 setProperty:v175 forBodyKey:v176];

      swift_unknownObjectRelease();
      v160 = v167;
      if (!v163)
      {
        goto LABEL_128;
      }
    }

    v177 = [v245 dictionaryForPosting];
    v178 = sub_230E68F50();

    v179 = 0;
    v180 = v178 + 64;
    v239 = v178;
    v181 = -1 << *(v178 + 32);
    if (-v181 < 64)
    {
      v182 = ~(-1 << -v181);
    }

    else
    {
      v182 = -1;
    }

    v183 = v182 & *(v178 + 64);
    v184 = (63 - v181) >> 6;
    v6 = v248;
    v2 = v173;
    v237 = v178 + 64;
    while (1)
    {
      if (v183)
      {
        v185 = v4;
        v186 = v6;
        v187 = v179;
LABEL_156:
        v191 = __clz(__rbit64(v183));
        v183 &= v183 - 1;
        v192 = v191 | (v187 << 6);
        sub_230D8FF88(*(v239 + 48) + 40 * v192, v235);
        sub_230D82664(*(v239 + 56) + 32 * v192, v2 + 520);
        v193 = *(v235 + 16);
        *v240 = *v235;
        *(v240 + 1) = v193;
        v240[4] = *(v235 + 32);
        sub_230D0E394((v2 + 520), v1 + 8);
        v189 = v187;
        v194 = v240;
        v190 = v246;
        v6 = v186;
        v4 = v185;
        v180 = v237;
      }

      else
      {
        v188 = v184 <= v179 + 1 ? v179 + 1 : v184;
        v189 = v188 - 1;
        v190 = v246;
        while (1)
        {
          v187 = v179 + 1;
          if (__OFADD__(v179, 1))
          {
            goto LABEL_172;
          }

          if (v187 >= v184)
          {
            break;
          }

          v183 = *(v180 + 8 * v187);
          ++v179;
          if (v183)
          {
            v185 = v4;
            v186 = v6;
            goto LABEL_156;
          }
        }

        v183 = 0;
        v194 = v240;
        v240[8] = 0;
        *(v240 + 2) = 0u;
        *(v240 + 3) = 0u;
        *v240 = 0u;
        *(v240 + 1) = 0u;
      }

      v190[8] = v194[8];
      v195 = *(v194 + 3);
      *(v190 + 2) = *(v194 + 2);
      *(v190 + 3) = v195;
      v196 = *(v194 + 1);
      *v190 = *v194;
      *(v190 + 1) = v196;
      if (!v1[5])
      {
        break;
      }

      v255 = v189;
      v197 = *(v190 + 1);
      v2[25] = *v190;
      v2[26] = v197;
      *(v2 + 54) = v190[4];
      sub_230D0E394(v1 + 7, (v2 + 616));
      sub_230E68D70();
      sub_230D8FF88((v2 + 25), (v2 + 20));
      sub_230D82664(v2 + 616, v2 + 648);
      v198 = sub_230E68D60();
      v199 = sub_230E693E0();
      v200 = os_log_type_enabled(v198, v199);
      v201 = v1[194];
      v253 = v1[166];
      v249 = v1[164];
      if (v200)
      {
        v202 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        v258 = v203;
        *v202 = 136315394;
        v243 = v201;
        v204 = sub_230E694F0();
        v206 = v205;
        sub_230D8FFE4((v256 + 40));
        v207 = sub_230D7E620(v204, v206, &v258);

        *(v202 + 4) = v207;
        *(v202 + 12) = 2080;
        sub_230D82664((v256 + 81), (v256 + 85));
        v208 = sub_230E690C0();
        v210 = v209;
        __swift_destroy_boxed_opaque_existential_1(v256 + 81);
        v211 = sub_230D7E620(v208, v210, &v258);
        v2 = v256;

        *(v202 + 14) = v211;
        _os_log_impl(&dword_230D02000, v198, v199, "[ServicesIntelligenceProvider] Field: %s = %s", v202, 0x16u);
        swift_arrayDestroy();
        v212 = v203;
        v4 = v250;
        v1 = v257;
        MEMORY[0x23191EAE0](v212, -1, -1);
        v213 = v202;
        v6 = v248;
        MEMORY[0x23191EAE0](v213, -1, -1);

        v243(v253, v249);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v2 + 81);
        sub_230D8FFE4((v2 + 20));
        v201(v253, v249);
      }

      __swift_destroy_boxed_opaque_existential_1(v2 + 77);
      sub_230D8FFE4((v2 + 25));
      v179 = v255;
    }

    v214 = v1[162];
    v215 = v1[154];

    [v224 enqueueEvent_];

    (*v225)(v214, v215);
    v121 = __OFADD__(v226++, 1);
    if (!v121)
    {
      v3 = v234;
      goto LABEL_19;
    }

LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
  }

LABEL_128:
  if (v164 <= v160 + 1)
  {
    v166 = v160 + 1;
  }

  else
  {
    v166 = v164;
  }

  v167 = v166 - 1;
  while (1)
  {
    v165 = v160 + 1;
    if (__OFADD__(v160, 1))
    {
      break;
    }

    if (v165 >= v164)
    {
      v163 = 0;
      v173 = v256;
      *(v256 + 13) = 0u;
      *(v256 + 14) = 0u;
      *(v256 + 12) = 0u;
      goto LABEL_136;
    }

    v163 = *(v242 + 64 + 8 * v165);
    ++v160;
    if (v163)
    {
      goto LABEL_135;
    }
  }

  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:

  return sub_230E69950();
}

uint64_t sub_230D8CFB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D8D0F8()
{
  v1 = *(v0[165] + 8);
  v1(v0[173], v0[164]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v2 = v0[189];
  v0[194] = v1;
  v0[193] = v2;
  v3 = v0[156];

  return MEMORY[0x2822009F8](sub_230D8B1B8, v3, 0);
}

uint64_t sub_230D8D1E8()
{
  (*(v0[165] + 8))(v0[173], v0[164]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[195] = v0[189];
  v1 = v0[156];

  return MEMORY[0x2822009F8](sub_230D8CFB0, v1, 0);
}

uint64_t ServicesIntelligenceProvider.logMetrics<A>(_:amsBag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 + 8);
  *(v6 + 16) = *a2;
  *(v6 + 24) = v11;
  *(v6 + 32) = v5;
  v12 = swift_task_alloc();
  *(v6 + 40) = v12;
  *v12 = v6;
  v12[1] = sub_230D8D3AC;

  return sub_230D89B48(a1, v6 + 16, 0, 0, a3, a4, a5);
}

uint64_t sub_230D8D3AC()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_230D8D4E0, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

id sub_230D8D4F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = sub_230E68D80();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230D82664(a1, &v93);
  v10 = sub_230D90038(0, &qword_27DB5BD08, 0x277CBEB68);
  if (swift_dynamicCast())
  {

    result = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    a2[3] = v10;
    *a2 = result;
    return result;
  }

  sub_230D82664(a1, &v93);
  v12 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {

    return sub_230D82664(a1, a2);
  }

  sub_230D82664(a1, &v93);
  if (swift_dynamicCast())
  {
    return sub_230D82664(a1, a2);
  }

  sub_230D82664(a1, &v93);
  if (swift_dynamicCast())
  {
    return sub_230D82664(a1, a2);
  }

  sub_230D82664(a1, &v93);
  if (swift_dynamicCast())
  {
    return sub_230D82664(a1, a2);
  }

  sub_230D82664(a1, &v93);
  if (swift_dynamicCast())
  {
    return sub_230D82664(a1, a2);
  }

  sub_230D82664(a1, &v93);
  sub_230D90038(0, &qword_27DB5BD10, 0x277CCABB0);
  if (swift_dynamicCast())
  {

    return sub_230D82664(a1, a2);
  }

  sub_230D82664(a1, &v93);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD18, &qword_230E734C8);
  v14 = swift_dynamicCast();
  v87 = v2;
  if (v14)
  {
    v15 = v13;
    v16 = v90;
    v17 = *(v90 + 16);
    if (v17)
    {
      *&v96[0] = MEMORY[0x277D84F90];
      sub_230D48EA8(0, v17, 0);
      v18 = *&v96[0];
      v19 = v16 + 32;
      do
      {
        sub_230D82664(v19, &v90);
        sub_230D8D4F8(&v90, &v93);
        __swift_destroy_boxed_opaque_existential_1(&v90);
        *&v96[0] = v18;
        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_230D48EA8((v20 > 1), v21 + 1, 1);
          v18 = *&v96[0];
        }

        *(v18 + 16) = v21 + 1;
        sub_230D0E394(&v93, (v18 + 32 * v21 + 32));
        v19 += 32;
        --v17;
      }

      while (v17);
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    a2[3] = v15;
    *a2 = v18;
    return result;
  }

  sub_230D82664(a1, &v93);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD20, &qword_230E75CF0);
  if (swift_dynamicCast())
  {
    v84 = v22;
    v23 = v90;
    a1 = sub_230D0E264(MEMORY[0x277D84F90]);
    v24 = 0;
    v85 = v23;
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v23 + 64;
    v28 = v26 & *(v23 + 64);
    v6 = (v25 + 63) >> 6;
    while (1)
    {
      if (!v28)
      {
        if (v6 <= &v24->isa + 1)
        {
          v30 = &v24->isa + 1;
        }

        else
        {
          v30 = v6;
        }

        v31 = (v30 - 1);
        while (1)
        {
          v5 = &v24->isa + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v5 >= v6)
          {
            v28 = 0;
            v91 = 0u;
            v92 = 0u;
            v90 = 0u;
            goto LABEL_35;
          }

          v28 = *(v27 + 8 * v5);
          v24 = (v24 + 1);
          if (v28)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_56:
        v62 = v2;
        v63 = sub_230E687E0();

LABEL_62:
        swift_willThrow();
        sub_230D0F4A8(v82, v83);

        sub_230E68D70();
        v68 = v63;
        v69 = sub_230E68D60();
        v70 = sub_230E693E0();
        MEMORY[0x23191E910](v63);
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v87 = v63;
          v72 = v71;
          v73 = swift_slowAlloc();
          v86 = v69;
          v85 = v73;
          *v72 = 138412290;
          v74 = v87;
          v75 = _swift_stdlib_bridgeErrorToNSError();
          *(v72 + 4) = v75;
          v76 = v85;
          *v85 = v75;
          v77 = v70;
          v78 = v86;
          _os_log_impl(&dword_230D02000, v86, v77, "[ServicesIntelligenceProvider] Failed to encode object: %@", v72, 0xCu);
          sub_230D2D9F8(v76, &qword_27DB5D7D0, &qword_230E734E0);
          MEMORY[0x23191EAE0](v76, -1, -1);
          MEMORY[0x23191EAE0](v72, -1, -1);

          MEMORY[0x23191E910](v87);
        }

        else
        {
          MEMORY[0x23191E910](v63);
        }

        (*(v6 + 8))(v9, v5);
LABEL_66:
        __swift_destroy_boxed_opaque_existential_1(&v93);
LABEL_67:
        sub_230D82664(a1, &v93);
        result = sub_230E690C0();
        a2[3] = v12;
        *a2 = result;
        a2[1] = v79;
        return result;
      }

      v5 = v24;
LABEL_34:
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = v32 | (v5 << 6);
      v34 = (v85[6] + 16 * v33);
      v36 = *v34;
      v35 = v34[1];
      sub_230D82664(v85[7] + 32 * v33, v96);
      *&v90 = v36;
      *(&v90 + 1) = v35;
      sub_230D0E394(v96, &v91);

      v31 = v5;
LABEL_35:
      v93 = v90;
      v94 = v91;
      v95 = v92;
      v12 = *(&v90 + 1);
      if (!*(&v90 + 1))
      {

        a2[3] = v84;
        *a2 = a1;
        return result;
      }

      v37 = v27;
      v86 = v31;
      v38 = v93;
      sub_230D0E394(&v94, &v90);
      sub_230D8D4F8(&v90, v96);
      sub_230D0E394(v96, v89);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = a1;
      v40 = sub_230DA41A0(v38, v12);
      v42 = a1[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        __break(1u);
LABEL_70:
        __break(1u);
      }

      v9 = v41;
      if (a1[3] < v45)
      {
        break;
      }

      v2 = v87;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = v40;
        sub_230DBA17C();
        v40 = v50;
LABEL_39:
        v2 = v87;
      }

      v27 = v37;
      if (v9)
      {
        v29 = v40;

        a1 = v88;
        v12 = (v88[7] + 32 * v29);
        __swift_destroy_boxed_opaque_existential_1(v12);
        sub_230D0E394(v89, v12);
        __swift_destroy_boxed_opaque_existential_1(&v90);
      }

      else
      {
        a1 = v88;
        v88[(v40 >> 6) + 8] |= 1 << v40;
        v47 = (a1[6] + 16 * v40);
        *v47 = v38;
        v47[1] = v12;
        sub_230D0E394(v89, (a1[7] + 32 * v40));
        __swift_destroy_boxed_opaque_existential_1(&v90);
        v48 = a1[2];
        v44 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v44)
        {
          goto LABEL_70;
        }

        a1[2] = v49;
      }

      v24 = v86;
    }

    sub_230DB7074(v45, isUniquelyReferenced_nonNull_native);
    v40 = sub_230DA41A0(v38, v12);
    if ((v9 & 1) != (v46 & 1))
    {
      result = sub_230E69950();
      __break(1u);
      return result;
    }

    goto LABEL_39;
  }

  sub_230D82664(a1, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BD28, &qword_230E734D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v92 = 0;
    v90 = 0u;
    v91 = 0u;
    sub_230D2D9F8(&v90, &unk_27DB5BD30, &qword_230E734D8);
    goto LABEL_67;
  }

  v85 = v13;
  sub_230D1D080(&v90, &v93);
  sub_230E686F0();
  swift_allocObject();
  v51 = sub_230E686E0();
  v86 = v95;
  __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
  v86 = v51;
  v52 = sub_230E686D0();
  v84 = v22;
  v53 = v52;
  v55 = v54;
  v56 = objc_opt_self();
  v82 = v53;
  v83 = v55;
  v57 = sub_230E68880();
  *&v90 = 0;
  v81 = v56;
  v58 = [v56 JSONObjectWithData:v57 options:0 error:&v90];

  v2 = v90;
  if (!v58)
  {
    goto LABEL_56;
  }

  v59 = v90;
  sub_230E694A0();
  swift_unknownObjectRelease();
  v60 = v84;
  if (swift_dynamicCast())
  {
    v61 = *&v96[0];
    *(&v91 + 1) = v60;
  }

  else
  {
    v64 = sub_230E68880();
    *&v90 = 0;
    v65 = [v81 JSONObjectWithData:v64 options:0 error:&v90];

    if (!v65)
    {
      v67 = v90;
      v63 = sub_230E687E0();

      goto LABEL_62;
    }

    v66 = v90;
    sub_230E694A0();
    swift_unknownObjectRelease();
    if (!swift_dynamicCast())
    {
      sub_230D0F4A8(v82, v83);

      goto LABEL_66;
    }

    v61 = *&v96[0];
    *(&v91 + 1) = v85;
  }

  *&v90 = v61;
  sub_230D8D4F8(&v90, a2);
  sub_230D0F4A8(v82, v83);

  __swift_destroy_boxed_opaque_existential_1(&v90);
  return __swift_destroy_boxed_opaque_existential_1(&v93);
}

uint64_t sub_230D8E084(uint64_t a1, unsigned __int8 a2)
{
  sub_230D82664(a1, v9);
  sub_230D90038(0, &qword_27DB5BD08, 0x277CBEB68);
  if (swift_dynamicCast())
  {

    return 0;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_230D82664(a1, v9);
      if (swift_dynamicCast())
      {
        return 1;
      }

      sub_230D82664(a1, v9);
      if (swift_dynamicCast())
      {
        return 1;
      }

      sub_230D82664(a1, v9);
      if (swift_dynamicCast())
      {
        return 1;
      }

      else
      {
        sub_230D82664(a1, v9);
        sub_230D90038(0, &qword_27DB5BD10, 0x277CCABB0);
        result = swift_dynamicCast();
        if (result)
        {
          v7 = result;

          return v7;
        }
      }
    }

    else
    {
      sub_230D82664(a1, v9);
      result = swift_dynamicCast();
      if (result)
      {
LABEL_13:
        v7 = result;

        return v7;
      }
    }
  }

  else
  {
    if (a2 == 2)
    {
      sub_230D82664(a1, v9);
      return swift_dynamicCast();
    }

    sub_230D82664(a1, v9);
    if (a2 == 3)
    {
      v5 = &qword_27DB5BD20;
      v6 = &qword_230E75CF0;
    }

    else
    {
      v5 = &qword_27DB5BD18;
      v6 = &qword_230E734C8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    result = swift_dynamicCast();
    if (result)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t ServicesIntelligenceProvider.enqueueLogOperationMetrics(_:amsBag:)(_OWORD *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v17[-v7];
  v9 = a1[1];
  v18[0] = *a1;
  v18[1] = v9;
  v18[2] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_230E6B3B0;
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  v12 = a1[1];
  *(v11 + 24) = *a1;
  *(v11 + 40) = v12;
  *(v11 + 56) = a1[2];
  *(v11 + 72) = 0;
  *(v11 + 80) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_230E73410;
  *(v13 + 24) = v11;
  *(v10 + 32) = &unk_230E6E478;
  *(v10 + 40) = v13;
  v14 = sub_230E69310();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v10;

  sub_230D8FD74(v18, v17);
  swift_unknownObjectRetain();
  sub_230D8F204(0, 0, v8, &unk_230E73420, v15);
}

uint64_t sub_230D8E4A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v6 + 217) = a5;
  *(v6 + 216) = a4;
  *(v6 + 136) = a3;
  *(v6 + 144) = a6;
  *(v6 + 120) = a1;
  *(v6 + 128) = a2;
  v7 = sub_230E68910();
  *(v6 + 152) = v7;
  *(v6 + 160) = *(v7 - 8);
  *(v6 + 168) = swift_task_alloc();
  v8 = sub_230E68D80();
  *(v6 + 176) = v8;
  *(v6 + 184) = *(v8 - 8);
  *(v6 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D8E5CC, 0, 0);
}

uint64_t sub_230D8E5CC()
{
  v1 = *(v0 + 128);
  *(*(v0 + 120) + 24) = &type metadata for LogMetricsResponse;
  return MEMORY[0x2822009F8](sub_230D8E5F4, v1, 0);
}

uint64_t sub_230D8E5F4()
{
  sub_230E68D70();
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][logOperationMetrics] Starting operation metrics request", v3, 2u);
    MEMORY[0x23191EAE0](v3, -1, -1);
  }

  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v10 = *(v0 + 136);

  (*(v5 + 8))(v4, v7);
  v11 = v10[1];
  v12 = v10[3];
  v26 = v10[2];
  v27 = *v10;
  *(v0 + 104) = v12;
  *(v0 + 72) = *(v10 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCE0, &qword_230E73478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B3B0;
  *(inited + 32) = 0x6F6974617265706FLL;
  *(inited + 40) = 0xEA0000000000736ELL;
  *(inited + 48) = v12;
  sub_230D0FA64(v0 + 104, v0 + 112, &qword_27DB5BB18, &qword_230E72A88);
  v14 = sub_230D0E3A4(inited);
  swift_setDeallocating();
  sub_230D2D9F8(inited + 32, &qword_27DB5BCE8, &qword_230E73480);

  sub_230E68900();
  sub_230E688D0();
  v16 = v15;
  (*(v9 + 8))(v6, v8);
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BCF0, &qword_230E73488);
  v19 = swift_allocObject();
  *(v0 + 200) = v19;
  *(v19 + 16) = xmmword_230E6B3B0;
  *(v19 + 32) = v14;
  *(v19 + 40) = v27;
  *(v19 + 48) = v11;
  *(v19 + 56) = v26;
  *(v19 + 64) = v16 * 1000.0;
  *(v19 + 72) = v17;
  *(v19 + 80) = v18;
  sub_230D0FA64(v0 + 72, v0 + 88, &qword_27DB5BD50, &qword_230E73510);
  v20 = swift_task_alloc();
  *(v0 + 208) = v20;
  *v20 = v0;
  v20[1] = sub_230D8E900;
  v21 = *(v0 + 144);
  v22 = *(v0 + 217);
  v23 = *(v0 + 216);
  v24 = *(v0 + 120);

  return sub_230D8328C(v24, 0, v19, v23, v22, v21);
}

uint64_t sub_230D8E900()
{

  if (v0)
  {
    MEMORY[0x23191E910](v0);

    v1 = sub_230D8EAB4;
  }

  else
  {

    v1 = sub_230D8EA48;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_230D8EA48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D8EAB4()
{
  v1 = *(v0 + 120);
  __swift_deallocate_boxed_opaque_existential_0(v1);
  *v1 = 0u;
  v1[1] = 0u;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230D8EB34(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_230D8EC2C;

  return v6(a1);
}

uint64_t sub_230D8EC2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ServicesIntelligenceProvider.enqueueLogMetrics<A>(_:amsBag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v6[0] = *a1;
  v7 = v4;
  return sub_230D8ED6C(v6, 0, 0, a2, a3, a4);
}

uint64_t sub_230D8ED6C(char *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v24 - v14;
  v16 = *a1;
  v17 = *(a1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_230E6B3B0;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  *(v19 + 32) = v6;
  *(v19 + 40) = v16;
  *(v19 + 48) = v17;
  *(v19 + 56) = a2;
  *(v19 + 57) = a3;
  *(v19 + 64) = v25;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_230E734F8;
  *(v20 + 24) = v19;
  *(v18 + 32) = &unk_230E73500;
  *(v18 + 40) = v20;
  v21 = sub_230E69310();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v18;
  swift_unknownObjectRetain();

  sub_230D8F204(0, 0, v15, &unk_230E73508, v22);
}

uint64_t sub_230D8EF64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v10;
  *(v8 + 90) = a6;
  *(v8 + 89) = a5;
  *(v8 + 48) = a4;
  *(v8 + 56) = a7;
  *(v8 + 88) = a3;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  return MEMORY[0x2822009F8](sub_230D8EFA0, 0, 0);
}

uint64_t sub_230D8EFA0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 24) = v1;
  *(v2 + 24) = &type metadata for LogMetricsResponse;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_230D8F06C;
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 90);
  v8 = *(v0 + 89);
  v9 = *(v0 + 32);

  return sub_230D89B48(v9, v0 + 16, v8, v7, v6, v4, v5);
}

uint64_t sub_230D8F06C()
{

  if (v0)
  {
    MEMORY[0x23191E910](v0);
    v1 = sub_230D8F198;
  }

  else
  {
    v1 = sub_230D8F184;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_230D8F198()
{
  v1 = *(v0 + 32);
  __swift_deallocate_boxed_opaque_existential_0(v1);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230D8F204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_230D0FA64(a3, v23 - v10, &qword_27DB5B010, &unk_230E733F0);
  v12 = sub_230E69310();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_230D2D9F8(v11, &qword_27DB5B010, &unk_230E733F0);
  }

  else
  {
    sub_230E69300();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_230E692D0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_230E690F0() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_230D2D9F8(a3, &qword_27DB5B010, &unk_230E733F0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_230D2D9F8(a3, &qword_27DB5B010, &unk_230E733F0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_230D8F4B0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_230E699B0();
  sub_230E69100();
  v8 = sub_230E699D0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_230E698C0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_230D8F860(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_230D8F600(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BD40, &qword_230E734E8);
  result = sub_230E69510();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_230E699B0();
      sub_230E69100();
      result = sub_230E699D0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_230D8F860(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_230D8F600(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_230D8F9E0();
      goto LABEL_16;
    }

    sub_230D8FB3C(v8 + 1);
  }

  v10 = *v4;
  sub_230E699B0();
  sub_230E69100();
  result = sub_230E699D0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_230E698C0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_230E69940();
  __break(1u);
  return result;
}

void *sub_230D8F9E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BD40, &qword_230E734E8);
  v2 = *v0;
  v3 = sub_230E69500();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_230D8FB3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BD40, &qword_230E734E8);
  result = sub_230E69510();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_230E699B0();

      sub_230E69100();
      result = sub_230E699D0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_230D8FDD0()
{
  result = qword_27DB5BCF8;
  if (!qword_27DB5BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BCF8);
  }

  return result;
}

void sub_230D8FE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

id sub_230D8FE88(id a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    a1 = [objc_allocWithZone(MEMORY[0x277CEE598]) initWithContainerID:v3 bag:a1];

    [a1 setMonitorsLifecycleEvents_];
    [objc_opt_self() setFlushDelayEnabled_];
  }

  else
  {
    sub_230D8FDD0();
    swift_allocError();
    *v4 = 0x80;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_230D90038(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_230D90080(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  v9 = *(v1 + 64);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_230D1BF00;

  return sub_230D8EF64(a1, v5, v10, v6, v7, v8, v9, v4);
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x23191EAE0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_230D90274()
{

  return sub_230D89848();
}

void sub_230D902E8(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[8] != 1)
  {
    v11 = sub_230E68D60();
    v12 = sub_230E693F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "[AppUsageAggregator][generateAppInsights] No app usage sessions found";
LABEL_12:
      _os_log_impl(&dword_230D02000, v11, v12, v14, v13, 2u);
      MEMORY[0x23191EAE0](v13, -1, -1);
    }

LABEL_13:

    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    v11 = sub_230E68D60();
    v12 = sub_230E693F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "[AppUsageAggregator][generateAppInsights] App usage sessions array is empty";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v5 = sub_230E68D60();
  v6 = sub_230E693E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v3 + 16);
    _os_log_impl(&dword_230D02000, v5, v6, "[AppUsageAggregator][generateAppInsights] Processing %ld app usage sessions", v7, 0xCu);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v8 = *(v3 + 16);
  if (v8 > v4 - 1)
  {
    if (v4 == 1)
    {
      v9 = 0;
      v10 = 0.0;
    }

    else
    {
      v9 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v15 = (v3 + 104);
      v10 = 0.0;
      v16 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v17 = *(v15 - 5);
        v18 = *v15;
        v15 += 10;
        v10 = v10 + v17 + v18;
        v16 -= 2;
      }

      while (v16);
      if (v4 == v9)
      {
        goto LABEL_19;
      }
    }

    v19 = v4 - v9;
    v20 = (v3 + 40 * v9 + 64);
    do
    {
      v21 = *v20;
      v20 += 5;
      v10 = v10 + v21;
      --v19;
    }

    while (v19);
LABEL_19:
    v22 = round(v10 * 100.0) / 100.0;
    v23 = sub_230D90E74(v3);

    *a2 = v8;
    *(a2 + 8) = v22;
    *(a2 + 16) = round(v22 / v8 * 100.0) / 100.0;
    *(a2 + 24) = v23;
    return;
  }

  __break(1u);
}

uint64_t sub_230D90560(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_230D4510C(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  result = sub_230E69880();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[5];
          if (v12[1] >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 4);
          v17 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v17;
          *(v12 - 2) = v14;
          *(v12 - 1) = v15;
          *v12 = v16;
          v12[1] = v13;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B330, &qword_230E6F6B0);
      v7 = sub_230E69270();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_230D906C4(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_230D906C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_230D44FDC(v8);
      v8 = result;
    }

    v86 = (v8 + 16);
    v87 = *(v8 + 16);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = (v8 + 16 * v87);
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_230D90C70((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_116;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = *a3 + 32 * v9;
      v12 = *(v11 + 24);
      v13 = v9 + 2;
      v14 = (v11 + 88);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 4;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v10) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 32 * v7 - 16;
        v19 = 32 * v9 + 24;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v28 + v19);
            v23 = (v28 + v18);
            v24 = *(v22 - 3);
            v25 = *(v22 - 1);
            v26 = *v22;
            v27 = *v23;
            *(v22 - 3) = *(v23 - 1);
            *(v22 - 1) = v27;
            *(v23 - 1) = v24;
            *v23 = v25;
            *(v23 + 1) = v26;
          }

          ++v21;
          v18 -= 32;
          v19 += 32;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_230D44FF0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v40 = *(v8 + 24);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_230D44FF0((v40 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v41;
    v42 = v8 + 32;
    v43 = (v8 + 32 + 16 * v5);
    *v43 = v9;
    v43[1] = v7;
    v95 = *v94;
    if (!*v94)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v8 + 32);
          v45 = *(v8 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = (v8 + 16 * v41);
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = (v42 + 16 * v5);
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v70 = (v8 + 16 * v41);
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = (v42 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v41)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v81 = (v42 + 16 * (v5 - 1));
        v82 = *v81;
        v83 = (v42 + 16 * v5);
        v84 = v83[1];
        sub_230D90C70((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *(v8 + 16);
        if (v5 >= v85)
        {
          goto LABEL_101;
        }

        v41 = v85 - 1;
        result = memmove((v42 + 16 * v5), v83 + 2, 16 * (v85 - 1 - v5));
        *(v8 + 16) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = v42 + 16 * v41;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = (v8 + 16 * v41);
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = (v42 + 16 * v5);
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 - 8;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7 + 24);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*v34 >= v32)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 8);
    v36 = *(v34 + 16);
    v37 = *(v34 + 24);
    v38 = *(v34 - 8);
    *(v34 + 8) = *(v34 - 24);
    *(v34 + 24) = v38;
    *(v34 - 24) = v35;
    *(v34 - 16) = v36;
    *(v34 - 8) = v37;
    *v34 = v32;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_230D90C70(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[3] < v6[3])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_230D90E74(uint64_t a1)
{
  v2 = sub_230D0E4B4(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 64);
    do
    {
      v8 = *(v4 - 2);
      v7 = *(v4 - 1);
      v9 = *v4;
      v10 = v2[2];

      if (v10)
      {
        v11 = sub_230DA41A0(v8, v7);
        if (v12)
        {
          v13 = v2[7] + 16 * v11;
          v14 = *v13 + 1;
          if (__OFADD__(*v13, 1))
          {
            goto LABEL_49;
          }

          v15 = *(v13 + 8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v2;
          v17 = sub_230DA41A0(v8, v7);
          v19 = v2[2];
          v20 = (v18 & 1) == 0;
          v21 = __OFADD__(v19, v20);
          v22 = v19 + v20;
          if (v21)
          {
            goto LABEL_50;
          }

          v23 = v18;
          if (v2[3] < v22)
          {
            sub_230DB732C(v22, isUniquelyReferenced_nonNull_native);
            v17 = sub_230DA41A0(v8, v7);
            if ((v23 & 1) != (v24 & 1))
            {
              goto LABEL_52;
            }

            goto LABEL_23;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_23:
            v9 = v9 + v15;
            if ((v23 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v39 = v17;
            sub_230DBA320();
            v17 = v39;
            v9 = v9 + v15;
            if ((v23 & 1) == 0)
            {
LABEL_28:
              v2 = v59;
              v59[(v17 >> 6) + 8] |= 1 << v17;
              v40 = (v2[6] + 16 * v17);
              *v40 = v8;
              v40[1] = v7;
              v41 = v2[7] + 16 * v17;
              *v41 = v14;
              *(v41 + 8) = v9;
              v42 = v2[2];
              v21 = __OFADD__(v42, 1);
              v36 = v42 + 1;
              if (v21)
              {
                goto LABEL_51;
              }

              goto LABEL_29;
            }
          }

          v37 = v17;

          v2 = v59;
          v6 = v59[7] + 16 * v37;
          *v6 = v14;
          goto LABEL_4;
        }
      }

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v59 = v2;
      v26 = sub_230DA41A0(v8, v7);
      v28 = v2[2];
      v29 = (v27 & 1) == 0;
      v21 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v21)
      {
        goto LABEL_47;
      }

      v31 = v27;
      if (v2[3] >= v30)
      {
        if ((v25 & 1) == 0)
        {
          v38 = v26;
          sub_230DBA320();
          v26 = v38;
          if ((v31 & 1) == 0)
          {
LABEL_19:
            v2 = v59;
            v59[(v26 >> 6) + 8] |= 1 << v26;
            v33 = (v2[6] + 16 * v26);
            *v33 = v8;
            v33[1] = v7;
            v34 = v2[7] + 16 * v26;
            *v34 = 1;
            *(v34 + 8) = v9;
            v35 = v2[2];
            v21 = __OFADD__(v35, 1);
            v36 = v35 + 1;
            if (v21)
            {
              goto LABEL_48;
            }

LABEL_29:
            v2[2] = v36;
            goto LABEL_5;
          }

          goto LABEL_3;
        }
      }

      else
      {
        sub_230DB732C(v30, v25);
        v26 = sub_230DA41A0(v8, v7);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_52;
        }
      }

      if ((v31 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_3:
      v5 = v26;

      v2 = v59;
      v6 = v59[7] + 16 * v5;
      *v6 = 1;
LABEL_4:
      *(v6 + 8) = v9;
LABEL_5:
      v4 += 5;
      --v3;
    }

    while (v3);
  }

  v43 = v2[2];
  v44 = MEMORY[0x277D84F90];
  if (v43)
  {
    v45 = sub_230E4B198(v2[2], 0);
    v46 = sub_230E67174(&v59, v45 + 4, v43, v2);
    v47 = v59;

    sub_230D912FC(v47);
    if (v46 == v43)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  v45 = v44;
LABEL_34:
  v59 = v45;
  sub_230D90560(&v59);
  v7 = v59;
  v48 = v59[2];
  if (v48 >= 0xA)
  {
    v49 = 10;
  }

  else
  {
    v49 = v59[2];
  }

  if (v48)
  {
    v59 = v44;
    sub_230D48EC8(0, v49, 0);
    v50 = v59;
    v51 = (v7 + 56);
    while (v49)
    {
      v53 = *(v51 - 3);
      v52 = *(v51 - 2);
      v54 = *(v51 - 1);
      v55 = *v51;
      v59 = v50;
      v7 = *(v50 + 16);
      v56 = *(v50 + 24);

      if (v7 >= v56 >> 1)
      {
        sub_230D48EC8((v56 > 1), v7 + 1, 1);
        v50 = v59;
      }

      *(v50 + 16) = v7 + 1;
      v57 = v50 + 32 * v7;
      *(v57 + 32) = v53;
      *(v57 + 40) = v52;
      *(v57 + 48) = v54;
      *(v57 + 56) = round(v55 * 100.0) / 100.0;
      v51 += 4;
      if (!--v49)
      {

        return v50;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](v7);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_230D91304(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  if ((a1[8] & 1) == 0)
  {
    v11 = *a1;
    v12 = *(*a1 + 16);

    if (v12)
    {
      v13 = 0;
      v14 = v11 + 32;
      v3 = MEMORY[0x277D84F90];
      do
      {
        v15 = (v14 + 168 * v13);
        v16 = v13;
        while (1)
        {
          if (v16 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v17 = *v15;
          v18 = v15[2];
          v61 = v15[1];
          v62 = v18;
          v60 = v17;
          v19 = v15[3];
          v20 = v15[4];
          v21 = v15[6];
          v65 = v15[5];
          v66 = v21;
          v63 = v19;
          v64 = v20;
          v22 = v15[7];
          v23 = v15[8];
          v24 = v15[9];
          v70 = *(v15 + 20);
          v68 = v23;
          v69 = v24;
          v67 = v22;
          if (!v62)
          {
            break;
          }

          v25 = sub_230E698C0();
          sub_230D93514(&v60, v59);

          if (v25)
          {
            goto LABEL_14;
          }

          ++v16;
          sub_230D93570(&v60);
          v15 = (v15 + 168);
          if (v12 == v16)
          {
            goto LABEL_31;
          }
        }

        sub_230D93514(&v60, v59);

LABEL_14:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_230D48F00(0, *(v3 + 16) + 1, 1);
          v3 = v71;
        }

        v28 = *(v3 + 16);
        v27 = *(v3 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_230D48F00((v27 > 1), v28 + 1, 1);
          v3 = v71;
        }

        v13 = v16 + 1;
        *(v3 + 16) = v28 + 1;
        v29 = v3 + 168 * v28;
        v30 = v60;
        v31 = v62;
        *(v29 + 48) = v61;
        *(v29 + 64) = v31;
        *(v29 + 32) = v30;
        v32 = v63;
        v33 = v64;
        v34 = v66;
        *(v29 + 112) = v65;
        *(v29 + 128) = v34;
        *(v29 + 80) = v32;
        *(v29 + 96) = v33;
        v35 = v67;
        v36 = v68;
        v37 = v69;
        *(v29 + 192) = v70;
        *(v29 + 160) = v36;
        *(v29 + 176) = v37;
        *(v29 + 144) = v35;
        v14 = v11 + 32;
      }

      while (v12 - 1 != v16);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

LABEL_31:

    v2 = a2;
    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_32:

    v55 = sub_230E68D60();
    v56 = sub_230E693F0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_230D02000, v55, v56, "[MusicAggregator][generateMusicInsights] No music sessions found", v57, 2u);
      MEMORY[0x23191EAE0](v57, -1, -1);
    }

    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    return;
  }

  v3 = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D84F90] + 16);
  if (!v4)
  {
    goto LABEL_32;
  }

LABEL_3:

  v5 = sub_230E68D60();
  v6 = sub_230E693E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v3 + 16);

    _os_log_impl(&dword_230D02000, v5, v6, "[MusicAggregator][generateMusicInsights] Processing %ld music sessions", v7, 0xCu);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  else
  {
  }

  v38 = *(v3 + 16);
  if (v38 > v4 - 1)
  {
    if (v4 == 1)
    {
      v39 = 0;
      v40 = 0.0;
    }

    else
    {
      v39 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v41 = (v3 + 240);
      v40 = 0.0;
      v42 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v8.n128_f64[0] = *v41;
        v40 = v40 + *(v41 - 21) + *v41;
        v41 += 42;
        v42 -= 2;
      }

      while (v42);
      if (v4 == v39)
      {
        goto LABEL_29;
      }
    }

    v43 = v4 - v39;
    v44 = (v3 + 168 * v39 + 72);
    do
    {
      v45 = *v44;
      v44 += 21;
      v40 = v40 + v45;
      --v43;
    }

    while (v43);
LABEL_29:
    v46 = round(v40 * 100.0) / 100.0;
    v47 = round(v46 / v38 * 100.0);
    v48 = v47 / 100.0;
    sub_230DA1E8C(v3, v47, 100.0, v8, v9, v10);
    v50 = v49;
    v51 = sub_230D917D8(v3);
    v52 = sub_230D91EAC(v3);
    v53 = sub_230D9261C(v3);
    v54 = sub_230D92DC8(v3);

    *v2 = v38;
    *(v2 + 8) = v46;
    *(v2 + 16) = v48;
    *(v2 + 24) = v50;
    *(v2 + 32) = v51;
    *(v2 + 40) = v52;
    *(v2 + 48) = v53;
    *(v2 + 56) = v54;
    return;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_230D917D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_230D0E5C8(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    v7 = v5 - 1;
    v88 = v2;
    while (1)
    {
      v8 = v6[9];
      v99 = v6[8];
      v100 = v8;
      v101 = *(v6 + 20);
      v9 = v6[5];
      v95 = v6[4];
      v96 = v9;
      v10 = v6[7];
      v97 = v6[6];
      v98 = v10;
      v11 = v6[1];
      v91 = *v6;
      v92 = v11;
      v12 = v6[3];
      v93 = v6[2];
      v94 = v12;
      v13 = v96;
      if (!v96)
      {
        goto LABEL_12;
      }

      v14 = *(&v95 + 1);
      v15 = BYTE7(v96) & 0xF;
      if ((v96 & 0x2000000000000000) == 0)
      {
        v15 = *(&v95 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v15)
      {
LABEL_12:
        sub_230D93514(&v91, v90);
        v24 = sub_230E68D60();
        v25 = sub_230E693F0();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = v92;
          v27 = swift_slowAlloc();
          v28 = v4;
          v29 = swift_slowAlloc();
          v90[0] = v29;
          *v27 = 136315138;

          sub_230D93570(&v91);
          v30 = sub_230D7E620(v26, *(&v26 + 1), v90);

          *(v27 + 4) = v30;
          _os_log_impl(&dword_230D02000, v24, v25, "[MusicAggregator][generateTopArtists] Skipping session without artist: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          v31 = v29;
          v4 = v28;
          MEMORY[0x23191EAE0](v31, -1, -1);
          MEMORY[0x23191EAE0](v27, -1, -1);

          if (!v7)
          {
            break;
          }

          goto LABEL_42;
        }

        goto LABEL_24;
      }

      v16 = *(&v99 + 1);
      v17 = v100;
      v18 = *(&v93 + 1);
      if (!v4[2])
      {
        sub_230D93514(&v91, v90);

LABEL_17:

        v32 = v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90[0] = v32;
        v34 = sub_230DA41A0(v14, v13);
        v36 = *(v32 + 16);
        v37 = (v35 & 1) == 0;
        v38 = __OFADD__(v36, v37);
        v39 = v36 + v37;
        if (v38)
        {
          goto LABEL_60;
        }

        v40 = v35;
        if (*(v32 + 24) < v39)
        {
          sub_230DB75EC(v39, isUniquelyReferenced_nonNull_native);
          v34 = sub_230DA41A0(v14, v13);
          if ((v40 & 1) != (v41 & 1))
          {
            goto LABEL_65;
          }

          goto LABEL_22;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_22:
          if (v40)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v58 = v16;
          v59 = v34;
          sub_230DBA498();
          v34 = v59;
          v16 = v58;
          if (v40)
          {
LABEL_23:
            v42 = v16;
            v43 = v34;

            v4 = v90[0];
            v44 = *(v90[0] + 56) + 32 * v43;
            *v44 = 1;
            *(v44 + 8) = v18;
            *(v44 + 16) = v42;
            *(v44 + 24) = v17;

LABEL_24:
            sub_230D93570(&v91);
            if (!v7)
            {
              break;
            }

            goto LABEL_42;
          }
        }

        v4 = v90[0];
        *(v90[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v60 = (v4[6] + 16 * v34);
        *v60 = v14;
        v60[1] = v13;
        v61 = v4[7] + 32 * v34;
        *v61 = 1;
        *(v61 + 8) = v18;
        *(v61 + 16) = v16;
        *(v61 + 24) = v17;
        sub_230D93570(&v91);
        v62 = v4[2];
        v38 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v38)
        {
          goto LABEL_61;
        }

        v4[2] = v63;
        if (!v7)
        {
          break;
        }

        goto LABEL_42;
      }

      sub_230D93514(&v91, v90);

      v19 = sub_230DA41A0(v14, v13);
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }

      v21 = v4[7] + 32 * v19;
      v2 = *v21 + 1;
      if (__OFADD__(*v21, 1))
      {
        goto LABEL_62;
      }

      v22 = *(v21 + 24);
      v23 = *(v21 + 8);
      if (v22)
      {
        v16 = *(v21 + 16);
      }

      else
      {

        v22 = v17;
      }

      sub_230D93570(&v91);
      v45 = v4;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v90[0] = v45;
      v47 = sub_230DA41A0(v14, v13);
      v49 = *(v45 + 16);
      v50 = (v48 & 1) == 0;
      v38 = __OFADD__(v49, v50);
      v51 = v49 + v50;
      if (v38)
      {
        goto LABEL_63;
      }

      v52 = v48;
      if (*(v45 + 24) >= v51)
      {
        if ((v46 & 1) == 0)
        {
          v64 = v16;
          v65 = v47;
          sub_230DBA498();
          v47 = v65;
          v16 = v64;
          v54 = v18 + v23;
          if (v52)
          {
LABEL_33:
            v55 = v16;
            v56 = v47;

            v4 = v90[0];
            v57 = *(v90[0] + 56) + 32 * v56;
            *v57 = v2;
            *(v57 + 8) = v54;
            *(v57 + 16) = v55;
            *(v57 + 24) = v22;

            v2 = v88;
            if (!v7)
            {
              break;
            }

            goto LABEL_42;
          }

          goto LABEL_40;
        }
      }

      else
      {
        sub_230DB75EC(v51, v46);
        v47 = sub_230DA41A0(v14, v13);
        if ((v52 & 1) != (v53 & 1))
        {
          goto LABEL_65;
        }
      }

      v54 = v18 + v23;
      if (v52)
      {
        goto LABEL_33;
      }

LABEL_40:
      v4 = v90[0];
      *(v90[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
      v66 = (v4[6] + 16 * v47);
      *v66 = v14;
      v66[1] = v13;
      v67 = v4[7] + 32 * v47;
      *v67 = v2;
      *(v67 + 8) = v54;
      *(v67 + 16) = v16;
      *(v67 + 24) = v22;
      v68 = v4[2];
      v38 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v38)
      {
        goto LABEL_64;
      }

      v4[2] = v69;
      v2 = v88;
      if (!v7)
      {
        break;
      }

LABEL_42:
      --v7;
      v6 = (v6 + 168);
    }
  }

  v70 = v4[2];
  v71 = MEMORY[0x277D84F90];
  if (v70)
  {
    v72 = sub_230E4B21C(v70, 0);
    v73 = sub_230E68474();
    v74 = v91;

    sub_230D912FC(v74);
    if (v73 == v70)
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  v72 = v71;
LABEL_47:
  *&v91 = v72;
  v2 = 0;
  sub_230D935C4(&v91);
  v75 = v91;
  v76 = *(v91 + 16);
  if (v76 >= 5)
  {
    v77 = 5;
  }

  else
  {
    v77 = *(v91 + 16);
  }

  if (v76)
  {
    *&v91 = v71;
    sub_230D48F20(0, v77, 0);
    v78 = v91;
    v79 = (v75 + 72);
    while (v77)
    {
      v81 = *(v79 - 5);
      v80 = *(v79 - 4);
      v89 = *(v79 - 3);
      v82 = *(v79 - 2);
      v84 = *(v79 - 1);
      v83 = *v79;
      *&v91 = v78;
      v85 = *(v78 + 16);
      v2 = *(v78 + 24);

      if (v85 >= v2 >> 1)
      {
        sub_230D48F20((v2 > 1), v85 + 1, 1);
        v78 = v91;
      }

      *(v78 + 16) = v85 + 1;
      v86 = v78 + 48 * v85;
      *(v86 + 32) = v81;
      *(v86 + 40) = v80;
      *(v86 + 48) = v84;
      *(v86 + 56) = v83;
      *(v86 + 64) = v89;
      *(v86 + 72) = round(v82 * 100.0) / 100.0;
      v79 += 6;
      if (!--v77)
      {

        return v78;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](v2);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_230D91EAC(uint64_t a1)
{
  v2 = sub_230D0E5DC(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    for (i = v3 - 1; ; --i)
    {
      v6 = *(v4 + 144);
      v96 = *(v4 + 128);
      v97 = v6;
      v98 = *(v4 + 160);
      v7 = *(v4 + 80);
      v92 = *(v4 + 64);
      v93 = v7;
      v8 = *(v4 + 112);
      v94 = *(v4 + 96);
      v95 = v8;
      v9 = *(v4 + 16);
      v89[0] = *v4;
      v89[1] = v9;
      v10 = *(v4 + 48);
      v90 = *(v4 + 32);
      v91 = v10;
      v11 = v93;
      v12 = v9;
      if (!v93)
      {
        goto LABEL_12;
      }

      v13 = *(&v92 + 1);
      v14 = BYTE7(v93) & 0xF;
      if ((v93 & 0x2000000000000000) == 0)
      {
        v14 = *(&v92 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = *(&v95 + 1);
        v16 = v96;
        v17 = *(&v90 + 1);
        if (!v2[2])
        {
          sub_230D93514(v89, v88);

LABEL_16:
          v84 = i;
          i = v16;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88[0] = v2;
          v31 = sub_230DA41A0(v12, *(&v12 + 1));
          v33 = v2;
          v34 = v2[2];
          v35 = (v32 & 1) == 0;
          v36 = __OFADD__(v34, v35);
          v37 = v34 + v35;
          if (v36)
          {
            goto LABEL_57;
          }

          v38 = v32;
          if (v33[3] >= v37)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_21;
            }

            v59 = v31;
            sub_230DBA4AC();
            v31 = v59;
            v40 = v15;
            if ((v38 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_22:
            v41 = v31;

            v2 = v88[0];
            v42 = *(v88[0] + 56) + 48 * v41;
            *v42 = 1;
            *(v42 + 8) = v17;
            *(v42 + 16) = v13;
            *(v42 + 24) = v11;
            *(v42 + 32) = v40;
            *(v42 + 40) = i;

            sub_230D93570(v89);
          }

          else
          {
            sub_230DB7600(v37, isUniquelyReferenced_nonNull_native);
            v31 = sub_230DA41A0(v12, *(&v12 + 1));
            if ((v38 & 1) != (v39 & 1))
            {
              goto LABEL_62;
            }

LABEL_21:
            v40 = v15;
            if (v38)
            {
              goto LABEL_22;
            }

LABEL_35:
            v2 = v88[0];
            *(v88[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
            *(v2[6] + 16 * v31) = v12;
            v60 = v2[7] + 48 * v31;
            *v60 = 1;
            *(v60 + 8) = v17;
            *(v60 + 16) = v13;
            *(v60 + 24) = v11;
            *(v60 + 32) = v40;
            *(v60 + 40) = i;
            sub_230D93570(v89);
            v61 = v2[2];
            v36 = __OFADD__(v61, 1);
            v62 = v61 + 1;
            if (v36)
            {
              goto LABEL_58;
            }

            v2[2] = v62;
          }

          i = v84;
          goto LABEL_38;
        }

        sub_230D93514(v89, v88);

        v18 = sub_230DA41A0(v12, *(&v12 + 1));
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }

        v20 = v18;

        v21 = v2[7] + 48 * v20;
        v22 = *v21 + 1;
        if (__OFADD__(*v21, 1))
        {
          goto LABEL_59;
        }

        v23 = *(v21 + 24);
        v82 = *(v21 + 16);
        v24 = *(v21 + 8);
        if (*(v21 + 40))
        {
          v15 = *(v21 + 32);
          v83 = *(v21 + 40);
        }

        else
        {
          v83 = v16;
        }

        sub_230D93570(v89);
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v88[0] = v2;
        v44 = sub_230DA41A0(v12, *(&v12 + 1));
        v46 = v2;
        v47 = v2[2];
        v48 = (v45 & 1) == 0;
        v36 = __OFADD__(v47, v48);
        v49 = v47 + v48;
        if (v36)
        {
          goto LABEL_60;
        }

        v50 = v45;
        if (v46[3] >= v49)
        {
          if ((v43 & 1) == 0)
          {
            v63 = v44;
            sub_230DBA4AC();
            v44 = v63;
          }
        }

        else
        {
          sub_230DB7600(v49, v43);
          v44 = sub_230DA41A0(v12, *(&v12 + 1));
          if ((v50 & 1) != (v51 & 1))
          {
            goto LABEL_62;
          }
        }

        v52 = v15;
        v53 = v17 + v24;
        if (v50)
        {
          v54 = v44;

          v2 = v88[0];
          v55 = *(v88[0] + 56) + 48 * v54;
          *v55 = v22;
          *(v55 + 8) = v53;
          *(v55 + 16) = v82;
          *(v55 + 24) = v23;
          *(v55 + 32) = v52;
          *(v55 + 40) = v83;
        }

        else
        {
          v2 = v88[0];
          *(v88[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
          *(v2[6] + 16 * v44) = v12;
          v56 = v2[7] + 48 * v44;
          *v56 = v22;
          *(v56 + 8) = v53;
          *(v56 + 16) = v82;
          *(v56 + 24) = v23;
          *(v56 + 32) = v15;
          *(v56 + 40) = v83;
          v57 = v2[2];
          v36 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v36)
          {
            goto LABEL_61;
          }

          v2[2] = v58;
        }
      }

      else
      {
LABEL_12:
        sub_230D93514(v89, v88);
        v25 = sub_230E68D60();
        v26 = sub_230E693F0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v88[0] = v28;
          *v27 = 136315138;

          sub_230D93570(v89);
          v29 = sub_230D7E620(v12, *(&v12 + 1), v88);

          *(v27 + 4) = v29;
          _os_log_impl(&dword_230D02000, v25, v26, "[MusicAggregator][generateTopSongs] Skipping session without artist: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x23191EAE0](v28, -1, -1);
          MEMORY[0x23191EAE0](v27, -1, -1);
        }

        else
        {

          sub_230D93570(v89);
        }
      }

LABEL_38:
      if (!i)
      {
        break;
      }

      v4 += 168;
    }
  }

  v64 = v2[2];
  v65 = MEMORY[0x277D84F90];
  if (v64)
  {
    v66 = sub_230E4B230(v64, 0);
    v67 = sub_230E68470();
    v68 = *&v89[0];

    sub_230D912FC(v68);
    if (v67 == v64)
    {
      goto LABEL_44;
    }

    __break(1u);
  }

  v66 = v65;
LABEL_44:
  *&v89[0] = v66;
  i = 0;
  sub_230D93744(v89, sub_230D45134, &qword_27DB5B3A0, &qword_230E6F720);
  v69 = *&v89[0];
  v70 = *(*&v89[0] + 16);
  if (v70 >= 5)
  {
    v71 = 5;
  }

  else
  {
    v71 = *(*&v89[0] + 16);
  }

  if (v70)
  {
    *&v89[0] = v65;
    sub_230D48F58(0, v71, 0);
    v72 = *&v89[0];
    v73 = (v69 + 48);
    while (v71)
    {
      v74 = *(v73 - 1);
      v86 = *(v73 - 2);
      v87 = *v73;
      v75 = v73[1];
      v76 = *(v73 + 3);
      v85 = *(v73 + 2);
      i = *(v73 + 4);
      v77 = *(v73 + 5);
      v78 = *(v72 + 16);
      v79 = *(v72 + 24);
      *&v89[0] = v72;

      if (v78 >= v79 >> 1)
      {
        sub_230D48F58((v79 > 1), v78 + 1, 1);
        v72 = *&v89[0];
      }

      *(v72 + 16) = v78 + 1;
      v80 = v72 + (v78 << 6);
      *(v80 + 32) = v86;
      *(v80 + 40) = v74;
      *(v80 + 48) = i;
      *(v80 + 56) = v77;
      *(v80 + 64) = v85;
      *(v80 + 72) = v76;
      *(v80 + 80) = v87;
      *(v80 + 88) = round(v75 * 100.0) / 100.0;
      v73 += 8;
      if (!--v71)
      {

        return v72;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](i);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_230D9261C(uint64_t a1)
{
  v2 = sub_230D0E5F0(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    for (i = v3 - 1; ; --i)
    {
      v6 = v4[9];
      v103 = v4[8];
      v104 = v6;
      v105 = *(v4 + 20);
      v7 = v4[5];
      v99 = v4[4];
      v100 = v7;
      v8 = v4[7];
      v101 = v4[6];
      v102 = v8;
      v9 = v4[1];
      v95 = *v4;
      v96 = v9;
      v10 = v4[3];
      v97 = v4[2];
      v98 = v10;
      v11 = v101;
      if (!v101)
      {
        goto LABEL_16;
      }

      v12 = *(&v100 + 1);
      v13 = BYTE7(v101) & 0xF;
      if ((v101 & 0x2000000000000000) == 0)
      {
        v13 = *(&v100 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = v100;
      if (!v100)
      {
        goto LABEL_16;
      }

      v15 = *(&v99 + 1);
      v16 = BYTE7(v100) & 0xF;
      if ((v100 & 0x2000000000000000) == 0)
      {
        v16 = *(&v99 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
LABEL_16:
        sub_230D93514(&v95, v94);
        v27 = sub_230E68D60();
        v28 = sub_230E693F0();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = v96;
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v94[0] = v31;
          *v30 = 136315138;

          sub_230D93570(&v95);
          v32 = sub_230D7E620(v29, *(&v29 + 1), v94);

          *(v30 + 4) = v32;
          _os_log_impl(&dword_230D02000, v27, v28, "[MusicAggregator][generateTopAlbums] Skipping session without album or artist: %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x23191EAE0](v31, -1, -1);
          MEMORY[0x23191EAE0](v30, -1, -1);

          if (!i)
          {
            break;
          }
        }

        else
        {

          sub_230D93570(&v95);
          if (!i)
          {
            break;
          }
        }

        goto LABEL_45;
      }

      v17 = *(&v104 + 1);
      v18 = v105;
      v19 = *(&v97 + 1);
      if (v2[2])
      {
        sub_230D93514(&v95, v94);

        v20 = sub_230DA41A0(v12, v11);
        if (v21)
        {
          v22 = v20;

          v23 = v2[7] + 48 * v22;
          v24 = *v23 + 1;
          if (__OFADD__(*v23, 1))
          {
            goto LABEL_65;
          }

          v25 = *(v23 + 24);
          v88 = *(v23 + 16);
          v26 = *(v23 + 8);
          if (*(v23 + 40))
          {
            v17 = *(v23 + 32);
            v89 = *(v23 + 40);
          }

          else
          {
            v89 = v18;
          }

          sub_230D93570(&v95);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94[0] = v2;
          v47 = sub_230DA41A0(v12, v11);
          v49 = v2;
          v50 = v2[2];
          v51 = (v48 & 1) == 0;
          v39 = __OFADD__(v50, v51);
          v52 = v50 + v51;
          if (v39)
          {
            goto LABEL_66;
          }

          v53 = v48;
          if (v49[3] < v52)
          {
            sub_230DB7614(v52, isUniquelyReferenced_nonNull_native);
            v47 = sub_230DA41A0(v12, v11);
            if ((v53 & 1) != (v54 & 1))
            {
              goto LABEL_68;
            }

            goto LABEL_35;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_35:
            v55 = v19 + v26;
            if (v53)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v65 = v17;
            v66 = v47;
            sub_230DBA4C0();
            v47 = v66;
            v17 = v65;
            v55 = v19 + v26;
            if (v53)
            {
LABEL_36:
              v56 = v17;
              v57 = v47;

              v2 = v94[0];
              v58 = *(v94[0] + 56) + 48 * v57;
              *v58 = v24;
              *(v58 + 8) = v55;
              *(v58 + 16) = v88;
              *(v58 + 24) = v25;
              *(v58 + 32) = v56;
              *(v58 + 40) = v89;

              goto LABEL_44;
            }
          }

          v2 = v94[0];
          *(v94[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
          v67 = (v2[6] + 16 * v47);
          *v67 = v12;
          v67[1] = v11;
          v68 = v2[7] + 48 * v47;
          *v68 = v24;
          *(v68 + 8) = v55;
          *(v68 + 16) = v88;
          *(v68 + 24) = v25;
          *(v68 + 32) = v17;
          *(v68 + 40) = v89;
          v69 = v2[2];
          v39 = __OFADD__(v69, 1);
          v64 = v69 + 1;
          if (v39)
          {
            goto LABEL_67;
          }

          goto LABEL_43;
        }
      }

      else
      {
        sub_230D93514(&v95, v94);
      }

      v90 = v18;

      v33 = swift_isUniquelyReferenced_nonNull_native();
      v94[0] = v2;
      v34 = sub_230DA41A0(v12, v11);
      v36 = v2;
      v37 = v2[2];
      v38 = (v35 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        goto LABEL_63;
      }

      v41 = v35;
      if (v36[3] >= v40)
      {
        if ((v33 & 1) == 0)
        {
          v59 = v17;
          v60 = v34;
          sub_230DBA4C0();
          v34 = v60;
          v17 = v59;
          if (v41)
          {
LABEL_28:
            v43 = v17;
            v44 = v34;

            v2 = v94[0];
            v45 = *(v94[0] + 56) + 48 * v44;
            *v45 = 1;
            *(v45 + 8) = v19;
            *(v45 + 16) = v15;
            *(v45 + 24) = v14;
            *(v45 + 32) = v43;
            *(v45 + 40) = v90;

            sub_230D93570(&v95);
            goto LABEL_44;
          }

          goto LABEL_38;
        }
      }

      else
      {
        sub_230DB7614(v40, v33);
        v34 = sub_230DA41A0(v12, v11);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_68;
        }
      }

      if (v41)
      {
        goto LABEL_28;
      }

LABEL_38:
      v2 = v94[0];
      *(v94[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v61 = (v2[6] + 16 * v34);
      *v61 = v12;
      v61[1] = v11;
      v62 = v2[7] + 48 * v34;
      *v62 = 1;
      *(v62 + 8) = v19;
      *(v62 + 16) = v15;
      *(v62 + 24) = v14;
      *(v62 + 32) = v17;
      *(v62 + 40) = v90;
      sub_230D93570(&v95);
      v63 = v2[2];
      v39 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v39)
      {
        goto LABEL_64;
      }

LABEL_43:
      v2[2] = v64;
LABEL_44:
      if (!i)
      {
        break;
      }

LABEL_45:
      v4 = (v4 + 168);
    }
  }

  v70 = v2[2];
  v71 = MEMORY[0x277D84F90];
  if (v70)
  {
    v72 = sub_230E4B244(v70, 0);
    v73 = sub_230E68470();
    v74 = v95;

    sub_230D912FC(v74);
    if (v73 == v70)
    {
      goto LABEL_50;
    }

    __break(1u);
  }

  v72 = v71;
LABEL_50:
  *&v95 = v72;
  i = 0;
  sub_230D93744(&v95, sub_230D45148, &qword_27DB5B388, &qword_230E6F708);
  v75 = v95;
  v76 = *(v95 + 16);
  if (v76 >= 5)
  {
    v77 = 5;
  }

  else
  {
    v77 = *(v95 + 16);
  }

  if (v76)
  {
    *&v95 = v71;
    sub_230D48F90(0, v77, 0);
    v78 = v95;
    v79 = (v75 + 48);
    while (v77)
    {
      v80 = *(v79 - 1);
      v93 = *v79;
      v81 = v79[1];
      v82 = *(v79 + 3);
      v91 = *(v79 + 2);
      v92 = *(v79 - 2);
      i = *(v79 + 4);
      v83 = *(v79 + 5);
      v84 = *(v78 + 16);
      v85 = *(v78 + 24);
      *&v95 = v78;

      if (v84 >= v85 >> 1)
      {
        sub_230D48F90((v85 > 1), v84 + 1, 1);
        v78 = v95;
      }

      *(v78 + 16) = v84 + 1;
      v86 = v78 + (v84 << 6);
      *(v86 + 32) = v92;
      *(v86 + 40) = v80;
      *(v86 + 48) = i;
      *(v86 + 56) = v83;
      *(v86 + 64) = v91;
      *(v86 + 72) = v82;
      *(v86 + 80) = v93;
      *(v86 + 88) = round(v81 * 100.0) / 100.0;
      v79 += 8;
      if (!--v77)
      {

        return v78;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](i);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_230D92DC8(uint64_t a1)
{
  v3 = sub_230D0E4B4(MEMORY[0x277D84F90]);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    for (i = v4 - 1; ; --i)
    {
      v6 = v5[9];
      v97 = v5[8];
      v98 = v6;
      v99 = *(v5 + 20);
      v7 = v5[5];
      v93 = v5[4];
      v94 = v7;
      v8 = v5[7];
      v95 = v5[6];
      v96 = v8;
      v9 = v5[1];
      v89 = *v5;
      v90 = v9;
      v10 = v5[3];
      v91 = v5[2];
      v92 = v10;
      v11 = v96;
      if (v96)
      {
        v12 = *(&v95 + 1);
        v13 = BYTE7(v96) & 0xF;
        if ((v96 & 0x2000000000000000) == 0)
        {
          v13 = *(&v95 + 1) & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          break;
        }
      }

      sub_230D93514(&v89, v88);
      v30 = sub_230E68D60();
      v31 = sub_230E693F0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = v90;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v88[0] = v34;
        *v33 = 136315138;

        sub_230D93570(&v89);
        v35 = sub_230D7E620(v32, *(&v32 + 1), v88);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_230D02000, v30, v31, "[MusicAggregator][generateGenreDistribution] Skipping session without genre: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x23191EAE0](v34, -1, -1);
        MEMORY[0x23191EAE0](v33, -1, -1);
      }

      else
      {

        sub_230D93570(&v89);
      }

LABEL_34:
      if (!i)
      {
        goto LABEL_36;
      }

      v5 = (v5 + 168);
    }

    v14 = *(&v91 + 1);
    v15 = *(v3 + 16);

    if (v15)
    {
      v16 = sub_230DA41A0(v12, v11);
      if (v17)
      {
        v18 = *(v3 + 56) + 16 * v16;
        v19 = *v18 + 1;
        if (__OFADD__(*v18, 1))
        {
          goto LABEL_68;
        }

        v20 = *(v18 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88[0] = v3;
        v22 = sub_230DA41A0(v12, v11);
        v24 = *(v3 + 16);
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          goto LABEL_69;
        }

        v28 = v23;
        if (*(v3 + 24) >= v27)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v54 = v22;
            sub_230DBA320();
            v22 = v54;
            v46 = v14 + v20;
            if (v28)
            {
LABEL_26:
              v47 = v22;

              v3 = v88[0];
              v48 = *(v88[0] + 56) + 16 * v47;
              *v48 = v19;
              *(v48 + 8) = v46;
              goto LABEL_34;
            }

            goto LABEL_32;
          }
        }

        else
        {
          sub_230DB732C(v27, isUniquelyReferenced_nonNull_native);
          v22 = sub_230DA41A0(v12, v11);
          if ((v28 & 1) != (v29 & 1))
          {
            goto LABEL_71;
          }
        }

        v46 = v14 + v20;
        if (v28)
        {
          goto LABEL_26;
        }

LABEL_32:
        v3 = v88[0];
        *(v88[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
        v55 = (*(v3 + 48) + 16 * v22);
        *v55 = v12;
        v55[1] = v11;
        v56 = *(v3 + 56) + 16 * v22;
        *v56 = v19;
        *(v56 + 8) = v46;
        v57 = *(v3 + 16);
        v26 = __OFADD__(v57, 1);
        v53 = v57 + 1;
        if (v26)
        {
          goto LABEL_70;
        }

        goto LABEL_33;
      }
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v88[0] = v3;
    v37 = sub_230DA41A0(v12, v11);
    v39 = *(v3 + 16);
    v40 = (v38 & 1) == 0;
    v26 = __OFADD__(v39, v40);
    v41 = v39 + v40;
    if (v26)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      sub_230E69950();
      __break(1u);
      MEMORY[0x23191E910](i);

      __break(1u);
      return result;
    }

    v42 = v38;
    if (*(v3 + 24) >= v41)
    {
      if ((v36 & 1) == 0)
      {
        v49 = v37;
        sub_230DBA320();
        v37 = v49;
        if (v42)
        {
LABEL_23:
          v44 = v37;

          v3 = v88[0];
          v45 = *(v88[0] + 56) + 16 * v44;
          *v45 = 1;
          *(v45 + 8) = v14;
          goto LABEL_34;
        }

        goto LABEL_28;
      }
    }

    else
    {
      sub_230DB732C(v41, v36);
      v37 = sub_230DA41A0(v12, v11);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_71;
      }
    }

    if (v42)
    {
      goto LABEL_23;
    }

LABEL_28:
    v3 = v88[0];
    *(v88[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
    v50 = (*(v3 + 48) + 16 * v37);
    *v50 = v12;
    v50[1] = v11;
    v51 = *(v3 + 56) + 16 * v37;
    *v51 = 1;
    *(v51 + 8) = v14;
    v52 = *(v3 + 16);
    v26 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v26)
    {
      goto LABEL_67;
    }

LABEL_33:
    *(v3 + 16) = v53;
    goto LABEL_34;
  }

LABEL_36:
  v58 = 0;
  v59 = 1 << *(v3 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v3 + 64);
  v62 = (v59 + 63) >> 6;
  v63 = 0.0;
  if (v61)
  {
    while (1)
    {
      v64 = v58;
LABEL_44:
      v65 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v63 = v63 + *(*(v3 + 56) + ((v64 << 10) | (16 * v65)) + 8);
      if (!v61)
      {
        goto LABEL_40;
      }
    }
  }

  while (1)
  {
LABEL_40:
    v64 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v64 >= v62)
    {
      break;
    }

    v61 = *(v3 + 64 + 8 * v64);
    ++v58;
    if (v61)
    {
      v58 = v64;
      goto LABEL_44;
    }
  }

  if (v63 <= 0.0)
  {
    goto LABEL_50;
  }

  v66 = *(v3 + 16);
  v67 = MEMORY[0x277D84F90];
  if (!v66)
  {
    v68 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v68 = sub_230E4B198(*(v3 + 16), 0);
  v69 = sub_230E67174(&v89, v68 + 4, v66, v3);
  v70 = v89;

  sub_230D912FC(v70);
  if (v69 == v66)
  {
LABEL_54:
    *&v89 = v68;
    sub_230D90560(&v89);
    i = v89;
    v74 = *(v89 + 16);
    if (!v74)
    {

      return MEMORY[0x277D84F90];
    }

    *&v89 = v67;
    sub_230D48FC8(0, v74, 0);
    v75 = 0;
    v76 = v89;
    v77 = (i + 56);
    v87 = i;
    while (v75 < *(i + 16))
    {
      v78 = v74;
      v80 = *(v77 - 3);
      v79 = *(v77 - 2);
      v81 = *(v77 - 1);
      v82 = *v77;
      *&v89 = v76;
      v83 = *(v76 + 16);
      v84 = *(v76 + 24);

      if (v83 >= v84 >> 1)
      {
        sub_230D48FC8((v84 > 1), v83 + 1, 1);
        v76 = v89;
      }

      *(v76 + 16) = v83 + 1;
      v85 = v76 + 40 * v83;
      *(v85 + 32) = v80;
      *(v85 + 40) = v79;
      *(v85 + 48) = round(v82 / v63 * 100.0) / 100.0;
      ++v75;
      *(v85 + 56) = v81;
      *(v85 + 64) = round(v82 * 100.0) / 100.0;
      v77 += 4;
      v74 = v78;
      i = v87;
      if (v78 == v75)
      {

        return v76;
      }
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  __break(1u);
LABEL_50:
  v71 = sub_230E68D60();
  v72 = sub_230E693F0();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_230D02000, v71, v72, "[MusicAggregator][generateGenreDistribution] No valid genre data found", v73, 2u);
    MEMORY[0x23191EAE0](v73, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_230D935C4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_230D45120(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  result = sub_230E69880();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 7;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[6 * i + 7];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          v16 = v13[5];
          v17 = *(v13 - 1);
          *(v13 + 3) = *(v13 - 3);
          v18 = *(v13 + 7);
          *(v13 + 5) = v17;
          *(v13 + 7) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v15;
          *(v13 - 1) = v16;
          *v13 = v11;
          *(v13 + 1) = v18;
          v13 -= 6;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 6;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3B8, &unk_230E6F738);
      v7 = sub_230E69270();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_230D938CC(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_230D93744(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v34[0] = v8 + 32;
  v34[1] = v9;
  result = sub_230E69880();
  if (result >= v9)
  {
    if (v9 >= 2)
    {
      v14 = v8 + 96;
      v15 = -1;
      for (i = 1; i != v9; ++i)
      {
        v17 = v15;
        v18 = v14;
        do
        {
          if (*(v18 - 40) >= *(v18 + 24))
          {
            break;
          }

          v19 = (v18 - 64);
          v20 = *v18;
          v21 = *(v18 + 16);
          v22 = *(v18 + 48);
          v32 = *(v18 + 32);
          v33 = v22;
          v30 = v20;
          v31 = v21;
          v23 = *(v18 - 48);
          *v18 = *(v18 - 64);
          *(v18 + 16) = v23;
          v24 = *(v18 - 16);
          *(v18 + 32) = *(v18 - 32);
          *(v18 + 48) = v24;
          v25 = v33;
          v26 = v30;
          v27 = v31;
          v19[2] = v32;
          v19[3] = v25;
          *v19 = v26;
          v19[1] = v27;
          v18 -= 64;
        }

        while (!__CFADD__(v17++, 1));
        v14 += 64;
        --v15;
      }
    }
  }

  else
  {
    v11 = result;
    v12 = v9 >> 1;
    if (v9 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v13 = sub_230E69270();
      *(v13 + 16) = v12;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    *&v30 = v13 + 32;
    *(&v30 + 1) = v12;
    sub_230D93EB0(&v30, v29, v34, v11);
    *(v13 + 16) = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_230D938CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_230D44FDC(v7);
      v7 = result;
    }

    v90 = (v7 + 16);
    v91 = *(v7 + 16);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = (v7 + 16 * v91);
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_230D94454((*a3 + 48 * *v92), (*a3 + 48 * *v94), (*a3 + 48 * v95), v99);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_114;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_115;
        }

        *v92 = v93;
        v92[1] = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_116;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v97 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 48 * v6 + 24);
      v10 = *a3 + 48 * v8;
      v11 = *(v10 + 24);
      v12 = v8 + 2;
      v13 = (v10 + 120);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 6;
        v16 = v14 >= v15;
        ++v12;
        v14 = v15;
        if ((((v11 < v9) ^ v16) & 1) == 0)
        {
          v6 = v12 - 1;
          if (v11 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v11 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 48 * v6 - 24;
        v18 = 48 * v8 + 32;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v29 + v18);
            v22 = *(v29 + v18 - 32);
            v23 = v29 + v17;
            v24 = *(v21 - 2);
            v25 = *(v21 - 1);
            v26 = *v21;
            v27 = *(v23 + 8);
            v28 = *(v23 - 8);
            *(v21 - 2) = *(v23 - 24);
            *(v21 - 1) = v28;
            *v21 = v27;
            *(v23 - 24) = v22;
            *(v23 - 8) = v24;
            *v23 = v25;
            *(v23 + 8) = v26;
          }

          ++v20;
          v17 -= 48;
          v18 += 48;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_230D44FF0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v43 = *(v7 + 16);
    v42 = *(v7 + 24);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_230D44FF0((v42 > 1), v43 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v44;
    v45 = v7 + 32;
    v46 = (v7 + 32 + 16 * v43);
    *v46 = v8;
    v46[1] = v6;
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_127;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v7 + 32);
          v49 = *(v7 + 40);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_57:
          if (v51)
          {
            goto LABEL_104;
          }

          v64 = (v7 + 16 * v44);
          v66 = *v64;
          v65 = v64[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_106;
          }

          v70 = (v45 + 16 * v47);
          v72 = *v70;
          v71 = v70[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_111;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v44 < 2)
        {
          goto LABEL_112;
        }

        v74 = (v7 + 16 * v44);
        v76 = *v74;
        v75 = v74[1];
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_72:
        if (v69)
        {
          goto LABEL_108;
        }

        v77 = (v45 + 16 * v47);
        v79 = *v77;
        v78 = v77[1];
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_110;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v85 = (v45 + 16 * (v47 - 1));
        v86 = *v85;
        v87 = (v45 + 16 * v47);
        v88 = v87[1];
        sub_230D94454((*a3 + 48 * *v85), (*a3 + 48 * *v87), (*a3 + 48 * v88), v99);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_99;
        }

        if (v47 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *(v7 + 16);
        if (v47 >= v89)
        {
          goto LABEL_101;
        }

        v44 = v89 - 1;
        result = memmove((v45 + 16 * v47), v87 + 2, 16 * (v89 - 1 - v47));
        *(v7 + 16) = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_3;
        }
      }

      v52 = v45 + 16 * v44;
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_102;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_103;
      }

      v59 = (v7 + 16 * v44);
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_105;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_107;
      }

      if (v63 >= v55)
      {
        v81 = (v45 + 16 * v47);
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v97;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 48 * v6 - 48;
  v32 = v8 - v6;
LABEL_30:
  v33 = *(v30 + 48 * v6 + 24);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (*(v35 + 24) >= v33)
    {
LABEL_29:
      ++v6;
      v31 += 48;
      --v32;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 64);
    v37 = *(v35 + 80);
    v38 = *v35;
    v40 = *(v35 + 32);
    v39 = *(v35 + 48);
    *(v35 + 64) = *(v35 + 16);
    *(v35 + 80) = v40;
    *v35 = v39;
    *(v35 + 16) = v36;
    *(v35 + 24) = v33;
    *(v35 + 32) = v37;
    *(v35 + 48) = v38;
    v35 -= 48;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_230D93EB0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_230D44FDC(v8);
      v8 = result;
    }

    v91 = (v8 + 16);
    v92 = *(v8 + 16);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = (v8 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_230D94690((*a3 + (*v93 << 6)), (*a3 + (*v95 << 6)), (*a3 + (v96 << 6)), v5);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + (v7 << 6) + 24);
      v11 = v9 << 6;
      v12 = *a3 + (v9 << 6);
      v13 = *(v12 + 24);
      v14 = v9 + 2;
      v15 = (v12 + 152);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 8;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = (v7 << 6) - 64;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v11);
            v23 = (v31 + v19);
            v25 = v22[2];
            v24 = v22[3];
            v27 = *v22;
            v26 = v22[1];
            v28 = v23[3];
            v30 = *v23;
            v29 = v23[1];
            v22[2] = v23[2];
            v22[3] = v28;
            *v22 = v30;
            v22[1] = v29;
            *v23 = v27;
            v23[1] = v26;
            v23[2] = v25;
            v23[3] = v24;
          }

          ++v21;
          v19 -= 64;
          v11 += 64;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_230D44FF0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v45 = *(v8 + 24);
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_230D44FF0((v45 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v5);
    *v48 = v9;
    v48[1] = v7;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v49 = *(v8 + 32);
          v50 = *(v8 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = (v8 + 16 * v46);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = (v47 + 16 * v5);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v5 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v75 = (v8 + 16 * v46);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = (v47 + 16 * v5);
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v86 = (v47 + 16 * (v5 - 1));
        v87 = *v86;
        v88 = (v47 + 16 * v5);
        v89 = v88[1];
        sub_230D94690((*a3 + (*v86 << 6)), (*a3 + (*v88 << 6)), (*a3 + (v89 << 6)), v100);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *(v8 + 16);
        if (v5 >= v90)
        {
          goto LABEL_101;
        }

        v46 = v90 - 1;
        result = memmove((v47 + 16 * v5), v88 + 2, 16 * (v90 - 1 - v5));
        *(v8 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = v47 + 16 * v46;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = (v8 + 16 * v46);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = (v47 + 16 * v5);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v5 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v98;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + (v7 << 6);
  v34 = v9 - v7;
LABEL_30:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    if (*(v36 - 40) >= *(v36 + 24))
    {
LABEL_29:
      ++v7;
      v33 += 64;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v37 = (v36 - 64);
    v39 = *(v36 + 32);
    v38 = *(v36 + 48);
    v41 = *v36;
    v40 = *(v36 + 16);
    v42 = *(v36 - 48);
    *v36 = *(v36 - 64);
    *(v36 + 16) = v42;
    v43 = *(v36 - 16);
    *(v36 + 32) = *(v36 - 32);
    *(v36 + 48) = v43;
    *v37 = v41;
    v37[1] = v40;
    v36 -= 64;
    v37[2] = v39;
    v37[3] = v38;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_230D94454(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[6 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[6 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[3] < v6[3])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 6;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 6;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[6 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[6 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v5 -= 6;
    do
    {
      v17 = v5 + 6;
      if (*(v6 - 3) < *(v12 - 3))
      {
        v21 = v6 - 6;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v23;
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 6;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 1);
        *(v5 + 1) = *(v12 - 2);
        *(v5 + 2) = v20;
        *v5 = v19;
      }

      v5 -= 6;
      v12 -= 6;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v25 = (v24 >> 3) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[6 * v25])
  {
    memmove(v6, v4, 48 * v25);
  }

  return 1;
}

uint64_t sub_230D94690(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[8 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[3] < v6[3])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_24:
    v5 -= 8;
    do
    {
      v20 = v5 + 8;
      if (*(v6 - 5) < *(v14 - 5))
      {
        v25 = v6 - 8;
        if (v20 != v6)
        {
          v26 = *v25;
          v27 = *(v6 - 3);
          v28 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v28;
          *v5 = v26;
          *(v5 + 1) = v27;
        }

        if (v14 <= v4 || (v6 -= 8, v25 <= v7))
        {
          v6 = v25;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v14 - 8;
      if (v20 != v14)
      {
        v22 = *v21;
        v23 = *(v14 - 3);
        v24 = *(v14 - 1);
        *(v5 + 2) = *(v14 - 2);
        *(v5 + 3) = v24;
        *v5 = v22;
        *(v5 + 1) = v23;
      }

      v5 -= 8;
      v14 -= 8;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_35:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFC0)))
  {
    memmove(v6, v4, v29 >> 6 << 6);
  }

  return 1;
}

void sub_230D948AC(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  if ((a1[8] & 1) == 0)
  {
    v11 = *a1;
    v12 = *(*a1 + 16);

    if (v12)
    {
      v13 = 0;
      v14 = v11 + 32;
      v3 = MEMORY[0x277D84F90];
      do
      {
        v15 = (v14 + 168 * v13);
        v16 = v13;
        while (1)
        {
          if (v16 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          v17 = *v15;
          v18 = v15[2];
          v59 = v15[1];
          v60 = v18;
          v58 = v17;
          v19 = v15[3];
          v20 = v15[4];
          v21 = v15[6];
          v63 = v15[5];
          v64 = v21;
          v61 = v19;
          v62 = v20;
          v22 = v15[7];
          v23 = v15[8];
          v24 = v15[9];
          v68 = *(v15 + 20);
          v66 = v23;
          v67 = v24;
          v65 = v22;
          if (v60 <= 1u)
          {
            if (v60)
            {
              break;
            }
          }

          v25 = sub_230E698C0();
          sub_230D93514(&v58, v57);

          if (v25)
          {
            goto LABEL_15;
          }

          ++v16;
          sub_230D93570(&v58);
          v15 = (v15 + 168);
          if (v12 == v16)
          {
            goto LABEL_32;
          }
        }

        sub_230D93514(&v58, v57);

LABEL_15:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_230D48F00(0, *(v3 + 16) + 1, 1);
          v3 = v69;
        }

        v28 = *(v3 + 16);
        v27 = *(v3 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_230D48F00((v27 > 1), v28 + 1, 1);
          v3 = v69;
        }

        v13 = v16 + 1;
        *(v3 + 16) = v28 + 1;
        v29 = v3 + 168 * v28;
        v30 = v58;
        v31 = v60;
        *(v29 + 48) = v59;
        *(v29 + 64) = v31;
        *(v29 + 32) = v30;
        v32 = v61;
        v33 = v62;
        v34 = v64;
        *(v29 + 112) = v63;
        *(v29 + 128) = v34;
        *(v29 + 80) = v32;
        *(v29 + 96) = v33;
        v35 = v65;
        v36 = v66;
        v37 = v67;
        *(v29 + 192) = v68;
        *(v29 + 160) = v36;
        *(v29 + 176) = v37;
        *(v29 + 144) = v35;
        v14 = v11 + 32;
      }

      while (v12 - 1 != v16);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

LABEL_32:

    v2 = a2;
    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_33:

    v53 = sub_230E68D60();
    v54 = sub_230E693F0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_230D02000, v53, v54, "[PodcastAggregator][generatePodcastInsights] No podcast sessions found", v55, 2u);
      MEMORY[0x23191EAE0](v55, -1, -1);
    }

    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
    return;
  }

  v3 = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D84F90] + 16);
  if (!v4)
  {
    goto LABEL_33;
  }

LABEL_3:

  v5 = sub_230E68D60();
  v6 = sub_230E693E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v3 + 16);

    _os_log_impl(&dword_230D02000, v5, v6, "[PodcastAggregator][generatePodcastInsights] Processing %ld podcast sessions", v7, 0xCu);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  else
  {
  }

  v38 = *(v3 + 16);
  if (v38 > v4 - 1)
  {
    if (v4 == 1)
    {
      v39 = 0;
      v40 = 0.0;
    }

    else
    {
      v39 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v41 = (v3 + 240);
      v40 = 0.0;
      v42 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v8.n128_f64[0] = *v41;
        v40 = v40 + *(v41 - 21) + *v41;
        v41 += 42;
        v42 -= 2;
      }

      while (v42);
      if (v4 == v39)
      {
        goto LABEL_30;
      }
    }

    v43 = v4 - v39;
    v44 = (v3 + 168 * v39 + 72);
    do
    {
      v45 = *v44;
      v44 += 21;
      v40 = v40 + v45;
      --v43;
    }

    while (v43);
LABEL_30:
    v46 = round(v40 * 100.0) / 100.0;
    v47 = round(v46 / v38 * 100.0);
    v48 = v47 / 100.0;
    sub_230DA1E8C(v3, v47, 100.0, v8, v9, v10);
    v50 = v49;
    v51 = sub_230D94D64(v3);
    v52 = sub_230D95438(v3);

    *v2 = v38;
    *(v2 + 8) = v46;
    *(v2 + 16) = v48;
    *(v2 + 24) = v50;
    *(v2 + 32) = v51;
    *(v2 + 40) = v52;
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_230D94D64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_230D0E604(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    v7 = v5 - 1;
    v88 = v2;
    while (1)
    {
      v8 = v6[9];
      v99 = v6[8];
      v100 = v8;
      v101 = *(v6 + 20);
      v9 = v6[5];
      v95 = v6[4];
      v96 = v9;
      v10 = v6[7];
      v97 = v6[6];
      v98 = v10;
      v11 = v6[1];
      v91 = *v6;
      v92 = v11;
      v12 = v6[3];
      v93 = v6[2];
      v94 = v12;
      v13 = v96;
      if (!v96)
      {
        goto LABEL_12;
      }

      v14 = *(&v95 + 1);
      v15 = BYTE7(v96) & 0xF;
      if ((v96 & 0x2000000000000000) == 0)
      {
        v15 = *(&v95 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v15)
      {
LABEL_12:
        sub_230D93514(&v91, v90);
        v24 = sub_230E68D60();
        v25 = sub_230E693F0();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = v92;
          v27 = swift_slowAlloc();
          v28 = v4;
          v29 = swift_slowAlloc();
          v90[0] = v29;
          *v27 = 136315138;

          sub_230D93570(&v91);
          v30 = sub_230D7E620(v26, *(&v26 + 1), v90);

          *(v27 + 4) = v30;
          _os_log_impl(&dword_230D02000, v24, v25, "[PodcastAggregator][generateTopChannels] Skipping session without show name: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          v31 = v29;
          v4 = v28;
          MEMORY[0x23191EAE0](v31, -1, -1);
          MEMORY[0x23191EAE0](v27, -1, -1);

          if (!v7)
          {
            break;
          }

          goto LABEL_42;
        }

        goto LABEL_24;
      }

      v16 = *(&v100 + 1);
      v17 = v101;
      v18 = *(&v93 + 1);
      if (!v4[2])
      {
        sub_230D93514(&v91, v90);

LABEL_17:

        v32 = v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90[0] = v32;
        v34 = sub_230DA41A0(v14, v13);
        v36 = *(v32 + 16);
        v37 = (v35 & 1) == 0;
        v38 = __OFADD__(v36, v37);
        v39 = v36 + v37;
        if (v38)
        {
          goto LABEL_60;
        }

        v40 = v35;
        if (*(v32 + 24) < v39)
        {
          sub_230DB7628(v39, isUniquelyReferenced_nonNull_native);
          v34 = sub_230DA41A0(v14, v13);
          if ((v40 & 1) != (v41 & 1))
          {
            goto LABEL_65;
          }

          goto LABEL_22;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_22:
          if (v40)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v58 = v16;
          v59 = v34;
          sub_230DBA4D4();
          v34 = v59;
          v16 = v58;
          if (v40)
          {
LABEL_23:
            v42 = v16;
            v43 = v34;

            v4 = v90[0];
            v44 = *(v90[0] + 56) + 32 * v43;
            *v44 = 1;
            *(v44 + 8) = v18;
            *(v44 + 16) = v42;
            *(v44 + 24) = v17;

LABEL_24:
            sub_230D93570(&v91);
            if (!v7)
            {
              break;
            }

            goto LABEL_42;
          }
        }

        v4 = v90[0];
        *(v90[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v60 = (v4[6] + 16 * v34);
        *v60 = v14;
        v60[1] = v13;
        v61 = v4[7] + 32 * v34;
        *v61 = 1;
        *(v61 + 8) = v18;
        *(v61 + 16) = v16;
        *(v61 + 24) = v17;
        sub_230D93570(&v91);
        v62 = v4[2];
        v38 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v38)
        {
          goto LABEL_61;
        }

        v4[2] = v63;
        if (!v7)
        {
          break;
        }

        goto LABEL_42;
      }

      sub_230D93514(&v91, v90);

      v19 = sub_230DA41A0(v14, v13);
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }

      v21 = v4[7] + 32 * v19;
      v2 = *v21 + 1;
      if (__OFADD__(*v21, 1))
      {
        goto LABEL_62;
      }

      v22 = *(v21 + 24);
      v23 = *(v21 + 8);
      if (v22)
      {
        v16 = *(v21 + 16);
      }

      else
      {

        v22 = v17;
      }

      sub_230D93570(&v91);
      v45 = v4;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v90[0] = v45;
      v47 = sub_230DA41A0(v14, v13);
      v49 = *(v45 + 16);
      v50 = (v48 & 1) == 0;
      v38 = __OFADD__(v49, v50);
      v51 = v49 + v50;
      if (v38)
      {
        goto LABEL_63;
      }

      v52 = v48;
      if (*(v45 + 24) >= v51)
      {
        if ((v46 & 1) == 0)
        {
          v64 = v16;
          v65 = v47;
          sub_230DBA4D4();
          v47 = v65;
          v16 = v64;
          v54 = v18 + v23;
          if (v52)
          {
LABEL_33:
            v55 = v16;
            v56 = v47;

            v4 = v90[0];
            v57 = *(v90[0] + 56) + 32 * v56;
            *v57 = v2;
            *(v57 + 8) = v54;
            *(v57 + 16) = v55;
            *(v57 + 24) = v22;

            v2 = v88;
            if (!v7)
            {
              break;
            }

            goto LABEL_42;
          }

          goto LABEL_40;
        }
      }

      else
      {
        sub_230DB7628(v51, v46);
        v47 = sub_230DA41A0(v14, v13);
        if ((v52 & 1) != (v53 & 1))
        {
          goto LABEL_65;
        }
      }

      v54 = v18 + v23;
      if (v52)
      {
        goto LABEL_33;
      }

LABEL_40:
      v4 = v90[0];
      *(v90[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
      v66 = (v4[6] + 16 * v47);
      *v66 = v14;
      v66[1] = v13;
      v67 = v4[7] + 32 * v47;
      *v67 = v2;
      *(v67 + 8) = v54;
      *(v67 + 16) = v16;
      *(v67 + 24) = v22;
      v68 = v4[2];
      v38 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v38)
      {
        goto LABEL_64;
      }

      v4[2] = v69;
      v2 = v88;
      if (!v7)
      {
        break;
      }

LABEL_42:
      --v7;
      v6 = (v6 + 168);
    }
  }

  v70 = v4[2];
  v71 = MEMORY[0x277D84F90];
  if (v70)
  {
    v72 = sub_230E4B258(v70, 0);
    v73 = sub_230E68474();
    v74 = v91;

    sub_230D912FC(v74);
    if (v73 == v70)
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  v72 = v71;
LABEL_47:
  *&v91 = v72;
  v2 = 0;
  sub_230D95B84(&v91);
  v75 = v91;
  v76 = *(v91 + 16);
  if (v76 >= 5)
  {
    v77 = 5;
  }

  else
  {
    v77 = *(v91 + 16);
  }

  if (v76)
  {
    *&v91 = v71;
    sub_230D48FE8(0, v77, 0);
    v78 = v91;
    v79 = (v75 + 72);
    while (v77)
    {
      v81 = *(v79 - 5);
      v80 = *(v79 - 4);
      v89 = *(v79 - 3);
      v82 = *(v79 - 2);
      v84 = *(v79 - 1);
      v83 = *v79;
      *&v91 = v78;
      v85 = *(v78 + 16);
      v2 = *(v78 + 24);

      if (v85 >= v2 >> 1)
      {
        sub_230D48FE8((v2 > 1), v85 + 1, 1);
        v78 = v91;
      }

      *(v78 + 16) = v85 + 1;
      v86 = v78 + 48 * v85;
      *(v86 + 32) = v81;
      *(v86 + 40) = v80;
      *(v86 + 48) = v84;
      *(v86 + 56) = v83;
      *(v86 + 64) = v89;
      *(v86 + 72) = round(v82 * 100.0) / 100.0;
      v79 += 6;
      if (!--v77)
      {

        return v78;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](v2);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_230D95438(uint64_t a1)
{
  v2 = sub_230D0E738(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    for (i = v3 - 1; ; --i)
    {
      v6 = *(v4 + 144);
      v96 = *(v4 + 128);
      v97 = v6;
      v98 = *(v4 + 160);
      v7 = *(v4 + 80);
      v92 = *(v4 + 64);
      v93 = v7;
      v8 = *(v4 + 112);
      v94 = *(v4 + 96);
      v95 = v8;
      v9 = *(v4 + 16);
      v89[0] = *v4;
      v89[1] = v9;
      v10 = *(v4 + 48);
      v90 = *(v4 + 32);
      v91 = v10;
      v11 = v93;
      v12 = v9;
      if (!v93)
      {
        goto LABEL_12;
      }

      v13 = *(&v92 + 1);
      v14 = BYTE7(v93) & 0xF;
      if ((v93 & 0x2000000000000000) == 0)
      {
        v14 = *(&v92 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = *(&v95 + 1);
        v16 = v96;
        v17 = *(&v90 + 1);
        if (!v2[2])
        {
          sub_230D93514(v89, v88);

LABEL_16:
          v84 = i;
          i = v16;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88[0] = v2;
          v31 = sub_230DA41A0(v12, *(&v12 + 1));
          v33 = v2;
          v34 = v2[2];
          v35 = (v32 & 1) == 0;
          v36 = __OFADD__(v34, v35);
          v37 = v34 + v35;
          if (v36)
          {
            goto LABEL_57;
          }

          v38 = v32;
          if (v33[3] >= v37)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_21;
            }

            v59 = v31;
            sub_230DBA664();
            v31 = v59;
            v40 = v15;
            if ((v38 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_22:
            v41 = v31;

            v2 = v88[0];
            v42 = *(v88[0] + 56) + 48 * v41;
            *v42 = 1;
            *(v42 + 8) = v17;
            *(v42 + 16) = v13;
            *(v42 + 24) = v11;
            *(v42 + 32) = v40;
            *(v42 + 40) = i;

            sub_230D93570(v89);
          }

          else
          {
            sub_230DB7904(v37, isUniquelyReferenced_nonNull_native);
            v31 = sub_230DA41A0(v12, *(&v12 + 1));
            if ((v38 & 1) != (v39 & 1))
            {
              goto LABEL_62;
            }

LABEL_21:
            v40 = v15;
            if (v38)
            {
              goto LABEL_22;
            }

LABEL_35:
            v2 = v88[0];
            *(v88[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
            *(v2[6] + 16 * v31) = v12;
            v60 = v2[7] + 48 * v31;
            *v60 = 1;
            *(v60 + 8) = v17;
            *(v60 + 16) = v13;
            *(v60 + 24) = v11;
            *(v60 + 32) = v40;
            *(v60 + 40) = i;
            sub_230D93570(v89);
            v61 = v2[2];
            v36 = __OFADD__(v61, 1);
            v62 = v61 + 1;
            if (v36)
            {
              goto LABEL_58;
            }

            v2[2] = v62;
          }

          i = v84;
          goto LABEL_38;
        }

        sub_230D93514(v89, v88);

        v18 = sub_230DA41A0(v12, *(&v12 + 1));
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }

        v20 = v18;

        v21 = v2[7] + 48 * v20;
        v22 = *v21 + 1;
        if (__OFADD__(*v21, 1))
        {
          goto LABEL_59;
        }

        v23 = *(v21 + 24);
        v82 = *(v21 + 16);
        v24 = *(v21 + 8);
        if (*(v21 + 40))
        {
          v15 = *(v21 + 32);
          v83 = *(v21 + 40);
        }

        else
        {
          v83 = v16;
        }

        sub_230D93570(v89);
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v88[0] = v2;
        v44 = sub_230DA41A0(v12, *(&v12 + 1));
        v46 = v2;
        v47 = v2[2];
        v48 = (v45 & 1) == 0;
        v36 = __OFADD__(v47, v48);
        v49 = v47 + v48;
        if (v36)
        {
          goto LABEL_60;
        }

        v50 = v45;
        if (v46[3] >= v49)
        {
          if ((v43 & 1) == 0)
          {
            v63 = v44;
            sub_230DBA664();
            v44 = v63;
          }
        }

        else
        {
          sub_230DB7904(v49, v43);
          v44 = sub_230DA41A0(v12, *(&v12 + 1));
          if ((v50 & 1) != (v51 & 1))
          {
            goto LABEL_62;
          }
        }

        v52 = v15;
        v53 = v17 + v24;
        if (v50)
        {
          v54 = v44;

          v2 = v88[0];
          v55 = *(v88[0] + 56) + 48 * v54;
          *v55 = v22;
          *(v55 + 8) = v53;
          *(v55 + 16) = v82;
          *(v55 + 24) = v23;
          *(v55 + 32) = v52;
          *(v55 + 40) = v83;
        }

        else
        {
          v2 = v88[0];
          *(v88[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
          *(v2[6] + 16 * v44) = v12;
          v56 = v2[7] + 48 * v44;
          *v56 = v22;
          *(v56 + 8) = v53;
          *(v56 + 16) = v82;
          *(v56 + 24) = v23;
          *(v56 + 32) = v15;
          *(v56 + 40) = v83;
          v57 = v2[2];
          v36 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v36)
          {
            goto LABEL_61;
          }

          v2[2] = v58;
        }
      }

      else
      {
LABEL_12:
        sub_230D93514(v89, v88);
        v25 = sub_230E68D60();
        v26 = sub_230E693F0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v88[0] = v28;
          *v27 = 136315138;

          sub_230D93570(v89);
          v29 = sub_230D7E620(v12, *(&v12 + 1), v88);

          *(v27 + 4) = v29;
          _os_log_impl(&dword_230D02000, v25, v26, "[PodcastAggregator][generateTopEpisodes] Skipping session without show name: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x23191EAE0](v28, -1, -1);
          MEMORY[0x23191EAE0](v27, -1, -1);
        }

        else
        {

          sub_230D93570(v89);
        }
      }

LABEL_38:
      if (!i)
      {
        break;
      }

      v4 += 168;
    }
  }

  v64 = v2[2];
  v65 = MEMORY[0x277D84F90];
  if (v64)
  {
    v66 = sub_230E4B2F4(v64, 0);
    v67 = sub_230E68470();
    v68 = *&v89[0];

    sub_230D912FC(v68);
    if (v67 == v64)
    {
      goto LABEL_44;
    }

    __break(1u);
  }

  v66 = v65;
LABEL_44:
  *&v89[0] = v66;
  i = 0;
  sub_230D95D04(v89);
  v69 = *&v89[0];
  v70 = *(*&v89[0] + 16);
  if (v70 >= 5)
  {
    v71 = 5;
  }

  else
  {
    v71 = *(*&v89[0] + 16);
  }

  if (v70)
  {
    *&v89[0] = v65;
    sub_230D49020(0, v71, 0);
    v72 = *&v89[0];
    v73 = (v69 + 48);
    while (v71)
    {
      v74 = *(v73 - 1);
      v86 = *(v73 - 2);
      v87 = *v73;
      v75 = v73[1];
      v76 = *(v73 + 3);
      v85 = *(v73 + 2);
      i = *(v73 + 4);
      v77 = *(v73 + 5);
      v78 = *(v72 + 16);
      v79 = *(v72 + 24);
      *&v89[0] = v72;

      if (v78 >= v79 >> 1)
      {
        sub_230D49020((v79 > 1), v78 + 1, 1);
        v72 = *&v89[0];
      }

      *(v72 + 16) = v78 + 1;
      v80 = v72 + (v78 << 6);
      *(v80 + 32) = v86;
      *(v80 + 40) = v74;
      *(v80 + 48) = i;
      *(v80 + 56) = v77;
      *(v80 + 64) = v85;
      *(v80 + 72) = v76;
      *(v80 + 80) = v87;
      *(v80 + 88) = round(v75 * 100.0) / 100.0;
      v73 += 8;
      if (!--v71)
      {

        return v72;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    sub_230E69950();
    __break(1u);
    MEMORY[0x23191E910](i);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}