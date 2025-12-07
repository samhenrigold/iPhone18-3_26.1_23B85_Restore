char *sub_26974F92C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324020, &unk_26985E5D0);
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

unint64_t sub_26974FA20(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26974FA50(void *a1)
{
  v1 = [a1 localServiceResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LiveService();
  v3 = sub_269854CB4();

  return v3;
}

uint64_t sub_26974FAB0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_269854A94();
  }

  return OUTLINED_FUNCTION_50_0();
}

id sub_26974FB0C(uint64_t a1, void *a2)
{
  v9[3] = type metadata accessor for LiveServiceResolver();
  v9[4] = &off_287A42540;
  v9[0] = a1;
  v8[3] = &type metadata for CoreAnalyticsService;
  v8[4] = &xmmword_287A41610;
  v7[3] = &type metadata for TvProfileSelector;
  v7[4] = &off_287A41E28;
  sub_2696A73F8(v9, a2 + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_liveServiceResolver);
  sub_2696A73F8(v8, a2 + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_analyticsService);
  sub_2696A73F8(v7, a2 + OBJC_IVAR____TtC16SiriVideoIntents28PlayLiveServiceIntentHandler_tvProfileSelector);
  v6.receiver = a2;
  v6.super_class = type metadata accessor for PlayLiveServiceIntentHandler();
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v4;
}

id sub_26974FBEC(uint64_t a1)
{
  v17 = type metadata accessor for LiveServiceResolver();
  v18 = &off_287A42540;
  v16[0] = a1;
  v14 = &type metadata for CoreAnalyticsService;
  v15 = &xmmword_287A41610;
  v11 = &type metadata for TvProfileSelector;
  v12 = &off_287A41E28;
  v2 = objc_allocWithZone(type metadata accessor for PlayLiveServiceIntentHandler());
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  v7 = sub_26974FB0C(*v5, v2);
  __swift_destroy_boxed_opaque_existential_0(v10);
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v7;
}

uint64_t sub_26974FD68()
{
  OUTLINED_FUNCTION_8_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_25(v1);

  return v3(v2);
}

uint64_t sub_26974FE00()
{
  OUTLINED_FUNCTION_8_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_25(v1);

  return v3(v2);
}

uint64_t sub_26974FE98()
{
  OUTLINED_FUNCTION_8_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_25(v1);

  return v3(v2);
}

uint64_t sub_26974FF30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26974FF94()
{
  result = qword_280324028;
  if (!qword_280324028)
  {
    type metadata accessor for StaticSignal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324028);
  }

  return result;
}

uint64_t sub_26974FFEC(uint64_t a1)
{
  v2 = type metadata accessor for StaticSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_12_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v13 - 112) = v12;

  sub_269840844(v11, v10, a1, a4, a5, a6, a7, a8, a9, a10);
}

void OUTLINED_FUNCTION_13_15()
{

  sub_26977CC9C();
}

void OUTLINED_FUNCTION_14_11()
{

  sub_26977CC9C();
}

id sub_2697500E0()
{
  result = [objc_allocWithZone(type metadata accessor for PlayLiveServiceIntentHandler()) init];
  qword_28033D6F8 = result;
  return result;
}

uint64_t sub_269750114(uint64_t a1)
{
  v106 = sub_269851F04();
  OUTLINED_FUNCTION_8();
  v104 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_7();
  v91 = v4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F40, &unk_26985DE30);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v5);
  v105 = &v89 - v6;
  OUTLINED_FUNCTION_2_13();
  sub_2698523C4();
  OUTLINED_FUNCTION_8();
  v96 = v8;
  v97 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_7();
  v95 = v9;
  OUTLINED_FUNCTION_2_13();
  sub_269852474();
  OUTLINED_FUNCTION_8();
  v93 = v11;
  v94 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_7();
  v92 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F48, qword_26985DE40);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_12();
  v103 = v14 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v101 = &v89 - v18;
  MEMORY[0x28223BE20](v17);
  v102 = &v89 - v19;
  OUTLINED_FUNCTION_2_13();
  sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v107 = v21;
  v108 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12();
  v98 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v90 = &v89 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E8, &qword_26985BAE8);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v89 - v27;
  v29 = type metadata accessor for MediaNLIntent(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15_7();
  v99 = v31;
  OUTLINED_FUNCTION_2_13();
  v32 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = (&v89 - v40);
  v42 = *(v34 + 16);
  v42(&v89 - v40, a1, v32);
  v43 = OUTLINED_FUNCTION_8_3();
  v45 = v44(v43);
  if (v45 == *MEMORY[0x277D5C128])
  {
    v42(v38, a1, v32);
    sub_2697A6954(v38, v28);
    if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
    {
      sub_26969B0C0(v28, &qword_2803239E8, &qword_26985BAE8);
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_280322700);
      }

      v46 = v108;
      v47 = __swift_project_value_buffer(v108, qword_281571B38);
      v48 = v107;
      v49 = v98;
      (*(v107 + 16))(v98, v47, v46);
      v50 = sub_2698548B4();
      v51 = sub_269854F04();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_269684000, v50, v51, "Unable to create MediaNLIntent from parse, ignoring input", v52, 2u);
        MEMORY[0x26D647170](v52, -1, -1);
      }

      (*(v48 + 8))(v49, v46);
      goto LABEL_24;
    }

    v66 = v28;
    v67 = v99;
    sub_269750B68(v66, v99);
    if (qword_280322560 != -1)
    {
      swift_once();
    }

    sub_269750BCC(qword_280323548, type metadata accessor for MediaNLIntent, &unk_269860BD8);
    sub_269853D54();
    if (v109 != 5)
    {
      v69 = sub_2697A8C0C(v109) == 2036427888 && v68 == 0xE400000000000000;
      if (v69)
      {
      }

      else
      {
        v70 = sub_269855584();

        if ((v70 & 1) == 0)
        {
          if (qword_280322700 != -1)
          {
            OUTLINED_FUNCTION_0_4(&qword_280322700);
          }

          v71 = v108;
          v72 = __swift_project_value_buffer(v108, qword_281571B38);
          v73 = v107;
          v74 = v90;
          (*(v107 + 16))(v90, v72, v71);
          v75 = sub_2698548B4();
          v76 = sub_269854F04();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = 0;
            _os_log_impl(&dword_269684000, v75, v76, "Incorrect verb in intent for flow, ignoring input", v77, 2u);
            MEMORY[0x26D647170](v77, -1, -1);
          }

          (*(v73 + 8))(v74, v71);
          sub_2696CC460(v67);
          goto LABEL_24;
        }
      }
    }

    sub_2696CC460(v67);
    v84 = OUTLINED_FUNCTION_8_3();
    v85(v84);
LABEL_38:
    v80 = 1;
    return v80 & 1;
  }

  if (v45 == *MEMORY[0x277D5C148])
  {
    v53 = OUTLINED_FUNCTION_8_3();
    v54(v53);
    v55 = *v41;
    sub_2696D6C54();
    if (v56)
    {
      v57 = v56;
      v58 = v92;
      sub_269854544();

      v59 = v95;
      sub_269852424();
      (*(v93 + 8))(v58, v94);
      v60 = v102;
      sub_2698523A4();
      (*(v96 + 8))(v59, v97);
      v61 = 0;
      v63 = v105;
      v62 = v106;
      v65 = v103;
      v64 = v104;
    }

    else
    {
      v61 = 1;
      v63 = v105;
      v62 = v106;
      v65 = v103;
      v64 = v104;
      v60 = v102;
    }

    v81 = v101;
    __swift_storeEnumTagSinglePayload(v60, v61, 1, v62);
    (*(v64 + 104))(v81, *MEMORY[0x277D391D8], v62);
    __swift_storeEnumTagSinglePayload(v81, 0, 1, v62);
    v82 = *(v100 + 48);
    sub_269740BE4(v60, v63);
    sub_269740BE4(v81, v63 + v82);
    OUTLINED_FUNCTION_8_21(v63);
    if (v69)
    {

      OUTLINED_FUNCTION_7_27(v81);
      OUTLINED_FUNCTION_7_27(v60);
      OUTLINED_FUNCTION_8_21(v63 + v82);
      if (v69)
      {
        sub_26969B0C0(v63, &qword_280323F48, qword_26985DE40);
        goto LABEL_38;
      }
    }

    else
    {
      sub_269740BE4(v63, v65);
      OUTLINED_FUNCTION_8_21(v63 + v82);
      if (!v83)
      {
        v87 = v91;
        (*(v64 + 32))(v91, v63 + v82, v62);
        sub_269750BCC(&qword_280323F50, MEMORY[0x277D39210], MEMORY[0x277D39220]);
        v80 = sub_269854A54();

        v88 = *(v64 + 8);
        v88(v87, v62);
        sub_26969B0C0(v81, &qword_280323F48, qword_26985DE40);
        sub_26969B0C0(v60, &qword_280323F48, qword_26985DE40);
        v88(v65, v62);
        sub_26969B0C0(v63, &qword_280323F48, qword_26985DE40);
        return v80 & 1;
      }

      OUTLINED_FUNCTION_7_27(v81);
      OUTLINED_FUNCTION_7_27(v60);
      (*(v64 + 8))(v65, v62);
    }

    sub_26969B0C0(v63, &qword_280323F40, &unk_26985DE30);
    goto LABEL_25;
  }

LABEL_24:
  v78 = OUTLINED_FUNCTION_8_3();
  v79(v78);
LABEL_25:
  v80 = 0;
  return v80 & 1;
}

uint64_t sub_269750B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaNLIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269750BCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_27(uint64_t a1)
{

  return sub_26969B0C0(a1, v1, v2);
}

uint64_t sub_269750C44(void (*a1)(void))
{
  v3 = [v1 disambiguationItems];
  v4 = sub_269854CB4();

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v7 = *(v4 + 16);
LABEL_2:
  v8 = v4 + 32 + 32 * v5;
  while (1)
  {
    if (v7 == v5)
    {

      return v6;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    sub_2696B6F94(v8, v12);
    v9 = sub_269750DA4(v12, a1);
    ++v5;
    v8 += 32;
    v10 = __swift_destroy_boxed_opaque_existential_0(v12);
    if (v9)
    {
      MEMORY[0x26D645B90](v10);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269854CD4();
      }

      sub_269854CF4();
      v6 = v13;
      goto LABEL_2;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0(v12);

  __break(1u);
  return result;
}

id sub_269750DA4(uint64_t a1, void (*a2)(void))
{
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  sub_2696B6F94(a1, v34);
  v14 = (a2)(0);
  if (!OUTLINED_FUNCTION_51_3(v14, v15, v16, v14))
  {
    sub_2696B6F94(a1, v34);
    v18 = sub_2697558A4();
    if (OUTLINED_FUNCTION_51_3(v18, v19, v20, v18))
    {
      v21 = v33;
      v22 = INTypedObjectWithCustomObject();
      if (v22)
      {
        v17 = v22;

        return v17;
      }

      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_280322700);
      }

      v27 = __swift_project_value_buffer(v4, qword_281571B38);
      (*(v6 + 16))(v10, v27, v4);
      v28 = sub_2698548B4();
      v29 = sub_269854F24();
      if (os_log_type_enabled(v28, v29))
      {
        OUTLINED_FUNCTION_9_17();
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_269684000, v28, v29, "Could not convert disambiguation item to INObject", v30, 2u);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      else
      {
      }

      (*(v6 + 8))(v10, v4);
    }

    else
    {
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_280322700);
      }

      v23 = __swift_project_value_buffer(v4, qword_281571B38);
      (*(v6 + 16))(v13, v23, v4);
      v24 = sub_2698548B4();
      v25 = sub_269854F24();
      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_9_17();
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_269684000, v24, v25, "Unexpected disambiguation item type", v26, 2u);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      (*(v6 + 8))(v13, v4);
    }

    return 0;
  }

  return v33;
}

void *sub_269751094(uint64_t a1)
{
  sub_2698538C4();
  type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  sub_269853264();
  swift_allocObject();

  v3 = sub_269853254();
  v4 = sub_26975598C(v6, v2, a1, v3);

  return v4;
}

uint64_t sub_26975112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v237[2] = a2;
  v238 = a1;
  v225 = sub_269853854();
  OUTLINED_FUNCTION_8();
  v224 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_7();
  v234 = v4;
  v231 = sub_2698538A4();
  OUTLINED_FUNCTION_8();
  v233 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_7();
  v232 = v7;
  v214 = sub_2698523C4();
  OUTLINED_FUNCTION_8();
  v213 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v10);
  v212 = v209 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v13 = OUTLINED_FUNCTION_8_9(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_1(v209 - v14);
  v220 = sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v219 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v17);
  v226 = sub_269852474();
  OUTLINED_FUNCTION_8();
  v216 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_1(v209 - v22);
  v227 = sub_269853874();
  OUTLINED_FUNCTION_8();
  v223 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_7();
  v230 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E8, &qword_26985BAE8);
  v27 = OUTLINED_FUNCTION_8_9(v26);
  MEMORY[0x28223BE20](v27);
  v29 = OUTLINED_FUNCTION_15_1(v209 - v28);
  v229 = type metadata accessor for MediaNLIntent(v29);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v31);
  v32 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v239 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = v209 - v42;
  MEMORY[0x28223BE20](v41);
  v241 = v209 - v44;
  v45 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  v55 = MEMORY[0x28223BE20](v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v57);
  v59 = v209 - v58;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v60 = __swift_project_value_buffer(v45, qword_28033D910);
  v61 = *(v47 + 16);
  v235 = v60;
  v236 = v61;
  v62 = v45;
  (v61)(v59);
  v63 = sub_2698548B4();
  v64 = sub_269854F14();
  v65 = os_log_type_enabled(v63, v64);
  v240 = v32;
  if (v65)
  {
    OUTLINED_FUNCTION_9_17();
    v66 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_2(v66);
    _os_log_impl(&dword_269684000, v63, v64, "DisambigateLiveServicesStrategy.actionForInput() called", v32, 2u);
    v32 = v240;
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v237[0] = *(v47 + 8);
  v237[1] = v47 + 8;
  (v237[0])(v59, v62);
  v67 = v241;
  v68 = v238;
  sub_269853844();
  v69 = v239;
  v70 = (v239)[11](v67, v32);
  if (v70 == *MEMORY[0x277D5C128])
  {
    sub_269853844();
    v71 = sub_269750114(v43);
    v72 = v69[1];
    v72(v43, v32);
    if ((v71 & 1) == 0)
    {
      v87 = OUTLINED_FUNCTION_17_11();
      v88(v87);
      v76 = sub_2698548B4();
      v89 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v89))
      {
        OUTLINED_FUNCTION_9_17();
        v90 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_2(v90);
        v81 = "Ignoring action due to shouldHandle returning false";
        goto LABEL_19;
      }

LABEL_20:

      OUTLINED_FUNCTION_26_10();
      v91();
      sub_269853014();
LABEL_21:
      v92 = OUTLINED_FUNCTION_45_2();
      return (v72)(v92);
    }

    sub_269853844();
    v73 = v228;
    sub_2697A6954(v43, v228);
    if (__swift_getEnumTagSinglePayload(v73, 1, v229) == 1)
    {
      sub_26969B0C0(v73, &qword_2803239E8, &qword_26985BAE8);
      v74 = OUTLINED_FUNCTION_17_11();
      v75(v74);
      v76 = sub_2698548B4();
      v77 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v77))
      {
        OUTLINED_FUNCTION_9_17();
        v78 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_2(v78);
        v81 = "Ignoring action due to missing canonicalId in NL intent";
LABEL_19:
        OUTLINED_FUNCTION_20_7(&dword_269684000, v79, v80, v81);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v116 = v222;
    sub_269750B68(v73, v222);
    if (qword_280322580 != -1)
    {
      OUTLINED_FUNCTION_7_17(&qword_280322580);
    }

    OUTLINED_FUNCTION_5_23();
    sub_269755944(v117, 255, v118, &unk_269860BD8);
    OUTLINED_FUNCTION_50_0();
    sub_269853D54();
    if (!v245)
    {
      v236(v217, v235, v62);
      v177 = sub_2698548B4();
      v178 = sub_269854F14();
      if (OUTLINED_FUNCTION_17_2(v178))
      {
        OUTLINED_FUNCTION_9_17();
        v179 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_2(v179);
        OUTLINED_FUNCTION_20_7(&dword_269684000, v180, v181, "Ignoring action due to missing canonicalId in NL intent");
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      OUTLINED_FUNCTION_26_10();
      v182();
      sub_269853014();
      OUTLINED_FUNCTION_3_19();
      sub_2696FD654(v116, v183);
      goto LABEL_21;
    }

    v243[2] = v244;
    v243[3] = v245;
    OUTLINED_FUNCTION_20_5();
    v243[0] = v119;
    v243[1] = v120;
    v242[0] = 0;
    v242[1] = 0xE000000000000000;
    v121 = sub_269693054();
    OUTLINED_FUNCTION_23_4(v243, v242, v122, v123, v124, v125, MEMORY[0x277D837D0], v126, MEMORY[0x277D837D0], v121, v121, v121);

    OUTLINED_FUNCTION_3_19();
    sub_2696FD654(v116, v127);
    goto LABEL_49;
  }

  if (v70 != *MEMORY[0x277D5C150])
  {
    v85 = v234;
    if (v70 == *MEMORY[0x277D5C140])
    {
      v94 = OUTLINED_FUNCTION_44_3();
      v95(v94);
      v96 = OUTLINED_FUNCTION_22_3();
      v97(v96);
      v98 = OUTLINED_FUNCTION_7_16();
      v99 = v227;
      v100(v98);
      v101 = v218;
      sub_269853864();
      v102 = v221;
      sub_2696D3C74();
      OUTLINED_FUNCTION_3_15();
      v103(v101, v220);
      v104 = v226;
      if (__swift_getEnumTagSinglePayload(v102, 1, v226) == 1)
      {
        sub_26969B0C0(v102, &qword_280323360, &unk_26985AB80);
        v105 = OUTLINED_FUNCTION_17_11();
        v106(v105);
        v107 = sub_2698548B4();
        v108 = sub_269854F14();
        if (OUTLINED_FUNCTION_17_2(v108))
        {
          OUTLINED_FUNCTION_9_17();
          v109 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_2(v109);
          OUTLINED_FUNCTION_20_7(&dword_269684000, v110, v111, "Ignoring action due to missing videoClientComponent");
          OUTLINED_FUNCTION_8_25();
          MEMORY[0x26D647170]();
        }

        OUTLINED_FUNCTION_26_10();
        v112();
        sub_269853014();
        v113 = OUTLINED_FUNCTION_35_6();
        v115 = v99;
LABEL_62:
        v114(v113, v115);
        v198 = OUTLINED_FUNCTION_45_2();
        return v200(v198, v199);
      }

      v238 = v62;
      v164 = v216;
      v165 = v215;
      (*(v216 + 32))(v215, v102, v104);
      v166 = v212;
      sub_269852424();
      v167 = sub_2698520D4();
      v169 = v168;
      OUTLINED_FUNCTION_3_15();
      v170(v166, v214);

      v171 = HIBYTE(v169) & 0xF;
      if ((v169 & 0x2000000000000000) == 0)
      {
        v171 = v167 & 0xFFFFFFFFFFFFLL;
      }

      if (!v171)
      {
        v191 = v210;
        v192 = v238;
        v236(v210, v235, v238);
        v193 = sub_2698548B4();
        v194 = sub_269854F14();
        if (OUTLINED_FUNCTION_17_2(v194))
        {
          OUTLINED_FUNCTION_9_17();
          v195 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_2(v195);
          OUTLINED_FUNCTION_20_7(&dword_269684000, v196, v197, "Ignoring action due to empty selectedItemIdentifier");
          OUTLINED_FUNCTION_8_25();
          MEMORY[0x26D647170]();
        }

        (v237[0])(v191, v192);
        sub_269853014();
        (*(v164 + 8))(v215, v104);
        v113 = OUTLINED_FUNCTION_35_6();
        v115 = v227;
        goto LABEL_62;
      }

      (*(v164 + 8))(v165, v104);
      v172 = OUTLINED_FUNCTION_35_6();
      v173(v172, v227);
      v72 = v69[1];
LABEL_49:
      v174 = OUTLINED_FUNCTION_45_2();
      (v72)(v174);
      return sub_269853004();
    }

    if (v70 != *MEMORY[0x277D5C148])
    {
      goto LABEL_43;
    }

    v136 = OUTLINED_FUNCTION_44_3();
    v137(v136);
    v138 = OUTLINED_FUNCTION_22_3();
    v139(v138);
    v140 = *(v47 + 8);
    sub_269853844();
    v141 = sub_269750114(v43);
    v72 = v69[1];
    v72(v43, v32);
    if ((v141 & 1) != 0 && (sub_2696D6C54(), v142))
    {
      v143 = v142;
      v239 = v140;
      sub_269854544();

      v144 = v216;
      v145 = v211;
      v146 = OUTLINED_FUNCTION_22_3();
      v147 = v226;
      v148(v146);
      v149 = v209[3];
      sub_269852424();
      v150 = sub_2698520D4();
      v152 = v151;
      OUTLINED_FUNCTION_3_15();
      v153(v149, v214);

      v154 = HIBYTE(v152) & 0xF;
      if ((v152 & 0x2000000000000000) == 0)
      {
        v154 = v150 & 0xFFFFFFFFFFFFLL;
      }

      if (v154)
      {
        (*(v144 + 8))(v145, v147);

        goto LABEL_49;
      }

      v201 = OUTLINED_FUNCTION_20_11(&v232);
      v202(v201);
      v203 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_28_8();
      if (os_log_type_enabled(v203, v204))
      {
        OUTLINED_FUNCTION_9_17();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_26_8(&dword_269684000, v205, v206, "Ignoring action due to empty selectedItemIdentifier");
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      OUTLINED_FUNCTION_26_10();
      v207();
      sub_269853014();

      OUTLINED_FUNCTION_3_15();
      v208(v211, v226);
    }

    else
    {
      v184 = OUTLINED_FUNCTION_20_11(v237);
      v185(v184);
      v186 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_28_8();
      if (os_log_type_enabled(v186, v187))
      {
        OUTLINED_FUNCTION_9_17();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_26_8(&dword_269684000, v188, v189, "Ignoring action due to shouldHandle returning false");
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      OUTLINED_FUNCTION_26_10();
      v190();
      sub_269853014();
    }

    v92 = v241;
    return (v72)(v92);
  }

  (v69[2])(v37, v241, v32);
  (v69)[12](v37, v32);
  v82 = v231;
  (*(v233 + 32))(v232, v37, v231);
  v84 = sub_269853884() == 0xD00000000000002CLL && 0x800000026987A070 == v83;
  v85 = v234;
  if (v84)
  {
  }

  else
  {
    v86 = sub_269855584();

    if ((v86 & 1) == 0)
    {
      (*(v233 + 8))(v232, v82);
      v68 = v238;
LABEL_43:
      v155 = OUTLINED_FUNCTION_17_11();
      v156(v155);
      v157 = v224;
      v158 = v225;
      (*(v224 + 16))(v85, v68, v225);
      v159 = sub_2698548B4();
      v160 = sub_269854F14();
      if (os_log_type_enabled(v159, v160))
      {
        v161 = OUTLINED_FUNCTION_27_2();
        v162 = swift_slowAlloc();
        v244 = v162;
        *v161 = 136315138;
        sub_269853844();
        (v239)[1](v43, v240);
        (*(v157 + 8))(v85, v158);
        *(v161 + 4) = sub_26974F520(0x6573726150, 0xE500000000000000, &v244);
        _os_log_impl(&dword_269684000, v159, v160, "Ignoring action due to unsupported parse type: %s", v161, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v162);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      else
      {

        (*(v157 + 8))(v85, v158);
      }

      OUTLINED_FUNCTION_26_10();
      v163();
      sub_269853014();
      v175 = OUTLINED_FUNCTION_45_2();
      return v176(v175);
    }
  }

  v128 = OUTLINED_FUNCTION_20_11(&v246);
  v129(v128);
  v130 = sub_2698548B4();
  v131 = sub_269854F14();
  if (OUTLINED_FUNCTION_17_2(v131))
  {
    OUTLINED_FUNCTION_9_17();
    v132 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_2(v132);
    OUTLINED_FUNCTION_20_7(&dword_269684000, v133, v134, "PlayLiveServiceDisambiguationStrategy.actionForInput() handling direct invocation from com.apple.siri.video.DisambiguationSelection");
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  OUTLINED_FUNCTION_26_10();
  v135();
  sub_269853004();
  (*(v233 + 8))(v232, v82);
  return (v69)[1](v241, v240);
}

uint64_t sub_2697524A8()
{
  OUTLINED_FUNCTION_2_7();
  v0[2] = v1;
  v2 = sub_2698548D4();
  v0[3] = v2;
  OUTLINED_FUNCTION_5_12(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_4_7();
  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26975254C()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  v6 = *(v2 + 16);
  v5 = (v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_9_17();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_2(v9);
    _os_log_impl(&dword_269684000, v7, v8, "DisambigateLiveServicesStrategy.makeDisambiguationItemContainer() called", v5, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v10 = v0[2];

  v11 = OUTLINED_FUNCTION_22_3();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324050, &qword_26985E7A0);
  sub_2698536C4();
  OUTLINED_FUNCTION_15_14();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324040, qword_26985E6B8);
  swift_allocObject();
  v13 = sub_2698537E4();

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_2697526EC()
{
  OUTLINED_FUNCTION_2_7();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324060, &qword_26985E7A8);
  v1[22] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[23] = v7;
  v1[24] = OUTLINED_FUNCTION_4_7();
  v8 = sub_2698538A4();
  v1[25] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[26] = v9;
  v1[27] = OUTLINED_FUNCTION_4_7();
  v10 = sub_2698523C4();
  v1[28] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[29] = v11;
  v1[30] = OUTLINED_FUNCTION_4_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v12);
  v1[31] = OUTLINED_FUNCTION_4_7();
  v13 = sub_269851EF4();
  v1[32] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[33] = v14;
  v1[34] = OUTLINED_FUNCTION_4_7();
  v15 = sub_269852474();
  v1[35] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v1[36] = v16;
  v1[37] = OUTLINED_FUNCTION_37_0();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v17 = sub_269853874();
  v1[43] = v17;
  OUTLINED_FUNCTION_5_12(v17);
  v1[44] = v18;
  v1[45] = OUTLINED_FUNCTION_4_7();
  v19 = type metadata accessor for MediaNLIntent(0);
  v1[46] = v19;
  OUTLINED_FUNCTION_8_9(v19);
  v1[47] = OUTLINED_FUNCTION_37_0();
  v1[48] = swift_task_alloc();
  v20 = sub_269853F44();
  v1[49] = v20;
  OUTLINED_FUNCTION_5_12(v20);
  v1[50] = v21;
  v1[51] = OUTLINED_FUNCTION_4_7();
  v22 = sub_2698538B4();
  v1[52] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v1[53] = v23;
  v1[54] = OUTLINED_FUNCTION_37_0();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v24 = sub_2698548D4();
  v1[59] = v24;
  OUTLINED_FUNCTION_5_12(v24);
  v1[60] = v25;
  v1[61] = OUTLINED_FUNCTION_37_0();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v26);
}

uint64_t sub_269752B20()
{
  v248 = v0;
  if (qword_2803226E0 != -1)
  {
LABEL_84:
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v1 = *(v0 + 544);
  v2 = *(v0 + 480);
  v237 = __swift_project_value_buffer(*(v0 + 472), qword_28033D910);
  v238 = *(v2 + 16);
  v238(v1);
  v3 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_28_8();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9_17();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_53_0(&dword_269684000, v5, v6, "DisambigateLiveServicesStrategy.parseDisambiguationResult() called");
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v7 = *(v0 + 544);
  v9 = *(v0 + 472);
  v8 = *(v0 + 480);
  v10 = *(v0 + 464);
  v11 = *(v0 + 416);
  v12 = *(v0 + 424);

  v13 = *(v8 + 8);
  v13(v7, v9);
  sub_269853844();
  v14 = (*(v12 + 88))(v10, v11);
  if (v14 == *MEMORY[0x277D5C128])
  {
    v236 = v13;
    v15 = *(v0 + 536);
    v241 = *(v0 + 472);
    v16 = *(v0 + 456);
    v17 = *(v0 + 400);
    v18 = *(v0 + 408);
    v20 = *(v0 + 384);
    v19 = *(v0 + 392);
    v21 = *(v0 + 376);
    (*(*(v0 + 424) + 16))(v16, *(v0 + 464), *(v0 + 416));
    v22 = OUTLINED_FUNCTION_44_0();
    v23(v22);
    (*(v17 + 32))(v18, v16, v19);
    (*(v17 + 16))(v20, v18, v19);
    (v238)(v15, v237, v241);
    sub_2697558E8(v20, v21, type metadata accessor for MediaNLIntent);
    v24 = sub_2698548B4();
    v25 = sub_269854F14();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 536);
    v28 = *(v0 + 472);
    v29 = *(v0 + 376);
    if (v26)
    {
      OUTLINED_FUNCTION_27_2();
      v30 = OUTLINED_FUNCTION_40_2();
      v247[0] = v30;
      *v19 = 136315138;
      OUTLINED_FUNCTION_5_23();
      sub_269755944(v31, 255, v32, &unk_269860BB0);
      v33 = sub_269855544();
      v242 = v27;
      v35 = v34;
      OUTLINED_FUNCTION_3_19();
      sub_2696FD654(v29, v36);
      v37 = sub_26974F520(v33, v35, v247);

      *(v19 + 4) = v37;
      _os_log_impl(&dword_269684000, v24, v25, "Parsing from NLv3 intent: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();

      v38 = v242;
    }

    else
    {

      OUTLINED_FUNCTION_3_19();
      sub_2696FD654(v29, v51);
      v38 = v27;
    }

    v236(v38, v28);
    if (qword_280322580 != -1)
    {
      OUTLINED_FUNCTION_7_17(&qword_280322580);
    }

    OUTLINED_FUNCTION_5_23();
    sub_269755944(v52, 255, v53, &unk_269860BD8);
    sub_269853D54();
    v46 = *(v0 + 72);
    if (v46)
    {
      v55 = *(v0 + 400);
      v54 = *(v0 + 408);
      v56 = *(v0 + 384);
      v57 = *(v0 + 392);
      *(v0 + 80) = *(v0 + 64);
      *(v0 + 88) = v46;
      OUTLINED_FUNCTION_20_5();
      *(v0 + 96) = v58;
      *(v0 + 104) = v59;
      *(v0 + 112) = 0;
      *(v0 + 120) = 0xE000000000000000;
      v60 = sub_269693054();
      v66 = OUTLINED_FUNCTION_23_4(v0 + 96, v0 + 112, v61, v62, v63, v64, MEMORY[0x277D837D0], v65, MEMORY[0x277D837D0], v60, v60, v60);
      v68 = v67;

      OUTLINED_FUNCTION_3_19();
      sub_2696FD654(v56, v69);
      (*(v55 + 8))(v54, v57);
      goto LABEL_19;
    }

    v97 = *(v0 + 384);
    v98 = sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v98);
    OUTLINED_FUNCTION_5_14(v99, 11);
    OUTLINED_FUNCTION_43_1(v100);
    OUTLINED_FUNCTION_3_19();
    sub_2696FD654(v97, v101);
    v102 = OUTLINED_FUNCTION_44_0();
    v103(v102);
    v104 = OUTLINED_FUNCTION_7_16();
    goto LABEL_59;
  }

  if (v14 == *MEMORY[0x277D5C150])
  {
    v39 = *(v0 + 432);
    v40 = *(v0 + 208);
    v7 = *(v0 + 216);
    v41 = *(v0 + 200);
    v42 = OUTLINED_FUNCTION_18_6();
    v43(v42);
    v44 = OUTLINED_FUNCTION_7_16();
    v45(v44);
    v47 = *(v40 + 32);
    v46 = v40 + 32;
    v47(v7, v39, v41);
    if (sub_269853884() == 0xD00000000000002CLL && 0x800000026987A070 == v48)
    {
    }

    else
    {
      v50 = sub_269855584();

      if ((v50 & 1) == 0)
      {
        (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
LABEL_56:
        v157 = OUTLINED_FUNCTION_25_6();
        v158(v157);
        v159 = sub_2698548B4();
        v160 = sub_269854F14();
        if (os_log_type_enabled(v159, v160))
        {
          OUTLINED_FUNCTION_9_17();
          v161 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_2(v161);
          _os_log_impl(&dword_269684000, v159, v160, "PlayLiveServiceDisambiguationStrategy.parseDisambiguationResult() received an unexpected parse", v7, 2u);
          OUTLINED_FUNCTION_8_25();
          MEMORY[0x26D647170]();
        }

        v162 = OUTLINED_FUNCTION_22_3();
        (v13)(v162);
        v163 = sub_2696BAE9C();
        OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v163);
        OUTLINED_FUNCTION_5_14(v164, 13);
        OUTLINED_FUNCTION_43_1(v165);
        v104 = OUTLINED_FUNCTION_44_0();
LABEL_59:
        v105(v104);
        goto LABEL_69;
      }
    }

    v116 = OUTLINED_FUNCTION_25_6();
    v117(v116);
    v118 = sub_2698548B4();
    sub_269854F14();
    OUTLINED_FUNCTION_28_8();
    if (os_log_type_enabled(v118, v119))
    {
      OUTLINED_FUNCTION_9_17();
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_269684000, v118, v7, "PlayLiveServiceDisambiguationStrategy.parseDisambiguationResult() taking liveServiceId from com.apple.siri.video.PlayLiveServiceDisambiguationStrategy", v120, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v121 = OUTLINED_FUNCTION_22_3();
    (v13)(v121);
    v122 = sub_269853894();
    v123 = *(v0 + 208);
    v124 = *(v0 + 216);
    v125 = *(v0 + 200);
    if (v122)
    {
      sub_26981CFD4();

      (*(v123 + 8))(v124, v125);
      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v236 = v13;
          v66 = *(v0 + 48);
          v68 = *(v0 + 56);
          goto LABEL_19;
        }

LABEL_67:
        (*(*(v0 + 424) + 8))(*(v0 + 464), *(v0 + 416));
        v178 = sub_2696BAE9C();
        OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v178);
        OUTLINED_FUNCTION_5_14(v179, 11);
LABEL_68:
        OUTLINED_FUNCTION_43_1(v114);
        goto LABEL_69;
      }
    }

    else
    {
      (*(v123 + 8))(*(v0 + 216), *(v0 + 200));
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_26969B0C0(v0 + 16, &qword_280322F88, qword_26985AB90);
    goto LABEL_67;
  }

  if (v14 == *MEMORY[0x277D5C140])
  {
    v236 = v13;
    v79 = *(v0 + 448);
    v81 = *(v0 + 352);
    v80 = *(v0 + 360);
    v82 = *(v0 + 344);
    v83 = *(v0 + 272);
    v84 = *(v0 + 264);
    v239 = *(v0 + 256);
    v244 = *(v0 + 280);
    v85 = *(v0 + 248);
    v86 = OUTLINED_FUNCTION_18_6();
    v87(v86);
    v88 = OUTLINED_FUNCTION_7_16();
    v89(v88);
    (*(v81 + 32))(v80, v79, v82);
    sub_269853864();
    sub_2696D3C74();
    (*(v84 + 8))(v83, v239);
    if (__swift_getEnumTagSinglePayload(v85, 1, v244) == 1)
    {
      sub_26969B0C0(*(v0 + 248), &qword_280323360, &unk_26985AB80);
      v90 = sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v90);
      OUTLINED_FUNCTION_5_14(v91, 11);
      OUTLINED_FUNCTION_43_1(v92);
      v93 = OUTLINED_FUNCTION_44_0();
      v94(v93);
      v95 = OUTLINED_FUNCTION_7_16();
      v96(v95);
LABEL_69:

      OUTLINED_FUNCTION_7_7();
      goto LABEL_70;
    }

    v182 = *(v0 + 528);
    v183 = *(v0 + 472);
    v185 = *(v0 + 328);
    v184 = *(v0 + 336);
    v186 = *(v0 + 280);
    v187 = *(v0 + 288);
    (*(v187 + 32))(v184, *(v0 + 248), v186);
    (v238)(v182, v237, v183);
    v188 = *(v187 + 16);
    v188(v185, v184, v186);
    v189 = sub_2698548B4();
    v190 = sub_269854F14();
    v191 = os_log_type_enabled(v189, v190);
    v192 = *(v0 + 528);
    v193 = *(v0 + 472);
    v194 = *(v0 + 328);
    if (v191)
    {
      v195 = *(v0 + 320);
      v234 = *(v0 + 528);
      v197 = *(v0 + 280);
      v196 = *(v0 + 288);
      v232 = *(v0 + 472);
      v198 = OUTLINED_FUNCTION_27_2();
      v230 = swift_slowAlloc();
      v247[0] = v230;
      *v198 = 136315138;
      v188(v195, v194, v197);
      sub_269854AE4();
      v246 = *(v196 + 8);
      v246(v194, v197);
      v199 = OUTLINED_FUNCTION_50_0();
      v202 = sub_26974F520(v199, v200, v201);

      *(v198 + 4) = v202;
      _os_log_impl(&dword_269684000, v189, v190, "Parsing from pegasus result: %s", v198, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v230);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();

      v203 = v232;
      v204 = v234;
    }

    else
    {
      v209 = *(v0 + 280);
      v208 = *(v0 + 288);

      v246 = *(v208 + 8);
      v246(v194, v209);
      v204 = v192;
      v203 = v193;
    }

    v236(v204, v203);
    v210 = *(v0 + 352);
    v235 = *(v0 + 360);
    v212 = *(v0 + 336);
    v211 = *(v0 + 344);
    v46 = *(v0 + 280);
    v213 = *(v0 + 232);
    v214 = *(v0 + 240);
    v215 = *(v0 + 224);
    sub_269852424();
    v66 = sub_2698520D4();
    v68 = v216;
    (*(v213 + 8))(v214, v215);
    v246(v212, v46);
    (*(v210 + 8))(v235, v211);
  }

  else
  {
    if (v14 != *MEMORY[0x277D5C148])
    {
      goto LABEL_56;
    }

    v126 = *(v0 + 440);
    v127 = OUTLINED_FUNCTION_18_6();
    v128(v127);
    v129 = OUTLINED_FUNCTION_7_16();
    v130(v129);
    v131 = *v126;
    sub_2696D6C54();
    if (!v132)
    {
      v217 = *(v0 + 464);
      v218 = *(v0 + 416);
      v219 = *(v0 + 424);
      v220 = sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v220);
      OUTLINED_FUNCTION_5_14(v221, 11);
      OUTLINED_FUNCTION_43_1(v222);

      (*(v219 + 8))(v217, v218);
      goto LABEL_69;
    }

    v133 = v132;
    v134 = *(v0 + 520);
    v135 = *(v0 + 472);
    v136 = *(v0 + 312);
    v137 = *(v0 + 288);
    v240 = *(v0 + 296);
    v245 = v131;
    v138 = *(v0 + 280);
    sub_269854544();

    v139 = OUTLINED_FUNCTION_44_0();
    v140(v139);
    (v238)(v134, v237, v135);
    v141 = *(v137 + 16);
    v141(v240, v136, v138);
    v142 = sub_2698548B4();
    v143 = sub_269854F14();
    v144 = os_log_type_enabled(v142, v143);
    v145 = *(v0 + 520);
    v146 = *(v0 + 472);
    v236 = v13;
    if (v144)
    {
      v147 = *(v0 + 320);
      v149 = *(v0 + 288);
      v148 = *(v0 + 296);
      v231 = v143;
      v150 = *(v0 + 280);
      OUTLINED_FUNCTION_27_2();
      v233 = v146;
      v229 = OUTLINED_FUNCTION_40_2();
      v247[0] = v229;
      *v145 = 136315138;
      v151 = v148;
      v141(v147, v148, v150);
      OUTLINED_FUNCTION_50_0();
      sub_269854AE4();
      v152 = *(v149 + 8);
      v152(v151, v150);
      v153 = OUTLINED_FUNCTION_22_3();
      v156 = sub_26974F520(v153, v154, v155);

      *(v145 + 4) = v156;
      _os_log_impl(&dword_269684000, v142, v231, "Parsing from pommes result: %s", v145, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v229);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();

      v236(v145, v233);
    }

    else
    {
      v223 = *(v0 + 288);

      v152 = *(v223 + 8);
      v224 = OUTLINED_FUNCTION_7_16();
      (v152)(v224);
      v13(v145, v146);
    }

    v225 = *(v0 + 232);
    v46 = *(v0 + 240);
    v226 = *(v0 + 224);
    sub_269852424();
    v66 = sub_2698520D4();
    v68 = v227;

    (*(v225 + 8))(v46, v226);
    v228 = OUTLINED_FUNCTION_22_3();
    (v152)(v228);
  }

LABEL_19:
  (*(*(v0 + 424) + 8))(*(v0 + 464), *(v0 + 416));
  v70 = HIBYTE(v68) & 0xF;
  v243 = v68;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v70 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (!v70)
  {
LABEL_41:
    v106 = OUTLINED_FUNCTION_25_6();
    v107(v106);

    v108 = sub_2698548B4();
    v109 = sub_269854F24();

    if (os_log_type_enabled(v108, v109))
    {
      OUTLINED_FUNCTION_27_2();
      v110 = OUTLINED_FUNCTION_40_2();
      v247[0] = v110;
      *v46 = 136315138;
      v111 = sub_26974F520(v66, v243, v247);

      *(v46 + 4) = v111;
      _os_log_impl(&dword_269684000, v108, v109, "No live service matched the selected identifier: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v110);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    else
    {
    }

    v112 = OUTLINED_FUNCTION_22_3();
    (v236)(v112);
    v113 = sub_2696BAE9C();
    v114 = OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v113);
    *(v115 + 8) = 0;
    *(v115 + 16) = 0;
    *v115 = 3;
    *(v115 + 24) = 3;
    goto LABEL_68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324048, &qword_26985E798);
  v71 = sub_269853544();
  v46 = sub_26975004C();
  for (i = 0; ; ++i)
  {
    if (v46 == i)
    {

      goto LABEL_41;
    }

    if ((v71 & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x26D646120](i, v71);
    }

    else
    {
      if (i >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v73 = *(v71 + 8 * i + 32);
    }

    v74 = v73;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v75 = sub_26973F87C(v73);
    if (!v76)
    {
      goto LABEL_34;
    }

    if (v75 == v66 && v76 == v243)
    {
      break;
    }

    v78 = sub_269855584();

    if (v78)
    {
      goto LABEL_61;
    }

LABEL_34:
  }

LABEL_61:

  v166 = *(v0 + 496);
  v167 = *(v0 + 472);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324050, &qword_26985E7A0);
  v168 = sub_2698536B4();
  [v168 setLiveService_];

  (v238)(v166, v237, v167);
  v169 = sub_2698548B4();
  v170 = sub_269854F14();
  if (os_log_type_enabled(v169, v170))
  {
    OUTLINED_FUNCTION_9_17();
    v171 = swift_slowAlloc();
    *v171 = 0;
    _os_log_impl(&dword_269684000, v169, v170, "Populating the intent with the selected live service", v171, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v172 = *(v0 + 496);
  v173 = *(v0 + 472);
  v174 = *(v0 + 168);

  v236(v172, v173);
  __swift_project_boxed_opaque_existential_1((v174 + 16), *(v174 + 40));
  *(v0 + 128) = type metadata accessor for PlayLiveServiceIntent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324068, &unk_26985E7B0);
  sub_269854AE4();
  sub_2697B22A4();

  v175 = sub_2698536B4();
  v176 = [v175 liveService];

  v177 = 0;
  if (v176)
  {
    v177 = type metadata accessor for LiveService();
  }

  else
  {
    v247[1] = 0;
    v247[2] = 0;
  }

  v206 = *(v0 + 184);
  v205 = *(v0 + 192);
  v247[0] = v176;
  v207 = *(v0 + 176);
  v247[3] = v177;
  sub_2698536B4();
  sub_269853334();
  sub_269853424();

  (*(v206 + 8))(v205, v207);

  OUTLINED_FUNCTION_7_7();
LABEL_70:

  return v180();
}

uint64_t sub_26975408C()
{
  OUTLINED_FUNCTION_2_7();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v5 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v5);
  v1[13] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269853634();
  v1[14] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_4_7();
  v8 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  OUTLINED_FUNCTION_8_9(v8);
  v1[17] = OUTLINED_FUNCTION_4_7();
  v9 = sub_269853234();
  v1[18] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_4_7();
  v11 = sub_2698548D4();
  v1[21] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[22] = v12;
  v1[23] = OUTLINED_FUNCTION_37_0();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v13);
}

void *sub_269754224()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v1 = v0[25];
  v2 = v0[22];
  __swift_project_value_buffer(v0[21], qword_28033D910);
  (*(v2 + 16))(v1);
  v3 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_28_8();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9_17();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_53_0(&dword_269684000, v5, v6, "DisambigateLiveServicesStrategy.makePromptForDisambiguation() called");
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v7 = v0[25];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[11];

  v47 = *(v8 + 8);
  v47(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324048, &qword_26985E798);
  sub_269853534();
  sub_269836BCC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324050, &qword_26985E7A0);
  sub_2698536C4();
  v11 = OUTLINED_FUNCTION_15_14();
  v0[26] = v11;

  v12 = sub_26975004C();
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v12;
    v48 = MEMORY[0x277D84F90];
    result = sub_269815304(0, v12 & ~(v12 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v13 = v48;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D646120](v16, v11);
      }

      else
      {
        v17 = *(v11 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v18 name];
      if (v19)
      {
        v20 = v19;
        v21 = sub_269854A94();
        v23 = v22;
      }

      else
      {

        v21 = 0;
        v23 = 0;
      }

      v25 = *(v48 + 16);
      v24 = *(v48 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_269815304((v24 > 1), v25 + 1, 1);
      }

      ++v16;
      *(v48 + 16) = v25 + 1;
      v26 = v48 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
    }

    while (v14 != v16);
  }

  sub_2697F238C(v13);
  v28 = *(v27 + 16);

  if (v28 == 1)
  {
    sub_269830114();
    if (!v30)
    {

      v31 = OUTLINED_FUNCTION_49_4();
      v32(v31);
      v33 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_28_8();
      if (os_log_type_enabled(v33, v34))
      {
        OUTLINED_FUNCTION_9_17();
        v35 = swift_slowAlloc();
        *v35 = 0;
LABEL_27:
        _os_log_impl(&dword_269684000, v33, v11, v36, v35, 2u);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else
  {
    sub_269830114();
    if (!v30)
    {

      v38 = OUTLINED_FUNCTION_49_4();
      v39(v38);
      v33 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_28_8();
      if (os_log_type_enabled(v33, v40))
      {
        OUTLINED_FUNCTION_9_17();
        v35 = swift_slowAlloc();
        *v35 = 0;
        goto LABEL_27;
      }

LABEL_28:

      v41 = OUTLINED_FUNCTION_22_3();
      (v47)(v41);
      v42 = sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v42);
      OUTLINED_FUNCTION_5_14(v43, 7);
      swift_willThrow();
      v44 = OUTLINED_FUNCTION_48_3();
      v45(v44);

      OUTLINED_FUNCTION_7_7();

      return v46();
    }
  }

  v0[27] = v30;
  v0[7] = v29;
  v0[8] = v30;
  __swift_project_boxed_opaque_existential_1((v0[12] + 96), *(v0[12] + 120));
  v37 = swift_task_alloc();
  v0[28] = v37;
  *v37 = v0;
  v37[1] = sub_26975478C;

  return sub_26977F2C4(0xD000000000000017, 0x800000026987D590);
}

uint64_t sub_26975478C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  v5[29] = v1;

  if (v1)
  {

    v9 = sub_269754CE8;
  }

  else
  {
    v10 = v5[7];
    v5[30] = a1;
    v5[31] = v10;
    v9 = sub_2697548B4;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2697548B4()
{
  v1 = v0[30];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[12];
  sub_26973ED78(v0[26], v0[31], v0[27], v3);

  sub_269852E84();
  *(swift_task_alloc() + 16) = v2;
  sub_2698535C4();

  __swift_project_boxed_opaque_existential_1((v4 + 144), *(v4 + 168));
  v0[5] = type metadata accessor for VideoDataModels(0);
  v0[6] = sub_269755944(&qword_280323A28, 255, type metadata accessor for VideoDataModels, &protocol conformance descriptor for VideoDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2697558E8(v3, boxed_opaque_existential_1, type metadata accessor for VideoDataModels.DisambiguateItemsModel);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v6 = swift_allocObject();
  v0[32] = v6;
  *(v6 + 16) = xmmword_2698590C0;
  *(v6 + 32) = v1;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_269754ACC;
  v9 = v0[9];

  return MEMORY[0x2821BB468](v9);
}

uint64_t sub_269754ACC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_269754BCC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);

  (*(v2 + 8))(v3, v4);
  sub_2696FD654(v1, type metadata accessor for VideoDataModels.DisambiguateItemsModel);
  v5 = OUTLINED_FUNCTION_44_0();
  v6(v5);

  OUTLINED_FUNCTION_7_7();

  return v7();
}

uint64_t sub_269754CE8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_48_3();
  v2(v1);

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_269754DB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_269852F34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_2698535F4();
  sub_269853624();
  v10 = sub_269853234();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_269853604();
  sub_2698535E4();
  (*(v4 + 104))(v6, *MEMORY[0x277D5BC50], v3);
  return sub_2698535D4();
}

uint64_t sub_269754F68()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_2696D1E70(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  return v0;
}

uint64_t sub_269754FB0()
{
  sub_269754F68();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

void sub_269755008()
{
  type metadata accessor for PlayLiveServiceDisambiguationStrategy();

  JUMPOUT(0x26D643790);
}

uint64_t sub_269755074(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2696F2974;

  return sub_2697524A8();
}

uint64_t sub_26975510C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2697526EC();
}

uint64_t sub_2697551D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_26975408C();
}

uint64_t sub_269755284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821B9F38](a1, a2, a3, v11, a5);
}

uint64_t sub_269755350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821B9F48](a1, a2, a3, v11, a5);
}

uint64_t sub_26975541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9F40](a1, a2, v9, a4);
}

uint64_t sub_2697554E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9F58](a1, a2, v9, a4);
}

uint64_t sub_2697555A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlayLiveServiceDisambiguationStrategy();

  return sub_2698528E4();
}

uint64_t sub_2697555F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v12 = v6;
  v12[1] = sub_2696DAF80;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2697556CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2696DAF80;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

unint64_t sub_2697557FC()
{
  result = qword_280324038;
  if (!qword_280324038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324040, qword_26985E6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324038);
  }

  return result;
}

uint64_t sub_269755860(uint64_t (*a1)(void))
{
  a1();

  return sub_269855724();
}

unint64_t sub_2697558A4()
{
  result = qword_280324058;
  if (!qword_280324058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280324058);
  }

  return result;
}

uint64_t sub_2697558E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  v4 = OUTLINED_FUNCTION_50_0();
  v5(v4);
  return a2;
}

uint64_t sub_269755944(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_26975598C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[3] = &type metadata for CoreAnalyticsService;
  v22[4] = &xmmword_287A41610;
  v8 = type metadata accessor for BaseDialogProvider();
  v21[3] = v8;
  v21[4] = &off_287A3DBA0;
  v21[0] = a2;
  v19 = sub_269853264();
  v20 = MEMORY[0x277D5BD58];
  *&v18 = a4;
  type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v22, &type metadata for CoreAnalyticsService);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v21, v8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v9[5] = &type metadata for CoreAnalyticsService;
  v9[6] = &xmmword_287A41610;
  v9[15] = v8;
  v9[16] = &off_287A3DBA0;
  v9[12] = v14;
  sub_2696A73F8(a1, (v9 + 7));
  v9[17] = a3;
  sub_26968E5D4(&v18, (v9 + 18));
  type metadata accessor for LocUtil();
  v15 = swift_allocObject();
  sub_26968E5D4(a1, v15 + 16);
  v9[23] = v15;
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v9;
}

uint64_t OUTLINED_FUNCTION_15_14()
{

  return sub_269750C44(type metadata accessor for LiveService);
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{
  *(v1 - 128) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_53_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_269755CB0(uint64_t a1, void *a2)
{
  v34 = a2;
  v3 = sub_269852BE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2698548D4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = *(v2 + 176);
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = v14;
  if (sub_269792920())
  {

LABEL_4:
    if (qword_2803226E0 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v7, qword_28033D910);
    (*(v8 + 16))(v11, v16, v7);
    v17 = sub_2698548B4();
    v18 = sub_269854F14();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_269684000, v17, v18, "makeIntentExecutionBehavior: no eligible remote execution device found. Continue on local device.", v19, 2u);
      MEMORY[0x26D647170](v19, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    sub_269852C54();
    v20 = qword_2803224A0;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = qword_28033D700;
    type metadata accessor for PlayLiveServiceIntent();
    v22 = v21;
    v23 = v34;
    sub_269852BD4();
    v24 = sub_269852C44();
    (*(v4 + 8))(v6, v3);
    return v24;
  }

  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v7, qword_28033D910);
  (*(v8 + 16))(v13, v25, v7);
  v26 = v15;
  v27 = sub_2698548B4();
  v28 = sub_269854F14();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v14;
    v31 = v26;
    _os_log_impl(&dword_269684000, v27, v28, "makeIntentExecutionBehavior: handle on targetDevice: %@", v29, 0xCu);
    sub_2696CB05C(v30, &qword_280324D50, &qword_26985D530);
    MEMORY[0x26D647170](v30, -1, -1);
    MEMORY[0x26D647170](v29, -1, -1);
  }

  (*(v8 + 8))(v13, v7);
  sub_269852C54();
  v24 = sub_269852C34();

  return v24;
}

uint64_t sub_269756118(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_11(a1, a2);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_12();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v39 - v13;
  v15 = *(v2 + 424);
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  v17 = sub_269792920();
  if (v17)
  {

LABEL_4:
    if (qword_2803226E0 != -1)
    {
      v12 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    OUTLINED_FUNCTION_7_28(v12, qword_28033D910);
    v18(v3);
    v19 = sub_2698548B4();
    v20 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v20))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_34_5(&dword_269684000, v21, v22, "makeIntentExecutionBehavior: no eligible remote execution device found. Continue on local device.");
      OUTLINED_FUNCTION_10();
    }

    (*(v9 + 8))(v3, v7);
    sub_269852C54();
    v23 = qword_2803224A8;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = qword_28033D708;
    v25 = type metadata accessor for PlayLiveServiceIntent();
    v26 = v24;
    v27 = v39[1];
    OUTLINED_FUNCTION_17_12();
    sub_269852BD4();
    sub_269852C44();
    v28 = OUTLINED_FUNCTION_30_8();
    v29(v28);
    return v25;
  }

  if (qword_2803226E0 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  OUTLINED_FUNCTION_7_28(v17, qword_28033D910);
  v30(v14);
  v31 = v16;
  v32 = sub_2698548B4();
  v33 = sub_269854F14();

  if (os_log_type_enabled(v32, v33))
  {
    swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_25_7();
    *v5 = 138412290;
    *(v5 + 4) = v31;
    *v34 = v15;
    v35 = v31;
    OUTLINED_FUNCTION_13_16(&dword_269684000, v36, v37, "makeIntentExecutionBehavior: handle on targetDevice: %@");
    sub_2696CB05C(v34, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_31_6();
    OUTLINED_FUNCTION_12_1();
  }

  (*(v9 + 8))(v14, v7);
  sub_269852C54();
  v25 = sub_269852C34();

  return v25;
}

uint64_t sub_2697564F0(uint64_t a1, uint64_t a2, uint64_t *a3, void **a4, void (*a5)(void), uint64_t a6)
{
  v41[1] = a6;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v8 = OUTLINED_FUNCTION_26_11(a1, a2);
  OUTLINED_FUNCTION_8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_8();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v41 - v19;
  v21 = *(v6 + 16);
  if (!v21)
  {
    goto LABEL_4;
  }

  v22 = v21;
  if (sub_269792920())
  {

LABEL_4:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v23 = __swift_project_value_buffer(v12, qword_28033D910);
    (*(v14 + 16))(v18, v23, v12);
    v24 = sub_2698548B4();
    v25 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v25))
    {
      v26 = OUTLINED_FUNCTION_16_2();
      *v26 = 0;
      _os_log_impl(&dword_269684000, v24, v25, "makeIntentExecutionBehavior: no eligible remote execution device found. Continue on local device.", v26, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v14 + 8))(v18, v12);
    sub_269852C54();
    v27 = *v42;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = *v43;
    v44(0);
    v29 = v28;
    v30 = v45;
    OUTLINED_FUNCTION_17_12();
    sub_269852BD4();
    v31 = sub_269852C44();
    (*(v10 + 8))(v7, v8);
    return v31;
  }

  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v32 = __swift_project_value_buffer(v12, qword_28033D910);
  (*(v14 + 16))(v20, v32, v12);
  v33 = v22;
  v34 = sub_2698548B4();
  v35 = sub_269854F14();

  if (os_log_type_enabled(v34, v35))
  {
    swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_25_7();
    *v18 = 138412290;
    *(v18 + 4) = v33;
    *v36 = v21;
    v37 = v33;
    OUTLINED_FUNCTION_13_16(&dword_269684000, v38, v39, "makeIntentExecutionBehavior: handle on targetDevice: %@");
    sub_2696CB05C(v36, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_31_6();
    OUTLINED_FUNCTION_12_1();
  }

  (*(v14 + 8))(v20, v12);
  sub_269852C54();
  v31 = sub_269852C34();

  return v31;
}

uint64_t sub_2697568DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_11(a1, a2);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_12();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v39 - v13;
  v15 = *(v2 + 184);
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  v17 = sub_269792920();
  if (v17)
  {

LABEL_4:
    if (qword_2803226E0 != -1)
    {
      v12 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    OUTLINED_FUNCTION_7_28(v12, qword_28033D910);
    v18(v3);
    v19 = sub_2698548B4();
    v20 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v20))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_34_5(&dword_269684000, v21, v22, "makeIntentExecutionBehavior: no eligible remote execution device found. Continue on local device.");
      OUTLINED_FUNCTION_10();
    }

    (*(v9 + 8))(v3, v7);
    sub_269852C54();
    v23 = qword_2803224F0;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = qword_28033D750;
    v25 = type metadata accessor for WatchSportsEventIntent();
    v26 = v24;
    v27 = v39[1];
    OUTLINED_FUNCTION_17_12();
    sub_269852BD4();
    sub_269852C44();
    v28 = OUTLINED_FUNCTION_30_8();
    v29(v28);
    return v25;
  }

  if (qword_2803226E0 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  OUTLINED_FUNCTION_7_28(v17, qword_28033D910);
  v30(v14);
  v31 = v16;
  v32 = sub_2698548B4();
  v33 = sub_269854F14();

  if (os_log_type_enabled(v32, v33))
  {
    swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_25_7();
    *v5 = 138412290;
    *(v5 + 4) = v31;
    *v34 = v15;
    v35 = v31;
    OUTLINED_FUNCTION_13_16(&dword_269684000, v36, v37, "makeIntentExecutionBehavior: handle on targetDevice: %@");
    sub_2696CB05C(v34, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_31_6();
    OUTLINED_FUNCTION_12_1();
  }

  (*(v9 + 8))(v14, v7);
  sub_269852C54();
  v25 = sub_269852C34();

  return v25;
}

id sub_269756C44()
{
  if (qword_280322498 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D6F8;
  qword_28033D700 = qword_28033D6F8;

  return v1;
}

uint64_t sub_269756CA8()
{
  v0 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v6 = __swift_project_value_buffer(v0, qword_28033D910);
  (*(v2 + 16))(v5, v6, v0);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_16_2();
    *v9 = 0;
    _os_log_impl(&dword_269684000, v7, v8, "PlayLiveServiceRCHFlowStrategy#actionForInput called", v9, 2u);
    OUTLINED_FUNCTION_31_6();
  }

  (*(v2 + 8))(v5, v0);
  return sub_269853004();
}

uint64_t sub_269756E18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_269852324();
  v3[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v3[6] = v5;
  v3[7] = OUTLINED_FUNCTION_37_0();
  v3[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233C8, &unk_26985E990);
  OUTLINED_FUNCTION_8_9(v6);
  v3[9] = OUTLINED_FUNCTION_37_0();
  v3[10] = swift_task_alloc();
  v7 = sub_269852084();
  v3[11] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v3[12] = v8;
  v3[13] = OUTLINED_FUNCTION_37_0();
  v3[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A8, &unk_26985A8E8);
  OUTLINED_FUNCTION_8_9(v9);
  v3[15] = OUTLINED_FUNCTION_37_0();
  v3[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324088, &unk_26985E9A0);
  OUTLINED_FUNCTION_8_9(v10);
  v3[17] = OUTLINED_FUNCTION_37_0();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v11 = sub_269851EF4();
  v3[21] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v3[22] = v12;
  v3[23] = OUTLINED_FUNCTION_4_7();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v13);
  v3[24] = OUTLINED_FUNCTION_37_0();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v14 = sub_269853874();
  v3[28] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v3[29] = v15;
  v3[30] = OUTLINED_FUNCTION_4_7();
  v16 = type metadata accessor for MediaNLIntent(0);
  OUTLINED_FUNCTION_8_9(v16);
  v3[31] = OUTLINED_FUNCTION_4_7();
  v17 = sub_269853F44();
  v3[32] = v17;
  OUTLINED_FUNCTION_5_12(v17);
  v3[33] = v18;
  v3[34] = OUTLINED_FUNCTION_4_7();
  v19 = sub_2698538B4();
  v3[35] = v19;
  OUTLINED_FUNCTION_5_12(v19);
  v3[36] = v20;
  v3[37] = OUTLINED_FUNCTION_4_7();
  v21 = sub_2698548D4();
  v3[38] = v21;
  OUTLINED_FUNCTION_5_12(v21);
  v3[39] = v22;
  v3[40] = OUTLINED_FUNCTION_37_0();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269757218);
}

uint64_t sub_269757218()
{
  if (qword_2803226E0 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v1 = v0[45];
    v2 = v0[39];
    v3 = __swift_project_value_buffer(v0[38], qword_28033D910);
    v0[46] = v3;
    v4 = *(v2 + 16);
    v0[47] = v4;
    v0[48] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v194 = v3;
    v195 = v4;
    (v4)(v1);
    v5 = sub_2698548B4();
    v6 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v6))
    {
      v7 = OUTLINED_FUNCTION_16_2();
      *v7 = 0;
      _os_log_impl(&dword_269684000, v5, v6, "PlayLiveService.FlowStrategy.makeIntentFromParse() called", v7, 2u);
      OUTLINED_FUNCTION_12_1();
    }

    v8 = v0[45];
    v10 = v0[38];
    v9 = v0[39];
    v11 = v0[3];

    v12 = *(v9 + 8);
    v0[49] = v12;
    v12(v8, v10);
    v13 = v0[3];
    if (v11)
    {
      v14 = v0[3];
    }

    else
    {
      v14 = [objc_allocWithZone(type metadata accessor for PlayLiveServiceIntent()) init];
    }

    v0[50] = v14;
    v15 = v0[4];
    v16 = v13;
    sub_2696D3780();
    v17 = *(v15 + 176);
    v0[51] = v17;
    if (v17)
    {
      v18 = v0[4];
      sub_269694CBC();
      v19 = v17;
      v20 = sub_269855034();
      [v14 setIsRemoteExecution_];

      __swift_project_boxed_opaque_existential_1((v18 + 136), *(v18 + 160));
      sub_2697AD1E8();
      if (v21)
      {
        v22 = sub_269854A64();
      }

      else
      {
        v22 = 0;
      }

      [v14 setCrossDeviceRequestInitiator_];

      sub_269795600(v19);
    }

    (*(v0[36] + 16))(v0[37], v0[2], v0[35]);
    v23 = OUTLINED_FUNCTION_22_10();
    v25 = v24(v23);
    if (v25 == *MEMORY[0x277D5C128])
    {
      v26 = v0[37];
      v27 = v0[34];
      v29 = v0[32];
      v28 = v0[33];
      v30 = v0[31];
      (*(v0[36] + 96))(v26, v0[35]);
      (*(v28 + 32))(v27, v26, v29);
      (*(v28 + 16))(v30, v27, v29);
      sub_2697A22BC();
      sub_2696CC460(v30);
      (*(v28 + 8))(v27, v29);
      goto LABEL_14;
    }

    if (v25 != *MEMORY[0x277D5C140])
    {
      break;
    }

    v185 = v17;
    v189 = v14;
    v187 = v12;
    v44 = v0[37];
    v45 = v0[29];
    v46 = v0[30];
    v48 = v0[27];
    v47 = v0[28];
    v49 = v0[26];
    v50 = v0[22];
    v51 = v0[23];
    v52 = v0[21];
    (*(v0[36] + 96))(v44, v0[35]);
    (*(v45 + 32))(v46, v44, v47);
    sub_269853864();
    sub_2696D3C74();
    (*(v50 + 8))(v51, v52);
    sub_269759358(v48, v49, &qword_280323360, &unk_26985AB80);
    v53 = sub_269852474();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v53);
    v55 = v0[26];
    if (EnumTagSinglePayload == 1)
    {
      sub_2696CB05C(v0[26], &qword_280323360, &unk_26985AB80);
      v12 = v187;
      goto LABEL_60;
    }

    v72 = sub_269852464();
    OUTLINED_FUNCTION_3_14();
    (*(v73 + 8))(v55, v53);
    v74 = *(v72 + 16);
    if (!v74)
    {
LABEL_42:

LABEL_57:
      v106 = v0[16];
      v107 = v0[11];
      v108 = OUTLINED_FUNCTION_32_5();
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v107);
      v12 = v187;
      if (__swift_getEnumTagSinglePayload(v106, 1, v107) == 1)
      {
        sub_2696CB05C(v0[16], &qword_2803234A8, &unk_26985A8E8);
      }

      else
      {
        sub_269852014();
        v111 = OUTLINED_FUNCTION_22_10();
        v112(v111);
      }

LABEL_60:
      v113 = v0[19];
      v114 = v0[5];
      v115 = OUTLINED_FUNCTION_32_5();
      __swift_storeEnumTagSinglePayload(v115, v116, v117, v114);
      v118 = OUTLINED_FUNCTION_22_10();
      sub_269759358(v118, v119, v120, v121);
      if (__swift_getEnumTagSinglePayload(v113, 1, v114) != 1)
      {
        v137 = v0[29];
        v193 = v0[30];
        v139 = v0[27];
        v138 = v0[28];
        v140 = v0[20];
        v141 = v0[8];
        v143 = v0[5];
        v142 = v0[6];
        (*(v142 + 32))(v141, v0[19], v143);
        v144 = sub_269851F24();
        v14 = v189;
        sub_2697593BC(v144, v145, v189);
        (*(v142 + 8))(v141, v143);
        sub_2696CB05C(v140, &qword_280324088, &unk_26985E9A0);
        sub_2696CB05C(v139, &qword_280323360, &unk_26985AB80);
        (*(v137 + 8))(v193, v138);
        v17 = v185;
        goto LABEL_14;
      }

      v122 = v0[44];
      v123 = v0[38];
      sub_2696CB05C(v0[19], &qword_280324088, &unk_26985E9A0);
      v195(v122, v194, v123);
      v124 = sub_2698548B4();
      sub_269854F24();
      OUTLINED_FUNCTION_21_12();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = OUTLINED_FUNCTION_16_2();
        *v126 = 0;
        _os_log_impl(&dword_269684000, v124, v122, "Unable to get LiveServiceResult from VideoClientComponent", v126, 2u);
        OUTLINED_FUNCTION_12_1();
      }

      v127 = v0[44];
      v128 = v0[38];
      v129 = v0[27];
      v130 = v0[20];

      v187(v127, v128);
      sub_2696BAE9C();
      v131 = swift_allocError();
      OUTLINED_FUNCTION_6_25(v131, v132, 11);

      sub_2696CB05C(v130, &qword_280324088, &unk_26985E9A0);
      sub_2696CB05C(v129, &qword_280323360, &unk_26985AB80);
LABEL_64:
      v133 = OUTLINED_FUNCTION_22_10();
      v134(v133);
      goto LABEL_65;
    }

    v75 = 0;
    v76 = v0[12];
    v77 = v72 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v191 = *MEMORY[0x277D39390];
    while (v75 < *(v72 + 16))
    {
      v78 = v0[10];
      (*(v76 + 16))(v0[14], v77 + *(v76 + 72) * v75, v0[11]);
      sub_269852064();
      v79 = sub_269852024();
      if (__swift_getEnumTagSinglePayload(v78, 1, v79) == 1)
      {
        sub_2696CB05C(v0[10], &qword_2803233C8, &unk_26985E990);
      }

      else
      {
        OUTLINED_FUNCTION_31_8();
        v81 = v80;
        if ((*(v82 + 88))() == v191)
        {
          v101 = v0[16];
          v102 = v0[14];
          v103 = v0[11];
          v104 = v0[12];
          v105 = v0[10];

          (*(v81 + 8))(v105, v79);
          (*(v104 + 32))(v101, v102, v103);
          goto LABEL_57;
        }

        (*(v81 + 8))(v0[10], v79);
      }

      ++v75;
      (*(v76 + 8))(v0[14], v0[11]);
      if (v74 == v75)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_80:
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v65 = v0[37];
  if (v25 != *MEMORY[0x277D5C148])
  {
    sub_2696BAE9C();
    v83 = swift_allocError();
    OUTLINED_FUNCTION_6_25(v83, v84, 13);

    goto LABEL_64;
  }

  v66 = OUTLINED_FUNCTION_22_10();
  v67(v66);
  v68 = *v65;
  sub_2696D6C54();
  v190 = v14;
  if (v69)
  {
    v70 = v69;
    sub_269854544();

    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  v86 = v0[24];
  v85 = v0[25];
  v87 = sub_269852474();
  __swift_storeEnumTagSinglePayload(v85, v71, 1, v87);
  sub_269759358(v85, v86, &qword_280323360, &unk_26985AB80);
  v88 = __swift_getEnumTagSinglePayload(v86, 1, v87);
  v89 = v0[24];
  if (v88 == 1)
  {
    sub_2696CB05C(v0[24], &qword_280323360, &unk_26985AB80);
    goto LABEL_74;
  }

  v184 = v68;
  v186 = v17;
  v188 = v12;
  v90 = sub_269852464();
  OUTLINED_FUNCTION_3_14();
  result = (*(v91 + 8))(v89, v87);
  v92 = *(v90 + 16);
  if (!v92)
  {
LABEL_55:

    goto LABEL_70;
  }

  v93 = 0;
  v94 = v0[12];
  v95 = v90 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
  v192 = *MEMORY[0x277D39390];
  while (1)
  {
    if (v93 >= *(v90 + 16))
    {
      __break(1u);
      return result;
    }

    v96 = v0[9];
    (*(v94 + 16))(v0[13], v95 + *(v94 + 72) * v93, v0[11]);
    sub_269852064();
    v97 = sub_269852024();
    if (__swift_getEnumTagSinglePayload(v96, 1, v97) != 1)
    {
      break;
    }

    sub_2696CB05C(v0[9], &qword_2803233C8, &unk_26985E990);
LABEL_54:
    ++v93;
    result = (*(v94 + 8))(v0[13], v0[11]);
    if (v92 == v93)
    {
      goto LABEL_55;
    }
  }

  OUTLINED_FUNCTION_31_8();
  v99 = v98;
  if ((*(v100 + 88))() != v192)
  {
    (*(v99 + 8))(v0[9], v97);
    goto LABEL_54;
  }

  v146 = v0[15];
  v147 = v0[12];
  v148 = v0[13];
  v149 = v0[11];
  v150 = v0[9];

  (*(v99 + 8))(v150, v97);
  (*(v147 + 32))(v146, v148, v149);
LABEL_70:
  v151 = v0[15];
  v152 = v0[11];
  v153 = OUTLINED_FUNCTION_32_5();
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v152);
  v12 = v188;
  if (__swift_getEnumTagSinglePayload(v151, 1, v152) == 1)
  {
    sub_2696CB05C(v0[15], &qword_2803234A8, &unk_26985A8E8);
  }

  else
  {
    v156 = v0[15];
    v158 = v0[11];
    v157 = v0[12];
    sub_269852014();
    (*(v157 + 8))(v156, v158);
  }

  v68 = v184;
  v17 = v186;
LABEL_74:
  v160 = v0[17];
  v159 = v0[18];
  v161 = v0[5];
  v162 = OUTLINED_FUNCTION_32_5();
  __swift_storeEnumTagSinglePayload(v162, v163, v164, v161);
  sub_269759358(v159, v160, &qword_280324088, &unk_26985E9A0);
  if (__swift_getEnumTagSinglePayload(v160, 1, v161) == 1)
  {
    v165 = v0[43];
    v166 = v0[38];
    sub_2696CB05C(v0[17], &qword_280324088, &unk_26985E9A0);
    v195(v165, v194, v166);
    v167 = sub_2698548B4();
    sub_269854F24();
    OUTLINED_FUNCTION_21_12();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = OUTLINED_FUNCTION_16_2();
      *v169 = 0;
      _os_log_impl(&dword_269684000, v167, v165, "Unable to get LiveServiceResult from VideoClientComponent", v169, 2u);
      OUTLINED_FUNCTION_31_6();
    }

    v170 = v0[43];
    v171 = v0[38];
    v172 = v0[25];
    v173 = v0[18];

    v12(v170, v171);
    sub_2696BAE9C();
    v174 = swift_allocError();
    OUTLINED_FUNCTION_6_25(v174, v175, 11);

    sub_2696CB05C(v173, &qword_280324088, &unk_26985E9A0);
    sub_2696CB05C(v172, &qword_280323360, &unk_26985AB80);
LABEL_65:

    OUTLINED_FUNCTION_33_5();

    __asm { BRAA            X1, X16 }
  }

  v176 = v0[25];
  v177 = v0[18];
  v178 = v0[6];
  v179 = v0[7];
  v180 = v0[5];
  (*(v178 + 32))(v179, v0[17], v180);
  v181 = sub_269851F24();
  sub_2697593BC(v181, v182, v190);

  v183 = v180;
  v14 = v190;
  (*(v178 + 8))(v179, v183);
  sub_2696CB05C(v177, &qword_280324088, &unk_26985E9A0);
  sub_2696CB05C(v176, &qword_280323360, &unk_26985AB80);
LABEL_14:
  if (!v17)
  {
LABEL_26:
    v56 = OUTLINED_FUNCTION_4_21();
    v57(v56);
    v58 = sub_2698548B4();
    sub_269854F14();
    OUTLINED_FUNCTION_21_12();
    if (os_log_type_enabled(v58, v59))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_12_19(&dword_269684000, v60, v61, "Finished creating intent from parse");
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_1_22();

    v62 = OUTLINED_FUNCTION_18_13();
    (v17)(v62);

    OUTLINED_FUNCTION_9_18();
    OUTLINED_FUNCTION_33_5();

    __asm { BRAA            X2, X16 }
  }

  v31 = v17;
  if ((sub_269792920() & 1) != 0 || (sub_26974FA44(v14), (v0[52] = v32) == 0))
  {

    goto LABEL_26;
  }

  v195(v0[42], v194, v0[38]);
  v33 = sub_2698548B4();
  v34 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v34))
  {
    v35 = OUTLINED_FUNCTION_16_2();
    *v35 = 0;
    _os_log_impl(&dword_269684000, v33, v34, "Fetching local live service results", v35, 2u);
    OUTLINED_FUNCTION_31_6();
  }

  v36 = v0[42];
  v37 = v0[38];
  v38 = v0[4];

  v12(v36, v37);
  __swift_project_boxed_opaque_existential_1((v38 + 96), *(v38 + 120));
  v39 = swift_task_alloc();
  v0[53] = v39;
  *v39 = v0;
  v39[1] = sub_269758420;
  OUTLINED_FUNCTION_33_5();

  return sub_2697BEFBC(v40, v41);
}

uint64_t sub_269758420(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v4 + 432) = v1;

  if (v1)
  {
    v7 = sub_269758724;
  }

  else
  {
    *(v4 + 440) = a1;
    v7 = sub_269758564;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_269758564()
{
  v2 = *(v1 + 408);
  sub_269759420(*(v1 + 440), *(v1 + 400));

  v3 = OUTLINED_FUNCTION_4_21();
  v4(v3);
  v5 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_21_12();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_12_19(&dword_269684000, v7, v8, "Finished creating intent from parse");
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_19_9();
  v9 = OUTLINED_FUNCTION_18_13();
  v0(v9);

  v10 = OUTLINED_FUNCTION_9_18();

  return v11(v10);
}

uint64_t sub_269758724()
{
  (*(v0 + 376))(*(v0 + 328), *(v0 + 368), *(v0 + 304));
  v1 = sub_2698548B4();
  v2 = sub_269854F24();
  v3 = OUTLINED_FUNCTION_19_4(v2);
  v4 = *(v0 + 432);
  v5 = *(v0 + 408);
  v6 = *(v0 + 392);
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  if (v3)
  {
    v9 = OUTLINED_FUNCTION_16_2();
    *v9 = 0;
    _os_log_impl(&dword_269684000, v1, v2, "Error fetching local live service result, proceeding without them", v9, 2u);
    OUTLINED_FUNCTION_10();
  }

  v6(v7, v8);
  v10 = OUTLINED_FUNCTION_4_21();
  v11(v10);
  v12 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_21_12();
  if (os_log_type_enabled(v12, v13))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_12_19(&dword_269684000, v14, v15, "Finished creating intent from parse");
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_19_9();
  v16 = OUTLINED_FUNCTION_18_13();
  v8(v16);

  v17 = OUTLINED_FUNCTION_9_18();

  return v18(v17);
}

uint64_t sub_269758978()
{
  sub_269759494(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  return v0;
}

uint64_t sub_2697589B0()
{
  sub_269758978();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_269758A20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269758AC8;

  return sub_269756E18(a1, a2);
}

uint64_t sub_269758AC8(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_269758BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PlayLiveServiceFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_269758C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2697594E8;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_269758CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for PlayLiveServiceFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2697594E8;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_269758D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for PlayLiveServiceFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2697594E8;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_269758E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for PlayLiveServiceFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2697594E8;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_269758F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for PlayLiveServiceFlowStrategy();
  *v12 = v6;
  v12[1] = sub_269759010;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_269759010()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2697590FC(uint64_t a1, void *a2)
{
  v3 = sub_269755CB0(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_26975915C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for PlayLiveServiceFlowStrategy();
  *v12 = v6;
  v12[1] = sub_2697594E8;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2697592A0(uint64_t a1)
{
  result = sub_269759318(&qword_280324070, &unk_26985E870);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269759318(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayLiveServiceFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269759358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_14();
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_2697593BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setServiceNameSearch_];
}

void sub_269759420(uint64_t a1, void *a2)
{
  type metadata accessor for LiveService();
  v3 = sub_269854CA4();

  [a2 setLocalServiceResults_];
}

uint64_t OUTLINED_FUNCTION_5_24()
{

  return sub_2698548D4();
}

uint64_t OUTLINED_FUNCTION_6_25@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a3;
  *(a2 + 24) = 3;
  *(v3 - 96) = a1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_12_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void OUTLINED_FUNCTION_13_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_19_9()
{
  v4 = v0[13];
  *(v2 - 120) = v0[14];
  *(v2 - 112) = v4;
  v5 = v0[9];
  *(v2 - 104) = v0[10];
  *(v2 - 96) = v5;
  v6 = v0[7];
  *(v2 - 88) = v0[8];
  *(v2 - 80) = v6;
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1, uint64_t a2)
{
  *(v2 - 88) = a2;

  return sub_269852BE4();
}

void OUTLINED_FUNCTION_34_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id sub_269759764()
{
  if (qword_280322498 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D6F8;
  qword_28033D708 = qword_28033D6F8;

  return v1;
}

void *sub_2697597C8(uint64_t a1)
{
  v32 = a1;
  sub_269852C84();
  sub_2698538C4();
  v1 = type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  sub_2698546A4();
  v3 = sub_269854694();
  v4 = type metadata accessor for MoveToGroupDevicesProvider();
  v5 = swift_allocObject();
  sub_269854474();
  v6 = sub_269853264();
  swift_allocObject();
  v7 = sub_269853254();
  v51[3] = v1;
  v51[4] = &off_287A3DBA0;
  v51[0] = v2;
  v49 = sub_269854674();
  v50 = MEMORY[0x277D61F08];
  *&v48 = v3;
  v46 = &type metadata for CoreAnalyticsService;
  v47 = &xmmword_287A41610;
  v43 = v4;
  v44 = &off_287A40140;
  v42[0] = v5;
  v40 = v6;
  v41 = MEMORY[0x277D5BD58];
  *&v39 = v7;
  v37 = &type metadata for EncryptionProvider;
  v38 = &protocol witness table for EncryptionProvider;
  type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  v8 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v51, v1);
  OUTLINED_FUNCTION_3_20();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = *(v10 + 16);
  v31(&v30 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v15);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *(&v30 - v14);
  v20 = *v17;
  v35[3] = v1;
  v35[4] = &off_287A3DBA0;
  v35[0] = v19;
  v8[31] = &type metadata for CoreAnalyticsService;
  v8[32] = &xmmword_287A41610;
  v8[36] = v4;
  v8[37] = &off_287A40140;
  v8[33] = v20;
  sub_2696A73F8(v54, (v8 + 2));
  sub_2696A73F8(v53, (v8 + 7));
  sub_2696A73F8(v35, (v8 + 12));
  sub_2696A73F8(v35, v34);
  __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v21);
  v23 = (&v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  v33[3] = v1;
  v33[4] = &off_287A3DBA0;
  v33[0] = v25;
  type metadata accessor for VideoLiveTuneInDialogProvider();
  v26 = swift_allocObject();
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v33, v1);
  MEMORY[0x28223BE20](v27);
  v31(&v30 - v14);
  v28 = *(&v30 - v14);
  v26[5] = v1;
  v26[6] = &off_287A3DBA0;
  v26[2] = v28;
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v34);
  v8[17] = v26;
  v8[53] = v32;
  sub_26968E5D4(v54, (v8 + 18));
  sub_26968E5D4(&v48, (v8 + 23));
  sub_26968E5D4(&v52, (v8 + 38));
  sub_26968E5D4(&v39, (v8 + 43));
  sub_26968E5D4(&v36, (v8 + 48));
  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(v45);
  __swift_destroy_boxed_opaque_existential_0(v51);
  return v8;
}

uint64_t sub_269759C4C()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_8_9(v4);
  v1[5] = OUTLINED_FUNCTION_4_7();
  v5 = sub_269851C74();
  v1[6] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_4_7();
  v7 = sub_2698548D4();
  v1[9] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_269759D6C()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  __swift_project_value_buffer(v0[9], qword_28033D910);
  v1 = OUTLINED_FUNCTION_12_11();
  v2(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_269684000, v3, v4, "PlayLiveServiceHandleIntentFlowStrategy.makeIntentHandledResponse() called", v5, 2u);
    OUTLINED_FUNCTION_10();
  }

  v6 = OUTLINED_FUNCTION_22_3();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240A0, &unk_26985EB80);
  v8 = sub_2698534E4();
  sub_2696D1E04(v8, &selRef_punchoutUrl);
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = v0[5];
  v10 = v0[6];
  sub_269851C64();

  if (__swift_getEnumTagSinglePayload(v11, 1, v10) == 1)
  {
    sub_269698048(v0[5], &qword_280323030, &qword_26985BAE0);
LABEL_15:
    sub_2696BAE9C();
    v21 = swift_allocError();
    *v22 = 0xD000000000000017;
    v22[1] = 0x800000026987E890;
    OUTLINED_FUNCTION_31_9(v21, v22);
    OUTLINED_FUNCTION_30_9();

    OUTLINED_FUNCTION_7_7();

    return v23();
  }

  (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
  v12 = sub_269853504();
  v13 = [v12 liveService];

  if (!v13 || (v14 = [v13 isInstalled], v13, !v14))
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    goto LABEL_15;
  }

  v15 = v0[4];
  [v14 BOOLValue];

  v16 = *(v15 + 424);
  v0[12] = v16;
  if (v16)
  {
    v17 = v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[13] = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_21_13(v18);

    return sub_26975AA64();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[15] = v24;
    *v24 = v25;
    v26 = OUTLINED_FUNCTION_21_13(v24);

    return sub_26975A51C(v26, v27, v28, v29);
  }
}

uint64_t sub_26975A0FC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26975A1F8()
{
  OUTLINED_FUNCTION_8_5();

  v1 = OUTLINED_FUNCTION_25_8();
  v2(v1);

  OUTLINED_FUNCTION_4_17();

  return v3();
}

uint64_t sub_26975A280()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26975A37C()
{
  OUTLINED_FUNCTION_8_5();
  v0 = OUTLINED_FUNCTION_25_8();
  v1(v0);

  OUTLINED_FUNCTION_4_17();

  return v2();
}

uint64_t sub_26975A3FC()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_30_9();

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_26975A494()
{
  OUTLINED_FUNCTION_8_5();
  (*(v0[7] + 8))(v0[8], v0[6]);
  OUTLINED_FUNCTION_30_9();

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_26975A51C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 168) = a3;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26975A54C()
{
  v1 = *(v0 + 120);
  if (*(v0 + 168) == 1)
  {
    sub_26969329C(0, &qword_280323038, 0x277D479F0);
    v2 = sub_2696CD66C(1);
    v3 = sub_269851C24();
    [v2 setPunchOutUri_];

    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v4 = v2;
    sub_269853474();
    if (v5)
    {
      v6 = sub_269854A64();
    }

    else
    {
      v6 = 0;
    }

    [v4 setRefId_];

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v13 = OUTLINED_FUNCTION_35_0(v12);
    *(v13 + 16) = xmmword_2698590C0;
    *(v13 + 32) = v4;
    v14 = sub_2698538F4();
    OUTLINED_FUNCTION_43_2(v14, MEMORY[0x277D5C1D8]);
    sub_2698538E4();

    OUTLINED_FUNCTION_4_17();

    return v15();
  }

  else
  {
    sub_2696A73F8(v1 + 56, v0 + 16);
    sub_2696A73F8(v1 + 96, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240A0, &unk_26985EB80);
    v7 = sub_269853504();
    v8 = [v7 liveService];

    if (v8)
    {
      v9 = sub_2696D1E04(v8, &selRef_appName);
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    *(v0 + 128) = v11;
    v17 = sub_269853504();
    v18 = [v17 liveService];

    if (v18)
    {
      v19 = sub_2696D1E04(v18, &selRef_name);
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    *(v0 + 136) = v21;
    v22 = sub_269853504();
    v23 = [v22 liveService];

    if (v23)
    {
      sub_2696D1E04(v23, &selRef_appStoreUrl);
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    *(v0 + 144) = v25;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v0 + 152) = v26;
    *v26 = v27;
    v26[1] = sub_26975A89C;
    v28 = *(v0 + 96);

    return sub_2696B9F80(v28, v0 + 16, v0 + 56, 0, v9, v11, v19, v21);
  }
}

uint64_t sub_26975A89C()
{
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  v3[20] = v0;

  __swift_destroy_boxed_opaque_existential_0(v3 + 7);
  __swift_destroy_boxed_opaque_existential_0(v3 + 2);
  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_26975AA64()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 472) = v2;
  *(v1 + 480) = v0;
  *(v1 + 456) = v3;
  *(v1 + 464) = v4;
  *(v1 + 386) = v5;
  *(v1 + 448) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v7);
  *(v1 + 488) = OUTLINED_FUNCTION_4_7();
  v8 = sub_2698532A4();
  *(v1 + 496) = v8;
  OUTLINED_FUNCTION_5_12(v8);
  *(v1 + 504) = v9;
  *(v1 + 512) = OUTLINED_FUNCTION_4_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324098, &qword_26985EB78);
  OUTLINED_FUNCTION_8_9(v10);
  *(v1 + 520) = OUTLINED_FUNCTION_4_7();
  v11 = type metadata accessor for VideoDataModels.ButtonModel(0);
  *(v1 + 528) = v11;
  OUTLINED_FUNCTION_8_9(v11);
  *(v1 + 536) = OUTLINED_FUNCTION_4_7();
  v12 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v12);
  *(v1 + 544) = OUTLINED_FUNCTION_4_7();
  v13 = sub_269853634();
  *(v1 + 552) = v13;
  OUTLINED_FUNCTION_5_12(v13);
  *(v1 + 560) = v14;
  *(v1 + 568) = OUTLINED_FUNCTION_4_7();
  v15 = sub_2698548D4();
  *(v1 + 576) = v15;
  OUTLINED_FUNCTION_5_12(v15);
  *(v1 + 584) = v16;
  *(v1 + 592) = swift_task_alloc();
  *(v1 + 600) = swift_task_alloc();
  *(v1 + 608) = swift_task_alloc();
  *(v1 + 616) = swift_task_alloc();
  *(v1 + 624) = swift_task_alloc();
  *(v1 + 632) = swift_task_alloc();
  *(v1 + 640) = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_26975AC98()
{
  v119 = v0;
  if (*(v0 + 386) == 1)
  {
    sub_26969329C(0, &qword_280323038, 0x277D479F0);
    v1 = sub_2696CD66C(1);
    *(v0 + 648) = v1;
    v2 = sub_269851C24();
    [v1 setPunchOutUri_];

    *(v0 + 656) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240A0, &unk_26985EB80);
    v3 = sub_269853504();
    v4 = [v3 liveService];

    v5 = [v4 isRemoteResult];
    sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
    v6 = sub_269855034();
    v7 = v6;
    if (v5)
    {
      OUTLINED_FUNCTION_34_0();
      v8 = sub_269855064();

      if (v8)
      {
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10(&qword_2803226E0);
        }

        v9 = *(v0 + 640);
        OUTLINED_FUNCTION_19_10();
        v10 = __swift_project_value_buffer(v5, qword_28033D910);
        *(v0 + 664) = v10;
        v11 = v7[2];
        *(v0 + 672) = v11;
        *(v0 + 680) = (v7 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v11(v9, v10, v5);
        v12 = sub_2698548B4();
        v13 = sub_269854F14();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_269684000, v12, v13, "PlayLiveServiceHandleIntentStrategy.makeIntentHandledResponse() submitting appPunchout command to remote...", v14, 2u);
          OUTLINED_FUNCTION_10();
        }

        v15 = *(v0 + 584);
        v16 = *(v0 + 480);

        *(v0 + 688) = *(v15 + 8);
        v17 = OUTLINED_FUNCTION_34_0();
        v18(v17);
        __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
        sub_269854604();
        *(v0 + 696) = v19;
        v20 = swift_task_alloc();
        *(v0 + 704) = v20;
        sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
        *v20 = v0;
        v20[1] = sub_26975B8AC;
        OUTLINED_FUNCTION_69();

        return MEMORY[0x2821BB680](v21);
      }
    }

    else
    {
    }

    *(v0 + 840) = sub_269854614();
    *(v0 + 848) = v29;
    if (v29)
    {
      __swift_project_boxed_opaque_existential_1((*(v0 + 480) + 264), *(*(v0 + 480) + 288));
      v30 = swift_task_alloc();
      *(v0 + 856) = v30;
      *v30 = v0;
      v30[1] = sub_26975C760;
      OUTLINED_FUNCTION_69();

      return sub_269760410(v31, v32);
    }

    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v68 = *(v0 + 472);
    __swift_project_value_buffer(*(v0 + 576), qword_28033D910);
    v69 = OUTLINED_FUNCTION_12_11();
    v70(v69);
    v71 = v68;
    v72 = sub_2698548B4();
    v73 = sub_269854F24();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = *(v0 + 472);
      v71 = OUTLINED_FUNCTION_27_2();
      v75 = swift_slowAlloc();
      *v71 = 138412290;
      *(v71 + 1) = v74;
      *v75 = v74;
      v76 = v74;
      OUTLINED_FUNCTION_40_3(&dword_269684000, v77, v78, "mediaRouteIdentifier for DeviceUnit was nil %@");
      sub_269698048(v75, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_19_10();

    v79 = OUTLINED_FUNCTION_22_3();
    v80(v79);
    sub_2696BAE9C();
    v81 = swift_allocError();
    *v82 = 0xD000000000000014;
    v82[1] = 0x800000026987E870;
    OUTLINED_FUNCTION_31_9(v81, v82);
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    OUTLINED_FUNCTION_19_10();
    __swift_project_value_buffer(v71, qword_28033D910);
    v83 = OUTLINED_FUNCTION_11_4();
    v84(v83);
    v85 = v81;
    v86 = sub_2698548B4();
    v87 = sub_269854F04();

    v88 = os_log_type_enabled(v86, v87);
    v89 = *(v0 + 592);
    v90 = *(v0 + 584);
    v91 = *(v0 + 576);
    if (v88)
    {
      OUTLINED_FUNCTION_27_2();
      v92 = OUTLINED_FUNCTION_42_2();
      v118[0] = v92;
      *v89 = 136315138;
      *(v0 + 432) = v81;
      v93 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v94 = sub_269854AE4();
      v96 = sub_26974F520(v94, v95, v118);

      *(v89 + 4) = v96;
      OUTLINED_FUNCTION_14_2(&dword_269684000, v97, v98, "Error while setting airplay destination: %s");
      __swift_destroy_boxed_opaque_existential_0(v92);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v90 + 8))(v115, v91);
    }

    else
    {

      (*(v90 + 8))(v89, v91);
    }

    OUTLINED_FUNCTION_15_15();
    OUTLINED_FUNCTION_22_3();
    sub_269853474();
    if (v99)
    {
      v100 = sub_269854A64();
    }

    else
    {
      v100 = 0;
    }

    v101 = *(v0 + 648);
    v102 = OUTLINED_FUNCTION_12_11();
    [v102 v103];

    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v105 = OUTLINED_FUNCTION_35_0(v104);
    OUTLINED_FUNCTION_33_6(v105, xmmword_2698590C0);
    OUTLINED_FUNCTION_23_12();
    v107 = OUTLINED_FUNCTION_43_2(v106, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_29_8(v107, v108, v109, v110);

    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_20_12();

    OUTLINED_FUNCTION_4_17();
LABEL_46:
    OUTLINED_FUNCTION_69();

    __asm { BRAA            X1, X16 }
  }

  v23 = *(v0 + 480);
  sub_2696A73F8(v23 + 56, v0 + 72);
  sub_2696A73F8(v23 + 96, v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240A0, &unk_26985EB80);
  v24 = sub_269853504();
  v25 = [v24 liveService];

  if (v25)
  {
    v26 = sub_2696D1E04(v25, &selRef_appName);
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *(v0 + 872) = v28;
  v34 = sub_269853504();
  v35 = [v34 liveService];

  if (v35)
  {
    v36 = sub_2696D1E04(v35, &selRef_name);
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  *(v0 + 880) = v38;
  v39 = sub_269853504();
  v40 = [v39 liveService];

  if (v40)
  {
    sub_2696D1E04(v40, &selRef_appStoreUrl);
  }

  if (!v28)
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v58 = *(v0 + 608);
    v59 = *(v0 + 584);
    v60 = *(v0 + 576);
    v61 = __swift_project_value_buffer(v60, qword_28033D910);
    (*(v59 + 16))(v58, v61, v60);
    v62 = sub_2698548B4();
    v63 = sub_269854F24();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_269684000, v62, v63, "createInstallAppViews missing appName", v64, 2u);
      OUTLINED_FUNCTION_10();
    }

    v65 = OUTLINED_FUNCTION_34_0();
    v66(v65);
    sub_2696BAE9C();
    v117 = swift_allocError();
    *v67 = xmmword_2698590B0;
    OUTLINED_FUNCTION_31_9(v117, v67);

    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_35_7();

    OUTLINED_FUNCTION_7_7();
    goto LABEL_46;
  }

  sub_2696A73F8(v0 + 112, v0 + 152);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 152, *(v0 + 176));
  OUTLINED_FUNCTION_3_20();
  v42 = v41;
  v116 = v26;
  v43 = OUTLINED_FUNCTION_4_7();
  *(v0 + 888) = v43;
  (*(v42 + 16))();
  v44 = *v43;
  v45 = type metadata accessor for BaseDialogProvider();
  v114 = v38;
  *(v0 + 216) = v45;
  *(v0 + 224) = &off_287A3DBA0;
  *(v0 + 192) = v44;
  type metadata accessor for VideoLiveTuneInDialogProvider();
  inited = swift_initStackObject();
  *(v0 + 896) = inited;
  v47 = *(v0 + 216);
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 192, v47);
  OUTLINED_FUNCTION_3_20();
  v50 = v49;
  v51 = OUTLINED_FUNCTION_4_7();
  (*(v50 + 16))(v51, v48, v47);
  v52 = *v51;
  inited[5] = v45;
  inited[6] = &off_287A3DBA0;
  inited[2] = v52;
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));

  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  *(v0 + 392) = v116;
  *(v0 + 400) = v28;
  *(v0 + 408) = v36;
  *(v0 + 416) = v114;
  *(v0 + 424) = 1;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 904) = v53;
  *v53 = v54;
  v53[1] = sub_26975CDD8;
  OUTLINED_FUNCTION_69();

  return sub_2696C3DCC(v55, v56);
}

uint64_t sub_26975B8AC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 712) = v5;
  *(v3 + 720) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26975B9BC()
{
  v1 = *(v0 + 712);
  (*(v0 + 672))(*(v0 + 632), *(v0 + 664), *(v0 + 576));
  v2 = v1;
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 712);
    v6 = OUTLINED_FUNCTION_27_2();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    OUTLINED_FUNCTION_40_3(&dword_269684000, v8, v9, "PlayLiveServiceHandleIntentStrategy.makeIntentHandledResponse() submitToRemote completed with response: %@");
    sub_269698048(v7, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    v3 = *(v0 + 712);
  }

  v10 = *(v0 + 688);

  v11 = OUTLINED_FUNCTION_34_0();
  v10(v11);
  sub_269795A18(1);
  v12 = sub_269853504();
  v13 = [v12 liveService];

  if (!v13 || (v14 = sub_2696D1E04(v13, &selRef_name), !v15))
  {

    v14 = 0;
    v15 = 0xE000000000000000;
  }

  *(v0 + 736) = v15;
  *(v0 + 728) = v14;
  v16 = swift_task_alloc();
  *(v0 + 744) = v16;
  *v16 = v0;
  v16[1] = sub_26975BBCC;

  return sub_2697962EC();
}

uint64_t sub_26975BBCC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *(v1 + 344) = v3;
  *(v1 + 328) = v4;
  *(v1 + 336) = v5;
  *(v1 + 312) = v0;
  *(v1 + 320) = v6;
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v10 + 752) = v9;

  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_26975BCBC()
{
  OUTLINED_FUNCTION_2_7();
  *(v0 + 760) = v2;
  v3 = *(v0 + 736);
  *(v0 + 352) = *(v0 + 728);
  *(v0 + 360) = v3;
  *(v0 + 368) = v4;
  *(v0 + 376) = v2;
  *(v0 + 384) = v5 & 1;
  *(v0 + 385) = v6 & 1;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 768) = v7;
  *v7 = v8;
  v7[1] = sub_26975BDAC;

  return sub_2696C48C0(v0 + 352);
}

uint64_t sub_26975BDAC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 776) = v4;
  *(v2 + 784) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26975BEB4()
{
  OUTLINED_FUNCTION_8_5();
  sub_269852E64();
  sub_2698535C4();
  sub_269854614();
  *(v0 + 792) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 800) = v2;
  *v2 = v3;
  v2[1] = sub_26975BFA0;

  return sub_269796CBC();
}

uint64_t sub_26975BFA0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26975C0A0()
{
  v1 = v0[65];
  v2 = v0[60];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[66]) == 1)
  {
    v3 = v0[97];
    sub_269698048(v1, &qword_280324098, &qword_26985EB78);
    __swift_project_boxed_opaque_existential_1((v2 + 344), *(v2 + 368));
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v5 = OUTLINED_FUNCTION_35_0(v4);
    v0[103] = v5;
    *(v5 + 16) = xmmword_2698590C0;
    *(v5 + 32) = v3;
    v6 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[104] = v7;
    *v7 = v8;
    v7[1] = sub_26975C558;
    v9 = v0[56];

    return MEMORY[0x2821BB488](v9);
  }

  else
  {
    v10 = v0[97];
    v11 = v0[67];
    sub_26975DCA4(v1, v11);
    __swift_project_boxed_opaque_existential_1((v2 + 344), *(v2 + 368));
    v0[37] = type metadata accessor for VideoDataModels(0);
    v0[38] = sub_26975DD08(&qword_280323A28, 255, type metadata accessor for VideoDataModels, &protocol conformance descriptor for VideoDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 34);
    sub_269720A64(v11, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v14 = OUTLINED_FUNCTION_35_0(v13);
    v0[101] = v14;
    *(v14 + 16) = xmmword_2698590C0;
    *(v14 + 32) = v10;
    v15 = v10;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[102] = v16;
    *v16 = v17;
    v16[1] = sub_26975C344;
    v18 = v0[56];

    return MEMORY[0x2821BB478](v18);
  }
}

uint64_t sub_26975C344()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 272));
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26975C448()
{
  sub_269720AC8(*(v1 + 536));
  v4 = OUTLINED_FUNCTION_12_20();
  v5(v4);

  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_35_7();

  OUTLINED_FUNCTION_4_17();

  return v6();
}

uint64_t sub_26975C558()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26975C658(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_12_20();
  v5(v4);

  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_35_7();

  OUTLINED_FUNCTION_4_17();

  return v6();
}

uint64_t sub_26975C760()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v3 + 864) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26975C864()
{
  v31 = v1;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  OUTLINED_FUNCTION_19_10();
  __swift_project_value_buffer(v0, qword_28033D910);
  v2 = OUTLINED_FUNCTION_11_4();
  v3(v2);

  v4 = sub_2698548B4();
  v5 = sub_269854F04();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[106];
  if (v6)
  {
    v8 = v1[105];
    v9 = OUTLINED_FUNCTION_27_2();
    v10 = swift_slowAlloc();
    v30[0] = v10;
    *v9 = 136315138;
    v11 = sub_26974F520(v8, v7, v30);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_269684000, v4, v5, "AirPlaying from source device instead of playing from remote device: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v12 = OUTLINED_FUNCTION_22_3();
    v13(v12);
  }

  else
  {
    OUTLINED_FUNCTION_19_10();

    v14 = OUTLINED_FUNCTION_22_3();
    v15(v14);
  }

  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_22_3();
  sub_269853474();
  if (v16)
  {
    v17 = sub_269854A64();
  }

  else
  {
    v17 = 0;
  }

  v18 = v1[81];
  v19 = OUTLINED_FUNCTION_12_11();
  [v19 v20];

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v22 = OUTLINED_FUNCTION_35_0(v21);
  OUTLINED_FUNCTION_33_6(v22, xmmword_2698590C0);
  OUTLINED_FUNCTION_23_12();
  v24 = OUTLINED_FUNCTION_43_2(v23, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_29_8(v24, v25, v26, v27);

  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_20_12();

  OUTLINED_FUNCTION_4_17();

  return v28();
}

uint64_t sub_26975CB20()
{
  v35 = v1;
  v2 = v1[108];
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  OUTLINED_FUNCTION_19_10();
  __swift_project_value_buffer(v0, qword_28033D910);
  v3 = OUTLINED_FUNCTION_11_4();
  v4(v3);
  v5 = v2;
  v6 = sub_2698548B4();
  v7 = sub_269854F04();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[74];
  v10 = v1[73];
  v11 = v1[72];
  if (v8)
  {
    OUTLINED_FUNCTION_27_2();
    v12 = OUTLINED_FUNCTION_42_2();
    v34[0] = v12;
    *v9 = 136315138;
    v1[54] = v2;
    v13 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v14 = sub_269854AE4();
    v16 = sub_26974F520(v14, v15, v34);

    *(v9 + 4) = v16;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v17, v18, "Error while setting airplay destination: %s");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v10 + 8))(v33, v11);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_22_3();
  sub_269853474();
  if (v19)
  {
    v20 = sub_269854A64();
  }

  else
  {
    v20 = 0;
  }

  v21 = v1[81];
  v22 = OUTLINED_FUNCTION_12_11();
  [v22 v23];

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v25 = OUTLINED_FUNCTION_35_0(v24);
  OUTLINED_FUNCTION_33_6(v25, xmmword_2698590C0);
  OUTLINED_FUNCTION_23_12();
  v27 = OUTLINED_FUNCTION_43_2(v26, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_29_8(v27, v28, v29, v30);

  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_20_12();

  OUTLINED_FUNCTION_4_17();

  return v31();
}

uint64_t sub_26975CDD8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 912) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26975CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  v17 = v16[112];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v17 + 16));

  __swift_destroy_boxed_opaque_existential_0(v16 + 14);

  v27 = v16[114];
  __swift_destroy_boxed_opaque_existential_0(v16 + 9);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_20_12();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, v27, a14, a15, a16);
}

uint64_t sub_26975CFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  v17 = *(v16 + 896);
  v19 = *(v16 + 504);
  v18 = *(v16 + 512);
  v20 = *(v16 + 488);
  v37 = *(v16 + 496);
  v21 = *(v16 + 448);
  __swift_project_boxed_opaque_existential_1((v16 + 72), *(v16 + 96));
  sub_269852CA4();
  v22 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v22);
  v23 = sub_2698538F4();
  *(v16 + 248) = 0u;
  *(v16 + 264) = 0;
  *(v16 + 232) = 0u;
  v24 = MEMORY[0x277D5C1D8];
  v21[3] = v23;
  v21[4] = v24;
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_2698530B4();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v17 + 16));

  sub_269698048(v16 + 232, &qword_280323028, qword_26985AD20);
  sub_269698048(v20, &qword_280323010, &unk_26985B640);
  (*(v19 + 8))(v18, v37);
  __swift_destroy_boxed_opaque_existential_0((v16 + 112));

  __swift_destroy_boxed_opaque_existential_0((v16 + 72));
  OUTLINED_FUNCTION_0_32();
  v36 = v26;
  v38 = v25;
  v39 = *(v16 + 488);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_7_8();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v16 + 232, 0, v36, v38, v39, a14, a15, a16);
}

uint64_t sub_26975D208()
{
  v26 = v0;
  v1 = v0[90];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[75];
  v5 = v0[72];

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[90];
    v24 = v0[86];
    v10 = OUTLINED_FUNCTION_27_2();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    v0[55] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v13 = sub_269854AE4();
    v15 = sub_26974F520(v13, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_269684000, v7, v8, "PlayLiveServiceHandleIntentStrategy.makeIntentHandledResponse() submitToRemote() failed with error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v16 = OUTLINED_FUNCTION_22_3();
    v24(v16);
  }

  else
  {
    v17 = v0[86];

    v18 = OUTLINED_FUNCTION_22_3();
    v17(v18);
  }

  v19 = v0[90];
  v20 = v0[81];
  __swift_project_boxed_opaque_existential_1((v0[60] + 224), *(v0[60] + 248));
  sub_2697B426C();
  v21 = v19;
  sub_269795A18(0);

  swift_willThrow();
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_36_6();

  OUTLINED_FUNCTION_7_7();

  return v22();
}

uint64_t sub_26975D4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  v17 = *(v16 + 648);

  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_36_6();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_26975D598()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  sub_269759494(v0 + 144);
  __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  __swift_destroy_boxed_opaque_existential_0((v0 + 344));
  __swift_destroy_boxed_opaque_existential_0((v0 + 384));

  return v0;
}

uint64_t sub_26975D608()
{
  sub_26975D598();

  return MEMORY[0x2821FE8D8](v0, 432, 7);
}

uint64_t sub_26975D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_26975D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_26975D7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_26975D8AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_269759C4C();
}

uint64_t sub_26975D958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_26975DA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_26975DAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DA938;

  return MEMORY[0x2821B9C38](a1, a2, v9, a4);
}

uint64_t sub_26975DBA4(uint64_t a1, uint64_t a2)
{
  v3 = sub_269756118(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_26975DC04(uint64_t a1, uint64_t a2)
{
  result = sub_26975DD08(&qword_280324090, a2, type metadata accessor for PlayLiveServiceHandleIntentStrategy, &unk_26985EA78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26975DCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoDataModels.ButtonModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26975DD08(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id OUTLINED_FUNCTION_15_15()
{
  v1 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1((*(v0 + 480) + 16), *(*(v0 + 480) + 40));

  return v1;
}

uint64_t OUTLINED_FUNCTION_20_12()
{
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_2698538E4();
}

uint64_t OUTLINED_FUNCTION_30_9()
{
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_33_6(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return sub_2698538F4();
}

uint64_t OUTLINED_FUNCTION_35_7()
{
}

uint64_t OUTLINED_FUNCTION_36_6()
{
}

void OUTLINED_FUNCTION_40_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return swift_slowAlloc();
}

uint64_t *OUTLINED_FUNCTION_43_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

void *sub_26975DFA4()
{
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  v2 = sub_269853264();
  swift_allocObject();

  v3 = sub_269853254();
  v14[3] = v0;
  v14[4] = &off_287A3DBA0;
  v14[0] = v1;
  v12 = v2;
  v13 = MEMORY[0x277D5BD58];
  *&v11 = v3;
  type metadata accessor for PlayLiveServiceUnsupportedValueStrategy();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v14, v0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v4[5] = v0;
  v4[6] = &off_287A3DBA0;
  v4[2] = v9;
  sub_2696AE06C(&v11, (v4 + 7));
  __swift_destroy_boxed_opaque_existential_0(v14);

  return v4;
}

uint64_t sub_26975E110()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_269852EB4();
  v1[5] = swift_task_alloc();
  v4 = sub_269853634();
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v1[8] = swift_task_alloc();
  v5 = sub_2698548D4();
  v1[9] = v5;
  v1[10] = *(v5 - 8);
  v1[11] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26975E250()
{
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "PlayLiveService.UnsupportedValueStrategy.makeUnsupportedOutput() was called", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324050, &qword_26985E7A0);
  v11 = sub_2698536C4();
  v12 = [v11 unsupportedReason];

  v13 = PlayLiveServiceLiveServiceUnsupportedReason.init(rawValue:)(v12);
  v14 = v13;
  v16 = v15;
  if ((v15 & 1) != 0 || v13 != 1)
  {
    type metadata accessor for PlayLiveServiceIntent();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = sub_2696BBEF8(ObjCClassFromMetadata);
    if (v20)
    {
      v21 = result;
      v22 = v20;
      if (v16)
      {
        v23 = -1;
      }

      else
      {
        v23 = v14;
      }

      sub_2696BAE9C();
      swift_allocError();
      *v24 = v21;
      *(v24 + 8) = v22;
      *(v24 + 16) = v23;
      *(v24 + 24) = 2;
      swift_willThrow();

      OUTLINED_FUNCTION_7_7();

      return v25();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_26975E520;

    return sub_26977F2C4(0xD000000000000015, 0x800000026987DB70);
  }

  return result;
}

uint64_t sub_26975E520(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;

  if (v1)
  {

    OUTLINED_FUNCTION_7_7();

    return v8();
  }

  else
  {
    *(v5 + 104) = a1;
    v10 = OUTLINED_FUNCTION_3_16();

    return MEMORY[0x2822009F8](v10);
  }
}

uint64_t sub_26975E66C(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[4];
  sub_269852E64();
  sub_2698535C4();
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v4 = swift_allocObject();
  v1[14] = v4;
  *(v4 + 16) = xmmword_2698590C0;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = swift_task_alloc();
  v1[15] = v6;
  *v6 = v1;
  v6[1] = sub_26975E7B0;
  v7 = v1[2];

  return MEMORY[0x2821BB488](v7);
}

uint64_t sub_26975E7B0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26975E8B0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_26975E95C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_26975E984()
{
  OUTLINED_FUNCTION_2_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324050, &qword_26985E7A0);
  v1 = sub_2698536B4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26975E9F8()
{
  sub_2696D1E70(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_26975EA5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_26975E110();
}

uint64_t sub_26975EB08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26974872C;

  return sub_26975E95C(a1);
}

uint64_t sub_26975EB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayLiveServiceUnsupportedValueStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

uint64_t sub_26975EC60()
{
  v0 = sub_269851BE4();
  v7 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  sub_269854EB4();
  sub_2696B6FF4();
  while (1)
  {
    sub_2698550E4();
    if (!v12)
    {
      break;
    }

    sub_269694FFC(&v11, v10);
    sub_2696B6F94(v10, v8);
    sub_26969329C(0, &qword_2815718D0, 0x277CC1E70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
    }

    v4 = __swift_destroy_boxed_opaque_existential_0(v10);
    if (v9)
    {
      MEMORY[0x26D645B90](v4);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269854CD4();
      }

      sub_269854CF4();
      v3 = v13;
    }
  }

  (*(v7 + 8))(v2, v0);
  return v3;
}

uint64_t sub_26975EE38(void *a1, uint64_t a2)
{
  v3 = v2;
  v152 = sub_2698548D4();
  v6 = *(v152 - 8);
  v7 = MEMORY[0x28223BE20](v152);
  v9 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v143 = &v141 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v142 = &v141 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v141 - v14;
  v16 = type metadata accessor for SignalRecordingContext(0);
  MEMORY[0x28223BE20](v16);
  v150 = (&v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = [a1 isRemoteExecution];
  v19 = sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  v20 = sub_269855034();
  v21 = v20;
  if (v18)
  {
    v22 = sub_269855064();

    if (v22)
    {
LABEL_26:
      if (qword_2803226E8 != -1)
      {
LABEL_96:
        OUTLINED_FUNCTION_0_30(&qword_2803226E8);
      }

      v46 = v152;
      __swift_project_value_buffer(v152, qword_28033D928);
      OUTLINED_FUNCTION_6_11();
      v47(v9);
      v48 = sub_2698548B4();
      v49 = sub_269854F14();
      if (os_log_type_enabled(v48, v49))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_7(&dword_269684000, v50, v51, "Not disambiguating with 3p apps due to preconditions");
        OUTLINED_FUNCTION_18_7();
      }

      (*(v6 + 1))(v9, v46);
      return 0;
    }
  }

  else
  {
  }

  v146 = v16;
  v148 = v9;
  v141 = v15;
  v151 = v19;
  v149 = v6;
  v147 = v3;
  sub_2696A73F8(v3 + 16, v158);
  v145 = __swift_project_boxed_opaque_existential_1(v158, v158[3]);
  v23 = sub_26975004C();
  v24 = 0;
  v9 = (a2 & 0xFFFFFFFFFFFFFF8);
  v25 = MEMORY[0x277D84F90];
  v6 = &off_279C6F000;
  while (v23 != v24)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x26D646120](v24, a2);
    }

    else
    {
      if (v24 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      v26 = *(a2 + 8 * v24 + 32);
    }

    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v28 = v26;
    v29 = [v28 umcId];
    if (v29)
    {
      v30 = v29;
      v31 = sub_269854A94();
      v144 = v32;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977BCE4();
        v25 = v37;
      }

      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_9(v33);
        sub_26977BCE4();
        v25 = v38;
      }

      *(v25 + 16) = v34 + 1;
      v35 = v25 + 16 * v34;
      v36 = v144;
      *(v35 + 32) = v31;
      *(v35 + 40) = v36;
      v24 = v27;
    }

    else
    {

      ++v24;
    }
  }

  v39 = v150;
  *v150 = v25;
  swift_storeEnumTagMultiPayload();
  sub_2697F9524();
  v41 = v40;
  sub_2697602B0(v39);
  __swift_destroy_boxed_opaque_existential_0(v158);
  v6 = v149;
  v9 = v148;
  v42 = v147;
  if ((v41 & 1) == 0)
  {
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1((v147 + 56), *(v147 + 80));
  sub_2697EAC90(v156);
  sub_26976030C(v156);
  v43 = v157;
  if (v157 < 1)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v44 = sub_26975004C();
  if (v44 < 1 || v43 < v44)
  {
    goto LABEL_26;
  }

  sub_26975FBAC();
  v55 = v54;
  __swift_project_boxed_opaque_existential_1((v42 + 56), *(v42 + 80));
  sub_2697EAC90(v158);
  sub_26976030C(v158);
  v42 = v159;
  if (v159 < 1)
  {
    goto LABEL_99;
  }

  v56 = sub_26975004C();
  v57 = v56 < 1 || v42 < v56;
  v58 = v55;
  if (v57)
  {
    if (qword_2803226E8 == -1)
    {
LABEL_39:
      v59 = v152;
      __swift_project_value_buffer(v152, qword_28033D928);
      OUTLINED_FUNCTION_6_11();
      v60 = v143;
      v61(v143);

      v62 = sub_2698548B4();
      v63 = sub_269854F14();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v153 = v65;
        *v64 = 134218242;
        v66 = sub_26975004C();

        *(v64 + 4) = v66;

        *(v64 + 12) = 2080;
        v67 = sub_269760360(1, v42);
        v69 = sub_26974F520(v67, v68, &v153);

        *(v64 + 14) = v69;
        _os_log_impl(&dword_269684000, v62, v63, "Number of third party play handling video apps %ld is not within %s", v64, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x26D647170](v65, -1, -1);
        OUTLINED_FUNCTION_18_7();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (*(v6 + 1))(v60, v59);
      return 0;
    }

LABEL_100:
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    goto LABEL_39;
  }

  v70 = MEMORY[0x277D84F90];
  v153 = MEMORY[0x277D84F90];
  v71 = sub_26975004C();
  v72 = 0;
  v73 = v58 & 0xC000000000000001;
  v6 = (v58 & 0xFFFFFFFFFFFFFF8);
  v150 = v70;
  v148 = v58;
  while (v71 != v72)
  {
    if (v73)
    {
      v74 = MEMORY[0x26D646120](v72, v58);
    }

    else
    {
      if (v72 >= *(v6 + 2))
      {
        goto LABEL_94;
      }

      v74 = *(v58 + 8 * v72 + 32);
    }

    v75 = v74;
    v9 = (v72 + 1);
    if (__OFADD__(v72, 1))
    {
      goto LABEL_93;
    }

    v76 = sub_2697AE148(v74);
    if (v77)
    {
      v78 = v76;
      v79 = v77;
      v150 = type metadata accessor for Content();

      v80 = [v75 localizedName];
      v147 = sub_269854A94();
      v82 = v81;

      v83 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v84 = sub_2697C01B0(v78, v79, v147, v82);
      sub_26976024C(v78, v79, v84);
      v85 = [v75 localizedName];
      v86 = sub_269854A94();
      v88 = v87;

      sub_2696D1DEC(v86, v88, v84);
      MEMORY[0x26D645B90]();
      v89 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v89 >> 1)
      {
        OUTLINED_FUNCTION_9(v89);
        sub_269854CD4();
      }

      OUTLINED_FUNCTION_5_25();
      sub_269854CF4();
      v150 = v153;
      v72 = v9;
      v58 = v148;
    }

    else
    {

      ++v72;
    }
  }

  v90 = v150;
  if (!sub_26975004C())
  {

    v42 = v149;
    if (qword_2803226E8 == -1)
    {
LABEL_74:
      v115 = v152;
      v116 = __swift_project_value_buffer(v152, qword_28033D928);
      v117 = v142;
      (*(v42 + 16))(v142, v116, v115);
      v118 = sub_2698548B4();
      v119 = sub_269854F14();
      if (os_log_type_enabled(v118, v119))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_7(&dword_269684000, v120, v121, "thirdPartyAppContents is empty");
        OUTLINED_FUNCTION_18_7();
      }

      (*(v42 + 8))(v117, v115);
      return 0;
    }

LABEL_103:
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    goto LABEL_74;
  }

  v91 = sub_26975004C();
  v92 = v149;
  if (v91)
  {
    v42 = v91;
    v155 = MEMORY[0x277D84F90];
    sub_269814F0C(0, v91 & ~(v91 >> 63), 0);
    if ((v42 & 0x8000000000000000) == 0)
    {
      v93 = 0;
      v94 = v155;
      v147 = v90 & 0xC000000000000001;
      v146 = v90 & 0xFFFFFFFFFFFFFF8;
      v6 = v42;
      while (1)
      {
        v9 = (v93 + 1);
        if (__OFADD__(v93, 1))
        {
          goto LABEL_95;
        }

        if (v147)
        {
          v95 = MEMORY[0x26D646120](v93, v90);
        }

        else
        {
          if (v93 >= *(v146 + 16))
          {
            __break(1u);
            goto LABEL_98;
          }

          v95 = *(v90 + 8 * v93 + 32);
        }

        v96 = v95;
        v153 = 40;
        v154 = 0xE100000000000000;
        v97 = sub_26977DBD8(v95);
        if (v98)
        {
          v99 = v98;
        }

        else
        {
          v97 = 7104878;
          v99 = 0xE300000000000000;
        }

        MEMORY[0x26D645A60](v97, v99);

        MEMORY[0x26D645A60](8236, 0xE200000000000000);
        v100 = sub_26977E46C(v96);
        if (v101)
        {
          v102 = v101;
        }

        else
        {
          v100 = 7104878;
          v102 = 0xE300000000000000;
        }

        MEMORY[0x26D645A60](v100, v102);

        MEMORY[0x26D645A60](41, 0xE100000000000000);

        v42 = v153;
        v103 = v154;
        v155 = v94;
        v105 = *(v94 + 16);
        v104 = *(v94 + 24);
        if (v105 >= v104 >> 1)
        {
          v107 = OUTLINED_FUNCTION_9(v104);
          sub_269814F0C(v107, v105 + 1, 1);
          v94 = v155;
        }

        *(v94 + 16) = v105 + 1;
        v106 = v94 + 16 * v105;
        *(v106 + 32) = v42;
        *(v106 + 40) = v103;
        ++v93;
        v90 = v150;
        if (v9 == v6)
        {

          v92 = v149;
          goto LABEL_78;
        }
      }
    }

    __break(1u);
    goto LABEL_102;
  }

  v94 = MEMORY[0x277D84F90];
LABEL_78:
  sub_2697F00A8(v94, v108, v109, v110, v111, v112, v113, v114, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156[0], v156[1], v156[2]);
  v123 = v122;
  v42 = v124;

  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v125 = v152;
  __swift_project_value_buffer(v152, qword_28033D928);
  OUTLINED_FUNCTION_6_11();
  v126 = v141;
  v127(v141);

  v128 = sub_2698548B4();
  v129 = sub_269854F14();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v153 = v131;
    *v130 = 136315138;
    v132 = sub_26974F520(v123, v42, &v153);

    *(v130 + 4) = v132;
    _os_log_impl(&dword_269684000, v128, v129, "thirdPartyAppContents: %s", v130, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v131);
    MEMORY[0x26D647170](v131, -1, -1);
    MEMORY[0x26D647170](v130, -1, -1);

    (*(v92 + 8))(v126, v152);
  }

  else
  {

    (*(v92 + 8))(v126, v125);
  }

  v153 = v150;

  sub_26980BB94(v133);
  v52 = v153;
  v134 = sub_26975004C();
  if (v134)
  {
    v135 = v134;
    if (v134 < 1)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v136 = 0;
    do
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v137 = OUTLINED_FUNCTION_5_25();
        v138 = MEMORY[0x26D646120](v137);
      }

      else
      {
        v138 = *(v52 + 8 * v136 + 32);
      }

      v139 = v138;
      ++v136;
      v140 = sub_269855034();
      [v139 setAppDisambiguation_];
    }

    while (v135 != v136);
  }

  return v52;
}

void sub_26975FBAC()
{
  v0 = [objc_opt_self() enumeratorWithOptions_];
  v1 = sub_26975EC60();

  v2 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  v3 = sub_26975004C();
  for (i = 0; v3 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = OUTLINED_FUNCTION_5_25();
      v5 = MEMORY[0x26D646120](v7);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v5 = *(v1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
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
      __break(1u);
      return;
    }

    if ([v5 developerType] == 1)
    {
    }

    else
    {
      sub_269855284();
      OUTLINED_FUNCTION_3_27();
      sub_2698552B4();
      OUTLINED_FUNCTION_3_27();
      sub_2698552C4();
      sub_269855294();
    }
  }

  v8 = sub_26975004C();
  for (j = 0; v8 != j; ++j)
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v12 = OUTLINED_FUNCTION_5_25();
      v10 = MEMORY[0x26D646120](v12);
    }

    else
    {
      if (j >= *(v49 + 16))
      {
        goto LABEL_65;
      }

      v10 = *(v49 + 8 * j + 32);
    }

    v11 = v10;
    if (__OFADD__(j, 1))
    {
      goto LABEL_64;
    }

    if ([v10 appProtectionHidden])
    {
    }

    else
    {
      sub_269855284();
      OUTLINED_FUNCTION_3_27();
      sub_2698552B4();
      OUTLINED_FUNCTION_3_27();
      sub_2698552C4();
      sub_269855294();
    }
  }

  v13 = sub_26975004C();
  v14 = 0;
  v47 = MEMORY[0x277D84F90];
  while (v13 != v14)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D646120](v14, v2);
    }

    else
    {
      if (v14 >= *(v2 + 16))
      {
        goto LABEL_67;
      }

      v15 = *(v2 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_66;
    }

    v17 = [objc_opt_self() appInfoWithApplicationRecord_];
    if (v17)
    {
      v18 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977CD70();
        v47 = v22;
      }

      v20 = *(v47 + 16);
      v19 = *(v47 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_9(v19);
        sub_26977CD70();
        v47 = v23;
      }

      *(v47 + 16) = v20 + 1;
      v21 = v47 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      ++v14;
    }

    else
    {

      ++v14;
    }
  }

  v24 = 0;
  v46 = *(v47 + 16);
  v25 = MEMORY[0x277D837D0];
  v45 = MEMORY[0x277D84F90];
LABEL_38:
  while (v24 != v46)
  {
    if (v24 >= *(v47 + 16))
    {
      goto LABEL_68;
    }

    v48 = *(v47 + 32 + 16 * v24++);
    v26 = v48;
    v27 = *(&v48 + 1);
    v28 = [v27 supportedIntents];
    v29 = sub_269854E44();

    if (*(v29 + 16))
    {
      v30 = v25;
      sub_269855674();
      sub_269854B34();
      v31 = sub_2698556C4();
      v32 = ~(-1 << *(v29 + 32));
      do
      {
        v33 = v31 & v32;
        if (((*(v29 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
        {

          v25 = v30;
          goto LABEL_38;
        }

        v34 = (*(v29 + 48) + 16 * v33);
        if (*v34 == 0xD000000000000011 && 0x800000026987B840 == v34[1])
        {
          break;
        }

        v36 = sub_269855584();
        v31 = v33 + 1;
      }

      while ((v36 & 1) == 0);

      v37 = [v27 supportedMediaCategories];
      v25 = v30;
      v38 = sub_269854E44();

      LOBYTE(v37) = sub_269807CB4(0xD000000000000014, 0x800000026987B820, v38);

      if (v37)
      {
        v39 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_269815324(0, *(v45 + 16) + 1, 1);
          v39 = v45;
        }

        v41 = *(v39 + 16);
        v40 = *(v39 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_269815324((v40 > 1), v41 + 1, 1);
          v39 = v45;
        }

        *(v39 + 16) = v41 + 1;
        v45 = v39;
        *(v39 + 16 * v41 + 32) = v48;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v42 = *(v45 + 16);
  if (v42)
  {
    sub_2698552A4();
    v43 = 32;
    do
    {
      v44 = *(v45 + v43);
      sub_269855284();
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v43 += 16;
      --v42;
    }

    while (v42);
  }
}

uint64_t sub_2697601E8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void sub_26976024C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setAppBundleIdentifier_];
}

uint64_t sub_2697602B0(uint64_t a1)
{
  v2 = type metadata accessor for SignalRecordingContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269760360(uint64_t a1, uint64_t a2)
{
  sub_2698552D4();
  MEMORY[0x26D645A60](3026478, 0xE300000000000000);
  sub_2698552D4();
  return 0;
}

uint64_t sub_269760410(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2698548D4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697604D0);
}

uint64_t sub_2697604D0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240A8, &qword_26985ED58);
  *v4 = v0;
  v4[1] = sub_2697605D8;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000010, 0x800000026987E970, sub_269760D0C, v3, v5);
}

uint64_t sub_2697605D8()
{

  return MEMORY[0x2822009F8](sub_2697606F0);
}

uint64_t sub_2697606F0()
{
  v28 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = qword_2803226E0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    v7 = __swift_project_value_buffer(v6, qword_28033D910);
    (*(v5 + 16))(v4, v7, v6);
    v8 = v3;

    v9 = sub_2698548B4();
    v10 = sub_269854F24();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[6];
    if (v11)
    {
      v16 = v0[4];
      v15 = v0[5];
      v26 = v0[8];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_26974F520(v16, v15, v27);
      *(v17 + 12) = 2080;
      v0[3] = v8;
      type metadata accessor for CFError(0);
      v19 = v8;
      v20 = sub_269854AE4();
      v22 = sub_26974F520(v20, v21, v27);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_269684000, v9, v10, "Error adding output device %s to group: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D647170](v18, -1, -1);
      MEMORY[0x26D647170](v17, -1, -1);

      (*(v12 + 8))(v26, v14);
    }

    else
    {

      (*(v12 + 8))(v13, v14);
    }

    type metadata accessor for CFError(0);
    sub_269760D14();
    swift_allocError();
    *v24 = v8;
    swift_willThrow();

    v23 = v0[1];
  }

  else
  {

    v23 = v0[1];
  }

  return v23();
}

void sub_26976099C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240B8, qword_26985ED60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_269857710;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;

  v11 = sub_269854CA4();

  v12 = sub_269854A64();
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v9, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_269760D6C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_269760DE8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269760C7C;
  aBlock[3] = &block_descriptor_12;
  v16 = _Block_copy(aBlock);

  MRAVEndpointMoveOutputGroupToDevicesFromSource();
  _Block_release(v16);
}

void sub_269760C7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t sub_269760D14()
{
  result = qword_2803240B0;
  if (!qword_2803240B0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803240B0);
  }

  return result;
}

uint64_t sub_269760D6C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240B8, qword_26985ED60);

  return sub_269760BF0(a1);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_269760E08()
{
  result = [objc_allocWithZone(type metadata accessor for PlayVideoIntentHandler()) init];
  qword_28033D710 = result;
  return result;
}

uint64_t sub_269760E3C(uint64_t a1)
{
  v152 = a1;
  v146 = sub_269852474();
  OUTLINED_FUNCTION_8();
  v134 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v4 - v3);
  sub_269851F04();
  OUTLINED_FUNCTION_8();
  v149 = v6;
  v150 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v128 = v8 - v7;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F40, &unk_26985DE30);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v10);
  v142 = &v125 - v11;
  v133 = sub_2698523C4();
  OUTLINED_FUNCTION_8();
  v132 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v15 - v14);
  sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v137 = v17;
  v138 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v136 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v125 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F48, qword_26985DE40);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_23_3();
  v141 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_23_3();
  v147 = v29;
  MEMORY[0x28223BE20](v30);
  v139 = &v125 - v31;
  v151 = sub_269853874();
  OUTLINED_FUNCTION_8();
  v140 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v145 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v125 - v37;
  sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v143 = v40;
  v144 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_24_3();
  v135 = v41;
  MEMORY[0x28223BE20](v42);
  v44 = OUTLINED_FUNCTION_15_1(&v125 - v43);
  v45 = type metadata accessor for MediaNLIntent(v44);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_1();
  v49 = v48 - v47;
  v50 = sub_269853F44();
  OUTLINED_FUNCTION_8();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_1();
  v56 = v55 - v54;
  v57 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_1();
  v63 = (v62 - v61);
  (*(v59 + 16))(v62 - v61, v152, v57);
  v64 = (*(v59 + 88))(v63, v57);
  if (v64 != *MEMORY[0x277D5C128])
  {
    if (v64 == *MEMORY[0x277D5C140])
    {
      v78 = OUTLINED_FUNCTION_6_26();
      v79(v78);
      v80 = v140;
      v81 = v145;
      (*(v140 + 32))(v145, v63, v151);
      v82 = v136;
      sub_269853864();
      sub_2696D3C74();
      (*(v137 + 8))(v82, v138);
      v83 = v146;
      if (__swift_getEnumTagSinglePayload(v22, 1, v146) == 1)
      {
        sub_26969B0C0(v22, &qword_280323360, &unk_26985AB80);
        v84 = 1;
        v85 = v149;
        v86 = v150;
        v87 = v141;
        v88 = v142;
        v89 = v139;
      }

      else
      {
        v104 = v131;
        sub_269852424();
        (*(v134 + 8))(v22, v83);
        v89 = v139;
        sub_2698523A4();
        (*(v132 + 8))(v104, v133);
        v84 = 0;
        v85 = v149;
        v86 = v150;
        v87 = v141;
        v88 = v142;
      }

      v105 = v147;
      __swift_storeEnumTagSinglePayload(v89, v84, 1, v86);
      (*(v85 + 104))(v105, *MEMORY[0x277D39200], v86);
      __swift_storeEnumTagSinglePayload(v105, 0, 1, v86);
      v106 = *(v148 + 48);
      sub_269740BE4(v89, v88);
      sub_269740BE4(v105, v88 + v106);
      if (__swift_getEnumTagSinglePayload(v88, 1, v86) == 1)
      {
        OUTLINED_FUNCTION_7_27(v105);
        OUTLINED_FUNCTION_7_27(v89);
        (*(v80 + 8))(v81, v151);
        if (__swift_getEnumTagSinglePayload(v88 + v106, 1, v86) == 1)
        {
          v100 = &qword_280323F48;
          v101 = qword_26985DE40;
          v102 = v88;
          goto LABEL_46;
        }

        goto LABEL_38;
      }

      sub_269740BE4(v88, v87);
      if (__swift_getEnumTagSinglePayload(v88 + v106, 1, v86) == 1)
      {
        OUTLINED_FUNCTION_7_27(v147);
        OUTLINED_FUNCTION_7_27(v89);
        (*(v80 + 8))(v81, v151);
        (*(v85 + 8))(v87, v86);
LABEL_38:
        v107 = v88;
LABEL_51:
        sub_26969B0C0(v107, &qword_280323F40, &unk_26985DE30);
        goto LABEL_52;
      }

      v108 = v88 + v106;
      v109 = v128;
      (*(v85 + 32))(v128, v108, v86);
      OUTLINED_FUNCTION_2_21();
      sub_269761E88(v110, v111, MEMORY[0x277D39220]);
      v112 = sub_269854A54();
      v113 = v89;
      v114 = *(v85 + 8);
      v114(v109, v86);
      OUTLINED_FUNCTION_26_1(v147);
      OUTLINED_FUNCTION_26_1(v113);
      (*(v80 + 8))(v145, v151);
      v114(v87, v86);
      v115 = v88;
LABEL_54:
      OUTLINED_FUNCTION_26_1(v115);
      return v112 & 1;
    }

    if (v64 != *MEMORY[0x277D5C148])
    {
      (*(v59 + 8))(v63, v57);
      goto LABEL_52;
    }

    v90 = OUTLINED_FUNCTION_6_26();
    v91(v90);
    v92 = *v63;
    sub_2696D6C54();
    if (v93)
    {
      v94 = v93;
      v95 = v127;
      sub_269854544();

      v96 = v131;
      sub_269852424();
      (*(v134 + 8))(v95, v146);
      v97 = v130;
      sub_2698523A4();
      (*(v132 + 8))(v96, v133);
      OUTLINED_FUNCTION_10_17();
    }

    else
    {
      OUTLINED_FUNCTION_10_17();
      v97 = v130;
    }

    v116 = v129;
    __swift_storeEnumTagSinglePayload(v97, v98, 1, v38);
    (*(v50 + 104))(v116, *MEMORY[0x277D39200], v38);
    __swift_storeEnumTagSinglePayload(v116, 0, 1, v38);
    v117 = *(v148 + 48);
    sub_269740BE4(v97, v63);
    sub_269740BE4(v116, v63 + v117);
    OUTLINED_FUNCTION_8_21(v63);
    if (v69)
    {

      OUTLINED_FUNCTION_7_27(v116);
      OUTLINED_FUNCTION_7_27(v97);
      OUTLINED_FUNCTION_8_21(v63 + v117);
      if (v69)
      {
        v100 = &qword_280323F48;
        v101 = qword_26985DE40;
        v102 = v63;
        goto LABEL_46;
      }
    }

    else
    {
      sub_269740BE4(v63, v45);
      OUTLINED_FUNCTION_8_21(v63 + v117);
      if (!v118)
      {
        v120 = v63 + v117;
        v121 = v128;
        (*(v50 + 32))(v128, v120, v38);
        OUTLINED_FUNCTION_2_21();
        sub_269761E88(v122, v123, MEMORY[0x277D39220]);
        v112 = sub_269854A54();

        v124 = *(v50 + 8);
        v124(v121, v38);
        OUTLINED_FUNCTION_26_1(v116);
        OUTLINED_FUNCTION_26_1(v97);
        v124(v45, v38);
        v115 = v63;
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_7_27(v116);
      OUTLINED_FUNCTION_7_27(v97);
      (*(v50 + 8))(v45, v38);
    }

    v107 = v63;
    goto LABEL_51;
  }

  v65 = OUTLINED_FUNCTION_6_26();
  v66(v65);
  (*(v52 + 32))(v56, v63, v50);
  (*(v52 + 16))(v49, v56, v50);
  v67 = v52;
  if (qword_280322560 != -1)
  {
    swift_once();
  }

  sub_269761E88(qword_280323548, type metadata accessor for MediaNLIntent, &unk_269860BD8);
  sub_269853D54();
  if (v153 != 5)
  {
    v69 = sub_2697A8C0C(v153) == 2036427888 && v68 == 0xE400000000000000;
    if (v69)
    {
    }

    else
    {
      v70 = sub_269855584();

      if ((v70 & 1) == 0)
      {
        if (qword_280322700 != -1)
        {
          OUTLINED_FUNCTION_0_4(&qword_280322700);
        }

        v71 = v144;
        __swift_project_value_buffer(v144, qword_281571B38);
        OUTLINED_FUNCTION_12_21();
        v72 = v126;
        v73(v126);
        v74 = sub_2698548B4();
        v75 = sub_269854F04();
        if (!os_log_type_enabled(v74, v75))
        {
          goto LABEL_30;
        }

        v76 = swift_slowAlloc();
        *v76 = 0;
        v77 = "Incorrect verb in intent for flow, ignoring input";
LABEL_29:
        _os_log_impl(&dword_269684000, v74, v75, v77, v76, 2u);
        MEMORY[0x26D647170](v76, -1, -1);
LABEL_30:

        (*(v45 + 8))(v72, v71);
        sub_2696CC460(v49);
        (*(v67 + 8))(v56, v50);
LABEL_52:
        v112 = 0;
        return v112 & 1;
      }
    }
  }

  if (qword_2803225D0 != -1)
  {
    swift_once();
  }

  v99 = _s10MediaNLAppVMa(0);
  sub_269761E88(qword_280323708, _s10MediaNLAppVMa, &unk_2698609DC);
  sub_269853D44();
  if (__swift_getEnumTagSinglePayload(v38, 1, v99) != 1)
  {
    sub_26969B0C0(v38, &qword_280323700, qword_26985B120);
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    v71 = v144;
    __swift_project_value_buffer(v144, qword_281571B38);
    OUTLINED_FUNCTION_12_21();
    v72 = v135;
    v103(v135);
    v74 = sub_2698548B4();
    v75 = sub_269854F04();
    if (!os_log_type_enabled(v74, v75))
    {
      goto LABEL_30;
    }

    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = "Play on app, ignoring input";
    goto LABEL_29;
  }

  sub_2696CC460(v49);
  (*(v67 + 8))(v56, v50);
  v100 = &qword_280323700;
  v101 = qword_26985B120;
  v102 = v38;
LABEL_46:
  sub_26969B0C0(v102, v100, v101);
  v112 = 1;
  return v112 & 1;
}

uint64_t sub_269761E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_269761F34()
{
  if (qword_2803224B0 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D710;
  qword_28033D718 = qword_28033D710;

  return v1;
}

uint64_t sub_269761F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v37 = a2;
  v36 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v34 = v2;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v32 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v16 = __swift_project_value_buffer(v6, qword_28033D910);
  v17 = *(v8 + 16);
  v17(v15, v16, v6);
  v18 = sub_2698548B4();
  v19 = sub_269854F14();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_16_2();
    *v20 = 0;
    _os_log_impl(&dword_269684000, v18, v19, "PlayVideoFlowStrategy.actionForInput() called", v20, 2u);
    OUTLINED_FUNCTION_10();
  }

  v21 = *(v8 + 8);
  v21(v15, v6);
  sub_269853844();
  v22 = sub_269760E3C(v5);
  (*(v34 + 8))(v5, v36);
  if (v22)
  {
    v23 = v32;
    v17(v32, v16, v6);
    v24 = sub_2698548B4();
    v25 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v25))
    {
      v26 = OUTLINED_FUNCTION_16_2();
      *v26 = 0;
      _os_log_impl(&dword_269684000, v24, v22, "PlayVideoFlowStrategy.actionForInput() handling", v26, 2u);
      OUTLINED_FUNCTION_10();
    }

    v21(v23, v6);
    return sub_269853004();
  }

  else
  {
    v28 = v33;
    v17(v33, v16, v6);
    v29 = sub_2698548B4();
    v30 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v30))
    {
      v31 = OUTLINED_FUNCTION_16_2();
      *v31 = 0;
      _os_log_impl(&dword_269684000, v29, v22, "PlayVideoFlowStrategy.actionForInput() ignoring", v31, 2u);
      OUTLINED_FUNCTION_10();
    }

    v21(v28, v6);
    return sub_269853014();
  }
}

uint64_t sub_269762324(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v3[11] = OUTLINED_FUNCTION_4_7();
  v4 = sub_269852474();
  v3[12] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v3[13] = v5;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = sub_269851ED4();
  v3[16] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v3[17] = v7;
  v3[18] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269851EF4();
  v3[19] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v3[20] = v9;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v10 = sub_269853874();
  v3[23] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v3[24] = v11;
  v3[25] = OUTLINED_FUNCTION_4_7();
  type metadata accessor for MediaNLIntent(0);
  v3[26] = OUTLINED_FUNCTION_4_7();
  v12 = sub_269853F44();
  v3[27] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v3[28] = v13;
  v3[29] = OUTLINED_FUNCTION_4_7();
  v14 = sub_2698538B4();
  v3[30] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v3[31] = v15;
  v3[32] = OUTLINED_FUNCTION_4_7();
  v16 = sub_2698548D4();
  v3[33] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v3[34] = v17;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26976263C);
}

id sub_26976263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v21 = *(v20 + 296);
  v22 = *(v20 + 264);
  v23 = *(v20 + 272);
  v24 = __swift_project_value_buffer(v22, qword_28033D910);
  *(v20 + 304) = v24;
  v25 = *(v23 + 16);
  *(v20 + 312) = v25;
  *(v20 + 320) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v21, v24, v22);
  v26 = sub_2698548B4();
  v27 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v27))
  {
    v28 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v28);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v29, v30, "PlayVideoFlowStrategy.makeIntentFromParse() called");
    OUTLINED_FUNCTION_18_7();
  }

  v31 = *(v20 + 296);
  v32 = *(v20 + 264);
  v33 = *(v20 + 272);
  v34 = *(v20 + 72);

  v35 = *(v33 + 8);
  *(v20 + 328) = v35;
  v35(v31, v32);
  v36 = *(v20 + 72);
  if (v34)
  {
    v37 = *(v20 + 72);
  }

  else
  {
    v37 = [objc_allocWithZone(type metadata accessor for PlayVideoIntent()) init];
  }

  *(v20 + 336) = v37;
  v38 = *(v20 + 80);
  v39 = v36;
  sub_2696D3780();
  v40 = *(v38 + 16);
  *(v20 + 344) = v40;
  if (v40)
  {
    v41 = *(v20 + 80);
    sub_269694CBC();
    v42 = v40;
    v43 = sub_269855034();
    OUTLINED_FUNCTION_0_16(v43, sel_setIsRemoteExecution_);

    __swift_project_boxed_opaque_existential_1((v41 + 224), *(v41 + 248));
    v44 = sub_2697AD1E8();
    if (v45)
    {
      v46 = sub_269854A64();
    }

    else
    {
      v46 = 0;
    }

    OUTLINED_FUNCTION_0_16(v44, sel_setCrossDeviceRequestInitiator_);

    sub_269795600(v42);
  }

  v48 = *(v20 + 248);
  v47 = *(v20 + 256);
  v49 = *(v20 + 240);
  (*(v48 + 16))(v47, *(v20 + 64), v49);
  v50 = (*(v48 + 88))(v47, v49);
  if (v50 == *MEMORY[0x277D5C128])
  {
    v51 = *(v20 + 256);
    v52 = *(v20 + 232);
    v53 = *(v20 + 216);
    v54 = *(v20 + 224);
    v55 = *(v20 + 208);
    v56 = *(v20 + 80);
    (*(*(v20 + 248) + 96))(v51, *(v20 + 240));
    (*(v54 + 32))(v52, v51, v53);
    (*(v54 + 16))(v55, v52, v53);
    sub_2697A2360(v55);
    sub_2696CC460(v55);
    v57 = v56[6];
    v58 = v56[7];
    __swift_project_boxed_opaque_existential_1(v56 + 3, v57);
    if (sub_2696CB5D4(v57, v58))
    {
      sub_2696A73F8(*(v20 + 80) + 184, v20 + 16);
      __swift_project_boxed_opaque_existential_1((v20 + 16), *(v20 + 40));
      result = [v37 contentSearch];
      *(v20 + 352) = result;
      if (result)
      {
        v60 = swift_task_alloc();
        *(v20 + 360) = v60;
        *v60 = v20;
        v60[1] = sub_269762EC4;
        OUTLINED_FUNCTION_84();

        return sub_2697BB34C();
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    (*(*(v20 + 224) + 8))(*(v20 + 232), *(v20 + 216));
    goto LABEL_27;
  }

  if (v50 != *MEMORY[0x277D5C140])
  {
    v77 = *(v20 + 248);
    v78 = *(v20 + 256);
    v79 = *(v20 + 240);
    if (v50 != *MEMORY[0x277D5C148])
    {
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_4_22(v107, 13);

      (*(v77 + 8))(v78, v79);
      goto LABEL_38;
    }

    (*(v77 + 96))(*(v20 + 256), *(v20 + 240));
    v80 = *v78;
    sub_2696D6C54();
    if (!v81)
    {
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_4_22(v108, 11);

      goto LABEL_38;
    }

    v82 = v81;
    v83 = *(v20 + 104);
    v58 = *(v20 + 112);
    v84 = *(v20 + 96);
    sub_269854544();
    v85 = v82;
    v86 = sub_2698544E4();

    sub_2697A2434(v58, v86);

    (*(v83 + 8))(v58, v84);
LABEL_27:
    v89 = OUTLINED_FUNCTION_2_22();
    if (!v58 && (v89 & 1) != 0)
    {
      v90 = [*(v20 + 336) contentSearch];
      if (v90)
      {
        v37 = v90;
        sub_269694CBC();
        v91 = sub_269855044();
        OUTLINED_FUNCTION_0_16(v91, sel_setItemLimit_);
      }
    }

    v92 = OUTLINED_FUNCTION_3_28();
    v93(v92);
    sub_2698548B4();
    v94 = sub_269854F44();
    if (OUTLINED_FUNCTION_19_5(v94))
    {
      v95 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v95);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v96, v97, "Finished creating intent from parse");
      OUTLINED_FUNCTION_18_7();
    }

    OUTLINED_FUNCTION_1_23();
    OUTLINED_FUNCTION_9_19();
    v98 = OUTLINED_FUNCTION_12_22();
    (v37)(v98);

    OUTLINED_FUNCTION_6_27();
    OUTLINED_FUNCTION_84();

    return v101(v99, v100, v101, v102, v103, v104, v105, v106, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v62 = *(v20 + 256);
  v63 = *(v20 + 192);
  v64 = *(v20 + 200);
  v65 = *(v20 + 176);
  v67 = *(v20 + 160);
  v66 = *(v20 + 168);
  v68 = *(v20 + 144);
  v69 = *(v20 + 136);
  a12 = *(v20 + 152);
  a13 = *(v20 + 128);
  v119 = *(v20 + 184);
  a16 = *(v20 + 96);
  a14 = *(v20 + 88);
  (*(*(v20 + 248) + 96))(v62, *(v20 + 240));
  (*(v63 + 32))(v64, v62, v119);
  sub_269853864();
  sub_269851EE4();
  v70 = *(v67 + 8);
  v70(v65, a12);
  a15 = sub_269851EB4();
  (*(v69 + 8))(v68, a13);
  sub_269853864();
  sub_2696D3C74();
  v70(v66, a12);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a14, 1, a16);
  v73 = *(v20 + 192);
  v72 = *(v20 + 200);
  v74 = *(v20 + 184);
  if (EnumTagSinglePayload != 1)
  {
    v58 = *(v20 + 120);
    v88 = *(v20 + 96);
    v87 = *(v20 + 104);
    (*(v87 + 32))(v58, *(v20 + 88), v88);
    sub_2697A2434(v58, a15);

    (*(v87 + 8))(v58, v88);
    (*(v73 + 8))(v72, v74);
    goto LABEL_27;
  }

  v75 = *(v20 + 88);

  sub_2696CC3F8(v75);
  sub_2696BAE9C();
  swift_allocError();
  OUTLINED_FUNCTION_4_22(v76, 11);

  (*(v73 + 8))(v72, v74);
LABEL_38:
  v117 = *(v20 + 120);
  v118 = *(v20 + 112);
  v120 = *(v20 + 88);

  OUTLINED_FUNCTION_84();

  return v110(v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, a11, a12, v117, v118, v120, a16, a17, a18, a19, a20);
}

uint64_t sub_269762EC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 368) = v1;

  if (v1)
  {
    v7 = sub_2697631CC;
  }

  else
  {
    *(v5 + 376) = a1;
    v7 = sub_269763000;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_269763000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  v21 = *(v20 + 376);
  v22 = *(v20 + 336);
  v24 = *(v20 + 224);
  v23 = *(v20 + 232);
  v25 = *(v20 + 216);
  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  sub_269763C54(v21, v22);
  (*(v24 + 8))(v23, v25);
  v26 = OUTLINED_FUNCTION_2_22();
  if (!v23 && (v26 & 1) != 0)
  {
    v27 = [*(v20 + 336) contentSearch];
    if (v27)
    {
      v22 = v27;
      sub_269694CBC();
      v28 = sub_269855044();
      OUTLINED_FUNCTION_0_16(v28, sel_setItemLimit_);
    }
  }

  v29 = OUTLINED_FUNCTION_3_28();
  v30(v29);
  v31 = sub_2698548B4();
  v32 = sub_269854F44();
  if (OUTLINED_FUNCTION_19_5(v32))
  {
    v33 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v33);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v34, v35, "Finished creating intent from parse");
    OUTLINED_FUNCTION_18_7();
  }

  OUTLINED_FUNCTION_1_23();
  v48 = v37;
  v49 = v36;
  v50 = *(v20 + 176);
  v51 = *(v20 + 168);
  v52 = *(v20 + 144);
  v53 = *(v20 + 120);
  v54 = *(v20 + 112);
  v55 = *(v20 + 88);

  v38 = OUTLINED_FUNCTION_12_22();
  (v22)(v38);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_84();

  return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v48, v49, v50, v51, v52, v53, v54, v55, a18, a19, a20);
}

uint64_t sub_2697631CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(uint64_t, uint64_t), uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 368);
  v32 = *(v28 + 312);
  v33 = *(v28 + 304);
  v34 = *(v28 + 288);
  v35 = *(v28 + 264);
  __swift_destroy_boxed_opaque_existential_0((v28 + 16));
  v32(v34, v33, v35);
  v36 = v31;
  v37 = sub_2698548B4();
  v38 = sub_269854F24();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v28 + 368);
    a12 = *(v28 + 264);
    a13 = *(v28 + 288);
    v40 = *(v28 + 224);
    a15 = *(v28 + 328);
    a16 = *(v28 + 232);
    a14 = *(v28 + 216);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    a17 = v42;
    *v41 = 136315138;
    *(v28 + 56) = v39;
    v43 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v44 = sub_269854AE4();
    v46 = v45;
    v47 = sub_26974F520(v44, v45, &a17);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_269684000, v37, v38, "Populating NLv3 suggested content failed: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    a15(a13, a12);
    (*(v40 + 8))(a16, a14);
  }

  else
  {
    v46 = *(v28 + 368);
    v48 = *(v28 + 328);
    v47 = *(v28 + 288);
    v49 = *(v28 + 264);
    v51 = *(v28 + 224);
    v50 = *(v28 + 232);
    v52 = *(v28 + 216);

    v48(v47, v49);
    (*(v51 + 8))(v50, v52);
  }

  v53 = OUTLINED_FUNCTION_2_22();
  if (!v47 && (v53 & 1) != 0)
  {
    v54 = [*(v28 + 336) contentSearch];
    if (v54)
    {
      v46 = v54;
      sub_269694CBC();
      v55 = sub_269855044();
      OUTLINED_FUNCTION_0_16(v55, sel_setItemLimit_);
    }
  }

  v56 = OUTLINED_FUNCTION_3_28();
  v57(v56);
  sub_2698548B4();
  v58 = sub_269854F44();
  if (OUTLINED_FUNCTION_19_5(v58))
  {
    v59 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v59);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v60, v61, "Finished creating intent from parse");
    OUTLINED_FUNCTION_18_7();
  }

  OUTLINED_FUNCTION_1_23();
  OUTLINED_FUNCTION_9_19();
  v62 = OUTLINED_FUNCTION_12_22();
  (v46)(v62);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_84();

  return v65(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26976350C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  sub_269759494(v0 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  return v0;
}

uint64_t sub_269763554()
{
  sub_26976350C();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t sub_2697635C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269758AC8;

  return sub_269762324(a1, a2);
}

uint64_t sub_26976366C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PlayVideoFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_2697636B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for PlayVideoFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2697594E8;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_269763784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for PlayVideoFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2697594E8;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_269763850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for PlayVideoFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2697594E8;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_26976391C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for PlayVideoFlowStrategy();
  *v12 = v6;
  v12[1] = sub_269759010;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2697639F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_269756480(a1, a2, a3, a4, a5);
  v7 = *(v5 + 8);

  return v7(v6);
}

uint64_t sub_269763A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for PlayVideoFlowStrategy();
  *v12 = v6;
  v12[1] = sub_2697594E8;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_269763B9C(uint64_t a1)
{
  result = sub_269763C14(&qword_2803240C0, &unk_26985EE58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269763C14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayVideoFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269763C54(uint64_t a1, void *a2)
{
  type metadata accessor for Content();
  v3 = sub_269854CA4();

  [a2 setSuggestedContent_];
}

uint64_t OUTLINED_FUNCTION_2_22()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 80) + 24), *(*(v0 + 80) + 48));

  return sub_269852E44();
}

uint64_t OUTLINED_FUNCTION_4_22@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a3;
  *(a2 + 24) = 3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_9_19()
{
}

id sub_269763DC0()
{
  if (qword_2803224B0 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D710;
  qword_28033D720 = qword_28033D710;

  return v1;
}

uint64_t sub_269763E24(uint64_t a1)
{
  v101 = 0;
  memset(v100, 0, sizeof(v100));
  sub_2698538C4();
  sub_269852C84();
  v68 = type metadata accessor for BaseDialogProvider();
  v69 = OUTLINED_FUNCTION_99_0(v68);
  sub_269854474();
  sub_2698546A4();
  v67 = sub_269854694();
  v73 = type metadata accessor for MoveToGroupDevicesProvider();
  v66 = OUTLINED_FUNCTION_99_0(v73);
  v1 = sub_269853264();
  swift_allocObject();
  v64 = sub_269853254();
  v72 = type metadata accessor for FrontBoardOpenApplicationService();
  v62 = OUTLINED_FUNCTION_99_0(v72);
  sub_2696F3F6C(v100, v95, &qword_280324188, &qword_26985F1D8);
  if (qword_2803226D0 != -1)
  {
    swift_once();
  }

  v71 = qword_28033D908;
  if (qword_280322650 != -1)
  {
    swift_once();
  }

  v2 = qword_28033D888;
  locked = type metadata accessor for DeviceLockedProvider();
  v58 = OUTLINED_FUNCTION_99_0(locked);
  v60 = type metadata accessor for AVAllowBackgroundPlayback();
  v3 = OUTLINED_FUNCTION_99_0(v60);
  v93 = &type metadata for LSApplicationRecordProvider;
  v94 = &xmmword_287A41430;
  v59 = type metadata accessor for CarPlaySupportProvider();
  OUTLINED_FUNCTION_25_3();
  v4 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v92, &type metadata for LSApplicationRecordProvider);
  *(v4 + 40) = &type metadata for LSApplicationRecordProvider;
  *(v4 + 48) = &xmmword_287A41430;
  __swift_destroy_boxed_opaque_existential_0(v92);
  v94 = &off_287A3DBA0;
  v93 = v68;
  v92[0] = v69;
  v5 = sub_269854674();
  v91 = MEMORY[0x277D61F08];
  v90 = v5;
  *&v89 = v67;
  v88[3] = &type metadata for CoreAnalyticsService;
  v88[4] = &xmmword_287A41610;
  v87[4] = &off_287A40140;
  v87[3] = v73;
  v87[0] = v66;
  v86 = MEMORY[0x277D5BD58];
  v85 = v1;
  *&v84 = v64;
  v82 = &type metadata for EncryptionProvider;
  v83 = &protocol witness table for EncryptionProvider;
  v80[3] = v72;
  v80[4] = &off_287A41CE0;
  v80[0] = v62;
  v65 = type metadata accessor for VideoPlaybackMonitor();
  v79[3] = v65;
  v79[4] = &off_287A47088;
  v79[0] = v71;
  v63 = type metadata accessor for CarSessionProvider();
  v78[3] = v63;
  v78[4] = &off_287A41458;
  v78[0] = v2;
  v77[3] = locked;
  v77[4] = &off_287A41B20;
  v77[0] = v58;
  v76[3] = v60;
  v76[0] = v3;
  v76[4] = &off_287A41358;
  v75[3] = v59;
  v75[4] = &off_287A41448;
  v75[0] = v4;
  v74[3] = &type metadata for LSApplicationRecordProvider;
  v74[4] = &xmmword_287A41430;
  type metadata accessor for PlayVideoHandleIntentStrategy();
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v92, v68);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v57 = (v9 - v8);
  (*(v10 + 16))();
  __swift_mutable_project_boxed_opaque_existential_1(v88, &type metadata for CoreAnalyticsService);
  __swift_mutable_project_boxed_opaque_existential_1(v87, v73);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v56 = (v13 - v12);
  (*(v14 + 16))();
  __swift_mutable_project_boxed_opaque_existential_1(v80, v72);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = (v17 - v16);
  (*(v19 + 16))(v17 - v16);
  __swift_mutable_project_boxed_opaque_existential_1(v79, v65);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = (v22 - v21);
  (*(v24 + 16))(v22 - v21);
  __swift_mutable_project_boxed_opaque_existential_1(v78, v63);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  v28 = (v27 - v26);
  (*(v29 + 16))(v27 - v26);
  __swift_mutable_project_boxed_opaque_existential_1(v77, locked);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v33 = (v32 - v31);
  (*(v34 + 16))(v32 - v31);
  __swift_mutable_project_boxed_opaque_existential_1(v76, v60);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_1();
  v38 = (v37 - v36);
  (*(v39 + 16))(v37 - v36);
  __swift_mutable_project_boxed_opaque_existential_1(v75, v59);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_1();
  v43 = (v42 - v41);
  (*(v44 + 16))(v42 - v41);
  __swift_mutable_project_boxed_opaque_existential_1(v74, &type metadata for LSApplicationRecordProvider);
  v45 = *v57;
  v46 = *v56;
  v47 = *v18;
  v48 = *v23;
  v49 = *v28;
  v50 = *v33;
  v51 = *v38;
  v52 = *v43;
  *(v6 + 136) = v68;
  *(v6 + 144) = &off_287A3DBA0;
  *(v6 + 112) = v45;
  *(v6 + 176) = &type metadata for CoreAnalyticsService;
  *(v6 + 184) = &xmmword_287A41610;
  *(v6 + 456) = v73;
  *(v6 + 464) = &off_287A40140;
  *(v6 + 432) = v46;
  *(v6 + 496) = v72;
  *(v6 + 504) = &off_287A41CE0;
  *(v6 + 472) = v47;
  *(v6 + 576) = v65;
  *(v6 + 584) = &off_287A47088;
  *(v6 + 552) = v48;
  *(v6 + 616) = v63;
  *(v6 + 624) = &off_287A41458;
  *(v6 + 592) = v49;
  *(v6 + 656) = locked;
  *(v6 + 664) = &off_287A41B20;
  *(v6 + 632) = v50;
  *(v6 + 696) = v60;
  *(v6 + 704) = &off_287A41358;
  *(v6 + 672) = v51;
  *(v6 + 736) = v59;
  *(v6 + 744) = &off_287A41448;
  *(v6 + 712) = v52;
  *(v6 + 776) = &type metadata for LSApplicationRecordProvider;
  *(v6 + 784) = &xmmword_287A41430;

  sub_26969B0C0(v100, &qword_280324188, &qword_26985F1D8);
  *(v6 + 792) = 0;
  sub_2696A73F8(v99, v6 + 24);
  sub_2696A73F8(v99, v6 + 64);
  type metadata accessor for LocUtil();
  OUTLINED_FUNCTION_25_3();
  v53 = swift_allocObject();
  sub_26968E5D4(v99, v53 + 16);
  *(v6 + 104) = v53;
  *(v6 + 16) = a1;
  sub_2696A73F8(v98, v6 + 272);
  sub_26968E5D4(&v97, v6 + 312);
  sub_26968E5D4(v98, v6 + 352);
  sub_26968E5D4(&v89, v6 + 392);
  sub_26968E5D4(&v84, v6 + 192);
  sub_26968E5D4(&v81, v6 + 232);
  v54 = v95[1];
  *(v6 + 512) = v95[0];
  *(v6 + 528) = v54;
  *(v6 + 544) = v96;
  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v76);
  __swift_destroy_boxed_opaque_existential_0(v77);
  __swift_destroy_boxed_opaque_existential_0(v78);
  __swift_destroy_boxed_opaque_existential_0(v79);
  __swift_destroy_boxed_opaque_existential_0(v80);
  __swift_destroy_boxed_opaque_existential_0(v87);
  __swift_destroy_boxed_opaque_existential_0(v88);
  __swift_destroy_boxed_opaque_existential_0(v92);
  return v6;
}

uint64_t sub_269764850@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v4 = OUTLINED_FUNCTION_8_9(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  v7 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  if (sub_269852D04())
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      swift_once();
    }

    v14 = __swift_project_value_buffer(v7, qword_28033D910);
    (*(v9 + 16))(v13, v14, v7);
    v15 = sub_2698548B4();
    v16 = sub_269854F14();
    v17 = OUTLINED_FUNCTION_62_1();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_9_17();
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_269684000, v15, v16, "PlayVideoIntentHandleStrategy.makePreHandleIntentOutput() clearing any existing views for CarPlay", v19, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    (*(v9 + 8))(v13, v7);
    v20 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    OUTLINED_FUNCTION_51_4();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2698590C0;
    *(v21 + 32) = [objc_allocWithZone(MEMORY[0x277D47A00]) init];
    sub_26976FAD4(v21, v20);
    v22 = sub_269854A94();
    sub_26976FB54(v22, v23, v20);
    [v20 setTemporary_];
    sub_269853234();
    v24 = OUTLINED_FUNCTION_50_3();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    v28 = sub_2698538F4();
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v29 = MEMORY[0x277D5C1D8];
    a1[3] = v28;
    a1[4] = v29;
    __swift_allocate_boxed_opaque_existential_1(a1);
    v30 = OUTLINED_FUNCTION_22_10();
    MEMORY[0x26D644000](v30);

    sub_26969B0C0(&v34, &qword_280323028, qword_26985AD20);
    return sub_26969B0C0(v6, &qword_280323010, &unk_26985B640);
  }

  else
  {
    v32 = sub_2698538F4();
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v33 = MEMORY[0x277D5C1D8];
    a1[3] = v32;
    a1[4] = v33;
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_2698538E4();
  }
}

uint64_t sub_269764BA4()
{
  OUTLINED_FUNCTION_2_7();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v4);
  v1[20] = OUTLINED_FUNCTION_4_7();
  v5 = sub_269853634();
  v1[21] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[22] = v6;
  v1[23] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269851C74();
  v1[24] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[25] = v8;
  v1[26] = OUTLINED_FUNCTION_37_0();
  v1[27] = swift_task_alloc();
  v9 = sub_2698548D4();
  v1[28] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[29] = v10;
  v1[30] = OUTLINED_FUNCTION_37_0();
  v1[31] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_269764D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v15 = *(v14 + 248);
  v16 = *(v14 + 224);
  v17 = *(v14 + 232);
  v18 = __swift_project_value_buffer(v16, qword_28033D910);
  v19 = *(v17 + 16);
  v19(v15, v18, v16);
  v20 = sub_2698548B4();
  v21 = sub_269854F14();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_9_17();
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_269684000, v20, v21, "PlayVideoHandleIntentFlowStrategy.makeIntentHandledResponse() called", v22, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v23 = *(v14 + 232);

  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_34_0();
  v24(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
  v26 = sub_2698534E4();
  v27 = [v26 urlToLaunch];

  if (!v27)
  {
    sub_2696BAE9C();
    OUTLINED_FUNCTION_20_4();
    v36 = swift_allocError();
    *v37 = 0xD00000000000001ALL;
    v37[1] = 0x800000026987EC30;
    OUTLINED_FUNCTION_81_0(v36, v37);
    swift_willThrow();
LABEL_11:
    OUTLINED_FUNCTION_45_3();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_116();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
  }

  a9 = v24;
  a10 = v18;
  v28 = *(v14 + 152);
  sub_269851C44();

  v29 = OUTLINED_FUNCTION_44_0();
  v30(v29);
  v31 = *(v28 + 16);
  *(v14 + 256) = v31;
  if (v31)
  {
    v31;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    *(v14 + 264) = v32;
    *v32 = v33;
    v32[1] = sub_269765330;
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_116();

    return sub_269765DCC();
  }

  __swift_project_boxed_opaque_existential_1((*(v14 + 152) + 24), *(*(v14 + 152) + 48));
  OUTLINED_FUNCTION_44_0();
  if ((sub_269852D04() & 1) == 0)
  {
    goto LABEL_18;
  }

  v46 = sub_2698534E4();
  v47 = sub_26976FBB8(v46);
  *(v14 + 280) = v48;
  if (!v48)
  {
    v19(*(v14 + 240), v18, *(v14 + 224));
    v62 = sub_2698548B4();
    sub_269854F24();
    v63 = OUTLINED_FUNCTION_62_1();
    if (os_log_type_enabled(v63, v64))
    {
      OUTLINED_FUNCTION_9_17();
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_2(v65);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v66, v67, v68, v69, v70, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v71 = OUTLINED_FUNCTION_22_3();
    v24(v71);
    sub_2696BAE9C();
    OUTLINED_FUNCTION_20_4();
    v72 = swift_allocError();
    *v73 = 0xD000000000000022;
    v73[1] = 0x800000026987EC50;
    OUTLINED_FUNCTION_81_0(v72, v73);
    swift_willThrow();
    v74 = OUTLINED_FUNCTION_44_0();
    v75(v74);
    goto LABEL_11;
  }

  v49 = v47;
  v50 = v48;
  OUTLINED_FUNCTION_95_1((*(v14 + 152) + 712), *(*(v14 + 152) + 736));
  if (sub_2697AE1AC(v49, v50))
  {

LABEL_18:
    v51 = *(v14 + 152);
    sub_26969329C(0, &qword_280323038, 0x277D479F0);
    v52 = sub_2696CD66C(1);
    *(v14 + 304) = v52;
    v53 = sub_269851C24();
    [v52 setPunchOutUri_];

    sub_2696A73F8(v51 + 272, v14 + 16);
    __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
    v54 = v52;
    OUTLINED_FUNCTION_44_0();
    sub_269853474();
    if (v55)
    {
      v56 = sub_269854A64();
    }

    else
    {
      v56 = 0;
    }

    v57 = *(v14 + 152);
    __swift_destroy_boxed_opaque_existential_0((v14 + 16));
    [v54 setRefId_];

    sub_2696A73F8(v57 + 192, v14 + 56);
    v58 = *(v14 + 80);
    *(v14 + 312) = v58;
    *(v14 + 328) = __swift_project_boxed_opaque_existential_1((v14 + 56), v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F8, &unk_26985F1C0);
    inited = swift_initStackObject();
    *(v14 + 336) = inited;
    *(inited + 16) = xmmword_269857710;
    v60 = swift_task_alloc();
    *(v14 + 344) = v60;
    *v60 = v14;
    v60[1] = sub_2697656A0;
    OUTLINED_FUNCTION_44_4(*(v14 + 144));
    OUTLINED_FUNCTION_116();

    return sub_26976C448();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v14 + 288) = v76;
  *v76 = v77;
  v76[1] = sub_2697654D8;
  OUTLINED_FUNCTION_116();

  return sub_269769010();
}

uint64_t sub_269765330()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26976542C()
{
  OUTLINED_FUNCTION_34();

  v1 = OUTLINED_FUNCTION_5_21();
  v2(v1);
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_4_17();

  return v3();
}

uint64_t sub_2697654D8()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 296) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2697655FC()
{
  OUTLINED_FUNCTION_34();
  (*(v0[25] + 8))(v0[27], v0[24]);
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_4_17();

  return v1();
}

uint64_t sub_2697656A0()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v5 + 352) = v0;

  if (!v0)
  {
    *(v5 + 360) = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2697657AC()
{
  OUTLINED_FUNCTION_34();
  v1 = 0;
  *(v0[42] + 32) = v0[45];
  v2 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90]; ; v2 = i)
  {
    v0[46] = v2;
    if (v1)
    {
      break;
    }

    v3 = *(v0[42] + 32);
    if (!v3)
    {
      break;
    }

    v4 = v3;
    MEMORY[0x26D645B90]();
    OUTLINED_FUNCTION_104();
    if (v5)
    {
      sub_269854CD4();
    }

    sub_269854CF4();
    v1 = 1;
  }

  v6 = v0[38];
  swift_setDeallocating();
  sub_269819DC0();
  sub_269852E64();
  *(swift_task_alloc() + 16) = v6;
  sub_2698535C4();

  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[47] = v7;
  *v7 = v8;
  v7[1] = sub_269765934;
  OUTLINED_FUNCTION_106_0();

  return MEMORY[0x2821BB488](v9);
}

uint64_t sub_269765934()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_23();
  v4(v3);
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_269765A88()
{
  OUTLINED_FUNCTION_34();

  v1 = OUTLINED_FUNCTION_5_21();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_4_17();

  return v3();
}

uint64_t sub_269765B3C()
{
  OUTLINED_FUNCTION_34();

  v1 = OUTLINED_FUNCTION_5_21();
  v2(v1);
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_269765BEC()
{
  OUTLINED_FUNCTION_34();
  (*(v0[25] + 8))(v0[27], v0[24]);
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_269765C94()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 336);

  v2 = OUTLINED_FUNCTION_12_23();
  v3(v2);
  *(v1 + 16) = 0;
  swift_setDeallocating();
  sub_269819DC0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_269765D60(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2698590C0;
  *(v3 + 32) = a2;
  v4 = a2;
  return sub_269853614();
}

uint64_t sub_269765DCC()
{
  OUTLINED_FUNCTION_2_7();
  v1[107] = v0;
  v1[106] = v2;
  v1[105] = v3;
  v1[104] = v4;
  v1[103] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324098, &qword_26985EB78);
  OUTLINED_FUNCTION_8_9(v6);
  v1[108] = OUTLINED_FUNCTION_4_7();
  v7 = type metadata accessor for VideoDataModels.ButtonModel(0);
  v1[109] = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v1[110] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v8);
  v1[111] = OUTLINED_FUNCTION_4_7();
  v9 = sub_269853634();
  v1[112] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[113] = v10;
  v1[114] = OUTLINED_FUNCTION_4_7();
  v11 = sub_2698548D4();
  v1[115] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[116] = v12;
  v1[117] = OUTLINED_FUNCTION_37_0();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v1[120] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_8_9(v13);
  v1[121] = OUTLINED_FUNCTION_4_7();
  v14 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_269765F8C()
{
  OUTLINED_FUNCTION_28_6();
  v31 = v0;
  v3 = v0[107];
  v4 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v0[122] = v4;
  v5 = sub_269851C24();
  [v4 setPunchOutUri_];

  v7 = v3[6];
  v6 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v7);
  if (sub_2696CB5D4(v7, v6) & 1) != 0 || (v8 = sub_269792920(), (v8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
    v0[123] = sub_269853504();
    v0[124] = sub_2698534E4();
    v0[92] = &type metadata for ContentResolver;
    v0[93] = &off_287A42478;
    OUTLINED_FUNCTION_25_3();
    v9 = swift_allocObject();
    v0[89] = v9;
    v9[5] = &type metadata for UTSProvider;
    v9[6] = &off_287A43FA8;
    v10 = swift_allocObject();
    v9[2] = v10;
    v29 = &type metadata for CoreAnalyticsService;
    v30 = &xmmword_287A41610;
    v10[5] = &type metadata for UTSNetworkProvider;
    v10[6] = &off_287A43DC0;
    v11 = swift_allocObject();
    v10[2] = v11;
    sub_2697D24B0(v28, (v11 + 16));
    v10[10] = &type metadata for CoreAnalyticsService;
    v10[11] = &xmmword_287A41610;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[125] = v12;
    *v12 = v13;
    v12[1] = sub_269766304;
    OUTLINED_FUNCTION_106_0();

    return sub_269767C58();
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      v8 = swift_once();
    }

    v15 = v0[116];
    v0[126] = OUTLINED_FUNCTION_29_2(v8, qword_28033D910);
    v0[127] = *(v15 + 16);
    v0[128] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16 = OUTLINED_FUNCTION_12_11();
    v17(v16);
    v18 = sub_2698548B4();
    v19 = sub_269854F14();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_9_17();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_2(v20);
      OUTLINED_FUNCTION_15_13(&dword_269684000, v21, v22, "PlayVideoHandleIntentFlowStrategy.makeIntentHandledResponse submitting appPunchout command to remote...");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    OUTLINED_FUNCTION_96_1();
    v0[129] = *(v1 + 8);
    v23 = OUTLINED_FUNCTION_22_3();
    v24(v23);
    sub_2696A73F8(v2 + 272, (v0 + 74));
    OUTLINED_FUNCTION_116_0();
    v0[130] = v25;
    v26 = swift_task_alloc();
    v0[131] = v26;
    sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
    *v26 = v0;
    v27 = OUTLINED_FUNCTION_26_12();

    return MEMORY[0x2821BB680](v27);
  }
}

uint64_t sub_269766304()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v5 = *(v4 + 992);
  v6 = *(v4 + 984);
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 712));
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_269766420()
{
  OUTLINED_FUNCTION_92_0();
  v3 = v0[121];
  v4 = sub_269851C74();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v5 = sub_26969B0C0(v3, &qword_280323030, &qword_26985BAE0);
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      v5 = swift_once();
    }

    v6 = v0[116];
    v0[126] = OUTLINED_FUNCTION_29_2(v5, qword_28033D910);
    v0[127] = *(v6 + 16);
    v0[128] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7 = OUTLINED_FUNCTION_12_11();
    v8(v7);
    v9 = sub_2698548B4();
    v10 = sub_269854F14();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_9_17();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_2(v11);
      OUTLINED_FUNCTION_15_13(&dword_269684000, v12, v13, "PlayVideoHandleIntentFlowStrategy.makeIntentHandledResponse submitting appPunchout command to remote...");
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    OUTLINED_FUNCTION_96_1();
    v0[129] = *(v1 + 8);
    v14 = OUTLINED_FUNCTION_22_3();
    v15(v14);
    sub_2696A73F8(v2 + 272, (v0 + 74));
    OUTLINED_FUNCTION_116_0();
    v0[130] = v16;
    v17 = swift_task_alloc();
    v0[131] = v17;
    sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
    *v17 = v0;
    v18 = OUTLINED_FUNCTION_26_12();

    return MEMORY[0x2821BB680](v18);
  }

  else
  {
    v19 = v0[122];
    v20 = v0[103];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    OUTLINED_FUNCTION_51_4();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2698590C0;
    *(v21 + 32) = v19;
    v22 = sub_2698538F4();
    v23 = MEMORY[0x277D5C1D8];
    v20[3] = v22;
    v20[4] = v23;
    __swift_allocate_boxed_opaque_existential_1(v20);
    sub_2698538E4();
    sub_26969B0C0(v3, &qword_280323030, &qword_26985BAE0);
    OUTLINED_FUNCTION_16_15();

    OUTLINED_FUNCTION_4_17();

    return v24();
  }
}

uint64_t sub_2697666FC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1056) = v5;
  *(v3 + 1064) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_269766808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t), uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_6();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_92_0();
  a22 = v24;
  v84 = (v24 + 328);
  v27 = *(v24 + 1056);
  v28 = *(v24 + 1016);
  __swift_destroy_boxed_opaque_existential_0((v24 + 592));
  v29 = OUTLINED_FUNCTION_50_0();
  v28(v29);
  v30 = v27;
  v31 = sub_2698548B4();
  v32 = sub_269854F14();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v24 + 1056);
    OUTLINED_FUNCTION_40_4();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v33;
    *v35 = v33;
    v36 = v33;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    sub_26969B0C0(v35, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v42 = *(v24 + 1064);
  v43 = *(v24 + 1056);
  v44 = *(v24 + 1032);
  v45 = *(v24 + 952);
  v46 = *(v24 + 928);
  v47 = *(v24 + 920);
  v48 = *(v24 + 856);

  *(v24 + 1072) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v45, v47);
  sub_26976FC28(v48 + 352, v24 + 96);
  sub_269795A18(1);

  sub_269759494(v24 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
  v49 = sub_269853504();
  sub_26976CEF0(v49, v84);
  *(v24 + 1080) = v42;
  if (v42)
  {

    v50 = OUTLINED_FUNCTION_71_2();
    v51(v50);
    v52 = v42;
    v53 = sub_2698548B4();
    v54 = sub_269854F24();

    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v24 + 1072);
    v57 = *(v24 + 1032);
    v58 = *(v24 + 920);
    if (v55)
    {
      OUTLINED_FUNCTION_40_4();
      v84 = v56;
      v59 = swift_slowAlloc();
      OUTLINED_FUNCTION_59_1();
      a10 = v57;
      v60 = swift_slowAlloc();
      a12 = v60;
      *v59 = 136315138;
      *(v24 + 816) = v42;
      v61 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v62 = sub_269854AE4();
      v64 = sub_26974F520(v62, v63, &a12);

      *(v59 + 4) = v64;
      OUTLINED_FUNCTION_14_2(&dword_269684000, v65, v66, "PlayVideoHandleIntentFlowStrategy.makeIntentHandledResponse makeDialogForPlayVideoHandled() failed with error: %s");
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();

      v67 = OUTLINED_FUNCTION_34_0();
      a10(v67);
    }

    else
    {

      v74 = OUTLINED_FUNCTION_34_0();
      v57(v74);
    }

    OUTLINED_FUNCTION_94_1();
    v75 = v42;
    sub_269795A18(0);

    sub_269759494(v24 + 176);
    swift_willThrow();

    if (!v58)
    {
      OUTLINED_FUNCTION_100_0();
      sub_2696C285C(v24 + 400);
    }

    OUTLINED_FUNCTION_27_9();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_8();

    return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, v84, a12, a13, a14, a15, a16);
  }

  else
  {
    v68 = *(v24 + 856);

    v69 = *(v24 + 344);
    *(v24 + 544) = *v84;
    *(v24 + 560) = v69;
    *(v24 + 576) = *(v24 + 360);
    v70 = *(v24 + 384);
    *(v24 + 1088) = *(v24 + 376);
    *(v24 + 1096) = v70;
    *(v24 + 322) = *(v24 + 392);
    sub_2696A73F8(v68 + 312, v24 + 632);
    v71 = swift_task_alloc();
    *(v24 + 1104) = v71;
    *v71 = v24;
    v71[1] = sub_269766C4C;
    OUTLINED_FUNCTION_44_4(*(v24 + 832));
    OUTLINED_FUNCTION_7_8();

    return sub_2697962EC();
  }
}

uint64_t sub_269766C4C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  *(v2 + 784) = v4;
  *(v2 + 776) = v5;
  *(v2 + 768) = v6;
  *(v2 + 760) = v7;
  *(v2 + 752) = v0;
  v8 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  *(v2 + 1112) = v10;

  __swift_destroy_boxed_opaque_existential_0((v2 + 632));
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_269766D48()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 1112);
  if (v1 == 1)
  {
    v2 = *(v0 + 323);
    v3 = *(v0 + 322);
    v4 = *(v0 + 1096);
    v5 = *(v0 + 1088);
  }

  else
  {
    v6 = *(v0 + 784);
    v7 = *(v0 + 768);
    v8 = *(v0 + 760);
    *(v0 + 792) = *(v0 + 376);
    v2 = v8 & 1;
    sub_2696A8078(v0 + 792);
    if (v1)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    if (v1)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    v3 = v6 & 1;
  }

  *(v0 + 325) = v2;
  *(v0 + 324) = v3;
  *(v0 + 1128) = v5;
  *(v0 + 1120) = v4;
  v9 = *(v0 + 344);
  *(v0 + 256) = *(v0 + 328);
  *(v0 + 272) = v9;
  *(v0 + 288) = *(v0 + 360);
  *(v0 + 304) = v5;
  *(v0 + 312) = v4;
  *(v0 + 320) = v3;
  *(v0 + 321) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 1136) = v10;
  *v10 = v11;
  v10[1] = sub_269766E6C;

  return sub_2696BE900();
}

uint64_t sub_269766E6C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1144) = v4;
  *(v2 + 1152) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_269766F74()
{
  OUTLINED_FUNCTION_8_5();
  sub_269852E64();
  sub_2698535C4();
  sub_269854614();
  *(v0 + 1160) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 1168) = v2;
  *v2 = v3;
  v2[1] = sub_269767064;

  return sub_269796CBC();
}

uint64_t sub_269767064()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_269767164()
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_49();
  v1 = v0[108];
  v2 = v0[107];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[109]) == 1)
  {
    v3 = v0[143];
    sub_26969B0C0(v1, &qword_280324098, &qword_26985EB78);
    __swift_project_boxed_opaque_existential_1((v2 + 192), *(v2 + 216));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    OUTLINED_FUNCTION_51_4();
    v4 = swift_allocObject();
    v0[149] = v4;
    *(v4 + 16) = xmmword_2698590C0;
    *(v4 + 32) = v3;
    v5 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[150] = v6;
    *v6 = v7;
    v6[1] = sub_2697675C8;
    OUTLINED_FUNCTION_76_2();

    return MEMORY[0x2821BB488](v8);
  }

  else
  {
    v10 = v0[143];
    v11 = v0[110];
    v12 = OUTLINED_FUNCTION_22_10();
    sub_26975DCA4(v12, v13);
    __swift_project_boxed_opaque_existential_1((v2 + 192), *(v2 + 216));
    v0[87] = type metadata accessor for VideoDataModels(0);
    v0[88] = sub_26976FC84(&qword_280323A28, 255, type metadata accessor for VideoDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 84);
    sub_269720A64(v11, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    OUTLINED_FUNCTION_51_4();
    v15 = swift_allocObject();
    v0[147] = v15;
    *(v15 + 16) = xmmword_2698590C0;
    *(v15 + 32) = v10;
    v16 = v10;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[148] = v17;
    *v17 = v18;
    v17[1] = sub_2697673F0;
    OUTLINED_FUNCTION_76_2();

    return MEMORY[0x2821BB478](v19);
  }
}

uint64_t sub_2697673F0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 672));
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2697674F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  sub_26976FCC8(*(v11 + 880), type metadata accessor for VideoDataModels.ButtonModel);
  v13 = OUTLINED_FUNCTION_52_1();
  v14(v13);

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_16_15();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_75_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_2697675C8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697676C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  v12 = OUTLINED_FUNCTION_52_1();
  v13(v12);

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_16_15();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_75_1();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_269767784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  v25 = v22[133];
  v26 = v22[127];
  v27 = v22[126];
  v28 = v22[118];
  v29 = v22[115];

  __swift_destroy_boxed_opaque_existential_0(v22 + 74);
  v26(v28, v27, v29);
  v30 = v25;
  v31 = sub_2698548B4();
  LOBYTE(v29) = sub_269854F24();

  if (os_log_type_enabled(v31, v29))
  {
    v32 = v22[133];
    a9 = v22[129];
    OUTLINED_FUNCTION_40_4();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_1();
    v34 = swift_slowAlloc();
    a10 = v34;
    *v33 = 136315138;
    v22[101] = v32;
    v35 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v36 = sub_269854AE4();
    v38 = sub_26974F520(v36, v37, &a10);

    *(v33 + 4) = v38;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    v44 = OUTLINED_FUNCTION_22_3();
    a9(v44);
  }

  else
  {
    v45 = v22[129];

    v46 = OUTLINED_FUNCTION_22_3();
    v45(v46);
  }

  v47 = v22[133];
  v48 = v22[122];
  v49 = v22[107];
  __swift_project_boxed_opaque_existential_1((v49 + 152), *(v49 + 176));
  sub_2697B426C();
  sub_26976FC28(v49 + 352, (v22 + 2));
  v50 = v47;
  sub_269795A18(0);

  sub_269759494((v22 + 2));
  swift_willThrow();

  OUTLINED_FUNCTION_27_9();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269767A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 1152);
  LODWORD(v32) = *(v28 + 325);
  v33 = *(v28 + 324);
  v34 = *(v28 + 1128);
  v61 = *(v28 + 1120);
  v35 = OUTLINED_FUNCTION_71_2();
  v36(v35);
  v37 = v31;
  v38 = sub_2698548B4();
  v39 = sub_269854F24();

  if (os_log_type_enabled(v38, v39))
  {
    a12 = *(v28 + 1032);
    a13 = *(v28 + 1072);
    a10 = *(v28 + 920);
    a11 = *(v28 + 936);
    OUTLINED_FUNCTION_40_4();
    v40 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_1();
    HIDWORD(a14) = v32;
    v32 = swift_slowAlloc();
    a16 = v32;
    *v40 = 136315138;
    *(v28 + 816) = v31;
    v41 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v42 = sub_269854AE4();
    v43 = v33;
    v45 = v34;
    v46 = sub_26974F520(v42, v44, &a16);

    *(v40 + 4) = v46;
    v34 = v45;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v47, v48, "PlayVideoHandleIntentFlowStrategy.makeIntentHandledResponse makeDialogForPlayVideoHandled() failed with error: %s");
    __swift_destroy_boxed_opaque_existential_0(v32);
    LOBYTE(v32) = BYTE4(a14);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    a12(a11, a10);
  }

  else
  {
    v39 = *(v28 + 1072);
    v49 = *(v28 + 1032);
    v43 = *(v28 + 920);

    v50 = OUTLINED_FUNCTION_34_0();
    v49(v50);
  }

  OUTLINED_FUNCTION_94_1();
  v51 = v31;
  sub_269795A18(0);

  sub_269759494(v28 + 176);
  swift_willThrow();

  if (!v43)
  {
    OUTLINED_FUNCTION_100_0();
    *(v28 + 448) = v34;
    *(v28 + 456) = v61;
    *(v28 + 464) = v33;
    *(v28 + 465) = v32;
    sub_2696C285C(v28 + 400);
  }

  OUTLINED_FUNCTION_27_9();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_84();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, v61, a16, a17, a18, a19, a20);
}

uint64_t sub_269767C58()
{
  OUTLINED_FUNCTION_2_7();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[19] = v5;
  v1[20] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324210, &qword_26985F1D0);
  OUTLINED_FUNCTION_8_9(v7);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v8 = sub_2698548D4();
  v1[26] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[27] = v9;
  v1[28] = OUTLINED_FUNCTION_37_0();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_269767D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t), void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_92_0();
  v17 = [*(v16 + 168) isEntitled];
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  v18 = sub_269855044();
  v19 = v18;
  if (!v17)
  {

LABEL_5:
    v21 = sub_269792920();
    if ((v21 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_22_3();
  v20 = sub_269855064();

  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    v21 = swift_once();
  }

  v22 = *(v16 + 272);
  v23 = *(v16 + 216);
  *(v16 + 280) = OUTLINED_FUNCTION_29_2(v21, qword_28033D910);
  v24 = *(v23 + 16);
  *(v16 + 288) = v24;
  *(v16 + 296) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  a10 = v25;
  a11 = v24;
  (v24)(v22);
  v26 = sub_2698548B4();
  v27 = sub_269854F04();
  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_9_17();
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_269684000, v26, v27, "User not entitled on remote device or Matchpoint destination, checking entitlement on source device.", v28, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v29 = *(v16 + 216);
  v30 = *(v16 + 176);
  a13 = *(v16 + 184);

  *(v16 + 304) = *(v29 + 8);
  v31 = OUTLINED_FUNCTION_44_0();
  a12 = v32;
  v32(v31);
  sub_2696A73F8(v30, v16 + 16);
  v33 = *(v16 + 40);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v16 + 16, v33);
  OUTLINED_FUNCTION_3_20();
  v36 = v35;
  v37 = OUTLINED_FUNCTION_4_7();
  (*(v36 + 16))(v37, v34, v33);
  *(v16 + 80) = &type metadata for ContentResolver;
  *(v16 + 88) = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v38 = swift_allocObject();
  *(v16 + 56) = v38;
  v39 = *(v37 + 32);
  v40 = *(v37 + 16);
  *(v38 + 16) = *v37;
  *(v38 + 32) = v40;
  *(v38 + 48) = v39;
  type metadata accessor for BackgroundPlayableFetch();
  v41 = swift_allocObject();
  *(v16 + 312) = v41;
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v16 + 56, &type metadata for ContentResolver);
  OUTLINED_FUNCTION_3_20();
  v44 = v43;
  v45 = OUTLINED_FUNCTION_4_7();
  (*(v44 + 16))(v45, v42, &type metadata for ContentResolver);
  *(v16 + 120) = &type metadata for ContentResolver;
  *(v16 + 128) = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v46 = swift_allocObject();
  *(v16 + 96) = v46;
  v47 = *(v45 + 32);
  v48 = *(v45 + 16);
  *(v46 + 16) = *v45;
  *(v46 + 32) = v48;
  *(v46 + 48) = v47;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803241A0, &qword_26985F1E0);
  sub_2696B2880();
  v49 = MEMORY[0x277D84F90];
  *(v41 + 152) = sub_269854A04();
  sub_26968E5D4((v16 + 96), v41 + 112);
  __swift_destroy_boxed_opaque_existential_0((v16 + 56));

  __swift_destroy_boxed_opaque_existential_0((v16 + 16));

  *(v16 + 320) = sub_269854614();
  *(v16 + 328) = v50;
  if (v50)
  {
    v51 = [*(v16 + 160) content];
    if (v51)
    {
      *(v16 + 336) = sub_26978571C(v51);
      *(v16 + 344) = v52;
      if (v52)
      {
        v53 = sub_26977DBE4(*(v16 + 160));
        if (v53)
        {
          v54 = v53;
        }

        else
        {
          v54 = v49;
        }

        if (*(v54 + 16))
        {
          v55 = *(v54 + 40);
        }

        else
        {
          v55 = 0;
        }

        *(v16 + 352) = v55;

        swift_task_alloc();
        OUTLINED_FUNCTION_23_2();
        *(v16 + 360) = v92;
        *v92 = v93;
        v92[1] = sub_2697683F0;
        OUTLINED_FUNCTION_7_8();

        return sub_2697C0978();
      }
    }

    v56 = *(v16 + 248);
    v57 = *(v16 + 208);

    a11(v56, a10, v57);
    v58 = sub_2698548B4();
    sub_269854F24();
    v59 = OUTLINED_FUNCTION_62_1();
    if (os_log_type_enabled(v59, v60))
    {
      OUTLINED_FUNCTION_9_17();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v61, v62, v63, v64, v65, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }
  }

  else
  {
    v66 = *(v16 + 184);
    a11(*(v16 + 240), a10, *(v16 + 208));
    v67 = v66;
    v58 = sub_2698548B4();
    v68 = sub_269854F24();

    if (os_log_type_enabled(v58, v68))
    {
      v69 = *(v16 + 184);
      OUTLINED_FUNCTION_40_4();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      *(v70 + 4) = v69;
      *v71 = v69;
      v72 = v69;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
      sub_26969B0C0(v71, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }
  }

  v78 = OUTLINED_FUNCTION_44_0();
  a12(v78);
LABEL_25:
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  OUTLINED_FUNCTION_15_16();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v84(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2697683F0()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v3 + 368) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26976852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_49();
  if (*(v10[25] + 16) == 1)
  {
    OUTLINED_FUNCTION_95_1((v10[24] + 432), *(v10[24] + 456));
    v11 = swift_task_alloc();
    v10[47] = v11;
    *v11 = v10;
    v11[1] = sub_26976870C;
    OUTLINED_FUNCTION_44_4(v10[40]);
    OUTLINED_FUNCTION_76_2();

    return sub_269760410(v12, v13);
  }

  else
  {

    v16 = sub_269792920();

    v17 = v10[25];
    v18 = v10[19];
    if (v16)
    {
      v19 = *(_s8PlayableVMa(0) + 24);
      v20 = sub_269851C74();
      OUTLINED_FUNCTION_4_3();
      (*(v21 + 16))(v18, v17 + v19, v20);
      OUTLINED_FUNCTION_9_20();
      sub_26976FCC8(v17, v22);
      OUTLINED_FUNCTION_55_1();
    }

    else
    {
      sub_26969B0C0(v10[25], &unk_280324210, &qword_26985F1D0);
      sub_269851C74();
      OUTLINED_FUNCTION_57();
    }

    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    OUTLINED_FUNCTION_15_16();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_76_2();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

uint64_t sub_26976870C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v3 + 384) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26976880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  (*(v22 + 288))(*(v22 + 264), *(v22 + 280), *(v22 + 208));

  v25 = sub_2698548B4();
  v26 = sub_269854F04();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v22 + 328);
  if (v27)
  {
    v29 = *(v22 + 320);
    a9 = *(v22 + 264);
    a10 = *(v22 + 304);
    v30 = *(v22 + 208);
    OUTLINED_FUNCTION_40_4();
    v31 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_1();
    v32 = swift_slowAlloc();
    a11 = v32;
    *v31 = 136315138;
    v33 = sub_26974F520(v29, v28, &a11);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_269684000, v25, v26, "AirPlaying from source device instead of playing from remote device: %s.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    a10(a9, v30);
  }

  else
  {
    v34 = *(v22 + 304);

    v35 = OUTLINED_FUNCTION_22_3();
    v34(v35);
  }

  v36 = *(v22 + 200);
  v37 = *(v22 + 152);
  v38 = *(_s8PlayableVMa(0) + 24);
  v39 = sub_269851C74();
  OUTLINED_FUNCTION_4_3();
  (*(v40 + 16))(v37, v36 + v38, v39);
  OUTLINED_FUNCTION_9_20();
  sub_26976FCC8(v36, v41);
  OUTLINED_FUNCTION_55_1();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  OUTLINED_FUNCTION_15_16();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269768A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_6();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_92_0();
  a22 = v24;
  v27 = *(v24 + 384);
  (*(v24 + 288))(*(v24 + 256), *(v24 + 280), *(v24 + 208));
  v28 = v27;
  v29 = sub_2698548B4();
  v30 = sub_269854F04();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v24 + 384);
    a11 = *(v24 + 256);
    a12 = *(v24 + 304);
    a10 = *(v24 + 208);
    OUTLINED_FUNCTION_40_4();
    v32 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_1();
    v33 = swift_slowAlloc();
    a13 = v33;
    *v32 = 136315138;
    *(v24 + 144) = v31;
    v34 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v35 = sub_269854AE4();
    v37 = sub_26974F520(v35, v36, &a13);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_269684000, v29, v30, "Error while setting airplay destination: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    a12(a11, a10);
  }

  else
  {
    v38 = *(v24 + 304);

    v39 = OUTLINED_FUNCTION_34_0();
    v38(v39);
  }

  v40 = *(v24 + 200);
  v41 = *(v24 + 152);
  v42 = *(_s8PlayableVMa(0) + 24);
  v43 = sub_269851C74();
  OUTLINED_FUNCTION_4_3();
  (*(v44 + 16))(v41, v40 + v42, v43);
  OUTLINED_FUNCTION_9_20();
  sub_26976FCC8(v40, v45);
  OUTLINED_FUNCTION_55_1();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  OUTLINED_FUNCTION_15_16();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16);
}