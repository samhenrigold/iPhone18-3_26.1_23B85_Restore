uint64_t Optional.notNilOrThrow.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7);
  v10 = *(a1 + 16);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a2, v9, v10);
  }

  (*(v5 + 8))(v9, a1);
  sub_227D49E08();
  sub_227B2A160(&qword_27D7E67C8, MEMORY[0x277D0CE80], MEMORY[0x277D0CE88]);
  swift_allocError();
  sub_227D49D98();
  return swift_willThrow();
}

uint64_t OSSignposter.perform<A>(intervalName:task:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 128) = a4;
  *(v7 + 40) = a3;
  *(v7 + 48) = a5;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = sub_227D4CA08();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227B296AC, 0, 0);
}

uint64_t sub_227B296AC()
{
  sub_227D4C9F8();
  v1 = sub_227D4CA28();
  v2 = sub_227D4D478();
  result = sub_227D4D4E8();
  if (result)
  {
    v4 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = sub_227D4C9E8();
        _os_signpost_emit_with_name_impl(&dword_227B0D000, v1, v2, v6, v4, "", v5, 2u);
        OUTLINED_FUNCTION_5_2();
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v7 = *(v0 + 48);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 96), *(v0 + 72));
  sub_227D4CA78();
  swift_allocObject();
  *(v0 + 104) = sub_227D4CA68();
  v8 = OUTLINED_FUNCTION_9_2();
  v9(v8);
  v12 = (v7 + *v7);
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_227B298DC;
  v11 = *(v0 + 24);

  return v12(v11);
}

uint64_t sub_227B298DC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_227B29A70;
  }

  else
  {
    v2 = sub_227B299F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227B299F0()
{
  OUTLINED_FUNCTION_7_4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227B29A70()
{
  OUTLINED_FUNCTION_7_4();

  v1 = *(v0 + 8);

  return v1();
}

void sub_227B29AF0()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v23 = v2;
  v3 = sub_227D4CA48();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = sub_227D4CA08();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = sub_227D4CA28();
  sub_227D4CA58();
  v22 = sub_227D4D468();
  if ((sub_227D4D4E8() & 1) == 0)
  {
LABEL_13:

    (*(v12 + 8))(v16, v10);
    OUTLINED_FUNCTION_8_1();
    return;
  }

  if ((v1 & 1) == 0)
  {
    v18 = v23;
    if (v23)
    {
LABEL_9:

      sub_227D4CA88();

      if ((*(v5 + 88))(v9, v3) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v9, v3);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_227D4C9E8();
      _os_signpost_emit_with_name_impl(&dword_227B0D000, v17, v22, v21, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_5_2();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v18 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_227B29D4C(uint64_t a1, unint64_t a2)
{
  v3 = sub_227B29D98(a1, a2);
  sub_227B29EB0(&unk_283B37878);
  return v3;
}

uint64_t sub_227B29D98(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_227D4D078())
  {
    result = sub_227B29F94(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_227D4D658();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_227D4D6C8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_227B29EB0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_227B2A004(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_227B29F94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68D8, &qword_227D5BD90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_227B2A004(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68D8, &qword_227D5BD90);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_227B2A0F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68C8, &qword_227D4F740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227B2A160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_4_3()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return swift_slowAlloc();
}

uint64_t sub_227B2A1DC()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_227D4A058();
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B2A284()
{
  OUTLINED_FUNCTION_6();
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277D0D040], v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_227B2A33C;
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227B2A510();
}

uint64_t sub_227B2A33C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 72) = v0;

  v7 = OUTLINED_FUNCTION_91_0();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_164();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_227B2A4B4()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B2A510()
{
  OUTLINED_FUNCTION_6();
  v1[104] = v0;
  v1[103] = v2;
  v1[102] = v3;
  v1[101] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[105] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[106] = v6;
  v1[107] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[108] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[109] = v8;
  v1[110] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4A508();
  v1[111] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[112] = v10;
  v1[113] = OUTLINED_FUNCTION_121();
  v1[114] = swift_task_alloc();
  v11 = sub_227D4A058();
  v1[115] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[116] = v12;
  v1[117] = OUTLINED_FUNCTION_121();
  v1[118] = swift_task_alloc();
  v13 = sub_227D4CAB8();
  v1[119] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[120] = v14;
  v1[121] = OUTLINED_FUNCTION_121();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

void sub_227B2A7B0(uint64_t a1)
{
  v140 = v1;
  v2 = sub_227D4A6A8();
  *(v1 + 1072) = v2;
  v136 = v1;
  *(v1 + 1080) = v3;
  v4 = v2;
  v5 = v3;
  v131 = *(v1 + 944);
  v6 = *(v1 + 928);
  v7 = *(v1 + 920);
  v8 = *(v1 + 832);
  v9 = *(v1 + 824);
  v10 = v8[79];
  v11 = v8[80];
  __swift_project_boxed_opaque_existential_1(v8 + 76, v10);
  v12 = (*(v11 + 64))(v4, v5, v10, v11);
  *(v1 + 1360) = v12 & 1;
  sub_227D4AA58();
  v119 = *(v6 + 16);
  v119(v131, v9, v7);
  sub_227D4CE58();
  v13 = sub_227D4CA98();
  v14 = sub_227D4D428();

  log = v13;
  v15 = os_log_type_enabled(v13, v14);
  v132 = *(v1 + 1064);
  v16 = *(v1 + 960);
  v128 = *(v1 + 952);
  v118 = v5;
  v116 = v4;
  if (v15)
  {
    v124 = v12;
    v17 = OUTLINED_FUNCTION_12_1();
    v138 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_227B1B1A4(v4, v5, &v138);
    *(v17 + 12) = 2080;
    sub_227D4A048();
    v18 = OUTLINED_FUNCTION_81_0();
    v19(v18);
    v20 = OUTLINED_FUNCTION_174_0();
    v23 = sub_227B1B1A4(v20, v21, v22);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_227B0D000, log, v14, "Refreshing challenge definitions for %s with preference: %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_2();
    v12 = v124;
    OUTLINED_FUNCTION_5_2();
  }

  else
  {

    v24 = OUTLINED_FUNCTION_81_0();
    v25(v24);
  }

  v26 = *(v16 + 8);
  v26(v132, v128);
  v117 = v26;
  *(v1 + 1088) = v26;
  v27 = *(v1 + 816);
  type metadata accessor for ChallengeService(0);
  v28 = sub_227B94B24(v27, v12 & 1);
  *(v1 + 1096) = v28;
  v29 = MEMORY[0x277D84FA0];
  v137 = MEMORY[0x277D84FA0];
  v30 = *(v28 + 16);
  if (v30)
  {
    v31 = v28;
    v32 = 0;
    v33 = v136[112];
    v133 = v28 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v126 = *MEMORY[0x277D0D408];
    v34 = (v33 + 8);
    v121 = (v136[109] + 32);
    v122 = (v33 + 96);
    v123 = v28;
    v125 = (v33 + 8);
    v120 = v33;
    while (v32 < *(v31 + 16))
    {
      v35 = v136[114];
      v36 = v136[113];
      v37 = v136[111];
      v38 = *(v33 + 16);
      v38(v35, v133 + *(v33 + 72) * v32, v37);
      v38(v36, v35, v37);
      v39 = OUTLINED_FUNCTION_91_0();
      if (v40(v39) == v126)
      {
        v41 = v136[113];
        v42 = v136[110];
        v43 = v136[108];
        (*v122)(v41, v136[111]);
        (*v121)(v42, v41, v43);
        v44 = sub_227D4A848();
        sub_227B274CC(&v138, v44, v45);

        v46 = OUTLINED_FUNCTION_113();
        v47(v46);
        v34 = v125;
        v48 = OUTLINED_FUNCTION_173();
        v49(v48);
        v31 = v123;
        v33 = v120;
      }

      else
      {
        v50 = *v34;
        (*v34)(v136[114], v136[111]);
        v51 = OUTLINED_FUNCTION_147();
        v50(v51);
      }

      if (v30 == ++v32)
      {
        v29 = v137;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v136[138] = v29;
    v119(v136[117], v136[103], v136[115]);
    v52 = OUTLINED_FUNCTION_147();
    v54 = v53(v52);
    if (v54 == *MEMORY[0x277D0D038])
    {
      sub_227D4AA58();
      sub_227D4CE58();
      v55 = sub_227D4CA98();
      v56 = sub_227D4D428();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v136[119];
      if (v57)
      {
        v59 = OUTLINED_FUNCTION_129();
        v60 = OUTLINED_FUNCTION_14_5();
        v138 = v60;
        *v59 = 136315138;
        *(v59 + 4) = sub_227B1B1A4(v116, v118, &v138);
        _os_log_impl(&dword_227B0D000, v55, v56, "Always refresh preference - bypassing cache for challenge definitions: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_5_2();
      }

      v61 = OUTLINED_FUNCTION_179();
      v117(v61);
      sub_227D4AA58();
      sub_227D4CE58();
      sub_227D4CE58();
      v62 = sub_227D4CA98();
      sub_227D4D458();
      OUTLINED_FUNCTION_127();

      if (OUTLINED_FUNCTION_107())
      {
        v63 = v136[136];
        v64 = v136[135];
        v65 = v136[134];
        v134 = v136[125];
        v66 = v136[119];
        OUTLINED_FUNCTION_12_1();
        v138 = OUTLINED_FUNCTION_95_0();
        *v58 = 136315394;
        v67 = sub_227B1B1A4(v65, v64, &v138);
        OUTLINED_FUNCTION_125(v67);
        v68 = sub_227D4D348();
        sub_227B1B1A4(v68, v69, &v138);
        OUTLINED_FUNCTION_191();
        *(v58 + 14) = v64;
        OUTLINED_FUNCTION_24_0();
        _os_log_impl(v70, v71, v72, v73, v74, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_56_0();

        v63(v134, v66);
      }

      else
      {
        v58 = v136[136];

        v78 = OUTLINED_FUNCTION_30_1();
        (v58)(v78);
      }

      sub_227CFC560(v136[107]);
      OUTLINED_FUNCTION_60_0(v82);
      sub_227D4CE58();
      sub_227D4CE58();
      v83 = sub_227D4CA98();
      sub_227D4D428();
      OUTLINED_FUNCTION_127();

      OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_140();
      if (v84)
      {
        v85 = v136[135];
        v86 = v136[134];
        v87 = v136[124];
        v135 = v136[119];
        v127 = v136[111];
        v129 = v58;
        v88 = OUTLINED_FUNCTION_14_5();
        v138 = swift_slowAlloc();
        *v88 = 136315650;
        v89 = sub_227B1B1A4(v86, v85, &v138);
        OUTLINED_FUNCTION_22_5(v89);
        v92 = v91 & 0xFFFF00000000FFFFLL | 0x297665640000;
        if (v90)
        {
          v93 = 0;
        }

        else
        {
          v93 = v92;
        }

        if (v90)
        {
          v94 = 0xE000000000000000;
        }

        else
        {
          v94 = 0xE600000000000000;
        }

        sub_227B1B1A4(v93, v94, &v138);
        OUTLINED_FUNCTION_165_0();
        v95 = OUTLINED_FUNCTION_59_2();
        MEMORY[0x22AAA5F20](v95, v127);
        OUTLINED_FUNCTION_99_0();
        v96 = OUTLINED_FUNCTION_94();
        sub_227B1B1A4(v96, v97, v98);
        OUTLINED_FUNCTION_159();
        *(v88 + 24) = v94;
        OUTLINED_FUNCTION_24_0();
        _os_log_impl(v99, v100, v101, v102, v103, 0x20u);
        OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_56_0();

        v129(v87, v135);
      }

      else
      {

        v105 = OUTLINED_FUNCTION_30_1();
        (v58)(v105);
      }

      OUTLINED_FUNCTION_13_0((v136[104] + 104));
      OUTLINED_FUNCTION_36_0();
      v106 = swift_task_alloc();
      v107 = OUTLINED_FUNCTION_151(v106);
      *v107 = v108;
      OUTLINED_FUNCTION_1_5(v107);
      OUTLINED_FUNCTION_136();

      __asm { BRAA            X5, X16 }
    }

    if (v54 == *MEMORY[0x277D0D040])
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_124();
      *(v76 + 1112) = v75;
      *v75 = v77;
      v75[1] = sub_227B2B4D4;
    }

    else
    {
      if (v54 != *MEMORY[0x277D0D048])
      {
        v138 = 0;
        v139 = 0xE000000000000000;
        sub_227D4D668();
        v104 = v139;
        v136[98] = v138;
        v136[99] = v104;
        MEMORY[0x22AAA5DA0](0xD000000000000014, 0x8000000227D752D0);
        sub_227D4D7B8();
        MEMORY[0x22AAA5DA0](0xD000000000000026, 0x8000000227D752F0);
        sub_227D4D7F8();
        OUTLINED_FUNCTION_136();
        return;
      }

      if (*(v29 + 16))
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_124();
        *(v80 + 1184) = v79;
        *v79 = v81;
        v79[1] = sub_227B2D148;
      }

      else
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_124();
        *(v112 + 1160) = v111;
        *v111 = v113;
        v111[1] = sub_227B2C8D4;
      }
    }

    OUTLINED_FUNCTION_136();

    sub_227B2F654(v114);
  }
}

uint64_t sub_227B2B4D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B2B5B8()
{
  OUTLINED_FUNCTION_119();
  v1 = v0[104];
  __swift_project_boxed_opaque_existential_1(v0 + 88, v0[91]);
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_32();
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[140] = v4;
  *v4 = v0;
  v4[1] = sub_227B2B6F0;
  v5 = OUTLINED_FUNCTION_6_1();
  v6.n128_u64[0] = v2;

  return v8(v5, v6);
}

uint64_t sub_227B2B6F0()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 1128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_117_1();
  }

  else
  {
    *(v5 + 1361) = v3 & 1;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B2BE94()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B2BF78()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((v0 + 744));
  OUTLINED_FUNCTION_32();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 1144) = v2;
  *v2 = v0;
  v2[1] = sub_227B2C084;
  v3 = OUTLINED_FUNCTION_4_4();

  return v5(v3);
}

uint64_t sub_227B2C084()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 1152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_117_1();
  }

  else
  {
    *(v5 + 1362) = v3 & 1;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B2C8D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B2C9B8()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((v0 + 664));
  OUTLINED_FUNCTION_32();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 1168) = v2;
  *v2 = v0;
  v2[1] = sub_227B2CAC8;
  v3 = OUTLINED_FUNCTION_6_1();

  return v5(v3);
}

uint64_t sub_227B2CAC8()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 1176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_117_1();
  }

  else
  {
    *(v5 + 1363) = v3 & 1;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B2D148()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B2D22C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((v0 + 464));
  OUTLINED_FUNCTION_32();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 1192) = v2;
  *v2 = v0;
  v2[1] = sub_227B2D334;
  v3 = OUTLINED_FUNCTION_4_4();

  return v5(v3);
}

uint64_t sub_227B2D334()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 1200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_117_1();
  }

  else
  {
    *(v5 + 1364) = v3 & 1;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B2D9B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  v3[152] = v5;
  v3[153] = v6;
  v3[154] = v7;
  v3[155] = v8;
  v3[156] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B2DAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_108();
  a30 = v33;
  a31 = v34;
  OUTLINED_FUNCTION_150_0();
  a29 = v31;
  v134 = v31[153];
  if (v134)
  {
    v35 = v31[155];
    v36 = v31[154];
    v37 = *(v35 + 16);
    if (v37)
    {
      a18 = MEMORY[0x277D84F90];
      result = sub_227B3CA0C(0, v37, 0);
      v39 = 0;
      v40 = a18;
      v129 = v31[156];
      v41 = 32;
      while (1)
      {
        if (v39 >= *(v35 + 16))
        {
          __break(1u);
          return result;
        }

        v137 = v41;
        v141 = v39;
        memcpy(v31 + 2, (v35 + v41), 0xE0uLL);
        sub_227B3CA2C((v31 + 2), (v31 + 30));
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_171();
        if (v43)
        {
          goto LABEL_9;
        }

        v44 = sub_227CFC854(v42);
        v46 = v45;
        v47 = v36[2];
        sub_227D4CE58();
        if (v47)
        {
          v48 = OUTLINED_FUNCTION_114();
          sub_227B2664C(v48, v49);
          if (v50)
          {
            break;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E8, &qword_227D4E648);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_227D4E520;
        *(v52 + 32) = v44;
        *(v52 + 40) = v46;
        sub_227D4CE58();
        OUTLINED_FUNCTION_120();
        nullsub_1();
        *(v52 + 48) = v53;
        *(v52 + 56) = v54;
        *(v52 + 64) = v55;
        *(v52 + 72) = v56;
        v57 = sub_227D4CE28();
        swift_isUniquelyReferenced_nonNull_native();
        a19 = v36;
        OUTLINED_FUNCTION_25_1();
        sub_227B3D114(v57, v58, 0, v59, &a19);
        if (v129)
        {

          OUTLINED_FUNCTION_55_0();
        }

        v129 = 0;
        v51 = a19;
LABEL_12:
        v60 = v31[152];
        v31[66] = &unk_283B37A80;
        v31[67] = &off_283B37918;
        v61 = swift_allocObject();
        v31[63] = v61;
        v61[2] = v51;
        v61[3] = v60;
        v61[4] = v134;
        v61[5] = v36;
        v61[6] = v35;
        memcpy(v61 + 7, v31 + 2, 0xE0uLL);
        a18 = v40;
        v63 = *(v40 + 16);
        v62 = *(v40 + 24);
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        v32 = v35;
        if (v63 >= v62 >> 1)
        {
          sub_227B3CA0C((v62 > 1), v63 + 1, 1);
          v65 = v31[66];
          v64 = v31[67];
        }

        else
        {
          v64 = &off_283B37918;
          v65 = &unk_283B37A80;
        }

        v66 = __swift_mutable_project_boxed_opaque_existential_1((v31 + 63), v65);
        v67 = *(v65 - 1);
        v68 = OUTLINED_FUNCTION_30();
        (*(v67 + 16))(v68, v66, v65);
        sub_227B3D75C(v63, v68, &a18, v65, v64);
        __swift_destroy_boxed_opaque_existential_0(v31 + 63);

        v40 = a18;
        if (v37 - 1 == v141)
        {

          goto LABEL_21;
        }

        v41 = v137 + 224;
        v39 = v141 + 1;
        v35 = v32;
      }

LABEL_9:
      sub_227D4CE58();
      v51 = v36;
      goto LABEL_12;
    }

    v40 = MEMORY[0x277D84F90];
LABEL_21:
    v31[157] = v40;
    v31[100] = v40;
    v78 = *(v40 + 16);
    v79 = MEMORY[0x277D84F90];
    if (v78)
    {
      a19 = MEMORY[0x277D84F90];
      sub_227D4CE58();
      v80 = OUTLINED_FUNCTION_130();
      sub_227B3CA88(v80, v81, v82);
      v79 = a19;
      v83 = v40 + 32;
      do
      {
        sub_227B11EE8(v83, (v31 + 68));
        __swift_project_boxed_opaque_existential_1(v31 + 68, v31[71]);
        v84 = OUTLINED_FUNCTION_173();
        v32 = v85(v84);
        v87 = v86;
        __swift_destroy_boxed_opaque_existential_0(v31 + 68);
        a19 = v79;
        v89 = v79[2];
        v88 = v79[3];
        if (v89 >= v88 >> 1)
        {
          sub_227B3CA88((v88 > 1), v89 + 1, 1);
          v79 = a19;
        }

        v79[2] = v89 + 1;
        v90 = &v79[2 * v89];
        v90[4] = v32;
        v90[5] = v87;
        v83 += 40;
        --v78;
      }

      while (v78);
    }

    v91 = v31[138];
    v92 = sub_227B30834(v79);
    v93 = sub_227B308F4(v92, v91);
    v31[158] = v93;

    if (*(v93 + 16))
    {
      sub_227D4AA58();
      sub_227D4CE58();
      sub_227D4CE58();
      v94 = sub_227D4CA98();
      sub_227D4D428();

      v95 = OUTLINED_FUNCTION_153_0();
      v96 = v31[136];
      if (v95)
      {
        v97 = v31[134];
        v132 = v31[135];
        v139 = v31[119];
        v143 = v31[122];
        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_76_0();
        OUTLINED_FUNCTION_144();
        *v32 = 136315394;
        v98 = sub_227D4D348();
        v100 = sub_227B1B1A4(v98, v99, &a19);

        *(v32 + 4) = v100;
        *(v32 + 12) = 2080;
        *(v32 + 14) = sub_227B1B1A4(v97, v132, &a19);
        OUTLINED_FUNCTION_31();
        _os_log_impl(v101, v102, v103, v104, v105, 0x16u);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_41_1();

        v106 = v139;
        v107 = v143;
      }

      else
      {

        v107 = OUTLINED_FUNCTION_91_0();
      }

      v96(v107, v106);
      v123 = swift_task_alloc();
      v31[159] = v123;
      *v123 = v31;
      v123[1] = sub_227B2E438;
      OUTLINED_FUNCTION_55_0();

      return sub_227B2FF58();
    }

    else
    {

      v31[162] = v31[100];
      v108 = swift_task_alloc();
      v31[163] = v108;
      *v108 = v31;
      v108[1] = sub_227B2E630;
      OUTLINED_FUNCTION_53(v31[107]);
      OUTLINED_FUNCTION_55_0();

      return sub_227B30948();
    }
  }

  else
  {

    sub_227D4AA58();
    sub_227D4CE58();
    v69 = sub_227D4CA98();
    sub_227D4D428();
    OUTLINED_FUNCTION_193_0();
    v70 = os_log_type_enabled(v69, v32);
    v71 = v31[136];
    if (v70)
    {
      v72 = v31[134];
      v131 = v31[119];
      v135 = v31[123];
      v73 = v31[106];
      v138 = v31[105];
      v142 = v31[107];
      OUTLINED_FUNCTION_129();
      v74 = OUTLINED_FUNCTION_98();
      a19 = v74;
      *v71 = 136315138;
      v75 = OUTLINED_FUNCTION_114();
      sub_227B1B1A4(v75, v76, v77);
      OUTLINED_FUNCTION_191();
      *(v71 + 4) = v72;
      _os_log_impl(&dword_227B0D000, v69, v32, "No challenge definitions found in MAPI for bundleID: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_5_2();

      (v71)(v135, v131);
      (*(v73 + 8))(v142, v138);
    }

    else
    {

      v110 = OUTLINED_FUNCTION_9_2();
      (v71)(v110);
      v111 = OUTLINED_FUNCTION_148();
      v112(v111);
    }

    OUTLINED_FUNCTION_2_6();
    v126 = v114;
    v127 = v113;
    *&a11 = v31[121];
    v128 = v31[118];
    v130 = v31[117];
    v133 = v31[114];
    v136 = v31[113];
    v140 = v31[110];
    v144 = v31[107];

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_55_0();

    return v116(v115, v116, v117, v118, v119, v120, v121, v122, v126, v127, a11, *(&a11 + 1), v128, v130, v133, v136, v140, v144, a18, a19, a20, a21, a22, a23);
  }
}

uint64_t sub_227B2E438()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 1280) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 1288) = v3;
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B2E584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_6();
  sub_227B3AF90(v24[161]);
  v24[162] = v24[100];
  v25 = swift_task_alloc();
  v24[163] = v25;
  *v25 = v24;
  v25[1] = sub_227B2E630;
  OUTLINED_FUNCTION_53(v24[107]);

  return sub_227B30948();
}

uint64_t sub_227B2E630()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 1312) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_16();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v3 + 1320) = v10;
    *v10 = v11;
    v10[1] = sub_227B2E794;

    return sub_227B2F654(v3 + 584);
  }
}

uint64_t sub_227B2E794()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B2E878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[162];
  v16 = v14[77];
  __swift_project_boxed_opaque_existential_1(v14 + 73, v14[76]);
  v17 = *(v15 + 16);
  v18 = v14[162];
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    sub_227B3CA88(0, v17, 0);
    v19 = v41;
    v20 = v18 + 32;
    do
    {
      sub_227B11EE8(v20, (v14 + 78));
      v21 = v14[81];
      v22 = v14[82];
      __swift_project_boxed_opaque_existential_1(v14 + 78, v21);
      v23 = (*(v22 + 8))(v21, v22);
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v14 + 78);
      a11 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_227B3CA88((v26 > 1), v27 + 1, 1);
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 += 40;
      --v17;
    }

    while (v17);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v14[166] = v19;
  OUTLINED_FUNCTION_36_0();
  v40 = v29 + *v29;
  v30 = swift_task_alloc();
  v14[167] = v30;
  *v30 = v14;
  v30[1] = sub_227B2EAA0;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_16_0();

  return v36(v31, v32, v33, v34, v35, v36, v37, v38, v16 + 48, v40, a11, a12, a13, a14);
}

uint64_t sub_227B2EAA0()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v2 + 1344) = v6;
  *(v2 + 1352) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B2EBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  __swift_destroy_boxed_opaque_existential_0(v22 + 73);
  sub_227D4AA58();
  sub_227D4CE58();
  v25 = sub_227D4CA98();
  sub_227D4D428();
  OUTLINED_FUNCTION_193_0();
  if (os_log_type_enabled(v25, v23))
  {
    v26 = v22[168];
    v27 = v22[134];
    v51 = v22[119];
    v53 = v22[121];
    v57 = v22[107];
    v59 = v22[136];
    v28 = v22[106];
    v55 = v22[105];
    OUTLINED_FUNCTION_12_1();
    a19 = OUTLINED_FUNCTION_98();
    *v24 = 134218242;
    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    v29 = OUTLINED_FUNCTION_114();
    sub_227B1B1A4(v29, v30, v31);
    OUTLINED_FUNCTION_191();
    *(v24 + 14) = v27;
    _os_log_impl(&dword_227B0D000, v25, v23, "Archived %ld challenge definitions for bundleID: %s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(a19);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();

    v59(v53, v51);
    (*(v28 + 8))(v57, v55);
  }

  else
  {
    v32 = v22[136];

    v33 = OUTLINED_FUNCTION_91_0();
    v32(v33);
    v34 = OUTLINED_FUNCTION_141();
    v35(v34);
  }

  OUTLINED_FUNCTION_2_6();
  v47 = v37;
  v48 = v36;
  v49 = v22[121];
  v50 = v22[118];
  v52 = v22[117];
  v54 = v22[114];
  v56 = v22[113];
  v58 = v22[110];
  v60 = v22[107];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_65();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, v48, v49, v50, v52, v54, v56, v58, v60, a19, a20, a21, a22);
}

uint64_t sub_227B2EE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  __swift_destroy_boxed_opaque_existential_0((v22 + 704));
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2EF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  __swift_destroy_boxed_opaque_existential_0((v22 + 744));
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  __swift_destroy_boxed_opaque_existential_0((v22 + 664));
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  __swift_destroy_boxed_opaque_existential_0((v22 + 464));
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v22 = OUTLINED_FUNCTION_43_1();
  v23(v22);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v22 = OUTLINED_FUNCTION_43_1();
  v23(v22);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v22 = OUTLINED_FUNCTION_43_1();
  v23(v22);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v23 = OUTLINED_FUNCTION_43_1();
  v24(v23);
  __swift_destroy_boxed_opaque_existential_0((v22 + 584));
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_65();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B2F654(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_16();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B2F67C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((*(v0 + 24) + 144));
  OUTLINED_FUNCTION_36_0();
  v5 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 32) = v2;
  *v2 = v3;
  v2[1] = sub_227B2F79C;
  OUTLINED_FUNCTION_181();

  return v5();
}

uint64_t sub_227B2F79C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_18();

  return v3();
}

void *sub_227B2F87C@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, const void *a6@<X6>, uint64_t *a7@<X8>)
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_171();
  if (v14)
  {
    goto LABEL_7;
  }

  v37 = a2;
  v38 = a3;
  v39 = a5;
  v40 = a6;
  v15 = sub_227CFC854(v13);
  v17 = v16;
  sub_227D4CE58();
  OUTLINED_FUNCTION_149();
  v21 = sub_227B39AC4(v18, v19, v20);
  if (v22 != 1)
  {
    v32 = v21;
    v33 = v22;
    v34 = v23;
    v35 = v24;

    sub_227B3D88C(v32, v33, v34, v35);
    a5 = v39;
    a6 = v40;
    a2 = v37;
    a3 = v38;
LABEL_7:

    sub_227D4CE58();
    v31 = a4;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E8, &qword_227D4E648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4E520;
  *(inited + 32) = v15;
  *(inited + 40) = v17;
  sub_227D4CE58();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_120();
  nullsub_1();
  *(inited + 48) = v26;
  *(inited + 56) = v27;
  *(inited + 64) = v28;
  *(inited + 72) = v29;
  v30 = sub_227D4CE28();
  v31 = sub_227B39B40(v30, a4);

  a2 = v37;
LABEL_8:
  *a7 = v31;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  return memcpy(a7 + 5, a6, 0xE0uLL);
}

uint64_t sub_227B2FA20(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v37 = sub_227D4A508();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v45 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v44 = v3;
    v48 = MEMORY[0x277D84F90];
    sub_227B3CAA8(0, v7, 0);
    v43 = v48;
    result = sub_227B3E1D8(a3);
    v10 = result;
    v12 = v11;
    v13 = 0;
    v42 = a3 + 56;
    v35 = v7;
    v36 = v5 + 32;
    v34 = a3 + 64;
    v14 = a3;
    v40 = a3;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v14 + 32))
      {
        v15 = v10 >> 6;
        if ((*(v42 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v14 + 36) != v9)
        {
          goto LABEL_29;
        }

        v41 = v13;
        v16 = v9;
        v17 = v5;
        v18 = (*(v14 + 48) + 16 * v10);
        v19 = v18[1];
        v47[0] = *v18;
        v47[1] = v19;
        sub_227D4CE58();
        v20 = v44;
        v38(v47, &v46);
        if (v20)
        {
        }

        v21 = v43;
        v48 = v43;
        v23 = *(v43 + 16);
        v22 = *(v43 + 24);
        v44 = 0;
        if (v23 >= v22 >> 1)
        {
          sub_227B3CAA8((v22 > 1), v23 + 1, 1);
          v21 = v48;
        }

        *(v21 + 16) = v23 + 1;
        v5 = v17;
        v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v43 = v21;
        result = (*(v17 + 32))(v21 + v24 + *(v17 + 72) * v23, v45, v37);
        if (v12)
        {
          goto LABEL_33;
        }

        v14 = v40;
        v25 = 1 << *(v40 + 32);
        if (v10 >= v25)
        {
          goto LABEL_30;
        }

        v26 = *(v42 + 8 * v15);
        if ((v26 & (1 << v10)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v40 + 36) != v16)
        {
          goto LABEL_32;
        }

        v27 = v26 & (-2 << (v10 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v15 << 6;
          v29 = v15 + 1;
          v30 = (v34 + 8 * v15);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_227B3E218(v10, v16, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_20;
            }
          }

          result = sub_227B3E218(v10, v16, 0);
LABEL_20:
          v14 = v40;
        }

        v13 = v41 + 1;
        if (v41 + 1 == v35)
        {
          return v43;
        }

        v12 = 0;
        v9 = *(v14 + 36);
        v10 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_227B2FD80(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = v16 - v7;
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    sub_227B3CAC8(0, v9, 0);
    v10 = v22;
    v16[1] = v6 + 32;
    for (i = (a3 + 40); ; i += 2)
    {
      v12 = *i;
      v21[0] = *(i - 1);
      v21[1] = v12;
      sub_227D4CE58();
      v18(v21, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v22 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_227B3CAC8((v13 > 1), v14 + 1, 1);
        v10 = v22;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t sub_227B2FF58()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 1400) = v0;
  *(v1 + 1488) = v2;
  *(v1 + 1392) = v3;
  *(v1 + 1384) = v4;
  *(v1 + 1376) = v5;
  v6 = sub_227D4CAB8();
  *(v1 + 1408) = v6;
  OUTLINED_FUNCTION_10_0(v6);
  *(v1 + 1416) = v7;
  *(v1 + 1424) = OUTLINED_FUNCTION_30();
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B3000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v16 = *(v14 + 1400);
  v17 = *(v14 + 1376);
  v18 = *(v17 + 32);
  *(v14 + 1489) = v18;
  v19 = -1;
  v20 = -1 << v18;
  if (-(-1 << v18) < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v17 + 56);
  v22 = MEMORY[0x277D84F90];
  *(v14 + 1432) = MEMORY[0x277D84F90];
  v23 = sub_227D4CE58();
  if (v21)
  {
    v24 = 0;
LABEL_8:
    *(v14 + 1448) = v24;
    *(v14 + 1440) = v21;
    OUTLINED_FUNCTION_102(v24);
    __swift_project_boxed_opaque_existential_1((v16 + 104), *(v16 + 128));
    OUTLINED_FUNCTION_156_0();
    v58 = v15 + *v15;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v14 + 1472) = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_45_0(v26);
    OUTLINED_FUNCTION_16_0();

    return v36(v28, v29, v30, v31, v32, v33, v34, v35, v58, a10, a11, a12, a13, a14);
  }

  else
  {
    v25 = 0;
    while (((63 - v20) >> 6) - 1 != v25)
    {
      v24 = v25 + 1;
      v21 = *(v23 + 8 * v25++ + 64);
      if (v21)
      {
        goto LABEL_8;
      }
    }

    if (*(v22 + 16))
    {
      a11 = v22;
      v39 = OUTLINED_FUNCTION_130();
      sub_227B3CA0C(v39, v40, v41);
      do
      {
        OUTLINED_FUNCTION_158_0();
        sub_227D4CE58();
        sub_227B3E28C(v14 + 256, v14 + 1120);
        v42 = OUTLINED_FUNCTION_82();
        sub_227B31CD4(v42, v43, v44, v45);
        OUTLINED_FUNCTION_172_1();
        if (v47)
        {
          OUTLINED_FUNCTION_154_0(v46);
        }

        v48 = OUTLINED_FUNCTION_157_0();
        OUTLINED_FUNCTION_188(v48);
        OUTLINED_FUNCTION_198();
      }

      while (!v49);
    }

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227B30280()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 1480) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B3038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_28_1();
  a20 = v22;
  memcpy((v22 + 688), (v22 + 904), 0xD8uLL);
  if (sub_227B3E274(v22 + 688) != 1)
  {
    memcpy((v22 + 472), (v22 + 688), 0xD8uLL);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v22 + 1432);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  sub_227D4AA58();
  sub_227D4CE58();
  sub_227D4CE58();
  v27 = sub_227D4CA98();
  sub_227D4D428();
  OUTLINED_FUNCTION_127();

  v28 = OUTLINED_FUNCTION_107();
  v24 = *(v22 + 1464);
  if (v28)
  {
    v29 = *(v22 + 1456);
    v30 = *(v22 + 1416);
    a9 = *(v22 + 1408);
    a10 = *(v22 + 1424);
    v31 = *(v22 + 1392);
    v32 = *(v22 + 1384);
    OUTLINED_FUNCTION_12_1();
    a11 = OUTLINED_FUNCTION_95_0();
    *v23 = 136315394;
    v33 = sub_227B1B1A4(v32, v31, &a11);
    OUTLINED_FUNCTION_125(v33);
    v34 = sub_227B1B1A4(v29, v24, &a11);

    *(v23 + 14) = v34;
    OUTLINED_FUNCTION_24_0();
    _os_log_impl(v35, v36, v37, v38, v39, 0x16u);
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_56_0();

    (*(v30 + 8))(a10, a9);
  }

  else
  {

    v45 = OUTLINED_FUNCTION_9_2();
    v46(v45);
  }

  OUTLINED_FUNCTION_170();
  if (v44)
  {
LABEL_15:
    *(v22 + 1448) = v43;
    *(v22 + 1440) = v44;
    OUTLINED_FUNCTION_102(v43);
    __swift_project_boxed_opaque_existential_1((v48 + 104), *(v48 + 128));
    OUTLINED_FUNCTION_156_0();
    v85 = v24 + *v24;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v22 + 1472) = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_45_0(v49);
    OUTLINED_FUNCTION_16_0();

    return v59(v51, v52, v53, v54, v55, v56, v57, v58, v85, a10, a11, a12, a13, a14);
  }

  else
  {
    while (1)
    {
      while (1)
      {
        v47 = v43 + 1;
        if (!__OFADD__(v43, 1))
        {
          break;
        }

        __break(1u);
LABEL_28:
        v82 = OUTLINED_FUNCTION_21();
        v27 = sub_227B39FD4(v82, v83, v84, v27);
LABEL_5:
        v42 = v27[2];
        v41 = v27[3];
        if (v42 >= v41 >> 1)
        {
          v27 = sub_227B39FD4((v41 > 1), v42 + 1, 1, v27);
        }

        v27[2] = v42 + 1;
        memcpy(&v27[27 * v42 + 4], (v22 + 472), 0xD8uLL);
        OUTLINED_FUNCTION_170();
        *(v22 + 1432) = v27;
        if (v44)
        {
          goto LABEL_15;
        }
      }

      if (v47 >= (((1 << *(v22 + 1489)) + 63) >> 6))
      {
        break;
      }

      v44 = *(*(v22 + 1376) + 8 * v47 + 56);
      ++v43;
      if (v44)
      {
        v43 = v47;
        goto LABEL_15;
      }
    }

    v62 = *(v22 + 1432);

    if (*(v62 + 16))
    {
      a11 = MEMORY[0x277D84F90];
      v63 = OUTLINED_FUNCTION_130();
      sub_227B3CA0C(v63, v64, v65);
      do
      {
        OUTLINED_FUNCTION_158_0();
        sub_227D4CE58();
        sub_227B3E28C(v22 + 256, v22 + 1120);
        v66 = OUTLINED_FUNCTION_82();
        sub_227B31CD4(v66, v67, v68, v69);
        OUTLINED_FUNCTION_172_1();
        if (v71)
        {
          OUTLINED_FUNCTION_154_0(v70);
        }

        v72 = OUTLINED_FUNCTION_157_0();
        OUTLINED_FUNCTION_188(v72);
        OUTLINED_FUNCTION_198();
      }

      while (!v73);
    }

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v76(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227B307CC()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B30834(uint64_t a1)
{
  result = MEMORY[0x22AAA60B0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;
    sub_227D4CE58();
    sub_227B274CC(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_227B308F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_227B3A98C(a1);
    return a2;
  }

  else
  {

    return sub_227B3AAB8(a1, a2);
  }
}

uint64_t sub_227B30948()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 648) = v0;
  *(v1 + 640) = v2;
  *(v1 + 865) = v3;
  *(v1 + 632) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  *(v1 + 656) = v5;
  OUTLINED_FUNCTION_10_0(v5);
  *(v1 + 664) = v6;
  *(v1 + 672) = OUTLINED_FUNCTION_121();
  *(v1 + 680) = swift_task_alloc();
  v7 = sub_227D4CAB8();
  *(v1 + 688) = v7;
  OUTLINED_FUNCTION_10_0(v7);
  *(v1 + 696) = v8;
  *(v1 + 704) = OUTLINED_FUNCTION_121();
  *(v1 + 712) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  *(v1 + 720) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v1 + 728) = v10;
  *(v1 + 736) = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B30AC0()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0[80] + 16);
  v0[93] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[94] = v2;
    *v2 = v0;
    v2[1] = sub_227B30BCC;
    OUTLINED_FUNCTION_53(v0[79]);

    return sub_227CFAEA0();
  }

  else
  {
    OUTLINED_FUNCTION_155_0();

    OUTLINED_FUNCTION_15_0();

    return v4();
  }
}

uint64_t sub_227B30BCC()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 760) = v0;

  if (!v0)
  {
    *(v5 + 768) = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_227B30CD8()
{
  v0[97] = v0[96];
  v0[98] = 0;
  if (v0[93])
  {
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_111();
    sub_227B11EE8(v2 + 32, (v0 + 54));
    v3 = v0[58];
    OUTLINED_FUNCTION_189(v0 + 54);
    v4 = OUTLINED_FUNCTION_38_0();
    v6 = v5(v4);
    if (v6)
    {
      OUTLINED_FUNCTION_27_1();
      v7 = (v6 + 56);
      v9 = v8 + 1;
      while (--v9)
      {
        v11 = *(v7 - 3);
        v10 = *(v7 - 2);
        if (*(v7 - 1) != v1 || *v7 != v3)
        {
          v7 += 4;
          OUTLINED_FUNCTION_145();
          if ((sub_227D4DA78() & 1) == 0)
          {
            continue;
          }
        }

        v13 = v0[97];
        sub_227D4CE58();

        if (!v13)
        {

          v16 = 0;
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_122();
        while (--v9)
        {
          v14 = v0[97];
          v21 = v14[4];
          v15 = v14[6] == v11 && v14[7] == v10;
          if (v15 || (OUTLINED_FUNCTION_66_0() & 1) != 0)
          {
            sub_227D4CE58();
            sub_227D4CE58();
            sub_227D4CE58();

            v16 = v21;
            goto LABEL_23;
          }
        }

        break;
      }

      OUTLINED_FUNCTION_80();
    }

    else
    {
      OUTLINED_FUNCTION_80();
    }

LABEL_23:
    OUTLINED_FUNCTION_75_0(v16);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[105] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_17_3(v17);
    OUTLINED_FUNCTION_135_0();

    sub_227B2F654(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_227B30EA0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B30F84()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((v0 + 472));
  OUTLINED_FUNCTION_32();
  v5 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 848) = v2;
  *v2 = v3;
  v2[1] = sub_227B31094;
  OUTLINED_FUNCTION_181();

  return v5();
}

uint64_t sub_227B31094()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 856) = v0;

  v5 = *(v2 + 832);
  v6 = *(v2 + 824);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_132();
  sub_227B3E224(v7, v8, v9, v10, v6, v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_135_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B31248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = *(v18 + 856);
  v20 = *(v18 + 648);
  __swift_destroy_boxed_opaque_existential_0((v18 + 472));
  sub_227B11EE8(v20 + 608, v18 + 512);
  v21 = *(v18 + 536);
  v22 = *(v18 + 544);
  v94 = __swift_project_boxed_opaque_existential_1((v18 + 512), v21);
  *(v18 + 864) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_227D4E520;
  v25 = *(v18 + 456);
  v24 = *(v18 + 464);
  __swift_project_boxed_opaque_existential_1((v18 + 432), v25);
  (*(v24 + 16))(v25, v24);
  sub_227D4CE58();
  sub_227B3DC34(v18 + 200);
  sub_227D4A658();
  if (v19)
  {

    *(v23 + 16) = 0;
  }

  else
  {

    v26 = sub_227D4A5E8();
    v28 = v27;
    v29 = OUTLINED_FUNCTION_147();
    v30(v29);
    *(v23 + 32) = v26;
    *(v23 + 40) = v28;
    (*(v22 + 120))(v18 + 864, v23, v21, v22);
  }

  v31 = *(v18 + 680);
  v32 = *(v18 + 664);
  v33 = *(v18 + 656);
  v34 = *(v18 + 632);
  __swift_destroy_boxed_opaque_existential_0((v18 + 512));
  sub_227D4AA58();
  sub_227B11EE8(v18 + 432, v18 + 552);
  (*(v32 + 16))(v31, v34, v33);
  sub_227B11EE8(v18 + 432, v18 + 592);
  v35 = sub_227D4CA98();
  v36 = sub_227D4D428();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v18 + 712);
  v39 = *(v18 + 696);
  v40 = *(v18 + 688);
  if (v37)
  {
    v41 = OUTLINED_FUNCTION_14_5();
    a11 = swift_slowAlloc();
    *v41 = 136315650;
    v94 = v40;
    a14 = a11;
    HIDWORD(a10) = v36;
    OUTLINED_FUNCTION_189((v18 + 552));
    a12 = v38;
    v42 = OUTLINED_FUNCTION_38_0();
    v43(v42);
    OUTLINED_FUNCTION_175();
    __swift_destroy_boxed_opaque_existential_0((v18 + 552));
    v44 = OUTLINED_FUNCTION_57_0();
    v47 = sub_227B1B1A4(v44, v45, v46);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2080;
    sub_227D4A5E8();
    OUTLINED_FUNCTION_175();
    v48 = OUTLINED_FUNCTION_113();
    v49(v48);
    v50 = OUTLINED_FUNCTION_57_0();
    v53 = sub_227B1B1A4(v50, v51, v52);

    *(v41 + 14) = v53;
    *(v41 + 22) = 2080;
    __swift_project_boxed_opaque_existential_1((v18 + 592), *(v18 + 616));
    v54 = OUTLINED_FUNCTION_38_0();
    v55(v54);
    sub_227D4CE58();
    sub_227B3DC34(v18 + 16);
    __swift_destroy_boxed_opaque_existential_0((v18 + 592));
    v56 = OUTLINED_FUNCTION_57_0();
    v59 = sub_227B1B1A4(v56, v57, v58);

    *(v41 + 24) = v59;
    _os_log_impl(&dword_227B0D000, v35, v36, "Updated challenge definition ID: %s for game: %s, vendorID: %s", v41, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_41_1();

    (*(v39 + 8))(a12, v40);
  }

  else
  {

    v60 = OUTLINED_FUNCTION_113();
    v61(v60);
    v62 = OUTLINED_FUNCTION_57_0();
    v63(v62);
    __swift_destroy_boxed_opaque_existential_0((v18 + 552));
    __swift_destroy_boxed_opaque_existential_0((v18 + 592));
  }

  v64 = *(v18 + 744);
  v65 = *(v18 + 784) + 1;
  result = __swift_destroy_boxed_opaque_existential_0((v18 + 432));
  if (v65 == v64)
  {

    OUTLINED_FUNCTION_155_0();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_90();

    return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, v94, a14, a15, a16, a17, a18);
  }

  else
  {
    v75 = *(v18 + 784) + 1;
    *(v18 + 784) = v75;
    if (v75 == *(v18 + 744))
    {
      __break(1u);
    }

    else
    {
      sub_227B11EE8(*(v18 + 640) + 40 * v75 + 32, v18 + 432);
      v76 = *(v18 + 464);
      OUTLINED_FUNCTION_189((v18 + 432));
      v77 = OUTLINED_FUNCTION_38_0();
      v79 = v78(v77);
      if (v79)
      {
        OUTLINED_FUNCTION_27_1();
        v80 = (v79 + 56);
        v82 = v81 + 1;
        while (--v82)
        {
          v84 = *(v80 - 3);
          v83 = *(v80 - 2);
          if (*(v80 - 1) != v35 || *v80 != v76)
          {
            v80 += 4;
            OUTLINED_FUNCTION_145();
            if ((sub_227D4DA78() & 1) == 0)
            {
              continue;
            }
          }

          v86 = *(v18 + 776);
          sub_227D4CE58();

          if (!v86)
          {

            v89 = 0;
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_122();
          while (--v82)
          {
            v87 = *(v18 + 776);
            v95 = v87[4];
            v88 = v87[6] == v84 && v87[7] == v83;
            if (v88 || (OUTLINED_FUNCTION_66_0() & 1) != 0)
            {
              sub_227D4CE58();
              sub_227D4CE58();
              sub_227D4CE58();

              v89 = v95;
              goto LABEL_33;
            }
          }

          break;
        }

        OUTLINED_FUNCTION_80();
      }

      else
      {
        OUTLINED_FUNCTION_80();
      }

LABEL_33:
      OUTLINED_FUNCTION_75_0(v89);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v18 + 840) = v90;
      *v90 = v91;
      OUTLINED_FUNCTION_17_3(v90);
      OUTLINED_FUNCTION_90();

      return sub_227B2F654(v92);
    }
  }

  return result;
}

uint64_t sub_227B3185C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v28 = *(v27 + 760);
  sub_227D4AA58();
  v29 = OUTLINED_FUNCTION_179();
  v30(v29);
  v31 = v28;
  v32 = sub_227D4CA98();
  v33 = sub_227D4D438();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v27 + 760);
  v36 = *(v27 + 704);
  v37 = *(v27 + 696);
  v38 = *(v27 + 688);
  if (v34)
  {
    v74 = *(v27 + 760);
    v39 = OUTLINED_FUNCTION_12_1();
    swift_slowAlloc();
    v76 = OUTLINED_FUNCTION_98();
    *v39 = 136315394;
    sub_227D4A5E8();
    v40 = OUTLINED_FUNCTION_57_0();
    v41(v40);
    v42 = OUTLINED_FUNCTION_179();
    v45 = sub_227B1B1A4(v42, v43, v44);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2112;
    v46 = v74;
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 14) = v47;
    *v33 = v47;
    _os_log_impl(&dword_227B0D000, v32, v33, "Failed to retrieve leaderboards for game: %s, error: %@", v39, 0x16u);
    sub_227B1DE58(v33, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_5_2();
    __swift_destroy_boxed_opaque_existential_0(v76);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();

    v49 = *(v37 + 8);
    v48 = v37 + 8;
    result = v49(v36, v38);
  }

  else
  {

    v51 = OUTLINED_FUNCTION_57_0();
    v52(v51);
    v48 = v37 + 8;
    v53 = OUTLINED_FUNCTION_179();
    result = v55(v53, v54);
  }

  *(v27 + 776) = 0u;
  if (!*(v27 + 744))
  {
    __break(1u);
    return result;
  }

  sub_227B11EE8(*(v27 + 640) + 32, v27 + 432);
  v56 = *(v27 + 464);
  OUTLINED_FUNCTION_189((v27 + 432));
  v57 = OUTLINED_FUNCTION_38_0();
  v59 = v58(v57);
  if (v59)
  {
    OUTLINED_FUNCTION_27_1();
    v60 = (v59 + 56);
    v62 = v61 + 1;
    do
    {
      if (!--v62)
      {

        OUTLINED_FUNCTION_146();
        goto LABEL_30;
      }

      v64 = *(v60 - 3);
      v63 = *(v60 - 2);
      if (*(v60 - 1) == v32 && *v60 == v56)
      {
        break;
      }

      v60 += 4;
      OUTLINED_FUNCTION_145();
    }

    while ((sub_227D4DA78() & 1) == 0);
    v56 = *(v27 + 776);
    sub_227D4CE58();

    if (v56)
    {
      v75 = v27;
      OUTLINED_FUNCTION_122();
      while (1)
      {
        v60 = (v60 - 1);
        if (!v60)
        {

          OUTLINED_FUNCTION_146();
          v62 = 0;
          goto LABEL_29;
        }

        v66 = *(v75 + 776);
        v67 = v66[4];
        v59 = v66[5];
        v56 = v66[6];
        v32 = v66[7];
        v48 = v66[8];
        v62 = v66[9];
        if (v56 == v64 && v32 == v63)
        {
          break;
        }

        if (OUTLINED_FUNCTION_66_0())
        {
          goto LABEL_28;
        }
      }

      v56 = v64;
LABEL_28:
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();

      v69 = v67;
LABEL_29:
      v27 = v75;
      goto LABEL_30;
    }

    v69 = 0;
    v59 = 0;
  }

  else
  {
    v69 = 0;
    v56 = 0;
  }

  v32 = 0;
  v48 = 0;
  v62 = 0;
LABEL_30:
  *(v27 + 832) = v62;
  *(v27 + 824) = v48;
  *(v27 + 816) = v32;
  *(v27 + 808) = v56;
  *(v27 + 800) = v59;
  *(v27 + 792) = v69;
  *(v27 + 384) = v69;
  *(v27 + 392) = v59;
  *(v27 + 400) = v56;
  *(v27 + 408) = v32;
  *(v27 + 416) = v48;
  *(v27 + 424) = v62;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v27 + 840) = v70;
  *v70 = v71;
  OUTLINED_FUNCTION_17_3(v70);
  OUTLINED_FUNCTION_90();

  return sub_227B2F654(v72);
}

uint64_t sub_227B31C2C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  __swift_destroy_boxed_opaque_existential_0((v0 + 432));

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

void *sub_227B31CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a3[25];
  v86[0] = v5;
  v6 = v5[2];
  v80 = v5;
  if (!v6)
  {
LABEL_19:
    v22 = sub_227D4CE28();
    v82 = v5[2];
    if (!v82)
    {
LABEL_36:

      if (v5[2])
      {
        v11 = v5[7];
        v12 = v5[8];
        v49 = OUTLINED_FUNCTION_58();
        sub_227B3D9FC(v49, v50);
      }

      else
      {
        v11 = 0;
        v12 = 1;
      }

      goto LABEL_45;
    }

    sub_227D4CE58();
    v23 = 0;
    v6 = 0;
    v24 = v5 + 8;
    while (1)
    {
      if (v23 >= v5[2])
      {
        __break(1u);
        goto LABEL_47;
      }

      v84 = v22;
      v25 = *(v24 - 2);
      v27 = *(v24 - 1);
      v26 = *v24;
      swift_bridgeObjectRetain_n();
      sub_227D4CE58();
      v83 = v26;
      sub_227B3D9FC(v27, v26);
      v28 = sub_227D4D5C8();
      if (v28 == 1 << *(v25 + 32))
      {
        break;
      }

      sub_227B3D910(v28, *(v25 + 36), 0, v25);
      v30 = v29;

      if (!v30)
      {
        goto LABEL_25;
      }

LABEL_26:
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_171();
      if (v21)
      {

        sub_227B3DA10(v27, v26);
      }

      else
      {
        v32 = sub_227CFC854(v31);
        v34 = v33;
        v35 = *(v25 + 16);
        sub_227D4CE58();
        if (v35 && (v36 = OUTLINED_FUNCTION_82(), sub_227B2664C(v36, v37), (v38 & 1) != 0))
        {

          sub_227B3DA10(v27, v83);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E8, &qword_227D4E648);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_227D4E520;
          *(inited + 32) = v32;
          *(inited + 40) = v34;
          sub_227D4CE58();
          OUTLINED_FUNCTION_120();
          nullsub_1();
          *(inited + 48) = v40;
          *(inited + 56) = v41;
          *(inited + 64) = v42;
          *(inited + 72) = v43;
          v44 = sub_227D4CE28();
          swift_isUniquelyReferenced_nonNull_native();
          v85 = v25;
          OUTLINED_FUNCTION_25_1();
          sub_227B3D114(v44, v45, 0, v46, &v85);

          sub_227B3DA10(v27, v83);
          v25 = v85;
        }

        v5 = v80;
      }

      ++v23;
      swift_isUniquelyReferenced_nonNull_native();
      v85 = v84;
      OUTLINED_FUNCTION_25_1();
      sub_227B3D114(v25, v47, 0, v48, &v85);
      v22 = v85;
      v24 += 5;
      if (v82 == v23)
      {
        sub_227B3D9A8(v86);
        goto LABEL_36;
      }
    }

LABEL_25:
    sub_227D4CE58();
    goto LABEL_26;
  }

  sub_227D4CE58();
  v7 = 0;
  while (1)
  {
    v8 = 0;
    v9 = &v5[5 * v7 + 4];
    v10 = v9[2];
    v11 = v9[3];
    v12 = v9[4];
    v7 = v7 + 1;
    v13 = 1 << *(v10 + 32);
    v14 = (v13 + 63) >> 6;
    v15 = 64;
    if (v14)
    {
      while (1)
      {
        v16 = *(v10 + v15);
        if (v16)
        {
          break;
        }

        v15 += 8;
        v8 -= 64;
        if (!--v14)
        {
          goto LABEL_17;
        }
      }

      v17 = __clz(__rbit64(v16));
      if (v17 - v13 != v8)
      {
        if (-v8 < 0 || (v18 = v17 - v8, v18 >= v13))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);

          __break(1u);
          return result;
        }

        if (((*(v10 + v15) >> v17) & 1) == 0)
        {
          goto LABEL_48;
        }

        v19 = (*(v10 + 56) + 32 * v18);
        v20 = v19[1];
        if (v20)
        {
          v21 = *v19 == a1 && v20 == a2;
          if (v21 || (sub_227D4DA78() & 1) != 0)
          {
            break;
          }
        }
      }
    }

LABEL_17:
    if (v7 == v6)
    {
      sub_227B3D9A8(v86);
      goto LABEL_19;
    }
  }

  sub_227D4CE58();
  sub_227D4CE58();
  v51 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v51, v52);
  sub_227B3D9A8(v86);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_171();
  if (!v21)
  {
    v54 = sub_227CFC854(v53);
    v56 = v55;
    sub_227D4CE58();
    v57 = OUTLINED_FUNCTION_174_0();
    v59 = sub_227B39AC4(v57, v58, v10);
    if (v60 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E8, &qword_227D4E648);
      v63 = swift_initStackObject();
      *(v63 + 16) = xmmword_227D4E520;
      *(v63 + 32) = v54;
      *(v63 + 40) = v56;
      sub_227D4CE58();
      OUTLINED_FUNCTION_120();
      nullsub_1();
      *(v63 + 48) = v64;
      *(v63 + 56) = v65;
      *(v63 + 64) = v66;
      *(v63 + 72) = v67;
      v68 = sub_227D4CE28();
      v22 = sub_227B39B40(v68, v10);
      goto LABEL_44;
    }

    v69 = v59;
    v70 = v60;
    v71 = v61;
    v72 = v62;

    sub_227B3D88C(v69, v70, v71, v72);
  }

  sub_227D4CE58();
  v22 = v10;
LABEL_44:

  v73 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v73, v74);

  v75 = OUTLINED_FUNCTION_58();
  sub_227B3DA10(v75, v76);
LABEL_45:
  *a4 = v22;
  a4[1] = v11;
  a4[2] = v12;
  return memcpy(a4 + 3, a3, 0xD8uLL);
}

uint64_t sub_227B32250()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B3235C()
{
  OUTLINED_FUNCTION_74();
  v37 = v0;
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68F0, &qword_227D5B840);
  v32 = v2;
  *(v2 + 16) = sub_227D4CE28();
  v3 = *(v1 + 16);
  if (v3)
  {
    v30 = 0;
    v4 = *(v0 + 72);
    v6 = *(v4 + 16);
    v4 += 16;
    v5 = v6;
    v7 = *(v0 + 16) + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = (v4 - 8);
    v34 = v6;
    v35 = (*(v0 + 48) + 8);
    v33 = *(v4 + 56);
    while (1)
    {
      v5(*(v0 + 80), v7, *(v0 + 64));
      sub_227D4A838();
      v9 = sub_227D4A6A8();
      v11 = v10;
      (*v35)(*(v0 + 56), *(v0 + 40));
      v12 = sub_227D4A848();
      v28 = v13;
      v29 = v12;
      sub_227B1AC90(v30, 0);
      v14 = *(v32 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v36 = v14;
      v15 = sub_227B2664C(v9, v11);
      v31 = v15;
      if (__OFADD__(*(v14 + 16), (v16 & 1) == 0))
      {
        __break(1u);
        return MEMORY[0x282200740]();
      }

      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68F8, &qword_227D4E670);
      v18 = sub_227D4D7C8();
      v19 = v36;
      if (v18)
      {
        v31 = sub_227B2664C(v9, v11);
        if ((v17 & 1) != (v20 & 1))
        {
          break;
        }
      }

      *(v32 + 16) = v19;
      if (v17)
      {
      }

      else
      {
        sub_227B3D714(v31, v9, v11, MEMORY[0x277D84FA0], v19);
      }

      v5 = v34;
      v21 = *(v0 + 80);
      v22 = *(v0 + 64);
      sub_227B274CC(&v36, v29, v28);

      (*v8)(v21, v22);
      v30 = sub_227B32990;
      v7 += v33;
      if (!--v3)
      {
        goto LABEL_14;
      }
    }

    return sub_227D4DAE8();
  }

  else
  {
    v30 = 0;
LABEL_14:
    *(v0 + 96) = v30;
    v23 = swift_task_alloc();
    *(v0 + 104) = v23;
    v24 = *(v0 + 24);
    *(v23 + 16) = v32;
    *(v23 + 24) = vextq_s8(v24, v24, 8uLL);
    v25 = swift_task_alloc();
    *(v0 + 112) = v25;
    *v25 = v0;
    v25[1] = sub_227B3277C;
    v39 = MEMORY[0x277D84F78] + 8;
    OUTLINED_FUNCTION_65();

    return MEMORY[0x282200740]();
  }
}

uint64_t sub_227B3277C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B3287C()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 96);

  sub_227B1AC90(v1, 0);

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t sub_227B32900()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 96);

  sub_227B1AC90(v1, 0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227B329A0()
{
  OUTLINED_FUNCTION_6();
  v0[17] = v1;
  v0[18] = v2;
  v0[15] = v3;
  v0[16] = v4;
  v5 = sub_227D4CAB8();
  v0[19] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[20] = v6;
  v0[21] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4A058();
  v0[22] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[23] = v8;
  v0[24] = *(v9 + 64);
  v0[25] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  OUTLINED_FUNCTION_5(v10);
  v0[26] = OUTLINED_FUNCTION_121();
  v0[27] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B32AD4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 128);
  OUTLINED_FUNCTION_120();
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v35 = v1;
  v36 = v3;
  result = sub_227D4CE58();
  v10 = 0;
  v33 = v8;
  v34 = v4;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_8:
        v40 = *(v0 + 216);
        v42 = *(v0 + 208);
        v37 = *(v0 + 200);
        v38 = *(v0 + 176);
        v41 = *(v0 + 136);
        v12 = __clz(__rbit64(v7)) | (v10 << 6);
        v13 = (*(v36 + 48) + 16 * v12);
        v14 = v13[1];
        v39 = *v13;
        v15 = *(*(v36 + 56) + 8 * v12);
        v16 = sub_227D4D2D8();
        v17 = OUTLINED_FUNCTION_131();
        __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
        v20 = OUTLINED_FUNCTION_141();
        v21(v20);
        v22 = (*(v35 + 80) + 64) & ~*(v35 + 80);
        v23 = swift_allocObject();
        *(v23 + 2) = 0;
        *(v23 + 3) = 0;
        *(v23 + 4) = v39;
        *(v23 + 5) = v14;
        *(v23 + 6) = v15;
        *(v23 + 7) = v41;
        (*(v35 + 32))(&v23[v22], v37, v38);
        sub_227B3E0F8(v40, v42, &qword_27D7E69B8, &qword_227D4EAB0);
        v24 = v16;
        LODWORD(v16) = __swift_getEnumTagSinglePayload(v42, 1, v16);
        sub_227D4CE58();
        sub_227D4CE58();

        v25 = *(v0 + 208);
        if (v16 == 1)
        {
          sub_227B1DE58(*(v0 + 208), &qword_27D7E69B8, &qword_227D4EAB0);
        }

        else
        {
          sub_227D4D2C8();
          (*(*(v24 - 8) + 8))(v25, v24);
        }

        if (*(v23 + 2))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v26 = sub_227D4D278();
          v28 = v27;
          swift_unknownObjectRelease();
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v29 = **(v0 + 120);

        if (v28 | v26)
        {
          v30 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v26;
          *(v0 + 40) = v28;
        }

        else
        {
          v30 = 0;
        }

        v8 = v33;
        v31 = *(v0 + 216);
        v7 &= v7 - 1;
        *(v0 + 72) = 1;
        *(v0 + 80) = v30;
        *(v0 + 88) = v29;
        swift_task_create();

        result = sub_227B1DE58(v31, &qword_27D7E69B8, &qword_227D4EAB0);
        v4 = v34;
      }

      while (v7);
    }
  }

  v32 = swift_task_alloc();
  *(v0 + 224) = v32;
  *v32 = v0;
  v32[1] = sub_227B32EFC;

  return sub_227B335FC(0, 0);
}

uint64_t sub_227B32EFC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_18();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_227B33040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  sub_227D4AA58();

  v15 = sub_227D4CA98();
  sub_227D4D458();
  OUTLINED_FUNCTION_143();

  if (OUTLINED_FUNCTION_107())
  {
    v16 = v14[20];
    a10 = v14[21];
    v17 = v14[19];
    v18 = OUTLINED_FUNCTION_129();
    a11 = OUTLINED_FUNCTION_14_5();
    *v18 = 136315138;
    OUTLINED_FUNCTION_120();
    swift_beginAccess();
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68F0, &qword_227D5B840);
    sub_227D4CE38();

    v19 = OUTLINED_FUNCTION_113();
    v22 = sub_227B1B1A4(v19, v20, v21);

    *(v18 + 4) = v22;
    OUTLINED_FUNCTION_24_0();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a11);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_56_0();

    (*(v16 + 8))(a10, v17);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_9_2();
    v29(v28);
  }

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_16_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227B33208()
{
  OUTLINED_FUNCTION_6();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[8] = v7;
  v0[9] = OUTLINED_FUNCTION_30();
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B332C0()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[9];
  v2 = v0[4];
  sub_227D4CE58();
  OUTLINED_FUNCTION_174_0();
  sub_227D4A698();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_227B2FA20(sub_227B3E144, v3, v2);
  OUTLINED_FUNCTION_177_0(v4);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_227B33414;
  OUTLINED_FUNCTION_53(v0[9]);

  return sub_227B2A510();
}

uint64_t sub_227B33414()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B33514()
{
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_180();
  v1(v0);

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t sub_227B3357C()
{
  OUTLINED_FUNCTION_6();

  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227B335FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_227D4D278();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_227B3369C, v4, v6);
}

uint64_t sub_227B3369C()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 56) = **(v1 + 32);
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  if (sub_227D4D308())
  {
    OUTLINED_FUNCTION_15_0();

    return v2();
  }

  else
  {
    *(v1 + 72) = 0;
    v4 = swift_task_alloc();
    OUTLINED_FUNCTION_177_0(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C8, &qword_227D4EAD8);
    OUTLINED_FUNCTION_133();
    *v0 = v5;
    v6 = OUTLINED_FUNCTION_14_6();

    return MEMORY[0x2822004D0](v6);
  }
}

uint64_t sub_227B33794()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_227B3398C;
  }

  else
  {
    *(v3 + 97) = *(v3 + 96);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_227B33898;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_227B33898()
{
  OUTLINED_FUNCTION_20();
  if (*(v1 + 97))
  {
    v2 = *(v1 + 72);
    if (sub_227D4D308())
    {
      if (v2)
      {
        swift_willThrow();
      }

      OUTLINED_FUNCTION_18();

      return v3();
    }

    *(v1 + 72) = v2;
  }

  v5 = swift_task_alloc();
  OUTLINED_FUNCTION_177_0(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C8, &qword_227D4EAD8);
  OUTLINED_FUNCTION_133();
  *v0 = v6;
  v7 = OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822004D0](v7);
}

uint64_t sub_227B3398C()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v1 + 88);
  if (*(v1 + 72))
  {

    v2 = *(v1 + 72);
  }

  if (sub_227D4D308())
  {
    if (v2)
    {
      swift_willThrow();
    }

    OUTLINED_FUNCTION_18();

    return v3();
  }

  else
  {
    *(v1 + 72) = v2;
    v5 = swift_task_alloc();
    OUTLINED_FUNCTION_177_0(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C8, &qword_227D4EAD8);
    OUTLINED_FUNCTION_133();
    *v0 = v6;
    v7 = OUTLINED_FUNCTION_14_6();

    return MEMORY[0x2822004D0](v7);
  }
}

uint64_t sub_227B33A8C()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_227D4A3B8();
  v1[9] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680);
  OUTLINED_FUNCTION_10_0(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_121();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[17] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[20] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B33C58()
{
  OUTLINED_FUNCTION_119();
  v2 = v0[21];
  v3 = v0[7];
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  v0[24] = 0;
  v0[25] = v5;
  v0[23] = v4;
  if (!v4)
  {

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_163();

    __asm { BRAA            X2, X16 }
  }

  (*(v2 + 16))(v0[22], v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[20]);
  sub_227D4A838();
  v8 = sub_227D4A6A8();
  v0[26] = 0;
  v0[27] = v8;
  v0[28] = v9;
  OUTLINED_FUNCTION_175();
  v10 = OUTLINED_FUNCTION_176_0();
  v11(v10);
  type metadata accessor for ChallengeService(0);
  __swift_project_boxed_opaque_existential_1((v1 + 608), *(v1 + 632));
  v12 = OUTLINED_FUNCTION_57_0();
  v14 = v13(v12);
  v0[29] = sub_227B94A90(v14 & 1);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[30] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_61(v15);
  OUTLINED_FUNCTION_163();

  return sub_227B2F654(v17);
}

uint64_t sub_227B33EE8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_227B33FCC()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_227D4A848();
  v0[31] = v2;
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_89();
    v4(v3);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_88_0();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_36_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[32] = v7;
  *v7 = v8;
  v7[1] = sub_227B341C0;
  OUTLINED_FUNCTION_183_1();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_227B341C0()
{
  OUTLINED_FUNCTION_51_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227B34344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[15];
  v16 = v14[9];
  __swift_destroy_boxed_opaque_existential_0(v14 + 2);
  v17 = OUTLINED_FUNCTION_57_0();
  sub_227B3E0F8(v17, v18, v19, v20);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    v22 = v14 + 13;
    v21 = v14[13];
    v23 = v14[9];
    sub_227B1DE58(v14[15], &qword_27D7E6900, &qword_227D4E680);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v14[25];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v73 = OUTLINED_FUNCTION_21();
      v25 = sub_227B3A224(v73, v74, v75, v25);
    }

    v27 = v25[2];
    v26 = v25[3];
    v79 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v25 = sub_227B3A224((v26 > 1), v27 + 1, 1, v25);
    }
  }

  else
  {
    v22 = v14 + 14;
    v28 = v14[14];
    v29 = v14[9];
    (*(v14[10] + 32))(v14[11], v14[15], v29);
    v30 = OUTLINED_FUNCTION_9_2();
    v31(v30);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v25 = v14[25];
    if ((v32 & 1) == 0)
    {
      v76 = OUTLINED_FUNCTION_21();
      v25 = sub_227B3A224(v76, v77, v78, v25);
    }

    v27 = v25[2];
    v33 = v25[3];
    v79 = v27 + 1;
    if (v27 >= v33 >> 1)
    {
      v25 = sub_227B3A224((v33 > 1), v27 + 1, 1, v25);
    }

    (*(v14[10] + 8))(v14[11], v14[9]);
  }

  v34 = *v22;
  v35 = v14[12];
  sub_227B1DE58(v14[16], &qword_27D7E6900, &qword_227D4E680);
  v36 = OUTLINED_FUNCTION_148();
  v37(v36);
  v25[2] = v79;
  sub_227B3DFC8(v34, v25 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v27, &qword_27D7E6900, &qword_227D4E680);
  v38 = v14[33];
  v39 = v14[23];
  v40 = v14[24] + 1;
  v14[24] = v40;
  v14[25] = v25;
  if (v40 == v39)
  {

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, v79, a11, a12, a13, a14);
  }

  else
  {
    (*(v14[21] + 16))(v14[22], v14[7] + ((*(v14[21] + 80) + 32) & ~*(v14[21] + 80)) + *(v14[21] + 72) * v40, v14[20]);
    sub_227D4A838();
    if (v38)
    {
      v50 = OUTLINED_FUNCTION_89();
      v51(v50);

      OUTLINED_FUNCTION_88_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_16_0();

      return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, v79, a11, a12, a13, a14);
    }

    else
    {
      v52 = sub_227D4A6A8();
      v14[26] = 0;
      v14[27] = v52;
      v14[28] = v53;
      v62 = v52;
      v63 = v53;
      v64 = OUTLINED_FUNCTION_176_0();
      v65(v64);
      type metadata accessor for ChallengeService(0);
      v66 = qword_27D7E6B78;
      v67 = off_27D7E6B80;
      __swift_project_boxed_opaque_existential_1(&qword_27D7E6B60, qword_27D7E6B78);
      v68 = v67[8](v62, v63, v66, v67);
      v14[29] = sub_227B94A90(v68 & 1);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v14[30] = v69;
      *v69 = v70;
      OUTLINED_FUNCTION_61(v69);
      OUTLINED_FUNCTION_16_0();

      return sub_227B2F654(v71);
    }
  }
}

void sub_227B347E8()
{
  OUTLINED_FUNCTION_119();
  v1 = OUTLINED_FUNCTION_89();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227B348AC()
{
  OUTLINED_FUNCTION_6();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v5);
  v1[34] = OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B34934()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  sub_227D4A6A8();
  v0[35] = 0;
  v0[36] = v1;
  OUTLINED_FUNCTION_175();
  v3 = v0[32];
  v2 = v0[33];
  v0[37] = v4;
  __swift_project_boxed_opaque_existential_1((v2 + 608), *(v2 + 632));
  v5 = OUTLINED_FUNCTION_57_0();
  v7 = v6(v5);
  type metadata accessor for ChallengeService(0);
  v0[38] = sub_227B94B24(v3, v7 & 1);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[39] = v8;
  *v8 = v9;
  v8[1] = sub_227B34A84;
  OUTLINED_FUNCTION_164();

  return sub_227B2F654(v10);
}

uint64_t sub_227B34A84()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_227B34B68()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[38];
  v2 = v0[35];
  __swift_project_boxed_opaque_existential_1(v0 + 13, v0[16]);
  v3 = OUTLINED_FUNCTION_141();
  sub_227B351A4(v3, v4, v1, v5);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 13);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_36_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[40] = v8;
  *v8 = v9;
  v8[1] = sub_227B34D14;
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_183_1();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_227B34D14()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (!v0)
  {
    *(v3 + 160) = *(v3 + 16);
    sub_227B3DACC(v3 + 160);
    *(v3 + 208) = *(v3 + 32);
    sub_227B1DE58(v3 + 208, &qword_27D7E68F0, &qword_227D5B840);
    *(v3 + 216) = *(v3 + 40);
    sub_227B1DE58(v3 + 216, &qword_27D7E68F0, &qword_227D5B840);
    *(v3 + 224) = *(v3 + 48);
    sub_227B1DE58(v3 + 224, &qword_27D7E6910, &qword_227D5BCC0);
    *(v3 + 232) = *(v3 + 56);
    sub_227B1DE58(v3 + 232, &qword_27D7E6918, &qword_227D4E6A0);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B34EA4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  OUTLINED_FUNCTION_38_0();
  if (sub_227D4D3B8())
  {
    sub_227D4A958();
    v1 = OUTLINED_FUNCTION_131();
    __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
    OUTLINED_FUNCTION_79(&qword_27D7E6920);
    OUTLINED_FUNCTION_78_1(&qword_27D7E6928);
  }

  else
  {
    v5 = v0[41];
    v6 = v0[31];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    v7 = sub_227D4D128();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    sub_227B2FD80(sub_227B3DB20, v8, v7);
    if (v5)
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 8);

      OUTLINED_FUNCTION_19_0();
      goto LABEL_7;
    }

    v9 = v0[34];

    v10 = sub_227D4A958();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
    OUTLINED_FUNCTION_79(&qword_27D7E6920);
    OUTLINED_FUNCTION_78_1(&qword_27D7E6928);
    OUTLINED_FUNCTION_147();
  }

  sub_227D4A948();
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  OUTLINED_FUNCTION_15_0();
LABEL_7:
  OUTLINED_FUNCTION_164();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227B350B8()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 144) = *(v0 + 16);
  sub_227B3DACC(v0 + 144);
  *(v0 + 176) = *(v0 + 32);
  OUTLINED_FUNCTION_103_0();
  sub_227B1DE58(v1, v2, v3);
  *(v0 + 184) = *(v0 + 40);
  OUTLINED_FUNCTION_103_0();
  sub_227B1DE58(v4, v5, v6);
  *(v0 + 192) = *(v0 + 48);
  sub_227B1DE58(v0 + 192, &qword_27D7E6910, &qword_227D5BCC0);
  *(v0 + 200) = *(v0 + 56);
  sub_227B1DE58(v0 + 200, &qword_27D7E6918, &qword_227D4E6A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227B351A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = MEMORY[0x277D84FA0];
  v15 = MEMORY[0x277D84FA0];
  v16 = MEMORY[0x277D84FA0];
  v13 = MEMORY[0x277D84FA0];
  v14 = MEMORY[0x277D84FA0];
  if (a3)
  {
    sub_227B389BC(a3, &v16, &v14, &v13, &v15);
    if (v4)
    {
    }

    v11 = v15;
    v12 = v16;
    v8 = v13;
    v10 = v14;
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
    v11 = MEMORY[0x277D84FA0];
    v12 = MEMORY[0x277D84FA0];
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v12;
  a4[3] = v11;
  a4[4] = v10;
  a4[5] = v8;
  return sub_227D4CE58();
}

uint64_t sub_227B35270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v16 + 16) = v17;
  *v17 = v18;
  v17[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_16_0();

  return sub_227CD10D8();
}

uint64_t sub_227B35340()
{
  OUTLINED_FUNCTION_119();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_54_1(v1);

  return sub_227CD2C50();
}

uint64_t sub_227B3541C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_21_0(v3);

  return sub_227CD52D8(v1);
}

uint64_t sub_227B354A8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_3(v1);

  return sub_227CD59B4();
}

uint64_t sub_227B35538()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_54_1(v1);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_164();

  return sub_227CD7998();
}

uint64_t sub_227B355D0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227B356B0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_3(v1);

  return sub_227CDAF40();
}

uint64_t sub_227B35740()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_21_0(v3);

  return sub_227CDAAF8(v1);
}

uint64_t sub_227B357CC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_3(v1);

  return sub_227CDCB28();
}

uint64_t sub_227B3585C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_21_0(v3);

  return sub_227CDD7BC(v1);
}

uint64_t sub_227B358E8()
{
  OUTLINED_FUNCTION_20();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_54_1(v1);

  return sub_227CDDAF8();
}

uint64_t sub_227B35994()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_21_0(v1);

  return sub_227CDE0E0();
}

uint64_t sub_227B35A20()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_54_1(v1);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_164();

  return sub_227CDFE64();
}

uint64_t sub_227B35AB8()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_21_0(v1);

  return sub_227CE3A24();
}

uint64_t sub_227B35B44()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_21_0(v1);
  OUTLINED_FUNCTION_174_0();

  return sub_227CE5D4C();
}

uint64_t sub_227B35BE4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_3(v1);

  return sub_227CE7294();
}

uint64_t sub_227B35C74()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_3(v1);

  return sub_227CE7D7C();
}

uint64_t sub_227B35D04()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_115();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_227B35DF0()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_227B35E7C;

  return sub_227B2F654(v0 + 16);
}

uint64_t sub_227B35E7C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227B35F60()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((v0 + 16));
  OUTLINED_FUNCTION_32();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_227B36068;
  v3 = OUTLINED_FUNCTION_9_2();

  return v5(v3);
}

uint64_t sub_227B36068()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B36174()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_115();
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_227B361D4()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227B36230()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_227D4CAB8();
  v1[9] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_121();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B362EC()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((*(v0 + 64) + 608));
  OUTLINED_FUNCTION_32();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_227B363FC;
  v3 = OUTLINED_FUNCTION_9_2();

  return v5(v3);
}

uint64_t sub_227B363FC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B364E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_109_1();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_152();
  a24 = v26;
  sub_227BBF9E0(v26[7], &a12);
  v31 = a12;
  v30 = a13;
  v26[17] = a12;
  v26[18] = v30;
  v32 = a14;
  v33 = a15;
  v26[19] = a14;
  v26[20] = v33;
  if (v30)
  {
    if (v26[16])
    {
      v34 = swift_task_alloc();
      v26[21] = v34;
      *v34 = v26;
      v34[1] = sub_227B36784;
      OUTLINED_FUNCTION_53(v26[15]);
      OUTLINED_FUNCTION_149();
      OUTLINED_FUNCTION_90();

      return sub_227B36CEC();
    }

    sub_227B3DBAC(v31, v30, v32, v33);
  }

  v37 = v26[16];
  sub_227D4AA58();
  sub_227D4CE58();
  sub_227D4CE58();
  v38 = sub_227D4CA98();
  sub_227D4D438();

  if (OUTLINED_FUNCTION_153_0())
  {
    v39 = v26[16];
    a11 = v26[12];
    v40 = v26[10];
    a9 = v26[15];
    a10 = v26[9];
    v41 = v26[7];
    OUTLINED_FUNCTION_12_1();
    a12 = OUTLINED_FUNCTION_76_0();
    *v27 = 136315394;
    v26[6] = v41;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6930, &qword_227D4E738);
    v42 = sub_227D4CFF8();
    v44 = sub_227B1B1A4(v42, v43, &a12);

    *(v27 + 4) = v44;
    *(v27 + 12) = 2080;
    if (v39)
    {
      v45 = a9;
    }

    else
    {
      v45 = 7104878;
    }

    if (!v39)
    {
      v37 = 0xE300000000000000;
    }

    v46 = sub_227B1B1A4(v45, v37, &a12);

    *(v27 + 14) = v46;
    OUTLINED_FUNCTION_31();
    _os_log_impl(v47, v48, v49, v50, v51, 0x16u);
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_41_1();

    (*(v40 + 8))(a11, a10);
  }

  else
  {

    v52 = OUTLINED_FUNCTION_9_2();
    v53(v52);
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227B36784()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B36880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_138();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_166();
  a22 = v24;
  v28 = v24[19];
  v27 = v24[20];
  v29 = v24[18];
  sub_227D4AA58();
  v30 = OUTLINED_FUNCTION_82();
  sub_227B3DBF0(v30, v31, v28, v27);
  sub_227D4CE58();
  v32 = sub_227D4CA98();
  sub_227D4D428();
  v33 = OUTLINED_FUNCTION_82();
  sub_227B3DBAC(v33, v34, v28, v27);

  v35 = OUTLINED_FUNCTION_107();
  v36 = v24[19];
  v37 = v24[20];
  v38 = v24[17];
  v39 = v24[16];
  if (v35)
  {
    a9 = v24[15];
    a10 = v24[10];
    a11 = v24[9];
    a12 = v24[13];
    OUTLINED_FUNCTION_12_1();
    a13 = OUTLINED_FUNCTION_95_0();
    *v29 = 136315394;
    sub_227D4CE58();
    v40 = OUTLINED_FUNCTION_94();
    sub_227B3DBAC(v40, v41, v36, v37);
    v42 = OUTLINED_FUNCTION_94();
    sub_227B1B1A4(v42, v43, v44);
    OUTLINED_FUNCTION_159();
    *(v29 + 4) = v38;
    *(v29 + 12) = 2080;
    v45 = sub_227B1B1A4(a9, v39, &a13);

    *(v29 + 14) = v45;
    OUTLINED_FUNCTION_24_0();
    _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_56_0();

    (*(a10 + 8))(a12, a11);
  }

  else
  {

    v51 = OUTLINED_FUNCTION_94();
    sub_227B3DBAC(v51, v52, v36, v37);

    v53 = OUTLINED_FUNCTION_148();
    v54(v53);
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B36A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_109_1();
  a24 = v26;
  a25 = v27;
  OUTLINED_FUNCTION_152();
  a23 = v25;
  v28 = *(v25 + 176);
  sub_227D4AA58();
  OUTLINED_FUNCTION_145();
  sub_227B3DBF0(v29, v30, v31, v32);
  sub_227D4CE58();
  v33 = v28;
  v34 = sub_227D4CA98();
  sub_227D4D438();
  OUTLINED_FUNCTION_145();
  sub_227B3DBAC(v35, v36, v37, v38);

  if (OUTLINED_FUNCTION_153_0())
  {
    v39 = *(v25 + 176);
    v41 = *(v25 + 152);
    v40 = *(v25 + 160);
    a9 = *(v25 + 136);
    v42 = *(v25 + 128);
    a10 = *(v25 + 120);
    a11 = *(v25 + 80);
    a12 = *(v25 + 72);
    a13 = *(v25 + 88);
    v43 = OUTLINED_FUNCTION_14_5();
    v44 = swift_slowAlloc();
    a14 = swift_slowAlloc();
    *v43 = 136315650;
    *(v25 + 16) = a9;
    *(v25 + 32) = v41;
    *(v25 + 40) = v40;
    v45 = sub_227D4CFF8();
    v47 = sub_227B1B1A4(v45, v46, &a14);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    v48 = sub_227B1B1A4(a10, v42, &a14);

    *(v43 + 14) = v48;
    *(v43 + 22) = 2112;
    v49 = v39;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 24) = v50;
    *v44 = v50;
    OUTLINED_FUNCTION_31();
    _os_log_impl(v51, v52, v53, v54, v55, 0x20u);
    sub_227B1DE58(v44, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_41_1();

    (*(a11 + 8))(a13, a12);
  }

  else
  {
    v56 = *(v25 + 176);
    sub_227B3DBAC(*(v25 + 136), *(v25 + 144), *(v25 + 152), *(v25 + 160));

    v57 = OUTLINED_FUNCTION_148();
    v58(v57);
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_227B36CEC()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_227D4CAB8();
  v1[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4A058();
  v1[10] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v10);
  v1[13] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[14] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[15] = v12;
  v1[16] = OUTLINED_FUNCTION_121();
  v1[17] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6960, &qword_227D4EA50);
  v1[18] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[19] = v14;
  v1[20] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[21] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[22] = v16;
  v1[23] = OUTLINED_FUNCTION_121();
  v1[24] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6968, &qword_227D4EA58);
  OUTLINED_FUNCTION_5(v17);
  v1[25] = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6970, &qword_227D4EA60);
  v1[26] = v18;
  OUTLINED_FUNCTION_5(v18);
  v1[27] = OUTLINED_FUNCTION_121();
  v1[28] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[29] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[30] = v20;
  v1[31] = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[32] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[33] = v22;
  v1[34] = OUTLINED_FUNCTION_30();
  v23 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_227B37048()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v1 = v0[33];
  sub_227D4CE58();
  sub_227D4A8E8();
  sub_227D4CE58();
  sub_227D4A888();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6980, &qword_227D4EA78);
  v2 = sub_227D49F58();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[35] = v6;
  *(v6 + 16) = xmmword_227D4E520;
  v0[36] = *(v1 + 16);
  v0[37] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_103_0();
  v7();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D0CFA0], v2);
  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = sub_227B37200;
  OUTLINED_FUNCTION_53(v0[31]);
  OUTLINED_FUNCTION_135_0();

  return sub_227CD59B4();
}

uint64_t sub_227B37200()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 312) = v0;

  v7 = OUTLINED_FUNCTION_91_0();
  v8(v7);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B37370()
{
  OUTLINED_FUNCTION_119();
  v1 = v0[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6988, &unk_227D4EA80);
  v2 = swift_allocObject();
  v0[40] = v2;
  *(v2 + 16) = xmmword_227D4E520;
  OUTLINED_FUNCTION_103_0();
  v1();
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_227B37474;
  OUTLINED_FUNCTION_163();

  return sub_227CD52D8(v4);
}

uint64_t sub_227B37474()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 336) = v0;

  if (!v0)
  {
    *(v5 + 344) = v3;
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B3759C()
{
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  sub_227B38794(*(v0 + 344), v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v7) == 1)
  {
    v9 = *(v0 + 200);
    v10 = &qword_27D7E6968;
    v11 = &qword_227D4EA58;
LABEL_5:
    sub_227B1DE58(v9, v10, v11);
    v19 = *(v0 + 72);
    v20 = *(v0 + 40);
    sub_227D4AA58();
    sub_227D4CE58();
    v21 = sub_227D4CA98();
    sub_227D4D428();
    OUTLINED_FUNCTION_193_0();
    os_log_type_enabled(v21, v3);
    OUTLINED_FUNCTION_178_0();
    if (v22)
    {
      OUTLINED_FUNCTION_129();
      v60 = OUTLINED_FUNCTION_98();
      *v6 = 136315138;
      v23 = OUTLINED_FUNCTION_114();
      *(v6 + 4) = sub_227B1B1A4(v23, v24, v25);
      OUTLINED_FUNCTION_185_0(&dword_227B0D000, v26, v27, "Challenge ID: %s has a known definition, skipping refresh.");
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_5_2();

      (v1[1])(v5, v2);
      (*(v20 + 8))(v19, v4);
    }

    else
    {

      (v1[1])(v5, v2);
      v28 = OUTLINED_FUNCTION_81_0();
      v30(v28, v29);
    }

    OUTLINED_FUNCTION_28_3();

    OUTLINED_FUNCTION_15_0();
LABEL_9:
    OUTLINED_FUNCTION_137();

    __asm { BRAA            X1, X16 }
  }

  v12 = *(v0 + 216);
  v1 = &qword_227D4EA60;
  OUTLINED_FUNCTION_103_0();
  sub_227B3DFC8(v13, v14, v15, &qword_227D4EA60);
  v16 = OUTLINED_FUNCTION_147();
  sub_227B3E0F8(v16, v17, &qword_27D7E6970, &qword_227D4EA60);
  v18 = sub_227D4A3F8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v18) == 1)
  {
    sub_227B1DE58(*(v0 + 224), &qword_27D7E6970, &qword_227D4EA60);
    v9 = OUTLINED_FUNCTION_57_0();
    v11 = &qword_227D4EA60;
    goto LABEL_5;
  }

  v33 = *(v0 + 336);
  v34 = *(v0 + 192);
  sub_227D4A3C8();
  v35 = OUTLINED_FUNCTION_57_0();
  v36(v35);
  v37 = OUTLINED_FUNCTION_148();
  v38(v37);
  sub_227D4A838();
  if (v33)
  {
    v39 = OUTLINED_FUNCTION_44_2();
    v40(v39);
    sub_227B1DE58(v34, &qword_27D7E6970, &qword_227D4EA60);
    OUTLINED_FUNCTION_39_1();
    v41 = OUTLINED_FUNCTION_87_2();
    v42(v41);

    OUTLINED_FUNCTION_19_0();
    goto LABEL_9;
  }

  v43 = *(v0 + 176);
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6990, &qword_227D52170);
  *(v0 + 360) = sub_227D4A508();
  OUTLINED_FUNCTION_9();
  v45 = v44;
  *(v0 + 368) = *(v46 + 72);
  v47 = *(v44 + 80);
  *(v0 + 472) = v47;
  v48 = (v47 + 32) & ~v47;
  v49 = swift_allocObject();
  *(v0 + 376) = v49;
  *(v49 + 16) = xmmword_227D4E520;
  *(v0 + 384) = *(v43 + 16);
  *(v0 + 392) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_149();
  v50();
  *(v0 + 476) = *MEMORY[0x277D0D408];
  v51 = *(v45 + 104);
  *(v0 + 400) = v51;
  *(v0 + 408) = (v45 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v51(v49 + v48);
  sub_227D4A958();
  v52 = OUTLINED_FUNCTION_131();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 416) = v56;
  *v56 = v57;
  v56[1] = sub_227B37AF4;
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_137();

  return sub_227B348AC();
}

uint64_t sub_227B37AF4()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *(v5 + 104);
  v8 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v3[53] = v0;

  sub_227B1DE58(v7, &qword_27D7E6908, &unk_227D4E690);
  v3[54] = *(v6 + 8);
  v3[55] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = OUTLINED_FUNCTION_141();
  v11(v10);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227B37CAC()
{
  v6 = *(v0 + 152);
  v7 = sub_227D4A938();
  v8 = v6 + 8;
  v9 = OUTLINED_FUNCTION_57_0();
  v10(v9);
  v11 = *(v7 + 16);

  if (v11)
  {
    v12 = *(v0 + 224);
    (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
    sub_227B1DE58(v12, &qword_27D7E6970, &qword_227D4EA60);
    v13 = *(v0 + 72);
    v14 = *(v0 + 40);
    sub_227D4AA58();
    sub_227D4CE58();
    v15 = sub_227D4CA98();
    sub_227D4D428();
    OUTLINED_FUNCTION_193_0();
    os_log_type_enabled(v15, v2);
    OUTLINED_FUNCTION_178_0();
    if (v16)
    {
      OUTLINED_FUNCTION_129();
      v45 = OUTLINED_FUNCTION_98();
      *v5 = 136315138;
      v17 = OUTLINED_FUNCTION_114();
      *(v5 + 4) = sub_227B1B1A4(v17, v18, v19);
      OUTLINED_FUNCTION_185_0(&dword_227B0D000, v20, v21, "Challenge ID: %s has a known definition, skipping refresh.");
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_5_2();

      (*(v8 + 8))(v4, v1);
      (*(v14 + 8))(v13, v3);
    }

    else
    {

      (*(v8 + 8))(v4, v1);
      v28 = OUTLINED_FUNCTION_81_0();
      v30(v28, v29);
    }

    OUTLINED_FUNCTION_28_3();

    OUTLINED_FUNCTION_15_0();
LABEL_8:
    OUTLINED_FUNCTION_137();

    __asm { BRAA            X1, X16 }
  }

  v22 = *(v0 + 424);
  v23 = *(v0 + 192);
  sub_227D4A838();
  if (v22)
  {
    v24 = OUTLINED_FUNCTION_44_2();
    v25(v24);
    sub_227B1DE58(v23, &qword_27D7E6970, &qword_227D4EA60);
    OUTLINED_FUNCTION_39_1();
    v26 = OUTLINED_FUNCTION_87_2();
    v27(v26);

    OUTLINED_FUNCTION_19_0();
    goto LABEL_8;
  }

  v44 = *(v0 + 400);
  v43 = *(v0 + 476);
  v33 = *(v0 + 384);
  v34 = *(v0 + 360);
  v35 = *(v0 + 88);
  v42 = *(v0 + 96);
  v36 = (*(v0 + 472) + 32) & ~*(v0 + 472);
  v37 = *(v0 + 80);
  v38 = swift_allocObject();
  *(v0 + 448) = v38;
  *(v38 + 16) = xmmword_227D4E520;
  OUTLINED_FUNCTION_149();
  v33();
  v44(v38 + v36, v43, v34);
  (*(v35 + 104))(v42, *MEMORY[0x277D0D040], v37);
  v39 = swift_task_alloc();
  *(v0 + 456) = v39;
  *v39 = v0;
  v39[1] = sub_227B380D0;
  OUTLINED_FUNCTION_53(*(v0 + 128));
  OUTLINED_FUNCTION_137();

  return sub_227B2A510();
}

uint64_t sub_227B380D0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 464) = v0;

  v9 = OUTLINED_FUNCTION_141();
  v10(v9);
  v11 = OUTLINED_FUNCTION_91_0();
  v5(v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_135_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227B38298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[28];
  (*(v14[22] + 8))(v14[24], v14[21]);
  sub_227B1DE58(v15, &qword_27D7E6970, &qword_227D4EA60);
  v16 = OUTLINED_FUNCTION_57_0();
  v17(v16);
  OUTLINED_FUNCTION_28_3();
  v29 = v19;
  v30 = v18;
  v31 = v14[9];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_16_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, a12, a13, a14);
}

uint64_t sub_227B383B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v16 = OUTLINED_FUNCTION_18_0();
  v17(v16);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B3848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v16 = OUTLINED_FUNCTION_18_0();
  v17(v16);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B38564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v20 = v19[33];
  v21 = OUTLINED_FUNCTION_44_2();
  v22(v21);
  sub_227B1DE58(v18, &qword_27D7E6970, &qword_227D4EA60);
  v23 = v19[34];
  OUTLINED_FUNCTION_39_1();
  v34 = v19[17];
  v35 = v19[16];
  v36 = v19[13];
  v37 = v19[12];
  v38 = v19[9];
  v39 = v24;
  (*(v20 + 8))(v23);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, v37, v38, v39, a16, a17, a18);
}

uint64_t sub_227B38694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = OUTLINED_FUNCTION_44_2();
  v18(v17);
  sub_227B1DE58(v16, &qword_27D7E6970, &qword_227D4EA60);
  v19 = OUTLINED_FUNCTION_18_0();
  v20(v19);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227B38794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6970, &qword_227D4EA60);
  v6 = v5;
  if (v4)
  {
    sub_227B3E0F8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_27D7E6970, &qword_227D4EA60);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_227B38854()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_21_0(v3);

  return sub_227CE8980(v1);
}

uint64_t sub_227B388E0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_227CE8E20(v3, v4);
}

uint64_t sub_227B389BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v50 = a5;
  v63 = a4;
  v77 = a3;
  v78 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v80 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v51 = &v50 - v8;
  v74 = sub_227D4A3A8();
  v9 = *(v74 - 8);
  v10 = MEMORY[0x28223BE20](v74);
  v76 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v50 - v12;
  v61 = sub_227D49F28();
  v13 = *(v61 - 8);
  v14 = MEMORY[0x28223BE20](v61);
  v60 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v50 - v17;
  MEMORY[0x28223BE20](v16);
  v70 = &v50 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v72 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v82 = &v50 - v20;
  v21 = sub_227D4A508();
  v22 = *(v21 - 8);
  result = MEMORY[0x28223BE20](v21);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v88 = *(a1 + 16);
  v85 = v22 + 16;
  v86 = a1;
  v84 = v22 + 88;
  v83 = *MEMORY[0x277D0D408];
  v81 = *MEMORY[0x277D0D410];
  v75 = *MEMORY[0x277D0D420];
  v69 = *MEMORY[0x277D0D418];
  v58 = (v22 + 8);
  v27 = (v22 + 96);
  v57 = (v13 + 32);
  v56 = (v13 + 16);
  v55 = (v13 + 8);
  v68 = (v9 + 32);
  v67 = (v9 + 16);
  v66 = (v9 + 88);
  v71 = (v9 + 8);
  v53 = (v9 + 96);
  v65 = *MEMORY[0x277D0D1B0];
  v52 = (v80 + 4);
  v54 = (v80 + 1);
  v79 = (v72 + 32);
  v80 = (v72 + 8);
  v72 = v19;
  while (v88 != v26)
  {
    (*(v22 + 16))(v25, v86 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v26, v21);
    v28 = (*(v22 + 88))(v25, v21);
    if (v28 == v83)
    {
      (*v27)(v25, v21);
      v29 = v82;
      (*v79)(v82, v25, v19);
      v30 = sub_227D4A848();
      if (v6)
      {
        return (*v80)(v29, v19);
      }

      sub_227B274CC(&v87, v30, v31);

      result = (*v80)(v29, v19);
    }

    else if (v28 == v81)
    {
      (*v27)(v25, v21);
      result = sub_227B3A88C(&v87, *v25);
    }

    else if (v28 == v75)
    {
      (*v27)(v25, v21);
      v33 = v73;
      v32 = v74;
      (*v68)(v73, v25, v74);
      v34 = v76;
      (*v67)(v76, v33, v32);
      v35 = (*v66)(v34, v32);
      if (v35 == v65)
      {
        v36 = v76;
        (*v53)(v76, v32);
        v37 = v51;
        v38 = v36;
        v39 = v62;
        (*v52)(v51, v38, v62);
        v40 = sub_227D4A7D8();
        if (v6)
        {
          (*v54)(v37, v39);
          return (*v71)(v73, v74);
        }

        sub_227B274CC(&v87, v40, v41);

        (*v54)(v37, v39);
        result = (*v71)(v73, v74);
      }

      else
      {
        v48 = v33;
        v49 = *v71;
        (*v71)(v48, v32);
        result = v49(v76, v32);
      }

      v19 = v72;
    }

    else if (v28 == v69)
    {
      (*v27)(v25, v21);
      v42 = v70;
      v43 = v61;
      (*v57)(v70, v25, v61);
      v44 = v60;
      (*v56)(v60, v42, v43);
      v45 = v59;
      sub_227B3A5EC(v59, v44);
      v64 = v6;
      v46 = *v55;
      (*v55)(v45, v43);
      v47 = v43;
      v19 = v72;
      result = v46(v70, v47);
      v6 = v64;
    }

    else
    {
      result = (*v58)(v25, v21);
    }

    ++v26;
  }

  return result;
}

uint64_t sub_227B39250@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_227B39260()
{
  v2 = v0;
  sub_227D4A3A8();
  OUTLINED_FUNCTION_9();
  v56 = v4;
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_9();
  v52 = v7;
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  v10 = OUTLINED_FUNCTION_5(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v58 = sub_227D49F28();
  OUTLINED_FUNCTION_9();
  v54 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_9();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  v23 = v0[2];
  if (!*(v23 + 16))
  {
    v59 = v1;
    goto LABEL_7;
  }

  v50 = v0;
  sub_227D4A368();
  sub_227D4A848();
  v59 = v1;
  if (!v1)
  {
    (*(v19 + 8))(v22, v17);
    v25 = OUTLINED_FUNCTION_58();
    v27 = sub_227B39740(v25, v26, v23);

    if (!v27)
    {
      goto LABEL_20;
    }

    v2 = v50;
LABEL_7:
    v28 = v2[4];
    if (*(v28 + 16))
    {
      v29 = sub_227D4A2A8();
      if (!sub_227B3982C(v29 & 1, v28))
      {
        goto LABEL_20;
      }
    }

    v30 = v2[5];
    if (*(v30 + 16))
    {
      sub_227D4A2C8();
      v31 = v58;
      if (__swift_getEnumTagSinglePayload(v12, 1, v58) == 1)
      {
        sub_227B1DE58(v12, &qword_27D7E6940, &qword_227D4E768);
      }

      else
      {
        v32 = v54;
        (*(v54 + 32))(v16, v12, v31);
        v33 = sub_227B398E8(v16, v30);
        (*(v32 + 8))(v16, v31);
        if (!v33)
        {
          goto LABEL_20;
        }
      }
    }

    v34 = v2[3];
    if (!*(v34 + 16))
    {
      goto LABEL_19;
    }

    v35 = v55;
    sub_227D4A398();
    v37 = v56;
    v36 = v57;
    v38 = (*(v56 + 88))(v35, v57);
    v39 = v59;
    if (v38 != *MEMORY[0x277D0D1B0])
    {
      (*(v37 + 8))(v35, v36);
      goto LABEL_19;
    }

    (*(v37 + 96))(v35, v36);
    v41 = v51;
    v40 = v52;
    v42 = OUTLINED_FUNCTION_173();
    v43 = v53;
    v44(v42);
    v45 = sub_227D4A7D8();
    v59 = v39;
    if (v39)
    {
      (*(v40 + 8))(v41, v43);
      return v24 & 1;
    }

    v47 = sub_227B39740(v45, v46, v34);

    (*(v40 + 8))(v41, v43);
    if (v47)
    {
LABEL_19:
      v24 = 1;
      return v24 & 1;
    }

LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

  (*(v19 + 8))(v22, v17);
  return v24 & 1;
}

BOOL sub_227B39740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_227D4DB58();
  sub_227D4D048();
  v6 = sub_227D4DB98();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_227D4DA78();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

BOOL sub_227B3982C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_227D4DB58();
  sub_227D4DB78();
  v4 = sub_227D4DB98();
  v5 = a2 + 56;
  do
  {
    v6 = v4 & ~(-1 << *(a2 + 32));
    result = ((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) != 0;
    if (((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v8 = *(*(a2 + 48) + v6);
    v4 = v6 + 1;
  }

  while (v8 != (a1 & 1));
  return result;
}

BOOL sub_227B398E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_227D49F28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_227B3DF84(&qword_27D7E6950, MEMORY[0x277D0CF10]);
  v16 = a1;
  v8 = sub_227D4CE98();
  v9 = a2 + 56;
  v17 = a2;
  v10 = ~(-1 << *(a2 + 32));
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    (*(v5 + 16))(v7, *(v17 + 48) + *(v5 + 72) * v11, v4);
    sub_227B3DF84(&qword_27D7E6958, MEMORY[0x277D0CF18]);
    v14 = sub_227D4CF38();
    (*(v5 + 8))(v7, v4);
    v8 = v11 + 1;
  }

  while ((v14 & 1) == 0);
  return v13;
}

uint64_t sub_227B39AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_227B2664C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 32 * v4);
  sub_227D4CE58();
  sub_227D4CE58();
  return v6;
}

uint64_t sub_227B39B40(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_227B3D114(a1, sub_227B3D844, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_227B39BC4()
{
  if ((*(v0 + 72) & 1) != 0 && *(v0 + 256) >= 2uLL)
  {
    v1 = *(v0 + 248);
  }

  else
  {
    v1 = *(v0 + 56);
  }

  sub_227D4CE58();
  return v1;
}

uint64_t sub_227B39C10()
{
  v1 = *(v0 + 40);
  if ((*(v0 + 56) & 1) != 0 && *(v0 + 16) >= 2uLL)
  {
    v1 = *(v0 + 8);
    sub_227D4CE58();
  }

  else
  {
    sub_227D4CE58();
  }

  return v1;
}

uint64_t sub_227B39C6C()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v2 + 16);
  (v3)(v8);
  sub_227B3DC34(v8);
  if (v9)
  {
    v4 = (*(v0 + 32))(v1, v0);
    if (v5 >= 2)
    {
      return v4;
    }
  }

  v3(&v10, v1, v0);
  v6 = v10;
  sub_227D4CE58();
  sub_227B3DC34(&v10);
  return v6;
}

void *sub_227B39D64()
{
  memcpy(__dst, (v0 + 56), 0xB8uLL);
  v1 = sub_227B3DC88(__dst, v3);
  return OUTLINED_FUNCTION_195(v1, __dst);
}

uint64_t sub_227B39DB0()
{
  v0 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v0, v1);
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227B39DDC()
{
  v4 = *(v0 + 240);
  v1 = v4;
  sub_227B3E0F8(&v4, &v3, &qword_27D7E6948, &qword_227D4E770);
  return v1;
}

void *sub_227B39ED8()
{
  memcpy(__dst, (v0 + 40), 0xB8uLL);
  v1 = sub_227B3DC88(__dst, v3);
  return OUTLINED_FUNCTION_195(v1, __dst);
}

uint64_t sub_227B39F2C()
{
  v0 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v0, v1);
  return OUTLINED_FUNCTION_58();
}

char *sub_227B39FD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69F0, &unk_227D4EB10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[216 * v8] <= v12)
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227B3A0EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69E8, &qword_227D4EB08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69E0, &qword_227D4EB00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227B3A224(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_227B3A32C(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227B3A508(a4 + v11, v8, v9 + v11, &qword_27D7E6900, &qword_227D4E680);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_227B3A32C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B0, &qword_227D4EAA8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227B3A434(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D4A508(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D4A508();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_227B3A508(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_62_0(), a1 + *(v10 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_103_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_103_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

BOOL sub_227B3A5EC(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_227D49F28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_227B3DF84(&qword_27D7E6950, MEMORY[0x277D0CF10]);
  v27 = a2;
  v9 = sub_227D4CE98();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_227B3C668(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_227B3DF84(&qword_27D7E6958, MEMORY[0x277D0CF18]);
    v15 = sub_227D4CF38();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_227B3A88C(_BYTE *a1, char a2)
{
  v5 = *v2;
  sub_227D4DB58();
  v6 = a2 & 1;
  sub_227D4DB78();
  v7 = sub_227D4DB98();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      sub_227B3C8CC(a2 & 1, v9, isUniquelyReferenced_nonNull_native);
      *v2 = v13;
      goto LABEL_7;
    }

    if (*(*(v5 + 48) + v9) == (a2 & 1))
    {
      break;
    }

    v7 = v9 + 1;
  }

  v6 = *(*(v5 + 48) + v9);
LABEL_7:
  result = v10 == 0;
  *a1 = v6;
  return result;
}

uint64_t sub_227B3A98C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_227D4CE58();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_227D4CE58();
        sub_227B3B0D4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_227B3AAB8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = sub_227D4CE58();
    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_227D4DB58();
        sub_227D4CE58();
        sub_227D4D048();
        v20 = sub_227D4DB98();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_227D4DA78() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x28223BE20](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_227D4DB58();
                sub_227D4CE58();
                sub_227D4D048();
                v34 = sub_227D4DB98();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_227D4DA78();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_227B3BA00(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_227B3B978(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x22AAA7130](v41, -1, -1);
            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_227B223D4(v14);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

uint64_t sub_227B3AF90(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_227B3B06C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69E0, &qword_227D4EB00);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_227B3B06C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_227B3A0EC(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_227B3B0D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_227D4DB58();
  sub_227D4D048();
  v6 = sub_227D4DB98();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_227D4DA78() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_227B279DC();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_227B3C4B0(v8);
  *v2 = v15;
  return v13;
}

uint64_t sub_227B3B1FC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_227D49F28();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69A0, &unk_227D52180);
  result = sub_227D4D638();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_227B26E40(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_227B3DF84(&qword_27D7E6950, MEMORY[0x277D0CF10]);
    result = sub_227D4CE98();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_227B3B540(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6998, &unk_227D4EA90);
  result = sub_227D4D638();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_227B26E40(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_227D4DB58();
    sub_227D4DB78();
    result = sub_227D4DB98();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t *sub_227B3B78C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_227D4DB58();
    sub_227D4CE58();
    sub_227D4D048();
    v16 = sub_227D4DB98();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_227D4DA78();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_227B3BA00(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_227B3B978(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_227B3B78C(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_227B3BA00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68A8, &unk_227D4EAF0);
  result = sub_227D4D648();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_227D4DB58();
    sub_227D4CE58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_227B3BC1C()
{
  v1 = v0;
  v2 = sub_227D49F28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69A0, &unk_227D52180);
  v6 = *v0;
  v7 = sub_227D4D628();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_227B3BE50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6998, &unk_227D4EA90);
  v2 = *v0;
  v3 = sub_227D4D628();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_227B3BF90(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227D49F28();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69A0, &unk_227D52180);
  v7 = sub_227D4D638();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_227B3DF84(&qword_27D7E6950, MEMORY[0x277D0CF10]);
        result = sub_227D4CE98();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_227B3C294(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6998, &unk_227D4EA90);
  result = sub_227D4D638();
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
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_227D4DB58();
        sub_227D4DB78();
        result = sub_227D4DB98();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

unint64_t sub_227B3C4B0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_227D4D5D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_227D4DB58();
        sub_227D4CE58();
        sub_227D4D048();
        v10 = sub_227D4DB98();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_227B3C668(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_227D49F28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227B3B1FC(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_227B3BF90(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_227B3DF84(&qword_27D7E6950, MEMORY[0x277D0CF10]);
      v13 = sub_227D4CE98();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_227B3DF84(&qword_27D7E6958, MEMORY[0x277D0CF18]);
        v15 = sub_227D4CF38();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_227B3BC1C();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_227D4DAD8();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

unint64_t sub_227B3C8CC(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227B3B540(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_227B3C294(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_227D4DB58();
      sub_227D4DB78();
      result = sub_227D4DB98();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == (v5 & 1))
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_227B3BE50();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5 & 1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_227D4DAD8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_227B3CA0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227B3CAE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_227B3CA88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227B3CC20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_227B3CAA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227B3CD28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_227B3CAC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227B3CEDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_227B3CAE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69E8, &qword_227D4EB08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69E0, &qword_227D4EB00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227B3CC20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227B3CD28(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6990, &qword_227D52170);
  v10 = *(sub_227D4A508() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_227D4A508() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227B3A434(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_227B3CEDC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69A8, &qword_227D4EAA0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227B3A508(a4 + v16, v8, v13 + v16, &qword_27D7E68E0, &unk_227D50DE0);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_227B3D0B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  return a2;
}

uint64_t sub_227B3D114(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v54 = a5;
  sub_227B3D8D4(a1, a2, a3, v53);
  v6 = v53[1];
  v41 = v53[0];
  v7 = v53[3];
  v40 = v53[5];
  v8 = v53[4];
  v9 = (v53[2] + 64) >> 6;
  sub_227D4CE58();

  v39 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v41 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v41 + 56) + 32 * v12;
      v17 = *v16;
      v18 = *(v16 + 24);
      v50[0] = v14;
      v50[1] = v15;
      v50[2] = v17;
      v51 = *(v16 + 8);
      v52 = v18;
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      v40(&v46, v50);

      v19 = v46;
      v20 = v47;
      v42 = v48;
      v44 = v49;
      v21 = *v54;
      v23 = sub_227B2664C(v46, v47);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69D0, &qword_227D4EAE0);
          sub_227D4D7D8();
        }
      }

      else
      {
        sub_227B3D438(v26, a4 & 1);
        v28 = sub_227B2664C(v19, v20);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_23;
        }

        v23 = v28;
      }

      v8 &= v8 - 1;
      v30 = *v54;
      if (v27)
      {
        v31 = (v30[7] + 32 * v23);
        v43 = *v31;
        v45 = v31[1];
        sub_227D4CE58();
        sub_227D4CE58();

        v32 = (v30[7] + 32 * v23);
        *v32 = v43;
        v32[1] = v45;
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v33 = (v30[6] + 16 * v23);
        *v33 = v19;
        v33[1] = v20;
        v34 = (v30[7] + 32 * v23);
        *v34 = v42;
        v34[1] = v44;
        v35 = v30[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_22;
        }

        v30[2] = v37;
      }

      a4 = 1;
      v7 = v10;
      v6 = v39;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_227B223D4(v41);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

uint64_t sub_227B3D438(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69D8, &qword_227D4EAE8);
  v36 = v4;
  result = sub_227D4D828();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_227B26E40(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5 + 56) + 32 * v18;
    v37 = *v22;
    v38 = *(v22 + 8);
    v23 = *(v22 + 24);
    if ((v36 & 1) == 0)
    {
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
    }

    sub_227D4DB58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = *(v7 + 56) + 32 * v27;
    *v33 = v37;
    *(v33 + 8) = v38;
    *(v33 + 24) = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_227B3D714(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_227B3D75C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_227B132F0(&v12, v10 + 40 * a1 + 32);
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

__n128 sub_227B3D844@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_227B3D0B8(v7, *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  result = v7[0];
  v5 = v7[1];
  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 32) = v5;
  return result;
}

void sub_227B3D88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_227B3D8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_227B3D910(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 32 * result);
    sub_227D4CE58();
    sub_227D4CE58();
    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_227B3D9FC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_227D4CE58();
  }

  return result;
}

uint64_t sub_227B3DA10(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_227B3DA24()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227B355D0;

  return sub_227B329A0();
}

uint64_t sub_227B3DB20(void *a1, void *a2)
{
  result = sub_227D4A658();
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t sub_227B3DB5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E68E0, &unk_227D50DE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_227B3DBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_227B3DBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_227D4CE58();

    sub_227D4CE58();
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_227B3DCF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 48))
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

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227B3DD34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16GameServicesCore12AMSResponsesO7ArtworkVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16GameServicesCore12AMSResponsesO17GroupedEntityMetaVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227B3DE48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 264))
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

  return OUTLINED_FUNCTION_161(v2);
}

void *sub_227B3DE84(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 29) = 0u;
    result = OUTLINED_FUNCTION_118(result, 0);
    *(result + 31) = v3;
    *result = v4;
    if (v5 < 0)
    {
      *(result + 264) = 1;
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

      return OUTLINED_FUNCTION_160(result, a2);
    }

    *(result + 264) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_160(result, a2);
    }
  }

  return result;
}

uint64_t sub_227B3DEEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 240))
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

  return OUTLINED_FUNCTION_161(v2);
}

void *sub_227B3DF28(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[29] = 0;
    result = OUTLINED_FUNCTION_118(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 240) = 1;
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

      return OUTLINED_FUNCTION_160(result, a2);
    }

    *(result + 240) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_160(result, a2);
    }
  }

  return result;
}

uint64_t sub_227B3DF84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227D49F28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227B3DFC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_62_0();
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return v4;
}

uint64_t sub_227B3E014()
{
  OUTLINED_FUNCTION_51_0();
  v0 = sub_227D4A058();
  OUTLINED_FUNCTION_5(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v2[1] = sub_227B3E2E8;

  return sub_227B33208();
}

uint64_t sub_227B3E0F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_62_0();
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return v4;
}

uint64_t sub_227B3E144@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_227D4A658();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    v7 = *MEMORY[0x277D0D408];
    sub_227D4A508();
    OUTLINED_FUNCTION_62_0();
    return (*(v8 + 104))(a3, v7);
  }

  return result;
}

uint64_t sub_227B3E218(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_227B3E224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_227B3E274(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1)
{

  return sub_227D4AA58();
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_95_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_98()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_99_0()
{
}

void OUTLINED_FUNCTION_102(uint64_t a1@<X8>)
{
  v4 = (v2 + ((a1 << 10) | (16 * v1)));
  *(v3 + 1456) = *v4;
  *(v3 + 1464) = v4[1];
}

uint64_t OUTLINED_FUNCTION_117_1()
{
}

uint64_t OUTLINED_FUNCTION_127()
{
}

uint64_t OUTLINED_FUNCTION_128_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

BOOL OUTLINED_FUNCTION_153_0()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_154_0@<X0>(unint64_t a1@<X8>)
{

  return sub_227B3CA0C((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_155_0()
{
}

uint64_t OUTLINED_FUNCTION_157_0()
{
  *(v0 + 1360) = v1;
  *(v0 + 1368) = v2;

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_158_0()
{

  return memcpy((v1 + 256), v0, 0xD8uLL);
}

uint64_t OUTLINED_FUNCTION_159()
{
}

void OUTLINED_FUNCTION_185_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *OUTLINED_FUNCTION_188(uint64_t a1)
{
  *(v1 + 1336) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 16), 0xF0uLL);
}

void OUTLINED_FUNCTION_190(uint64_t a1)
{
  v3 = *(v1 + 856);

  sub_227CFC560(v3);
}

uint64_t OUTLINED_FUNCTION_193_0()
{
}

void *OUTLINED_FUNCTION_195(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xB8uLL);
}

void OUTLINED_FUNCTION_196(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

unint64_t OUTLINED_FUNCTION_197_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_227B1B1A4(a1, v19, va);
}

uint64_t GameActivityService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore19GameActivityService_id;
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_227B3E88C()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BA38);
  __swift_project_value_buffer(v0, qword_280E7BA38);
  return sub_227D49E78();
}

uint64_t sub_227B3E8D8()
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_63_0(&_MergedGlobals_0);
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BA38);
}

uint64_t static GameActivityService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_63_0(&_MergedGlobals_0);
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BA38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227B3E9C4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_227B3EA14(a1, a2);
  return v4;
}

uint64_t sub_227B3EA14(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v14 = sub_227D49EF8();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC16GameServicesCore19GameActivityService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_actorSystem) = a1;
  type metadata accessor for GameActivityService(0);
  v16 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_7_5();
  sub_227B0F660(v8, v9, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_0_1();
  sub_227B0F660(v10, v11, &protocol conformance descriptor for GameActivityService);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_id, v6, v14);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore19GameActivityService_dataProvider) = v15;
  v16 = *(v2 + v7);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for GameActivityService(uint64_t a1)
{
  result = qword_27D7EAF90;
  if (!qword_27D7EAF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameActivityService.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_30();
  v5 = sub_227D4A058();
  v0[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A00, &unk_227D4EB40);
  v0[11] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[12] = v8;
  v0[13] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[14] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[15] = v10;
  v0[16] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v0[17] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[18] = v12;
  v0[19] = OUTLINED_FUNCTION_30();
  v13 = sub_227D49D58();
  v0[20] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v0[21] = v14;
  v0[22] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B3EE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_78_2();
    OUTLINED_FUNCTION_36();
    v15 = OUTLINED_FUNCTION_9_1();
    v16(v15);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_4_5(&qword_280E7B830);
    OUTLINED_FUNCTION_3_5(&qword_280E7B838);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v12)
    {
      v17 = OUTLINED_FUNCTION_103_1();
      v18(v17);
      (*(v14 + 8))(v13[22], v13[20]);
      v27 = OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_97(v27);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_68_0();
      v25(v24);
      sub_227D49478();
      v26 = MEMORY[0x277D0D050];
      sub_227B0F660(&qword_27D7E6A10, MEMORY[0x277D0D050], MEMORY[0x277D0D060]);
      sub_227B0F660(&qword_27D7E6A18, v26, MEMORY[0x277D0D058]);
      OUTLINED_FUNCTION_38_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      v13[23] = v36;
      type metadata accessor for GameActivityService(0);
      OUTLINED_FUNCTION_0_1();
      sub_227B0F660(v37, v38, &protocol conformance descriptor for GameActivityService);
      OUTLINED_FUNCTION_48_0();
      *v36 = v39;
      OUTLINED_FUNCTION_108_0();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }
  }

  else
  {
    v19 = swift_task_alloc();
    v13[25] = v19;
    *v19 = v13;
    OUTLINED_FUNCTION_100(v19);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_33();

    return sub_227B3F570(v20, v21);
  }
}

uint64_t sub_227B3F1D8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B3F2D0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B4AFB4;

  return GameActivityService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227B3F570(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227B3F588()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_227B4AF70;
  OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227B4EFC0();
}

uint64_t GameActivityService.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D49458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v1[13] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}