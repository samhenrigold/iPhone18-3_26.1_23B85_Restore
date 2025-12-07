uint64_t sub_231305D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 296) = v13;
  *(v8 + 280) = v12;
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 232) = a1;
  *(v8 + 240) = a4;
  v9 = sub_2313698C0();
  *(v8 + 304) = v9;
  *(v8 + 312) = *(v9 - 8);
  *(v8 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231305E54, 0, 0);
}

uint64_t sub_231305E54()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v15 = *(v0 + 248);
  v16 = *(v0 + 272);
  v8 = v6[6];
  v7 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v8);
  v9 = (*(v7 + 8))(v8, v7);
  sub_2311CF324(v5, v0 + 16);
  sub_2311CF324(v3, v0 + 56);
  sub_2311CF324(v2, v0 + 96);
  sub_2311CF324(v1, v0 + 136);
  v10 = swift_allocObject();
  *(v0 + 328) = v10;
  v10[2] = v6;
  v10[3] = v15;
  v10[4] = v4;
  sub_2311D38A8((v0 + 16), (v10 + 5));
  v10[10] = v16;
  sub_2311D38A8((v0 + 56), (v10 + 11));
  sub_2311D38A8((v0 + 96), (v10 + 16));
  sub_2311D38A8((v0 + 136), (v10 + 21));

  sub_231369EE0();

  v11 = swift_task_alloc();
  *(v0 + 336) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
  *v11 = v0;
  v11[1] = sub_23130603C;
  v13.n128_f64[0] = v9;

  return MEMORY[0x2821C8618](v0 + 216, &unk_2313770B8, v10, v12, v13);
}

uint64_t sub_23130603C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v3 + 344) = v0;

  if (v0)
  {
    v6 = sub_2313061BC;
  }

  else
  {

    v6 = sub_231306148;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_231306148()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[27];
  *v2 = v0[31];
  v2[1] = v1;
  v2[2] = v3;
  sub_231369EE0();

  OUTLINED_FUNCTION_56_0();

  return v4();
}

uint64_t sub_2313061BC()
{
  v34 = v0;
  v1 = v0[43];
  v2 = v0[33];

  sub_231369160();
  sub_2311CF324(v2, (v0 + 22));
  sub_231369EE0();
  v3 = v1;
  v4 = sub_2313698A0();
  v5 = sub_23136A3B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[43];
    v7 = v0[39];
    v31 = v0[38];
    v32 = v0[40];
    v9 = v0[31];
    v8 = v0[32];
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_2311CFD58(v9, v8, &v33);
    *(v10 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
    swift_getDynamicType();
    v11 = sub_23136AA70();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
    v14 = sub_2311CFD58(v11, v13, &v33);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2080;
    v0[28] = v6;
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v16 = sub_23136A010();
    v18 = sub_2311CFD58(v16, v17, &v33);

    *(v10 + 24) = v18;
    OUTLINED_FUNCTION_28_2();
    _os_log_impl(v19, v20, v21, v22, v23, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v7 + 8))(v32, v31);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
    v24 = OUTLINED_FUNCTION_28_0();
    v25(v24);
  }

  v26 = v0[43];
  v27 = v0[32];
  v28 = v0[29];
  *v28 = v0[31];
  v28[1] = v27;
  sub_231369EE0();

  v28[2] = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_56_0();

  return v29();
}

uint64_t sub_231306450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_23130653C;

  return sub_23130665C(a3, a4, a5, a6, a7, a8, v18);
}

uint64_t sub_23130653C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  *(v1 + 32) = v0;

  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23130662C()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_56_0();
  return v1();
}

uint64_t sub_23130665C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  v7[27] = a2;
  v7[28] = a3;
  v7[26] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44998, &qword_2313770D0);
  v7[33] = swift_task_alloc();
  v8 = sub_231367DC0();
  v7[34] = v8;
  v7[35] = *(v8 - 8);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v9 = sub_2313698C0();
  v7[39] = v9;
  v7[40] = *(v9 - 8);
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231306804, 0, 0);
}

uint64_t sub_231306804()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v0 + 240));
  OUTLINED_FUNCTION_28_0();
  *(v0 + 368) = sub_231368300();
  *(v0 + 376) = v1;
  *(v0 + 384) = swift_getObjectType();
  v3 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_2313068A0, v3, v2);
}

uint64_t sub_2313068A0()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 392) = sub_2313693F0();
  swift_unknownObjectRelease();
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23130690C(uint64_t a1)
{
  v120 = v1;
  v2 = *(v1 + 392);
  if (!v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_2_0(*(v1 + 224));
    v14 = swift_task_alloc();
    *(v1 + 432) = v14;
    *v14 = v1;
    OUTLINED_FUNCTION_4_25(v14);
    OUTLINED_FUNCTION_35();

    return MEMORY[0x2821C6C38](v15, v16, v17, v18, v19, v20);
  }

  sub_231369160();
  v3 = sub_2313698A0();
  v4 = sub_23136A390();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2311CB000, v3, v4, "Found intent properties on the context", v5, 2u);
    OUTLINED_FUNCTION_29();
  }

  v6 = *(v1 + 360);
  v7 = *(v1 + 312);
  v8 = *(v1 + 320);
  v10 = *(v1 + 264);
  v9 = *(v1 + 272);

  v118 = *(v8 + 8);
  v118(v6, v7);
  v11 = OUTLINED_FUNCTION_80();
  sub_231210FC0(v11, v12, v2);
  if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
  {
    v13 = *(v1 + 264);

    sub_231228E9C(v13, &qword_27DD44998, &qword_2313770D0);
    goto LABEL_6;
  }

  v23 = *(v1 + 296);
  v22 = *(v1 + 304);
  v24 = *(v1 + 272);
  v25 = *(v1 + 280);
  (*(v25 + 32))(v22, *(v1 + 264), v24);
  sub_231369160();
  v27 = *(v25 + 16);
  v26 = v25 + 16;
  v116 = v27;
  v27(v23, v22, v24);
  sub_231369EE0();
  v28 = sub_2313698A0();
  v29 = sub_23136A390();

  v114 = v29;
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v1 + 296);
  v33 = *(v1 + 272);
  v32 = *(v1 + 280);
  if (v30)
  {
    v111 = *(v1 + 312);
    v112 = *(v1 + 352);
    v35 = *(v1 + 208);
    v34 = *(v1 + 216);
    v36 = OUTLINED_FUNCTION_45();
    v119 = OUTLINED_FUNCTION_44();
    *v36 = 136315394;
    *(v36 + 4) = sub_2311CFD58(v35, v34, &v119);
    *(v36 + 12) = 2080;
    sub_231308BAC();
    sub_23136A8B0();
    log = v28;
    v37 = *(v32 + 8);
    v37(v31, v33);
    v38 = OUTLINED_FUNCTION_54_0();
    v41 = sub_2311CFD58(v38, v39, v40);

    *(v36 + 14) = v41;
    _os_log_impl(&dword_2311CB000, log, v114, "Found intent property on the context for %s as %s", v36, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    v42 = v37;
    OUTLINED_FUNCTION_29();

    v44 = v111;
    v43 = v112;
  }

  else
  {

    v42 = *(v32 + 8);
    v42(v31, v33);
    v43 = OUTLINED_FUNCTION_54_0();
  }

  v118(v43, v44);
  *(v1 + 400) = v42;
  v45 = *(v1 + 280);
  v46 = *(v1 + 272);
  v116(*(v1 + 288), *(v1 + 304), v46);
  v47 = v45 + 88;
  v48 = OUTLINED_FUNCTION_28();
  v50 = v49(v48);
  if (v50 == *MEMORY[0x277D60C48])
  {
    OUTLINED_FUNCTION_31_20();
    (*(v26 + 96))(v46, v47);
    sub_2312250F8(v46, (v1 + 16));
    sub_231369160();
    sub_2311D1D6C(v1 + 16, v1 + 48);
    sub_231369EE0();
    v51 = sub_2313698A0();
    v52 = sub_23136A390();

    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v1 + 336);
    v55 = *(v1 + 312);
    if (v53)
    {
      v56 = OUTLINED_FUNCTION_45();
      v119 = OUTLINED_FUNCTION_44();
      *v56 = 136315394;
      v57 = OUTLINED_FUNCTION_80();
      *(v56 + 4) = sub_2311CFD58(v57, v58, v59);
      *(v56 + 12) = 2080;
      sub_2311D1D6C(v1 + 48, v1 + 80);
      sub_23136A010();
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));
      v60 = OUTLINED_FUNCTION_53_3();
      v63 = sub_2311CFD58(v60, v61, v62);

      *(v56 + 14) = v63;
      OUTLINED_FUNCTION_28_2();
      _os_log_impl(v64, v65, v66, v67, v68, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));
    }

    v118(v54, v55);
    OUTLINED_FUNCTION_2_0(*(v1 + 240));
    OUTLINED_FUNCTION_28_0();
    *(v1 + 408) = sub_231368300();
    *(v1 + 416) = v87;
    *(v1 + 424) = swift_getObjectType();
    sub_23136A260();
    OUTLINED_FUNCTION_35();

    return MEMORY[0x2822009F8](v88, v89, v90);
  }

  if (v50 == *MEMORY[0x277D60C38])
  {
    OUTLINED_FUNCTION_31_20();
    (*(v26 + 96))(v46, v47);
    sub_2312250F8(v46, (v1 + 112));
    sub_231369160();
    sub_2311D1D6C(v1 + 112, v1 + 144);
    sub_231369EE0();
    v69 = sub_2313698A0();
    v70 = sub_23136A390();

    v71 = os_log_type_enabled(v69, v70);
    v72 = *(v1 + 344);
    v73 = *(v1 + 312);
    if (v71)
    {
      v117 = v42;
      v74 = OUTLINED_FUNCTION_45();
      v119 = OUTLINED_FUNCTION_44();
      *v74 = 136315394;
      v75 = OUTLINED_FUNCTION_80();
      *(v74 + 4) = sub_2311CFD58(v75, v76, v77);
      *(v74 + 12) = 2080;
      sub_2311D1D6C(v1 + 144, v1 + 176);
      sub_23136A010();
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 144));
      v78 = OUTLINED_FUNCTION_53_3();
      v81 = sub_2311CFD58(v78, v79, v80);

      *(v74 + 14) = v81;
      v42 = v117;
      OUTLINED_FUNCTION_28_2();
      _os_log_impl(v82, v83, v84, v85, v86, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 144));
    }

    v118(v72, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_23136B670;
    sub_2312250F8((v1 + 112), (v103 + 32));
    v104 = OUTLINED_FUNCTION_28_0();
    (v42)(v104);

    OUTLINED_FUNCTION_35();

    __asm { BRAA            X2, X16 }
  }

  if (v50 == *MEMORY[0x277D60C40])
  {

    sub_231369160();
    sub_231369EE0();
    v92 = sub_2313698A0();
    v93 = sub_23136A390();

    v94 = os_log_type_enabled(v92, v93);
    v95 = *(v1 + 304);
    v96 = *(v1 + 272);
    if (v94)
    {
      v115 = *(v1 + 272);
      v97 = swift_slowAlloc();
      v113 = v95;
      v98 = swift_slowAlloc();
      v119 = v98;
      *v97 = 136315138;
      v99 = OUTLINED_FUNCTION_80();
      *(v97 + 4) = sub_2311CFD58(v99, v100, v101);
      _os_log_impl(&dword_2311CB000, v92, v93, "Intent property %s is set to be ignored", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v102 = OUTLINED_FUNCTION_54_0();
      (v118)(v102);
      v42(v113, v115);
    }

    else
    {

      v108 = OUTLINED_FUNCTION_54_0();
      (v118)(v108);
      v42(v95, v96);
    }

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_35();

  return MEMORY[0x2821FDEB8]();
}

uint64_t sub_2313072BC()
{
  OUTLINED_FUNCTION_8();
  sub_231369390();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23130732C()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 400);
  v2 = *(v0 + 304);
  v3 = *(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1(v2, v3);
  OUTLINED_FUNCTION_2_0(*(v0 + 224));
  v4 = swift_task_alloc();
  *(v0 + 432) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_4_25(v4);

  return MEMORY[0x2821C6C38](v5, v6, v7, v8, v9, v10);
}

void sub_2313073D8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2313075DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2312177D8();
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v7 = v6;
  }

  v12 = v7;
  v8 = sub_231369EE0();
  sub_231267530(v8);
  if (v12)
  {
    sub_231369EE0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    sub_23125A588(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *a1 = v11;
  }

  else
  {
    sub_2312D0564(a2, a3);
  }

  return result;
}

uint64_t sub_2313076D4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_23136A230();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_231374850)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t ResolutionService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t ResolutionService.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_231307804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23136C1C0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44660, &qword_231376F90);
  *(v6 + 64) = a3;
  sub_231369EE0();
  sub_231369EE0();
  return v6;
}

unint64_t *sub_2313078A4(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_231307FAC(v8, v4, v2);
      MEMORY[0x23192B930](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2312B3C88(0, v4, v5);
  sub_231307DB0(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_231307A08(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      sub_231369EE0();
      v4 = sub_231307F0C(v12, v7, v4, a2);
      MEMORY[0x23192B930](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  v9 = (v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2312B3C88(0, v7, v9);
  sub_231369EE0();
  v10 = sub_231307BCC(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

unint64_t *sub_231307BCC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v25 = result;
  v26 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v28 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(a4 + 16);
    sub_231369EE0();

    if (v18 && (v19 = sub_231215F6C(v16, v17), (v20 & 1) != 0))
    {
      sub_231247A14(*(a4 + 56) + 32 * v19, v27, &qword_27DD443C0, &unk_23136E000);
      sub_231228E9C(v27, &qword_27DD43800, &qword_231377070);
    }

    else
    {
      memset(v27, 0, 24);
      v27[3] = 1;
      sub_231228E9C(v27, &qword_27DD43800, &qword_231377070);

      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_17:
        sub_231241904(v25, a2, v26, v28);
        v23 = v22;

        return v23;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_17;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_231307DB0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    sub_231369EE0();

    v14 = sub_231368530();

    if (v14)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
LABEL_15:
        sub_231241904(result, a2, v18, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_231307F0C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_231307BCC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_231307FAC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_231307DB0(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_231308024(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43668, &qword_23136CBB0);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23120738C(v7, v8, a1, v4);
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
    return sub_231207308(0, v2, 1, a1);
  }

  return result;
}

void *sub_23130813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  v13 = sub_23130825C(a1, v11, v12, a4, a5);
  (*(v9 + 8))(a2, a4);
  return v13;
}

void *sub_23130825C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[6] = a4;
  a3[7] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 3);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  a3[2] = a1;
  return a3;
}

uint64_t sub_231308324(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_231308418;

  return v5(v2 + 16);
}

uint64_t sub_231308418()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_23130853C()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33(v3);
  *v4 = v5;
  v4[1] = sub_231209AAC;
  v6 = OUTLINED_FUNCTION_24_2();

  return sub_2313042D0(v6, v7, v1, v8, v2, v9, v10);
}

uint64_t sub_2313085F0()
{
  OUTLINED_FUNCTION_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v1[1] = sub_231209AAC;
  v3 = OUTLINED_FUNCTION_24_2();

  return v4(v3);
}

uint64_t sub_231308694()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_26(v1);

  return sub_2313053F8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_231308728(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_23130881C;

  return v5(v2 + 16);
}

uint64_t sub_23130881C()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *(v1 + 40);
  v5 = *v0;
  *v3 = *v0;

  v6 = *(v2 + 24);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v6;
  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_231308944()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v1[1] = sub_2311D05C8;
  OUTLINED_FUNCTION_40();

  return sub_231305D74(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_231308A34()
{
  OUTLINED_FUNCTION_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v1[1] = sub_231209AAC;
  v3 = OUTLINED_FUNCTION_24_2();

  return v4(v3);
}

uint64_t sub_231308AD8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[10];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33(v4);
  *v5 = v6;
  v5[1] = sub_2311D05C8;
  v7 = OUTLINED_FUNCTION_24_2();

  return sub_231306450(v7, v8, v1, v2, v9, v3, v10, v11);
}

unint64_t sub_231308BAC()
{
  result = qword_280F7CA30;
  if (!qword_280F7CA30)
  {
    sub_231367DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA30);
  }

  return result;
}

void *sub_231308C64(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_2313690A0();
  v2 = sub_231369EE0();
  v3 = sub_231255354(v2);
  v4 = sub_231369EE0();
  v5 = sub_231255354(v4);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  memcpy(v6 + 4, __dst, 0x48uLL);
  v6[13] = v1;
  v7 = swift_allocObject();
  memcpy(v7 + 2, __dst, 0x48uLL);
  v7[11] = sub_23130ED2C;
  v7[12] = v6;
  sub_2311D38A8(v9, (v7 + 13));
  sub_2311E6694(__dst, v9);
  return v7;
}

void sub_231308D50(uint64_t *a1)
{
  v2 = *(type metadata accessor for RankedCandidateSuggestion(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E65A4(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  sub_23130ED60(v9);
  *a1 = v3;
}

void sub_231308DF8(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E65BC(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  sub_23130EE90(v9);
  *a1 = v3;
}

BOOL sub_231308EAC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) != 0);
  return v6 == 0;
}

void *sub_231308F0C(void *__src, __int128 *a2, uint64_t a3, uint64_t a4)
{
  memcpy(v4 + 2, __src, 0x48uLL);
  v4[11] = a3;
  v4[12] = a4;
  sub_2311D38A8(a2, (v4 + 13));
  return v4;
}

uint64_t sub_231308F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449A8, &unk_2313772C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23136D280;
  sub_231309024(a3, a1, a2, (v8 + 32));
  sub_231309154(a1, (v8 + 72));
  sub_23130924C(a2, a3[1], (v8 + 112));
  v9 = type metadata accessor for NestedTopTierCriteria();
  result = swift_allocObject();
  *(result + 16) = v8;
  a4[3] = v9;
  a4[4] = &off_2845F6930;
  *a4 = result;
  return result;
}

uint64_t sub_231309024@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_15_24();
  v8 = swift_allocObject();
  memcpy(v8 + 2, __src, 0x48uLL);
  v8[11] = a2;
  v8[12] = a3;
  v9 = type metadata accessor for Dedupper();
  OUTLINED_FUNCTION_15_24();
  v10 = swift_allocObject();
  v10[2] = MEMORY[0x277D84F98];
  v10[3] = sub_23130941C;
  v10[4] = 0;
  v10[5] = sub_23130ED54;
  v10[6] = v8;
  v10[7] = sub_23130E438;
  v10[8] = 0;
  v10[9] = sub_2311ECEF4;
  v10[10] = 0;
  v10[11] = 0xD000000000000011;
  v10[12] = 0x8000000231381430;
  a4[3] = v9;
  a4[4] = &off_2845F6918;
  *a4 = v10;
  sub_2311E6694(__dst, &v12);
  sub_231369EE0();
  return sub_231369EE0();
}

uint64_t sub_231309154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_54();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Dedupper();
  OUTLINED_FUNCTION_15_24();
  v6 = swift_allocObject();
  v6[2] = MEMORY[0x277D84F98];
  v6[3] = sub_23130935C;
  v6[4] = 0;
  v6[5] = sub_23130ED4C;
  v6[6] = v4;
  v6[7] = sub_23130E438;
  v6[8] = 0;
  v6[9] = sub_2311ECEF4;
  v6[10] = 0;
  v6[11] = 0xD000000000000014;
  v6[12] = 0x8000000231381410;
  a2[3] = v5;
  a2[4] = &off_2845F6918;
  *a2 = v6;

  return sub_231369EE0();
}

uint64_t sub_23130924C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_54();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = type metadata accessor for Dedupper();
  OUTLINED_FUNCTION_15_24();
  v9 = swift_allocObject();
  v9[2] = MEMORY[0x277D84F98];
  v9[3] = sub_231309574;
  v9[4] = 0;
  v9[5] = sub_23130ED3C;
  v9[6] = v6;
  v9[7] = sub_23122DA98;
  v9[8] = 0;
  v9[9] = sub_23130ED44;
  v9[10] = v7;
  v9[11] = 0xD000000000000017;
  v9[12] = 0x80000002313813F0;
  a3[3] = v8;
  a3[4] = &off_2845F6918;
  *a3 = v9;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_23130939C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00) + 28));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = MEMORY[0x231929610](v4, v5);
  LOBYTE(a2) = sub_2311EFC44(v6, v7, a2);

  return a2 & 1;
}

uint64_t sub_23130941C(uint64_t a1)
{
  v1 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00) + 28));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return MEMORY[0x231929610](v2, v3);
}

BOOL sub_23130947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 40))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
    v8 = (a1 + *(v7 + 28));
    v9 = v8[3];
    v10 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v11 = MEMORY[0x231929610](v9, v10);
    LOBYTE(a3) = sub_2311EFC44(v11, v12, a3);

    if (a3)
    {
      return 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((a1 + *(v7 + 48)), *(a1 + *(v7 + 48) + 24));
      v14 = sub_231367E20();
      v16 = sub_2311EFC44(v14, v15, a4);

      return !v16;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231309574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  __swift_project_boxed_opaque_existential_1((a1 + *(v2 + 48)), *(a1 + *(v2 + 48) + 24));
  return sub_231367E20();
}

uint64_t sub_2313095D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  __swift_project_boxed_opaque_existential_1((a1 + *(v4 + 48)), *(a1 + *(v4 + 48) + 24));
  v5 = sub_231367E20();
  LOBYTE(a2) = sub_2311EFC44(v5, v6, a2);

  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + *(v4 + 40));
  sub_2313692F0();

  sub_231369270();
  if (!v7)
  {

LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  sub_231311760(&qword_280F7C908, MEMORY[0x277D612D0], MEMORY[0x277D612E0]);
  v8 = sub_231369F60();

  return v8 & 1;
}

BOOL sub_231309704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  v9 = *(a1 + *(v8 + 40));
  sub_2313692F0();

  sub_231369270();
  if (!v9)
  {

    return 0;
  }

  sub_231311760(&qword_280F7C908, MEMORY[0x277D612D0], MEMORY[0x277D612E0]);
  v10 = sub_231369F60();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = (a1 + *(v8 + 48));
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v12 = sub_231367E20();
  v14 = sub_2311EFC44(v12, v13, a3);

  if (!v14)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v15 = sub_231367E20();
  v17 = sub_231210AF8(v15, v16, a2);

  v18 = v17;
  if ((v17 & 0x100000000) != 0)
  {
    v18 = 0;
  }

  return v18 > a4;
}

uint64_t sub_231309894(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v273 = a1;
  v280 = sub_2313698C0();
  v249 = *(v280 - 8);
  MEMORY[0x28223BE20](v280);
  v250 = &v230 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v230 - v9;
  MEMORY[0x28223BE20](v11);
  v264 = &v230 - v12;
  MEMORY[0x28223BE20](v13);
  v244 = &v230 - v14;
  v281 = sub_231367290();
  v15 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v257 = &v230 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v256 = &v230 - v18;
  MEMORY[0x28223BE20](v19);
  v279 = &v230 - v20;
  v242 = sub_231369330();
  v21 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v23 = &v230 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449C0, &qword_2313772F0);
  MEMORY[0x28223BE20](v241);
  v240 = &v230 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449C8, &qword_2313772F8);
  MEMORY[0x28223BE20](v25 - 8);
  v239 = &v230 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v230 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v243 = &v230 - v31;
  MEMORY[0x28223BE20](v32);
  v248 = &v230 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  MEMORY[0x28223BE20](v34 - 8);
  v252 = &v230 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v230 - v37;
  v275 = type metadata accessor for RankedCandidateSuggestion(0);
  MEMORY[0x28223BE20](v275);
  v271 = (&v230 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v287 = &v230 - v41;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  v253 = *(v290 - 1);
  MEMORY[0x28223BE20](v290);
  v245 = &v230 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v237 = &v230 - v44;
  MEMORY[0x28223BE20](v45);
  v274 = &v230 - v46;
  MEMORY[0x28223BE20](v47);
  v261 = &v230 - v48;
  MEMORY[0x28223BE20](v49);
  v270 = (&v230 - v50);
  MEMORY[0x28223BE20](v51);
  v272 = &v230 - v52;
  MEMORY[0x28223BE20](v53);
  v278 = &v230 - v54;
  MEMORY[0x28223BE20](v55);
  v263 = &v230 - v56;
  MEMORY[0x28223BE20](v57);
  v238 = &v230 - v58;
  MEMORY[0x28223BE20](v59);
  v288 = &v230 - v60;
  v246 = *(a4 + 24);
  v295[0] = a2;
  sub_231369EE0();
  sub_231308DF8(v295);
  v62 = *(v295[0] + 16);
  v255 = a3;
  v247 = v15;
  if (v62)
  {
    v231 = v23;
    v260 = v10;
    v269 = 0;
    v63 = (*(v253 + 80) + 32) & ~*(v253 + 80);
    v236 = v295[0];
    v259 = v63;
    v64 = v295[0] + v63;
    v235 = (v21 + 104);
    v266 = *(v253 + 72);
    v230 = (v21 + 32);
    v232 = (v21 + 8);
    v265 = (v15 + 104);
    *&v276 = v15 + 8;
    v289 = MEMORY[0x277D84F90];
    v65 = *MEMORY[0x277D612F0];
    v233 = *MEMORY[0x277D60720];
    v234 = v65;
    v262 = *MEMORY[0x277D60728];
    v277 = (v249 + 8);
    v254 = *MEMORY[0x277D60730];
    *&v61 = 136315138;
    v251 = v61;
    *&v61 = 136315394;
    v258 = v61;
    v66 = v290;
    v267 = v38;
    v268 = v29;
    v67 = v288;
    while (1)
    {
      v285 = v64;
      v286 = v62;
      sub_231311704(v64, v67, &qword_27DD434C0, &unk_23136CA00);
      v68 = v287;
      sub_2311E1984(v67, v287);
      if (*(v67 + v66[8]) == 1)
      {
        sub_231311704(v67 + *(v275 + 24), v38, &qword_27DD42F20, &qword_23136D410);
        v69 = sub_231366E80();
        if (__swift_getEnumTagSinglePayload(v38, 1, v69) == 1)
        {
          sub_231228E9C(v38, &qword_27DD42F20, &qword_23136D410);
        }

        else
        {
          v70 = sub_231366E60();
          (*(*(v69 - 8) + 8))(v38, v69);
          if (v70)
          {
            v71 = v273[3];
            v72 = v273[4];
            __swift_project_boxed_opaque_existential_1(v273, v71);
            if (((*(v72 + 8))(v67, 0, v71, v72) & 1) != 0 && v269 < v255)
            {
              swift_beginAccess();
              __swift_project_boxed_opaque_existential_1((v68 + *(v275 + 20)), *(v68 + *(v275 + 20) + 24));
              v73 = v239;
              sub_231317680(v239);
              v74 = sub_231367260();
              if (__swift_getEnumTagSinglePayload(v73, 1, v74) == 1)
              {
                sub_231228E9C(v73, &qword_27DD449C8, &qword_2313772F8);
                v75 = 1;
                v76 = v242;
                v77 = v243;
                v78 = v248;
              }

              else
              {
                v150 = v248;
                sub_231367250();
                v78 = v150;
                (*(*(v74 - 8) + 8))(v73, v74);
                v75 = 0;
                v76 = v242;
                v77 = v243;
              }

              __swift_storeEnumTagSinglePayload(v78, v75, 1, v76);
              (*v235)(v77, v234, v76);
              __swift_storeEnumTagSinglePayload(v77, 0, 1, v76);
              v151 = v240;
              v152 = *(v241 + 48);
              sub_231311704(v78, v240, &qword_27DD43F00, &unk_231375F50);
              v284 = v152;
              v153 = v151 + v152;
              v154 = v76;
              sub_231311704(v77, v153, &qword_27DD43F00, &unk_231375F50);
              if (__swift_getEnumTagSinglePayload(v151, 1, v76) == 1)
              {
                sub_231228E9C(v77, &qword_27DD43F00, &unk_231375F50);
                sub_231228E9C(v248, &qword_27DD43F00, &unk_231375F50);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v151 + v284, 1, v76);
                v156 = v287;
                v157 = v238;
                if (EnumTagSinglePayload == 1)
                {
                  sub_231228E9C(v151, &qword_27DD43F00, &unk_231375F50);
                  v158 = v271;
                  v159 = v244;
                  goto LABEL_41;
                }

LABEL_38:
                sub_231228E9C(v151, &qword_27DD449C0, &qword_2313772F0);
                v158 = v271;
                v159 = v244;
                goto LABEL_39;
              }

              sub_231311704(v151, v29, &qword_27DD43F00, &unk_231375F50);
              v160 = v284;
              if (__swift_getEnumTagSinglePayload(v151 + v284, 1, v76) == 1)
              {
                sub_231228E9C(v243, &qword_27DD43F00, &unk_231375F50);
                sub_231228E9C(v248, &qword_27DD43F00, &unk_231375F50);
                (*v232)(v29, v76);
                v156 = v287;
                v157 = v238;
                goto LABEL_38;
              }

              v163 = v231;
              (*v230)(v231, v151 + v160, v76);
              sub_231311760(&qword_280F7C8E8, MEMORY[0x277D61310], MEMORY[0x277D61320]);
              LODWORD(v284) = sub_231369F60();
              v164 = *v232;
              (*v232)(v163, v154);
              sub_231228E9C(v243, &qword_27DD43F00, &unk_231375F50);
              sub_231228E9C(v248, &qword_27DD43F00, &unk_231375F50);
              v164(v29, v154);
              sub_231228E9C(v151, &qword_27DD43F00, &unk_231375F50);
              v158 = v271;
              v156 = v287;
              v157 = v238;
              v159 = v244;
              if (v284)
              {
LABEL_41:
                v165 = v279;
                v166 = v281;
                (*v265)(v279, v262, v281);
                sub_23130B6E4(v165, v156, v158);
                (*v276)(v165, v166);
              }

              else
              {
LABEL_39:
                v161 = v279;
                v162 = v281;
                (*v265)(v279, v233, v281);
                sub_23130B6E4(v161, v156, v158);
                (*v276)(v161, v162);
              }

              swift_beginAccess();
              sub_23128D830(v158, v156);
              sub_231369150();
              sub_231311704(v288, v157, &qword_27DD434C0, &unk_23136CA00);
              v167 = sub_2313698A0();
              v168 = sub_23136A3A0();
              if (os_log_type_enabled(v167, v168))
              {
                v169 = swift_slowAlloc();
                v294[0] = swift_slowAlloc();
                v170 = v294[0];
                *v169 = v251;
                v171 = sub_231369040();
                v173 = v172;
                sub_231228E9C(v157, &qword_27DD434C0, &unk_23136CA00);
                v174 = sub_2311CFD58(v171, v173, v294);

                *(v169 + 4) = v174;
                _os_log_impl(&dword_2311CB000, v167, v168, "Added a topTier suggestion %s", v169, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v170);
                MEMORY[0x23192B930](v170, -1, -1);
                MEMORY[0x23192B930](v169, -1, -1);

                (*v277)(v244, v280);
              }

              else
              {

                sub_231228E9C(v157, &qword_27DD434C0, &unk_23136CA00);
                (*v277)(v159, v280);
              }

              ++v269;
              v105 = v287;
              v106 = v288;
              goto LABEL_20;
            }
          }
        }
      }

      v79 = *(v67 + v66[10]);
      sub_2313692F0();

      v80 = sub_2313692C0();
      if (!v79)
      {
        break;
      }

      v294[0] = v79;
      v293[0] = v80;
      sub_231311760(&qword_280F7C908, MEMORY[0x277D612D0], MEMORY[0x277D612E0]);
      v81 = sub_231369F60();

      v82 = v263;
      if ((v81 & 1) == 0)
      {
        goto LABEL_15;
      }

      v83 = v279;
      v84 = v281;
      (*v265)(v279, v254, v281);
      swift_beginAccess();
      v85 = v271;
      sub_23130B6E4(v83, v68, v271);
      v284 = *v276;
      (v284)(v83, v84);
LABEL_16:
      swift_beginAccess();
      sub_23128D830(v85, v68);
      v88 = v264;
      sub_231369150();
      sub_231311704(v67, v82, &qword_27DD434C0, &unk_23136CA00);
      v89 = v68;
      v90 = sub_2313698A0();
      v91 = sub_23136A3A0();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v294[0] = v93;
        *v92 = v258;
        v94 = sub_231369040();
        v95 = v82;
        v97 = v96;
        sub_231228E9C(v95, &qword_27DD434C0, &unk_23136CA00);
        v98 = sub_2311CFD58(v94, v97, v294);

        *(v92 + 4) = v98;
        *(v92 + 12) = 2080;
        swift_beginAccess();
        v99 = v279;
        sub_2313672D0();
        v100 = sub_231367280();
        v102 = v101;
        v103 = v99;
        v66 = v290;
        (v284)(v103, v281);
        v104 = sub_2311CFD58(v100, v102, v294);

        *(v92 + 14) = v104;
        _os_log_impl(&dword_2311CB000, v90, v91, "Added a other tier suggestion %s to %s", v92, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23192B930](v93, -1, -1);
        MEMORY[0x23192B930](v92, -1, -1);
      }

      else
      {

        sub_231228E9C(v82, &qword_27DD434C0, &unk_23136CA00);
      }

      (*v277)(v88, v280);
      v105 = v89;
      v106 = v288;
LABEL_20:
      v107 = v272;
      sub_231311704(v106, v272, &qword_27DD434C0, &unk_23136CA00);
      swift_beginAccess();
      v108 = v278;
      sub_2311E1984(v105, v278);
      sub_2311CF324(v107 + v66[7], v108 + v66[7]);
      v109 = v66[9];
      LODWORD(v284) = *(v107 + v66[8]);
      v110 = *(v107 + v109);
      v111 = *(v107 + v66[10]);
      v112 = v107 + v66[11];
      v283 = *v112;
      LODWORD(v282) = *(v112 + 8);
      sub_2311CF324(v107 + v66[12], v108 + v66[12]);
      v113 = v66[13];
      v114 = sub_231368BC0();
      (*(*(v114 - 8) + 16))(v108 + v113, v107 + v113, v114);
      v115 = v66[14];
      v116 = v290[15];
      v117 = (v107 + v115);
      v118 = *v117;
      v119 = *(v117 + 8);
      v120 = sub_231367C70();
      (*(*(v120 - 8) + 16))(v108 + v116, v107 + v116, v120);
      v121 = v290[16];
      v122 = sub_231369050();
      v123 = v108 + v121;
      v124 = v107 + v121;
      v66 = v290;
      (*(*(v122 - 8) + 16))(v123, v124, v122);

      v125 = v107;
      v126 = v108;
      sub_231228E9C(v125, &qword_27DD434C0, &unk_23136CA00);
      *(v108 + v66[8]) = v284;
      *(v108 + v66[9]) = v110;
      *(v108 + v66[10]) = v111;
      v127 = v108 + v66[11];
      *v127 = v283;
      *(v127 + 8) = v282;
      v128 = v108 + v66[14];
      *v128 = v118;
      *(v128 + 8) = v119;
      v129 = v273[3];
      v130 = v273[4];
      __swift_project_boxed_opaque_existential_1(v273, v129);
      if ((*(v130 + 16))(v126, v129, v130))
      {
        v131 = v260;
        sub_231369150();
        v132 = v261;
        sub_231311704(v288, v261, &qword_27DD434C0, &unk_23136CA00);
        v133 = sub_2313698A0();
        v134 = sub_23136A3A0();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = v131;
          v137 = swift_slowAlloc();
          v294[0] = v137;
          *v135 = v251;
          v138 = sub_231369040();
          v139 = v132;
          v141 = v140;
          sub_231228E9C(v139, &qword_27DD434C0, &unk_23136CA00);
          v142 = sub_2311CFD58(v138, v141, v294);

          *(v135 + 4) = v142;
          _os_log_impl(&dword_2311CB000, v133, v134, "Filtering out %s", v135, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v137);
          MEMORY[0x23192B930](v137, -1, -1);
          MEMORY[0x23192B930](v135, -1, -1);

          (*v277)(v136, v280);
        }

        else
        {

          sub_231228E9C(v132, &qword_27DD434C0, &unk_23136CA00);
          (*v277)(v131, v280);
        }

        sub_231228E9C(v278, &qword_27DD434C0, &unk_23136CA00);
        v67 = v288;
        sub_231228E9C(v288, &qword_27DD434C0, &unk_23136CA00);
        sub_2311E1928(v287);
        v145 = v274;
        v38 = v267;
        v29 = v268;
        v149 = v266;
      }

      else
      {
        sub_231311704(v126, v270, &qword_27DD434C0, &unk_23136CA00);
        v143 = v289;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v267;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23126DC68(0, *(v143 + 16) + 1, 1, v143);
          v143 = v175;
        }

        v145 = v274;
        v29 = v268;
        v147 = *(v143 + 16);
        v146 = *(v143 + 24);
        v289 = v143;
        if (v147 >= v146 >> 1)
        {
          sub_23126DC68(v146 > 1, v147 + 1, 1, v289);
          v289 = v176;
        }

        sub_231228E9C(v126, &qword_27DD434C0, &unk_23136CA00);
        v67 = v288;
        sub_231228E9C(v288, &qword_27DD434C0, &unk_23136CA00);
        v148 = v289;
        *(v289 + 16) = v147 + 1;
        v149 = v266;
        sub_231311624(v270, v148 + v259 + v147 * v266);
        sub_2311E1928(v287);
      }

      v64 = v285 + v149;
      v62 = v286 - 1;
      if (v286 == 1)
      {

        v178 = v255;
        v179 = v253;
        result = v289;
        goto LABEL_47;
      }
    }

    v82 = v263;
LABEL_15:
    v86 = v279;
    v87 = v281;
    (*v265)(v279, v262, v281);
    swift_beginAccess();
    v85 = v271;
    sub_23130B6E4(v86, v68, v271);
    v284 = *v276;
    (v284)(v86, v87);
    goto LABEL_16;
  }

  v178 = a3;

  v269 = 0;
  result = MEMORY[0x277D84F90];
  v179 = v253;
  v145 = v274;
LABEL_47:
  v181 = 0;
  LODWORD(v283) = *MEMORY[0x277D60728];
  v284 = v247 + 8;
  v285 = (v247 + 104);
  LODWORD(v278) = *MEMORY[0x277D60720];
  v182 = &unk_23136CA00;
  v183 = &qword_27DD42F20;
  v277 = (v249 + 8);
  *&v177 = 136315138;
  v276 = v177;
  v184 = v252;
  while (v269 < v178 && v181 < *(result + 16))
  {
    v185 = (*(v179 + 80) + 32) & ~*(v179 + 80);
    v288 = v181;
    v289 = result;
    v286 = v185;
    v287 = *(v179 + 72) * v181;
    sub_231311704(result + v185 + v287, v145, &qword_27DD434C0, v182);
    swift_beginAccess();
    sub_231311704(v145 + *(v275 + 24), v184, v183, &qword_23136D410);
    v186 = v183;
    v187 = v182;
    v188 = sub_231366E80();
    if (__swift_getEnumTagSinglePayload(v184, 1, v188) == 1)
    {
      sub_231228E9C(v184, v186, &qword_23136D410);
      sub_231228E9C(v145, &qword_27DD434C0, v187);
      v182 = v187;
      goto LABEL_68;
    }

    v189 = sub_231366E60();
    (*(*(v188 - 8) + 8))(v184, v188);
    if ((v189 & 1) == 0)
    {
      v182 = &unk_23136CA00;
      sub_231228E9C(v145, &qword_27DD434C0, &unk_23136CA00);
      goto LABEL_68;
    }

    sub_2313672D0();
    v282 = *v285;
    v282(v257, v283, v281);
    sub_231311760(&qword_27DD449B8, MEMORY[0x277D60738], MEMORY[0x277D60748]);
    sub_23136A140();
    sub_23136A140();
    if (v293[0] == v291 && v293[1] == v292)
    {
      v191 = 1;
    }

    else
    {
      v191 = sub_23136A900();
    }

    v192 = v250;
    v193 = *v284;
    v194 = v281;
    (*v284)(v257, v281);
    v193(v256, v194);

    if ((v191 & 1) == 0)
    {
      v145 = v274;
LABEL_66:
      v182 = &unk_23136CA00;
      sub_231228E9C(v145, &qword_27DD434C0, &unk_23136CA00);
      v178 = v255;
      v184 = v252;
LABEL_67:
      v179 = v253;
LABEL_68:
      v183 = v186;
      goto LABEL_69;
    }

    v195 = v273[3];
    v196 = v273[4];
    __swift_project_boxed_opaque_existential_1(v273, v195);
    v145 = v274;
    if (((*(v196 + 8))(v274, 1, v195, v196) & 1) == 0)
    {
      goto LABEL_66;
    }

    v197 = v290;
    v184 = v252;
    if (((*(v145 + v290[8]) | v246) & 1) == 0)
    {
      v182 = &unk_23136CA00;
      sub_231228E9C(v145, &qword_27DD434C0, &unk_23136CA00);
      v178 = v255;
      goto LABEL_67;
    }

    v198 = v192;
    sub_231369150();
    v199 = sub_2313698A0();
    v200 = sub_23136A3A0();
    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      v270 = v201;
      v271 = swift_slowAlloc();
      v293[0] = v271;
      *v201 = v276;
      v202 = v274;
      v203 = sub_231369040();
      v205 = sub_2311CFD58(v203, v204, v293);

      v206 = v270;
      *(v270 + 1) = v205;
      _os_log_impl(&dword_2311CB000, v199, v200, "Promoting candidate: %s to tier1", v206, 0xCu);
      v207 = v271;
      __swift_destroy_boxed_opaque_existential_1Tm(v271);
      MEMORY[0x23192B930](v207, -1, -1);
      MEMORY[0x23192B930](v206, -1, -1);

      (*v277)(v250, v280);
    }

    else
    {

      (*v277)(v198, v280);
      v202 = v274;
    }

    v208 = v282;
    v209 = v237;
    sub_231311704(v202, v237, &qword_27DD434C0, &unk_23136CA00);
    v210 = v279;
    v211 = v281;
    v208(v279, v278, v281);
    v212 = v202;
    v213 = v272;
    sub_23130B6E4(v210, v212, v272);
    v193(v210, v211);
    sub_2311CF324(v209 + v197[7], v213 + v197[7]);
    v214 = v197[9];
    LODWORD(v282) = *(v209 + v197[8]);
    v215 = *(v209 + v214);
    v216 = *(v209 + v197[10]);
    v217 = v209 + v197[11];
    v271 = *v217;
    LODWORD(v270) = *(v217 + 8);
    sub_2311CF324(v209 + v197[12], v213 + v197[12]);
    v218 = v197[13];
    v219 = sub_231368BC0();
    (*(*(v219 - 8) + 16))(v213 + v218, v209 + v218, v219);
    v220 = v197[15];
    v221 = v209 + v197[14];
    v268 = *v221;
    LODWORD(v267) = *(v221 + 8);
    v222 = sub_231367C70();
    (*(*(v222 - 8) + 16))(v213 + v220, v209 + v220, v222);
    v223 = v197[16];
    v224 = sub_231369050();
    v225 = v213 + v223;
    v226 = v209 + v223;
    v182 = &unk_23136CA00;
    (*(*(v224 - 8) + 16))(v225, v226, v224);

    sub_231228E9C(v209, &qword_27DD434C0, &unk_23136CA00);
    *(v213 + v197[8]) = v282;
    *(v213 + v197[9]) = v215;
    *(v213 + v197[10]) = v216;
    v227 = v213 + v197[11];
    *v227 = v271;
    *(v227 + 8) = v270;
    v228 = v213 + v197[14];
    *v228 = v268;
    *(v228 + 8) = v267;
    sub_231311694(v213, v212);
    sub_231311704(v212, v245, &qword_27DD434C0, &unk_23136CA00);
    v145 = v212;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23128D808(v289);
      v289 = v229;
    }

    v178 = v255;
    v184 = v252;
    v179 = v253;
    v183 = v186;
    if (v288 >= *(v289 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    sub_231311694(v245, v289 + v286 + v287);
    sub_231228E9C(v145, &qword_27DD434C0, &unk_23136CA00);
    ++v269;
LABEL_69:
    result = v289;
    v181 = v288 + 1;
  }

  return result;
}

uint64_t sub_23130B6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43780, &qword_231377300);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_231367300();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  v16 = type metadata accessor for RankedCandidateSuggestion(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  sub_2311E1984(a2, v19 - v18);
  (*(v11 + 16))(v15, a2, v9);
  v21 = sub_231367290();
  (*(*(v21 - 8) + 16))(v8, a1, v21);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v21);
  sub_2313672A0();
  sub_2311CF324(v20 + v17[7], a3 + v17[7]);
  sub_231311704(v20 + v17[8], a3 + v17[8], &qword_27DD42F20, &qword_23136D410);
  v22 = v17[9];
  sub_231369050();
  OUTLINED_FUNCTION_7_0();
  (*(v23 + 16))(a3 + v22, v20 + v22);
  return sub_2311E1928(v20);
}

uint64_t sub_23130B920()
{
  OUTLINED_FUNCTION_8();
  v1[39] = v2;
  v1[40] = v0;
  v1[38] = v3;
  v4 = sub_2313698C0();
  v1[41] = v4;
  v1[42] = *(v4 - 8);
  v1[43] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23130B9D8()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[40];
  memcpy(v0 + 11, (v1 + 16), 0x48uLL);
  v0[44] = v0[11];
  memcpy(v0 + 20, (v1 + 16), 0x48uLL);
  sub_2311E6694((v0 + 11), (v0 + 29));
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_23130BAA8;
  v3 = v0[39];
  v4 = v0[38];

  return sub_23130BE10(v4, v3, (v0 + 20));
}

uint64_t sub_23130BAA8()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v1[46] = v2;

  memcpy(v1 + 2, v1 + 20, 0x48uLL);
  sub_231286838((v1 + 2));
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23130BBB4(uint64_t a1)
{
  v22 = v1;
  v2 = v1[46];
  if (*(v2 + 16) >= v1[44])
  {
    v3 = v1[40];
    sub_231369150();

    v4 = sub_2313698A0();
    v5 = sub_23136A3A0();
    if (OUTLINED_FUNCTION_40_1(v5))
    {
      v6 = v1[44];
      v7 = OUTLINED_FUNCTION_60();
      *v7 = 134217984;
      *(v7 + 4) = v6;

      _os_log_impl(&dword_2311CB000, v4, v3, "combined suggestions more than max (%ld). Reranking top tiers and Truncating", v7, 0xCu);
      OUTLINED_FUNCTION_29();
    }

    else
    {
    }

    v8 = v1[46];
    (*(v1[42] + 8))(v1[43], v1[41]);
    v21 = v8;
    sub_231369EE0();
    sub_231308D50(&v21);
    v9 = v1[44];

    sub_2312EEC20(v9, v21);
    v11 = v10;
    v13 = v12;
    if (v12)
    {
      sub_23136A930();
      swift_unknownObjectRetain_n();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        swift_unknownObjectRelease();
        v17 = MEMORY[0x277D84F90];
      }

      v18 = *(v17 + 16);

      if (__OFSUB__(v13 >> 1, v11))
      {
        __break(1u);
      }

      else if (v18 == (v13 >> 1) - v11)
      {
        v2 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v2)
        {
          goto LABEL_14;
        }

        v2 = MEMORY[0x277D84F90];
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    v14 = OUTLINED_FUNCTION_27();
    sub_231259354(v14, v15, v11, v13);
    v2 = v16;
LABEL_13:
    swift_unknownObjectRelease();
  }

LABEL_14:

  v19 = v1[1];

  return v19(v2);
}

uint64_t sub_23130BE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 312) = a3;
  *(v4 + 320) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449B0, &unk_2313772E0);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = *(type metadata accessor for RankedCandidateSuggestion(0) - 8);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v6 = sub_231367290();
  *(v4 + 368) = v6;
  *(v4 + 376) = *(v6 - 8);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  v7 = sub_2313698C0();
  *(v4 + 448) = v7;
  *(v4 + 456) = *(v7 - 8);
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  *(v4 + 512) = v8;
  *(v4 + 520) = *(v8 - 8);
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();
  *(v4 + 592) = swift_task_alloc();
  *(v4 + 600) = swift_task_alloc();
  *(v4 + 608) = swift_task_alloc();
  *(v4 + 144) = *a3;
  *(v4 + 616) = *(a3 + 16);
  v9 = *(a3 + 40);
  *(v4 + 16) = *(a3 + 24);
  *(v4 + 32) = v9;
  *(v4 + 48) = *(a3 + 56);
  v10 = swift_task_alloc();
  *(v4 + 624) = v10;
  *v10 = v4;
  v10[1] = sub_23130C1D4;

  return sub_2312C61EC();
}

uint64_t sub_23130C1D4()
{
  OUTLINED_FUNCTION_8();
  *(*v0 + 632) = v1;

  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23130C2C8()
{
  v366 = v0;
  v1 = v0[79];
  v2 = v0[77];
  v3 = v0[47];
  v5 = v0[39];
  v4 = v0[40];
  v326 = *(v4 + 96);
  v329 = *(v4 + 88);
  v329();
  v360 = *v5;
  v361 = v2;
  v362 = *(v5 + 24);
  v363 = *(v5 + 40);
  v364 = *(v5 + 56);
  v359 = v0;
  result = sub_231309894(v0 + 8, v1, v2, &v360);
  v7 = result;
  v8 = 0;
  buf = *(result + 16);
  v358 = (v3 + 104);
  v357 = (v3 + 8);
  v335 = MEMORY[0x277D84F90];
  v347 = result;
  while (buf != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      return result;
    }

    v9 = v359[76];
    OUTLINED_FUNCTION_35_0();
    v11 = *(v10 + 72);
    v345 = v12;
    sub_231311704(v7 + v12 + v11 * v8, v9, &qword_27DD434C0, &unk_23136CA00);
    sub_2313672D0();
    v13 = OUTLINED_FUNCTION_8_26();
    v14(v13);
    OUTLINED_FUNCTION_1_41();
    sub_231311760(&qword_27DD449B8, v15, MEMORY[0x277D60748]);
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    v17 = v359[20];
    v18 = v359[22];
    v19 = v359[23];
    v20 = v359[55];
    v21 = v17 == v18 && v359[21] == v19;
    if (v21)
    {
      v26 = *v357;
      v27 = OUTLINED_FUNCTION_40_14();
      v26(v27);
      v28 = OUTLINED_FUNCTION_17_18();
      v26(v28);

LABEL_11:
      sub_231311624(v359[76], v359[75]);
      v29 = v335;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v360 = v335;
      v7 = v347;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_6_25();
        v29 = v360;
      }

      OUTLINED_FUNCTION_9_27();
      if (v32)
      {
        v34 = OUTLINED_FUNCTION_3_35(v31);
        OUTLINED_FUNCTION_32_14(v34);
        v29 = v360;
      }

      ++v8;
      v33 = v359[75];
      *(v29 + 16) = v19;
      v335 = v29;
      result = sub_231311624(v33, v29 + v345 + v20 * v11);
    }

    else
    {
      v22 = OUTLINED_FUNCTION_16_24(v17, v16, v18);
      v23 = *v357;
      v24 = OUTLINED_FUNCTION_40_14();
      v23(v24);
      v25 = OUTLINED_FUNCTION_17_18();
      v23(v25);

      if (v22)
      {
        goto LABEL_11;
      }

      result = sub_231228E9C(v359[76], &qword_27DD434C0, &unk_23136CA00);
      ++v8;
      v7 = v347;
    }
  }

  v35 = v359;
  sub_231369150();

  v36 = sub_2313698A0();
  v37 = sub_23136A3A0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_60();
    v320 = swift_slowAlloc();
    v365[0] = v320;
    *v38 = 136315138;
    v39 = *(v335 + 16);
    v40 = MEMORY[0x277D84F90];
    if (v39)
    {
      v316 = v38;
      LODWORD(v317) = v37;
      v318 = v36;
      v345 = v359[64];
      *&v360 = MEMORY[0x277D84F90];
      sub_2311F4E34(0);
      v40 = v360;
      OUTLINED_FUNCTION_0_37();
      v42 = v335 + v41;
      v339 = *(v43 + 72);
      do
      {
        v44 = v359[74];
        sub_231311704(v42, v44, &qword_27DD434C0, &unk_23136CA00);
        v45 = sub_231369040();
        v47 = v46;
        sub_231228E9C(v44, &qword_27DD434C0, &unk_23136CA00);
        *&v360 = v40;
        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        if (v49 >= v48 >> 1)
        {
          v51 = OUTLINED_FUNCTION_3_35(v48);
          sub_2311F4E34(v51);
          v40 = v360;
        }

        *(v40 + 16) = v49 + 1;
        v50 = v40 + 16 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v47;
        v42 += v339;
        --v39;
      }

      while (v39);
      v36 = v318;
      LOBYTE(v37) = v317;
    }

    v54 = v359[63];
    v56 = v359[56];
    v55 = v359[57];
    v359[38] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
    sub_2311E5648();
    v57 = sub_231369F50();
    v59 = v58;

    v60 = sub_2311CFD58(v57, v59, v365);

    *(v38 + 4) = v60;
    _os_log_impl(&dword_2311CB000, v36, v37, "Found tier1 suggestions:\n%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v320);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v52 = *(v55 + 8);
    v52(v54, v56);
    v7 = v347;
  }

  else
  {
    OUTLINED_FUNCTION_23_16();

    v52 = v359[1];
    v53 = OUTLINED_FUNCTION_27();
    (v52)(v53);
    v35 = v359;
  }

  if (!*(v335 + 16))
  {

    sub_231369150();
    v64 = sub_2313698A0();
    v65 = sub_23136A3A0();
    if (OUTLINED_FUNCTION_40_1(v65))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_57(&dword_2311CB000, v66, v67, "Unable to find top tiered candidates. Using all suggestions as eligible");
      OUTLINED_FUNCTION_29();
    }

    v68 = v359[79];
    v69 = v359[62];
    v70 = v359[56];

    v52(v69, v70);
    v71 = *(v68 + 16);
    v72 = v359;
    v73 = v359[79];
    if (v71)
    {
      v74 = v359[64];
      v75 = OUTLINED_FUNCTION_5_28(MEMORY[0x277D84F90]);
      sub_2311F5764(v75, v71, 0);
      v76 = v360;
      OUTLINED_FUNCTION_0_37();
      v340 = v77;
      v78 = v73 + v77;
      v336 = *(v79 + 72);
      do
      {
        bufd = v76;
        v80 = v72[74];
        v81 = v72[73];
        sub_231311704(v78, v80, &qword_27DD434C0, &unk_23136CA00);
        sub_2311E1984(v80, v81);
        sub_2311CF324(v80 + v74[7], v81 + v74[7]);
        v82 = *(v80 + v74[9]);
        v7 = *(v80 + v74[10]);
        OUTLINED_FUNCTION_14_26();
        sub_231368BC0();
        OUTLINED_FUNCTION_7_0();
        v83 = OUTLINED_FUNCTION_13_21();
        v84(v83);
        v85 = v80 + v74[14];
        v86 = *v85;
        v87 = *(v85 + 8);
        sub_231367C70();
        OUTLINED_FUNCTION_7_0();
        v88 = OUTLINED_FUNCTION_13_21();
        v89(v88);
        sub_231369050();
        OUTLINED_FUNCTION_7_0();
        v90 = OUTLINED_FUNCTION_13_21();
        v91(v90);

        sub_231228E9C(v80, &qword_27DD434C0, &unk_23136CA00);
        *(v81 + v74[8]) = 1;
        *(v81 + v74[9]) = v82;
        *(v81 + v74[10]) = v7;
        OUTLINED_FUNCTION_26_18(v74[11], v310, v311, v312, v313, v314, v315, v316, v317, v318, v320, v326, v329, v336, v340, v345, v347);
        v92 = v81 + v74[14];
        *v92 = v86;
        v76 = bufd;
        *(v92 + 8) = v87;
        *&v360 = bufd;
        v94 = *(bufd + 2);
        v93 = *(bufd + 3);
        if (v94 >= v93 >> 1)
        {
          v96 = OUTLINED_FUNCTION_3_35(v93);
          OUTLINED_FUNCTION_32_14(v96);
          v76 = v360;
        }

        v72 = v359;
        v95 = v359[73];
        *(v76 + 16) = v94 + 1;
        sub_231311624(v95, v76 + v340 + v94 * v336);
        v78 += v336;
        --v71;
      }

      while (v71);
    }

    else
    {

      v76 = MEMORY[0x277D84F90];
    }

    v148 = v72[77];
    (v329)(v132);
    v360 = *(v72 + 9);
    v361 = v148;
    OUTLINED_FUNCTION_25_17();
    v149 = sub_231309894(v72 + 13, v76, v148, &v360);

    __swift_destroy_boxed_opaque_existential_1Tm(v72 + 13);
    sub_231369150();
    sub_231369EE0();
    v150 = sub_2313698A0();
    v151 = sub_23136A3A0();

    v332 = v151;
    bufb = v149;
    if (!os_log_type_enabled(v150, v151))
    {

      v174 = OUTLINED_FUNCTION_27();
      v175(v174);
      goto LABEL_108;
    }

    OUTLINED_FUNCTION_60();
    result = OUTLINED_FUNCTION_33_15();
    v152 = 0;
    v322 = result;
    v365[0] = result;
    v327 = v151;
    *v151 = 136315138;
    v348 = *(v149 + 16);
    v337 = MEMORY[0x277D84F90];
    for (i = v150; ; v150 = i)
    {
      while (1)
      {
        if (v348 == v152)
        {
          if (*(v337 + 16))
          {
            v176 = OUTLINED_FUNCTION_4_26(MEMORY[0x277D84F90]);
            sub_2311F4E34(v176);
            v177 = v360;
            OUTLINED_FUNCTION_0_37();
            OUTLINED_FUNCTION_22_20();
            do
            {
              sub_231311704(v150, v72[74], &qword_27DD434C0, &unk_23136CA00);
              sub_231369040();
              OUTLINED_FUNCTION_31_21();
              OUTLINED_FUNCTION_36_13();
              if (v32)
              {
                OUTLINED_FUNCTION_3_35(v178);
                OUTLINED_FUNCTION_39_12();
                sub_2311F4E34(v179);
                v177 = v360;
              }

              OUTLINED_FUNCTION_18_21();
            }

            while (!v21);

            v150 = i;
          }

          else
          {

            v177 = MEMORY[0x277D84F90];
          }

          v227 = MEMORY[0x23192A860](v177, MEMORY[0x277D837D0]);
          v229 = v228;

          v230 = sub_2311CFD58(v227, v229, v365);

          *(v327 + 4) = v230;
          OUTLINED_FUNCTION_30_15(&dword_2311CB000, v231, v232, "Found new tiering: %s", v233, v234, v235, v236, v310, v311, v312, v313, v314, v315, v316, v317, v318, v322, v327, v332);
          __swift_destroy_boxed_opaque_existential_1Tm(v323);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_29();

          v237 = OUTLINED_FUNCTION_27();
          v238(v237);
          v149 = bufb;
LABEL_108:
          v239 = *(v149 + 16);
          if (!v239)
          {
            goto LABEL_147;
          }

          v35 = v359;
          OUTLINED_FUNCTION_4_26(MEMORY[0x277D84F90]);
          sub_2311F571C();
          v187 = v360;
          OUTLINED_FUNCTION_0_37();
          v241 = v149 + v240;
          v243 = *(v242 + 72);
          do
          {
            v244 = v359[74];
            v245 = v359[45];
            OUTLINED_FUNCTION_45_10();
            sub_2311E1984(v244, v245);
            v246 = OUTLINED_FUNCTION_17_18();
            sub_231228E9C(v246, v247, &unk_23136CA00);
            OUTLINED_FUNCTION_38_11();
            if (v32)
            {
              OUTLINED_FUNCTION_3_35(v248);
              OUTLINED_FUNCTION_39_12();
              sub_2311F571C();
              v187 = v360;
            }

            *(v187 + 16) = v244;
            OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_29_14(v249, v250);
            v241 += v243;
            --v239;
          }

          while (v239);
LABEL_146:
          __swift_destroy_boxed_opaque_existential_1Tm(v35 + 8);

          goto LABEL_149;
        }

        if (v152 >= *(v149 + 16))
        {
          goto LABEL_153;
        }

        v153 = v72[52];
        OUTLINED_FUNCTION_0_37();
        v155 = OUTLINED_FUNCTION_20_22(v154);
        sub_231311704(v155, v156, &qword_27DD434C0, &unk_23136CA00);
        sub_2313672D0();
        v157 = OUTLINED_FUNCTION_8_26();
        v158(v157);
        OUTLINED_FUNCTION_1_41();
        sub_231311760(&qword_27DD449B8, v159, MEMORY[0x277D60748]);
        OUTLINED_FUNCTION_10_29();
        sub_23136A140();
        OUTLINED_FUNCTION_10_29();
        sub_23136A140();
        v161 = v72[32];
        v162 = v72[34];
        v163 = v72[35];
        if (v161 != v162 || v72[33] != v163)
        {
          break;
        }

        v167 = OUTLINED_FUNCTION_42_13();
        (v72)(v167);
        v168 = OUTLINED_FUNCTION_10_29();
        (v72)(v168);

LABEL_78:
        v72 = v359;
        sub_231311624(v359[72], v359[71]);
        v169 = v337;
        v170 = swift_isUniquelyReferenced_nonNull_native();
        *&v360 = v337;
        if ((v170 & 1) == 0)
        {
          OUTLINED_FUNCTION_6_25();
          v169 = v360;
        }

        v149 = bufb;
        OUTLINED_FUNCTION_9_27();
        if (v32)
        {
          v173 = OUTLINED_FUNCTION_3_35(v171);
          OUTLINED_FUNCTION_32_14(v173);
          v169 = v360;
        }

        v152 = &v150->isa + 1;
        v172 = v359[71];
        *(v169 + 16) = v163;
        v337 = v169;
        result = sub_231311624(v172, v169 + v345 + v153 * v7);
        v150 = i;
      }

      OUTLINED_FUNCTION_16_24(v161, v160, v162);
      v165 = OUTLINED_FUNCTION_28_18();
      (v72)(v165);
      v166 = OUTLINED_FUNCTION_10_29();
      (v72)(v166);

      if (v153)
      {
        goto LABEL_78;
      }

      v72 = v359;
      result = sub_231228E9C(v359[72], &qword_27DD434C0, &unk_23136CA00);
      v152 = &v150->isa + 1;
      v149 = bufb;
    }
  }

  v61 = v35[64];
  v62 = v35[41];

  sub_231217CD4(v335, v62);
  if (__swift_getEnumTagSinglePayload(v62, 1, v61) == 1)
  {
    sub_231228E9C(v35[41], &qword_27DD449B0, &unk_2313772E0);
    v63 = 0;
  }

  else
  {
    v97 = v35[41];
    v63 = *(v97 + *(v35[64] + 36));

    sub_231228E9C(v97, &qword_27DD434C0, &unk_23136CA00);
  }

  sub_2313692F0();
  v98 = sub_231369270();
  if (!v63)
  {

LABEL_58:
    sub_231369150();

    v133 = sub_2313698A0();
    v134 = sub_23136A3A0();

    if (os_log_type_enabled(v133, v134))
    {
      v356 = v134;
      OUTLINED_FUNCTION_60();
      v346 = OUTLINED_FUNCTION_33_15();
      v365[0] = v346;
      bufa = v134;
      *v134 = 136315138;
      v135 = *(v335 + 16);
      if (v135)
      {
        *v331 = v133;
        v136 = OUTLINED_FUNCTION_5_28(MEMORY[0x277D84F90]);
        sub_2311F4E34(v136);
        v137 = v360;
        OUTLINED_FUNCTION_0_37();
        OUTLINED_FUNCTION_22_20();
        do
        {
          sub_231311704(v133, v35[74], &qword_27DD434C0, &unk_23136CA00);
          v138 = sub_231369040();
          v140 = v139;
          v141 = OUTLINED_FUNCTION_54_0();
          sub_231228E9C(v141, v142, &unk_23136CA00);
          *&v360 = v137;
          v144 = *(v137 + 16);
          v143 = *(v137 + 24);
          if (v144 >= v143 >> 1)
          {
            v146 = OUTLINED_FUNCTION_3_35(v143);
            sub_2311F4E34(v146);
            v137 = v360;
          }

          *(v137 + 16) = v144 + 1;
          v145 = v137 + 16 * v144;
          *(v145 + 32) = v138;
          *(v145 + 40) = v140;
          v133 = (v357 + v133);
          --v135;
        }

        while (v135);

        v133 = *v331;
      }

      else
      {

        v137 = MEMORY[0x277D84F90];
      }

      v180 = v35[58];
      v181 = v35[56];
      v182 = MEMORY[0x23192A860](v137, MEMORY[0x277D837D0]);
      v184 = v183;

      v185 = sub_2311CFD58(v182, v184, v365);

      *(bufa + 4) = v185;
      _os_log_impl(&dword_2311CB000, v133, v356, "Found top tiered candidates: %s", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v346);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v52(v180, v181);
      v7 = v347;
    }

    else
    {
      OUTLINED_FUNCTION_23_16();

      v35 = v359;
      v147 = OUTLINED_FUNCTION_27();
      (v52)(v147);
    }

    v186 = *(v7 + 16);
    if (!v186)
    {

      goto LABEL_148;
    }

    OUTLINED_FUNCTION_4_26(MEMORY[0x277D84F90]);
    sub_2311F571C();
    v187 = v360;
    OUTLINED_FUNCTION_0_37();
    v189 = v7 + v188;
    v191 = *(v190 + 72);
    do
    {
      v192 = v35[74];
      v193 = v35[43];
      sub_231311704(v189, v192, &qword_27DD434C0, &unk_23136CA00);
      sub_2311E1984(v192, v193);
      v194 = OUTLINED_FUNCTION_54_0();
      sub_231228E9C(v194, v195, &unk_23136CA00);
      *&v360 = v187;
      v197 = *(v187 + 16);
      v196 = *(v187 + 24);
      if (v197 >= v196 >> 1)
      {
        OUTLINED_FUNCTION_3_35(v196);
        sub_2311F571C();
        v187 = v360;
      }

      *(v187 + 16) = v197 + 1;
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_29_14(v198, v199);
      v189 += v191;
      --v186;
    }

    while (v186);
    goto LABEL_146;
  }

  v35[36] = v63;
  v35[37] = v98;
  sub_231311760(&qword_280F7C908, MEMORY[0x277D612D0], MEMORY[0x277D612E0]);
  v99 = sub_231369F60();

  if ((v99 & 1) == 0 || *(v335 + 16) >= v35[77])
  {
    goto LABEL_58;
  }

  v319 = *(v335 + 16);
  sub_231369150();
  v100 = sub_2313698A0();
  v101 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v101))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v102, v103, "Special homescreen case. Adding remaining homescreen suggestions as eligible");
    OUTLINED_FUNCTION_29();
  }

  v104 = v35[60];
  OUTLINED_FUNCTION_23_16();
  v106 = *(v105 + 448);

  v107 = v359;
  result = (v52)(v104, v106);
  v108 = 0;
  LODWORD(v326) = *MEMORY[0x277D60728];
  v321 = MEMORY[0x277D84F90];
  while (buf != v108)
  {
    if (v108 >= *(v7 + 16))
    {
      goto LABEL_154;
    }

    v109 = v107[70];
    v110 = v107[50];
    v111 = v107[46];
    OUTLINED_FUNCTION_0_37();
    v341 = v113;
    *v330 = *(v112 + 72);
    sub_231311704(v7 + v113 + *v330 * v108, v109, &qword_27DD434C0, &unk_23136CA00);
    sub_2313672D0();
    (*v358)(v110, v326, v111);
    OUTLINED_FUNCTION_1_41();
    sub_231311760(&qword_27DD449B8, v114, MEMORY[0x277D60748]);
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    v116 = v107[24];
    v117 = v107[26];
    v118 = v107[27];
    v119 = v107[51];
    if (v116 == v117 && v107[25] == v118)
    {
      v124 = *v357;
      v125 = OUTLINED_FUNCTION_40_14();
      v124(v125);
      v126 = OUTLINED_FUNCTION_17_18();
      v124(v126);
    }

    else
    {
      LODWORD(v345) = OUTLINED_FUNCTION_16_24(v116, v115, v117);
      v121 = *v357;
      v122 = OUTLINED_FUNCTION_40_14();
      v121(v122);
      v123 = OUTLINED_FUNCTION_17_18();
      v121(v123);

      if ((v345 & 1) == 0)
      {
        v107 = v359;
        result = sub_231228E9C(v359[70], &qword_27DD434C0, &unk_23136CA00);
        ++v108;
        v7 = v347;
        continue;
      }
    }

    v107 = v359;
    sub_231311624(v359[70], v359[69]);
    v127 = v321;
    v128 = swift_isUniquelyReferenced_nonNull_native();
    *&v360 = v321;
    v7 = v347;
    if ((v128 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_25();
      v127 = v360;
    }

    OUTLINED_FUNCTION_9_27();
    if (v32)
    {
      v131 = OUTLINED_FUNCTION_3_35(v129);
      OUTLINED_FUNCTION_32_14(v131);
      v127 = v360;
    }

    ++v108;
    v130 = v359[69];
    *(v127 + 16) = v118;
    v321 = v127;
    result = sub_231311624(v130, v127 + v341 + v119 * *v330);
  }

  v200 = *(v321 + 16);
  if (v200)
  {
    v201 = v107[64];
    v202 = OUTLINED_FUNCTION_5_28(MEMORY[0x277D84F90]);
    v204 = v203;
    sub_2311F5764(v202, v200, 0);
    v205 = v360;
    OUTLINED_FUNCTION_0_37();
    v343 = v206;
    v207 = v204 + v206;
    v333 = *(v208 + 72);
    do
    {
      bufe = v205;
      v209 = v107[74];
      v210 = v107[68];
      sub_231311704(v207, v209, &qword_27DD434C0, &unk_23136CA00);
      sub_2311E1984(v209, v210);
      sub_2311CF324(v209 + v201[7], v210 + v201[7]);
      v7 = *(v209 + v201[9]);
      v211 = *(v209 + v201[10]);
      OUTLINED_FUNCTION_14_26();
      sub_231368BC0();
      OUTLINED_FUNCTION_7_0();
      v212 = OUTLINED_FUNCTION_13_21();
      v213(v212);
      v214 = v209 + v201[14];
      v215 = *v214;
      v216 = *(v214 + 8);
      sub_231367C70();
      OUTLINED_FUNCTION_7_0();
      v217 = OUTLINED_FUNCTION_13_21();
      v218(v217);
      sub_231369050();
      OUTLINED_FUNCTION_7_0();
      v219 = OUTLINED_FUNCTION_13_21();
      v220(v219);

      v221 = v209;
      v205 = bufe;
      sub_231228E9C(v221, &qword_27DD434C0, &unk_23136CA00);
      *(v210 + v201[8]) = 1;
      *(v210 + v201[9]) = v7;
      *(v210 + v201[10]) = v211;
      OUTLINED_FUNCTION_26_18(v201[11], v310, v311, v312, v313, v314, v315, v316, v317, v319, v321, v326, v333, v335, v343, v345, v347);
      v222 = v210 + v201[14];
      *v222 = v215;
      *(v222 + 8) = v216;
      *&v360 = bufe;
      v224 = *(bufe + 2);
      v223 = *(bufe + 3);
      if (v224 >= v223 >> 1)
      {
        v226 = OUTLINED_FUNCTION_3_35(v223);
        OUTLINED_FUNCTION_32_14(v226);
        v205 = v360;
      }

      v107 = v359;
      v225 = v359[68];
      *(v205 + 16) = v224 + 1;
      sub_231311624(v225, v205 + v343 + v224 * v333);
      v207 += v333;
      --v200;
    }

    while (v200);
  }

  else
  {

    v205 = MEMORY[0x277D84F90];
  }

  v251 = v107[77];
  v360 = *(v107 + 9);
  v361 = v251;
  OUTLINED_FUNCTION_25_17();
  v253 = sub_231309894(v107 + 8, v205, v252, &v360);

  *&v360 = v335;
  sub_2312671B4(v253);
  v254 = v360;
  sub_231369150();
  sub_231369EE0();
  v255 = sub_2313698A0();
  v256 = sub_23136A3A0();

  v334 = v256;
  bufc = v254;
  if (!os_log_type_enabled(v255, v256))
  {

    v279 = OUTLINED_FUNCTION_27();
    v280(v279);
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_60();
  result = OUTLINED_FUNCTION_33_15();
  v257 = 0;
  v324 = result;
  v365[0] = result;
  v328 = v256;
  *v256 = 136315138;
  v349 = *(v254 + 2);
  v338 = MEMORY[0x277D84F90];
  v344 = v255;
  while (v349 != v257)
  {
    if (v257 >= *(v254 + 2))
    {
      goto LABEL_155;
    }

    v258 = v107[48];
    OUTLINED_FUNCTION_0_37();
    v260 = OUTLINED_FUNCTION_20_22(v259);
    sub_231311704(v260, v261, &qword_27DD434C0, &unk_23136CA00);
    sub_2313672D0();
    v262 = OUTLINED_FUNCTION_8_26();
    v263(v262);
    OUTLINED_FUNCTION_1_41();
    sub_231311760(&qword_27DD449B8, v264, MEMORY[0x277D60748]);
    OUTLINED_FUNCTION_10_29();
    sub_23136A140();
    OUTLINED_FUNCTION_10_29();
    sub_23136A140();
    v266 = v107[28];
    v267 = v107[30];
    v268 = v107[31];
    if (v266 == v267 && v107[29] == v268)
    {
      v272 = OUTLINED_FUNCTION_42_13();
      (v107)(v272);
      v273 = OUTLINED_FUNCTION_10_29();
      (v107)(v273);
    }

    else
    {
      OUTLINED_FUNCTION_16_24(v266, v265, v267);
      v270 = OUTLINED_FUNCTION_28_18();
      (v107)(v270);
      v271 = OUTLINED_FUNCTION_10_29();
      (v107)(v271);

      if ((v258 & 1) == 0)
      {
        v107 = v359;
        result = sub_231228E9C(v359[67], &qword_27DD434C0, &unk_23136CA00);
        v257 = &v255->isa + 1;
        v254 = bufc;
        v255 = v344;
        continue;
      }
    }

    v107 = v359;
    sub_231311624(v359[67], v359[66]);
    v274 = v338;
    v275 = swift_isUniquelyReferenced_nonNull_native();
    *&v360 = v338;
    if ((v275 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_25();
      v274 = v360;
    }

    v254 = bufc;
    OUTLINED_FUNCTION_9_27();
    if (v32)
    {
      v278 = OUTLINED_FUNCTION_3_35(v276);
      OUTLINED_FUNCTION_32_14(v278);
      v274 = v360;
    }

    v257 = &v255->isa + 1;
    v277 = v359[66];
    *(v274 + 16) = v268;
    v338 = v274;
    result = sub_231311624(v277, v274 + v345 + v258 * v7);
    v255 = v344;
  }

  if (*(v338 + 16))
  {
    v281 = OUTLINED_FUNCTION_4_26(MEMORY[0x277D84F90]);
    sub_2311F4E34(v281);
    v282 = v360;
    OUTLINED_FUNCTION_0_37();
    OUTLINED_FUNCTION_22_20();
    do
    {
      sub_231311704(v255, v107[74], &qword_27DD434C0, &unk_23136CA00);
      sub_231369040();
      OUTLINED_FUNCTION_31_21();
      OUTLINED_FUNCTION_36_13();
      if (v32)
      {
        OUTLINED_FUNCTION_3_35(v283);
        OUTLINED_FUNCTION_39_12();
        sub_2311F4E34(v284);
        v282 = v360;
      }

      OUTLINED_FUNCTION_18_21();
    }

    while (!v21);

    v255 = v344;
  }

  else
  {

    v282 = MEMORY[0x277D84F90];
  }

  v285 = MEMORY[0x23192A860](v282, MEMORY[0x277D837D0]);
  v287 = v286;

  v288 = sub_2311CFD58(v285, v287, v365);

  *(v328 + 4) = v288;
  OUTLINED_FUNCTION_30_15(&dword_2311CB000, v289, v290, "Found new tiering: %s", v291, v292, v293, v294, v310, v311, v312, v313, v314, v315, v316, v317, v319, v324, v328, v334);
  __swift_destroy_boxed_opaque_existential_1Tm(v325);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();

  v295 = OUTLINED_FUNCTION_27();
  v296(v295);
  v254 = bufc;
LABEL_141:
  v297 = *(v254 + 2);
  if (v297)
  {
    v35 = v359;
    OUTLINED_FUNCTION_4_26(MEMORY[0x277D84F90]);
    sub_2311F571C();
    v187 = v360;
    OUTLINED_FUNCTION_0_37();
    v299 = &v254[v298];
    v301 = *(v300 + 72);
    do
    {
      v302 = v359[74];
      v303 = v359[44];
      OUTLINED_FUNCTION_45_10();
      sub_2311E1984(v302, v303);
      v304 = OUTLINED_FUNCTION_17_18();
      sub_231228E9C(v304, v305, &unk_23136CA00);
      OUTLINED_FUNCTION_38_11();
      if (v32)
      {
        OUTLINED_FUNCTION_3_35(v306);
        OUTLINED_FUNCTION_39_12();
        sub_2311F571C();
        v187 = v360;
      }

      *(v187 + 16) = v302;
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_29_14(v307, v308);
      v299 += v301;
      --v297;
    }

    while (v297);
    goto LABEL_146;
  }

LABEL_147:

  v35 = v359;
LABEL_148:
  __swift_destroy_boxed_opaque_existential_1Tm(v35 + 8);
  v187 = MEMORY[0x277D84F90];
LABEL_149:

  v309 = v35[1];

  return v309(v187);
}

BOOL sub_23130DEEC()
{
  v0 = sub_231367290();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2313672D0();
  v4 = sub_231367270();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_2313672D0();
  v6 = sub_231367270();
  v5(v3, v0);
  if (v4 == v6)
  {
    v7 = sub_2313672C0();
    return v7 < sub_2313672C0();
  }

  else
  {
    sub_2313672D0();
    v9 = sub_231367270();
    v5(v3, v0);
    sub_2313672D0();
    v10 = sub_231367270();
    v5(v3, v0);
    return v9 < v10;
  }
}

uint64_t sub_23130E094()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  return v0;
}

uint64_t sub_23130E0D8()
{
  sub_23130E094();

  return swift_deallocClassInstance();
}

uint64_t sub_23130E15C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F4480;

  return sub_23130B920();
}

BOOL sub_23130E204(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5[2] = a1;
  v6 = a2 & 1;
  return sub_231308EAC(sub_2313117C8, v5, v3);
}

uint64_t sub_23130E25C(void *a1, uint64_t a2, char a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 8))(a2, a3 & 1, v5, v6) & 1;
}

BOOL sub_23130E2D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4[2] = a1;
  return sub_231217F58(sub_2313117A8, v4, v2);
}

uint64_t sub_23130E324(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 16))(a2, v3, v4) & 1;
}

uint64_t sub_23130E38C()
{

  OUTLINED_FUNCTION_54();

  return swift_deallocClassInstance();
}

uint64_t sub_23130E438(char a1)
{
  if (a1)
  {
    v1 = sub_23136A900();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

void *sub_23130E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[2] = MEMORY[0x277D84F98];
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v10[7] = a5;
  v10[8] = a6;
  v10[9] = a7;
  v10[10] = a8;
  v10[11] = a9;
  v10[12] = a10;
  return v10;
}

uint64_t sub_23130E4E4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v53 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = v2[3](a1);
  v14 = v13;
  v15 = v2[5](a1);
  v16 = 1;
  if (v2[7](a2 & 1) & 1) != 0 && (v15)
  {
    swift_beginAccess();
    v17 = OUTLINED_FUNCTION_41_14();
    v20 = sub_231210AF8(v17, v18, v19);
    swift_endAccess();
    if ((v20 & 0x100000000) == 0)
    {
      sub_231369150();

      sub_231369EE0();
      v21 = sub_2313698A0();
      v22 = sub_23136A3A0();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v54[0] = swift_slowAlloc();
        *v23 = 136316418;
        *(v23 + 4) = sub_2311CFD58(v3[11], v3[12], v54);
        *(v23 + 12) = 2080;
        v24 = OUTLINED_FUNCTION_41_14();
        *(v23 + 14) = sub_2311CFD58(v24, v25, v26);
        *(v23 + 22) = 2080;
        sub_231369EE0();
        v51 = v21;
        v27 = sub_231369E90();
        v52 = v6;
        v29 = v28;

        v30 = sub_2311CFD58(v27, v29, v54);

        *(v23 + 24) = v30;
        *(v23 + 32) = 1024;
        *(v23 + 34) = 1;
        *(v23 + 38) = 1024;
        *(v23 + 40) = 1;
        *(v23 + 44) = 2080;
        v31 = sub_23136A010();
        v33 = sub_2311CFD58(v31, v32, v54);

        *(v23 + 46) = v33;
        _os_log_impl(&dword_2311CB000, v51, v22, "%s: Already seen state: %s in %s eligibility == %{BOOL}d, phaseEligibility == %{BOOL}d @%s", v23, 0x36u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (*(v53 + 8))(v11, v52);
      }

      else
      {

        (*(v53 + 8))(v11, v6);
      }

      v16 = 0;
    }
  }

  if (a2)
  {
    v34 = sub_23136A900();

    if ((v34 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v35 = v3[2];
  v3[2] = 0x8000000000000000;
  v36 = OUTLINED_FUNCTION_41_14();
  v38 = sub_231215F6C(v36, v37);
  if (__OFADD__(*(v35 + 16), (v39 & 1) == 0))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v38;
  v41 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449D0, &qword_231377308);
  if ((sub_23136A700() & 1) == 0)
  {
LABEL_16:
    v3[2] = v35;
    if ((v41 & 1) == 0)
    {
      sub_23125A810(v40, v12, v14, 0, v35);
      sub_231369EE0();
    }

    v46 = *(v35 + 56);
    v47 = *(v46 + 4 * v40);
    v48 = __CFADD__(v47, 1);
    v49 = v47 + 1;
    if (!v48)
    {
      *(v46 + 4 * v40) = v49;
      swift_endAccess();
LABEL_20:

      return v16;
    }

    goto LABEL_22;
  }

  v42 = OUTLINED_FUNCTION_41_14();
  v44 = sub_231215F6C(v42, v43);
  if ((v41 & 1) == (v45 & 1))
  {
    v40 = v44;
    goto LABEL_16;
  }

LABEL_23:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_23130E974(uint64_t a1)
{
  v3 = *(v1 + 72);
  swift_beginAccess();
  v4 = *(v1 + 16);
  sub_231369EE0();
  LOBYTE(a1) = v3(a1, v4);

  return a1 & 1;
}

uint64_t sub_23130E9F4()
{

  return v0;
}

uint64_t sub_23130EA3C()
{
  sub_23130E9F4();
  OUTLINED_FUNCTION_15_24();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for Phase(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23130EB6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23136A7B0();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23130EBC0(char a1)
{
  if (a1)
  {
    return 0x6150646E6F636573;
  }

  else
  {
    return 0x7361507473726966;
  }
}

uint64_t sub_23130EC78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23130EB6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23130ECA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23130EBC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23130ECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD449A0;
  if (!qword_27DD449A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD449A0);
  }

  return result;
}

void sub_23130ED60(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23136A8A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for RankedCandidateSuggestion(0);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for RankedCandidateSuggestion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23130F5A8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23130EFD8(0, v2, 1, a1);
  }
}

void sub_23130EE90(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23136A8A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2313101A0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23130F35C(0, v2, 1, a1);
  }
}

void sub_23130EFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54 = sub_231367290();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for RankedCandidateSuggestion(0);
  MEMORY[0x28223BE20](v52);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v44 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = (v8 + 8);
    v22 = *a4 + v20 * (a3 - 1);
    v49 = -v20;
    v50 = v19;
    v23 = a1 - a3;
    v43 = v20;
    v24 = v19 + v20 * a3;
    v53 = v10;
    v56 = &v42 - v17;
    while (2)
    {
      v47 = v22;
      v48 = a3;
      v45 = v24;
      v46 = v23;
      v25 = v23;
      do
      {
        v55 = v25;
        sub_2311E1984(v24, v18);
        sub_2311E1984(v22, v14);
        sub_2313672D0();
        v26 = sub_231367270();
        v27 = v14;
        v28 = *v21;
        v29 = v21;
        v30 = v54;
        v28(v10, v54);
        sub_2313672D0();
        v31 = sub_231367270();
        v28(v10, v30);
        if (v26 == v31)
        {
          v32 = sub_2313672C0();
          v33 = v32 < sub_2313672C0();
        }

        else
        {
          sub_2313672D0();
          v34 = sub_231367270();
          v28(v10, v30);
          sub_2313672D0();
          v35 = sub_231367270();
          v28(v10, v30);
          v33 = v34 < v35;
        }

        v36 = v33;
        v14 = v27;
        v21 = v29;
        sub_2311E1928(v27);
        v18 = v56;
        sub_2311E1928(v56);
        v10 = v53;
        v37 = v55;
        if (!v36)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return;
        }

        v38 = v21;
        v39 = v51;
        sub_2311E18C4(v24, v51);
        swift_arrayInitWithTakeFrontToBack();
        v40 = v39;
        v21 = v38;
        sub_2311E18C4(v40, v22);
        v22 += v49;
        v24 += v49;
        v41 = __CFADD__(v37, 1);
        v25 = v37 + 1;
      }

      while (!v41);
      a3 = v48 + 1;
      v22 = v47 + v43;
      v23 = v46 - 1;
      v24 = v45 + v43;
      if (v48 + 1 != v44)
      {
        continue;
      }

      break;
    }
  }
}

void sub_23130F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  MEMORY[0x28223BE20](v36);
  v35 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v33 = -v17;
    v34 = v16;
    v19 = a1 - a3;
    v27 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v31 = v18;
      v32 = a3;
      v29 = v20;
      v30 = v19;
      v21 = v18;
      do
      {
        sub_231311704(v20, v15, &qword_27DD434C0, &unk_23136CA00);
        sub_231311704(v21, v11, &qword_27DD434C0, &unk_23136CA00);
        v22 = sub_2313672C0();
        v23 = sub_2313672C0();
        sub_231228E9C(v11, &qword_27DD434C0, &unk_23136CA00);
        sub_231228E9C(v15, &qword_27DD434C0, &unk_23136CA00);
        if (v22 >= v23)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return;
        }

        v24 = v35;
        sub_231311624(v20, v35);
        swift_arrayInitWithTakeFrontToBack();
        sub_231311624(v24, v21);
        v21 += v33;
        v20 += v33;
      }

      while (!__CFADD__(v19++, 1));
      a3 = v32 + 1;
      v18 = v31 + v27;
      v19 = v30 - 1;
      v20 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_23130F5A8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v147 = a1;
  v7 = sub_231367290();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for RankedCandidateSuggestion(0);
  v155 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v150 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v161 = &v139 - v13;
  MEMORY[0x28223BE20](v14);
  v140 = &v139 - v15;
  MEMORY[0x28223BE20](v16);
  v164 = &v139 - v17;
  MEMORY[0x28223BE20](v18);
  v142 = &v139 - v19;
  MEMORY[0x28223BE20](v20);
  v154 = &v139 - v21;
  MEMORY[0x28223BE20](v22);
  v143 = &v139 - v23;
  MEMORY[0x28223BE20](v24);
  v29 = &v139 - v28;
  v156 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_112:
    v168 = *v147;
    if (!v168)
    {
      goto LABEL_154;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v157;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_114;
    }

    goto LABEL_148;
  }

  v141 = a4;
  v31 = 0;
  v165 = (v8 + 8);
  v32 = MEMORY[0x277D84F90];
  v166 = v10;
  v167 = v7;
  v144 = &v139 - v28;
  v33 = v7;
  while (1)
  {
    v34 = v31;
    if (v31 + 1 >= v30)
    {
      v44 = v31 + 1;
    }

    else
    {
      v160 = v30;
      v35 = *v156;
      v36 = *(v155 + 72);
      v158 = v31 + 1;
      v37 = v35 + v36 * (v31 + 1);
      sub_2311E1984(v37, v29);
      v38 = v143;
      sub_2311E1984(v35 + v36 * v34, v143);
      v39 = v157;
      LODWORD(v159) = sub_23130DEEC();
      v157 = v39;
      v40 = v34;
      v41 = v154;
      if (v39)
      {
        sub_2311E1928(v38);
        sub_2311E1928(v29);
LABEL_122:

        return;
      }

      v145 = v32;
      sub_2311E1928(v38);
      sub_2311E1928(v29);
      v146 = v40;
      v42 = v40 + 2;
      v43 = v35 + v36 * (v40 + 2);
      v44 = v158;
      v45 = v36;
      v163 = v36;
      v46 = v160;
      v32 = v142;
      while (1)
      {
        v47 = v42;
        if (v44 + 1 >= v46)
        {
          break;
        }

        v168 = v42;
        v158 = v44;
        sub_2311E1984(v43, v41);
        sub_2311E1984(v37, v32);
        v4 = v166;
        sub_2313672D0();
        v48 = sub_231367270();
        v49 = *v165;
        v50 = v167;
        (*v165)(v4, v167);
        sub_2313672D0();
        v51 = sub_231367270();
        v49(v4, v50);
        if (v48 == v51)
        {
          v41 = v154;
          v52 = sub_2313672C0();
          v53 = v52 < sub_2313672C0();
        }

        else
        {
          v54 = v154;
          sub_2313672D0();
          v153 = sub_231367270();
          v49(v4, v50);
          sub_2313672D0();
          v55 = sub_231367270();
          v49(v4, v50);
          v53 = v153 < v55;
          v41 = v54;
        }

        sub_2311E1928(v32);
        sub_2311E1928(v41);
        v45 = v163;
        v43 += v163;
        v37 += v163;
        v44 = v158 + 1;
        v47 = v168;
        v42 = v168 + 1;
        v46 = v160;
        if ((v159 & 1) != v53)
        {
          goto LABEL_14;
        }
      }

      v44 = v46;
LABEL_14:
      if (v159)
      {
        v34 = v146;
        v33 = v167;
        if (v44 < v146)
        {
          goto LABEL_147;
        }

        if (v146 >= v44)
        {
          v32 = v145;
          goto LABEL_37;
        }

        v56 = v46 >= v47 ? v47 : v46;
        v57 = v45 * (v56 - 1);
        v58 = v45 * v56;
        v59 = v146;
        v60 = v146 * v45;
        v61 = v44;
        do
        {
          if (v59 != --v61)
          {
            v62 = *v156;
            if (!*v156)
            {
              goto LABEL_152;
            }

            sub_2311E18C4(v62 + v60, v150);
            v63 = v60 < v57 || v62 + v60 >= (v62 + v58);
            if (v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2311E18C4(v150, v62 + v57);
            v33 = v167;
            v45 = v163;
          }

          ++v59;
          v57 -= v45;
          v58 -= v45;
          v60 += v45;
        }

        while (v59 < v61);
        v32 = v145;
      }

      else
      {
        v32 = v145;
        v33 = v167;
      }

      v34 = v146;
    }

LABEL_37:
    v64 = v156[1];
    if (v44 < v64)
    {
      if (__OFSUB__(v44, v34))
      {
        goto LABEL_144;
      }

      if (v44 - v34 < v141)
      {
        break;
      }
    }

LABEL_56:
    if (v44 < v34)
    {
      goto LABEL_143;
    }

    v85 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126DB78();
      v32 = v129;
    }

    v86 = *(v32 + 2);
    v87 = v86 + 1;
    if (v86 >= *(v32 + 3) >> 1)
    {
      sub_23126DB78();
      v32 = v130;
    }

    *(v32 + 2) = v87;
    v88 = v32 + 32;
    v89 = &v32[16 * v86 + 32];
    *v89 = v34;
    *(v89 + 1) = v44;
    v168 = *v147;
    if (!v168)
    {
      goto LABEL_153;
    }

    if (v86)
    {
      v33 = v85;
      while (1)
      {
        v90 = v87 - 1;
        v91 = &v88[16 * v87 - 16];
        v92 = &v32[16 * v87];
        if (v87 >= 4)
        {
          break;
        }

        if (v87 == 3)
        {
          v93 = *(v32 + 4);
          v94 = *(v32 + 5);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_77:
          if (v96)
          {
            goto LABEL_130;
          }

          v108 = *v92;
          v107 = *(v92 + 1);
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_133;
          }

          v112 = *(v91 + 1);
          v113 = v112 - *v91;
          if (__OFSUB__(v112, *v91))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v110, v113))
          {
            goto LABEL_138;
          }

          if (v110 + v113 >= v95)
          {
            if (v95 < v113)
            {
              v90 = v87 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v87 < 2)
        {
          goto LABEL_132;
        }

        v115 = *v92;
        v114 = *(v92 + 1);
        v103 = __OFSUB__(v114, v115);
        v110 = v114 - v115;
        v111 = v103;
LABEL_92:
        if (v111)
        {
          goto LABEL_135;
        }

        v117 = *v91;
        v116 = *(v91 + 1);
        v103 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v103)
        {
          goto LABEL_137;
        }

        if (v118 < v110)
        {
          goto LABEL_108;
        }

LABEL_99:
        if (v90 - 1 >= v87)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
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
          goto LABEL_146;
        }

        if (!*v156)
        {
          goto LABEL_150;
        }

        v122 = v32;
        v32 = &v88[16 * v90 - 16];
        v123 = *v32;
        v4 = v88;
        v124 = &v88[16 * v90];
        v125 = *(v124 + 1);
        v126 = v157;
        sub_231310A9C(*v156 + *(v155 + 72) * *v32, *v156 + *(v155 + 72) * *v124, *v156 + *(v155 + 72) * v125, v168);
        v157 = v126;
        if (v126)
        {
          goto LABEL_122;
        }

        if (v125 < v123)
        {
          goto LABEL_125;
        }

        v127 = *(v122 + 2);
        if (v90 > v127)
        {
          goto LABEL_126;
        }

        *v32 = v123;
        *(v32 + 1) = v125;
        if (v90 >= v127)
        {
          goto LABEL_127;
        }

        v87 = v127 - 1;
        sub_2311E6448(v124 + 16, v127 - 1 - v90, v124);
        v32 = v122;
        *(v122 + 2) = v127 - 1;
        v33 = v167;
        v88 = v4;
        if (v127 <= 2)
        {
          goto LABEL_108;
        }
      }

      v97 = &v88[16 * v87];
      v98 = *(v97 - 8);
      v99 = *(v97 - 7);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_128;
      }

      v102 = *(v97 - 6);
      v101 = *(v97 - 5);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_129;
      }

      v104 = *(v92 + 1);
      v105 = v104 - *v92;
      if (__OFSUB__(v104, *v92))
      {
        goto LABEL_131;
      }

      v103 = __OFADD__(v95, v105);
      v106 = v95 + v105;
      if (v103)
      {
        goto LABEL_134;
      }

      if (v106 >= v100)
      {
        v120 = *v91;
        v119 = *(v91 + 1);
        v103 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v103)
        {
          goto LABEL_142;
        }

        if (v95 < v121)
        {
          v90 = v87 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

    v33 = v85;
LABEL_108:
    v30 = v156[1];
    v128 = v44 < v30;
    v31 = v44;
    v29 = v144;
    if (!v128)
    {
      goto LABEL_112;
    }
  }

  v65 = v34 + v141;
  if (__OFADD__(v34, v141))
  {
    goto LABEL_145;
  }

  if (v65 >= v64)
  {
    v65 = v156[1];
  }

  if (v65 < v34)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    v32 = sub_2311E6430(v32, v25, v26, v27);
LABEL_114:
    v132 = v32;
    v134 = *(v32 + 2);
    v32 += 16;
    for (i = v134; i >= 2; *v32 = i)
    {
      if (!*v156)
      {
        goto LABEL_151;
      }

      v135 = &v132[16 * i];
      v136 = *v135;
      v137 = &v32[16 * i];
      v138 = *(v137 + 1);
      sub_231310A9C(*v156 + *(v155 + 72) * *v135, *v156 + *(v155 + 72) * *v137, *v156 + *(v155 + 72) * v138, v168);
      if (v4)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_139;
      }

      if (i - 2 >= *v32)
      {
        goto LABEL_140;
      }

      *v135 = v136;
      *(v135 + 1) = v138;
      v25 = *v32 - i;
      if (*v32 < i)
      {
        goto LABEL_141;
      }

      i = *v32 - 1;
      sub_2311E6448(v137 + 16, v25, v137);
    }

    goto LABEL_122;
  }

  if (v44 == v65)
  {
    goto LABEL_56;
  }

  v145 = v32;
  v66 = *v156;
  v67 = *(v155 + 72);
  v68 = *v156 + v67 * (v44 - 1);
  v159 = -v67;
  v146 = v34;
  v69 = v34 - v44;
  v158 = v44;
  v160 = v66;
  v148 = v67;
  v70 = v66 + v44 * v67;
  v71 = v140;
  v72 = v164;
  v149 = v65;
LABEL_46:
  v151 = v70;
  v152 = v69;
  v73 = v69;
  v153 = v68;
  while (1)
  {
    v168 = v73;
    sub_2311E1984(v70, v72);
    sub_2311E1984(v68, v71);
    v4 = v166;
    sub_2313672D0();
    v74 = sub_231367270();
    v75 = *v165;
    v76 = v71;
    v77 = v167;
    (*v165)(v4, v167);
    sub_2313672D0();
    v78 = sub_231367270();
    v75(v4, v77);
    if (v74 == v78)
    {
      v79 = v164;
      v80 = sub_2313672C0();
      v81 = v80 < sub_2313672C0();
      v71 = v76;
      v72 = v79;
    }

    else
    {
      v72 = v164;
      sub_2313672D0();
      v163 = sub_231367270();
      v75(v4, v77);
      sub_2313672D0();
      v82 = sub_231367270();
      v75(v4, v77);
      v81 = v163 < v82;
      v71 = v76;
    }

    sub_2311E1928(v71);
    sub_2311E1928(v72);
    if (!v81)
    {
LABEL_54:
      v68 = v153 + v148;
      v69 = v152 - 1;
      v70 = v151 + v148;
      if (++v158 == v149)
      {
        v44 = v149;
        v32 = v145;
        v33 = v167;
        v34 = v146;
        goto LABEL_56;
      }

      goto LABEL_46;
    }

    v83 = v168;
    if (!v160)
    {
      break;
    }

    v84 = v161;
    sub_2311E18C4(v70, v161);
    swift_arrayInitWithTakeFrontToBack();
    sub_2311E18C4(v84, v68);
    v68 += v159;
    v70 += v159;
    v63 = __CFADD__(v83, 1);
    v73 = v83 + 1;
    if (v63)
    {
      goto LABEL_54;
    }
  }

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
}

void sub_2313101A0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v112 = a1;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  v120 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v116 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v126 = &v109 - v9;
  MEMORY[0x28223BE20](v10);
  v129 = &v109 - v11;
  MEMORY[0x28223BE20](v12);
  v128 = &v109 - v16;
  v122 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_102:
    v129 = *v112;
    if (!v129)
    {
      goto LABEL_143;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v123;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_104:
      v103 = v19 + 16;
      v104 = *(v19 + 2);
      while (v104 >= 2)
      {
        if (!*v122)
        {
          goto LABEL_140;
        }

        v105 = v19;
        v106 = &v19[16 * v104];
        v19 = *v106;
        v107 = &v103[2 * v104];
        v108 = *(v107 + 1);
        sub_231311164(*v122 + *(v120 + 72) * *v106, *v122 + *(v120 + 72) * *v107, *v122 + *(v120 + 72) * v108, v129);
        if (v4)
        {
          break;
        }

        if (v108 < v19)
        {
          goto LABEL_128;
        }

        if (v104 - 2 >= *v103)
        {
          goto LABEL_129;
        }

        *v106 = v19;
        *(v106 + 1) = v108;
        v13 = *v103 - v104;
        if (*v103 < v104)
        {
          goto LABEL_130;
        }

        v104 = *v103 - 1;
        sub_2311E6448(v107 + 16, v13, v107);
        *v103 = v104;
        v19 = v105;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v19 = sub_2311E6430(v19, v13, v14, v15);
    goto LABEL_104;
  }

  v110 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v113 = v18;
    if (v18 + 1 < v17)
    {
      v111 = v19;
      v22 = *v122;
      v4 = *(v120 + 72);
      v23 = v18;
      v24 = *v122 + v4 * v21;
      v25 = v128;
      v119 = v17;
      sub_231311704(v24, v128, &qword_27DD434C0, &unk_23136CA00);
      v26 = v129;
      sub_231311704(v22 + v4 * v23, v129, &qword_27DD434C0, &unk_23136CA00);
      v118 = sub_2313672C0();
      v117 = sub_2313672C0();
      sub_231228E9C(v26, &qword_27DD434C0, &unk_23136CA00);
      sub_231228E9C(v25, &qword_27DD434C0, &unk_23136CA00);
      v27 = v119;
      v28 = v113 + 2;
      v121 = v4;
      v29 = v22 + v4 * (v113 + 2);
      while (1)
      {
        v30 = v28;
        v31 = v21 + 1;
        if (v31 >= v27)
        {
          break;
        }

        LODWORD(v124) = v118 < v117;
        v4 = v128;
        v125 = v28;
        sub_231311704(v29, v128, &qword_27DD434C0, &unk_23136CA00);
        v32 = v129;
        sub_231311704(v24, v129, &qword_27DD434C0, &unk_23136CA00);
        v33 = v31;
        v34 = sub_2313672C0();
        v35 = sub_2313672C0();
        sub_231228E9C(v32, &qword_27DD434C0, &unk_23136CA00);
        sub_231228E9C(v4, &qword_27DD434C0, &unk_23136CA00);
        v30 = v125;
        v27 = v119;
        v36 = v34 < v35;
        v21 = v33;
        v37 = !v36;
        v38 = v124 ^ v37;
        v29 += v121;
        v24 += v121;
        v28 = v125 + 1;
        if ((v38 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v21 = v27;
LABEL_12:
      v19 = v111;
      if (v118 >= v117)
      {
        goto LABEL_32;
      }

      v20 = v113;
      if (v21 < v113)
      {
        goto LABEL_134;
      }

      if (v113 < v21)
      {
        if (v27 >= v30)
        {
          v39 = v30;
        }

        else
        {
          v39 = v27;
        }

        v40 = v113;
        v41 = v21;
        v42 = v121 * (v39 - 1);
        v43 = v121 * v39;
        v44 = v113 * v121;
        v119 = v41;
        do
        {
          if (v40 != --v41)
          {
            v45 = *v122;
            if (!*v122)
            {
              goto LABEL_141;
            }

            sub_231311624(v45 + v44, v116);
            v46 = v44 < v42 || v45 + v44 >= (v45 + v43);
            if (v46)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_231311624(v116, v45 + v42);
          }

          ++v40;
          v42 -= v121;
          v43 -= v121;
          v44 += v121;
        }

        while (v40 < v41);
        v19 = v111;
        v21 = v119;
LABEL_32:
        v20 = v113;
      }
    }

    v47 = v122[1];
    if (v21 < v47)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_133;
      }

      if (v21 - v20 < v110)
      {
        break;
      }
    }

LABEL_49:
    if (v21 < v20)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126DB78();
      v19 = v100;
    }

    v58 = *(v19 + 2);
    v59 = v58 + 1;
    if (v58 >= *(v19 + 3) >> 1)
    {
      sub_23126DB78();
      v19 = v101;
    }

    *(v19 + 2) = v59;
    v60 = v19 + 32;
    v61 = &v19[16 * v58 + 32];
    *v61 = v113;
    *(v61 + 1) = v21;
    v4 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    v119 = v21;
    if (v58)
    {
      while (1)
      {
        v62 = v59 - 1;
        v63 = &v60[16 * v59 - 16];
        v64 = &v19[16 * v59];
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v65 = *(v19 + 4);
          v66 = *(v19 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_69:
          if (v68)
          {
            goto LABEL_119;
          }

          v80 = *v64;
          v79 = *(v64 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_122;
          }

          v84 = *(v63 + 1);
          v85 = v84 - *v63;
          if (__OFSUB__(v84, *v63))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v82, v85))
          {
            goto LABEL_127;
          }

          if (v82 + v85 >= v67)
          {
            if (v67 < v85)
            {
              v62 = v59 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v59 < 2)
        {
          goto LABEL_121;
        }

        v87 = *v64;
        v86 = *(v64 + 1);
        v75 = __OFSUB__(v86, v87);
        v82 = v86 - v87;
        v83 = v75;
LABEL_84:
        if (v83)
        {
          goto LABEL_124;
        }

        v89 = *v63;
        v88 = *(v63 + 1);
        v75 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v75)
        {
          goto LABEL_126;
        }

        if (v90 < v82)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v62 - 1 >= v59)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v122)
        {
          goto LABEL_139;
        }

        v94 = &v60[16 * v62 - 16];
        v95 = *v94;
        v96 = &v60[16 * v62];
        v97 = *(v96 + 1);
        v98 = v123;
        sub_231311164(*v122 + *(v120 + 72) * *v94, *v122 + *(v120 + 72) * *v96, *v122 + *(v120 + 72) * v97, v4);
        v123 = v98;
        if (v98)
        {
          goto LABEL_112;
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        v99 = v19;
        v19 = *(v19 + 2);
        if (v62 > v19)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        if (v62 >= v19)
        {
          goto LABEL_116;
        }

        v59 = (v19 - 1);
        sub_2311E6448(v96 + 16, &v19[-v62 - 1], &v60[16 * v62]);
        *(v99 + 2) = v19 - 1;
        v36 = v19 > 2;
        v19 = v99;
        if (!v36)
        {
          goto LABEL_98;
        }
      }

      v69 = &v60[16 * v59];
      v70 = *(v69 - 8);
      v71 = *(v69 - 7);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_117;
      }

      v74 = *(v69 - 6);
      v73 = *(v69 - 5);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_118;
      }

      v76 = *(v64 + 1);
      v77 = v76 - *v64;
      if (__OFSUB__(v76, *v64))
      {
        goto LABEL_120;
      }

      v75 = __OFADD__(v67, v77);
      v78 = v67 + v77;
      if (v75)
      {
        goto LABEL_123;
      }

      if (v78 >= v72)
      {
        v92 = *v63;
        v91 = *(v63 + 1);
        v75 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v75)
        {
          goto LABEL_131;
        }

        if (v67 < v93)
        {
          v62 = v59 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v17 = v122[1];
    v18 = v119;
    if (v119 >= v17)
    {
      goto LABEL_102;
    }
  }

  v48 = v20 + v110;
  if (__OFADD__(v20, v110))
  {
    goto LABEL_135;
  }

  if (v48 >= v47)
  {
    v48 = v122[1];
  }

  if (v48 < v20)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v21 == v48)
  {
    goto LABEL_49;
  }

  v111 = v19;
  v49 = *v122;
  v50 = *(v120 + 72);
  v51 = *v122 + v50 * (v21 - 1);
  v124 = -v50;
  v125 = v49;
  v52 = v20 - v21;
  v114 = v50;
  v115 = v48;
  v53 = v49 + v21 * v50;
LABEL_42:
  v118 = v52;
  v119 = v21;
  v117 = v53;
  v121 = v51;
  while (1)
  {
    v54 = v128;
    sub_231311704(v53, v128, &qword_27DD434C0, &unk_23136CA00);
    v4 = v129;
    sub_231311704(v51, v129, &qword_27DD434C0, &unk_23136CA00);
    v55 = sub_2313672C0();
    v56 = sub_2313672C0();
    sub_231228E9C(v4, &qword_27DD434C0, &unk_23136CA00);
    sub_231228E9C(v54, &qword_27DD434C0, &unk_23136CA00);
    if (v55 >= v56)
    {
LABEL_47:
      v21 = v119 + 1;
      v51 = v121 + v114;
      v52 = v118 - 1;
      v53 = v117 + v114;
      if (v119 + 1 == v115)
      {
        v21 = v115;
        v19 = v111;
        v20 = v113;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    if (!v125)
    {
      break;
    }

    v57 = v126;
    sub_231311624(v53, v126);
    swift_arrayInitWithTakeFrontToBack();
    sub_231311624(v57, v51);
    v51 += v124;
    v53 += v124;
    v46 = __CFADD__(v52++, 1);
    if (v46)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_231310A9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_231367290();
  v79 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for RankedCandidateSuggestion(0);
  MEMORY[0x28223BE20](v74);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - v13;
  MEMORY[0x28223BE20](v15);
  v73 = &v66 - v16;
  MEMORY[0x28223BE20](v17);
  v72 = &v66 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_73;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_74;
  }

  v75 = v8;
  v82 = a1;
  v81 = a4;
  v24 = (v79 + 8);
  v25 = v22 / v20;
  v76 = (v79 + 8);
  if ((a2 - a1) / v20 >= v22 / v20)
  {
    sub_23126F660(a2, v22 / v20, a4);
    v41 = a4 + v25 * v20;
    v42 = -v20;
    v43 = v41;
    v78 = a4;
    v73 = -v20;
LABEL_43:
    v44 = a2 + v42;
    v77 = a3;
    v45 = v43;
    v79 = a2;
    v68 = a2 + v42;
    v70 = v43;
    while (1)
    {
      if (v41 <= a4)
      {
        v82 = a2;
        v80 = v45;
        goto LABEL_71;
      }

      if (a2 <= a1)
      {
        break;
      }

      v67 = v45;
      v71 = v41 + v42;
      v72 = v41;
      sub_2311E1984(v41 + v42, v14);
      v46 = v44;
      v47 = v14;
      v48 = v69;
      sub_2311E1984(v46, v69);
      sub_2313672D0();
      v49 = sub_231367270();
      v50 = *v24;
      v51 = v75;
      (*v24)(v10, v75);
      sub_2313672D0();
      v52 = sub_231367270();
      v50(v10, v51);
      if (v49 == v52)
      {
        v53 = sub_2313672C0();
        v54 = v53 < sub_2313672C0();
      }

      else
      {
        sub_2313672D0();
        v55 = sub_231367270();
        v50(v10, v51);
        sub_2313672D0();
        v56 = sub_231367270();
        v50(v10, v51);
        v54 = v55 < v56;
      }

      v57 = v54;
      v58 = v77;
      a3 = v77 + v73;
      sub_2311E1928(v48);
      sub_2311E1928(v47);
      a4 = v78;
      a2 = v79;
      v14 = v47;
      if (v57)
      {
        v63 = v58 < v79 || a3 >= v79;
        v64 = v58;
        v24 = v76;
        v65 = v68;
        if (v63)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v65;
          v43 = v67;
          v41 = v72;
          v42 = v73;
        }

        else
        {
          v43 = v67;
          v21 = v64 == v79;
          a2 = v68;
          v41 = v72;
          v42 = v73;
          if (!v21)
          {
            swift_arrayInitWithTakeBackToFront();
            v41 = v72;
            a2 = v65;
            v43 = v67;
          }
        }

        goto LABEL_43;
      }

      v59 = v58 < v72 || a3 >= v72;
      v60 = v58;
      v24 = v76;
      v44 = v68;
      if (v59)
      {
        v61 = v71;
        swift_arrayInitWithTakeFrontToBack();
        v77 = a3;
        v41 = v61;
        v45 = v61;
        v42 = v73;
        v43 = v70;
      }

      else
      {
        v45 = v71;
        v21 = v72 == v60;
        v77 = a3;
        v41 = v71;
        v42 = v73;
        v43 = v70;
        if (!v21)
        {
          v62 = v71;
          swift_arrayInitWithTakeBackToFront();
          v43 = v70;
          v77 = a3;
          v41 = v62;
          v45 = v62;
          v24 = v76;
        }
      }
    }

    v82 = a2;
    v80 = v43;
  }

  else
  {
    sub_23126F660(a1, (a2 - a1) / v20, a4);
    v70 = a3;
    v71 = a4 + (a2 - a1) / v20 * v20;
    v80 = v71;
    while (a4 < v71 && a2 < a3)
    {
      v77 = a1;
      v79 = a2;
      v27 = v72;
      sub_2311E1984(a2, v72);
      v78 = a4;
      v28 = v73;
      sub_2311E1984(a4, v73);
      sub_2313672D0();
      v29 = sub_231367270();
      v30 = *v24;
      v31 = v75;
      (*v24)(v10, v75);
      sub_2313672D0();
      v32 = sub_231367270();
      v30(v10, v31);
      if (v29 == v32)
      {
        v33 = sub_2313672C0();
        v34 = v33 < sub_2313672C0();
      }

      else
      {
        sub_2313672D0();
        v35 = sub_231367270();
        v30(v10, v31);
        sub_2313672D0();
        v36 = sub_231367270();
        v30(v10, v31);
        v34 = v35 < v36;
      }

      v37 = v34;
      sub_2311E1928(v28);
      sub_2311E1928(v27);
      a4 = v78;
      a2 = v79;
      if (v37)
      {
        v24 = v76;
        v38 = v77;
        v39 = v77 < v79 || v77 >= v79 + v20;
        a3 = v70;
        if (v39)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v77 != v79)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v20;
      }

      else
      {
        v24 = v76;
        v38 = v77;
        v40 = v77 < v78 || v77 >= v78 + v20;
        a3 = v70;
        if (v40)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v77 != v78)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v81 = a4 + v20;
        a4 += v20;
      }

      a1 = v38 + v20;
      v82 = a1;
    }
  }

LABEL_71:
  sub_23120C48C(&v82, &v81, &v80);
}

void sub_231311164(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = a4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  MEMORY[0x28223BE20](v52);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v45 - v9;
  v11 = *(v10 + 72);
  if (!v11)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v12 = a2 - a1 == 0x8000000000000000 && v11 == -1;
  if (v12)
  {
    goto LABEL_60;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v11;
  v58 = a1;
  v57 = v55;
  v16 = v13 / v11;
  if (v15 >= v13 / v11)
  {
    v27 = v55;
    sub_23126F698(a2, v13 / v11, v55);
    v28 = v27 + v16 * v11;
    v29 = -v11;
    v30 = v28;
    v48 = a1;
    v49 = v29;
LABEL_36:
    v31 = a2 + v29;
    v32 = a3;
    v46 = v30;
    v50 = a2 + v29;
    while (1)
    {
      if (v28 <= v55)
      {
        v58 = a2;
        v56 = v30;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v47 = v30;
      a3 = v32 + v29;
      v33 = v28 + v29;
      v34 = v53;
      v35 = v28;
      sub_231311704(v28 + v29, v53, &qword_27DD434C0, &unk_23136CA00);
      v36 = v31;
      v37 = v54;
      sub_231311704(v36, v54, &qword_27DD434C0, &unk_23136CA00);
      v38 = v34;
      v51 = sub_2313672C0();
      v39 = sub_2313672C0();
      sub_231228E9C(v37, &qword_27DD434C0, &unk_23136CA00);
      sub_231228E9C(v38, &qword_27DD434C0, &unk_23136CA00);
      if (v51 < v39)
      {
        v41 = v35;
        if (v32 < a2 || a3 >= a2)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v47;
          a1 = v48;
          v29 = v49;
          v28 = v41;
        }

        else
        {
          v43 = v47;
          a1 = v48;
          v30 = v47;
          v12 = v32 == a2;
          v29 = v49;
          v44 = v50;
          a2 = v50;
          v28 = v41;
          if (!v12)
          {
            swift_arrayInitWithTakeBackToFront();
            v28 = v41;
            a2 = v44;
            v30 = v43;
          }
        }

        goto LABEL_36;
      }

      if (v32 < v35 || a3 >= v35)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 += v29;
        v28 = v33;
        v30 = v33;
        a1 = v48;
        v29 = v49;
        v31 = v50;
      }

      else
      {
        v30 = v33;
        v12 = v35 == v32;
        v32 += v29;
        v28 = v33;
        a1 = v48;
        v29 = v49;
        v31 = v50;
        if (!v12)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = a3;
          v28 = v33;
          v30 = v33;
        }
      }
    }

    v58 = a2;
    v56 = v46;
  }

  else
  {
    v17 = v55;
    sub_23126F698(a1, (a2 - a1) / v11, v55);
    v50 = a3;
    v51 = v17 + v15 * v11;
    v56 = v51;
    while (v55 < v51 && a2 < a3)
    {
      v19 = v53;
      sub_231311704(a2, v53, &qword_27DD434C0, &unk_23136CA00);
      v20 = a2;
      v21 = v54;
      sub_231311704(v55, v54, &qword_27DD434C0, &unk_23136CA00);
      v22 = sub_2313672C0();
      v23 = sub_2313672C0();
      sub_231228E9C(v21, &qword_27DD434C0, &unk_23136CA00);
      sub_231228E9C(v19, &qword_27DD434C0, &unk_23136CA00);
      if (v22 >= v23)
      {
        v25 = v55 + v11;
        if (a1 < v55 || a1 >= v25)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v50;
          a2 = v20;
        }

        else
        {
          a3 = v50;
          a2 = v20;
          if (a1 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v57 = v25;
        v55 = v25;
      }

      else
      {
        a2 = v20 + v11;
        if (a1 < v20 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v50;
        }

        else
        {
          a3 = v50;
          if (a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 += v11;
      v58 = a1;
    }
  }

LABEL_58:
  sub_23120C4A4(&v58, &v57, &v56);
}

uint64_t sub_231311624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231311694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231311704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_231311760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_18_21()
{
  *(v2 + 16) = v0;
  v5 = v2 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

void OUTLINED_FUNCTION_26_18(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  v18 = v17 + a1;
  *v18 = a17;
  *(v18 + 8) = a16;
}

uint64_t sub_231311890(uint64_t a1, uint64_t a2)
{
  v2 = sub_231369FD0();
  v4 = v3;
  v5 = sub_231369FD0();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_48_10(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_231311914(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6150646E6F636573;
  }

  else
  {
    v3 = 0x7361507473726966;
  }

  if (v2)
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xEA00000000007373;
  }

  if (a2)
  {
    v5 = 0x6150646E6F636573;
  }

  else
  {
    v5 = 0x7361507473726966;
  }

  if (a2)
  {
    v6 = 0xEA00000000007373;
  }

  else
  {
    v6 = 0xE900000000000073;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_48_10(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_2313119F8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = &unk_23137A540;
  v4 = &unk_23137A540;
  v5 = a1;
  v6 = 0xD00000000000001FLL;
  switch(v5)
  {
    case 1:
      v4 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
      break;
    case 2:
      v4 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
      v6 = 0xD000000000000019;
      break;
    case 3:
      v4 = "SIRI_SUGGESTIONS_PLATFORM";
      v6 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
      break;
    case 2:
      v3 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
      v2 = 0xD000000000000019;
      break;
    case 3:
      v3 = "SIRI_SUGGESTIONS_PLATFORM";
      v2 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_48_10(v6, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_231311B0C(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x4C65727574616566;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v2 == 1)
    {
      v4 = 0xEE00676E6967676FLL;
    }

    else
    {
      v4 = 0x800000023137BDB0;
    }
  }

  else
  {
    v4 = 0x800000023137BD80;
    v3 = 0xD000000000000019;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x4C65727574616566;
    }

    else
    {
      v5 = 0xD000000000000017;
    }

    if (a2 == 1)
    {
      v6 = 0xEE00676E6967676FLL;
    }

    else
    {
      v6 = 0x800000023137BDB0;
    }
  }

  else
  {
    v6 = 0x800000023137BD80;
    v5 = 0xD000000000000019;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_48_10(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_231311BF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_23133F8E8(a1);
  v5 = v4;
  v6 = sub_23133F8E8(v2);
  if (v3 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_48_10(v3, v7, v6);
  }

  return v9 & 1;
}

uint64_t sub_231311C68(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6C61697274;
  }

  else
  {
    v3 = 0x43746C7561666564;
  }

  if (v2)
  {
    v4 = 0xED00006769666E6FLL;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x6C61697274;
  }

  else
  {
    v5 = 0x43746C7561666564;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xED00006769666E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_48_10(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_231311D4C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_231327268(a4, a5, a6);
  OUTLINED_FUNCTION_90_1();
  sub_23136A140();
  OUTLINED_FUNCTION_90_1();
  sub_23136A140();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_16_24(v15, v9, v13);
  }

  return v11 & 1;
}

uint64_t sub_231311E10(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED0000676E6F7257;
  v3 = 0x6B6361626C6C6166;
  v4 = a1;
  v5 = 0x6B6361626C6C6166;
  v6 = 0xED0000676E6F7257;
  switch(v4)
  {
    case 1:
      v7 = "trialConfigFilePathError";
      goto LABEL_6;
    case 2:
      v7 = "trialOwnerConfigFilePathError";
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD00000000000001DLL;
      break;
    case 3:
      break;
    case 4:
      v6 = 0x800000023137A630;
      v5 = 0xD000000000000014;
      break;
    default:
      v6 = 0x800000023137A5C0;
      v5 = 0xD000000000000018;
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "trialConfigFilePathError";
      goto LABEL_12;
    case 2:
      v8 = "trialOwnerConfigFilePathError";
LABEL_12:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD00000000000001DLL;
      break;
    case 3:
      break;
    case 4:
      v2 = 0x800000023137A630;
      v3 = 0xD000000000000014;
      break;
    default:
      v2 = 0x800000023137A5C0;
      v3 = 0xD000000000000018;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_16_24(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_231311F6C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64656C6261736964;
  }

  else
  {
    v3 = 0x64656C62616E65;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x64656C6261736964;
  }

  else
  {
    v5 = 0x64656C62616E65;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_48_10(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_231312000(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000706C65;
  v3 = 0x4874736567677573;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x536874695777656ELL;
    }

    else
    {
      v5 = 0x4F6874695777656ELL;
    }

    if (v4 == 1)
    {
      v6 = 0xEB00000000697269;
    }

    else
    {
      v6 = 0xE900000000000053;
    }
  }

  else
  {
    v5 = 0x4874736567677573;
    v6 = 0xEB00000000706C65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x536874695777656ELL;
    }

    else
    {
      v3 = 0x4F6874695777656ELL;
    }

    if (a2 == 1)
    {
      v2 = 0xEB00000000697269;
    }

    else
    {
      v2 = 0xE900000000000053;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_24(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_231312304()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_57_1(&unk_2313744C8);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_56_8(v2);
  OUTLINED_FUNCTION_61_6();

  return v4();
}

uint64_t sub_2313123A8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_56_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

void sub_2313124C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_50_9();
  v13 = 0;
  v14 = *(v12 + 24);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
LABEL_2:
  v17 = (v14 + 40 + 24 * v13);
  while (v15 != v13)
  {
    if (v13 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    ++v13;
    v18 = v17 + 3;
    v19 = *v17;
    v17 += 3;
    if (v19)
    {
      a9 = *(v18 - 4);
      v20 = *(v18 - 2);
      sub_231369EE0();
      sub_231369EE0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_18();
        sub_23126DF88();
        v16 = v23;
      }

      v21 = *(v16 + 16);
      if (v21 >= *(v16 + 24) >> 1)
      {
        OUTLINED_FUNCTION_44_8();
        sub_23126DF88();
        v16 = v24;
      }

      *(v16 + 16) = v21 + 1;
      v22 = (v16 + 24 * v21);
      v22[4] = a9;
      v22[5] = v19;
      v22[6] = v20;
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40();

  v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_2313125F8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_57_1(&unk_2313744D0);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_56_8(v2);
  OUTLINED_FUNCTION_61_6();

  return v4();
}

uint64_t sub_23131269C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_56_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

void sub_2313127BC()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = v1 + 32;
    do
    {
      sub_23123EA8C(v4, v0 + 16, &qword_27DD43FA0, &qword_231370E30);
      if (*(v0 + 40))
      {
        v11 = *(v0 + 16);
        v12 = *(v0 + 32);
        v13 = *(v0 + 48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_4_18();
          sub_23126E4AC();
          v3 = v7;
        }

        v5 = *(v3 + 16);
        if (v5 >= *(v3 + 24) >> 1)
        {
          OUTLINED_FUNCTION_44_8();
          sub_23126E4AC();
          v3 = v8;
        }

        *(v3 + 16) = v5 + 1;
        v6 = (v3 + 48 * v5);
        v6[3] = v12;
        v6[4] = v13;
        v6[2] = v11;
      }

      else
      {
        sub_2311D1F18(v0 + 16, &qword_27DD43FA0, &qword_231370E30);
      }

      v4 += 48;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_23131291C()
{
  v0[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DA8, &qword_231370E90) - 8);
  v0[3] = swift_task_alloc();
  v1 = sub_231367120();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_231312A9C;

  return sub_2312AB934();
}

uint64_t sub_231312A9C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 64) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_231312BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_50_9();
  v13 = v12[8];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v12[2];
    v16 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    a9 = v12[5];
    v18 = (a9 + 32);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v21 = v12[3];
      v20 = v12[4];
      v22 = OUTLINED_FUNCTION_69_7();
      sub_23123EA8C(v22, v23, &qword_27DD43DA8, &qword_231370E90);
      OUTLINED_FUNCTION_19_13(v21, 1, v20);
      if (v24)
      {
        sub_2311D1F18(v12[3], &qword_27DD43DA8, &qword_231370E90);
      }

      else
      {
        v25 = *v18;
        (*v18)(v12[6], v12[3], v12[4]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = OUTLINED_FUNCTION_4_18();
          sub_23126F2EC(v30, v31, v32, v33);
          v19 = v34;
        }

        v27 = *(v19 + 16);
        if (v27 >= *(v19 + 24) >> 1)
        {
          OUTLINED_FUNCTION_44_8();
          sub_23126F2EC(v35, v36, v37, v38);
          v19 = v39;
        }

        *(v19 + 16) = v27 + 1;
        OUTLINED_FUNCTION_35_0();
        v25(v19 + v28 + *(v29 + 72) * v27);
      }

      v16 += v17;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_231312DA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F8, qword_2313749E0);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_231322CAC(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_231312E38(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6780(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  sub_231323044(v9);
  *a1 = v3;
}

uint64_t sub_231312F04()
{
  v0 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_22();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  MEMORY[0x28223BE20](v10);
  sub_231366620();
  v11 = *(v2 + 16);
  v12 = OUTLINED_FUNCTION_35_5();
  v11(v12);
  v13 = type metadata accessor for JsonSerializer();
  OUTLINED_FUNCTION_33_16();
  v14 = swift_allocObject();
  v26 = v13;
  v27 = &protocol witness table for JsonSerializer;
  *&v25 = v14;
  (v11)(v6, v9, v0);
  v15 = type metadata accessor for FileBasedConfigBackingStore(0);
  OUTLINED_FUNCTION_10_2();
  v16 = swift_allocObject();
  (*(v2 + 32))(v16 + OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation, v6, v0);
  v23 = v15;
  v24 = sub_231327268(&qword_280F85B48, type metadata accessor for FileBasedConfigBackingStore, &protocol conformance descriptor for FileBasedConfigBackingStore);
  *&v22 = v16;
  v17 = *(v2 + 8);
  v17(v9, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A30, &unk_231377838);
  inited = swift_initStackObject();
  sub_2311D38A8(&v22, inited + 16);
  sub_2311D38A8(&v25, inited + 56);
  sub_23127E82C();
  v19 = OUTLINED_FUNCTION_90_1();
  (v17)(v19);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
  return __swift_destroy_boxed_opaque_existential_1Tm((inited + 56));
}

uint64_t DefaultSuggestionServiceFactory.create(refreshableService:)()
{
  OUTLINED_FUNCTION_8();
  v1[1260] = v0;
  v1[1259] = v2;
  v1[1258] = v3;
  v1[1257] = v4;
  v1[1261] = *v0;
  v5 = sub_231368D70();
  v1[1262] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[1263] = v6;
  v1[1264] = OUTLINED_FUNCTION_67();
  v1[1265] = swift_task_alloc();
  v1[1266] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  OUTLINED_FUNCTION_40_0(v7);
  v1[1267] = OUTLINED_FUNCTION_67();
  v1[1268] = swift_task_alloc();
  v1[1269] = swift_task_alloc();
  v8 = sub_231366690();
  v1[1270] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[1271] = v9;
  v1[1272] = OUTLINED_FUNCTION_67();
  v1[1273] = swift_task_alloc();
  v10 = sub_2313698C0();
  v1[1274] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[1275] = v11;
  v1[1276] = OUTLINED_FUNCTION_67();
  v1[1277] = swift_task_alloc();
  v1[1278] = swift_task_alloc();
  v1[1279] = swift_task_alloc();
  v1[1280] = swift_task_alloc();
  v1[1281] = swift_task_alloc();
  v1[1282] = swift_task_alloc();
  v1[1283] = swift_task_alloc();
  v1[1284] = swift_task_alloc();
  v1[1285] = swift_task_alloc();
  v1[1286] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2313133D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_50_9();
  v13 = *(v12 + 10080);
  v14 = *(v13 + 24);
  *(v12 + 10296) = v14;
  sub_2311CF388(v14 + 56, v12 + 9816);
  __swift_project_boxed_opaque_existential_1((v12 + 9816), *(v12 + 9840));
  v15 = OUTLINED_FUNCTION_28_0();
  *(v12 + 10304) = v16(v15);
  *(v12 + 10312) = v17;
  v18 = __swift_destroy_boxed_opaque_existential_1Tm((v12 + 9816));
  if (*(v13 + 16) == 1)
  {
    sub_2311CF388(v14 + 16, v12 + 8896);
    __swift_project_boxed_opaque_existential_1((v12 + 8896), *(v12 + 8920));
    v21 = OUTLINED_FUNCTION_71();
    v22(v21);
    memcpy((v12 + 440), __src, 0x1A8uLL);
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 8896));
    sub_2311CF388(v14 + 136, v12 + 9576);
    v28 = *(v12 + 9608);
    __swift_project_boxed_opaque_existential_1((v12 + 9576), *(v12 + 9600));
    sub_231369320();
    (*(v28 + 8))();

    sub_2311D38A8((v12 + 9496), v12 + 9736);
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 9576));
    sub_2311CF388(v14 + 96, v12 + 9376);
    __swift_project_boxed_opaque_existential_1((v12 + 9376), *(v12 + 9400));
    v38 = OUTLINED_FUNCTION_71();
    v39(v38);
    sub_2311D38A8((v12 + 9256), v12 + 9416);
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 9376));
    v106 = *(v12 + 624);
    *(v12 + 10320) = v106;
    v105 = *(v12 + 632);
    *(v12 + 10328) = v105;
    sub_231369100();
    sub_2311CF388(v12 + 9416, v12 + 9176);
    v40 = sub_2313698A0();
    v41 = v12;
    v42 = sub_23136A390();
    v43 = os_log_type_enabled(v40, v42);
    v44 = *(v12 + 10288);
    v45 = *(v12 + 10200);
    v46 = v41[1274];
    if (v43)
    {
      OUTLINED_FUNCTION_17();
      v107 = v46;
      v47 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      v48 = swift_slowAlloc();
      __src[0] = v48;
      *v47 = 136315138;
      v49 = v41[1150];
      v50 = v41[1151];
      __swift_project_boxed_opaque_existential_1(v41 + 1147, v49);
      v103 = v44;
      (*(v50 + 16))(v49, v50);
      v51 = MEMORY[0x23192A860]();
      v53 = v52;

      __swift_destroy_boxed_opaque_existential_1Tm(v41 + 1147);
      v54 = sub_2311CFD58(v51, v53, __src);

      *(v47 + 4) = v54;
      _os_log_impl(&dword_2311CB000, v40, v42, "available engagement estimator models: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      v55 = *(v45 + 8);
      v55(v103, v107);
    }

    else
    {

      v55 = *(v45 + 8);
      v56 = OUTLINED_FUNCTION_28();
      (v55)(v56);
      __swift_destroy_boxed_opaque_existential_1Tm(v41 + 1147);
    }

    v57 = v41;
    sub_231369100();
    sub_231369EE0();
    v58 = sub_2313698A0();
    v59 = sub_23136A390();

    v60 = OUTLINED_FUNCTION_132();
    v61 = v41[1285];
    v62 = v41[1274];
    v108 = v55;
    if (v60)
    {
      OUTLINED_FUNCTION_17();
      v104 = v61;
      v63 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      v64 = swift_slowAlloc();
      __src[0] = v64;
      *v63 = 136315138;
      v65 = OUTLINED_FUNCTION_69_7();
      *(v63 + 4) = sub_2311CFD58(v65, v66, v67);
      OUTLINED_FUNCTION_47_9(&dword_2311CB000, v68, v59, "Loading smart suppression model %s in repository");
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      v55 = v108;
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      v69 = v104;
    }

    else
    {

      v69 = v61;
    }

    v55(v69, v62);
    __swift_project_boxed_opaque_existential_1(v41 + 1177, v41[1180]);
    v70 = OUTLINED_FUNCTION_69_7();
    v72 = v71(v70);
    v41[1292] = v72;
    if (v72)
    {
      sub_231369100();
      sub_231369EE0();
      v73 = sub_2313698A0();
      v74 = sub_23136A390();

      v75 = os_log_type_enabled(v73, v74);
      v76 = v41[1284];
      v77 = v41[1274];
      if (v75)
      {
        OUTLINED_FUNCTION_17();
        v78 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_16();
        v79 = swift_slowAlloc();
        __src[0] = v79;
        *v78 = 136315138;
        *(v78 + 4) = sub_2311CFD58(v106, v105, __src);
        OUTLINED_FUNCTION_47_9(&dword_2311CB000, v80, v74, "Successfully loaded smart suppression model %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        v57 = v41;
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      v108(v76, v77);
      sub_2311CF388(v14 + 176, (v57 + 1142));
      v81 = v57[1145];
      v82 = v57[1146];
      __swift_project_boxed_opaque_existential_1(v57 + 1142, v81);
      (*(v82 + 8))(v81, v82);
      v57[1293] = 0;
      *(v57 + 647) = *(v57 + 1249);
      __swift_destroy_boxed_opaque_existential_1Tm(v57 + 1142);
      type metadata accessor for OwnershipExtractorUtils();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449E8, &unk_231377338);
      OUTLINED_FUNCTION_55_10();
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_23136C1C0;
      v96 = type metadata accessor for InteractionOwnershipExtractor();
      OUTLINED_FUNCTION_33_16();
      v97 = swift_allocObject();
      *(v95 + 56) = v96;
      *(v95 + 64) = &protocol witness table for InteractionOwnershipExtractor;
      *(v95 + 32) = v97;
      valid = type metadata accessor for ValidOpenAppsOwnershipExtractor();
      OUTLINED_FUNCTION_33_16();
      v99 = swift_allocObject();
      *(v95 + 96) = valid;
      *(v95 + 104) = &protocol witness table for ValidOpenAppsOwnershipExtractor;
      *(v95 + 72) = v99;
      sub_2312B0108(v95, v57 + 1202);

      type metadata accessor for SignalExtractorProviderFactory();
      OUTLINED_FUNCTION_18_18();
      v100 = swift_allocObject();
      v57[1296] = v100;
      memcpy((v100 + 16), v57 + 55, 0x1A8uLL);
      sub_231286BB0((v57 + 55), (v57 + 1009));
      v101 = swift_task_alloc();
      v57[1297] = v101;
      *v101 = v57;
      v101[1] = sub_2313142F0;
      OUTLINED_FUNCTION_40();

      return sub_2312B9E74();
    }

    sub_2311F07B0((v41 + 55));
    sub_231369100();
    v83 = sub_2313698A0();
    v84 = sub_23136A3B0();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = OUTLINED_FUNCTION_63();
      *v85 = 0;
      _os_log_impl(&dword_2311CB000, v83, v84, "unable to find smartSuppression model in repository", v85, 2u);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v86 = v41[1257];

    v87 = OUTLINED_FUNCTION_26_1();
    v88 = (v55)(v87);
    sub_231326378(v88, v89, v90);
    OUTLINED_FUNCTION_108_0();
    v91 = swift_allocError();
    *v92 = 2;
    v93 = type metadata accessor for NoOpSuggestionService();
    OUTLINED_FUNCTION_54();
    v94 = swift_allocObject();
    *(v94 + 16) = v91;
    v86[3] = v93;
    v86[4] = &off_2845F6BF8;
    swift_unknownObjectRelease();
    *v86 = v94;
    __swift_destroy_boxed_opaque_existential_1Tm(v57 + 1217);
    __swift_destroy_boxed_opaque_existential_1Tm(v57 + 1177);
  }

  else
  {
    v23 = *(v12 + 10056);
    sub_231326300(v18, v19, v20);
    OUTLINED_FUNCTION_108_0();
    v24 = swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 2;
    v26 = type metadata accessor for NoOpSuggestionService();
    OUTLINED_FUNCTION_54();
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    v23[3] = v26;
    v23[4] = &off_2845F6BF8;
    swift_unknownObjectRelease();
    *v23 = v27;
  }

  OUTLINED_FUNCTION_44_11();

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_40();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_2313142F0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  OUTLINED_FUNCTION_21_13();
  v5 = *(v4 + 10368);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v2 + 10384) = v8;

  swift_setDeallocating();
  memcpy((v2 + 7224), (v5 + 16), 0x1A8uLL);
  sub_2311F07B0(v2 + 7224);
  OUTLINED_FUNCTION_18_18();
  swift_deallocClassInstance();
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23131441C()
{
  v1 = *(v0 + 10160);
  v2 = *(v0 + 10144);
  v3 = *(v0 + 10080);
  v4 = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureEnabledProvider;
  *(v0 + 10392) = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureEnabledProvider;
  sub_2311CF388(&v3[v4], v0 + 9896);
  *(v0 + 10400) = type metadata accessor for DefaultDeliveryVehicleProvider();
  OUTLINED_FUNCTION_21_1();
  v5 = swift_allocObject();
  *(v0 + 10408) = v5;
  sub_2311D38A8((v0 + 9896), v5 + 16);
  v6 = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_clock;
  *(v0 + 10416) = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_clock;
  sub_2311CF388(&v3[v6], v0 + 8856);
  type metadata accessor for DisabledMotionManager();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = type metadata accessor for DefaultSystemEnvironmentService();
  v9 = swift_allocObject();
  v10 = sub_231327268(&qword_280F82118, type metadata accessor for DisabledMotionManager, &unk_23136D8B0);
  v9[2] = 0x4000000000000000;
  v9[3] = v7;
  v9[4] = v10;
  sub_2311D38A8((v0 + 8856), (v9 + 5));
  *(v0 + 9800) = v8;
  *(v0 + 9808) = &protocol witness table for DefaultSystemEnvironmentService;
  *(v0 + 9776) = v9;
  type metadata accessor for DefaultEnvironmentSnapshotService();
  OUTLINED_FUNCTION_21_1();
  v11 = swift_allocObject();
  *(v0 + 10424) = v11;
  sub_2311D38A8((v0 + 9776), v11 + 16);
  sub_23123EA8C(&v3[OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_overrideCatTemplateDirectory], v2, &qword_27DD44108, &unk_231373A40);
  v12 = *(v0 + 472);
  v13 = *(v0 + 480);
  *(v0 + 10432) = v12;
  *(v0 + 10440) = v13;
  OUTLINED_FUNCTION_19_13(v2, 1, v1);
  if (v14)
  {
    v15 = *(v0 + 10160);
    v16 = *(v0 + 10144);
    sub_231369EE0();
    OUTLINED_FUNCTION_28_0();
    sub_231366680();

    OUTLINED_FUNCTION_19_13(v16, 1, v15);
    if (!v14)
    {
      sub_2311D1F18(*(v0 + 10144), &qword_27DD44108, &unk_231373A40);
    }
  }

  else
  {
    (*(*(v0 + 10168) + 32))(*(v0 + 10152), *(v0 + 10144), *(v0 + 10160));
    OUTLINED_FUNCTION_44_8();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  v21 = *(v0 + 10152);
  OUTLINED_FUNCTION_19_13(v21, 1, *(v0 + 10160));
  if (v14)
  {

    sub_2311D1F18(v21, &qword_27DD44108, &unk_231373A40);
    sub_231369100();
    sub_231369EE0();
    sub_231286BB0(v0 + 440, v0 + 16);
    sub_231369EE0();
    v22 = sub_2313698A0();
    v40 = sub_23136A3B0();
    sub_2311F07B0(v0 + 440);
    v23 = os_log_type_enabled(v22, v40);
    v24 = *(v0 + 10256);
    v25 = *(v0 + 10200);
    v26 = *(v0 + 10192);
    if (v23)
    {
      OUTLINED_FUNCTION_17();
      v81 = v24;
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      v3 = swift_slowAlloc();
      *v27 = 136315138;
      v28 = OUTLINED_FUNCTION_28_0();
      v4 = sub_2311CFD58(v28, v29, v30);

      *(v27 + 4) = v4;
      OUTLINED_FUNCTION_37_2(&dword_2311CB000, v31, v32, "Unable to construct template URL from %s and no override is set");
      __swift_destroy_boxed_opaque_existential_1Tm(v3);
      v33 = OUTLINED_FUNCTION_17_19();
      MEMORY[0x23192B930](v33);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      (*(v25 + 8))(v81, v26);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    v46 = sub_2311F07B0(v0 + 440);
    sub_231326300(v46, v47, v48);
    OUTLINED_FUNCTION_108_0();
    v45 = swift_allocError();
    *v49 = v12;
    *(v49 + 8) = v13;
    *(v49 + 16) = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v80 = v4;
  v82 = v3;
  v34 = *(v0 + 10344);
  v35 = *(v0 + 10176);
  v36 = *(v0 + 10168);
  v4 = *(v0 + 10080);
  v37 = OUTLINED_FUNCTION_115_0();
  v38(v37);
  v39 = type metadata accessor for SimpleDialogService();
  OUTLINED_FUNCTION_33_16();
  v40 = swift_allocObject();
  v41 = type metadata accessor for CATDialogService(0);
  v3 = (v36 + 16);
  OUTLINED_FUNCTION_61_6();
  v42();
  CATDialogService.__allocating_init(templateDirectory:)(v35);
  OUTLINED_FUNCTION_24_0();
  v43 = type metadata accessor for DynamicDialogService();
  v44 = OUTLINED_FUNCTION_55_6(v43);
  *(v0 + 10448) = v44;
  v44[5] = v39;
  v44[6] = sub_231327268(qword_280F82A30, type metadata accessor for SimpleDialogService, &protocol conformance descriptor for SimpleDialogService);
  v44[2] = v40;
  v44[10] = v41;
  v44[11] = sub_231327268(&qword_280F841D8, type metadata accessor for CATDialogService, &protocol conformance descriptor for CATDialogService);
  v44[7] = v41;
  (*(v4 + 32))();
  *(v0 + 10456) = v34;
  if (v34)
  {
    v45 = v34;
    (*(*(v0 + 10168) + 8))(*(v0 + 10184), *(v0 + 10160));

    sub_2311F07B0(v0 + 440);
LABEL_13:
    sub_231369100();
    v50 = v45;
    v51 = sub_2313698A0();
    v52 = sub_23136A3B0();

    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_17();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      v55 = v45;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v56;
      *v54 = v56;
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
      sub_2311D1F18(v54, &qword_27DD433B0, &unk_23136EDC0);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    OUTLINED_FUNCTION_58_8();
    v62 = *(v0 + 10056);

    (*(v40 + 8))(v3, v4);
    v63 = type metadata accessor for NoOpSuggestionService();
    OUTLINED_FUNCTION_54();
    v64 = swift_allocObject();
    *(v64 + 16) = v45;
    v62[3] = v63;
    v62[4] = &off_2845F6BF8;
    v65 = v45;

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    *v62 = v64;

    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_2_27();
    OUTLINED_FUNCTION_53_11();

    OUTLINED_FUNCTION_56_0();

    return v66();
  }

  v68 = *(v0 + 10296);
  v69 = *(v0 + 10080);
  *(v0 + 10464) = *(v0 + 10008);
  sub_231367CA0();
  OUTLINED_FUNCTION_10_11();

  v70 = sub_231367C90();
  *(v0 + 10472) = v70;
  v71 = (v69 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureServiceFactory);
  v72 = *(v69 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureServiceFactory + 24);
  v73 = v71[4];
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v74 = v68[5];
  v75 = v68[6];
  __swift_project_boxed_opaque_existential_1(v68 + 2, v74);
  *(v0 + 8960) = v74;
  *(v0 + 8968) = *(v75 + 8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 8936));
  OUTLINED_FUNCTION_26_0();
  (*(v76 + 16))();
  *(v0 + 8976) = 0u;
  *(v0 + 8992) = 0u;
  *(v0 + 9008) = 0;
  v79 = (*(v73 + 8) + **(v73 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 10480) = v77;
  *v77 = v78;
  v77[1] = sub_231314D4C;

  return v79(v0 + 9936, &v82[v80], v0 + 8936, v0 + 8976, v70, v72, v73);
}

uint64_t sub_231314D4C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  OUTLINED_FUNCTION_21_13();
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  sub_2311D1F18(v2 + 8976, &qword_27DD449F0, &qword_231377348);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 8936));
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231314E54()
{
  OUTLINED_FUNCTION_50_9();
  OUTLINED_FUNCTION_131_0(v0 + 850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44030, &qword_231377350);
  v1 = swift_allocObject();
  v0[1311] = v1;
  *(v1 + 16) = xmmword_23136B670;
  v2 = v0[1245];
  v3 = v0[1246];
  __swift_project_boxed_opaque_existential_1(v0 + 1242, v2);
  *(v1 + 56) = v2;
  *(v1 + 64) = *(v3 + 16);
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  OUTLINED_FUNCTION_26_0();
  (*(v4 + 16))();
  sub_231286BB0((v0 + 55), (v0 + 797));
  v5 = swift_task_alloc();
  v0[1312] = v5;
  *v5 = v0;
  v5[1] = sub_231314FD8;
  OUTLINED_FUNCTION_38_4(v0[1258]);
  OUTLINED_FUNCTION_40();

  return sub_23131F9E8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_231314FD8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  OUTLINED_FUNCTION_21_13();
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  swift_setDeallocating();
  sub_231322BEC(&qword_27DD43DE8, &unk_231370EE0);
  memcpy((v2 + 7648), (v2 + 6800), 0x1A8uLL);
  sub_2311F07B0(v2 + 7648);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231315108()
{
  v60 = v0;
  v1 = *(v0 + 10456);
  v2 = *(v0 + 10080);
  v3 = *(v2 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_dataServiceFactory + 24);
  v4 = *(v2 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_dataServiceFactory + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_dataServiceFactory), v3);
  OUTLINED_FUNCTION_131_0((v0 + 5952));
  v5 = *(v4 + 8);
  sub_231286BB0(v0 + 440, v0 + 5528);
  v5(sub_2313263CC, v2, v0 + 9936, v0 + 5952, v3, v4);
  if (v1)
  {

    OUTLINED_FUNCTION_124_0();
    sub_2311F07B0(v0 + 5104);
    v6 = OUTLINED_FUNCTION_40_8();
    v11(v6, v10);
    sub_2311F07B0(v0 + 440);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9936));
    sub_231369100();
    v12 = v1;
    v13 = sub_2313698A0();
    v14 = sub_23136A3B0();

    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_17();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      OUTLINED_FUNCTION_47_9(&dword_2311CB000, v20, v14, "error creating suggestion service api %@");
      sub_2311D1F18(v17, &qword_27DD433B0, &unk_23136EDC0);
      v21 = OUTLINED_FUNCTION_12_22();
      MEMORY[0x23192B930](v21);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v22 = *(v0 + 10056);

    v23 = OUTLINED_FUNCTION_111_0();
    v24(v23);
    v25 = type metadata accessor for NoOpSuggestionService();
    OUTLINED_FUNCTION_54();
    v26 = swift_allocObject();
    *(v26 + 16) = v1;
    v22[3] = v25;
    v22[4] = &off_2845F6BF8;
    v27 = v1;

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    *v22 = v26;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9616));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9736));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9416));
    OUTLINED_FUNCTION_2_27();
    OUTLINED_FUNCTION_44_11();

    OUTLINED_FUNCTION_56_0();

    return v28();
  }

  else
  {
    v7 = *(v0 + 10464);
    v8 = *(v0 + 10416);
    v9 = *(v0 + 10080);
    OUTLINED_FUNCTION_124_0();
    sub_2311F07B0(v0 + 4680);
    type metadata accessor for ConfigOverrideDataService();
    v59[0] = v7;
    sub_23124371C(v0 + 9096, v59, sub_2312436D0, 0, (v0 + 9296));
    OUTLINED_FUNCTION_131_0((v0 + 4256));
    sub_231286BB0(v0 + 440, v0 + 3832);
    sub_231321F08((v0 + 4256), (v9 + v8), v0 + 9736, (v0 + 9416), (v0 + 9336));
    v57 = *(v0 + 10160);
    v29 = *(v0 + 10464);
    v30 = *(v0 + 10136);
    v31 = *(v0 + 10080);
    memcpy((v0 + 2984), (v0 + 4256), 0x1A8uLL);
    sub_2311F07B0(v0 + 2984);
    sub_231369820();
    swift_allocObject();
    v55 = sub_231369800();
    *(v0 + 10504) = v55;
    sub_2311CF388(v31 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_pipelineFactory, v0 + 9536);
    v53 = *(v0 + 9568);
    v54 = *(v0 + 9560);
    __swift_project_boxed_opaque_existential_1((v0 + 9536), v54);
    OUTLINED_FUNCTION_131_0((v0 + 2560));
    memcpy((v0 + 8496), (v0 + 640), 0x48uLL);
    memcpy((v0 + 8568), (v0 + 640), 0x48uLL);
    *(v0 + 10024) = v29;
    sub_231286BB0(v0 + 440, v0 + 2136);
    sub_231369EE0();
    sub_231286BB0(v0 + 440, v0 + 1712);
    sub_231369EE0();
    swift_unknownObjectRetain();
    sub_2311E6694(v0 + 8496, v0 + 8784);

    sub_231366680();

    result = OUTLINED_FUNCTION_19_13(v30, 1, v57);
    if (!v32)
    {
      v34 = *(v0 + 10448);
      v35 = *(v0 + 10416);
      v36 = *(v0 + 10408);
      v37 = *(v0 + 10400);
      v38 = *(v0 + 10392);
      v39 = *(v0 + 10136);
      v40 = *(v0 + 10080);
      v58 = *(v0 + 10352);
      sub_2311F07B0(v0 + 440);
      v41 = type metadata accessor for ConfigurablePresentationService();
      OUTLINED_FUNCTION_55_10();
      v42 = swift_allocObject();
      v43 = sub_2313259D8((v0 + 440), v34, v39, v42);
      *(v0 + 9720) = v41;
      *(v0 + 9728) = &protocol witness table for ConfigurablePresentationService;
      *(v0 + 9696) = v43;
      v44 = v40 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_selfLogger;
      *(v0 + 9880) = v37;
      *(v0 + 9888) = &off_2845F5AA8;
      *(v0 + 9856) = v36;
      v45 = v40 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_appUtils;
      *(v0 + 9976) = v58;
      v46 = *(v53 + 8);

      v56 = v46 + *v46;
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v0 + 10512) = v47;
      *v47 = v48;
      v47[1] = sub_231315960;
      v49 = *(v0 + 10312);
      v50 = *(v0 + 10304);
      v51 = *(v0 + 10072);
      v52 = *(v0 + 10064);
      v75 = v53;
      v74 = v54;
      v72 = v0 + 9976;
      v73 = v55;
      v71 = v45;
      v69 = v49;
      v70 = v0 + 9736;
      v68 = v50;
      v66 = v40 + v35;
      v67 = v0 + 9856;
      v64 = v51;
      v65 = v44;
      v62 = v40 + v38;
      v63 = v52;

      __asm { BRAA            X8, X16 }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_231315960()
{
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *v4 = *v1;
  v3[1315] = v5;
  v3[1316] = v0;

  if (v0)
  {
    memcpy(v3 + 1089, v3 + 1071, 0x48uLL);
    sub_231286838((v3 + 1089));
    memcpy(v3 + 161, v3 + 320, 0x1A8uLL);
    sub_2311F07B0((v3 + 161));
  }

  else
  {
    memcpy(v3 + 1080, v3 + 1071, 0x48uLL);
    sub_231286838((v3 + 1080));
    memcpy(v3 + 108, v3 + 320, 0x1A8uLL);
    sub_2311F07B0((v3 + 108));
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 1232);
    OUTLINED_FUNCTION_72_6(v3 + 1212);
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_55();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231315B28()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_72_6((v0 + 9536));
  *(v0 + 10536) = swift_getObjectType();
  v2 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_231315BB0, v2, v1);
}

uint64_t sub_231315BB0()
{
  OUTLINED_FUNCTION_8();
  sub_2313684C0();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_231315C18()
{
  v1 = *(v0 + 10104);
  (*(v1 + 104))(*(v0 + 10120), *MEMORY[0x277D61198], *(v0 + 10096));
  OUTLINED_FUNCTION_71_6();
  v2 = OUTLINED_FUNCTION_27();
  v8 = sub_231311D4C(v2, v3, v4, v5, v6, v7);
  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_28_0();
  v9(v10);
  v73 = v9;
  if (v8)
  {
    v11 = *(v0 + 10520);
    v58 = *(v0 + 10424);
    v59 = *(v0 + 10304);
    v60 = *(v0 + 10312);
    v70 = *(v0 + 10184);
    v67 = *(v0 + 10168);
    v68 = *(v0 + 10160);
    v64 = *(v0 + 10096);
    v66 = *(v0 + 10128);
    v61 = *(v0 + 10056);
    v62 = *(v0 + 10080);
    v12 = *(v62 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_suggestionsLoggerFactory + 24);
    v13 = *(v62 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_suggestionsLoggerFactory + 32);
    OUTLINED_FUNCTION_3_2((v62 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_suggestionsLoggerFactory));
    (*(v13 + 8))(v0 + 9936, v12, v13);
    v14 = *(*(v11 + 16) + 104);
    sub_2311CF388(v0 + 9656, v0 + 9456);
    v15 = sub_2313686F0();
    swift_retain_n();

    v16 = sub_2313686E0();
    *(v0 + 9240) = &type metadata for DefaultTipKitServiceBridge;
    *(v0 + 9248) = &off_2845F3368;
    OUTLINED_FUNCTION_21_1();
    v17 = swift_allocObject();
    *(v0 + 9216) = v17;
    v18 = MEMORY[0x277D60FF0];
    v17[5] = v15;
    v17[6] = v18;
    v17[2] = v16;
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 9216, &type metadata for DefaultTipKitServiceBridge);
    OUTLINED_FUNCTION_21();
    v21 = v20;
    v22 = swift_task_alloc();
    v23 = *(v21 + 16);
    v23(v22, v19, &type metadata for DefaultTipKitServiceBridge);
    *(v0 + 9080) = &type metadata for DefaultTipKitServiceBridge;
    *(v0 + 9088) = &off_2845F3368;
    OUTLINED_FUNCTION_21_1();
    v24 = swift_allocObject();
    *(v0 + 9056) = v24;
    v25 = *(v22 + 32);
    v26 = *(v22 + 16);
    *(v24 + 16) = *v22;
    *(v24 + 32) = v26;
    *(v24 + 48) = v25;
    type metadata accessor for EngagementService();
    v27 = swift_allocObject();
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 9056, &type metadata for DefaultTipKitServiceBridge);
    v29 = swift_task_alloc();
    v23(v29, v28, &type metadata for DefaultTipKitServiceBridge);
    v27[11] = &type metadata for DefaultTipKitServiceBridge;
    v27[12] = &off_2845F3368;
    OUTLINED_FUNCTION_21_1();
    v30 = swift_allocObject();
    v27[8] = v30;
    v31 = *(v29 + 32);
    v32 = *(v29 + 16);
    *(v30 + 16) = *v29;
    *(v30 + 32) = v32;
    *(v30 + 48) = v31;
    v27[2] = v14;
    sub_2311D38A8((v0 + 9456), (v27 + 3));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9056));

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9216));

    sub_2311CF388(v0 + 9656, v0 + 9016);
    swift_unknownObjectRetain();
    v33 = sub_2313256A4(v11, v14, v58, v27, v59, v60, (v0 + 9016));
    v61[3] = type metadata accessor for SuggestionService();
    v61[4] = &protocol witness table for SuggestionService;

    swift_unknownObjectRelease();
    *v61 = v33;

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9656));
    (v73)(v66, v64);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9336));
    OUTLINED_FUNCTION_79_4();
    (*(v67 + 8))(v70, v68);
  }

  else
  {
    v34 = *(v0 + 10128);
    v35 = *(v0 + 10112);
    v36 = *(v0 + 10104);
    v37 = *(v0 + 10096);
    sub_231369100();
    (*(v36 + 16))(v35, v34, v37);
    v38 = sub_2313698A0();
    v39 = sub_23136A3B0();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 10264);
    v42 = *(v0 + 10200);
    v43 = *(v0 + 10192);
    v44 = *(v0 + 10112);
    if (v40)
    {
      OUTLINED_FUNCTION_17();
      v71 = v43;
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      v74 = swift_slowAlloc();
      *v45 = 136315138;
      sub_231368D60();
      v46 = OUTLINED_FUNCTION_68_1();
      v9(v46);
      v47 = OUTLINED_FUNCTION_111_0();
      sub_2311CFD58(v47, v48, v49);
      OUTLINED_FUNCTION_10_11();

      *(v45 + 4) = v44;
      OUTLINED_FUNCTION_47_9(&dword_2311CB000, v50, v39, "domain config provider did not run succesfully - status - %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      (*(v42 + 8))(v41, v71);
    }

    else
    {

      v51 = OUTLINED_FUNCTION_68_1();
      v9(v51);
      (*(v42 + 8))(v41, v43);
    }

    v72 = *(v0 + 10184);
    v52 = *(v0 + 10168);
    v69 = *(v0 + 10160);
    v63 = *(v0 + 10096);
    v65 = *(v0 + 10128);
    v53 = *(v0 + 10056);
    v54 = type metadata accessor for NoOpSuggestionService();
    OUTLINED_FUNCTION_54();
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    v53[3] = v54;
    v53[4] = &off_2845F6BF8;

    swift_unknownObjectRelease();
    *v53 = v55;

    swift_unknownObjectRelease();
    (v73)(v65, v63);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9336));
    OUTLINED_FUNCTION_79_4();
    (*(v52 + 8))(v72, v69);
  }

  OUTLINED_FUNCTION_39_13();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9936));
  OUTLINED_FUNCTION_2_27();

  OUTLINED_FUNCTION_56_0();

  return v56();
}

uint64_t sub_2313163F8()
{
  v1 = v0[1271];
  v2 = v0[1260];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1167);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1162);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1137);
  v3 = v1 + 8;
  v4 = OUTLINED_FUNCTION_54_0();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1232);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1212);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1192);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1242);
  v6 = v0[1316];
  sub_231369100();
  v7 = v6;
  v8 = sub_2313698A0();
  v9 = sub_23136A3B0();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_17();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2311CB000, v8, v9, "error creating suggestion service api %@", v10, 0xCu);
    sub_2311D1F18(v11, &qword_27DD433B0, &unk_23136EDC0);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  OUTLINED_FUNCTION_58_8();
  v14 = v0[1257];

  (*(v2 + 8))(9336, v3);
  v15 = type metadata accessor for NoOpSuggestionService();
  OUTLINED_FUNCTION_54();
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  v14[3] = v15;
  v14[4] = &off_2845F6BF8;
  v17 = v6;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  *v14 = v16;

  OUTLINED_FUNCTION_39_13();
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_53_11();

  OUTLINED_FUNCTION_56_0();

  return v18();
}

uint64_t sub_231316710()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v0[18] = v1;
  v0[19] = v3;
  v0[16] = v4;
  v0[17] = v5;
  v0[14] = v6;
  v0[15] = v7;
  v8 = sub_2313698C0();
  v0[20] = v8;
  OUTLINED_FUNCTION_0(v8);
  v0[21] = v9;
  v0[22] = OUTLINED_FUNCTION_43();
  v10 = sub_2313678B0();
  OUTLINED_FUNCTION_40_0(v10);
  v0[23] = OUTLINED_FUNCTION_99_1();
  v0[24] = swift_task_alloc();
  v11 = sub_2313676B0();
  v0[25] = v11;
  OUTLINED_FUNCTION_0(v11);
  v0[26] = v12;
  v0[27] = OUTLINED_FUNCTION_43();
  v13 = sub_231367F40();
  v0[28] = v13;
  OUTLINED_FUNCTION_0(v13);
  v0[29] = v14;
  v0[30] = OUTLINED_FUNCTION_43();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A60, &qword_2313778B0);
  v0[31] = v15;
  OUTLINED_FUNCTION_40_0(v15);
  v0[32] = OUTLINED_FUNCTION_43();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  OUTLINED_FUNCTION_40_0(v16);
  v0[33] = OUTLINED_FUNCTION_99_1();
  v0[34] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A68, &qword_2313778B8);
  OUTLINED_FUNCTION_40_0(v17);
  v0[35] = OUTLINED_FUNCTION_99_1();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v0[38] = ObjectType;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[39] = v19;
  *v19 = v20;
  v19[1] = sub_231316990;

  return MEMORY[0x2821C7770](v0 + 2, ObjectType, v2);
}

uint64_t sub_231316990()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_2();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v3;
  v4[1] = sub_231316AE8;
  OUTLINED_FUNCTION_38_4(*(v0 + 304));

  return sub_23132C6C8();
}

uint64_t sub_231316AE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_2();
  *v2 = v0;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v0[41] = v5;

  v6 = swift_task_alloc();
  v0[42] = v6;
  *v6 = v3;
  v6[1] = sub_231316C44;
  OUTLINED_FUNCTION_38_4(v0[38]);

  return sub_23132D44C();
}

uint64_t sub_231316C44()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231316D30()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 200);
  sub_23123EA8C(*(v0 + 152), v1, &qword_27DD432D8, &unk_23136BED0);
  OUTLINED_FUNCTION_19_13(v1, 1, v2);
  if (v3)
  {
    sub_2311D1F18(*(v0 + 272), &qword_27DD432D8, &unk_23136BED0);
    v6 = 1;
  }

  else
  {
    sub_231367680();
    v4 = OUTLINED_FUNCTION_27();
    v5(v4);
    v6 = 0;
  }

  v7 = *(v0 + 288);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 224);
  v11 = *(v0 + 232);
  __swift_storeEnumTagSinglePayload(*(v0 + 296), v6, 1, v10);
  (*(v11 + 104))(v7, *MEMORY[0x277D60D30], v10);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  v12 = *(v9 + 48);
  v13 = OUTLINED_FUNCTION_64();
  sub_23123EA8C(v13, v14, &qword_27DD44A68, &qword_2313778B8);
  sub_23123EA8C(v7, v8 + v12, &qword_27DD44A68, &qword_2313778B8);
  OUTLINED_FUNCTION_19_13(v8, 1, v10);
  if (v3)
  {
    v15 = *(v0 + 224);
    sub_2311D1F18(*(v0 + 288), &qword_27DD44A68, &qword_2313778B8);
    v16 = OUTLINED_FUNCTION_115_0();
    sub_2311D1F18(v16, v17, &qword_2313778B8);
    OUTLINED_FUNCTION_19_13(v8 + v12, 1, v15);
    if (!v3)
    {
      goto LABEL_11;
    }

    sub_2311D1F18(*(v0 + 256), &qword_27DD44A68, &qword_2313778B8);
    goto LABEL_13;
  }

  v18 = *(v0 + 224);
  sub_23123EA8C(*(v0 + 256), *(v0 + 280), &qword_27DD44A68, &qword_2313778B8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8 + v12, 1, v18);
  v20 = *(v0 + 296);
  v21 = *(v0 + 280);
  if (EnumTagSinglePayload == 1)
  {
    sub_2311D1F18(*(v0 + 288), &qword_27DD44A68, &qword_2313778B8);
    v22 = OUTLINED_FUNCTION_26_1();
    sub_2311D1F18(v22, v23, &qword_2313778B8);
    v24 = OUTLINED_FUNCTION_64();
    v25(v24);
LABEL_11:
    v26 = *(v0 + 256);
    v27 = &qword_27DD44A60;
    v28 = &qword_2313778B0;
LABEL_15:
    sub_2311D1F18(v26, v27, v28);
    goto LABEL_16;
  }

  v58 = *(v0 + 256);
  v29 = *(v0 + 232);
  v30 = *(v0 + 224);
  (*(v29 + 32))(*(v0 + 240), v8 + v12, v30);
  sub_231327268(&qword_280F7C9D0, MEMORY[0x277D60D40], MEMORY[0x277D60D48]);
  OUTLINED_FUNCTION_69_7();
  v31 = sub_231369F60();
  v32 = *(v29 + 8);
  v33 = OUTLINED_FUNCTION_40_8();
  v32(v33);
  v34 = OUTLINED_FUNCTION_71();
  sub_2311D1F18(v34, v35, &qword_2313778B8);
  sub_2311D1F18(v20, &qword_27DD44A68, &qword_2313778B8);
  (v32)(v21, v30);
  sub_2311D1F18(v58, &qword_27DD44A68, &qword_2313778B8);
  if (v31)
  {
LABEL_13:
    v36 = *(v0 + 264);
    v37 = *(v0 + 200);
    sub_23123EA8C(*(v0 + 152), v36, &qword_27DD432D8, &unk_23136BED0);
    if (__swift_getEnumTagSinglePayload(v36, 1, v37) != 1)
    {
      (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 264), *(v0 + 200));
      v39 = sub_2313676A0();
      v38 = v55;
      v56 = OUTLINED_FUNCTION_26_1();
      v57(v56);
      goto LABEL_17;
    }

    v27 = &qword_27DD432D8;
    v28 = &unk_23136BED0;
    v26 = *(v0 + 264);
    goto LABEL_15;
  }

LABEL_16:
  v38 = 0;
  v39 = 0xBFF0000000000000;
LABEL_17:
  *(v0 + 368) = v38 & 1;
  *(v0 + 352) = v39;
  if (*(v0 + 328) && *(v0 + 344))
  {

    v40 = swift_task_alloc();
    *(v0 + 360) = v40;
    *v40 = v0;
    v40[1] = sub_23131737C;
    OUTLINED_FUNCTION_38_4(*(v0 + 304));

    return Context.isConversationalContinuer()();
  }

  else
  {
    sub_231369150();
    sub_231369EE0();
    v42 = sub_2313698A0();
    v43 = sub_23136A390();

    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 168);
    v46 = *(v0 + 176);
    if (v44)
    {
      v59 = *(v0 + 160);
      OUTLINED_FUNCTION_17();
      v47 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      v60 = swift_slowAlloc();
      *v47 = 136315138;
      v48 = OUTLINED_FUNCTION_80();
      *(v47 + 4) = sub_2311CFD58(v48, v49, v50);
      _os_log_impl(&dword_2311CB000, v42, v43, "'Context' does not contain signal for %s. Returning owner as source owner rather than SignalledOwner.", v47, 0xCu);
      OUTLINED_FUNCTION_72_6(v60);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      (*(v45 + 8))(v46, v59);
    }

    else
    {

      v51 = OUTLINED_FUNCTION_68_1();
      v53(v51, v52);
    }

    sub_2311D38A8((v0 + 16), *(v0 + 112));
    OUTLINED_FUNCTION_68_6();

    OUTLINED_FUNCTION_56_0();

    return v54();
  }
}

uint64_t sub_23131737C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *(v1 + 104) = v3;
  *(v1 + 96) = v0;
  OUTLINED_FUNCTION_21_13();
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231317460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_50_9();
  v13 = *(v12 + 368);
  sub_2311CF388(v12 + 16, v12 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A70, &qword_2313778C0);
  OUTLINED_FUNCTION_32_6();
  v14 = sub_231367BA0();
  OUTLINED_FUNCTION_0(v14);
  *(swift_allocObject() + 16) = xmmword_23136B670;

  sub_2313678A0();

  result = sub_2313678A0();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v12 + 112);
    sub_231367B90();
    v17 = sub_231366ED0();
    OUTLINED_FUNCTION_10_2();
    swift_allocObject();
    v18 = sub_231366EB0();
    v16[3] = v17;
    OUTLINED_FUNCTION_43_13();
    v16[4] = sub_231327268(v19, v20, MEMORY[0x277D60638]);

    *v16 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));
    OUTLINED_FUNCTION_68_6();
    v30 = v21;

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_40();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, v30, a10, a11, a12);
  }

  return result;
}

uint64_t sub_231317680@<X0>(uint64_t a3@<X8>)
{
  v51 = a3;
  sub_231369330();
  OUTLINED_FUNCTION_0_0();
  v49 = v4;
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_22();
  v48 = v5 - v6;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  v47 = &v46 - v8;
  OUTLINED_FUNCTION_18();
  sub_231367F40();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  OUTLINED_FUNCTION_40_0(v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = sub_2313676B0();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  sub_2313682B0();
  OUTLINED_FUNCTION_19_13(v13, 1, v14);
  if (v21)
  {
    sub_2311D1F18(v13, &qword_27DD432D8, &unk_23136BED0);
    v22 = sub_231367260();
    v23 = v51;
    v24 = 1;
    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
  }

  v25 = v51;
  (*(v16 + 32))(v20, v13, v14);
  sub_231367680();
  v26 = OUTLINED_FUNCTION_35_5();
  if (v27(v26) == *MEMORY[0x277D60D38])
  {
    v28 = OUTLINED_FUNCTION_35_5();
    v29(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44078, &qword_231370F80);
    v31 = v49;
    v30 = v50;
    v32 = v47;
    v33 = OUTLINED_FUNCTION_71();
    v34(v33);
    (*(v31 + 16))(v48, v32, v30);
    sub_231367240();
    (*(v31 + 8))(v32, v30);
    v35 = OUTLINED_FUNCTION_80();
    v36(v35);
    v22 = sub_231367260();
    v23 = v25;
    v24 = 0;
    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
  }

  v38 = OUTLINED_FUNCTION_80();
  v39(v38);
  sub_231367260();
  OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = OUTLINED_FUNCTION_35_5();
  return v45(v44);
}

uint64_t sub_231317A28(__int128 *a1, _OWORD *a2, __int128 *a3)
{
  sub_2311D38A8(a1, v3 + 16);
  *(v3 + 56) = *a2;
  sub_2311D38A8(a3, v3 + 72);
  return v3;
}

uint64_t sub_231317A74()
{
  OUTLINED_FUNCTION_8();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43768, &qword_23136D5F0);
  OUTLINED_FUNCTION_40_0(v4);
  v1[5] = OUTLINED_FUNCTION_43();
  v5 = sub_2313671A0();
  v1[6] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_43();
  v7 = sub_2313698C0();
  v1[9] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_67();
  v1[12] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231317BA0(uint64_t a1)
{
  v45 = v1;
  sub_2313690F0();

  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[10];
  if (v4)
  {
    v6 = v1[4];
    OUTLINED_FUNCTION_17();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v8 = swift_slowAlloc();
    v43 = v8;
    *v7 = 136315138;
    v44 = *(v6 + 56);
    v9 = TrialMetaData.debugDescription.getter();
    v11 = sub_2311CFD58(v9, v10, &v43);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2311CB000, v2, v3, "config source used to create service - %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    v12 = OUTLINED_FUNCTION_12_22();
    MEMORY[0x23192B930](v12);
  }

  v13 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_26_1();
  v13(v14);
  sub_2313690F0();
  v15 = OUTLINED_FUNCTION_115_0();
  v16(v15);
  v17 = sub_2313698A0();
  v18 = sub_23136A3A0();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v1[11];
  v21 = v1[8];
  v22 = v1[9];
  if (v19)
  {
    OUTLINED_FUNCTION_17();
    v41 = v13;
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v40 = v22;
    v24 = swift_slowAlloc();
    *&v44 = v24;
    *v23 = 136315138;
    sub_231367190();
    v25 = OUTLINED_FUNCTION_68_1();
    v26(v25);
    v27 = OUTLINED_FUNCTION_111_0();
    sub_2311CFD58(v27, v28, v29);
    OUTLINED_FUNCTION_10_11();

    *(v23 + 4) = v21;
    _os_log_impl(&dword_2311CB000, v17, v18, "emitting trigger log with request id - %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v30 = OUTLINED_FUNCTION_17_19();
    MEMORY[0x23192B930](v30);
    v31 = OUTLINED_FUNCTION_12_22();
    MEMORY[0x23192B930](v31);

    (v41)(v20, v40);
  }

  else
  {

    v32 = OUTLINED_FUNCTION_68_1();
    v33(v32);
    (v13)(v20, v22);
  }

  v34 = v1[4];
  v35 = v34[12];
  v36 = v34[13];
  __swift_project_boxed_opaque_existential_1(v34 + 9, v35);
  sub_231367190();
  sub_231366760();

  v42 = (*(v36 + 16) + **(v36 + 16));
  v37 = swift_task_alloc();
  v1[13] = v37;
  *v37 = v1;
  v37[1] = sub_231317F50;
  v38 = OUTLINED_FUNCTION_38_4(v1[5]);

  return v42(v38, v35, v36);
}

uint64_t sub_231317F50()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  sub_2311D1F18(v2, &qword_27DD43768, &qword_23136D5F0);
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231318060()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  OUTLINED_FUNCTION_1_6();
  v10 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[14] = v5;
  *v5 = v6;
  v5[1] = sub_231318174;
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, v2, v3);
}

uint64_t sub_231318174()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_2313182CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_2313182E4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_14_27((v0[5] + 16));
  OUTLINED_FUNCTION_11_13();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_231327304;
  OUTLINED_FUNCTION_38_4(v0[2]);
  OUTLINED_FUNCTION_88_1();

  return v4();
}

uint64_t sub_2313183F8()
{
  OUTLINED_FUNCTION_8();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_2313698C0();
  v1[19] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[20] = v4;
  v1[21] = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23131849C()
{
  OUTLINED_FUNCTION_60_0();
  sub_2311CF388(*(v0 + 144) + 16, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440A0, &qword_2313773B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440A8, &unk_231371060);
  if (swift_dynamicCast())
  {
    sub_2311D38A8((v0 + 96), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_1_6();
    v19 = (v1 + *v1);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v0 + 176) = v2;
    *v2 = v3;
    v2[1] = sub_23131870C;
    OUTLINED_FUNCTION_92_1();

    return v19();
  }

  else
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_2311D1F18(v0 + 96, &qword_27DD440B0, &qword_231377810);
    sub_2313690E0();
    v5 = sub_2313698A0();
    v6 = sub_23136A3B0();
    if (OUTLINED_FUNCTION_40_1(v6))
    {
      v7 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_68(v7);
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v13 = *(v0 + 136);

    v14 = OUTLINED_FUNCTION_28_0();
    v15(v14);
    v16 = type metadata accessor for NoOpSystemEnvironmentService();
    OUTLINED_FUNCTION_33_16();
    v17 = swift_allocObject();
    v13[3] = v16;
    v13[4] = &protocol witness table for NoOpSystemEnvironmentService;
    *v13 = v17;

    OUTLINED_FUNCTION_56_0();

    return v18();
  }
}

uint64_t sub_23131870C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2313187F0()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231318864()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_14_27((*(v0 + 16) + 16));
  OUTLINED_FUNCTION_11_13();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_231274600;
  v3 = OUTLINED_FUNCTION_28_0();

  return v5(v3);
}

uint64_t sub_231318970()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return OUTLINED_FUNCTION_72_6((v0 + 72));
}

uint64_t sub_2313189AC()
{
  sub_231318970();
  OUTLINED_FUNCTION_55_10();

  return swift_deallocClassInstance();
}

uint64_t sub_2313189DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231317A74();
}

uint64_t sub_231318A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_231209AAC;

  return sub_2313182CC(a1, a2, a3);
}

uint64_t sub_231318B38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231274F34;

  return sub_231318850();
}

uint64_t sub_231318BC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_2313183F8();
}

uint64_t static SuggestionService.isEnabled()()
{
  sub_2313686F0();
  sub_2313686E0();
  OUTLINED_FUNCTION_24_0();
  v3[3] = sub_231367570();
  v3[4] = sub_231327268(&qword_280F7CAC0, MEMORY[0x277D60980], MEMORY[0x277D60960]);
  __swift_allocate_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_26_0();
  (*(v0 + 104))();
  v1 = sub_2313686D0();

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1 & 1;
}

uint64_t SuggestionService.suggestNext(interaction:)()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_38_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_231209AAC;
  OUTLINED_FUNCTION_92_1();

  return sub_231318DFC();
}

uint64_t sub_231318DFC()
{
  OUTLINED_FUNCTION_26();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v1[20] = *v0;
  v4 = sub_2313671E0();
  v1[21] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[22] = v5;
  v1[23] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A40, &qword_231377860);
  OUTLINED_FUNCTION_40_0(v6);
  v1[24] = OUTLINED_FUNCTION_43();
  v7 = sub_2313667A0();
  OUTLINED_FUNCTION_40_0(v7);
  v1[25] = OUTLINED_FUNCTION_43();
  v8 = sub_2313671A0();
  v1[26] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[27] = v9;
  v1[28] = OUTLINED_FUNCTION_99_1();
  v1[29] = swift_task_alloc();
  v10 = sub_2313698C0();
  v1[30] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[31] = v11;
  v1[32] = OUTLINED_FUNCTION_99_1();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v1[36] = v12;
  *v12 = v13;
  v12[1] = sub_231319024;
  OUTLINED_FUNCTION_92_1();

  return sub_231319E24(v14, v15);
}

uint64_t sub_231319024()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231319108(uint64_t a1)
{
  v59 = v1;
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A390();
  if (OUTLINED_FUNCTION_40_1(v3))
  {
    v4 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v4);
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v10 = v1[31];
  v11 = v1[29];
  v12 = v1[26];
  v13 = v1[27];
  v14 = v1[18];

  v1[37] = *(v10 + 8);
  v15 = OUTLINED_FUNCTION_115_0();
  v56 = v16;
  (v16)(v15);
  sub_2313690F0();
  v17 = *(v13 + 16);
  v1[38] = v17;
  v1[39] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v11, v14, v12);
  v18 = sub_2313698A0();
  v19 = sub_23136A390();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v1[34];
  v22 = v1[30];
  v23 = v1[29];
  v25 = v1[26];
  v24 = v1[27];
  if (v20)
  {
    OUTLINED_FUNCTION_17();
    v55 = v21;
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v54 = v22;
    v27 = swift_slowAlloc();
    v58 = v27;
    *v26 = 136315138;
    OUTLINED_FUNCTION_46_13();
    sub_231327268(v28, v29, MEMORY[0x277D60700]);
    sub_23136A8B0();
    v53 = v19;
    v30 = *(v24 + 8);
    v30(v23, v25);
    v31 = OUTLINED_FUNCTION_111_0();
    sub_2311CFD58(v31, v32, v33);
    OUTLINED_FUNCTION_10_11();

    *(v26 + 4) = v23;
    _os_log_impl(&dword_2311CB000, v18, v53, "Interaction:\n%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    v34 = OUTLINED_FUNCTION_12_22();
    MEMORY[0x23192B930](v34);

    v35 = v54;
    v36 = v55;
  }

  else
  {

    v30 = *(v24 + 8);
    v30(v23, v25);
    v36 = OUTLINED_FUNCTION_40_8();
  }

  v56(v36, v35);
  v1[40] = v30;
  sub_2313690F0();
  sub_2311CF388((v1 + 2), (v1 + 7));
  v37 = sub_2313698A0();
  v38 = sub_23136A390();
  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_17();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v40 = swift_slowAlloc();
    v58 = v40;
    *v39 = 136315138;
    sub_2311CF388((v1 + 7), (v1 + 12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF0, &unk_2313762A0);
    v41 = sub_23136A010();
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
    v44 = sub_2311CFD58(v41, v43, &v58);

    *(v39 + 4) = v44;
    OUTLINED_FUNCTION_47_9(&dword_2311CB000, v45, v38, "Environment:\n%s");
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v46 = OUTLINED_FUNCTION_12_22();
    MEMORY[0x23192B930](v46);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v47 = OUTLINED_FUNCTION_28_0();
    (v56)(v47);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
    v48 = OUTLINED_FUNCTION_28_0();
    (v56)(v48);
  }

  OUTLINED_FUNCTION_57_1(&unk_231377870);
  v57 = v49;
  v50 = swift_task_alloc();
  v1[41] = v50;
  *v50 = v1;
  v50[1] = sub_231319524;
  v51 = OUTLINED_FUNCTION_38_4(v1[18]);

  return v57(v51);
}

uint64_t sub_231319524()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v4 + 336) = v2;

  v8 = swift_task_alloc();
  *(v4 + 344) = v8;
  *v8 = v6;
  v9 = OUTLINED_FUNCTION_56_8(v8);

  return static SuggestionService.finalizeCandidates(_:)(v9);
}

uint64_t sub_231319654()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 352) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231319758()
{
  v43 = v0;
  v40 = v0[38];
  v37 = v0[28];
  v39 = v0[26];
  v1 = v0[22];
  v33 = v0[21];
  v35 = v0[23];
  v2 = v0[18];
  v3 = v0[17];
  static SuggestionService.wrapOwner(suggestions:interaction:)(v42);
  sub_231367140();
  sub_23131A400();
  sub_2313679D0();
  OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_2313671C0();
  sub_2313690F0();
  (*(v1 + 16))(v35, v3, v33);
  v40(v37, v2, v39);
  v8 = sub_2313698A0();
  v38 = sub_23136A3A0();
  v41 = v8;
  v9 = os_log_type_enabled(v8, v38);
  v10 = v0[37];
  v11 = v0[32];
  v12 = v0[30];
  v13 = v0[23];
  if (v9)
  {
    v36 = v0[37];
    OUTLINED_FUNCTION_17();
    v34 = v11;
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v32 = v12;
    v15 = swift_slowAlloc();
    v42[0] = v15;
    *v14 = 136315138;
    v31 = sub_23131A568(v13);
    v17 = v16;
    v18 = OUTLINED_FUNCTION_113();
    v19(v18);
    v20 = OUTLINED_FUNCTION_40_8();
    v21(v20);
    v22 = sub_2311CFD58(v31, v17, v42);

    *(v14 + 4) = v22;
    OUTLINED_FUNCTION_47_9(&dword_2311CB000, v23, v38, "%s");
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v24 = OUTLINED_FUNCTION_17_19();
    MEMORY[0x23192B930](v24);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v36(v34, v32);
  }

  else
  {

    v25 = OUTLINED_FUNCTION_113();
    v26(v25);
    v27 = OUTLINED_FUNCTION_40_8();
    v28(v27);
    v10(v11, v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_56_0();

  return v29();
}

uint64_t SuggestionService.logShown(for:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_231319A94()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_3_2((v0[5] + 72));
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_231319B44;
  OUTLINED_FUNCTION_38_4(v0[2]);
  OUTLINED_FUNCTION_88_1();

  return MEMORY[0x2821C5F88](v2);
}

uint64_t sub_231319B44()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_231319C24()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t static SuggestionService.wrapOwner(suggestions:interaction:)@<X0>(uint64_t *a2@<X8>)
{
  sub_231366ED0();
  OUTLINED_FUNCTION_121_0();
  sub_2313671A0();
  OUTLINED_FUNCTION_46_13();
  sub_231327268(v4, v5, MEMORY[0x277D606F0]);
  v6 = OUTLINED_FUNCTION_54_0();
  MEMORY[0x231927EF0](v6);
  v7 = OUTLINED_FUNCTION_54_0();
  MEMORY[0x231927EB0](v7);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v8 = OUTLINED_FUNCTION_54_0();
  MEMORY[0x231929610](v8);
  OUTLINED_FUNCTION_72_6(v13);

  v9 = sub_231366EC0();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  a2[3] = v2;
  OUTLINED_FUNCTION_43_13();
  result = sub_231327268(v10, v11, MEMORY[0x277D60638]);
  a2[4] = result;
  *a2 = v9;
  return result;
}

uint64_t sub_231319E24(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_231319E3C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[9];
  v0[10] = __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  sub_231367170();
  sub_23134AD1C();
  v0[11] = v2;

  v0[12] = sub_231367160();
  sub_231367130();
  v3 = v1[15];
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_56_8(v4);

  return MEMORY[0x2821C6F68](v5, v3);
}

uint64_t sub_231319F1C()
{
  OUTLINED_FUNCTION_16();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v0;
  *v4 = *v0;
  *(v3 + 112) = v2;

  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  *v6 = v5;
  v6[1] = sub_23131A0AC;

  return sub_231327FD0();
}

uint64_t sub_23131A0AC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  OUTLINED_FUNCTION_56_0();

  return v6();
}

uint64_t static SuggestionService.finalizeCandidates(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_23131A1FC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[3];
  sub_23131B650();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  OUTLINED_FUNCTION_57_1(&unk_231377398);
  v7 = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_23131A2D4;
  OUTLINED_FUNCTION_61_6();

  return v7();
}

void sub_23131A2D4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {

    v9 = *(v7 + 8);

    v9(v3);
  }
}

double sub_23131A400()
{
  sub_231367180();
  sub_231210B54();

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A50, &qword_231377890);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {
    sub_2311D1F18(&v4, &qword_27DD432F8, &qword_23136DEE0);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  sub_23123EA8C(&v6, &v4, &qword_27DD44A48, &unk_231377880);
  if (v5)
  {
    sub_2311D38A8(&v4, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_231368F40();
    v1 = v0;
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    v1 = -1.0;
  }

  sub_2311D1F18(&v6, &qword_27DD44A48, &unk_231377880);
  return v1;
}

uint64_t sub_23131A568(uint64_t a1)
{
  v1 = sub_231367C70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231367150();
  v5 = sub_23131A654();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_23131A654()
{
  OUTLINED_FUNCTION_109_1();
  v0 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v5 - v4;
  sub_2313690F0();
  sub_23136A650();

  v7 = sub_231367C50();
  MEMORY[0x23192A730](v7);

  MEMORY[0x23192A730](0x7473657571657220, 0xE90000000000003ALL);
  sub_2313671B0();
  OUTLINED_FUNCTION_109_1();
  sub_231367120();
  OUTLINED_FUNCTION_54_0();
  v8 = sub_231369870();

  (*(v2 + 8))(v6, v0);
  return v8;
}

uint64_t sub_23131A7F4(uint64_t a1)
{
  v117 = sub_231369330();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = v110 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449C8, &qword_2313772F8);
  MEMORY[0x28223BE20](v3 - 8);
  v137 = v110 - v4;
  v5 = sub_231367500();
  v133 = *(v5 - 8);
  v134 = v5;
  MEMORY[0x28223BE20](v5);
  v131 = v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231367300();
  v135 = *(v7 - 8);
  v136 = v7;
  MEMORY[0x28223BE20](v7);
  v132 = v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v130 = v110 - v10;
  MEMORY[0x28223BE20](v11);
  v129 = v110 - v12;
  v13 = sub_231367D80();
  v127 = *(v13 - 8);
  v128 = v13;
  MEMORY[0x28223BE20](v13);
  v126 = v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_231369050();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_231366E80();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v118 = v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v110 - v20;
  v22 = sub_231367230();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v122 = v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v120 = v110 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = v110 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  MEMORY[0x28223BE20](v30 - 8);
  v113 = v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v119 = v110 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = v110 - v35;
  sub_2313670B0();
  sub_231367220();
  v38 = *(v23 + 8);
  v37 = v23 + 8;
  v121 = v38;
  v38(v29, v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v16);
  v138 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2311D1F18(v36, &qword_27DD42F20, &qword_23136D410);
    v139 = 0;
LABEL_15:
    v54 = v120;
    sub_2313670B0();
    v55 = v119;
    sub_231367220();
    v56 = v121;
    v121(v54, v22);
    if (__swift_getEnumTagSinglePayload(v55, 1, v138) == 1)
    {

      sub_2311D1F18(v55, &qword_27DD42F20, &qword_23136D410);
      v140 = 1936941424;
      v141 = 0xE400000000000000;
LABEL_19:
      v61 = v122;
      goto LABEL_26;
    }

    v57 = sub_231366E60();
    v58 = v138;
    v59 = v57;
    v60 = *(v17 + 8);
    v60(v55, v138);
    if (v59)
    {

      v140 = 1936941424;
      v141 = 0xE400000000000000;
      goto LABEL_19;
    }

    v62 = 0x6E776F6E6B6E75;
    v144 = 0x203A64656C696166;
    v145 = 0xE900000000000028;
    if (v139)
    {
      v63 = v113;
      sub_231334258(v139, v113);

      if (__swift_getEnumTagSinglePayload(v63, 1, v58) != 1)
      {
        v62 = sub_231366E70();
        v65 = v63;
        v64 = v66;
        v60(v65, v58);
        goto LABEL_25;
      }

      sub_2311D1F18(v63, &qword_27DD42F20, &qword_23136D410);
    }

    v64 = 0xE700000000000000;
LABEL_25:
    v61 = v122;
    MEMORY[0x23192A730](v62, v64);

    MEMORY[0x23192A730](41, 0xE100000000000000);
    v140 = v144;
    v141 = v145;
LABEL_26:
    sub_2313670B0();
    v67 = sub_231367210();
    v69 = v68;
    v56(v61, v22);
    sub_2313670B0();
    v70 = sub_231367200();
    v72 = v71;
    v73 = (v56)(v61, v22);
    v144 = v70;
    v145 = v72;
    v142 = v67;
    v143 = v69;
    sub_231207C1C(v73, v74, v75);
    LOBYTE(v70) = sub_23136A520();

    if ((v70 & 1) == 0)
    {
      v144 = v67;
      v145 = v69;
      MEMORY[0x23192A730](0x3A6E656B6F707328, 0xE900000000000020);
      sub_2313670B0();
      v76 = sub_231367200();
      v78 = v77;
      v56(v61, v22);
      MEMORY[0x23192A730](v76, v78);

      MEMORY[0x23192A730](41, 0xE100000000000000);
      v67 = v144;
      v69 = v145;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_231377310;
    v80 = v123;
    sub_2313670C0();
    v81 = sub_231369040();
    v83 = v82;
    (*(v124 + 8))(v80, v125);
    v84 = MEMORY[0x277D837D0];
    *(v79 + 56) = MEMORY[0x277D837D0];
    *(v79 + 32) = v81;
    *(v79 + 40) = v83;
    v85 = v126;
    sub_2313670F0();
    v86 = sub_231367D40();
    v88 = v87;
    (*(v127 + 8))(v85, v128);
    *(v79 + 64) = v86;
    *(v79 + 72) = v88;
    *(v79 + 88) = v84;
    *(v79 + 96) = v67;
    *(v79 + 104) = v69;
    *(v79 + 152) = v84;
    v90 = v140;
    v89 = v141;
    *(v79 + 120) = v84;
    *(v79 + 128) = v90;
    *(v79 + 136) = v89;
    v91 = v129;
    sub_231367100();
    *(v79 + 184) = sub_231367290();
    __swift_allocate_boxed_opaque_existential_1((v79 + 160));
    sub_2313672D0();
    v92 = v136;
    v93 = *(v135 + 8);
    v93(v91, v136);
    v94 = v130;
    sub_231367100();
    v95 = sub_2313672C0();
    v93(v94, v92);
    *(v79 + 216) = MEMORY[0x277D83B88];
    *(v79 + 192) = v95;
    v96 = v131;
    sub_2313670D0();
    v97 = sub_2313674F0();
    v99 = v98;
    (*(v133 + 8))(v96, v134);
    *(v79 + 248) = v84;
    *(v79 + 224) = v97;
    *(v79 + 232) = v99;
    *(v79 + 280) = sub_2313694E0();
    __swift_allocate_boxed_opaque_existential_1((v79 + 256));
    sub_231367110();
    v100 = v132;
    sub_231367100();
    sub_2313672E0();
    v102 = v101;
    v93(v100, v92);
    *(v79 + 312) = MEMORY[0x277D839F8];
    *(v79 + 288) = v102;
    v103 = v137;
    sub_2313670E0();
    v104 = sub_231367260();
    if (__swift_getEnumTagSinglePayload(v103, 1, v104) == 1)
    {
      sub_2311D1F18(v103, &qword_27DD449C8, &qword_2313772F8);
      v105 = (v79 + 320);
      *(v79 + 344) = v84;
    }

    else
    {
      v106 = v115;
      sub_231367250();
      (*(*(v104 - 8) + 8))(v103, v104);
      v107 = sub_231369300();
      v109 = v108;
      (*(v116 + 8))(v106, v117);
      v105 = (v79 + 320);
      *(v79 + 344) = v84;
      if (v109)
      {
        *v105 = v107;
LABEL_33:
        *(v79 + 328) = v109;
        return v79;
      }
    }

    *v105 = 2960685;
    v109 = 0xE300000000000000;
    goto LABEL_33;
  }

  v110[1] = v37;
  v111 = v22;
  v112 = a1;
  v40 = sub_231366E20();
  v140 = *(v17 + 8);
  result = (v140)(v36, v16);
  v42 = 0;
  v43 = *(v40 + 16);
  v141 = v17 + 16;
  v114 = (v17 + 32);
  v139 = MEMORY[0x277D84F90];
  v44 = v16;
  while (1)
  {
    if (v43 == v42)
    {

      v22 = v111;
      goto LABEL_15;
    }

    if (v42 >= *(v40 + 16))
    {
      break;
    }

    v45 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v46 = *(v17 + 72);
    (*(v17 + 16))(v21, v40 + v45 + v46 * v42, v44);
    v47 = v44;
    if (sub_231366E60())
    {
      result = (v140)(v21, v44);
      ++v42;
    }

    else
    {
      v110[0] = *v114;
      (v110[0])(v118, v21, v44);
      v48 = v139;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v48;
      v144 = v48;
      if (isUniquelyReferenced_nonNull_native)
      {
        v44 = v47;
      }

      else
      {
        sub_2311F4DDC(0, *(v48 + 16) + 1, 1);
        v44 = v138;
        v50 = v144;
      }

      v52 = *(v50 + 16);
      v51 = *(v50 + 24);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v139 = v52 + 1;
        sub_2311F4DDC(v51 > 1, v52 + 1, 1);
        v44 = v138;
        v53 = v139;
        v50 = v144;
      }

      ++v42;
      *(v50 + 16) = v53;
      v139 = v50;
      result = (v110[0])(v50 + v45 + v52 * v46, v118, v44);
    }
  }

  __break(1u);
  return result;
}

uint64_t SuggestionService.getSystemEnvironmentService()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_23131B5E0()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
  v2 = __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  sub_2311CF388(*v2 + 16, v1);
  OUTLINED_FUNCTION_56_0();

  return v3();
}

void sub_23131B650()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43780, &qword_231377300);
  OUTLINED_FUNCTION_40_0(v2);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  v104 = v98 - v4;
  OUTLINED_FUNCTION_18();
  v109 = sub_231367300();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v108 = v9 - v8;
  v10 = OUTLINED_FUNCTION_18();
  v107 = type metadata accessor for RankedCandidateSuggestion(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v106 = v13 - v12;
  OUTLINED_FUNCTION_18();
  v110 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  OUTLINED_FUNCTION_0(v20);
  v22 = v21;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v23);
  v118 = v98 - v24;
  v25 = OUTLINED_FUNCTION_18();
  v121 = type metadata accessor for SuggestionViewDetails(v25);
  OUTLINED_FUNCTION_0_0();
  v105 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22();
  v117 = v28 - v29;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v30);
  v103 = v98 - v31;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v32);
  v116 = v98 - v33;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v34);
  v36 = v98 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = v98 - v38;
  sub_23126F2AC(0, *(v1 + 16), 0, MEMORY[0x277D84F90]);
  v119 = v40;
  v122[0] = v1;
  sub_231369EE0();
  sub_231312E38(v122);
  v41 = *(v122[0] + 16);
  if (!v41)
  {
LABEL_17:

    OUTLINED_FUNCTION_9_0();
    return;
  }

  v102 = v19;
  v114 = 0;
  OUTLINED_FUNCTION_35_0();
  v98[1] = v42;
  v44 = v42 + v43;
  v100 = (v6 + 16);
  v45 = MEMORY[0x277D84FA0];
  v46 = *(v22 + 72);
  v101 = (v15 + 8);
  *&v47 = 136315394;
  v99 = v47;
  v48 = v118;
  v115 = v36;
  v111 = v46;
  v112 = v39;
  while (1)
  {
    sub_23123EA8C(v44, v48, &qword_27DD43530, &unk_23136CA70);
    OUTLINED_FUNCTION_19_13(v48, 1, v121);
    if (!v49)
    {
      break;
    }

    v50 = OUTLINED_FUNCTION_90_1();
    sub_2311D1F18(v50, v51, &unk_23136CA70);
LABEL_16:
    v44 += v46;
    if (!--v41)
    {
      goto LABEL_17;
    }
  }

  sub_2313270AC(v48, v39);
  sub_231369EE0();
  v52 = OUTLINED_FUNCTION_69_7();
  if (sub_2311EFC44(v52, v53, v45))
  {
    v120 = v45;
    v54 = v102;
    sub_2313690F0();
    OUTLINED_FUNCTION_41_15();
    sub_231327110(v39, v36);
    sub_231369EE0();
    v55 = sub_2313698A0();
    v56 = sub_23136A3A0();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v122[0] = swift_slowAlloc();
      *v57 = v99;
      v58 = OUTLINED_FUNCTION_69_7();
      v61 = sub_2311CFD58(v58, v59, v60);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v62 = &v36[*(type metadata accessor for ViewDetails(0) + 32)];
      v64 = *v62;
      v63 = v62[1];
      sub_231369EE0();
      OUTLINED_FUNCTION_40_15();
      sub_231327168();
      v65 = sub_2311CFD58(v64, v63, v122);
      v36 = v115;

      *(v57 + 14) = v65;
      _os_log_impl(&dword_2311CB000, v55, v56, "[warning] Removing duplicate dialog: %s from suggestionId: %s", v57, 0x16u);
      swift_arrayDestroy();
      v39 = v112;
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      v46 = v111;
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    else
    {

      OUTLINED_FUNCTION_40_15();
      sub_231327168();
    }

    (*v101)(v54, v110);
    sub_231327168();
    v48 = v118;
LABEL_15:
    v45 = v120;
    goto LABEL_16;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v122[0] = v45;
  v66 = OUTLINED_FUNCTION_69_7();
  sub_2313250CC(v66, v67, v68);

  v69 = v114 + 1;
  if (!__OFADD__(v114, 1))
  {
    v120 = v122[0];
    OUTLINED_FUNCTION_41_15();
    v113 = v70;
    v71 = v103;
    sub_231327110(v39, v103);
    v72 = v121;
    v73 = v121[5];
    v74 = v106;
    sub_231327110(&v39[v73], v106);
    (*v100)(v108, &v39[v73], v109);
    sub_231367290();
    OUTLINED_FUNCTION_52();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
    v79 = v116;
    v80 = &v116[v72[5]];
    OUTLINED_FUNCTION_28();
    v114 = v69;
    sub_2313672A0();
    v81 = v107;
    sub_2311CF388(v74 + *(v107 + 20), &v80[*(v107 + 20)]);
    sub_23123EA8C(v74 + *(v81 + 24), &v80[*(v81 + 24)], &qword_27DD42F20, &qword_23136D410);
    v82 = *(v81 + 28);
    sub_231369050();
    OUTLINED_FUNCTION_11();
    (*(v83 + 16))(&v80[v82], v74 + v82);
    sub_231327168();
    sub_231327110(v71, v79);
    v84 = OUTLINED_FUNCTION_100_0(v72[6]);
    sub_2311CF388(v84, v85);
    v86 = OUTLINED_FUNCTION_100_0(v72[7]);
    sub_2311CF388(v86, v87);
    v88 = OUTLINED_FUNCTION_100_0(v72[8]);
    sub_23123EA8C(v88, v89, &qword_27DD44A38, &qword_231377858);
    v90 = OUTLINED_FUNCTION_100_0(v72[9]);
    sub_23123EA8C(v90, v91, &qword_27DD44710, &qword_231375250);
    sub_231327168();
    sub_231327110(v79, v117);
    v93 = *(v119 + 16);
    v92 = *(v119 + 24);
    if (v93 >= v92 >> 1)
    {
      sub_23126F2AC(v92 > 1, v93 + 1, 1, v119);
      v119 = v97;
    }

    v46 = v111;
    v48 = v118;
    sub_231327168();
    v39 = v112;
    sub_231327168();
    *(v119 + 16) = v93 + 1;
    OUTLINED_FUNCTION_35_0();
    sub_2313270AC(v117, v95 + v94 + *(v96 + 72) * v93);
    v36 = v115;
    goto LABEL_15;
  }

  __break(1u);

  __break(1u);
}