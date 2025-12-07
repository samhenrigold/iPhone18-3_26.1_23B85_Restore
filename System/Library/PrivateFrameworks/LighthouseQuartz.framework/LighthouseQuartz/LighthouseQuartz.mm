uint64_t sub_255F47688()
{
  v0 = sub_255F54B60(qword_286806640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A880, &qword_255F581F0);
  result = swift_arrayDestroy();
  qword_27F81A8D8 = v0;
  return result;
}

uint64_t runAnalysisCommand(startDate:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v6 = sub_255F576A0();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A6E0, &qword_255F58098);
  v3[13] = v7;
  v3[14] = *(v7 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v8 = sub_255F57680();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v9 = sub_255F57640();
  v3[21] = v9;
  v3[22] = *(v9 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[27] = v10;
  v11 = swift_task_alloc();
  v3[28] = v11;
  *v11 = v3;
  v11[1] = sub_255F4796C;

  return sub_255F48708(v10, a2, a3);
}

uint64_t sub_255F4796C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[29] = v3;
  *v3 = v2;
  v3[1] = sub_255F47AD8;
  v4 = v1[26];
  v5 = v1[8];
  v6 = v1[7];

  return sub_255F4A6A8(v4, v6, v5);
}

uint64_t sub_255F47AD8()
{

  return MEMORY[0x2822009F8](sub_255F47BD4, 0, 0);
}

uint64_t sub_255F47BD4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  *(v0 + 320) = *MEMORY[0x277CE1948];
  v3 = *(v2 + 104);
  *(v0 + 240) = v3;
  *(v0 + 248) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v3(v1);
  sub_255F575E0();
  sub_255F576B0();
  v4 = sub_255F57630();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 80);
    v38 = *(v6 + 16);
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v37 = *(v6 + 72);
    v36 = (v6 + 8);
    do
    {
      v39 = v5;
      v8 = *(v0 + 96);
      v9 = *(v0 + 72);
      v38(v8, v7, v9);
      *(v0 + 16) = sub_255F57690();
      *(v0 + 24) = v10;
      sub_255F4C00C();
      sub_255F553C4(&qword_27F81A6F0, &qword_27F81A6E0, &qword_255F58098, MEMORY[0x277D85AC0]);
      v11 = sub_255F57990();
      v13 = v12;
      v15 = v14;
      v17 = v16;

      sub_255F57690();
      (*v36)(v8, v9);
      MEMORY[0x259C52E10](v11, v13, v15, v17);

      sub_255F575F0();

      v7 += v37;
      v5 = v39 - 1;
    }

    while (v39 != 1);
  }

  v18 = *(v0 + 200);
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  v21 = *(v0 + 160);
  v22 = *(v0 + 136);
  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);
  v26 = *(v0 + 112);
  v27 = *(v0 + 48);
  v28 = *(v26 + 8);
  *(v0 + 256) = v28;
  *(v0 + 264) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v24, v25);
  v29 = *(v23 + 8);
  *(v0 + 272) = v29;
  *(v0 + 280) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v21, v22);
  v30 = *(v20 + 32);
  *(v0 + 288) = v30;
  *(v0 + 296) = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v30(v27, v18, v19);
  v31 = swift_task_alloc();
  *(v0 + 304) = v31;
  *v31 = v0;
  v31[1] = sub_255F47F78;
  v32 = *(v0 + 192);
  v33 = *(v0 + 56);
  v34 = *(v0 + 64);

  return sub_255F4C0A8(v32, v33, v34);
}

uint64_t sub_255F47F78()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_255F48474;
  }

  else
  {
    v2 = sub_255F4808C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_255F4808C()
{
  v1 = *(v0 + 312);
  (*(v0 + 240))(*(v0 + 152), *(v0 + 320), *(v0 + 136));
  sub_255F575E0();
  sub_255F576B0();
  if (v1)
  {

    return MEMORY[0x2821FEBD8](v1, "LighthouseQuartz/Analysis.swift", 31, 1, 153);
  }

  else
  {
    v2 = sub_255F57630();
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v0 + 80);
      v29 = *(v4 + 16);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v28 = *(v4 + 72);
      v27 = (v4 + 8);
      do
      {
        v33 = v3;
        v6 = *(v0 + 88);
        v7 = *(v0 + 72);
        v29(v6, v5, v7);
        *(v0 + 32) = sub_255F57690();
        *(v0 + 40) = v8;
        sub_255F4C00C();
        sub_255F553C4(&qword_27F81A6F0, &qword_27F81A6E0, &qword_255F58098, MEMORY[0x277D85AC0]);
        v9 = sub_255F57990();
        v11 = v10;
        v13 = v12;
        v15 = v14;

        sub_255F57690();
        (*v27)(v6, v7);
        MEMORY[0x259C52E10](v9, v11, v13, v15);

        sub_255F575F0();

        v5 += v28;
        v3 = v33 - 1;
      }

      while (v33 != 1);
    }

    v32 = *(v0 + 288);
    v16 = *(v0 + 272);
    v17 = *(v0 + 208);
    v18 = *(v0 + 192);
    v30 = *(v0 + 216);
    v31 = *(v0 + 184);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 152);
    v22 = *(v0 + 136);
    v23 = *(v0 + 48);
    (*(v0 + 256))(*(v0 + 120), *(v0 + 104));
    v16(v21, v22);
    v24 = *(v19 + 8);
    v24(v18, v20);
    v24(v23, v20);
    v24(v17, v20);
    v24(v30, v20);
    v32(v23, v31, v20);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_255F48474()
{
  if (qword_27F81A6C8 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = sub_255F57970();
  __swift_project_value_buffer(v2, qword_27F81A8E0);
  MEMORY[0x259C532E0](v1);
  v3 = sub_255F57950();
  v4 = sub_255F57AA0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[39];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[21];
  v10 = v0[22];
  if (v5)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    MEMORY[0x259C532E0](v6);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_255F46000, v3, v4, "Encountered error when getting life event metrics: %@", v11, 0xCu);
    sub_255F55620(v12, &qword_27F81A6F8, &qword_255F580B8);
    MEMORY[0x259C533C0](v12, -1, -1);
    MEMORY[0x259C533C0](v11, -1, -1);
  }

  v14 = *(v10 + 8);
  v14(v8, v9);
  v14(v7, v9);

  v15 = v0[1];

  return v15();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_255F48708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A720, &qword_255F580D0);
  v3[49] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A728, &qword_255F580D8);
  v3[50] = v4;
  v3[51] = *(v4 - 8);
  v3[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A730, &qword_255F580E0);
  v3[53] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A738, &qword_255F580E8);
  v3[54] = v5;
  v3[55] = *(v5 - 8);
  v3[56] = swift_task_alloc();
  v6 = sub_255F57640();
  v3[57] = v6;
  v3[58] = *(v6 - 8);
  v3[59] = swift_task_alloc();
  v7 = sub_255F575D0();
  v3[60] = v7;
  v3[61] = *(v7 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v3[66] = v8;
  v3[67] = *(v8 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v9 = sub_255F57580();
  v3[71] = v9;
  v3[72] = *(v9 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255F48AB0, 0, 0);
}

uint64_t sub_255F48AB0()
{
  v1 = v0[47];
  v2 = [objc_opt_self() defaultManager];
  v0[77] = v2;
  v3 = swift_task_alloc();
  v0[78] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[79] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A870, &qword_255F581E8);
  *v4 = v0;
  v4[1] = sub_255F48BE0;

  return MEMORY[0x2822007B8](v0 + 44, 0, 0, 0xD000000000000025, 0x8000000255F58870, sub_255F557C8, v3, v5);
}

uint64_t sub_255F48BE0()
{

  return MEMORY[0x2822009F8](sub_255F48CF8, 0, 0);
}

uint64_t sub_255F48CF8()
{
  v2 = *(v0 + 352);
  v3 = sub_255F54EA8(MEMORY[0x277D84F90], &qword_27F81A818, &qword_255F581A0, &qword_27F81A800, &qword_255F58198);
  v4 = v2;
  v260 = v3;
  v212 = v2;
  if (v2 >> 62)
  {
    goto LABEL_67;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v261 = v0;
  if (!v5)
  {
LABEL_68:
    v259 = 0;
    v256 = 0;
LABEL_69:

    sub_255F57520();
    v86 = v85;
    sub_255F57520();
    v88 = (v86 - v87) / 86400.0;
    if ((*&v88 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_176;
    }

    if (v88 <= -9.22337204e18)
    {
LABEL_177:
      __break(1u);
    }

    else if (v88 < 9.22337204e18)
    {
      v90 = *(v0 + 440);
      v89 = *(v0 + 448);
      v91 = *(v0 + 432);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A788, &qword_255F58130);
      v1 = *(*(sub_255F576A0() - 8) + 72);
      v92 = swift_allocObject();
      v223 = xmmword_255F58050;
      *(v92 + 16) = xmmword_255F58050;
      sub_255F57670();
      sub_255F57660();
      v219 = v92;
      sub_255F57650();
      (*(v90 + 8))(v89, v91);
      if (qword_27F81A6C0 == -1)
      {
LABEL_73:
        v262 = MEMORY[0x277D84F90];
        v245 = qword_27F81A8D8 + 64;
        v93 = -1;
        v94 = -1 << *(qword_27F81A8D8 + 32);
        if (-v94 < 64)
        {
          v93 = ~(-1 << -v94);
        }

        v95 = v93 & *(qword_27F81A8D8 + 64);
        v221 = (63 - v94) >> 6;
        v226 = (*(v0 + 408) + 8);
        v258 = qword_27F81A8D8;
        swift_bridgeObjectRetain_n();
        v96 = 0;
        v235 = v1;
        while (v95)
        {
          v0 = v261;
LABEL_82:
          v98 = *(v0 + 416);
          v99 = *(v0 + 400);
          v95 &= v95 - 1;
          v253 = swift_allocObject();
          *(v253 + 16) = xmmword_255F58060;
          swift_bridgeObjectRetain_n();
          MEMORY[0x259C52E30](0x73695673656D6954, 0xEC00000064657469);
          sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
          sub_255F57670();
          sub_255F57660();
          sub_255F57650();
          v100 = *v226;
          (*v226)(v98, v99);

          MEMORY[0x259C52E30](0x6E657053656D6954, 0xE900000000000074);
          sub_255F57670();
          sub_255F57660();
          v1 = v235;
          sub_255F57650();
          v100(v98, v99);

          sub_255F52D18(v253);
        }

        v0 = v261;
        while (1)
        {
          v97 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            goto LABEL_164;
          }

          if (v97 >= v221)
          {
            break;
          }

          v95 = *(v245 + 8 * v97);
          ++v96;
          if (v95)
          {
            v96 = v97;
            goto LABEL_82;
          }
        }

        v1 = *(v261 + 376);
        v101 = *(v261 + 384);

        sub_255F52D18(v262);
        *(v261 + 360) = v219;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A798, &qword_255F58138);
        sub_255F553C4(&qword_27F81A7A0, &qword_27F81A798, &qword_255F58138, MEMORY[0x277D83970]);
        sub_255F57620();
        v102 = sub_255F4F788(v1, v101);
        v229 = v102[2];
        if (!v229)
        {
LABEL_159:

          v200 = *(v0 + 464);
          v201 = *(v0 + 472);
          v202 = *(v0 + 456);
          v203 = *(v0 + 368);

          (*(v200 + 32))(v203, v201, v202);

          sub_255F553B4(v259, 0);
          sub_255F553B4(v256, 0);

          v204 = *(v0 + 8);

          return v204();
        }

        v103 = 0;
        v104 = *(v261 + 576);
        v231 = v102 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
        v233 = v104;
        v222 = (v104 + 8);
        v227 = v102;
LABEL_87:
        if (v103 >= v102[2])
        {
          goto LABEL_173;
        }

        v107 = *(v233 + 16);
        v107(*(v0 + 584), &v231[*(v233 + 72) * v103], *(v0 + 568));
        if (v260[2] && (v108 = sub_255F52060(*(v0 + 584)), (v109 & 1) != 0))
        {
          v242 = *(v260[7] + 8 * v108);
        }

        else
        {
          v242 = 0;
        }

        v236 = v103 + 1;
        v110 = *(v0 + 584);
        v111 = *(v0 + 568);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7A8, &qword_255F58140);
        inited = swift_initStackObject();
        *(inited + 16) = v223;
        *(inited + 32) = 1702125924;
        v1 = inited + 32;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 72) = v111;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
        v107(boxed_opaque_existential_0, v110, v111);
        v114 = sub_255F54C74(inited);
        swift_setDeallocating();
        sub_255F55620(inited + 32, &qword_27F81A7B0, &qword_255F58148);
        v115 = -1 << *(v258 + 32);
        if (-v115 < 64)
        {
          v116 = ~(-1 << -v115);
        }

        else
        {
          v116 = -1;
        }

        v117 = v116 & *(v258 + 64);
        v0 = (63 - v115) >> 6;

        v118 = 0;
        v250 = v0;
        v119 = v245;
        if (v117)
        {
          while (1)
          {
            v120 = v118;
LABEL_100:
            v121 = (*(v258 + 56) + ((v120 << 10) | (16 * __clz(__rbit64(v117)))));
            v0 = *v121;
            v122 = v121[1];
            v263 = *v121;
            swift_bridgeObjectRetain_n();
            MEMORY[0x259C52E30](0x73695673656D6954, 0xEC00000064657469);
            v123 = v263;
            v1 = 0x277CCABB0uLL;
            v124 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v254 = sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
            *(v261 + 120) = v254;
            *(v261 + 96) = v124;
            sub_255F55470((v261 + 96), (v261 + 128));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v264 = v114;
            v126 = sub_255F51FE8(v123, v122);
            v128 = v114[2];
            v129 = (v127 & 1) == 0;
            v10 = __OFADD__(v128, v129);
            v130 = v128 + v129;
            if (v10)
            {
              goto LABEL_165;
            }

            v1 = v127;
            if (v114[3] < v130)
            {
              break;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_105;
            }

            v136 = v126;
            sub_255F52E68();
            v126 = v136;
            if (v1)
            {
LABEL_106:
              v132 = v0;
              v133 = v126;

              v134 = v264;
              v135 = (v264[7] + 32 * v133);
              __swift_destroy_boxed_opaque_existential_0(v135);
              v0 = v261;
              sub_255F55470((v261 + 128), v135);
              goto LABEL_110;
            }

LABEL_108:
            v134 = v264;
            v264[(v126 >> 6) + 8] |= 1 << v126;
            v137 = (v264[6] + 16 * v126);
            *v137 = v123;
            v137[1] = v122;
            sub_255F55470((v261 + 128), (v264[7] + 32 * v126));
            v138 = v264[2];
            v10 = __OFADD__(v138, 1);
            v139 = v138 + 1;
            if (v10)
            {
              goto LABEL_169;
            }

            v132 = v0;
            v264[2] = v139;
            v0 = v261;
LABEL_110:

            MEMORY[0x259C52E30](0x6E657053656D6954, 0xE900000000000074);

            v141 = v132;
            v140 = v122;
            v142 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
            *(v0 + 184) = v254;
            *(v0 + 160) = v142;
            sub_255F55470((v0 + 160), (v0 + 192));
            v143 = swift_isUniquelyReferenced_nonNull_native();
            v265 = v134;
            v144 = sub_255F51FE8(v141, v140);
            v146 = v134[2];
            v147 = (v145 & 1) == 0;
            v10 = __OFADD__(v146, v147);
            v148 = v146 + v147;
            if (v10)
            {
              goto LABEL_166;
            }

            v1 = v145;
            if (v134[3] >= v148)
            {
              v0 = v250;
              if ((v143 & 1) == 0)
              {
                v155 = v144;
                sub_255F52E68();
                v144 = v155;
              }
            }

            else
            {
              sub_255F523DC(v148, v143);
              v144 = sub_255F51FE8(v141, v140);
              v0 = v250;
              if ((v1 & 1) != (v149 & 1))
              {
                goto LABEL_155;
              }
            }

            v117 &= v117 - 1;
            if (v1)
            {
              v150 = v144;

              v114 = v265;
              v151 = (v265[7] + 32 * v150);
              __swift_destroy_boxed_opaque_existential_0(v151);
              sub_255F55470((v261 + 192), v151);
              v118 = v120;
              v119 = v245;
              if (!v117)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v114 = v265;
              v265[(v144 >> 6) + 8] |= 1 << v144;
              v152 = (v265[6] + 16 * v144);
              *v152 = v141;
              v152[1] = v140;
              sub_255F55470((v261 + 192), (v265[7] + 32 * v144));
              v153 = v265[2];
              v10 = __OFADD__(v153, 1);
              v154 = v153 + 1;
              if (v10)
              {
                goto LABEL_170;
              }

              v265[2] = v154;
              v118 = v120;
              v119 = v245;
              if (!v117)
              {
                goto LABEL_97;
              }
            }
          }

          sub_255F523DC(v130, isUniquelyReferenced_nonNull_native);
          v126 = sub_255F51FE8(v123, v122);
          if ((v1 & 1) != (v131 & 1))
          {
            goto LABEL_155;
          }

LABEL_105:
          if (v1)
          {
            goto LABEL_106;
          }

          goto LABEL_108;
        }

        while (1)
        {
LABEL_97:
          v120 = v118 + 1;
          if (__OFADD__(v118, 1))
          {
            __break(1u);
            goto LABEL_163;
          }

          if (v120 >= v0)
          {
            break;
          }

          v117 = *(v119 + 8 * v120);
          ++v118;
          if (v117)
          {
            goto LABEL_100;
          }
        }

        v156 = v242;
        if (!v242)
        {
          v156 = sub_255F54DA4(MEMORY[0x277D84F90]);
        }

        v0 = v261;
        v157 = 0;
        v158 = v156 + 64;
        v159 = -1 << *(v156 + 32);
        if (-v159 < 64)
        {
          v160 = ~(-1 << -v159);
        }

        else
        {
          v160 = -1;
        }

        v161 = v160 & *(v156 + 64);
        v162 = (63 - v159) >> 6;
        v240 = v156 + 64;
        v238 = v162;
        v243 = v156;
        while (1)
        {
          if (!v161)
          {
            while (1)
            {
              v165 = v157 + 1;
              if (__OFADD__(v157, 1))
              {
                break;
              }

              if (v165 >= v162)
              {
                v105 = *(v0 + 584);
                v106 = *(v0 + 568);

                v1 = sub_255F5035C(v114);

                sub_255F57600();

                (*v222)(v105, v106);
                v102 = v227;
                v103 = v236;
                if (v236 == v229)
                {
                  goto LABEL_159;
                }

                goto LABEL_87;
              }

              v161 = *(v158 + 8 * v165);
              ++v157;
              if (v161)
              {
                goto LABEL_135;
              }
            }

LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v165 = v157;
LABEL_135:
          v166 = __clz(__rbit64(v161)) | (v165 << 6);
          v167 = (*(v156 + 48) + 16 * v166);
          v168 = v167[1];
          v169 = *(*(v156 + 56) + 8 * v166);
          v251 = *v167;
          v266 = *v167;
          swift_bridgeObjectRetain_n();

          MEMORY[0x259C52E30](0x73695673656D6954, 0xEC00000064657469);
          v255 = v169;
          v170 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v247 = sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
          *(v0 + 248) = v247;
          *(v0 + 224) = v170;
          v171 = (v0 + 224);
          v172 = (v0 + 256);
          v0 = v266;
          sub_255F55470(v171, v172);
          v173 = swift_isUniquelyReferenced_nonNull_native();
          v1 = sub_255F51FE8(v266, v168);
          v175 = v114[2];
          v176 = (v174 & 1) == 0;
          v177 = v175 + v176;
          if (__OFADD__(v175, v176))
          {
            goto LABEL_167;
          }

          v178 = v174;
          if (v114[3] >= v177)
          {
            if (v173)
            {
              if (v174)
              {
                goto LABEL_143;
              }
            }

            else
            {
              sub_255F52E68();
              if (v178)
              {
                goto LABEL_143;
              }
            }
          }

          else
          {
            sub_255F523DC(v177, v173);
            v179 = sub_255F51FE8(v266, v168);
            if ((v178 & 1) != (v180 & 1))
            {
              goto LABEL_155;
            }

            v1 = v179;
            if (v178)
            {
LABEL_143:

              v184 = (v114[7] + 32 * v1);
              __swift_destroy_boxed_opaque_existential_0(v184);
              v0 = v261;
              sub_255F55470((v261 + 256), v184);
              goto LABEL_144;
            }
          }

          v114[(v1 >> 6) + 8] |= 1 << v1;
          v181 = (v114[6] + 16 * v1);
          *v181 = v266;
          v181[1] = v168;
          v0 = v261;
          sub_255F55470((v261 + 256), (v114[7] + 32 * v1));
          v182 = v114[2];
          v10 = __OFADD__(v182, 1);
          v183 = v182 + 1;
          if (v10)
          {
            goto LABEL_171;
          }

          v114[2] = v183;
LABEL_144:

          MEMORY[0x259C52E30](0x6E657053656D6954, 0xE900000000000074);

          v1 = v168;
          sub_255F4FAF8(v255);
          v186 = v185;

          v187 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          *(v0 + 312) = v247;
          *(v0 + 288) = v187;
          sub_255F55470((v0 + 288), (v0 + 320));
          v188 = swift_isUniquelyReferenced_nonNull_native();
          v189 = sub_255F51FE8(v251, v168);
          v191 = v114[2];
          v192 = (v190 & 1) == 0;
          v10 = __OFADD__(v191, v192);
          v193 = v191 + v192;
          if (v10)
          {
            goto LABEL_168;
          }

          v194 = v190;
          if (v114[3] >= v193)
          {
            if ((v188 & 1) == 0)
            {
              v199 = v189;
              sub_255F52E68();
              v189 = v199;
            }
          }

          else
          {
            sub_255F523DC(v193, v188);
            v189 = sub_255F51FE8(v251, v1);
            if ((v194 & 1) != (v195 & 1))
            {
              goto LABEL_155;
            }
          }

          v161 &= v161 - 1;
          if (v194)
          {
            v163 = v189;

            v164 = (v114[7] + 32 * v163);
            __swift_destroy_boxed_opaque_existential_0(v164);
            sub_255F55470((v0 + 320), v164);
          }

          else
          {
            v114[(v189 >> 6) + 8] |= 1 << v189;
            v196 = (v114[6] + 16 * v189);
            *v196 = v251;
            v196[1] = v1;
            sub_255F55470((v0 + 320), (v114[7] + 32 * v189));
            v197 = v114[2];
            v10 = __OFADD__(v197, 1);
            v198 = v197 + 1;
            if (v10)
            {
              goto LABEL_172;
            }

            v114[2] = v198;
          }

          v157 = v165;
          v158 = v240;
          v156 = v243;
          v162 = v238;
        }
      }

LABEL_179:
      swift_once();
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_179;
  }

  while (2)
  {
    v259 = 0;
    v256 = 0;
    v1 = 0;
    v6 = *(v0 + 576);
    v246 = *(v0 + 536);
    v7 = v4 & 0xC000000000000001;
    v207 = v4 & 0xFFFFFFFFFFFFFF8;
    v220 = *(v0 + 528);
    v206 = v4 + 32;
    v230 = (v6 + 16);
    v219 = *(v0 + 504);
    v218 = (v6 + 32);
    v225 = v6;
    v252 = (v6 + 8);
    v237 = (*(v0 + 488) + 8);
    v208 = v4 & 0xC000000000000001;
    v209 = v5;
    while (1)
    {
      if (v7)
      {
        v8 = MEMORY[0x259C52F10](v1, v4);
      }

      else
      {
        if (v1 >= *(v207 + 16))
        {
          goto LABEL_175;
        }

        v8 = *(v206 + 8 * v1);
      }

      v9 = v8;
      v10 = __OFADD__(v1++, 1);
      if (v10)
      {
        goto LABEL_66;
      }

      if (qword_27F81A6C0 != -1)
      {
        swift_once();
      }

      v11 = qword_27F81A8D8;
      v12 = [v9 type];
      if (*(v11 + 16) && (v13 = sub_255F51F7C(v12), (v14 & 1) != 0))
      {
        v15 = (*(v11 + 56) + 16 * v13);
        v257 = *v15;
        v241 = v15[1];
      }

      else
      {
        v241 = 0xE700000000000000;
        v257 = 0x6E776F6E6B6E75;
      }

      v16 = [v9 visits];
      sub_255F558F4(0, &qword_27F81A878, 0x277D01188);
      v17 = sub_255F57A20();

      if (!(v17 >> 62))
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          break;
        }

        goto LABEL_56;
      }

      v18 = sub_255F57B30();
      if (v18)
      {
        break;
      }

LABEL_56:

      v7 = v208;
      v4 = v212;
      if (v1 == v209)
      {
        goto LABEL_69;
      }
    }

    v19 = 0;
    v20 = v17 & 0xC000000000000001;
    v210 = v17 + 32;
    v211 = v17 & 0xFFFFFFFFFFFFFF8;
    v216 = v9;
    v217 = v1;
    v214 = v18;
    v215 = v17;
    v213 = v17 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v24 = MEMORY[0x259C52F10](v19, v17);
        v10 = __OFADD__(v19, 1);
        v25 = v19 + 1;
        if (v10)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v19 >= *(v211 + 16))
        {
          goto LABEL_174;
        }

        v24 = *(v210 + 8 * v19);
        v10 = __OFADD__(v19, 1);
        v25 = v19 + 1;
        if (v10)
        {
          goto LABEL_64;
        }
      }

      v224 = v25;
      v26 = v24;
      v27 = [v24 entryDate];
      sub_255F57560();

      *&v223 = v26;
      v28 = [v26 exitDate];
      sub_255F57560();

      sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if ((sub_255F579B0() & 1) == 0)
      {
        goto LABEL_65;
      }

      v29 = *(v0 + 600);
      v30 = *(v0 + 568);
      v31 = *(v0 + 560);
      v32 = *(v0 + 520);
      v33 = *(v0 + 512);
      v34 = *v230;
      (*v230)(v32, *(v0 + 608), v30);
      v228 = v34;
      v34(v32 + *(v219 + 48), v29, v30);
      sub_255F556A8(v32, v33, &qword_27F81A740, &qword_255F580F0);
      v248 = *(v219 + 48);
      v35 = *v218;
      v36 = v31;
      (*v218)(v31, v33, v30);
      v37 = *v252;
      (*v252)(v33 + v248, v30);
      sub_255F55598(v32, v33, &qword_27F81A740, &qword_255F580F0);
      v35(v36 + *(v220 + 36), v33 + *(v219 + 48), v30);
      v249 = v37;
      v37(v33, v30);
      v1 = sub_255F4EE30(v36);
      sub_255F55620(v36, &qword_27F81A748, &qword_255F580F8);
      v244 = *(v1 + 16);
      if (v244)
      {
        break;
      }

LABEL_18:
      v21 = *(v0 + 608);
      v22 = *(v0 + 600);
      v23 = *(v0 + 568);

      v249(v22, v23);
      v249(v21, v23);
      v17 = v215;
      v19 = v224;
      v9 = v216;
      v1 = v217;
      v20 = v213;
      if (v224 == v214)
      {
        goto LABEL_56;
      }
    }

    v38 = 0;
    v232 = (*(v246 + 80) + 32) & ~*(v246 + 80);
    v239 = v1 + v232;
    v234 = v1;
LABEL_28:
    if (v38 >= *(v1 + 16))
    {
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
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v5 = sub_255F57B30();
      v4 = v212;
      v261 = v0;
      if (!v5)
      {
        goto LABEL_68;
      }

      continue;
    }

    break;
  }

  v39 = *(v0 + 592);
  v40 = *(v0 + 552);
  v41 = *(v0 + 544);
  v42 = *(v0 + 496);
  v43 = *(v0 + 480);
  v44 = *(v246 + 72);
  sub_255F556A8(v239 + v44 * v38, v40, &qword_27F81A748, &qword_255F580F8);
  sub_255F575B0();
  sub_255F57590();
  (*v237)(v42, v43);
  v45 = v260;
  sub_255F55598(v40, v41, &qword_27F81A748, &qword_255F580F8);
  sub_255F553B4(v259, 0);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v1 = sub_255F52060(v39);
  v48 = v260[2];
  v49 = (v47 & 1) == 0;
  v50 = v48 + v49;
  if (__OFADD__(v48, v49))
  {
    goto LABEL_60;
  }

  v51 = v47;
  if (v260[3] >= v50)
  {
    v0 = v261;
    if (v46)
    {
      if (v47)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_255F5317C(&qword_27F81A800, &qword_255F58198);
      v45 = v260;
      if (v51)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_36;
  }

  v0 = v261;
  v52 = *(v261 + 592);
  sub_255F5293C(v50, v46, &qword_27F81A800, &qword_255F58198);
  v45 = v260;
  v53 = sub_255F52060(v52);
  if ((v51 & 1) != (v54 & 1))
  {
    v84 = *(v261 + 568);
    goto LABEL_156;
  }

  v1 = v53;
  if ((v51 & 1) == 0)
  {
LABEL_36:
    v55 = *(v0 + 592);
    v56 = *(v0 + 568);
    v57 = sub_255F54DA4(MEMORY[0x277D84F90]);
    v45[(v1 >> 6) + 8] |= 1 << v1;
    v228(v45[6] + *(v225 + 72) * v1, v55, v56);
    *(v45[7] + 8 * v1) = v57;
    v58 = v45[2];
    v10 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (v10)
    {
      goto LABEL_62;
    }

    v45[2] = v59;
  }

LABEL_38:
  v60 = v45;
  v61 = v45[7];
  sub_255F553B4(v256, 0);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v61 + 8 * v1);
  *(v61 + 8 * v1) = 0x8000000000000000;
  v0 = v241;
  v65 = sub_255F51FE8(v257, v241);
  v66 = *(v63 + 16);
  v67 = (v64 & 1) == 0;
  v68 = v66 + v67;
  if (__OFADD__(v66, v67))
  {
    goto LABEL_61;
  }

  v69 = v64;
  if (*(v63 + 24) >= v68)
  {
    if ((v62 & 1) == 0)
    {
      sub_255F5300C();
    }

LABEL_44:
    *(v61 + 8 * v1) = v63;

    v72 = *(v61 + 8 * v1);
    if ((v69 & 1) == 0)
    {
      v72[(v65 >> 6) + 8] |= 1 << v65;
      v73 = (v72[6] + 16 * v65);
      *v73 = v257;
      v73[1] = v241;
      *(v72[7] + 8 * v65) = MEMORY[0x277D84F90];
      v74 = v72[2];
      v10 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v10)
      {
        goto LABEL_63;
      }

      v72[2] = v75;
    }

    v76 = v72[7];
    v77 = *(v76 + 8 * v65);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *(v76 + 8 * v65) = v77;
    v260 = v60;
    if ((v78 & 1) == 0)
    {
      v77 = sub_255F51504(0, v77[2] + 1, 1, v77);
      *(v76 + 8 * v65) = v77;
    }

    v0 = v261;
    v80 = v77[2];
    v79 = v77[3];
    if (v80 >= v79 >> 1)
    {
      v77 = sub_255F51504((v79 > 1), v80 + 1, 1, v77);
      *(v76 + 8 * v65) = v77;
    }

    ++v38;
    v81 = *(v261 + 592);
    v82 = *(v261 + 568);
    v83 = *(v261 + 544);
    v77[2] = v80 + 1;
    sub_255F55598(v83, v77 + v232 + v80 * v44, &qword_27F81A748, &qword_255F580F8);
    v249(v81, v82);
    v256 = sub_255F55A20;
    v259 = sub_255F55A24;
    v1 = v234;
    if (v244 == v38)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  sub_255F52694(v68, v62);
  v70 = sub_255F51FE8(v257, v241);
  if ((v69 & 1) == (v71 & 1))
  {
    v65 = v70;
    goto LABEL_44;
  }

LABEL_155:
  v84 = MEMORY[0x277D837D0];
LABEL_156:

  return MEMORY[0x2821FE290](v84);
}

uint64_t sub_255F4A6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A720, &qword_255F580D0);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A728, &qword_255F580D8);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A730, &qword_255F580E0);
  v3[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A738, &qword_255F580E8);
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = sub_255F57640();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v8 = sub_255F575D0();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v9 = sub_255F57580();
  v3[26] = v9;
  v3[27] = *(v9 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255F4AA50, 0, 0);
}

uint64_t sub_255F4AA50()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v0[34] = v1;
  v2 = swift_task_alloc();
  v0[35] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_255F4AB60;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000026, 0x8000000255F587C0, sub_255F55680, v2, v4);
}

uint64_t sub_255F4AB60()
{

  return MEMORY[0x2822009F8](sub_255F4AC78, 0, 0);
}

uint64_t sub_255F4AC78()
{
  v166 = v0;
  v1 = *(v0 + 272);
  v2 = sub_255F57530();
  v3 = sub_255F57530();
  v4 = [v1 predicateForEventsWithStartDate:v2 endDate:v3 calendars:0];

  v5 = [v1 eventsMatchingPredicate_];
  v6 = sub_255F558F4(0, &qword_27F81A840, 0x277CC5A28);
  v7 = sub_255F57A20();

  if (qword_27F81A6C8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v8 = sub_255F57970();
    __swift_project_value_buffer(v8, qword_27F81A8E0);

    v9 = sub_255F57950();
    v10 = sub_255F57A90();

    v129 = v4;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v165[0] = v12;
      *v11 = 136315138;
      v13 = MEMORY[0x259C52E70](v7, v6);
      v6 = v14;
      v15 = sub_255F519D4(v13, v14, v165);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_255F46000, v9, v10, "ekEvents: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x259C533C0](v12, -1, -1);
      MEMORY[0x259C533C0](v11, -1, -1);
    }

    v4 = v158;
    v16 = sub_255F54EA8(MEMORY[0x277D84F90], &qword_27F81A860, &qword_255F581D8, &qword_27F81A858, &qword_255F581D0);
    if (!(v7 >> 62))
    {
      v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        break;
      }

      goto LABEL_6;
    }

    v17 = sub_255F57B30();
    if (!v17)
    {
      break;
    }

LABEL_6:
    v18 = 0;
    v159 = v7 & 0xC000000000000001;
    v162 = (v158[13].i64[1] + 8);
    v152 = (v158[12].i64[0] + 8);
    v155 = v7 & 0xFFFFFFFFFFFFFF8;
    v143 = v158[13].i64[1];
    v145 = v17;
    v148 = v7;
    while (1)
    {
      if (v159)
      {
        v19 = MEMORY[0x259C52F10](v18, v7);
      }

      else
      {
        if (v18 >= *(v155 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(v7 + 8 * v18 + 32);
      }

      v20 = v19;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v161 = v18 + 1;
      sub_255F575B0();
      v21 = [v20 startDate];
      if (!v21)
      {
        goto LABEL_148;
      }

      v22 = v21;
      v7 = *(v4 + 256);
      v23 = *(v4 + 200);
      v24 = *(v4 + 208);
      v25 = *(v4 + 184);
      sub_255F57560();

      sub_255F57590();
      v26 = v24;
      v27 = *v162;
      (*v162)(v7, v26);
      (*v152)(v23, v25);
      if (v16[2] && (sub_255F52060(*(v4 + 264)), (v28 & 1) != 0))
      {
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
      }

      v164 = v29;
      v30 = v20;
      MEMORY[0x259C52E50]();
      if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_255F57A40();
      }

      v31 = *(v4 + 264);
      sub_255F57A60();
      v6 = v164;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v165[0] = v16;
      v33 = sub_255F52060(v31);
      v35 = v16[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_36;
      }

      v7 = v34;
      if (v16[3] < v38)
      {
        v39 = v158[16].i64[1];
        sub_255F5293C(v38, isUniquelyReferenced_nonNull_native, &qword_27F81A858, &qword_255F581D0);
        v16 = v165[0];
        v33 = sub_255F52060(v39);
        if ((v7 & 1) != (v40 & 1))
        {
          v21 = v158[13].i64[0];

          return MEMORY[0x2821FE290](v21);
        }

LABEL_25:
        if (v7)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      v45 = v33;
      sub_255F5317C(&qword_27F81A858, &qword_255F581D0);
      v33 = v45;
      v16 = v165[0];
      if (v7)
      {
LABEL_7:
        *(v16[7] + 8 * v33) = v164;

        goto LABEL_8;
      }

LABEL_26:
      v41 = v158[16].i64[1];
      v42 = v158[13].i64[0];
      v16[(v33 >> 6) + 8] |= 1 << v33;
      v4 = v33;
      (*(v143 + 16))(v16[6] + *(v143 + 72) * v33, v41, v42);
      *(v16[7] + 8 * v4) = v164;
      v43 = v16[2];
      v37 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v37)
      {
        goto LABEL_37;
      }

      v16[2] = v44;
LABEL_8:

      v4 = v158;
      v27(v158[16].u64[1], v158[13].i64[0]);
      ++v18;
      v7 = v148;
      if (v161 == v145)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_40:
  v134 = v16;

  sub_255F57520();
  v47 = v46;
  v21 = sub_255F57520();
  v49 = (v47 - v48) / 86400.0;
  if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_143;
  }

  if (v49 <= -9.22337204e18)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (v49 >= 9.22337204e18)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    return MEMORY[0x2821FE290](v21);
  }

  v51 = *(v4 + 144);
  v50 = *(v4 + 152);
  v52 = *(v4 + 120);
  v146 = *(v4 + 136);
  v149 = *(v4 + 112);
  v53 = *(v4 + 104);
  v160 = *(v4 + 40);
  v156 = *(v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A788, &qword_255F58130);
  sub_255F576A0();
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_255F58070;
  sub_255F57670();
  sub_255F57660();
  sub_255F57650();
  (*(v51 + 8))(v50, v146);
  v54 = sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
  sub_255F57670();
  sub_255F57660();
  sub_255F57650();
  v150 = *(v149 + 8);
  v150(v52, v53);
  sub_255F57670();
  sub_255F57660();
  sub_255F57650();
  v150(v52, v53);
  sub_255F57670();
  v131 = v54;
  sub_255F57660();
  sub_255F57650();
  v150(v52, v53);
  v158[1].i64[0] = v153;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A798, &qword_255F58138);
  sub_255F553C4(&qword_27F81A7A0, &qword_27F81A798, &qword_255F58138, MEMORY[0x277D83970]);
  sub_255F57620();
  v21 = sub_255F4F788(v156, v160);
  v135 = v21;
  v130 = v21[2];
  if (v130)
  {
    v55 = 0;
    v56 = v158[13].i64[1];
    v132 = v21 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v133 = v56;
    v144 = (v56 + 32);
    v157 = (v56 + 8);
    v141 = v158[4].i64[1];
    v142 = v158[5].i64[0];
    v140 = v158[3].i64[0];
    do
    {
      if (v55 >= v135[2])
      {
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      v138 = *(v133 + 16);
      v138(v158[15].i64[1], &v132[*(v133 + 72) * v55], v158[13].i64[0]);
      sub_255F57570();
      v139 = v55;
      if (v134[2])
      {
        v71 = sub_255F52060(v158[15].i64[1]);
        v72 = MEMORY[0x277D84F90];
        if (v73)
        {
          v74 = *(v134[7] + 8 * v71);

          goto LABEL_52;
        }
      }

      else
      {
        v72 = MEMORY[0x277D84F90];
      }

      v74 = v72;
LABEL_52:
      v75 = swift_task_alloc();
      v75[1] = vextq_s8(v158[15], v158[15], 8uLL);
      v76 = sub_255F50EFC(sub_255F55688, v75, v74);

      v165[0] = v72;
      if (v76 >> 62)
      {
        v21 = sub_255F57B30();
        v77 = v21;
      }

      else
      {
        v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v78 = 0x279817000uLL;
      if (v77)
      {
        v79 = 0;
        while (1)
        {
          if ((v76 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x259C52F10](v79, v76);
          }

          else
          {
            if (v79 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_133;
            }

            v21 = *(v76 + 8 * v79 + 32);
          }

          v80 = v21;
          v81 = (v79 + 1);
          if (__OFADD__(v79, 1))
          {
            break;
          }

          if ([v21 *(v78 + 1176)] == 3 || (v82 = objc_msgSend(v80, sel_organizer)) == 0)
          {
          }

          else
          {

            sub_255F57AF0();
            sub_255F57B10();
            sub_255F57B20();
            v21 = sub_255F57B00();
            v78 = 0x279817000;
          }

          ++v79;
          if (v81 == v77)
          {
            v83 = v165[0];
            goto LABEL_68;
          }
        }

        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v83 = MEMORY[0x277D84F90];
LABEL_68:

      v84 = v83 < 0 || (v83 & 0x4000000000000000) != 0;
      if (v84)
      {
        v85 = sub_255F57B30();
      }

      else
      {
        v85 = *(v83 + 16);
      }

      v86 = MEMORY[0x277D84F90];
      v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v165[0] = v86;
      v137 = v21;
      if (v84)
      {
        v21 = sub_255F57B30();
        v87 = v21;
        v88 = 0x279817000uLL;
        if (v21)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v87 = *(v83 + 16);
        v88 = 0x279817000;
        if (v87)
        {
LABEL_75:
          v89 = 0;
          while (1)
          {
            if ((v83 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x259C52F10](v89, v83);
            }

            else
            {
              if (v89 >= *(v83 + 16))
              {
                goto LABEL_135;
              }

              v21 = *(v83 + 8 * v89 + 32);
            }

            v90 = v21;
            v91 = (v89 + 1);
            if (__OFADD__(v89, 1))
            {
              goto LABEL_134;
            }

            v92 = [v21 *(v88 + 1184)];
            if (v92 && (v93 = v92, v94 = [v92 isCurrentUser], v93, (v94 & 1) != 0))
            {
              sub_255F57AF0();
              sub_255F57B10();
              sub_255F57B20();
              v21 = sub_255F57B00();
            }

            else
            {
            }

            ++v89;
            if (v91 == v87)
            {
              v95 = v165[0];
              v96 = MEMORY[0x277D84F90];
              if ((v165[0] & 0x8000000000000000) == 0)
              {
                goto LABEL_90;
              }

              goto LABEL_126;
            }
          }
        }
      }

      v96 = MEMORY[0x277D84F90];
      v95 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_90:
        if ((v95 & 0x4000000000000000) == 0)
        {
          v97 = *(v95 + 16);
          goto LABEL_92;
        }
      }

LABEL_126:
      v97 = sub_255F57B30();
LABEL_92:

      v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v165[0] = v96;
      v136 = v21;
      if (v84)
      {
        v21 = sub_255F57B30();
        v98 = v21;
        if (v21)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v98 = *(v83 + 16);
        if (v98)
        {
LABEL_94:
          v99 = 0;
          while (1)
          {
            if ((v83 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x259C52F10](v99, v83);
            }

            else
            {
              if (v99 >= *(v83 + 16))
              {
                goto LABEL_137;
              }

              v21 = *(v83 + 8 * v99 + 32);
            }

            v100 = v21;
            v101 = (v99 + 1);
            if (__OFADD__(v99, 1))
            {
              goto LABEL_136;
            }

            if ([v21 isAllDay])
            {
            }

            else
            {
              sub_255F57AF0();
              sub_255F57B10();
              sub_255F57B20();
              v21 = sub_255F57B00();
            }

            ++v99;
            if (v101 == v98)
            {
              v102 = v165[0];
              v103 = MEMORY[0x277D84F90];
              goto LABEL_107;
            }
          }
        }
      }

      v103 = MEMORY[0x277D84F90];
      v102 = MEMORY[0x277D84F90];
LABEL_107:

      if (v102 < 0 || (v102 & 0x4000000000000000) != 0)
      {
        v104 = sub_255F57B30();
        v105 = v158;
        if (v104)
        {
LABEL_110:
          v165[0] = v103;
          v21 = sub_255F533F4(0, v104 & ~(v104 >> 63), 0);
          if (v104 < 0)
          {
            goto LABEL_142;
          }

          v106 = 0;
          v103 = v165[0];
          v154 = v102 & 0xC000000000000001;
          v147 = v104;
          v151 = v102;
          while (!__OFADD__(v106, 1))
          {
            if (v154)
            {
              v107 = MEMORY[0x259C52F10](v106, v102);
            }

            else
            {
              if (v106 >= *(v102 + 16))
              {
                goto LABEL_140;
              }

              v107 = *(v102 + 8 * v106 + 32);
            }

            v108 = v107;
            v21 = [v107 startDate];
            if (!v21)
            {
              goto LABEL_147;
            }

            v109 = v21;
            v163 = v106 + 1;
            sub_255F57560();

            v21 = [v108 endDate];
            if (!v21)
            {
              goto LABEL_146;
            }

            v110 = v21;
            sub_255F57560();

            sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
            LOBYTE(v110) = sub_255F579B0();

            if ((v110 & 1) == 0)
            {
              goto LABEL_139;
            }

            v111 = v105[28];
            v112 = v105[26];
            v113 = v105[11];
            v115 = v105[7];
            v114 = v105[8];
            v116 = *v144;
            (*v144)(v114, v105[29], v112);
            v116(v114 + *(v140 + 48), v111, v112);
            sub_255F556A8(v114, v115, &qword_27F81A740, &qword_255F580F0);
            v117 = *(v140 + 48);
            v116(v113, v115, v112);
            v118 = *v157;
            (*v157)(v115 + v117, v112);
            sub_255F55598(v114, v115, &qword_27F81A740, &qword_255F580F0);
            v116(v113 + *(v141 + 36), v115 + *(v140 + 48), v112);
            v118(v115, v112);
            v165[0] = v103;
            v120 = *(v103 + 16);
            v119 = *(v103 + 24);
            if (v120 >= v119 >> 1)
            {
              sub_255F533F4((v119 > 1), v120 + 1, 1);
              v103 = v165[0];
            }

            v105 = v158;
            v121 = v158[5].i64[1];
            *(v103 + 16) = v120 + 1;
            v21 = sub_255F55598(v121, v103 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v120, &qword_27F81A748, &qword_255F580F8);
            ++v106;
            v102 = v151;
            if (v163 == v147)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_138;
        }
      }

      else
      {
        v104 = *(v102 + 16);
        v105 = v158;
        if (v104)
        {
          goto LABEL_110;
        }
      }

LABEL_45:

      v57 = v105;
      v58 = v105[31];
      v59 = v57[30];
      v60 = v57[26];
      sub_255F4FAF8(v103);
      v62 = v61;

      v63 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A848, &qword_255F581C0);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_255F58070;
      *(v64 + 56) = v60;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v64 + 32));
      v138(boxed_opaque_existential_0, v58, v60);
      *(v64 + 64) = v137;
      *(v64 + 88) = v131;
      *(v64 + 96) = v136;
      *(v64 + 152) = v131;
      *(v64 + 120) = v131;
      *(v64 + 128) = v63;
      v66 = v137;
      v67 = v136;
      v68 = v63;
      sub_255F57610();

      v69 = *v157;
      (*v157)(v59, v60);
      v70 = v58;
      v55 = v139 + 1;
      v21 = (v69)(v70, v60);
    }

    while (v139 + 1 != v130);
  }

  v122 = v158[17].i64[0];
  v123 = v158[10].i64[1];
  v124 = v158[11].i64[0];
  v125 = v158[10].i64[0];
  v126 = v158[1].i64[1];

  (*(v123 + 32))(v126, v124, v125);

  v127 = v158->i64[1];

  return v127();
}

unint64_t sub_255F4C00C()
{
  result = qword_27F81A6E8;
  if (!qword_27F81A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81A6E8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_255F4C0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A720, &qword_255F580D0);
  v3[49] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A728, &qword_255F580D8);
  v3[50] = v4;
  v3[51] = *(v4 - 8);
  v3[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A730, &qword_255F580E0);
  v3[53] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A738, &qword_255F580E8);
  v3[54] = v5;
  v3[55] = *(v5 - 8);
  v3[56] = swift_task_alloc();
  v6 = sub_255F57640();
  v3[57] = v6;
  v3[58] = *(v6 - 8);
  v3[59] = swift_task_alloc();
  v7 = sub_255F575D0();
  v3[60] = v7;
  v3[61] = *(v7 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v3[66] = v8;
  v3[67] = *(v8 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A750, &qword_255F58100);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v9 = sub_255F57580();
  v3[73] = v9;
  v3[74] = *(v9 - 8);
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A758, &qword_255F58108);
  v3[79] = swift_task_alloc();
  v10 = sub_255F57940();
  v3[80] = v10;
  v3[81] = *(v10 - 8);
  v3[82] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A760, &qword_255F58110);
  v3[83] = swift_task_alloc();
  v11 = sub_255F578A0();
  v3[84] = v11;
  v3[85] = *(v11 - 8);
  v3[86] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A768, &qword_255F58118);
  v3[87] = v12;
  v3[88] = *(v12 - 8);
  v3[89] = swift_task_alloc();
  v13 = sub_255F57910();
  v3[90] = v13;
  v3[91] = *(v13 - 8);
  v3[92] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255F4C680, 0, 0);
}

uint64_t sub_255F4C680()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A770, &qword_255F58120);
  v1 = sub_255F578E0();
  *(v0 + 744) = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 752) = v3;
  v4 = *(v0 + 376);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = swift_task_alloc();
  *(v0 + 760) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A778, &qword_255F58128);
  *v5 = v0;
  v5[1] = sub_255F4C944;

  return MEMORY[0x2822008A0](v0 + 352, 0, 0, 0xD000000000000028, 0x8000000255F58790, sub_255F553A8, v3, v6);
}

uint64_t sub_255F4C944()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_255F4E5EC;
  }

  else
  {

    v2 = sub_255F4CA60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_255F4CA60()
{
  v308 = v0;
  v1 = v0[91];
  v2 = v0[88];
  v3 = v0[85];
  v4 = v0[81];
  v5 = v0[74];
  v264 = v0[67];
  v6 = v0[66];
  v7 = v0[63];
  v8 = v0[61];
  v9 = v0[44];
  v262 = sub_255F54EA8(MEMORY[0x277D84F90], &qword_27F81A818, &qword_255F581A0, &qword_27F81A800, &qword_255F58198);
  v10 = v9;
  v11 = *(v9 + 16);
  v263 = (v5 + 8);
  v261 = (v5 + 16);
  v258 = v5;
  if (v11)
  {
    v248 = v7;
    v249 = v6;
    v12 = 0;
    v259 = 0;
    v260 = 0;
    v294 = (v2 + 8);
    v290 = (v4 + 48);
    v280 = (v4 + 32);
    v13 = (v5 + 48);
    v276 = (v5 + 32);
    v278 = (v4 + 8);
    v302 = v1;
    v285 = (v1 + 8);
    v257 = (v8 + 8);
    v247 = v11 - 1;
    v283 = v11;
    v287 = v10;
    while (1)
    {
      v14 = v12;
      v15 = v304;
      while (1)
      {
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_141;
        }

        v19 = v13;
        v20 = v15[89];
        v21 = v15[87];
        v22 = v15[86];
        v23 = v15[84];
        v24 = v15[83];
        v25 = (*(v302 + 16))(v15[92], v10 + ((*(v302 + 80) + 32) & ~*(v302 + 80)) + *(v302 + 72) * v14, v15[90]);
        MEMORY[0x259C52D40](v25);
        sub_255F578C0();
        (*v294)(v20, v21);
        sub_255F57890();
        (*(v3 + 8))(v22, v23);
        v26 = sub_255F57880();
        v10 = (*(*(v26 - 8) + 48))(v24, 1, v26);
        if (v10 == 1)
        {
          goto LABEL_161;
        }

        v10 = ActivityType.init(entityClass:)(v15[83], &v306);
        if (v306 == 34)
        {
          goto LABEL_162;
        }

        v13 = v19;
        v27 = v15[80];
        v28 = v15[79];
        sub_255F578F0();
        v29 = (*v290)(v28, 1, v27);
        v30 = v15[79];
        if (v29 != 1)
        {
          break;
        }

        (*v285)(v15[92], v15[90]);
        v16 = v30;
        v17 = &qword_27F81A758;
        v18 = &qword_255F58108;
LABEL_5:
        sub_255F55620(v16, v17, v18);
LABEL_6:
        ++v14;
        v10 = v287;
        if (v283 == v14)
        {
          goto LABEL_50;
        }
      }

      v31 = v15[73];
      v32 = v15[72];
      (*v280)(v15[82], v15[79], v15[80]);
      sub_255F57930();
      v33 = *v19;
      if ((*v19)(v32, 1, v31) == 1)
      {
        v34 = v15[92];
        v35 = v15[90];
        v36 = v15[72];
        (*v278)(v15[82], v15[80]);
        (*v285)(v34, v35);
        v16 = v36;
        v17 = &qword_27F81A750;
        v18 = &qword_255F58100;
        goto LABEL_5;
      }

      v37 = v15[78];
      v38 = v15[73];
      v39 = v15[72];
      v40 = v15[71];
      v41 = v15;
      v42 = *v276;
      (*v276)(v37, v39, v38);
      sub_255F57920();
      if (v33(v40, 1, v38) == 1)
      {
        v43 = v41[92];
        v44 = v41[90];
        v45 = v41[82];
        v46 = v41[80];
        v47 = v41[71];
        (*v263)(v41[78], v41[73]);
        (*v278)(v45, v46);
        (*v285)(v43, v44);
        sub_255F55620(v47, &qword_27F81A750, &qword_255F58100);
        v15 = v41;
        v13 = v19;
        goto LABEL_6;
      }

      v42(v41[77], v41[71], v41[73]);
      sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v10 = sub_255F579B0();
      if ((v10 & 1) == 0)
      {
        goto LABEL_160;
      }

      v48 = v41[73];
      v267 = v41[77];
      v272 = v41[70];
      v49 = v41[65];
      v50 = v41[64];
      v51 = *v261;
      (*v261)(v49, v41[78], v48);
      v250 = v51;
      v51(v49 + *(v248 + 48), v267, v48);
      sub_255F556A8(v49, v50, &qword_27F81A740, &qword_255F580F0);
      v268 = *(v248 + 48);
      v42(v272, v50, v48);
      v52 = *v263;
      (*v263)(v50 + v268, v48);
      sub_255F55598(v49, v50, &qword_27F81A740, &qword_255F580F0);
      v42(v272 + *(v249 + 36), v50 + *(v248 + 48), v48);
      v255 = v52;
      v52(v50, v48);
      v10 = sub_255F4EE30(v272);
      v254 = *(v10 + 16);
      if (v254)
      {
        break;
      }

      v54 = v304;
LABEL_47:
      v103 = v54;
      v12 = v14 + 1;
      v270 = v103[90];
      v274 = v103[92];
      v104 = v103[82];
      v105 = v103[80];
      v106 = v103[78];
      v107 = v103[77];
      v108 = v103[73];
      v109 = v103[70];

      sub_255F55620(v109, &qword_27F81A748, &qword_255F580F8);
      v255(v107, v108);
      v255(v106, v108);
      (*v278)(v104, v105);
      (*v285)(v274, v270);
      v10 = v287;
      v13 = v19;
      if (v247 == v14)
      {
        goto LABEL_50;
      }
    }

    v53 = 0;
    v251 = (*(v264 + 80) + 32) & ~*(v264 + 80);
    v253 = v10 + v251;
    v54 = v304;
    v252 = v10;
    while (1)
    {
      if (v53 >= *(v10 + 16))
      {
        goto LABEL_151;
      }

      v55 = v54[76];
      v56 = v54[69];
      v57 = v54[68];
      v58 = v54[62];
      v59 = v54[60];
      v265 = *(v264 + 72);
      v269 = v53;
      sub_255F556A8(v253 + v265 * v53, v56, &qword_27F81A748, &qword_255F580F8);
      sub_255F575B0();
      sub_255F57590();
      (*v257)(v58, v59);
      v273 = ActivityType.rawValue.getter();
      v61 = v60;
      sub_255F55598(v56, v57, &qword_27F81A748, &qword_255F580F8);
      sub_255F553B4(v260, 0);
      v62 = v262;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v306 = v262;
      v65 = sub_255F52060(v55);
      v66 = v262[2];
      v67 = (v64 & 1) == 0;
      v10 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_152;
      }

      v68 = v64;
      if (v262[3] >= v10)
      {
        break;
      }

      v69 = v54[76];
      sub_255F5293C(v10, isUniquelyReferenced_nonNull_native, &qword_27F81A800, &qword_255F58198);
      v70 = v306;
      v71 = sub_255F52060(v69);
      if ((v68 & 1) != (v72 & 1))
      {
        v10 = v54[73];
LABEL_131:

        return MEMORY[0x2821FE290](v10);
      }

      v65 = v71;
      v62 = v70;
      if ((v68 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_28:
      v262 = v62;
      v81 = v62[7];
      sub_255F553B4(v259, 0);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v306 = *(v81 + 8 * v65);
      v83 = v306;
      *(v81 + 8 * v65) = 0x8000000000000000;
      v85 = sub_255F51FE8(v273, v61);
      v86 = v83[2];
      v87 = (v84 & 1) == 0;
      v10 = v86 + v87;
      if (__OFADD__(v86, v87))
      {
        goto LABEL_153;
      }

      v88 = v84;
      if (v83[3] >= v10)
      {
        if ((v82 & 1) == 0)
        {
          sub_255F5300C();
          v83 = v306;
        }
      }

      else
      {
        sub_255F52694(v10, v82);
        v83 = v306;
        v89 = sub_255F51FE8(v273, v61);
        if ((v88 & 1) != (v90 & 1))
        {
LABEL_130:
          v10 = MEMORY[0x277D837D0];
          goto LABEL_131;
        }

        v85 = v89;
      }

      *(v81 + 8 * v65) = v83;

      v91 = *(v81 + 8 * v65);
      if (v88)
      {
      }

      else
      {
        v91[(v85 >> 6) + 8] |= 1 << v85;
        v92 = (v91[6] + 16 * v85);
        *v92 = v273;
        v92[1] = v61;
        *(v91[7] + 8 * v85) = MEMORY[0x277D84F90];
        v93 = v91[2];
        v79 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v79)
        {
          goto LABEL_159;
        }

        v91[2] = v94;
      }

      v95 = v91[7];
      v96 = *(v95 + 8 * v85);
      v97 = swift_isUniquelyReferenced_nonNull_native();
      *(v95 + 8 * v85) = v96;
      if ((v97 & 1) == 0)
      {
        v96 = sub_255F51504(0, v96[2] + 1, 1, v96);
        *(v95 + 8 * v85) = v96;
      }

      v99 = v96[2];
      v98 = v96[3];
      if (v99 >= v98 >> 1)
      {
        v96 = sub_255F51504((v98 > 1), v99 + 1, 1, v96);
        *(v95 + 8 * v85) = v96;
      }

      v53 = v269 + 1;
      v54 = v304;
      v100 = *(v304 + 608);
      v101 = *(v304 + 584);
      v102 = *(v304 + 544);
      v96[2] = v99 + 1;
      sub_255F55598(v102, v96 + v251 + v99 * v265, &qword_27F81A748, &qword_255F580F8);
      v255(v100, v101);
      v259 = sub_255F55A20;
      v260 = sub_255F55A24;
      v10 = v252;
      if (v254 == v269 + 1)
      {
        goto LABEL_47;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v64)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_255F5317C(&qword_27F81A800, &qword_255F58198);
      v62 = v306;
      if (v68)
      {
        goto LABEL_28;
      }
    }

LABEL_26:
    v73 = v62;
    v74 = v54[76];
    v75 = v54[73];
    v76 = sub_255F54DA4(MEMORY[0x277D84F90]);
    v73[(v65 >> 6) + 8] |= 1 << v65;
    v77 = v74;
    v62 = v73;
    v10 = v250(v73[6] + *(v258 + 72) * v65, v77, v75);
    *(v73[7] + 8 * v65) = v76;
    v78 = v73[2];
    v79 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v79)
    {
      goto LABEL_158;
    }

    v73[2] = v80;
    goto LABEL_28;
  }

  v259 = 0;
  v260 = 0;
LABEL_50:

  v306 = MEMORY[0x277D84F90];
  sub_255F53414(0, 34, 0);
  v110 = 0;
  v111 = v306;
  do
  {
    v112 = ActivityType.rawValue.getter();
    v306 = v111;
    v115 = v111[2];
    v114 = v111[3];
    if (v115 >= v114 >> 1)
    {
      v117 = v112;
      v118 = v113;
      sub_255F53414((v114 > 1), v115 + 1, 1);
      v113 = v118;
      v112 = v117;
      v111 = v306;
    }

    ++v110;
    v111[2] = v115 + 1;
    v116 = &v111[2 * v115];
    v116[4] = v112;
    v116[5] = v113;
  }

  while (v110 != 34);
  sub_255F57520();
  v120 = v119;
  v10 = sub_255F57520();
  v122 = (v120 - v121) / 86400.0;
  if ((*&v122 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v122 <= -9.22337204e18)
  {
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
    return MEMORY[0x2821FE290](v10);
  }

  if (v122 >= 9.22337204e18)
  {
    goto LABEL_157;
  }

  v124 = *(v304 + 440);
  v123 = *(v304 + 448);
  v298 = *(v304 + 432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A788, &qword_255F58130);
  sub_255F576A0();
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_255F58050;
  sub_255F57670();
  sub_255F57660();
  sub_255F57650();
  (*(v124 + 8))(v123, v298);
  v10 = MEMORY[0x277D84F90];
  v305 = MEMORY[0x277D84F90];
  v286 = v111[2];
  if (!v286)
  {
    goto LABEL_62;
  }

  v256 = v125;
  v126 = 0;
  v266 = (*(v304 + 408) + 8);
  v127 = v111 + 5;
  do
  {
    if (v126 >= v111[2])
    {
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v128 = *(v304 + 416);
    ++v126;
    v129 = *(v127 - 1);
    v130 = *v127;
    v295 = *(v304 + 400);
    v299 = swift_allocObject();
    *(v299 + 16) = xmmword_255F58060;
    v306 = v129;
    v307 = v130;
    swift_bridgeObjectRetain_n();
    MEMORY[0x259C52E30](0x746E756F43, 0xE500000000000000);
    sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
    sub_255F57670();
    sub_255F57660();
    sub_255F57650();
    v288 = *v266;
    (*v266)(v128, v295);
    v306 = v129;
    v307 = v130;

    MEMORY[0x259C52E30](0x6E6F697461727544, 0xE800000000000000);
    sub_255F57670();
    sub_255F57660();
    sub_255F57650();
    v288(v128, v295);

    v10 = sub_255F52D18(v299);
    v127 += 2;
  }

  while (v286 != v126);
  v10 = v305;
  v125 = v256;
LABEL_62:
  v131 = v304;
  v133 = *(v304 + 376);
  v132 = *(v304 + 384);
  v306 = v125;
  sub_255F52D18(v10);
  *(v304 + 360) = v306;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A798, &qword_255F58138);
  sub_255F553C4(&qword_27F81A7A0, &qword_27F81A798, &qword_255F58138, MEMORY[0x277D83970]);
  sub_255F57620();
  v10 = sub_255F4F788(v133, v132);
  v279 = v10;
  v275 = *(v10 + 16);
  if (v275)
  {
    v134 = 0;
    v135 = *(*(v304 + 592) + 80);
    v277 = v10 + ((v135 + 32) & ~v135);
    v136 = v111;
    v271 = v111 + 5;
    v303 = v111;
    do
    {
      if (v134 >= *(v10 + 16))
      {
        goto LABEL_154;
      }

      v139 = *(v131 + 600);
      v140 = *(v131 + 584);
      v141 = v131;
      v142 = *(v258 + 16);
      v142(v139, v277 + *(v258 + 72) * v134, v140);
      v281 = v134;
      if (v262[2] && (v143 = sub_255F52060(*(v141 + 600)), (v144 & 1) != 0))
      {
        v292 = *(v262[7] + 8 * v143);
      }

      else
      {
        v292 = 0;
      }

      v145 = *(v304 + 600);
      v146 = *(v304 + 584);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7A8, &qword_255F58140);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255F58050;
      *(inited + 32) = 1702125924;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 72) = v146;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      v142(boxed_opaque_existential_0, v145, v146);
      v149 = sub_255F54C74(inited);
      swift_setDeallocating();
      v10 = sub_255F55620(inited + 32, &qword_27F81A7B0, &qword_255F58148);
      if (v286)
      {
        v150 = 0;
        v151 = v271;
        v131 = v304;
        while (1)
        {
          if (v150 >= v136[2])
          {
            goto LABEL_142;
          }

          v296 = v151;
          v300 = v150;
          v154 = v131;
          v156 = *(v151 - 1);
          v155 = *v151;
          v306 = v156;
          v307 = v155;
          swift_bridgeObjectRetain_n();
          MEMORY[0x259C52E30](0x746E756F43, 0xE500000000000000);
          v158 = v306;
          v157 = v307;
          v159 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v160 = sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
          *(v154 + 120) = v160;
          *(v154 + 96) = v159;
          sub_255F55470((v154 + 96), (v154 + 128));
          v161 = swift_isUniquelyReferenced_nonNull_native();
          v306 = v149;
          v10 = sub_255F51FE8(v158, v157);
          v163 = v149[2];
          v164 = (v162 & 1) == 0;
          v79 = __OFADD__(v163, v164);
          v165 = v163 + v164;
          if (v79)
          {
            goto LABEL_143;
          }

          v166 = v162;
          if (v149[3] < v165)
          {
            break;
          }

          if (v161)
          {
            goto LABEL_80;
          }

          v172 = v10;
          sub_255F52E68();
          v10 = v172;
          if (v166)
          {
LABEL_81:
            v168 = v10;

            v169 = v306;
            v170 = (v306[7] + 32 * v168);
            __swift_destroy_boxed_opaque_existential_0(v170);
            v171 = v304;
            sub_255F55470((v304 + 128), v170);
            goto LABEL_85;
          }

LABEL_83:
          v169 = v306;
          v306[(v10 >> 6) + 8] |= 1 << v10;
          v173 = (v169[6] + 16 * v10);
          *v173 = v158;
          v173[1] = v157;
          v10 = sub_255F55470((v304 + 128), (v169[7] + 32 * v10));
          v174 = v169[2];
          v79 = __OFADD__(v174, 1);
          v175 = v174 + 1;
          if (v79)
          {
            goto LABEL_145;
          }

          v169[2] = v175;
          v171 = v304;
LABEL_85:
          v306 = v156;
          v307 = v155;

          MEMORY[0x259C52E30](0x6E6F697461727544, 0xE800000000000000);

          v177 = v306;
          v176 = v307;
          v178 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          *(v171 + 184) = v160;
          *(v171 + 160) = v178;
          sub_255F55470((v171 + 160), (v171 + 192));
          v179 = swift_isUniquelyReferenced_nonNull_native();
          v306 = v169;
          v10 = sub_255F51FE8(v177, v176);
          v181 = v169[2];
          v182 = (v180 & 1) == 0;
          v79 = __OFADD__(v181, v182);
          v183 = v181 + v182;
          if (v79)
          {
            goto LABEL_144;
          }

          v184 = v180;
          v131 = v171;
          if (v169[3] < v183)
          {
            sub_255F523DC(v183, v179);
            v10 = sub_255F51FE8(v177, v176);
            if ((v184 & 1) != (v185 & 1))
            {
              goto LABEL_130;
            }

LABEL_90:
            if (v184)
            {
              goto LABEL_72;
            }

            goto LABEL_91;
          }

          if (v179)
          {
            goto LABEL_90;
          }

          v189 = v10;
          sub_255F52E68();
          v10 = v189;
          v131 = v304;
          if (v184)
          {
LABEL_72:
            v152 = v10;

            v149 = v306;
            v153 = (v306[7] + 32 * v152);
            __swift_destroy_boxed_opaque_existential_0(v153);
            v10 = sub_255F55470((v131 + 192), v153);
            goto LABEL_73;
          }

LABEL_91:
          v149 = v306;
          v306[(v10 >> 6) + 8] |= 1 << v10;
          v186 = (v149[6] + 16 * v10);
          *v186 = v177;
          v186[1] = v176;
          v10 = sub_255F55470((v131 + 192), (v149[7] + 32 * v10));
          v187 = v149[2];
          v79 = __OFADD__(v187, 1);
          v188 = v187 + 1;
          if (v79)
          {
            goto LABEL_146;
          }

          v149[2] = v188;
LABEL_73:
          v150 = v300 + 1;
          v151 = v296 + 2;
          if (v286 == v300 + 1)
          {
            goto LABEL_96;
          }
        }

        sub_255F523DC(v165, v161);
        v10 = sub_255F51FE8(v158, v157);
        if ((v166 & 1) != (v167 & 1))
        {
          goto LABEL_130;
        }

LABEL_80:
        if (v166)
        {
          goto LABEL_81;
        }

        goto LABEL_83;
      }

      v131 = v304;
LABEL_96:
      if (v292)
      {
        v190 = v292;
      }

      else
      {
        v190 = sub_255F54DA4(MEMORY[0x277D84F90]);
      }

      v191 = 0;
      v282 = v281 + 1;
      v293 = v190;
      v193 = *(v190 + 64);
      v10 = v190 + 64;
      v192 = v193;
      v194 = -1 << *(v10 - 32);
      if (-v194 < 64)
      {
        v195 = ~(-1 << -v194);
      }

      else
      {
        v195 = -1;
      }

      v196 = v195 & v192;
      v197 = (63 - v194) >> 6;
      v289 = v10;
      v284 = v197;
      while (v196)
      {
        v200 = v191;
LABEL_110:
        v201 = __clz(__rbit64(v196)) | (v200 << 6);
        v202 = (*(v293 + 48) + 16 * v201);
        v203 = v202[1];
        v204 = *(*(v293 + 56) + 8 * v201);
        v291 = *v202;
        v306 = *v202;
        v307 = v203;
        swift_bridgeObjectRetain_n();

        MEMORY[0x259C52E30](0x746E756F43, 0xE500000000000000);
        v205 = v306;
        v206 = v307;
        v301 = v204;
        v207 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v297 = sub_255F558F4(0, &qword_27F81A790, 0x277CCABB0);
        *(v304 + 248) = v297;
        *(v304 + 224) = v207;
        sub_255F55470((v304 + 224), (v304 + 256));
        v208 = swift_isUniquelyReferenced_nonNull_native();
        v306 = v149;
        v209 = v205;
        v211 = sub_255F51FE8(v205, v206);
        v212 = v149[2];
        v213 = (v210 & 1) == 0;
        v10 = v212 + v213;
        if (__OFADD__(v212, v213))
        {
          goto LABEL_147;
        }

        v214 = v210;
        if (v149[3] >= v10)
        {
          if (v208)
          {
            if (v210)
            {
              goto LABEL_118;
            }
          }

          else
          {
            sub_255F52E68();
            if (v214)
            {
              goto LABEL_118;
            }
          }
        }

        else
        {
          sub_255F523DC(v10, v208);
          v215 = sub_255F51FE8(v209, v206);
          if ((v214 & 1) != (v216 & 1))
          {
            goto LABEL_130;
          }

          v211 = v215;
          if (v214)
          {
LABEL_118:

            v217 = v306;
            v222 = (v306[7] + 32 * v211);
            __swift_destroy_boxed_opaque_existential_0(v222);
            v221 = v304;
            sub_255F55470((v304 + 256), v222);
            goto LABEL_119;
          }
        }

        v217 = v306;
        v306[(v211 >> 6) + 8] |= 1 << v211;
        v218 = (v217[6] + 16 * v211);
        *v218 = v209;
        v218[1] = v206;
        v10 = sub_255F55470((v304 + 256), (v217[7] + 32 * v211));
        v219 = v217[2];
        v79 = __OFADD__(v219, 1);
        v220 = v219 + 1;
        if (v79)
        {
          goto LABEL_149;
        }

        v217[2] = v220;
        v221 = v304;
LABEL_119:
        v306 = v291;
        v307 = v203;

        MEMORY[0x259C52E30](0x6E6F697461727544, 0xE800000000000000);

        v224 = v306;
        v223 = v307;
        sub_255F4FAF8(v301);
        v226 = v225;

        v227 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        *(v221 + 312) = v297;
        *(v221 + 288) = v227;
        sub_255F55470((v221 + 288), (v221 + 320));
        v228 = swift_isUniquelyReferenced_nonNull_native();
        v306 = v217;
        v10 = sub_255F51FE8(v224, v223);
        v230 = v217[2];
        v231 = (v229 & 1) == 0;
        v79 = __OFADD__(v230, v231);
        v232 = v230 + v231;
        if (v79)
        {
          goto LABEL_148;
        }

        v233 = v229;
        v131 = v221;
        if (v217[3] >= v232)
        {
          if ((v228 & 1) == 0)
          {
            v238 = v10;
            sub_255F52E68();
            v10 = v238;
            v131 = v304;
          }
        }

        else
        {
          sub_255F523DC(v232, v228);
          v10 = sub_255F51FE8(v224, v223);
          if ((v233 & 1) != (v234 & 1))
          {
            goto LABEL_130;
          }
        }

        v196 &= v196 - 1;
        if (v233)
        {
          v198 = v10;

          v149 = v306;
          v199 = (v306[7] + 32 * v198);
          __swift_destroy_boxed_opaque_existential_0(v199);
          sub_255F55470((v131 + 320), v199);
        }

        else
        {
          v149 = v306;
          v306[(v10 >> 6) + 8] |= 1 << v10;
          v235 = (v149[6] + 16 * v10);
          *v235 = v224;
          v235[1] = v223;
          v10 = sub_255F55470((v131 + 320), (v149[7] + 32 * v10));
          v236 = v149[2];
          v79 = __OFADD__(v236, 1);
          v237 = v236 + 1;
          if (v79)
          {
            goto LABEL_150;
          }

          v149[2] = v237;
        }

        v191 = v200;
        v10 = v289;
        v197 = v284;
      }

      while (1)
      {
        v200 = v191 + 1;
        if (__OFADD__(v191, 1))
        {
          __break(1u);
          goto LABEL_140;
        }

        if (v200 >= v197)
        {
          break;
        }

        v196 = *(v10 + 8 * v200);
        ++v191;
        if (v196)
        {
          goto LABEL_110;
        }
      }

      v137 = *(v131 + 600);
      v138 = *(v131 + 584);

      sub_255F5035C(v149);

      sub_255F57600();

      (*v263)(v137, v138);
      v134 = v282;
      v136 = v303;
      v10 = v279;
    }

    while (v282 != v275);
  }

  v239 = v131;
  v242 = v131 + 464;
  v240 = *(v131 + 464);
  v241 = *(v242 + 8);
  v243 = v239[57];
  v244 = v239[46];

  (*(v240 + 32))(v244, v241, v243);

  sub_255F553B4(v260, 0);
  sub_255F553B4(v259, 0);

  v245 = v239[1];

  return v245();
}

uint64_t sub_255F4E5EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255F4E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v37 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v6 = MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A820, &qword_255F581A8);
  MEMORY[0x28223BE20](v35);
  v11 = &v30 - v10;
  v12 = sub_255F578B0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x277D84F90];
  (*(v13 + 104))(v15, *MEMORY[0x277D1F338], v12);
  v16 = sub_255F57580();
  sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v17 = a3;
  result = sub_255F579B0();
  if (result)
  {
    v31 = v13;
    v32 = v12;
    v19 = *(v16 - 8);
    v38 = v11;
    v30 = v15;
    v20 = v19;
    v21 = v33;
    v22 = *(v19 + 16);
    v22(v9, v17, v16);
    v23 = v34;
    v22(&v9[*(v34 + 48)], a4, v16);
    sub_255F556A8(v9, v21, &qword_27F81A740, &qword_255F580F0);
    v24 = *(v23 + 48);
    v25 = *(v20 + 32);
    v25(v38, v21, v16);
    v26 = *(v20 + 8);
    v26(v21 + v24, v16);
    sub_255F55598(v9, v21, &qword_27F81A740, &qword_255F580F0);
    v25(&v38[*(v35 + 36)], v21 + *(v23 + 48), v16);
    v27 = (v26)(v21, v16);
    v28 = v30;
    v29 = v38;
    MEMORY[0x28223BE20](v27);
    *(&v30 - 2) = &v40;
    sub_255F559D4(&qword_27F81A828, MEMORY[0x277D1F308], MEMORY[0x277D1F300]);
    sub_255F578D0();
    sub_255F55620(v29, &qword_27F81A820, &qword_255F581A8);
    (*(v31 + 8))(v28, v32);
    v39 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A830, &qword_255F581B0);
    return sub_255F57A80();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255F4EC68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_255F57910();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_255F517F8(0, v9[2] + 1, 1, v9, &qword_27F81A838, &qword_255F581B8, MEMORY[0x277D1F3B8]);
    *a3 = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_255F517F8((v11 > 1), v12 + 1, 1, v9, &qword_27F81A838, &qword_255F581B8, MEMORY[0x277D1F3B8]);
    *a3 = v9;
  }

  v9[2] = v12 + 1;
  return (*(v6 + 32))(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v8, v5);
}

void (*sub_255F4EE30(uint64_t a1))(char *, uint64_t)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v2 = MEMORY[0x28223BE20](v88);
  v87 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v86 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v89 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v78 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v78 - v8;
  v9 = sub_255F575D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255F57580();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v96 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v95 = &v78 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v91 = &v78 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v78 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v78 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v78 - v26;
  v85 = v5;
  v28 = *(v14 + 16);
  v14 += 16;
  v28(&v78 - v26, a1 + *(v5 + 36), v13);
  v100 = v13;
  v82 = v28;
  v28(v25, a1, v13);
  v29 = (v10 + 8);
  v30 = (v14 - 8);
  v83 = v14;
  v97 = (v14 + 16);
  v31 = v12;
  v98 = MEMORY[0x277D84F90];
  v92 = v27;
  v84 = v25;
  v80 = v12;
  v81 = v9;
  for (i = v29; ; v29 = i)
  {
    sub_255F575B0();
    v32 = v90;
    sub_255F57590();
    v33 = *v29;
    (*v29)(v31, v9);
    sub_255F575B0();
    v34 = v91;
    sub_255F57590();
    v33(v31, v9);
    v35 = sub_255F57550();
    v36 = *v30;
    v37 = v34;
    v38 = v100;
    (*v30)(v37, v100);
    v99 = v36;
    v36(v32, v38);
    if ((v35 & 1) == 0)
    {
      break;
    }

    sub_255F575B0();
    sub_255F57590();
    v33(v31, v9);
    v33 = v96;
    sub_255F57570();
    sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v39 = sub_255F579B0();
    v40 = v98;
    if ((v39 & 1) == 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    v41 = v86;
    v42 = v100;
    v43 = v82;
    v82(v86, v25, v100);
    v44 = v88;
    v43(v41 + *(v88 + 48), v33, v42);
    v45 = v40;
    v46 = v30;
    v47 = v87;
    sub_255F556A8(v41, v87, &qword_27F81A740, &qword_255F580F0);
    v48 = *(v44 + 48);
    v49 = *v97;
    v50 = v94;
    (*v97)(v94, v47, v42);
    v51 = (v47 + v48);
    v52 = v99;
    v99(v51, v42);
    sub_255F55598(v41, v47, &qword_27F81A740, &qword_255F580F0);
    v53 = v50 + *(v85 + 36);
    v54 = v47 + *(v44 + 48);
    v93 = v49;
    v49(v53, v54, v42);
    v55 = v47;
    v30 = v46;
    v56 = v45;
    v52(v55, v42);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_255F51504(0, v45[2] + 1, 1, v45);
    }

    v58 = v56[2];
    v57 = v56[3];
    v25 = v84;
    v31 = v80;
    v9 = v81;
    v59 = v96;
    if (v58 >= v57 >> 1)
    {
      v56 = sub_255F51504((v57 > 1), v58 + 1, 1, v56);
    }

    v60 = v99;
    v61 = v100;
    v99(v95, v100);
    v60(v25, v61);
    v56[2] = v58 + 1;
    v62 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v98 = v56;
    sub_255F55598(v94, v56 + v62 + *(v89 + 72) * v58, &qword_27F81A748, &qword_255F580F8);
    v93(v25, v59, v61);
  }

  sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if ((sub_255F579B0() & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v63 = v86;
  v64 = v100;
  v65 = v82;
  v82(v86, v25, v100);
  v66 = v88;
  v65(v63 + *(v88 + 48), v92, v64);
  v67 = v87;
  sub_255F556A8(v63, v87, &qword_27F81A740, &qword_255F580F0);
  v68 = *(v66 + 48);
  v69 = *v97;
  v70 = v78;
  (*v97)(v78, v67, v64);
  v71 = v99;
  v99((v67 + v68), v64);
  sub_255F55598(v63, v67, &qword_27F81A740, &qword_255F580F0);
  v69(v70 + *(v85 + 36), v67 + *(v66 + 48), v64);
  v33 = v98;
  v71(v67, v64);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_16:
  v33 = sub_255F51504(0, *(v33 + 2) + 1, 1, v33);
LABEL_11:
  v73 = *(v33 + 2);
  v72 = *(v33 + 3);
  v74 = v92;
  if (v73 >= v72 >> 1)
  {
    v33 = sub_255F51504((v72 > 1), v73 + 1, 1, v33);
  }

  v76 = v99;
  v75 = v100;
  (v99)();
  v76(v74, v75);
  *(v33 + 2) = v73 + 1;
  sub_255F55598(v78, v33 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v73, &qword_27F81A748, &qword_255F580F8);
  return v33;
}

unint64_t sub_255F4F748@<X0>(unint64_t *a1@<X8>)
{
  result = sub_255F54DA4(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

void *sub_255F4F788(uint64_t a1, uint64_t a2)
{
  v3 = sub_255F575D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255F57580();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  sub_255F575B0();
  sub_255F57590();
  (*(v4 + 8))(v6, v3);
  v26 = a2;
  if (sub_255F57550())
  {
    v25 = *(v8 + 16);
    v17 = MEMORY[0x277D84F90];
    v24[1] = v8 + 8;
    v24[0] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      v25(v14, v16, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_255F517F8(0, v17[2] + 1, 1, v17, &qword_27F81A7F0, &qword_255F58188, MEMORY[0x277CC9578]);
      }

      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        v17 = sub_255F517F8((v18 > 1), v19 + 1, 1, v17, &qword_27F81A7F0, &qword_255F58188, MEMORY[0x277CC9578]);
      }

      v17[2] = v19 + 1;
      v20 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19;
      v21 = *(v8 + 32);
      v21(v20, v14, v7);
      sub_255F57570();
      v22 = *(v8 + 8);
      v22(v16, v7);
      v21(v16, v11, v7);
    }

    while ((sub_255F57550() & 1) != 0);
  }

  else
  {
    v22 = *(v8 + 8);
    v17 = MEMORY[0x277D84F90];
  }

  v22(v16, v7);
  return v17;
}

uint64_t sub_255F4FAF8(uint64_t a1)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A740, &qword_255F580F0);
  v2 = MEMORY[0x28223BE20](v60);
  v56 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v59 = v52 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v5 = *(v69 - 8);
  v6 = MEMORY[0x28223BE20](v69);
  v53 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v67 = v52 - v9;
  MEMORY[0x28223BE20](v8);
  v68 = v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7D0, &qword_255F58168);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v54 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = v52 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v66 = v52 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v52 - v18;
  v70 = a1;

  sub_255F53730(&v70);
  v20 = v70;
  v21 = *(v70 + 16);
  if (!v21)
  {
  }

  v23 = *(v5 + 56);
  v22 = v5 + 56;
  v63 = v23;
  v23(v19, 1, 1, v69);
  v24 = (*(v22 + 24) + 32) & ~*(v22 + 24);
  v52[1] = v20;
  v25 = (v20 + v24);
  v26 = (v22 - 8);
  v64 = v22;
  v27 = *(v22 + 16);
  v28 = 0.0;
  v58 = (v22 - 8);
  v62 = v27;
  do
  {
    sub_255F556A8(v25, v68, &qword_27F81A748, &qword_255F580F8);
    v29 = v66;
    sub_255F556A8(v19, v66, &qword_27F81A7D0, &qword_255F58168);
    v65 = *v26;
    if (v65(v29, 1, v69) == 1)
    {
      sub_255F55620(v19, &qword_27F81A7D0, &qword_255F58168);
      sub_255F55620(v29, &qword_27F81A7D0, &qword_255F58168);
      sub_255F55598(v68, v19, &qword_27F81A748, &qword_255F580F8);
      v63(v19, 0, 1, v69);
    }

    else
    {
      sub_255F55598(v29, v67, &qword_27F81A748, &qword_255F580F8);
      if (sub_255F57540())
      {
        v30 = v67;
        sub_255F57520();
        v32 = v31;
        sub_255F57520();
        v34 = v33;
        sub_255F55620(v30, &qword_27F81A748, &qword_255F580F8);
        sub_255F55620(v19, &qword_27F81A7D0, &qword_255F58168);
        v28 = v28 + v32 - v34;
        sub_255F55598(v68, v19, &qword_27F81A748, &qword_255F580F8);
        v63(v19, 0, 1, v69);
        v27 = v62;
      }

      else
      {
        v35 = *(v69 + 36);
        if (sub_255F57540())
        {
          v36 = sub_255F57580();
          sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v37 = v68;
          v38 = sub_255F579B0();
          sub_255F55620(v19, &qword_27F81A7D0, &qword_255F58168);
          if ((v38 & 1) == 0)
          {
            __break(1u);

            __break(1u);
            return result;
          }

          v61 = *(v36 - 8);
          v39 = *(v61 + 16);
          v40 = v35;
          v41 = v37;
          v42 = v59;
          v39(v59, v67, v36);
          sub_255F55620(v67, &qword_27F81A748, &qword_255F580F8);
          v43 = v60;
          v39(v42 + *(v60 + 48), v41 + v40, v36);
          sub_255F55620(v41, &qword_27F81A748, &qword_255F580F8);
          v44 = v56;
          sub_255F556A8(v42, v56, &qword_27F81A740, &qword_255F580F0);
          v57 = *(v43 + 48);
          v45 = v61;
          v46 = *(v61 + 32);
          v47 = v55;
          v46(v55, v44, v36);
          v48 = *(v45 + 8);
          v61 = v45 + 8;
          v48(v44 + v57, v36);
          sub_255F55598(v59, v44, &qword_27F81A740, &qword_255F580F0);
          v46((v47 + *(v69 + 36)), v44 + *(v60 + 48), v36);
          v48(v44, v36);
          v63(v47, 0, 1, v69);
          sub_255F55598(v47, v19, &qword_27F81A7D0, &qword_255F58168);
          v26 = v58;
          v27 = v62;
        }

        else
        {
          sub_255F55620(v67, &qword_27F81A748, &qword_255F580F8);
          sub_255F55620(v68, &qword_27F81A748, &qword_255F580F8);
          v26 = v58;
          v27 = v62;
        }
      }
    }

    v25 += v27;
    --v21;
  }

  while (v21);

  v49 = v54;
  sub_255F556A8(v19, v54, &qword_27F81A7D0, &qword_255F58168);
  if (v65(v49, 1, v69) == 1)
  {
    sub_255F55620(v19, &qword_27F81A7D0, &qword_255F58168);
    return sub_255F55620(v49, &qword_27F81A7D0, &qword_255F58168);
  }

  else
  {
    v51 = v53;
    sub_255F55598(v49, v53, &qword_27F81A748, &qword_255F580F8);
    sub_255F57520();
    sub_255F57520();
    sub_255F55620(v51, &qword_27F81A748, &qword_255F580F8);
    return sub_255F55620(v19, &qword_27F81A7D0, &qword_255F58168);
  }
}

unint64_t sub_255F5035C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7B8, &qword_255F58150);
    v2 = sub_255F57B60();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_255F554CC(*(a1 + 56) + 32 * v12, v32);
        *&v31 = v14;
        *(&v31 + 1) = v15;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v16 = v31;
        sub_255F55470(v30, &v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7C0, &qword_255F58158);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        result = sub_255F51FE8(v16, *(&v16 + 1));
        if (v17)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          result = sub_255F55528(&v24, v2[7] + 32 * v9);
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v16;
          v18 = (v2[7] + 32 * result);
          v19 = v25;
          *v18 = v24;
          v18[1] = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_255F505D0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A890, &qword_255F58200);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = sub_255F57530();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_255F55868;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255F50830;
  aBlock[3] = &block_descriptor_16;
  v11 = _Block_copy(aBlock);

  [a2 fetchLocationsOfInterestVisitedSinceDate:v8 withHandler:v11];
  _Block_release(v11);
}

unint64_t sub_255F50794(unint64_t result)
{
  if (result)
  {
    if (result >> 62)
    {
      if (sub_255F57B30() < 1)
      {
        goto LABEL_6;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A890, &qword_255F58200);
      return sub_255F57A80();
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_255F50830(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_255F558F4(0, &qword_27F81A898, 0x277D01170);
    v4 = sub_255F57A20();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_255F508D4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A868, &qword_255F581E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_255F55724;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255F50C90;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  [a2 requestFullAccessToEventsWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_255F50A84(char a1, void *a2)
{
  if (qword_27F81A6C8 != -1)
  {
    swift_once();
  }

  v4 = sub_255F57970();
  __swift_project_value_buffer(v4, qword_27F81A8E0);
  v5 = sub_255F57950();
  v6 = sub_255F57A90();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_255F46000, v5, v6, "EKStore request succeeded: %{BOOL}d", v7, 8u);
    MEMORY[0x259C533C0](v7, -1, -1);
  }

  MEMORY[0x259C532E0](a2);
  v8 = sub_255F57950();
  v9 = sub_255F57A90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    if (a2)
    {
      MEMORY[0x259C532E0](a2);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v10 + 4) = v12;
    *v11 = v13;
    _os_log_impl(&dword_255F46000, v8, v9, "EKStore request error: %@", v10, 0xCu);
    sub_255F55620(v11, &qword_27F81A6F8, &qword_255F580B8);
    MEMORY[0x259C533C0](v11, -1, -1);
    MEMORY[0x259C533C0](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A868, &qword_255F581E0);
  return sub_255F57A80();
}

void sub_255F50C90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_255F50D08(void **a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a3;
  v4 = sub_255F57580();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = *a1;
  result = [v11 startDate];
  if (result)
  {
    v13 = result;
    sub_255F57560();

    sub_255F559D4(&qword_27F81A780, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v14 = sub_255F579A0();
    v15 = *(v5 + 8);
    v15(v10, v4);
    if (v14)
    {
      v16 = 0;
      return (v16 & 1);
    }

    result = [v11 endDate];
    if (result)
    {
      v17 = result;
      sub_255F57560();

      v16 = sub_255F579A0() ^ 1;
      v15(v8, v4);
      return (v16 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255F50EFC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255F57B30())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x259C52F10](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_255F57AF0();
        sub_255F57B10();
        v4 = v15;
        sub_255F57B20();
        sub_255F57B00();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t convertDateIntoNumericRepresentation(date:)(uint64_t a1)
{
  v25 = a1;
  v26 = sub_255F575D0();
  v1 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_255F57510();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F575B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A700, &qword_255F580C0);
  v7 = sub_255F575C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_255F58080;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x277CC9968], v7);
  v13(v12 + v9, *MEMORY[0x277CC9998], v7);
  v13(v12 + 2 * v9, *MEMORY[0x277CC9988], v7);
  sub_255F55088(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_255F575A0();

  (*(v1 + 8))(v3, v26);
  result = sub_255F574F0();
  if (v15)
  {
    goto LABEL_13;
  }

  v16 = 10000 * result;
  if ((result * 10000) >> 64 != (10000 * result) >> 63)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_255F57500();
  if (v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    goto LABEL_10;
  }

  v19 = __OFADD__(v16, v18);
  v20 = v16 + v18;
  if (v19)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_255F574E0();
  if (v21)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v22 = result;
  (*(v23 + 8))(v6, v24);
  result = v20 + v22;
  if (__OFADD__(v20, v22))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_255F5141C()
{
  v1 = *v0;
  sub_255F57BD0();
  MEMORY[0x259C53020](v1);
  return sub_255F57BF0();
}

uint64_t sub_255F51490(uint64_t a1)
{
  v2 = *v1;
  sub_255F57BD0();
  MEMORY[0x259C53020](v2);
  return sub_255F57BF0();
}

void *sub_255F514E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_255F51504(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7E0, &qword_255F58178);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_255F516F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7D8, &qword_255F58170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_255F517F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_255F519D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255F51AA0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_255F554CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_255F51AA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_255F51BAC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_255F57AE0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_255F51BAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_255F51BF8(a1, a2);
  sub_255F51D28(&unk_2868066D8);
  return v3;
}

void *sub_255F51BF8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_255F51E14(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_255F57AE0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_255F57A00();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_255F51E14(v10, 0);
        result = sub_255F57AC0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_255F51D28(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_255F51E88(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_255F51E14(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A850, &qword_255F581C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_255F51E88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A850, &qword_255F581C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_255F51F7C(uint64_t a1)
{
  sub_255F57BD0();
  MEMORY[0x259C53020](a1);
  v2 = sub_255F57BF0();

  return sub_255F520F8(a1, v2);
}

unint64_t sub_255F51FE8(uint64_t a1, uint64_t a2)
{
  sub_255F57BD0();
  sub_255F579E0();
  v4 = sub_255F57BF0();

  return sub_255F52164(a1, a2, v4);
}

unint64_t sub_255F52060(uint64_t a1)
{
  sub_255F57580();
  sub_255F559D4(&qword_27F81A808, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v2 = sub_255F57980();

  return sub_255F5221C(a1, v2);
}

unint64_t sub_255F520F8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_255F52164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_255F57B90())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_255F5221C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_255F57580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_255F559D4(&qword_27F81A810, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v15 = sub_255F579C0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_255F523DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7C8, &qword_255F58160);
  v33 = v4;
  result = sub_255F57B50();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_255F55470(v24, v34);
      }

      else
      {
        sub_255F554CC(v24, v34);
      }

      sub_255F57BD0();
      sub_255F579E0();
      result = sub_255F57BF0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_255F55470(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_255F52694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7E8, &qword_255F58180);
  v34 = v4;
  result = sub_255F57B50();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_255F57BD0();
      sub_255F579E0();
      result = sub_255F57BF0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_255F5293C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_255F57580();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_255F57B50();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_255F559D4(&qword_27F81A808, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_255F57980();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_255F52D18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_255F517F8(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_27F81A788, &qword_255F58130, MEMORY[0x277CE1950]);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_255F576A0();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_255F52E68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7C8, &qword_255F58160);
  v2 = *v0;
  v3 = sub_255F57B40();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_255F554CC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_255F55470(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_255F5300C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7E8, &qword_255F58180);
  v2 = *v0;
  v3 = sub_255F57B40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_255F5317C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_255F57580();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_255F57B40();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

void *sub_255F533F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255F53434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255F53414(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255F53624(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_255F53434(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7E0, &qword_255F58178);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_255F53624(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7F8, &qword_255F58190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_255F53730(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_255F54B4C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_255F537E4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_255F537E4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_255F57B70();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
        v6 = sub_255F57A50();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_255F53B78(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_255F53928(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_255F53928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_255F556A8(v22, v16, &qword_27F81A748, &qword_255F580F8);
      sub_255F556A8(v19, v12, &qword_27F81A748, &qword_255F580F8);
      v23 = sub_255F57550();
      sub_255F55620(v12, &qword_27F81A748, &qword_255F580F8);
      result = sub_255F55620(v16, &qword_27F81A748, &qword_255F580F8);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_255F55598(v22, v34, &qword_27F81A748, &qword_255F580F8);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_255F55598(v24, v19, &qword_27F81A748, &qword_255F580F8);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_255F53B78(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v103 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v113 = *(v116 - 8);
  v9 = MEMORY[0x28223BE20](v116);
  v107 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v115 = &v99 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v118 = &v99 - v14;
  result = MEMORY[0x28223BE20](v13);
  v117 = &v99 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_96:
    a4 = *v103;
    if (!*v103)
    {
      goto LABEL_136;
    }

    v4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_255F54A48(v4);
    }

    v94 = v6;
    v119 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (1)
      {
        v95 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *(result + 16 * v4);
        v96 = result;
        v97 = *(result + 16 * (v4 - 1) + 40);
        sub_255F544B8(v95 + *(v113 + 72) * a3, v95 + *(v113 + 72) * *(result + 16 * (v4 - 1) + 32), v95 + *(v113 + 72) * v97, a4);
        if (v94)
        {
        }

        if (v97 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_255F54A48(v96);
        }

        if (v4 - 2 >= *(v96 + 2))
        {
          goto LABEL_124;
        }

        v98 = &v96[16 * v4];
        *v98 = a3;
        *(v98 + 1) = v97;
        v119 = v96;
        sub_255F549BC(v4 - 1);
        result = v119;
        v4 = *(v119 + 16);
        a3 = v6;
        if (v4 <= 1)
        {
        }
      }
    }
  }

  v100 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v104 = a3;
  while (1)
  {
    v20 = v18;
    v108 = v19;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v102 = v6;
      v21 = v18;
      v22 = *a3;
      v23 = *(v113 + 72);
      a4 = *a3 + v23 * (v18 + 1);
      v24 = v117;
      sub_255F556A8(a4, v117, &qword_27F81A748, &qword_255F580F8);
      v25 = v118;
      sub_255F556A8(v22 + v23 * v21, v118, &qword_27F81A748, &qword_255F580F8);
      LODWORD(v112) = sub_255F57550();
      sub_255F55620(v25, &qword_27F81A748, &qword_255F580F8);
      result = sub_255F55620(v24, &qword_27F81A748, &qword_255F580F8);
      v101 = v21;
      v4 = v21 + 2;
      v114 = v23;
      v26 = v22 + v23 * (v21 + 2);
      while (v17 != v4)
      {
        v27 = v117;
        sub_255F556A8(v26, v117, &qword_27F81A748, &qword_255F580F8);
        v28 = v118;
        sub_255F556A8(a4, v118, &qword_27F81A748, &qword_255F580F8);
        v29 = v17;
        v30 = sub_255F57550() & 1;
        sub_255F55620(v28, &qword_27F81A748, &qword_255F580F8);
        result = sub_255F55620(v27, &qword_27F81A748, &qword_255F580F8);
        ++v4;
        v26 += v114;
        a4 += v114;
        v31 = (v112 & 1) == v30;
        v17 = v29;
        if (!v31)
        {
          v17 = v4 - 1;
          break;
        }
      }

      a3 = v104;
      v20 = v101;
      v6 = v102;
      if (v112)
      {
        if (v17 < v101)
        {
          goto LABEL_127;
        }

        if (v101 < v17)
        {
          v4 = v114 * (v17 - 1);
          v32 = v17 * v114;
          v33 = v17;
          v34 = v17;
          v35 = v101;
          a4 = v101 * v114;
          do
          {
            if (v35 != --v34)
            {
              v36 = *v104;
              if (!*v104)
              {
                goto LABEL_133;
              }

              sub_255F55598(v36 + a4, v107, &qword_27F81A748, &qword_255F580F8);
              if (a4 < v4 || v36 + a4 >= (v36 + v32))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_255F55598(v107, v36 + v4, &qword_27F81A748, &qword_255F580F8);
            }

            ++v35;
            v4 -= v114;
            v32 -= v114;
            a4 += v114;
          }

          while (v35 < v34);
          v20 = v101;
          v6 = v102;
          a3 = v104;
          v17 = v33;
        }
      }
    }

    v37 = a3[1];
    if (v17 < v37)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_126;
      }

      if (v17 - v20 < v100)
      {
        if (__OFADD__(v20, v100))
        {
          goto LABEL_128;
        }

        if (v20 + v100 >= v37)
        {
          v38 = a3[1];
        }

        else
        {
          v38 = v20 + v100;
        }

        if (v38 < v20)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v17 != v38)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v108;
    }

    else
    {
      result = sub_255F516F4(0, *(v108 + 2) + 1, 1, v108);
      v19 = result;
    }

    v4 = *(v19 + 2);
    v39 = *(v19 + 3);
    a4 = v4 + 1;
    if (v4 >= v39 >> 1)
    {
      result = sub_255F516F4((v39 > 1), v4 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v40 = &v19[16 * v4];
    *(v40 + 4) = v20;
    *(v40 + 5) = v18;
    v41 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v42 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v43 = *(v19 + 4);
          v44 = *(v19 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_52:
          if (v46)
          {
            goto LABEL_114;
          }

          v59 = &v19[16 * a4];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_117;
          }

          v65 = &v19[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_121;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v69 = &v19[16 * a4];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_66:
        if (v64)
        {
          goto LABEL_116;
        }

        v72 = &v19[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v42 - 1;
        if (v42 - 1 >= a4)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v80 = v19;
        a4 = *&v19[16 * v4 + 32];
        v81 = *&v19[16 * v42 + 40];
        sub_255F544B8(*a3 + *(v113 + 72) * a4, *a3 + *(v113 + 72) * *&v19[16 * v42 + 32], *a3 + *(v113 + 72) * v81, v41);
        if (v6)
        {
        }

        if (v81 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v82 = v80;
        }

        else
        {
          v82 = sub_255F54A48(v80);
        }

        if (v4 >= *(v82 + 2))
        {
          goto LABEL_111;
        }

        v83 = &v82[16 * v4];
        *(v83 + 4) = a4;
        *(v83 + 5) = v81;
        v119 = v82;
        v4 = &v119;
        result = sub_255F549BC(v42);
        v19 = v119;
        a4 = *(v119 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v19[16 * a4 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_112;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_113;
      }

      v54 = &v19[16 * a4];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_115;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_118;
      }

      if (v58 >= v50)
      {
        v76 = &v19[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v45 < v79)
        {
          v42 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = a3[1];
    if (v18 >= v17)
    {
      goto LABEL_96;
    }
  }

  v101 = v20;
  v102 = v6;
  v84 = *a3;
  v85 = *(v113 + 72);
  v86 = *a3 + v85 * (v17 - 1);
  v87 = -v85;
  v88 = v20 - v17;
  v105 = v85;
  v106 = v38;
  v114 = v84;
  a4 = v84 + v17 * v85;
LABEL_86:
  v111 = v86;
  v112 = v17;
  v109 = a4;
  v110 = v88;
  v89 = v86;
  while (1)
  {
    v4 = v117;
    sub_255F556A8(a4, v117, &qword_27F81A748, &qword_255F580F8);
    v90 = v118;
    sub_255F556A8(v89, v118, &qword_27F81A748, &qword_255F580F8);
    v91 = sub_255F57550();
    sub_255F55620(v90, &qword_27F81A748, &qword_255F580F8);
    result = sub_255F55620(v4, &qword_27F81A748, &qword_255F580F8);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v17 = v112 + 1;
      v18 = v106;
      v86 = v111 + v105;
      v88 = v110 - 1;
      a4 = v109 + v105;
      if (v112 + 1 != v106)
      {
        goto LABEL_86;
      }

      v20 = v101;
      v6 = v102;
      a3 = v104;
      if (v106 < v101)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v114)
    {
      break;
    }

    v92 = v115;
    sub_255F55598(a4, v115, &qword_27F81A748, &qword_255F580F8);
    swift_arrayInitWithTakeFrontToBack();
    sub_255F55598(v92, v89, &qword_27F81A748, &qword_255F580F8);
    v89 += v87;
    a4 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_255F544B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v8 = MEMORY[0x28223BE20](v43);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v44 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_58;
          }

          v29 = a3;
          v37 = v23;
          a3 += v24;
          v30 = v25 + v24;
          v31 = v44;
          sub_255F556A8(v30, v44, &qword_27F81A748, &qword_255F580F8);
          v32 = v27;
          v33 = v45;
          sub_255F556A8(v32, v45, &qword_27F81A748, &qword_255F580F8);
          v34 = sub_255F57550();
          sub_255F55620(v33, &qword_27F81A748, &qword_255F580F8);
          sub_255F55620(v31, &qword_27F81A748, &qword_255F580F8);
          if (v34)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v42;
            a1 = v39;
          }

          else
          {
            v27 = v42;
            a1 = v39;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v29 < v41 || a3 >= v41)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v29 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a3;
    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v13;
        v20 = v44;
        sub_255F556A8(a2, v44, &qword_27F81A748, &qword_255F580F8);
        v21 = v45;
        sub_255F556A8(a4, v45, &qword_27F81A748, &qword_255F580F8);
        v22 = sub_255F57550();
        sub_255F55620(v21, &qword_27F81A748, &qword_255F580F8);
        sub_255F55620(v20, &qword_27F81A748, &qword_255F580F8);
        v13 = v19;
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v19;
          a4 += v19;
        }

        a1 += v19;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v41);
    }
  }

LABEL_58:
  sub_255F54A5C(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_255F549BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255F54A48(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_255F54A5C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A748, &qword_255F580F8);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_255F54B60(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A888, &qword_255F581F8);
  v3 = sub_255F57B60();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_255F51F7C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_255F51F7C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_255F54C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7C8, &qword_255F58160);
    v3 = sub_255F57B60();
    v4 = a1 + 32;

    while (1)
    {
      sub_255F556A8(v4, &v13, &qword_27F81A7B0, &qword_255F58148);
      v5 = v13;
      v6 = v14;
      result = sub_255F51FE8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_255F55470(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255F54DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7E8, &qword_255F58180);
    v3 = sub_255F57B60();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255F51FE8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255F54EA8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_255F57B60();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_255F556A8(v16, v12, a2, v27);
      result = sub_255F52060(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_255F57580();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_255F55088(uint64_t a1)
{
  v2 = sub_255F575C0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A708, &qword_255F580C8);
    v9 = sub_255F57AB0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_255F559D4(&qword_27F81A710, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_255F57980();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_255F559D4(&qword_27F81A718, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_255F579C0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_255F553B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_255F553C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

_OWORD *sub_255F55470(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_255F554CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_255F55528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A7C0, &qword_255F58158);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_255F55598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_255F55620(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_255F556A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255F55724(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A868, &qword_255F581E0);

  return sub_255F50A84(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

unint64_t sub_255F55868(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F81A890, &qword_255F58200);

  return sub_255F50794(a1);
}

uint64_t sub_255F558F4(uint64_t a1, unint64_t *a2, void *a3)
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

void type metadata accessor for RTLocationOfInterestType()
{
  if (!qword_27F81A8A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F81A8A0);
    }
  }
}

uint64_t sub_255F559D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255F55A30()
{
  v0 = sub_255F57970();
  __swift_allocate_value_buffer(v0, qword_27F81A8E0);
  __swift_project_value_buffer(v0, qword_27F81A8E0);
  return sub_255F57960();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t DeviceLockState.hashValue.getter()
{
  v1 = *v0;
  sub_255F57BD0();
  MEMORY[0x259C53020](v1);
  return sub_255F57BF0();
}

uint64_t sub_255F55BB0()
{
  v1 = *v0;
  sub_255F57BD0();
  MEMORY[0x259C53020](v1);
  return sub_255F57BF0();
}

uint64_t sub_255F55C24(uint64_t a1)
{
  v2 = *v1;
  sub_255F57BD0();
  MEMORY[0x259C53020](v2);
  return sub_255F57BF0();
}

LighthouseQuartz::DeviceLockState __swiftcall getDeviceLockState()()
{
  v1 = v0;
  v2 = MKBGetDeviceLockState();
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      v3 = 5;
      goto LABEL_13;
    }

    if (v2 == 2)
    {
      v3 = 4;
      goto LABEL_13;
    }

LABEL_10:
    v3 = 0;
    goto LABEL_13;
  }

  if (!v2)
  {
    v3 = 3;
    goto LABEL_13;
  }

  if (v2 != 1)
  {
    goto LABEL_10;
  }

  v2 = MKBDeviceUnlockedSinceBoot();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

LABEL_13:
  *v1 = v3;
  return v2;
}

id sub_255F55D00(SEL *a1)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = [result *a1];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_255F55D64()
{
  result = qword_27F81A8B0;
  if (!qword_27F81A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81A8B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceLockState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceLockState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ActivityType.init(entityClass:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_255F57880();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  (*(v5 + 16))(&v48 - v9, a1, v4);
  sub_255F577F0();
  sub_255F56A4C();
  v11 = sub_255F579C0();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v11)
  {
    v13 = 0;
LABEL_51:
    v12(a1, v4);
    result = (v12)(v10, v4);
    goto LABEL_52;
  }

  sub_255F57710();
  v14 = sub_255F579C0();
  v12(v8, v4);
  if (v14)
  {
    v13 = 1;
    goto LABEL_51;
  }

  sub_255F57770();
  v15 = sub_255F579C0();
  v12(v8, v4);
  if (v15)
  {
    v13 = 2;
    goto LABEL_51;
  }

  sub_255F57770();
  v16 = sub_255F579C0();
  v12(v8, v4);
  if (v16)
  {
    v13 = 3;
    goto LABEL_51;
  }

  sub_255F577F0();
  v17 = sub_255F579C0();
  v12(v8, v4);
  if (v17)
  {
    v13 = 4;
    goto LABEL_51;
  }

  sub_255F57770();
  v18 = sub_255F579C0();
  v12(v8, v4);
  if (v18)
  {
    v13 = 5;
    goto LABEL_51;
  }

  sub_255F57740();
  v19 = sub_255F579C0();
  v12(v8, v4);
  if (v19)
  {
    v13 = 6;
    goto LABEL_51;
  }

  sub_255F57730();
  v20 = sub_255F579C0();
  v12(v8, v4);
  if (v20)
  {
    v13 = 7;
    goto LABEL_51;
  }

  sub_255F577B0();
  v21 = sub_255F579C0();
  v12(v8, v4);
  if (v21)
  {
    v13 = 8;
    goto LABEL_51;
  }

  sub_255F576F0();
  v22 = sub_255F579C0();
  v12(v8, v4);
  if (v22)
  {
    v13 = 9;
    goto LABEL_51;
  }

  sub_255F577D0();
  v23 = sub_255F579C0();
  v12(v8, v4);
  if (v23)
  {
    v13 = 10;
    goto LABEL_51;
  }

  sub_255F57860();
  v24 = sub_255F579C0();
  v12(v8, v4);
  if (v24)
  {
    v13 = 11;
    goto LABEL_51;
  }

  sub_255F57760();
  v25 = sub_255F579C0();
  v12(v8, v4);
  if (v25)
  {
    v13 = 12;
    goto LABEL_51;
  }

  sub_255F57750();
  v26 = sub_255F579C0();
  v12(v8, v4);
  if (v26)
  {
    v13 = 13;
    goto LABEL_51;
  }

  sub_255F57710();
  v27 = sub_255F579C0();
  v12(v8, v4);
  if (v27)
  {
    v13 = 14;
    goto LABEL_51;
  }

  sub_255F576D0();
  v28 = sub_255F579C0();
  v12(v8, v4);
  if (v28)
  {
    v13 = 15;
    goto LABEL_51;
  }

  sub_255F57810();
  v29 = sub_255F579C0();
  v12(v8, v4);
  if (v29)
  {
    v13 = 16;
    goto LABEL_51;
  }

  sub_255F57780();
  v30 = sub_255F579C0();
  v12(v8, v4);
  if (v30)
  {
    v13 = 17;
    goto LABEL_51;
  }

  sub_255F57820();
  v31 = sub_255F579C0();
  v12(v8, v4);
  if (v31)
  {
    v13 = 18;
    goto LABEL_51;
  }

  sub_255F57790();
  v32 = sub_255F579C0();
  v12(v8, v4);
  if (v32)
  {
    v13 = 19;
    goto LABEL_51;
  }

  sub_255F577C0();
  v33 = sub_255F579C0();
  v12(v8, v4);
  if (v33)
  {
    v13 = 20;
    goto LABEL_51;
  }

  sub_255F57720();
  v34 = sub_255F579C0();
  v12(v8, v4);
  if (v34)
  {
    v13 = 21;
    goto LABEL_51;
  }

  sub_255F57840();
  v35 = sub_255F579C0();
  v12(v8, v4);
  if (v35)
  {
    v13 = 22;
    goto LABEL_51;
  }

  sub_255F576E0();
  v36 = sub_255F579C0();
  v12(v8, v4);
  if (v36)
  {
    v13 = 23;
    goto LABEL_51;
  }

  sub_255F57830();
  v37 = sub_255F579C0();
  v12(v8, v4);
  if (v37)
  {
    v13 = 24;
    goto LABEL_51;
  }

  sub_255F577A0();
  v39 = sub_255F579C0();
  v12(v8, v4);
  if (v39)
  {
    v12(a1, v4);
    result = (v12)(v10, v4);
    v13 = 25;
  }

  else
  {
    sub_255F577E0();
    v40 = sub_255F579C0();
    v12(v8, v4);
    if (v40)
    {
      v12(a1, v4);
      result = (v12)(v10, v4);
      v13 = 26;
    }

    else
    {
      sub_255F57800();
      v41 = sub_255F579C0();
      v12(v8, v4);
      if (v41)
      {
        v12(a1, v4);
        result = (v12)(v10, v4);
        v13 = 27;
      }

      else
      {
        sub_255F57860();
        v42 = sub_255F579C0();
        v12(v8, v4);
        if (v42)
        {
          v12(a1, v4);
          result = (v12)(v10, v4);
          v13 = 28;
        }

        else
        {
          sub_255F577C0();
          v43 = sub_255F579C0();
          v12(v8, v4);
          if (v43)
          {
            v12(a1, v4);
            result = (v12)(v10, v4);
            v13 = 29;
          }

          else
          {
            sub_255F57700();
            v44 = sub_255F579C0();
            v12(v8, v4);
            if (v44)
            {
              v12(a1, v4);
              result = (v12)(v10, v4);
              v13 = 30;
            }

            else
            {
              sub_255F57870();
              v45 = sub_255F579C0();
              v12(v8, v4);
              if (v45)
              {
                v12(a1, v4);
                result = (v12)(v10, v4);
                v13 = 31;
              }

              else
              {
                sub_255F576C0();
                v46 = sub_255F579C0();
                v12(v8, v4);
                if (v46)
                {
                  v12(a1, v4);
                  result = (v12)(v10, v4);
                  v13 = 32;
                }

                else
                {
                  sub_255F57850();
                  v47 = sub_255F579C0();
                  v12(a1, v4);
                  v12(v8, v4);
                  result = (v12)(v10, v4);
                  if (v47)
                  {
                    v13 = 33;
                  }

                  else
                  {
                    v13 = 34;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_52:
  *a2 = v13;
  return result;
}

unint64_t sub_255F56A4C()
{
  result = qword_27F81A8B8;
  if (!qword_27F81A8B8)
  {
    sub_255F57880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81A8B8);
  }

  return result;
}

uint64_t ActivityType.rawValue.getter()
{
  result = 0x676E696B726F77;
  switch(*v0)
  {
    case 1:
    case 0xB:
      return 0xD00000000000001DLL;
    case 2:
      return 0xD000000000000015;
    case 3:
    case 5:
      return 0xD00000000000001ALL;
    case 4:
      return 0xD000000000000012;
    case 6:
      return 0xD000000000000011;
    case 7:
      return 0xD000000000000011;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0xD000000000000010;
    case 0xA:
      return 0xD000000000000011;
    case 0xC:
      return 0xD00000000000001FLL;
    case 0xD:
      return result;
    case 0xE:
      v2 = 1952802157;
      return v2 | 0x676E6900000000;
    case 0xF:
      return 0x676E69746165;
    case 0x10:
      return 0x676E696863746177;
    case 0x11:
      v3 = 1886349427;
      return v3 | 0x676E697000000000;
    case 0x12:
      return 0x6E6C7566646E696DLL;
    case 0x13:
      v3 = 1701145715;
      return v3 | 0x676E697000000000;
    case 0x14:
      v4 = 0x6C6576617274;
      goto LABEL_28;
    case 0x15:
      v2 = 1684104562;
      return v2 | 0x676E6900000000;
    case 0x16:
      return 0x6E6F697461636176;
    case 0x17:
      return 0x676E696D6167;
    case 0x18:
      return 0x7A696C6169636F73;
    case 0x19:
      return 0x7055676E696B6177;
    case 0x1A:
      return 0x656D6974646562;
    case 0x1B:
      return 0x616E6F6974617473;
    case 0x1C:
      return 0x746867696C66;
    case 0x1D:
      return 1885958772;
    case 0x1E:
      v4 = 0x74756D6D6F63;
LABEL_28:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    case 0x1F:
      result = 0x6E69646E65747461;
      break;
    case 0x20:
      result = 0x754F676E696E6964;
      break;
    case 0x21:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

LighthouseQuartz::ActivityType_optional __swiftcall ActivityType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255F57BA0();

  v5 = 0;
  v6 = 16;
  switch(v3)
  {
    case 0:
      goto LABEL_26;
    case 1:
      v5 = 1;
      goto LABEL_26;
    case 2:
      v5 = 2;
      goto LABEL_26;
    case 3:
      v5 = 3;
      goto LABEL_26;
    case 4:
      v5 = 4;
      goto LABEL_26;
    case 5:
      v5 = 5;
      goto LABEL_26;
    case 6:
      v5 = 6;
      goto LABEL_26;
    case 7:
      v5 = 7;
      goto LABEL_26;
    case 8:
      v5 = 8;
      goto LABEL_26;
    case 9:
      v5 = 9;
      goto LABEL_26;
    case 10:
      v5 = 10;
      goto LABEL_26;
    case 11:
      v5 = 11;
      goto LABEL_26;
    case 12:
      v5 = 12;
      goto LABEL_26;
    case 13:
      v5 = 13;
      goto LABEL_26;
    case 14:
      v5 = 14;
      goto LABEL_26;
    case 15:
      v5 = 15;
LABEL_26:
      v6 = v5;
      break;
    case 16:
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    default:
      v6 = 34;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_255F570C0()
{
  v0 = ActivityType.rawValue.getter();
  v2 = v1;
  if (v0 == ActivityType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_255F57B90();
  }

  return v5 & 1;
}

unint64_t sub_255F57160()
{
  result = qword_27F81A8C0;
  if (!qword_27F81A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81A8C0);
  }

  return result;
}

uint64_t sub_255F571B4()
{
  sub_255F57BD0();
  ActivityType.rawValue.getter();
  sub_255F579E0();

  return sub_255F57BF0();
}

uint64_t sub_255F5721C(uint64_t a1)
{
  ActivityType.rawValue.getter();
  sub_255F579E0();
}

uint64_t sub_255F57280(uint64_t a1)
{
  sub_255F57BD0();
  ActivityType.rawValue.getter();
  sub_255F579E0();

  return sub_255F57BF0();
}

uint64_t sub_255F572F0@<X0>(uint64_t *a1@<X8>)
{
  result = ActivityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_255F5731C()
{
  result = qword_27F81A8C8;
  if (!qword_27F81A8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F81A8D0, &qword_255F58420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F81A8C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}