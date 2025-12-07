uint64_t sub_1DC4153D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC415484();
  v6 = v10;
  if (!v10)
  {
    return sub_1DC28EB30(v9, &qword_1ECC7D950, qword_1DC52A118);
  }

  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 16))(a1, a2, a3, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

void sub_1DC415484()
{
  OUTLINED_FUNCTION_33();
  v66 = v2;
  v3 = sub_1DC515E1C();
  OUTLINED_FUNCTION_0();
  v63 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v62 = v7 - v6;
  OUTLINED_FUNCTION_12();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v64 = v9;
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  OUTLINED_FUNCTION_38_1();
  v20 = *(v19 + qword_1ECC8F590 + 160);
  v20();
  if (OUTLINED_FUNCTION_69_0(v18) == 1)
  {
LABEL_2:
    sub_1DC28EB30(v18, &unk_1ECC7D340, &qword_1DC525380);
    v21 = sub_1DC28D414();
    v22 = v64;
    v23 = v65;
    (*(v64 + 16))(v1, v21, v65);

    v24 = sub_1DC516F6C();
    v25 = sub_1DC517BAC();

    if (os_log_type_enabled(v24, v25))
    {
      v61 = v25;
      v26 = OUTLINED_FUNCTION_63();
      v60 = OUTLINED_FUNCTION_82();
      v67 = v60;
      *v26 = 136315138;
      v20();
      if (OUTLINED_FUNCTION_69_0(v14))
      {
        sub_1DC28EB30(v14, &unk_1ECC7D340, &qword_1DC525380);
        v27 = 0;
        v28 = 0xE000000000000000;
      }

      else
      {
        v53 = v62;
        v52 = v63;
        (*(v63 + 16))(v62, v14, v3);
        sub_1DC28EB30(v14, &unk_1ECC7D340, &qword_1DC525380);
        v27 = sub_1DC515E0C();
        v28 = v54;
        (*(v52 + 8))(v53, v3);
      }

      v55 = v64;
      v56 = sub_1DC291244(v27, v28, &v67);

      *(v26 + 4) = v56;
      _os_log_impl(&dword_1DC287000, v24, v61, "requestType %s should not receive CDM callback", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_54_12();

      (*(v55 + 8))(v1, v65);
    }

    else
    {

      (*(v22 + 8))(v1, v23);
    }

    goto LABEL_37;
  }

  v29 = OUTLINED_FUNCTION_117_0();
  sub_1DC28F308(v29, v30, v31, v32);
  v33 = OUTLINED_FUNCTION_115();
  v35 = v34(v33);
  if (v35 != *MEMORY[0x1E69D0548] && v35 != *MEMORY[0x1E69D0530] && v35 != *MEMORY[0x1E69D0510] && v35 != *MEMORY[0x1E69D0508])
  {
    if (v35 == *MEMORY[0x1E69D0538] || v35 == *MEMORY[0x1E69D0528] || v35 == *MEMORY[0x1E69D0558] || v35 == *MEMORY[0x1E69D0540] || v35 == *MEMORY[0x1E69D0560])
    {
      goto LABEL_2;
    }

    if (v35 == *MEMORY[0x1E69D0518])
    {
      v48 = (*(*v0 + qword_1ECC8F590 + 256))();
      v49 = v48;
      if (v48)
      {
        v48 = type metadata accessor for DictationNLRequestHandler();
        v50 = &off_1F57FF3F0;
        v51 = v66;
      }

      else
      {
        v50 = 0;
        v51 = v66;
        v66[1] = 0;
        v51[2] = 0;
      }

      *v51 = v49;
      v51[3] = v48;
      v51[4] = v50;
      sub_1DC28EB30(v18, &unk_1ECC7D340, &qword_1DC525380);
      goto LABEL_38;
    }

    if (v35 != *MEMORY[0x1E69D0550])
    {
      v58 = OUTLINED_FUNCTION_115();
      v59(v58);
      goto LABEL_2;
    }
  }

  v39 = sub_1DC28EB30(v18, &unk_1ECC7D340, &qword_1DC525380);
  v40 = (*(*v0 + qword_1ECC8F590 + 232))(v39);
  if (!v40)
  {
LABEL_37:
    v57 = v66;
    v66[4] = 0;
    *v57 = 0u;
    *(v57 + 1) = 0u;
    goto LABEL_38;
  }

  v41 = v40;
  v42 = type metadata accessor for AssistantNLRequestHandler(0);
  v43 = v66;
  v66[3] = v42;
  v43[4] = &off_1F57FB588;
  *v43 = v41;
LABEL_38:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC415AE0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC7BCF0));
  sub_1DC28EB30(v0 + qword_1ECC8F5E0, &unk_1ECC7D340, &qword_1DC525380);
  sub_1DC28EB30(v0 + qword_1ECC8F5C8, &qword_1ECC7D948, &unk_1DC52A108);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC8F5D8));

  v1 = qword_1ECC8F5D0;
  sub_1DC5162DC();
  OUTLINED_FUNCTION_35();
  (*(v2 + 8))(v0 + v1);
}

uint64_t sub_1DC4163C8()
{
  v1 = *(sub_1DC51373C() - 8);
  v2 = *(v1 + 80);
  return (*(**(v0 + 16) + qword_1ECC8F590 + 600))(v0 + ((v2 + 24) & ~v2), *(v0 + ((v2 + 24) & ~v2) + *(v1 + 64)));
}

void sub_1DC41648C(uint64_t a1)
{
  sub_1DC416628(319, &qword_1ECC7BB38, MEMORY[0x1E69D0568]);
  if (v1 <= 0x3F)
  {
    sub_1DC416628(319, &qword_1ECC7BB30, MEMORY[0x1E69D06D8]);
    if (v2 <= 0x3F)
    {
      sub_1DC5162DC();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1DC416628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DC517D8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DC416690()
{
  OUTLINED_FUNCTION_6_28();
  v5 = (*MEMORY[0x1E6985F80] + MEMORY[0x1E6985F80]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F200;
  v3 = OUTLINED_FUNCTION_16();

  return v5(v3);
}

uint64_t sub_1DC41674C(uint64_t a1)
{
  v2 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  v11 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v11);
  v17 = OUTLINED_FUNCTION_16();
  v19 = v18(v17);
  if (v19 == *MEMORY[0x1E69D02D0])
  {
    v20 = OUTLINED_FUNCTION_16();
    v21(v20);
    return 1;
  }

  else if (v19 == *MEMORY[0x1E69D02C8])
  {
    v23 = OUTLINED_FUNCTION_16();
    result = v24(v23);
    v25 = 0;
    v26 = *v16;
    v27 = *(*v16 + 16);
    v39 = v4 + 16;
    v40 = v27;
    v28 = *MEMORY[0x1E69D0330];
    while (1)
    {
      if (v40 == v25)
      {

        return 0;
      }

      if (v25 >= *(v26 + 16))
      {
        break;
      }

      (*(v4 + 16))(v10, v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v2);
      (*(v4 + 32))(v8, v10, v2);
      v29 = OUTLINED_FUNCTION_36();
      if (v30(v29) == v28)
      {

        v37 = OUTLINED_FUNCTION_36();
        v38(v37);
        return 1;
      }

      ++v25;
      v31 = OUTLINED_FUNCTION_36();
      result = v32(v31);
    }

    __break(1u);
  }

  else
  {
    if (v19 == *MEMORY[0x1E69D02E0] || (v19 != *MEMORY[0x1E69D02D8] ? (v33 = v19 == *MEMORY[0x1E69D02F8]) : (v33 = 1), !v33 ? (v34 = v19 == *MEMORY[0x1E69D02F0]) : (v34 = 1), !v34))
    {
      v35 = OUTLINED_FUNCTION_16();
      v36(v35);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DC416A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC416A94()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0[6]) + 0x68))(v0[3]))
  {
    v2 = v0[6];
    v3 = sub_1DC517B8C();
    v0[7] = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v4 = sub_1DC296DBC();
    sub_1DC516F0C(v3, &dword_1DC287000, v4, "Emitting experiment trigger logging", 35, 2, MEMORY[0x1E69E7CC0]);

    v5 = *((*v1 & *v2) + 0x78);
    v13 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1DC416CC4;
    v7 = v0[5];
    v8 = v0[4];

    return v13(v8, v7);
  }

  else
  {
    v10 = v0[2];
    v11 = sub_1DC5157EC();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    OUTLINED_FUNCTION_2_2();

    return v12();
  }
}

uint64_t sub_1DC416CC4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;
  *(v4 + 72) = v0;

  if (v0)
  {
    v5 = sub_1DC416E24;
  }

  else
  {
    v5 = sub_1DC416DC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DC416DC8()
{
  OUTLINED_FUNCTION_1_0();
  sub_1DC41744C(*(v0 + 16));
  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC416E24(uint64_t a1)
{
  v2 = sub_1DC517BAC();
  v3 = sub_1DC296DBC();
  v4 = os_log_type_enabled(v3, v2);
  v5 = *(v1 + 72);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DC287000, v3, v2, "Error emitting experiment trigger logging: %@; bypassing experiment", v6, 0xCu);
    sub_1DC3040B4(v7);
    MEMORY[0x1E1298840](v7, -1, -1);
    MEMORY[0x1E1298840](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v1 + 16);
  v11 = sub_1DC5157EC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  OUTLINED_FUNCTION_2_2();

  return v12();
}

uint64_t sub_1DC416F78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC416F90()
{
  sub_1DC298C74(0, &qword_1ECC7B928, 0x1E696AFB0);
  v1 = sub_1DC4173D8(0xD000000000000024, 0x80000001DC547190);
  v0[5] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[2];
    v3 = v0[3];

    v5 = sub_1DC4173D8(v4, v3);
    v0[6] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = (v0[4] + OBJC_IVAR___NLRouterExperimentTrialController_experimentationAnalyticsManager);
      v8 = v7[3];
      v9 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v8);
      OUTLINED_FUNCTION_10_26(v9);
      v19 = (v10 + *v10);
      v11 = swift_task_alloc();
      v0[7] = v11;
      *v11 = v0;
      v11[1] = sub_1DC417214;

      return v19(v2, 0xD00000000000001CLL, 0x80000001DC547140, v6, v8, v9);
    }
  }

  v13 = sub_1DC517BAC();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v14 = sub_1DC296DBC();
  sub_1DC516F0C(v13, &dword_1DC287000, v14, "Unable to convert strings to UUIDs, preventing trigger logging.", 63, 2, MEMORY[0x1E69E7CC0]);

  sub_1DC41783C(v15, v16, v17);
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_2_2();

  return v18();
}

uint64_t sub_1DC417214()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_1DC417378;
  }

  else
  {
    v5 = sub_1DC417318;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DC417318()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC417378()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

id sub_1DC4173D8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DC5176FC();

  v4 = [v2 initWithUUIDString_];

  return v4;
}

uint64_t sub_1DC41744C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR___NLRouterExperimentTrialController_suppressRewrite) == 1)
  {
    v3 = *MEMORY[0x1E69D02D8];
    v4 = sub_1DC5157EC();
    (*(*(v4 - 8) + 104))(a1, v3, v4);
    v5 = a1;
    v6 = 0;
    v7 = v4;
  }

  else
  {
    v7 = sub_1DC5157EC();
    v5 = a1;
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
}

id NLRouterExperimentTrialController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRouterExperimentTrialController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC4175C4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0x78);
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_33_0(v2);
  *v3 = v4;
  v3[1] = sub_1DC29F120;
  v5 = OUTLINED_FUNCTION_36();

  return v7(v5);
}

uint64_t sub_1DC4176F8()
{
  OUTLINED_FUNCTION_6_28();
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v10 = (v5 + *v5);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_33_0(v6);
  *v7 = v8;
  v7[1] = sub_1DC29F120;

  return v10(v4, v3, v2, v0);
}

unint64_t sub_1DC41783C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D968;
  if (!qword_1ECC7D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D968);
  }

  return result;
}

unint64_t sub_1DC417894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D970;
  if (!qword_1ECC7D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D970);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLRouterExperimentTrialController.ExperimentError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_1DC4179AC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1DC346A1C(0xD000000000000012, 0x80000001DC53E160);
  if (!result)
  {
    result = sub_1DC51801C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC417A58()
{
  if (_MergedGlobals_19 != -1)
  {
    OUTLINED_FUNCTION_0_59(&_MergedGlobals_19);
  }

  swift_beginAccess();
  v3[0] = xmmword_1EDAC95C0;
  v3[1] = *&byte_1EDAC95D0;
  v3[2] = xmmword_1EDAC95E0;
  v4 = qword_1EDAC95F0;
  sub_1DC417FF0(v3, &v2, &qword_1ECC7D978, &qword_1DC52A348);
  v0 = sub_1DC417B1C();
  sub_1DC2BE530(v3, &qword_1ECC7D978, &qword_1DC52A348);
  return v0 & 1;
}

uint64_t sub_1DC417B1C()
{
  v1 = *(v0 + 48);
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = sub_1DC5176FC();
  v5 = [v1 objectForKey_];

  if (v5)
  {
    sub_1DC517E8C();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v31[0] = v28;
  v31[1] = v29;
  v6 = sub_1DC517BBC();
  v7 = *(v0 + 24);
  sub_1DC417FF0(v31, v30, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (os_log_type_enabled(v7, v6))
  {
    sub_1DC417FF0(v0, &v28, &qword_1ECC7D978, &qword_1DC52A348);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315650;
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);

    v12 = sub_1DC291244(v11, v10, &v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;

    sub_1DC2BE530(v0, &qword_1ECC7D978, &qword_1DC52A348);
    v13 = sub_1DC291244(v3, v2, &v27);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    sub_1DC417FF0(v30, &v28, &qword_1ECC7D3F0, &qword_1DC5238B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3F0, &qword_1DC5238B0);
    v14 = sub_1DC51777C();
    v16 = v15;
    sub_1DC2BE530(v30, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v17 = sub_1DC291244(v14, v16, &v27);

    *(v8 + 24) = v17;
    _os_log_impl(&dword_1DC287000, v7, v6, "defaults read %s %s -> %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1298840](v9, -1, -1);
    MEMORY[0x1E1298840](v8, -1, -1);
  }

  else
  {
    sub_1DC2BE530(v30, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  sub_1DC417FF0(v31, &v28, &qword_1ECC7D3F0, &qword_1DC5238B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3F0, &qword_1DC5238B0);
  if (swift_dynamicCast())
  {
    sub_1DC2BE530(v31, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v18 = v30[0];
  }

  else
  {
    v19 = sub_1DC517BBC();
    v18 = *(v0 + 16);
    if (os_log_type_enabled(v7, v19))
    {
      sub_1DC417FF0(v0, &v28, &qword_1ECC7D978, &qword_1DC52A348);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v28 = v21;
      *v20 = 136315138;
      v30[0] = v18;
      v22 = sub_1DC51777C();
      v24 = v23;
      sub_1DC2BE530(v0, &qword_1ECC7D978, &qword_1DC52A348);
      v25 = sub_1DC291244(v22, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1DC287000, v7, v19, "value not set, returning default of %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E1298840](v21, -1, -1);
      MEMORY[0x1E1298840](v20, -1, -1);
    }

    sub_1DC2BE530(v31, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  return v18 & 1;
}

id sub_1DC417F44()
{
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v0 = sub_1DC2C0F8C();
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  result = sub_1DC4179AC();
  byte_1EDAC95D0 = 1;
  *&xmmword_1EDAC95C0 = 0xD000000000000014;
  *(&xmmword_1EDAC95C0 + 1) = 0x80000001DC5472D0;
  qword_1EDAC95D8 = v0;
  *&xmmword_1EDAC95E0 = 0xD000000000000012;
  *(&xmmword_1EDAC95E0 + 1) = 0x80000001DC53E160;
  qword_1EDAC95F0 = result;
  return result;
}

uint64_t sub_1DC417FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

uint64_t sub_1DC41806C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DC4181C4(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v20 = (a1 + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = OUTLINED_FUNCTION_43();
      bzero(v18, v19);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

void *sub_1DC4183F4()
{
  v1 = OBJC_IVAR___CDMNluRequest_objcProto;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DC41849C(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluRequest_objcProto;
  OUTLINED_FUNCTION_142(v1 + OBJC_IVAR___CDMNluRequest_objcProto, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC4184EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

void sub_1DC418548(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1DC41849C(v1);
}

uint64_t sub_1DC4185CC(uint64_t a1)
{
  v2 = sub_1DC51373C();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1DC418718(v4);
}

uint64_t sub_1DC418698@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CDMNluRequest_swiftProto;
  swift_beginAccess();
  sub_1DC51373C();
  OUTLINED_FUNCTION_35();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_1DC418718(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluRequest_swiftProto;
  swift_beginAccess();
  sub_1DC51373C();
  OUTLINED_FUNCTION_35();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id CDMNluRequest.init(objcProto:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C340, &qword_1DC5230C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26[-v6];
  v8 = sub_1DC51373C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR___CDMNluRequest_objcProto;
  *&v2[v12] = [objc_allocWithZone(MEMORY[0x1E69D1150]) init];
  v13 = OBJC_IVAR___CDMNluRequest_swiftProto;
  sub_1DC51372C();
  OUTLINED_FUNCTION_142(&v2[v12], v29);
  v14 = *&v2[v12];
  *&v2[v12] = a1;
  v15 = a1;

  v16 = v15;
  v17 = sub_1DC30EB38(v16);
  if (v18 >> 60 == 15)
  {
    v19 = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v20 = sub_1DC2C0F8C();
    sub_1DC516F0C(v19, &dword_1DC287000, v20, "Unable to get passed in objcProto.data", 38, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v21 = v17;
    v22 = v18;
    v27 = 0;
    memset(&v26[16], 0, 32);
    sub_1DC2A6784(v17, v18);
    sub_1DC5166FC();
    sub_1DC4191A0();
    sub_1DC51677C();
    sub_1DC301FE0(v21, v22);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
    swift_beginAccess();
    (*(v9 + 40))(&v2[v13], v11, v8);
    swift_endAccess();
  }

  v23 = type metadata accessor for CDMNluRequest(0);
  v28.receiver = v2;
  v28.super_class = v23;
  v24 = objc_msgSendSuper2(&v28, sel_init);

  return v24;
}

id CDMNluRequest.init(swiftProto:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CDMNluRequest_objcProto;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69D1150]) init];
  v5 = OBJC_IVAR___CDMNluRequest_swiftProto;
  sub_1DC51372C();
  swift_beginAccess();
  v6 = sub_1DC51373C();
  v7 = *(v6 - 8);
  (*(v7 + 24))(&v2[v5], a1, v6);
  swift_endAccess();
  sub_1DC4191A0();
  v10 = sub_1DC51678C();
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x1E69D1150]);
  v14 = sub_1DC339190(v10, v12);
  if (v14)
  {
    v15 = v14;
    OUTLINED_FUNCTION_142(&v2[v4], v19);
    v9 = *&v2[v4];
    *&v2[v4] = v15;
  }

  else
  {
    v8 = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v9 = sub_1DC2C0F8C();
    sub_1DC516F0C(v8, &dword_1DC287000, v9, "Unable to deserialize to Obj-C SIRINLUEXTERNALCDMNluRequest version", 67, 2, MEMORY[0x1E69E7CC0]);
  }

  v18.receiver = v2;
  v18.super_class = type metadata accessor for CDMNluRequest(0);
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v7 + 8))(a1, v6);
  return v16;
}

char *CDMNluRequest.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___CDMNluRequest_objcProto;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69D1150]) init];
  sub_1DC51372C();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for CDMNluRequest(0);
  v4 = objc_msgSendSuper2(&v11, sel_init);
  sub_1DC298C74(0, &qword_1ECC7C4E0, 0x1E69D1150);
  v5 = v4;
  v6 = sub_1DC517D3C();

  v7 = OBJC_IVAR___CDMNluRequest_objcProto;
  OUTLINED_FUNCTION_142(&v5[OBJC_IVAR___CDMNluRequest_objcProto], v10);
  v8 = *&v5[v7];
  *&v5[v7] = v6;

  return v5;
}

void sub_1DC418F1C(void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))();
  v4 = sub_1DC5176FC();
  [a1 encodeObject:v3 forKey:v4];
}

id CDMNluRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDMNluRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMNluRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CDMNluRequest(uint64_t a1)
{
  result = qword_1EDAC9640;
  if (!qword_1EDAC9640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DC4191A0()
{
  result = qword_1EDAC8030;
  if (!qword_1EDAC8030)
  {
    sub_1DC51373C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC8030);
  }

  return result;
}

uint64_t sub_1DC4191F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C340, &qword_1DC5230C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC419268(uint64_t a1)
{
  result = sub_1DC51373C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DC4193F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DC51808C();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DC419450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D988;
  if (!qword_1ECC7D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D988);
  }

  return result;
}

uint64_t sub_1DC4194A4(char a1, char a2)
{
  v3 = sub_1DC2A0C80(a1);
  v5 = v4;
  if (v3 == sub_1DC2A0C80(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC419530(char a1)
{
  sub_1DC5182FC();
  sub_1DC2A0C80(a1);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC41959C(uint64_t a1, char a2)
{
  sub_1DC2A0C80(a2);
  sub_1DC51769C();
}

uint64_t sub_1DC4195F8(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC2A0C80(a2);
  sub_1DC51769C();

  return sub_1DC51833C();
}

unint64_t sub_1DC419658@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC4193F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DC419688@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DC2A0C80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NLInsightRequestSummaryMessageDescription(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC419790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v100 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v104 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v99 = v6 - v5;
  OUTLINED_FUNCTION_12();
  v7 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v105 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v98 = v10;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v80 - v12;
  OUTLINED_FUNCTION_12();
  v101 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v93 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v92 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v96 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v91 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v80 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v80 - v26;
  v28 = OUTLINED_FUNCTION_12();
  v29 = type metadata accessor for NLRouterNLParseResponse(v28);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v82 = (v32 - v31);
  OUTLINED_FUNCTION_12();
  v33 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v87 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  v39 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v40 = sub_1DC2BE518();
  v41 = OUTLINED_FUNCTION_130();
  v86 = v38;
  v85 = v39;
  sub_1DC2A2ED0("HeuristicRules.TranslationRule", 30, 2, v40, v41 & 1, v38);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v42 = sub_1DC346280();
  v44 = v43;
  if (v42 == sub_1DC313520(1) && v44 == v45)
  {
  }

  else
  {
    v47 = sub_1DC51825C();

    if ((v47 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v48 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v84 + *(v48 + 32), v24, &qword_1ECC7C158, &unk_1DC5234A0);
  v49 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v49) == 1)
  {
    sub_1DC28EB30(v24, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v29);
LABEL_11:
    sub_1DC28EB30(v27, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_12:
    v50 = 1;
LABEL_13:
    v51 = sub_1DC5157EC();
    __swift_storeEnumTagSinglePayload(a2, v50, 1, v51);
    v52 = sub_1DC2BE518();
    v53 = v86;
    sub_1DC2B8848(v86, "HeuristicRules.TranslationRule", 30, 2, v52);

    return (*(v87 + 8))(v53, v33);
  }

  sub_1DC28F358(v24, v27, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v24, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v27, 1, v29) == 1)
  {
    goto LABEL_11;
  }

  v80 = v33;
  v81 = a2;
  v55 = v82;
  result = sub_1DC2E53A4(v27, v82);
  v56 = 0;
  v57 = *v55;
  v58 = v92;
  v107 = v93 + 16;
  v59 = *(v57 + 16);
  v89 = v96 + 16;
  v90 = v59;
  v106 = (v93 + 8);
  v97 = v104 + 8;
  v88 = (v96 + 8);
  v60 = v101;
  v61 = v91;
  v83 = v57;
  v102 = (v105 + 8);
  while (1)
  {
    if (v56 == v90)
    {
      OUTLINED_FUNCTION_3_16();
      v50 = 1;
      a2 = v81;
LABEL_31:
      v33 = v80;
      goto LABEL_13;
    }

    if (v56 >= *(v57 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_24();
    (*(v63 + 16))(v61, v57 + v62 + *(v63 + 72) * v56, v58);
    v64 = sub_1DC5111AC();
    v65 = *(v64 + 16);
    if (v65)
    {
      v94 = v56;
      v95 = v64;
      OUTLINED_FUNCTION_24();
      v68 = v66 + v67;
      v70 = *(v69 + 72);
      v71 = *(v69 + 16);
      v104 = v71;
      v105 = v70;
      while (1)
      {
        (v71)(v17, v68, v60);
        if ((sub_1DC5114CC() & 1) == 0)
        {
          goto LABEL_23;
        }

        v72 = v103;
        sub_1DC51154C();
        v73 = sub_1DC51177C();
        v74 = *v102;
        (*v102)(v72, v7);
        if ((v73 & 1) == 0)
        {
          break;
        }

        v75 = v98;
        sub_1DC51154C();
        sub_1DC51178C();
        v74(v75, v7);
        sub_1DC5138FC();
        v76 = OUTLINED_FUNCTION_8_23();
        v77(v76);
        v78 = sub_1DC41A028();

        v79 = v101;
        (*v106)(v17, v101);
        v60 = v79;
        v71 = v104;
        v70 = v105;
        if (v78)
        {

          (*v88)(v91, v92);
          type metadata accessor for HeuristicRoutingRequest(0);
          a2 = v81;
          sub_1DC32CDF4();
          OUTLINED_FUNCTION_3_16();
          v50 = 0;
          goto LABEL_31;
        }

LABEL_24:
        v68 += v70;
        if (!--v65)
        {

          v61 = v91;
          v58 = v92;
          v56 = v94;
          v57 = v83;
          goto LABEL_29;
        }
      }

      v71 = v104;
      v70 = v105;
LABEL_23:
      (*v106)(v17, v60);
      goto LABEL_24;
    }

LABEL_29:
    ++v56;
    result = (*v88)(v61, v58);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DC41A028()
{
  sub_1DC514ECC();
  OUTLINED_FUNCTION_0();
  v50 = v2;
  v51 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v49 = v4 - v3;
  OUTLINED_FUNCTION_12();
  v58 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v48 = v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = sub_1DC514E3C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v53 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_15();
  v54 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  v55 = &v47 - v23;
  v52 = v0;
  result = sub_1DC514EEC();
  v25 = result;
  v26 = 0;
  v27 = *(result + 16);
  v56 = (v14 + 8);
  v57 = (v6 + 8);
  while (1)
  {
    if (v27 == v26)
    {

      v35 = 1;
      v36 = v55;
      goto LABEL_13;
    }

    if (v26 >= *(v25 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_24();
    v29 = v12;
    (*(v14 + 16))(v19, v25 + v28 + *(v14 + 72) * v26, v12);
    sub_1DC514E0C();
    v30 = sub_1DC514E6C();
    v32 = v31;
    (*v57)(v11, v58);
    if (v30 == 1802723700 && v32 == 0xE400000000000000)
    {
      break;
    }

    v34 = sub_1DC51825C();

    if (v34)
    {
      goto LABEL_12;
    }

    v12 = v29;
    result = (*v56)(v19, v29);
    ++v26;
  }

LABEL_12:

  v36 = v55;
  v12 = v29;
  (*(v14 + 32))(v55, v19, v29);
  v35 = 0;
LABEL_13:
  v37 = v54;
  __swift_storeEnumTagSinglePayload(v36, v35, 1, v12);
  sub_1DC28F358(v36, v37, &qword_1ECC7C1A0, &qword_1DC522F80);
  if (__swift_getEnumTagSinglePayload(v37, 1, v12) == 1)
  {
    sub_1DC28EB30(v36, &qword_1ECC7C1A0, &qword_1DC522F80);
    v38 = 0;
    v36 = v37;
LABEL_18:
    sub_1DC28EB30(v36, &qword_1ECC7C1A0, &qword_1DC522F80);
    return v38 & 1;
  }

  (*(v14 + 32))(v53, v37, v12);
  v39 = sub_1DC514EFC();
  result = sub_1DC514E1C();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (result < *(v39 + 16))
  {
    v41 = v49;
    v40 = v50;
    OUTLINED_FUNCTION_24();
    v44 = v12;
    v45 = v51;
    (*(v40 + 16))(v41, v39 + v42 + *(v40 + 72) * v43, v51);

    v46 = v48;
    sub_1DC514EBC();
    sub_1DC514E6C();
    (*v57)(v46, v58);
    v38 = sub_1DC51795C();

    (*(v40 + 8))(v41, v45);
    (*v56)(v53, v44);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DC41A560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v84 = type metadata accessor for TurnSummary.ExecutionSource(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v76 = v5 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB8, &unk_1DC52A4C0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v6);
  v85 = v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v72 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v86 = v72 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v82 = v72 - v16;
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  v78 = v18;
  v79 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v90 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v80 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = sub_1DC515F3C();
  OUTLINED_FUNCTION_0();
  v77 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v88 = v34;
  v89 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v38 = sub_1DC2BE518();
  v39 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.FollowLastTurnRoutingDecisionRule", 48, 2, v38, v39 & 1, v37);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC344140() & 1) == 0)
  {
    v55 = sub_1DC517B9C();
    v56 = sub_1DC2BE518();
    sub_1DC516F0C(v55, &dword_1DC287000, v56, "[FollowLastTurnRoutingDecisionRule] rule is off", 47, 2, MEMORY[0x1E69E7CC0]);

    goto LABEL_22;
  }

  v40 = *(v87 + *(type metadata accessor for NLRouterServiceRequest(0) + 24));
  v41 = *(v40 + 16);
  if (!v41)
  {
LABEL_22:
    v54 = 1;
    goto LABEL_23;
  }

  v73 = v21;
  v74 = v10;
  v75 = a2;
  v42 = v40 + 48 * v41;
  v43 = *(v42 - 8);
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  v46 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);

  if (!sub_1DC32DB10())
  {
LABEL_10:
    v57 = v74;
    sub_1DC2D8C78(v45, v74);

    v58 = type metadata accessor for TurnSummary(0);
    if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
    {
      sub_1DC28EB30(v57, &qword_1ECC7BFC0, &unk_1DC522540);
      v59 = v82;
      v60 = v84;
      __swift_storeEnumTagSinglePayload(v82, 1, 1, v84);
      a2 = v75;
    }

    else
    {
      v59 = v82;
      sub_1DC3E4F24(v57 + *(v58 + 28), v82);
      sub_1DC41AEC4(v57, type metadata accessor for TurnSummary);
      a2 = v75;
      v60 = v84;
    }

    v61 = v85;
    v62 = v83;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v64 = v86;
    __swift_storeEnumTagSinglePayload(v86, 2, 4, v63);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v60);
    v65 = *(v81 + 48);
    sub_1DC3E4F24(v59, v61);
    sub_1DC3E4F24(v64, v61 + v65);
    OUTLINED_FUNCTION_30_8(v61);
    if (v66)
    {
      OUTLINED_FUNCTION_14_4(v64);
      OUTLINED_FUNCTION_14_4(v59);
      OUTLINED_FUNCTION_30_8(v61 + v65);
      if (v66)
      {
        sub_1DC28EB30(v61, &qword_1ECC7BFC8, &unk_1DC524050);
LABEL_25:
        (*(v80 + 104))(a2, *MEMORY[0x1E69D02F8], v90);
        v54 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      sub_1DC3E4F24(v61, v62);
      OUTLINED_FUNCTION_30_8(v61 + v65);
      if (!v66)
      {
        v69 = v61 + v65;
        v70 = v76;
        sub_1DC41AE60(v69, v76);
        sub_1DC3AC3D0();
        v71 = sub_1DC5176CC();
        sub_1DC41AEC4(v70, type metadata accessor for TurnSummary.ExecutionSource);
        sub_1DC28EB30(v86, &qword_1ECC7BFC8, &unk_1DC524050);
        sub_1DC28EB30(v59, &qword_1ECC7BFC8, &unk_1DC524050);
        sub_1DC41AEC4(v62, type metadata accessor for TurnSummary.ExecutionSource);
        sub_1DC28EB30(v61, &qword_1ECC7BFC8, &unk_1DC524050);
        if (v71)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      OUTLINED_FUNCTION_14_4(v86);
      OUTLINED_FUNCTION_14_4(v59);
      sub_1DC41AEC4(v62, type metadata accessor for TurnSummary.ExecutionSource);
    }

    sub_1DC28EB30(v61, &qword_1ECC7BFB8, &unk_1DC52A4C0);
    goto LABEL_22;
  }

  v72[1] = v44;
  v72[2] = v43;
  v47 = v87 + v46;
  v48 = v80;
  v49 = v90;
  (*(v80 + 16))(v26, v47, v90);
  if ((*(v48 + 88))(v26, v49) != *MEMORY[0x1E69D02E0])
  {
    (*(v48 + 8))(v26, v49);
    goto LABEL_10;
  }

  (*(v48 + 96))(v26, v49);
  v50 = v77;
  (*(v77 + 32))(v32, v26, v27);
  v51 = v73;
  sub_1DC515EFC();
  (*(v50 + 8))(v32, v27);
  v53 = v78;
  v52 = v79;
  if ((*(v78 + 88))(v51, v79) != *MEMORY[0x1E69D0600])
  {
    (*(v53 + 8))(v51, v52);
    goto LABEL_10;
  }

  (*(v53 + 8))(v51, v52);
  v54 = 1;
  a2 = v75;
LABEL_23:
  __swift_storeEnumTagSinglePayload(a2, v54, 1, v90);
  v67 = sub_1DC2BE518();
  sub_1DC2B8848(v37, "HeuristicRules.FollowLastTurnRoutingDecisionRule", 48, 2, v67);

  return (*(v88 + 8))(v37, v89);
}

uint64_t sub_1DC41AE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnSummary.ExecutionSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC41AEC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DC41AF30()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

uint64_t sub_1DC41AF8C()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

uint64_t NLRouterClientImpl.processNLRouterRequest(with:)()
{
  OUTLINED_FUNCTION_1_0();
  v0[15] = v1;
  v0[16] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D048, &unk_1DC526760);
  OUTLINED_FUNCTION_10(v3);
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v4 = type metadata accessor for NLRouterServiceResponse(0);
  v0[19] = v4;
  OUTLINED_FUNCTION_10(v4);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = sub_1DC5157EC();
  OUTLINED_FUNCTION_6();
  v0[24] = v5;
  v0[25] = OUTLINED_FUNCTION_118();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D098, &unk_1DC5268D0);
  OUTLINED_FUNCTION_10(v6);
  v0[26] = OUTLINED_FUNCTION_118();
  v7 = type metadata accessor for OverrideDecision(0);
  v0[27] = v7;
  OUTLINED_FUNCTION_10(v7);
  v0[28] = OUTLINED_FUNCTION_118();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v8);
  v0[29] = OUTLINED_FUNCTION_118();
  v9 = type metadata accessor for NLRouterServiceRequest(0);
  v0[30] = v9;
  OUTLINED_FUNCTION_10(v9);
  v0[31] = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC41B1B8()
{
  OUTLINED_FUNCTION_100_0();
  v28 = v0;
  v1 = v0[31];
  v2 = sub_1DC517B9C();
  v0[32] = sub_1DC297814();
  v3 = sub_1DC296DBC();
  v4 = OUTLINED_FUNCTION_16();
  sub_1DC2BBA90(v4, v5, v6);
  if (os_log_type_enabled(v3, v2))
  {
    swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_117();
    *v1 = 136315138;
    sub_1DC41D7A0();
    v7 = sub_1DC51823C();
    v9 = v8;
    OUTLINED_FUNCTION_12_25();
    v10 = sub_1DC291244(v7, v9, &v27);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_16_16(&dword_1DC287000, v11, v12, "NLRouterServiceRequest: %s");
    OUTLINED_FUNCTION_53_12();
    OUTLINED_FUNCTION_58();
  }

  else
  {

    OUTLINED_FUNCTION_12_25();
  }

  v13 = v0[30];
  v14 = v0[16];
  v15 = sub_1DC297438();
  v16 = *v15;
  v0[33] = *v15;
  v17 = (v14 + *(v13 + 40));
  v18 = *v17;
  v0[34] = *v17;
  v19 = v17[1];
  v0[35] = v19;
  v20 = (v14 + *(v13 + 44));
  v21 = *v20;
  v22 = v20[1];
  v23 = *(*v16 + 264);

  v26 = (v23 + *v23);
  v24 = swift_task_alloc();
  v0[36] = v24;
  *v24 = v0;
  v24[1] = sub_1DC41B42C;

  return v26(v18, v19, v21, v22);
}

uint64_t sub_1DC41B42C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  *(v1 + 296) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DC41B520()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 128);
  *(v0 + 304) = mach_absolute_time();
  v6 = sub_1DC510B6C();
  *(v0 + 312) = v6;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v7._countAndFlagsBits = v2;
  v7._object = v1;
  NLRouterServiceRequest.logToFeatureStore(for:)(v7);
  v8 = sub_1DC296704();
  *(v0 + 320) = v8;
  v9 = *v8;
  *(v0 + 328) = *v8;
  v10 = type metadata accessor for NLRouterOverrideService();
  *(v0 + 336) = v10;
  v11 = *(v4 + 48);
  *(v0 + 520) = v11;
  v12 = *(*v9 + 200);

  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v0 + 344) = v13;
  *v13 = v0;
  v13[1] = sub_1DC41B6C8;
  v14.n128_u64[0] = 1.0;

  return (v16)(v10, &off_1F57F98C0, v5 + v11, v14);
}

uint64_t sub_1DC41B6C8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 352) = v5;
  *(v3 + 360) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC41B7D0()
{
  v1 = *(v0 + 352);
  ObjectType = swift_getObjectType();
  v3 = dynamic_cast_existential_1_conditional(v1, ObjectType, &protocol descriptor for NLRouterOverrideServiceInterface);
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v7 = *(v0 + 264);
    v8 = *(v0 + 128);
    v9 = swift_getObjectType();
    (*(*(v6 + 8) + 40))(v9);
    *(v0 + 368) = v10;
    v11 = swift_task_alloc();
    *(v0 + 376) = v11;
    v11[2] = v5;
    v11[3] = v6;
    v11[4] = v8;
    v30 = (*(*v7 + 480) + **(*v7 + 480));
    v12 = swift_task_alloc();
    *(v0 + 384) = v12;
    *v12 = v0;
    v12[1] = sub_1DC41BB04;
    OUTLINED_FUNCTION_24_16();

    return v30();
  }

  else
  {
    v14 = *(v0 + 336);
    swift_unknownObjectRelease();
    v15 = sub_1DC3AF584(0xD000000000000046, 0x80000001DC547580, 0, v14, &off_1F57F98C0, v0 + 16);
    sub_1DC3B0E88(v15, v16, v17);
    v18 = swift_allocError();
    v19 = *(v0 + 48);
    v20 = *(v0 + 32);
    *v21 = *(v0 + 16);
    *(v21 + 16) = v20;
    *(v21 + 32) = v19;
    swift_willThrow();
    *(v0 + 496) = v18;
    OUTLINED_FUNCTION_3_32();
    v23 = *(v22 + 120);
    v24 = v18;
    v29 = (v23 + *v23);
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_19_19(v25);
    *v26 = v27;
    v28 = OUTLINED_FUNCTION_0_60(v26);

    return v29(v28);
  }
}

uint64_t sub_1DC41BB04()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 392) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC41BC0C()
{
  v27 = v0;
  v2 = v0[26];
  v1 = v0[27];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[40];
    sub_1DC28EB30(v2, &qword_1ECC7D098, &unk_1DC5268D0);
    v0[50] = *v3;
    v0[51] = type metadata accessor for NLRouterService(0);

    v4 = swift_task_alloc();
    v0[52] = v4;
    *v4 = v0;
    v4[1] = sub_1DC41BFA8;
    v5 = OUTLINED_FUNCTION_21_18();

    return v6(v5);
  }

  else
  {
    v8 = v0[39];
    v10 = v0[28];
    v9 = v0[29];
    v11 = v0[24];
    v12 = v0[25];
    v13 = v0[23];
    v14 = v0[15];
    v15 = OUTLINED_FUNCTION_16();
    sub_1DC41D6E8(v15, v16, v17);
    (*(v11 + 16))(v12, v10, v13);
    v25 = 0;
    v26 = xmmword_1DC522850;
    NLRouterServiceResponse.init(routingDecision:status:decisionSource:)(&v25, &v26, v14);
    swift_unknownObjectRelease();
    sub_1DC28EB30(v9, &unk_1ECC7CA30, &qword_1DC522A00);
    (*(*(v8 - 8) + 16))(v9, v10 + *(v1 + 20), v8);
    sub_1DC41D748(v10, type metadata accessor for OverrideDecision);
    OUTLINED_FUNCTION_17_17();
    v18 = v0[18];
    OUTLINED_FUNCTION_2_35();
    sub_1DC2BBA90(v19, v18, v20);
    OUTLINED_FUNCTION_17_17();
    v21 = swift_task_alloc();
    v0[60] = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_4_35(v21);
    v23 = OUTLINED_FUNCTION_25_17(v22);

    return v24(v23);
  }
}

uint64_t sub_1DC41BFA8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 424) = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC41C0B0()
{
  OUTLINED_FUNCTION_100_0();
  v1 = *(v0 + 424);
  ObjectType = swift_getObjectType();
  v3 = dynamic_cast_existential_1_conditional(v1, ObjectType, &protocol descriptor for NLRouterServiceInterface);
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v7 = *(v0 + 264);
    v8 = *(v0 + 128);
    v9 = sub_1DC41F868();
    swift_beginAccess();
    v10 = *v9;
    *(v0 + 440) = *v9;
    v11 = v9[1];
    *(v0 + 448) = v11;
    v12 = swift_task_alloc();
    *(v0 + 456) = v12;
    v12[2] = v5;
    v12[3] = v6;
    v12[4] = v8;
    v13 = *(*v7 + 472);
    sub_1DC2A329C(v10, v11);
    v39 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 464) = v14;
    *v14 = v0;
    v14[1] = sub_1DC41C3EC;
    OUTLINED_FUNCTION_24_16();

    return v39();
  }

  else
  {
    v16 = *(v0 + 408);
    swift_unknownObjectRelease();
    v17 = sub_1DC3AF584(0xD00000000000003ELL, 0x80000001DC5475D0, 0, v16, &off_1F57FD328, v0 + 56);
    sub_1DC3B0E88(v17, v18, v19);
    v20 = swift_allocError();
    v21 = *(v0 + 88);
    v22 = *(v0 + 72);
    *v23 = *(v0 + 56);
    *(v23 + 16) = v22;
    *(v23 + 32) = v21;
    swift_willThrow();
    swift_unknownObjectRelease();
    *(v0 + 496) = v20;
    OUTLINED_FUNCTION_3_32();
    v41 = v24 + 120;
    v25 = v20;
    OUTLINED_FUNCTION_45_1(v25, v26, v27, v28, v29, v30, v31, v32, v38, v41);
    v40 = (v33 + *v33);
    v34 = swift_task_alloc();
    v35 = OUTLINED_FUNCTION_19_19(v34);
    *v35 = v36;
    v37 = OUTLINED_FUNCTION_0_60(v35);

    return v40(v37);
  }
}

uint64_t sub_1DC41C3EC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  v3[59] = v0;

  if (!v0)
  {
    sub_1DC2A5760(v3[55], v3[56]);
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC41C4F8()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[22];
  v2 = v0[15];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1DC41D6E8(v1, v2, type metadata accessor for NLRouterServiceResponse);
  v3 = v0[18];
  OUTLINED_FUNCTION_2_35();
  sub_1DC2BBA90(v4, v3, v5);
  OUTLINED_FUNCTION_17_17();
  v6 = swift_task_alloc();
  v0[60] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_4_35(v6);
  v8 = OUTLINED_FUNCTION_25_17(v7);

  return v9(v8);
}

uint64_t sub_1DC41C660()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *v1;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 488) = v0;

  sub_1DC28EB30(*(v2 + 144), &qword_1ECC7D048, &unk_1DC526760);
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC41C794(uint64_t a1)
{
  v39 = v1;
  v2 = v1[21];
  v3 = sub_1DC517B9C();
  v4 = sub_1DC296DBC();
  OUTLINED_FUNCTION_2_35();
  v5 = OUTLINED_FUNCTION_16();
  sub_1DC2BBA90(v5, v6, v7);
  v8 = os_log_type_enabled(v4, v3);
  v9 = v1[21];
  if (v8)
  {
    swift_slowAlloc();
    v38 = OUTLINED_FUNCTION_117();
    *v2 = 136315138;
    v10 = NLRouterServiceResponse.description.getter();
    v12 = v11;
    OUTLINED_FUNCTION_1_37();
    sub_1DC41D748(v9, v13);
    v14 = sub_1DC291244(v10, v12, &v38);

    *(v2 + 4) = v14;
    OUTLINED_FUNCTION_16_16(&dword_1DC287000, v15, v16, "NLRouterServiceResponse: %s)");
    OUTLINED_FUNCTION_53_12();
    OUTLINED_FUNCTION_58();
  }

  else
  {

    OUTLINED_FUNCTION_1_37();
    sub_1DC41D748(v9, v17);
  }

  v18 = v1[20];
  v19 = sub_1DC517B8C();
  v20 = sub_1DC296DBC();
  OUTLINED_FUNCTION_2_35();
  v21 = OUTLINED_FUNCTION_16();
  sub_1DC2BBA90(v21, v22, v23);
  v24 = os_log_type_enabled(v20, v19);
  v25 = v1[20];
  if (v24)
  {
    swift_slowAlloc();
    v38 = OUTLINED_FUNCTION_117();
    *v18 = 136446210;
    v26 = sub_1DC43C94C();
    v28 = v27;
    OUTLINED_FUNCTION_1_37();
    sub_1DC41D748(v25, v29);
    v30 = sub_1DC291244(v26, v28, &v38);

    *(v18 + 4) = v30;
    OUTLINED_FUNCTION_16_16(&dword_1DC287000, v31, v32, "NLRouterServiceResponse: %{public}s");
    OUTLINED_FUNCTION_53_12();
    OUTLINED_FUNCTION_58();
  }

  else
  {

    OUTLINED_FUNCTION_1_37();
    sub_1DC41D748(v25, v33);
  }

  v34 = v1[37];
  v35 = v1[29];
  sub_1DC3FD1C8();

  sub_1DC28EB30(v35, &unk_1ECC7CA30, &qword_1DC522A00);

  OUTLINED_FUNCTION_2_2();

  return v36();
}

uint64_t sub_1DC41CA4C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *v1;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 512) = v0;

  v5 = *(v2 + 496);
  sub_1DC28EB30(*(v2 + 136), &qword_1ECC7D048, &unk_1DC526760);

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC41CB9C(uint64_t a1)
{
  v2 = *(v1 + 296);
  v3 = *(v1 + 232);
  swift_willThrow();

  sub_1DC28EB30(v3, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_9_29();

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC41CCA0()
{
  OUTLINED_FUNCTION_41_5();

  v1 = *(v0 + 360);
  *(v0 + 496) = v1;
  OUTLINED_FUNCTION_3_32();
  v17 = v2 + 120;
  v3 = v1;
  OUTLINED_FUNCTION_45_1(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_19_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_0_60(v12);
  OUTLINED_FUNCTION_32_16();

  return v14();
}

uint64_t sub_1DC41CDA4()
{
  OUTLINED_FUNCTION_41_5();
  swift_unknownObjectRelease();

  v1 = *(v0 + 392);
  *(v0 + 496) = v1;
  OUTLINED_FUNCTION_3_32();
  v17 = v2 + 120;
  v3 = v1;
  OUTLINED_FUNCTION_45_1(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_19_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_0_60(v12);
  OUTLINED_FUNCTION_32_16();

  return v14();
}

uint64_t sub_1DC41CEBC()
{
  OUTLINED_FUNCTION_41_5();

  swift_unknownObjectRelease();
  v1 = *(v0 + 432);
  *(v0 + 496) = v1;
  OUTLINED_FUNCTION_3_32();
  v17 = v2 + 120;
  v3 = v1;
  OUTLINED_FUNCTION_45_1(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_19_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_0_60(v12);
  OUTLINED_FUNCTION_32_16();

  return v14();
}

uint64_t sub_1DC41CFCC()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[56];
  v2 = v0[55];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1DC2A5760(v2, v1);

  v3 = v0[59];
  v0[62] = v3;
  OUTLINED_FUNCTION_3_32();
  v19 = v4 + 120;
  v5 = v3;
  OUTLINED_FUNCTION_45_1(v5, v6, v7, v8, v9, v10, v11, v12, v18, v19);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_19_19(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_0_60(v14);
  OUTLINED_FUNCTION_32_16();

  return v16();
}

uint64_t sub_1DC41D100()
{
  OUTLINED_FUNCTION_100_0();
  v1 = v0[62];
  v2 = v0[37];
  v3 = v0[29];

  sub_1DC28EB30(v3, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_9_29();

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC41D200()
{
  OUTLINED_FUNCTION_100_0();
  v1 = v0[37];
  v2 = v0[29];
  v3 = v0[15];

  sub_1DC28EB30(v2, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_1_37();
  sub_1DC41D748(v3, v4);
  OUTLINED_FUNCTION_9_29();

  OUTLINED_FUNCTION_2_2();

  return v5();
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC41D348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC41D360()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(v2, ObjectType, v1);
  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC41D3F4()
{
  OUTLINED_FUNCTION_41_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_22(v1);

  return sub_1DC41D348(v3, v4, v5, v6);
}

uint64_t sub_1DC41D488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_6();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_1(v9);
  *v10 = v11;
  v10[1] = sub_1DC29F120;

  return v13(a1, a4, ObjectType, a3);
}

uint64_t sub_1DC41D5C0()
{
  OUTLINED_FUNCTION_41_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_22(v1);

  return sub_1DC41D488(v3, v4, v5, v6);
}

uint64_t sub_1DC41D654()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F200;

  return NLRouterClientImpl.processNLRouterRequest(with:)();
}

uint64_t sub_1DC41D6E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_35();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DC41D748(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DC41D7A0()
{
  result = qword_1ECC7BC20;
  if (!qword_1ECC7BC20)
  {
    type metadata accessor for NLRouterServiceRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC20);
  }

  return result;
}

uint64_t dispatch thunk of NLRouterClient.setupNLRouter(with:)()
{
  OUTLINED_FUNCTION_37_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_6();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  v8[1] = sub_1DC29F120;

  return v10(v6, v4, v2);
}

uint64_t dispatch thunk of NLRouterClient.processNLRouterRequest(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_6();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_1(v9);
  *v10 = v11;
  v10[1] = sub_1DC29F200;

  return v13(a1, a2, a3, a4);
}

_BYTE *storeEnumTagSinglePayload for NLRouterClientImpl(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

double sub_1DC41DAEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v6 = qword_1ECC8F3F8;
  if (qword_1ECC8F3F8 && *(qword_1ECC8F3F8 + 16))
  {

    v7 = sub_1DC2AEB04(a1, a2);
    if (v8)
    {
      sub_1DC291F78(*(v6 + 56) + 32 * v7, a3);

      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_1DC41DBA4()
{
  OUTLINED_FUNCTION_42_0();
  v2 = OUTLINED_FUNCTION_462();
  v4 = v4 && v3 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_32_13(v2, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0x7869726973 && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_32_13(0x7869726973, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == 0xD000000000000016 && 0x80000001DC548180 == v0;
      if (v7 || (OUTLINED_FUNCTION_32_13(0xD000000000000016, 0x80000001DC548180) & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_151_3();
        v9 = v4 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_32_13(0xD000000000000015, v8) & 1) != 0)
        {

          return 3;
        }

        else if (v1 == 0xD00000000000001BLL && 0x80000001DC5481C0 == v0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_32_13(0xD00000000000001BLL, 0x80000001DC5481C0);
          OUTLINED_FUNCTION_168();
          if (v1)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

void sub_1DC41DCE8(char a1)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_415(21);
      break;
    case 3:
      OUTLINED_FUNCTION_31_1();
      break;
    default:
      return;
  }
}

uint64_t sub_1DC41DD84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC41DBA4();
  *a1 = result;
  return result;
}

uint64_t sub_1DC41DDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E468(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC41DDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E468(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC41DE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E60C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC41DE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E60C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC41DE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E510(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC41DEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E510(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC41DEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E5B8(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC41DF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E5B8(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC41DF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E4BC(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC41DFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E4BC(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC41DFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E564(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC41E014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC41E564(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

void sub_1DC41E04C()
{
  OUTLINED_FUNCTION_28_1();
  v39 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D998, &qword_1DC52A648);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_76_9(v3, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9A0, &qword_1DC52A650);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_50_13(v5, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9A8, &qword_1DC52A658);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9B0, &qword_1DC52A660);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_95();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9B8, &qword_1DC52A668);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_47_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9C0, &qword_1DC52A670);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_24_0();
  v14 = OUTLINED_FUNCTION_74();
  v16 = OUTLINED_FUNCTION_121_1(v14, v15);
  sub_1DC41E468(v16, v17, v18);
  OUTLINED_FUNCTION_283_0();
  v19 = sub_1DC51835C();
  switch(v39)
  {
    case 1:
      OUTLINED_FUNCTION_342_0();
      sub_1DC41E5B8(v34, v35, v36);
      OUTLINED_FUNCTION_148_2();
      sub_1DC51817C();
      v22 = OUTLINED_FUNCTION_209();
      break;
    case 2:
      OUTLINED_FUNCTION_187_1();
      sub_1DC41E564(v28, v29, v30);
      OUTLINED_FUNCTION_59_9();
      sub_1DC51817C();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_343_0();
      sub_1DC41E510(v31, v32, v33);
      OUTLINED_FUNCTION_59_9();
      sub_1DC51817C();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_352_0();
      sub_1DC41E4BC(v25, v26, v27);
      OUTLINED_FUNCTION_59_9();
      sub_1DC51817C();
LABEL_6:
      v22 = OUTLINED_FUNCTION_240_0();
      break;
    default:
      sub_1DC41E60C(v19, v20, v21);
      OUTLINED_FUNCTION_59_9();
      sub_1DC51817C();
      v22 = OUTLINED_FUNCTION_240_0();
      v24 = v8;
      break;
  }

  v23(v22, v24);
  (*(v12 + 8))(v0, v10);
  OUTLINED_FUNCTION_26_0();
}

unint64_t sub_1DC41E468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8B360;
  if (!qword_1ECC8B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B360);
  }

  return result;
}

unint64_t sub_1DC41E4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8B368;
  if (!qword_1ECC8B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B368);
  }

  return result;
}

unint64_t sub_1DC41E510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8B370;
  if (!qword_1ECC8B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B370);
  }

  return result;
}

unint64_t sub_1DC41E564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8B378;
  if (!qword_1ECC8B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B378);
  }

  return result;
}

unint64_t sub_1DC41E5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8B380;
  if (!qword_1ECC8B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B380);
  }

  return result;
}

unint64_t sub_1DC41E60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC8B388;
  if (!qword_1ECC8B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8B388);
  }

  return result;
}

void sub_1DC41E660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_28_1();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9C8, &qword_1DC52A678);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_385(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9D0, &qword_1DC52A680);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_76_9(v34, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9D8, &qword_1DC52A688);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_34_17(v36, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9E0, &qword_1DC52A690);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_54_3();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9E8, &qword_1DC52A698);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_30_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9F0, &unk_1DC52A6A0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_47_7();
  v41 = OUTLINED_FUNCTION_176();
  v43 = OUTLINED_FUNCTION_121_1(v41, v42);
  sub_1DC41E468(v43, v44, v45);
  sub_1DC51834C();
  if (!v26)
  {
    v46 = sub_1DC51816C();
    OUTLINED_FUNCTION_338_0(v46);
    if (!v47)
    {
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_337_0();
      if (v52 == v53)
      {
        __break(1u);
        return;
      }

      v54 = *(v51 + v49);
      OUTLINED_FUNCTION_336_0(v48, v49, v50, v51);
      v56 = v55;
      v58 = v57;
      v60 = v59;
      swift_unknownObjectRelease();
      if (v58 == v60 >> 1)
      {
        switch(v54)
        {
          case 1:
            OUTLINED_FUNCTION_342_0();
            sub_1DC41E5B8(v81, v82, v83);
            OUTLINED_FUNCTION_237(&type metadata for NLRouterInvalidModelOutputError.SirixCodingKeys, &a13);
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 2:
            OUTLINED_FUNCTION_187_1();
            sub_1DC41E564(v75, v76, v77);
            OUTLINED_FUNCTION_237(&type metadata for NLRouterInvalidModelOutputError.UnexpectedRoutingLabelCodingKeys, &a14);
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 3:
            OUTLINED_FUNCTION_343_0();
            sub_1DC41E510(v78, v79, v80);
            OUTLINED_FUNCTION_237(&type metadata for NLRouterInvalidModelOutputError.MultipleRoutingLabelsCodingKeys, &a15);
            swift_unknownObjectRelease();
LABEL_15:
            v63 = OUTLINED_FUNCTION_239();
            break;
          case 4:
            OUTLINED_FUNCTION_352_0();
            sub_1DC41E4BC(v72, v73, v74);
            sub_1DC5180AC();
            swift_unknownObjectRelease();
            v63 = OUTLINED_FUNCTION_209();
            v65 = v88;
            break;
          default:
            a12 = 0;
            sub_1DC41E60C(v56, v61, v62);
            OUTLINED_FUNCTION_237(&type metadata for NLRouterInvalidModelOutputError.GenAICodingKeys, &a12);
            swift_unknownObjectRelease();
            v63 = OUTLINED_FUNCTION_239();
            v65 = v38;
            break;
        }

        v64(v63, v65);
        v84 = OUTLINED_FUNCTION_151();
        v85(v84);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        goto LABEL_10;
      }
    }

    sub_1DC517F7C();
    OUTLINED_FUNCTION_236_1();
    swift_allocError();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D670, &qword_1DC528AF8);
    *v67 = &type metadata for NLRouterInvalidModelOutputError;
    v68 = sub_1DC5180BC();
    OUTLINED_FUNCTION_117_7(v68);
    OUTLINED_FUNCTION_7_1();
    (*(v69 + 104))(v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_122_2();
    v70 = OUTLINED_FUNCTION_151();
    v71(v70);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
LABEL_10:
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC41EC9C()
{
  OUTLINED_FUNCTION_42_0();
  v2 = v1 == 0x6365446C65646F6DLL && v0 == 0xED00006E6F697369;
  if (v2 || (v3 = OUTLINED_FUNCTION_32_13(0x6365446C65646F6DLL, 0xED00006E6F697369), (v3 & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 0xD000000000000010 && 0x80000001DC5481E0 == v0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_53_16(v3, 0x80000001DC5481E0);
    OUTLINED_FUNCTION_168();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DC41ED48()
{
  OUTLINED_FUNCTION_146_0();
  if (v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6365446C65646F6DLL;
  }
}

uint64_t sub_1DC41EDC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC41EC9C();
  *a1 = result;
  return result;
}

uint64_t sub_1DC41EDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F150(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC41EE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F150(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

void sub_1DC41EE60()
{
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_143_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D9F8, &qword_1DC52A6B0);
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_54_3();
  v2 = OUTLINED_FUNCTION_7_19();
  v5 = sub_1DC43F150(v2, v3, v4);
  OUTLINED_FUNCTION_118_4(&type metadata for IntepretedModelDecision.CodingKeys, v6, v5);
  sub_1DC5157EC();
  OUTLINED_FUNCTION_2_36();
  sub_1DC43F1F8(v7, v8);
  OUTLINED_FUNCTION_36_19();
  sub_1DC51820C();
  if (!v0)
  {
    v9 = type metadata accessor for IntepretedModelDecision(0);
    sub_1DC43F1A4(v9, v10, v11);
    OUTLINED_FUNCTION_136_4();
    sub_1DC5181AC();
  }

  v12 = OUTLINED_FUNCTION_104_3();
  v13(v12);
  OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_37_9();
}

void sub_1DC41EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_28_1();
  v27 = v26;
  sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA08, &unk_1DC52A6B8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_31_18();
  v31 = type metadata accessor for IntepretedModelDecision(v30);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v33 = OUTLINED_FUNCTION_121_1(v27, v27[3]);
  sub_1DC43F150(v33, v34, v35);
  OUTLINED_FUNCTION_283_0();
  sub_1DC51834C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_36();
    sub_1DC43F1F8(v36, v37);
    OUTLINED_FUNCTION_451();
    sub_1DC51814C();
    v38 = OUTLINED_FUNCTION_212();
    v40 = v39(v38);
    sub_1DC43F23C(v40, v41, v42);
    OUTLINED_FUNCTION_451();
    sub_1DC5180EC();
    v43 = OUTLINED_FUNCTION_46_0();
    v44(v43);
    *(v25 + *(v31 + 20)) = a13;
    sub_1DC43F610();
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_11_31();
    sub_1DC43F4A8();
  }

  OUTLINED_FUNCTION_329_0();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC41F2D4()
{
  v0 = sub_1DC29F950(0);
  if ((v0 & 1) == 0)
  {
    sub_1DC517B9C();
    sub_1DC297814();
    v1 = sub_1DC296DBC();
    v2 = OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C(v2, v3, v4, v5, 24, 2);
  }

  return v0 & 1;
}

uint64_t sub_1DC41F370()
{
  result = sub_1DC510D5C();
  qword_1ECC8F650 = result;
  *algn_1ECC8F658 = v1;
  return result;
}

uint64_t sub_1DC41F394@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation15NLRouterService_locale;
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_11_0();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_1DC41F524()
{
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_31_0();
  sub_1DC43F290(v0);
  return OUTLINED_FUNCTION_31_0();
}

uint64_t sub_1DC41F5DC()
{
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_270();
  return sub_1DC4465D4();
}

uint64_t sub_1DC41F640(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_1_22(v2 + *a2, v4);
  OUTLINED_FUNCTION_270();
  sub_1DC43F2D0();
  return swift_endAccess();
}

uint64_t sub_1DC41F6F4()
{
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return sub_1DC2A2E50();
}

uint64_t sub_1DC41F744(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation15NLRouterService_generativeAssistantHelper;
  v4 = OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_1_22(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_1DC28F9B0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1DC41F7EC()
{
  v0 = sub_1DC510D9C();
  swift_allocObject();
  result = sub_1DC510D8C();
  qword_1ECC8F678 = v0;
  unk_1ECC8F680 = MEMORY[0x1E69B2130];
  qword_1ECC8F660 = result;
  return result;
}

uint64_t sub_1DC41F840()
{
  result = sub_1DC29F950(1);
  byte_1ECC8FA40 = result & 1;
  return result;
}

uint64_t sub_1DC41F874()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC0, &qword_1DC52EA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F20;
  *(inited + 32) = 0x4E495F6E65;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1DC33347C(&unk_1F57FCFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC8, &qword_1DC526220);
  result = sub_1DC51764C();
  qword_1ECC8F638 = result;
  return result;
}

uint64_t sub_1DC41F920()
{
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return sub_1DC4465D4();
}

uint64_t sub_1DC41F9CC()
{
  OUTLINED_FUNCTION_1_0();
  v0[28] = v1;
  v2 = sub_1DC51753C();
  v0[29] = v2;
  OUTLINED_FUNCTION_52(v2);
  v0[30] = v3;
  v0[31] = OUTLINED_FUNCTION_118();
  v4 = sub_1DC5108BC();
  v0[32] = v4;
  OUTLINED_FUNCTION_52(v4);
  v0[33] = v5;
  v6 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_461(v6);
  v7 = sub_1DC5109BC();
  v0[35] = v7;
  OUTLINED_FUNCTION_52(v7);
  v0[36] = v8;
  v0[37] = OUTLINED_FUNCTION_124();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC41FB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_467();
  a35 = v37;
  a36 = v38;
  a34 = v36;
  v39 = v36;
  a25 = *MEMORY[0x1E69E9840];
  sub_1DC517B9C();
  *(v36 + 336) = OUTLINED_FUNCTION_21_2();
  v40 = sub_1DC296DBC();
  v41 = OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C(v41, v42, v43, v44, 36, 2);

  v45 = [objc_opt_self() defaultManager];
  *(v36 + 208) = 0;
  v46 = (v36 + 208);
  v47 = [v45 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v46];

  v48 = *v46;
  if (v47)
  {
    v49 = v39[38];
    v86 = v39[41];
    v93 = v39[40];
    v94 = v39[36];
    v50 = v39[34];
    v90 = v39[37];
    v91 = v39[35];
    v52 = v39[32];
    v51 = v39[33];
    v87 = v39[30];
    v88 = v39[29];
    v89 = v39[31];
    sub_1DC51093C();
    v53 = v48;

    v39[20] = 0x6E61747369737341;
    v39[21] = 0xE900000000000074;
    v85 = *MEMORY[0x1E6968F58];
    v54 = *(v51 + 104);
    v55 = v54(v50);
    sub_1DC2A32B0(v55, v56, v57);
    sub_1DC51099C();
    v92 = *(v51 + 8);
    v58 = OUTLINED_FUNCTION_46_0();
    v59(v58);
    v84 = *(v94 + 8);
    v39[43] = v84;
    v39[44] = (v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v84(v49, v91);
    v39[22] = 0x65686361434D4C4CLL;
    v39[23] = 0xE800000000000000;
    (v54)(v50, v85, v52);
    sub_1DC51099C();
    v60 = OUTLINED_FUNCTION_205();
    v92(v60);
    v61 = OUTLINED_FUNCTION_12_3();
    (v84)(v61);
    v39[24] = 0x726574756F524C4ELL;
    v39[25] = 0xE800000000000000;
    (v54)(v50, v85, v52);
    sub_1DC51099C();
    v62 = OUTLINED_FUNCTION_205();
    v92(v62);
    v84(v93, v91);
    v39[45] = sub_1DC51746C();
    (*(v87 + 104))(v89, *MEMORY[0x1E69ABD50], v88);
    (*(v94 + 16))(v90, v86, v91);
    v63 = swift_task_alloc();
    v39[46] = v63;
    *v63 = v39;
    v63[1] = sub_1DC4200C0;
    OUTLINED_FUNCTION_33_12(v39[31]);
    OUTLINED_FUNCTION_366_0();

    return MEMORY[0x1EEE18708](v64, v65);
  }

  else
  {
    v67 = v48;
    OUTLINED_FUNCTION_155_0();
    v68 = sub_1DC51085C();

    swift_willThrow();
    v69 = sub_1DC517BBC();
    v70 = sub_1DC296DBC();
    if (os_log_type_enabled(v70, v69))
    {
      v71 = OUTLINED_FUNCTION_63();
      a24 = OUTLINED_FUNCTION_82();
      *v71 = 136315138;
      swift_getErrorValue();
      v72 = sub_1DC5182AC();
      v74 = sub_1DC291244(v72, v73, &a24);

      *(v71 + 4) = v74;
      _os_log_impl(&dword_1DC287000, v70, v69, "Failed to initialize/warmup cache manager, error: %s", v71, 0xCu);
      OUTLINED_FUNCTION_146_5();
      OUTLINED_FUNCTION_54_12();
    }

    else
    {
    }

    OUTLINED_FUNCTION_366_0();

    return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }
}

uint64_t sub_1DC4200C0()
{
  OUTLINED_FUNCTION_41_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v4 + 376) = v0;

  if (!v0)
  {
    *(v4 + 384) = v3;
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC420200()
{
  OUTLINED_FUNCTION_36_11();
  v0[2] = v0[48];
  v1 = MEMORY[0x1E69ABD30];
  v0[5] = v0[45];
  v0[6] = v1;
  OUTLINED_FUNCTION_430();
  (*(v2 + 200))(v0 + 2);
  sub_1DC517B9C();
  v3 = sub_1DC296DBC();
  v4 = OUTLINED_FUNCTION_208();
  sub_1DC516F0C(v4, v5, v6, v7, 25, 2);

  OUTLINED_FUNCTION_430();
  (*(v8 + 192))();
  if (!v0[10])
  {
    v12 = OUTLINED_FUNCTION_254_0();
    v13(v12);
    sub_1DC28EB30((v0 + 7), &qword_1ECC7DA28, &unk_1DC52A6D0);
    OUTLINED_FUNCTION_128_4();

    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_477();

    __asm { BRAA            X1, X16 }
  }

  sub_1DC2A2E50();
  sub_1DC28EB30((v0 + 7), &qword_1ECC7DA28, &unk_1DC52A6D0);
  OUTLINED_FUNCTION_310_0(v0 + 12);
  v9 = swift_task_alloc();
  v0[49] = v9;
  *v9 = v0;
  v9[1] = sub_1DC42046C;
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_477();

  return MEMORY[0x1EEE18728](v10);
}

uint64_t sub_1DC42046C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DC420594()
{
  OUTLINED_FUNCTION_36_11();
  v1 = OUTLINED_FUNCTION_254_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_128_4();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_477();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DC420664(uint64_t a1)
{
  v15 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = OUTLINED_FUNCTION_254_0();
  v4(v3);
  v5 = *(v1 + 376);
  v6 = sub_1DC517BBC();
  v7 = sub_1DC296DBC();
  if (os_log_type_enabled(v7, v6))
  {
    OUTLINED_FUNCTION_63();
    v14[0] = OUTLINED_FUNCTION_115_4();
    OUTLINED_FUNCTION_470(4.8149e-34);
    v8 = sub_1DC5182AC();
    v10 = sub_1DC291244(v8, v9, v14);

    *(v2 + 4) = v10;
    OUTLINED_FUNCTION_407(&dword_1DC287000, v11, v6, "Failed to initialize/warmup cache manager, error: %s");
    OUTLINED_FUNCTION_138_3();
    OUTLINED_FUNCTION_67();
  }

  else
  {
  }

  OUTLINED_FUNCTION_128_4();

  OUTLINED_FUNCTION_2_2();

  return v12();
}

uint64_t sub_1DC4207DC(uint64_t a1)
{
  v15 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = OUTLINED_FUNCTION_254_0();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
  v5 = *(v1 + 400);
  v6 = sub_1DC517BBC();
  v7 = sub_1DC296DBC();
  if (os_log_type_enabled(v7, v6))
  {
    OUTLINED_FUNCTION_63();
    v14[0] = OUTLINED_FUNCTION_115_4();
    OUTLINED_FUNCTION_470(4.8149e-34);
    v8 = sub_1DC5182AC();
    v10 = sub_1DC291244(v8, v9, v14);

    *(v2 + 4) = v10;
    OUTLINED_FUNCTION_407(&dword_1DC287000, v11, v6, "Failed to initialize/warmup cache manager, error: %s");
    OUTLINED_FUNCTION_138_3();
    OUTLINED_FUNCTION_67();
  }

  else
  {
  }

  OUTLINED_FUNCTION_128_4();

  OUTLINED_FUNCTION_2_2();

  return v12();
}

void sub_1DC42095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  v23 = v22;
  v253 = v24;
  v239 = sub_1DC510BEC();
  OUTLINED_FUNCTION_0();
  v238 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  v237 = v27;
  OUTLINED_FUNCTION_12();
  v252 = sub_1DC510C2C();
  OUTLINED_FUNCTION_0();
  v243 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v30);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA48, &qword_1DC52A720);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA50, &qword_1DC52A728);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_62();
  v246 = v41;
  OUTLINED_FUNCTION_12();
  v42 = sub_1DC510BDC();
  OUTLINED_FUNCTION_0();
  v255 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED0, qword_1DC52A730);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_15();
  v250 = v48;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_38_3();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED8, &qword_1DC522250);
  v51 = OUTLINED_FUNCTION_10(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_23_1();
  v251 = v54;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_23_1();
  v254 = v56;
  OUTLINED_FUNCTION_22();
  v58 = MEMORY[0x1EEE9AC00](v57);
  v59 = MEMORY[0x1EEE9AC00](v58);
  MEMORY[0x1EEE9AC00](v59);
  sub_1DC510C6C();
  OUTLINED_FUNCTION_3_33();
  v61 = v60;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v236 - v65;
  v259 = v23;
  sub_1DC510C7C();
  sub_1DC510C5C();
  v67 = *(v61 + 8);
  v257 = v61 + 8;
  v258 = v20;
  v256 = v67;
  v67(v66, v20);
  sub_1DC510BCC();
  v68 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v42);
  v249 = v46;
  v71 = *(v46 + 48);
  OUTLINED_FUNCTION_46_0();
  sub_1DC4465D4();
  sub_1DC4465D4();
  v72 = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_39(v72, v73, v42);
  if (v79)
  {
    v74 = OUTLINED_FUNCTION_62_2();
    sub_1DC28EB30(v74, v75, &qword_1DC522250);
    v76 = OUTLINED_FUNCTION_340_0();
    sub_1DC28EB30(v76, v77, &qword_1DC522250);
    OUTLINED_FUNCTION_4_24(v21 + v71);
    v78 = v252;
    if (v79)
    {
      sub_1DC28EB30(v21, &qword_1ECC7BED8, &qword_1DC522250);
      goto LABEL_11;
    }

LABEL_9:
    sub_1DC28EB30(v21, &qword_1ECC7BED0, qword_1DC52A730);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_47_1();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_4_24(v21 + v71);
  if (v79)
  {
    v80 = OUTLINED_FUNCTION_62_2();
    sub_1DC28EB30(v80, v81, &qword_1DC522250);
    v82 = OUTLINED_FUNCTION_340_0();
    sub_1DC28EB30(v82, v83, &qword_1DC522250);
    v84 = OUTLINED_FUNCTION_121_0();
    v85(v84);
    v78 = v252;
    goto LABEL_9;
  }

  v86 = v255;
  (*(v255 + 32))(v245, v21 + v71, v42);
  OUTLINED_FUNCTION_210_2();
  sub_1DC43F1F8(v87, v88);
  OUTLINED_FUNCTION_146_1();
  v89 = sub_1DC5176CC();
  v71 = v86 + 8;
  v90 = *(v86 + 8);
  v91 = OUTLINED_FUNCTION_113_0();
  v90(v91);
  v92 = OUTLINED_FUNCTION_65_1();
  sub_1DC28EB30(v92, v93, &qword_1DC522250);
  v94 = OUTLINED_FUNCTION_205();
  sub_1DC28EB30(v94, v95, &qword_1DC522250);
  v96 = OUTLINED_FUNCTION_121_0();
  v90(v96);
  v97 = OUTLINED_FUNCTION_35_0();
  sub_1DC28EB30(v97, v98, &qword_1DC522250);
  v78 = v252;
  if ((v89 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  OUTLINED_FUNCTION_20_3();
  sub_1DC510C3C();
  sub_1DC510C1C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v78);
  v102 = *(v247 + 48);
  v21 = v244;
  OUTLINED_FUNCTION_392();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_392();
  sub_1DC4465D4();
  v103 = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_39(v103, v104, v78);
  if (v79)
  {
    OUTLINED_FUNCTION_26_1();
    sub_1DC28EB30(v105, v106, v107);
    v108 = OUTLINED_FUNCTION_43();
    sub_1DC28EB30(v108, v109, &qword_1DC52A728);
    OUTLINED_FUNCTION_39(v21 + v102, 1, v78);
    if (v79)
    {
      v110 = v21;
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_484();
  OUTLINED_FUNCTION_39(v21 + v102, 1, v78);
  if (v111)
  {
    OUTLINED_FUNCTION_69_7();
    OUTLINED_FUNCTION_26_1();
    sub_1DC28EB30(v112, v113, v114);
    OUTLINED_FUNCTION_26_1();
    sub_1DC28EB30(v115, v116, v117);
    v118 = OUTLINED_FUNCTION_220_0();
    v119(v118);
LABEL_19:
    sub_1DC28EB30(v21, &qword_1ECC7DA48, &qword_1DC52A720);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_20_3();
  v193 = OUTLINED_FUNCTION_380();
  v194(v193);
  OUTLINED_FUNCTION_207_2();
  sub_1DC43F1F8(v195, v196);
  OUTLINED_FUNCTION_56_0();
  v197 = sub_1DC5176CC();
  v198 = *(v71 + 8);
  v71 += 8;
  v199 = OUTLINED_FUNCTION_74_8();
  v198(v199);
  OUTLINED_FUNCTION_69_7();
  OUTLINED_FUNCTION_32();
  sub_1DC28EB30(v200, v201, v202);
  OUTLINED_FUNCTION_32();
  sub_1DC28EB30(v203, v204, v205);
  (v198)(v240, v78);
  v206 = OUTLINED_FUNCTION_77_1();
  sub_1DC28EB30(v206, v207, &qword_1DC52A728);
  if (v197)
  {
    goto LABEL_47;
  }

LABEL_20:
  OUTLINED_FUNCTION_20_3();
  sub_1DC510C7C();
  sub_1DC510C5C();
  v256(v71, v258);
  sub_1DC510BCC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v42);
  v123 = v250;
  v124 = *(v249 + 48);
  v125 = &qword_1ECC7BED8;
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_96_4();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_96_4();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_4_24(v123);
  if (v79)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v126, v127, v128);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v129, v130, v131);
    OUTLINED_FUNCTION_4_24(v123 + v124);
    if (v79)
    {
      sub_1DC28EB30(v123, &qword_1ECC7BED8, &qword_1DC522250);
      goto LABEL_30;
    }

LABEL_28:
    v139 = &qword_1ECC7BED0;
    v140 = qword_1DC52A730;
LABEL_40:
    sub_1DC28EB30(v123, v139, v140);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_484();
  OUTLINED_FUNCTION_4_24(v123 + v124);
  if (v132)
  {
    v125 = &qword_1ECC7BED8;
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v133, v134, v135);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v136, v137, v138);
    (*(v255 + 8))(&qword_1ECC7BED8, v42);
    goto LABEL_28;
  }

  v141 = v255;
  v142 = OUTLINED_FUNCTION_380();
  v143(v142);
  OUTLINED_FUNCTION_210_2();
  sub_1DC43F1F8(v144, v145);
  OUTLINED_FUNCTION_63_0();
  v21 = sub_1DC5176CC();
  v146 = *(v141 + 8);
  v146(v124, v42);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v147, v148, v149);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v150, v151, v152);
  v146(&qword_1ECC7BED8, v42);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v153, v154, v155);
  if ((v21 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_30:
  v21 = v241;
  sub_1DC510C3C();
  sub_1DC510C1C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v78);
  v125 = &qword_1ECC7DA50;
  v123 = v242;
  OUTLINED_FUNCTION_96_4();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_96_4();
  sub_1DC4465D4();
  v159 = OUTLINED_FUNCTION_53_15();
  OUTLINED_FUNCTION_39(v159, v160, v78);
  if (v79)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v161, v162, v163);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v164, v165, v166);
    v167 = OUTLINED_FUNCTION_331();
    OUTLINED_FUNCTION_39(v167, v168, v78);
    if (!v79)
    {
      goto LABEL_39;
    }

    v110 = v123;
LABEL_35:
    sub_1DC28EB30(v110, &qword_1ECC7DA50, &qword_1DC52A728);
LABEL_47:
    (*(v238 + 104))(v237, *MEMORY[0x1E6969638], v239);
    v188 = sub_1DC510B9C();
    v190 = v225;
    v226 = OUTLINED_FUNCTION_149();
    v227(v226);
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_484();
  v169 = OUTLINED_FUNCTION_331();
  OUTLINED_FUNCTION_39(v169, v170, v78);
  if (v171)
  {
    v125 = &qword_1ECC7DA50;
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v172, v173, v174);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v175, v176, v177);
    v178 = OUTLINED_FUNCTION_74_8();
    v179(v178);
LABEL_39:
    v139 = &qword_1ECC7DA48;
    v140 = &qword_1DC52A720;
    goto LABEL_40;
  }

  v208 = v243;
  v209 = OUTLINED_FUNCTION_380();
  v210(v209);
  OUTLINED_FUNCTION_207_2();
  sub_1DC43F1F8(v211, v212);
  OUTLINED_FUNCTION_63_0();
  LODWORD(v254) = sub_1DC5176CC();
  v213 = *(v208 + 8);
  v214 = OUTLINED_FUNCTION_74_8();
  v213(v214);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v215, v216, v217);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v218, v219, v220);
  v221 = OUTLINED_FUNCTION_220_0();
  v213(v221);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v222, v223, v224);
  if (v254)
  {
    goto LABEL_47;
  }

LABEL_41:
  OUTLINED_FUNCTION_20_3();
  sub_1DC510C7C();
  v180 = v248;
  sub_1DC510C5C();
  v256(v125, v258);
  OUTLINED_FUNCTION_4_24(v180);
  if (v79)
  {
    sub_1DC28EB30(v180, &qword_1ECC7BED8, &qword_1DC522250);
    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v181 = sub_1DC296DBC();
    v182 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v182, v183, v184, v185, 28, 2);

    v186 = 1;
    v187 = v253;
    goto LABEL_54;
  }

  v188 = sub_1DC510BBC();
  v190 = v189;
  v191 = OUTLINED_FUNCTION_239();
  v192(v191, v42);
LABEL_48:

  v228 = sub_1DC517B8C();
  sub_1DC297814();
  v229 = sub_1DC296DBC();
  if (os_log_type_enabled(v229, v228))
  {
    OUTLINED_FUNCTION_63();
    v260 = OUTLINED_FUNCTION_115_4();
    *v21 = 136315138;
    v230 = OUTLINED_FUNCTION_63_0();
    v233 = sub_1DC291244(v230, v231, v232);

    *(v21 + 4) = v233;
    _os_log_impl(&dword_1DC287000, v229, v228, "Getting resource bundle query with language: %s", v21, 0xCu);
    OUTLINED_FUNCTION_138_3();
    OUTLINED_FUNCTION_67();
  }

  else
  {
  }

  v187 = v253;
  if (qword_1ECC82DE0 != -1)
  {
    OUTLINED_FUNCTION_64_7(&qword_1ECC82DE0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C878, &qword_1DC523440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F20;
  *(inited + 32) = 0x65676175676E616CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v188;
  *(inited + 56) = v190;

  sub_1DC51764C();
  OUTLINED_FUNCTION_55();
  sub_1DC510DDC();
  v186 = 0;
LABEL_54:
  v235 = sub_1DC510DEC();
  __swift_storeEnumTagSinglePayload(v187, v186, 1, v235);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC421A08(uint64_t a1)
{
  OUTLINED_FUNCTION_376_0();
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  if (unk_1ECC7BD08 == 1)
  {
    OUTLINED_FUNCTION_75_6();
    nullsub_1();
  }

  v1 = OUTLINED_FUNCTION_43();
  sub_1DC2A329C(v1, v2);
  return OUTLINED_FUNCTION_65_1();
}

BOOL sub_1DC421A78()
{
  OUTLINED_FUNCTION_11_16();
  v1 = (*(v0 + 168))();
  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_1DC421ADC()
{
  OUTLINED_FUNCTION_1_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v1[11] = swift_getObjectType();
  v4 = sub_1DC511D5C();
  v1[12] = v4;
  OUTLINED_FUNCTION_52(v4);
  v1[13] = v5;
  v1[14] = OUTLINED_FUNCTION_124();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v6);
  v1[17] = OUTLINED_FUNCTION_118();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v7);
  v1[18] = OUTLINED_FUNCTION_118();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v8);
  v1[19] = OUTLINED_FUNCTION_118();
  v9 = sub_1DC511E5C();
  v1[20] = v9;
  OUTLINED_FUNCTION_52(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_118();
  v11 = sub_1DC510C8C();
  v1[23] = v11;
  OUTLINED_FUNCTION_52(v11);
  v1[24] = v12;
  v1[25] = OUTLINED_FUNCTION_118();
  v13 = sub_1DC516F5C();
  v1[26] = v13;
  OUTLINED_FUNCTION_52(v13);
  v1[27] = v14;
  v1[28] = OUTLINED_FUNCTION_118();
  v15 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1DC421D10()
{
  v147 = v0;
  v0[29] = sub_1DC297814();
  v1 = sub_1DC399074();
  v0[30] = v1;
  v2 = *(v1 + 16);
  v3 = sub_1DC296DBC();
  v4 = OUTLINED_FUNCTION_54_2();
  sub_1DC2A2ED0(v4, v5, v2, v3, 1, v6);

  if (sub_1DC41F2D4())
  {
    v7 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_430();
    v9 = (*(v8 + 216))();
    v0[31] = v9;
    if (v9)
    {
      v11 = v10;
      v145 = v9;
      v0[32] = v10;
      v12 = sub_1DC517B8C();
      v13 = sub_1DC296DBC();
      if (os_log_type_enabled(v13, v12))
      {
        v14 = v0[10];
        v137 = v11;
        v15 = OUTLINED_FUNCTION_63();
        v143 = OUTLINED_FUNCTION_82();
        v146 = v143;
        *v15 = 136446210;
        v16 = (*((*v7 & *v14) + 0x158))();
        v18 = v17;
        v19 = sub_1DC2B8808(v16, v17);
        v21 = v20;

        sub_1DC291244(v19, v21, &v146);
        OUTLINED_FUNCTION_155_0();

        *(v15 + 4) = v18;
        _os_log_impl(&dword_1DC287000, v13, v12, "NLRouter request asset info: %{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v143);
        OUTLINED_FUNCTION_66();
        v11 = v137;
        OUTLINED_FUNCTION_66();
      }

      if (qword_1ECC82DD8 != -1)
      {
LABEL_42:
        OUTLINED_FUNCTION_63_11(&qword_1ECC82DD8);
      }

      v22 = qword_1ECC8F638;
      OUTLINED_FUNCTION_430();
      (*(v23 + 144))(v24, v25, v26, v27);
      v28 = sub_1DC510B8C();
      v30 = v29;
      v31 = OUTLINED_FUNCTION_54_2();
      v33 = v32(v31);
      v0[2] = v28;
      v0[3] = v30;
      v0[4] = 45;
      v0[5] = 0xE100000000000000;
      v0[6] = 95;
      v0[7] = 0xE100000000000000;
      v133 = sub_1DC2A32B0(v33, v34, v35);
      v132 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_72_6();
      sub_1DC517E1C();

      v36 = OUTLINED_FUNCTION_151();
      v38 = sub_1DC2E4CBC(v36, v37, v22);

      if (!v38)
      {
        goto LABEL_21;
      }

      type metadata accessor for NLRouterServiceRequest(0);
      sub_1DC4465D4();
      type metadata accessor for NLRouterTurnProbingResult(0);
      v39 = OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_39(v39, v40, v41);
      if (v68)
      {
        v42 = v0[17];

        v43 = &qword_1ECC7C158;
        v44 = &unk_1DC5234A0;
      }

      else
      {
        OUTLINED_FUNCTION_151();
        sub_1DC4465D4();
        OUTLINED_FUNCTION_19_20();
        sub_1DC43F4A8();
        type metadata accessor for NLRouterNLParseResponse(0);
        v67 = OUTLINED_FUNCTION_155_0();
        OUTLINED_FUNCTION_14_2(v67);
        if (!v68)
        {
          v91 = v0[19];
          v90 = v0[20];
          sub_1DC4465D4();
          OUTLINED_FUNCTION_41_10();
          sub_1DC43F4A8();
          OUTLINED_FUNCTION_39(v91, 1, v90);
          if (!v92)
          {
            (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
            v93 = sub_1DC511E3C();
            v94 = v93;
            v95 = *(v93 + 16);
            if (v95)
            {
              v134 = v38;
              v138 = v11;
              v96 = v0[13];
              OUTLINED_FUNCTION_24();
              v11 = v94 + v97;
              v139 = *(v96 + 16);
              v139(v98, v94 + v97, v99, v100);
              v144 = (v96 + 8);
              v135 = v96;
              for (i = 1; v95 != i; ++i)
              {
                if (i >= *(v94 + 16))
                {
                  __break(1u);
                  goto LABEL_42;
                }

                (v139)(v0[14], v11 + *(v96 + 72) * i, v0[12]);
                sub_1DC511D4C();
                v103 = v102;
                sub_1DC511D4C();
                if (v103 >= v104)
                {
                  (*(v96 + 8))(v0[14], v0[12]);
                }

                else
                {
                  v105 = OUTLINED_FUNCTION_12_3();
                  v106(v105);
                  v107 = OUTLINED_FUNCTION_151();
                  v96 = v135;
                  v108(v107);
                }
              }

              v109 = OUTLINED_FUNCTION_151();
              v110(v109);
              sub_1DC511D4C();
              if (v111 <= 0.75)
              {
                v117 = v0[16];
                v118 = v0[12];

                (*v144)(v117, v118);
                v119 = OUTLINED_FUNCTION_31_0();
                v120(v119);
                v11 = v138;
                goto LABEL_21;
              }

              v112 = sub_1DC511D3C();
              v114 = sub_1DC332FF4(v112, v113, v134);

              v11 = v138;
              if (v114)
              {
                (*v144)(v0[16], v0[12]);
                v115 = OUTLINED_FUNCTION_31_0();
                v116(v115);
                goto LABEL_21;
              }

              v121 = v0[21];
              v140 = v0[20];
              v142 = v0[22];
              v122 = v0[16];
              v136 = v0[12];
              v45 = v0[8];
              sub_1DC5157CC();
              OUTLINED_FUNCTION_1_38();
              sub_1DC43F1F8(v123, v124);
              sub_1DC51501C();
              v125 = *MEMORY[0x1E69D02E8];
              sub_1DC5157EC();
              OUTLINED_FUNCTION_11_0();
              (*(v126 + 104))(v45, v125);
              sub_1DC517B9C();
              v127 = OUTLINED_FUNCTION_481();
              v128 = OUTLINED_FUNCTION_62_1();
              sub_1DC516F0C(v128, v129, v130, v131, 65, 2, v132, v133, v133, v133);

              (*v144)(v122, v136);
              (*(v121 + 8))(v142, v140);
              v54 = 0;
              goto LABEL_13;
            }

            (*(v0[21] + 8))(v0[22], v0[20]);

LABEL_21:
            v74 = v0[10];
            v73 = v0[11];
            v75 = v0[9];
            sub_1DC510D3C();
            v76 = type metadata accessor for NLRouterServiceRequest(0);
            v77 = (v75 + *(v76 + 40));
            v78 = v77[1];
            v141 = *v77;
            v79 = swift_allocObject();
            v0[33] = v79;
            v79[2] = v74;
            v79[3] = v145;
            v79[4] = v11;
            v79[5] = v73;
            v80 = v74;

            v81 = swift_task_alloc();
            v82 = OUTLINED_FUNCTION_461(v81);
            v83 = type metadata accessor for NLRouterServiceResponse(v82);
            v84 = sub_1DC43F1F8(&qword_1ECC7BC28, type metadata accessor for NLRouterServiceRequest);
            v85 = sub_1DC43F1F8(&qword_1ECC7BC30, type metadata accessor for NLRouterServiceRequest);
            v86 = sub_1DC43F1F8(&qword_1ECC7BBE8, type metadata accessor for NLRouterServiceResponse);
            v87 = sub_1DC43F1F8(&qword_1ECC7BBF0, type metadata accessor for NLRouterServiceResponse);
            *v81 = v0;
            v81[1] = sub_1DC422878;
            v89 = v0[8];
            v88 = v0[9];
            v151 = v86;
            v152 = v87;
            v149 = v84;
            v150 = v85;

            return MEMORY[0x1EEE03D40](v89, v141, v78, v88, &unk_1DC52A758, v79, v76, v83);
          }

LABEL_20:
          sub_1DC28EB30(v0[19], &qword_1ECC7D398, &qword_1DC5283F8);
          goto LABEL_21;
        }

        v42 = v0[18];

        v43 = &qword_1ECC7C160;
        v44 = qword_1DC5233B0;
      }

      sub_1DC28EB30(v42, v43, v44);
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
      goto LABEL_20;
    }

    v45 = v0[8];
    sub_1DC517B9C();
    v46 = OUTLINED_FUNCTION_481();
    v47 = OUTLINED_FUNCTION_62_1();
    v51 = 80;
  }

  else
  {
    v45 = v0[8];
    sub_1DC517B9C();
    v46 = OUTLINED_FUNCTION_481();
    v47 = OUTLINED_FUNCTION_62_1();
    v51 = 71;
  }

  sub_1DC516F0C(v47, v48, v49, v50, v51, 2);

  v52 = *MEMORY[0x1E69D02D8];
  sub_1DC5157EC();
  OUTLINED_FUNCTION_11_0();
  (*(v53 + 104))(v45, v52);
  v54 = 1;
LABEL_13:
  v55 = OUTLINED_FUNCTION_391();
  *(v45 + v56) = v54;
  v57 = (v45 + *(v55 + 24));
  *v57 = 0;
  v57[1] = 0;
  v58 = v1[1];
  v59 = *(v1 + 16);
  v60 = sub_1DC296DBC();
  v61 = OUTLINED_FUNCTION_39_0();
  sub_1DC2B8848(v61, v62, v58, v59, v60);

  v63 = OUTLINED_FUNCTION_271_0();
  v64(v63);

  OUTLINED_FUNCTION_39_5();

  return v65();
}

uint64_t sub_1DC422878()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v3 + 280) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC422980()
{
  v1 = *(v0 + 240);

  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = sub_1DC296DBC();
  v5 = OUTLINED_FUNCTION_36();
  sub_1DC2B8848(v5, v6, v2, v3, v4);

  v7 = OUTLINED_FUNCTION_271_0();
  v8(v7);

  OUTLINED_FUNCTION_39_5();

  return v9();
}

uint64_t sub_1DC422A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_374_0();
  v19 = v18[30];
  v20 = v18[28];
  v36 = v18[22];
  v37 = v18[19];
  v38 = v18[18];
  v39 = v18[17];
  v40 = v18[16];
  v41 = v18[15];
  v42 = v18[14];

  v21 = *v19;
  v22 = *(v19 + 8);
  v23 = *(v19 + 16);
  v24 = sub_1DC296DBC();
  sub_1DC2B8848(v20, v21, v22, v23, v24);

  v25 = OUTLINED_FUNCTION_63_0();
  v26(v25);

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_290_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, a16, a17, a18);
}

uint64_t NLRouterServiceResponse.init(routingDecision:status:decisionSource:)@<X0>(char *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  sub_1DC5157EC();
  OUTLINED_FUNCTION_11_0();
  v7 = OUTLINED_FUNCTION_31_0();
  v8(v7);
  result = OUTLINED_FUNCTION_391();
  *(a3 + v10) = v4;
  v11 = (a3 + *(result + 24));
  *v11 = v5;
  v11[1] = v6;
  return result;
}

uint64_t sub_1DC422C34()
{
  OUTLINED_FUNCTION_1_0();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v0[9] = v5;
  v0[10] = v6;
  v7 = sub_1DC5157EC();
  v0[15] = v7;
  OUTLINED_FUNCTION_52(v7);
  v0[16] = v8;
  v0[17] = OUTLINED_FUNCTION_118();
  v9 = sub_1DC510C8C();
  v0[18] = v9;
  OUTLINED_FUNCTION_52(v9);
  v0[19] = v10;
  v0[20] = OUTLINED_FUNCTION_118();
  v11 = type metadata accessor for IntepretedModelDecision(0);
  v0[21] = v11;
  OUTLINED_FUNCTION_10(v11);
  v0[22] = OUTLINED_FUNCTION_118();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v12);
  v0[23] = OUTLINED_FUNCTION_118();
  v13 = sub_1DC510B6C();
  v0[24] = v13;
  OUTLINED_FUNCTION_52(v13);
  v0[25] = v14;
  v0[26] = *(v15 + 64);
  v0[27] = OUTLINED_FUNCTION_124();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DC422DF4()
{
  OUTLINED_FUNCTION_36_11();
  v1 = v0[10];
  v2 = *(v0[11] + OBJC_IVAR____TtC13CDMFoundation15NLRouterService_nlRouterClientInstrumentationUtil);
  v0[31] = v2;
  v3 = type metadata accessor for NLRouterServiceRequest(0);
  v0[32] = v3;
  v4 = (v1 + *(v3 + 40));
  v0[33] = *v4;
  v0[34] = v4[1];
  v8 = (*(*v2 + 264) + **(*v2 + 264));
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_71_8(v5);

  return v8(v6);
}

uint64_t sub_1DC422F68()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = v3;

  v4 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DC423050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_93_0();
  v16 = v14[30];
  v15 = v14[31];
  v40 = v14[11];
  sub_1DC31D50C();
  v18 = v17;
  v20 = v19;
  v14[37] = v17;
  v14[38] = v19;
  v14[39] = v21;
  sub_1DC510B5C();
  sub_1DC510B5C();
  v22 = sub_1DC510D3C();
  v14[40] = v22;
  v14[5] = v18;
  v14[6] = v20;
  v25 = sub_1DC445FDC(v22, v23, v24);
  sub_1DC446030(v25, v26, v27);
  OUTLINED_FUNCTION_155_0();

  sub_1DC510D2C();

  v28 = swift_task_alloc();
  v14[41] = v28;
  v28[2] = v40;
  v28[3] = v18;
  v28[4] = v20;
  v28[5] = v16;
  v39 = (*v15 + 488);
  v41 = *v39 + **v39;
  v29 = swift_task_alloc();
  v14[42] = v29;
  *v29 = v14;
  v29[1] = sub_1DC423250;
  OUTLINED_FUNCTION_33_12(v14[36]);
  OUTLINED_FUNCTION_74_5();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v41, a12, a13, a14);
}

uint64_t sub_1DC423250()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v8 + 344) = v7;

  v9 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC423790(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_37_4();
  v5 = v4;
  v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_4_0();
  *v9 = v8;
  *v9 = *v3;
  v8[46] = v2;

  if (v2)
  {
  }

  else
  {
    v8[47] = v5;
    v8[48] = v7;
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_487();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC423CAC()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC423DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_368();
  v17 = *(v16 + 232);
  v18 = *(v16 + 224);
  v20 = *(v16 + 192);
  v19 = *(v16 + 200);
  v35 = *(v16 + 216);
  v36 = *(v16 + 184);
  v34 = *(v16 + 176);
  v37 = *(v16 + 160);

  OUTLINED_FUNCTION_11_31();
  sub_1DC43F4A8();
  v21 = *(v19 + 8);
  v21(v17, v20);
  v22 = OUTLINED_FUNCTION_36();
  v23(v22);
  v21(v18, v20);
  v24 = OUTLINED_FUNCTION_47_1();
  (v21)(v24);

  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_24_6();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, v37, a14, a15, a16);
}

uint64_t sub_1DC423F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_93_0();
  v15 = *(v14 + 200);

  v16 = *(v15 + 8);
  v29 = *(v14 + 160);
  v30 = *(v14 + 136);
  v31 = *(v14 + 368);
  v17 = OUTLINED_FUNCTION_36();
  v16(v17);
  v18 = OUTLINED_FUNCTION_107();
  v16(v18);
  v19 = OUTLINED_FUNCTION_29_0();
  v16(v19);

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_74_5();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, a12, a13, a14);
}

uint64_t sub_1DC424008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_368();
  v17 = *(v16 + 200);
  v18 = *(v16 + 128);

  OUTLINED_FUNCTION_11_31();
  sub_1DC43F4A8();
  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_31_0();
  v19(v20);
  v32 = *(v16 + 184);
  v33 = *(v16 + 176);
  v34 = *(v16 + 160);
  v35 = *(v16 + 408);
  (*(v18 + 8))(*(v16 + 136), *(v16 + 120));
  v21 = OUTLINED_FUNCTION_87_1();
  v19(v21);
  v22 = OUTLINED_FUNCTION_74_8();
  v19(v22);

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_24_6();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, v34, v35, a14, a15, a16);
}

uint64_t sub_1DC424138@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1DC424140()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_115_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_59_2();

  return sub_1DC42BD90();
}

uint64_t sub_1DC4241D8()
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_115_5();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_33_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_5(v3);
  OUTLINED_FUNCTION_59_2();

  return v6();
}

uint64_t sub_1DC424314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = OUTLINED_FUNCTION_47();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC424350()
{
  OUTLINED_FUNCTION_36_11();
  v8 = *(v0 + 40);
  v9 = *(v0 + 56);
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC13CDMFoundation15NLRouterService_nlRouterClientInstrumentationUtil);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v8;
  *(v4 + 40) = v9;
  *(v4 + 56) = v1;
  v10 = (*(*v3 + 496) + **(*v3 + 496));
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1DC4244E4;
  v6 = OUTLINED_FUNCTION_33_12(*(v0 + 24));

  return v10(v6);
}

uint64_t sub_1DC4244E4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC4245E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_37_4();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5(v4);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_487();

  return sub_1DC42C88C();
}

void sub_1DC424690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  LODWORD(v240) = v24;
  v26 = v25;
  v237 = v27;
  v241 = v28;
  OUTLINED_FUNCTION_42_0();
  v30 = v29;
  v244 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v248 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  v246 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v34);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF18, &qword_1DC522340);
  OUTLINED_FUNCTION_10(v37);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25();
  v236 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25();
  v238 = v42;
  v43 = OUTLINED_FUNCTION_12();
  v249 = type metadata accessor for IntepretedModelDecision(v43);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  v239 = v45;
  OUTLINED_FUNCTION_12();
  sub_1DC51072C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_3();
  v47 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_15();
  v245 = v51;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23_1();
  v243 = v53;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_62();
  v247 = v57;
  OUTLINED_FUNCTION_31_0();
  v58 = sub_1DC329FF0();
  if (v58 != 5)
  {
    v81 = v58;
    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v82 = sub_1DC296DBC();
    v83 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v83, v84, v85, v86, 44, 2);

    (*(v49 + 104))(v30, *MEMORY[0x1E69D02D8], v47);
    v87 = v249;
LABEL_70:
    *(v30 + *(v87 + 20)) = v81;
    OUTLINED_FUNCTION_34();
    return;
  }

  v242 = v49;
  v232 = v47;
  v231 = v30;
  OUTLINED_FUNCTION_31_0();
  v59 = sub_1DC3294B4();
  v252 = v21;
  v253 = v20;
  v60 = sub_1DC5106FC();
  sub_1DC2A32B0(v60, v61, v62);
  OUTLINED_FUNCTION_440();
  sub_1DC517E0C();
  OUTLINED_FUNCTION_137();
  v63 = OUTLINED_FUNCTION_73();
  v64(v63);
  if (!v59[2])
  {

    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v88 = sub_1DC296DBC();
    v89 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v89, v90, v91, v92, 36, 2);

    v93 = OUTLINED_FUNCTION_90_1();
    v94(v93);
    v81 = 4;
    goto LABEL_65;
  }

  v230 = &v252;
  OUTLINED_FUNCTION_458();
  if (v69 != 1)
  {
    v95 = v59[4];
    v96 = v59[5];
    v98 = v59[6];
    v97 = v59[7];
    v252 = v95;
    v253 = v96;
    v254 = v98;
    v255 = v97;
    v250 = v68;
    v251 = 0xE700000000000000;
    sub_1DC327AE8(v65, v66, v67);

    if (sub_1DC517E5C())
    {
      v252 = v95;
      v253 = v96;
      v254 = v98;
      v255 = v97;
      v250 = 0x3E6F646E753CLL;
      v251 = 0xE600000000000000;
      if (sub_1DC517E5C())
      {
        sub_1DC363388(v59);
        if (v100)
        {
          v248 = v99;

          if ((sub_1DC2CFA84() & 1) == 0)
          {

            goto LABEL_61;
          }

          v101 = OUTLINED_FUNCTION_152();
          MEMORY[0x1E1296060](v101);
          OUTLINED_FUNCTION_137();

          OUTLINED_FUNCTION_48_0();
          sub_1DC3295D4();
          OUTLINED_FUNCTION_141_1();

          OUTLINED_FUNCTION_301_0();
          v102 = MEMORY[0x1E1296060]();
          v104 = v103;

          v105 = *MEMORY[0x1E69D05E8];
          v106 = sub_1DC515ECC();
          OUTLINED_FUNCTION_35();
          v108 = v238;
          (*(v107 + 104))(v238, v105, v106);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v109, v110, v111, v106);
          v112 = v239;
          v113 = OUTLINED_FUNCTION_31_0();
          sub_1DC428B40(v113, v114, v102, v104, v238, v115, v26, v116, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);

          sub_1DC28EB30(v108, &qword_1ECC7D090, &qword_1DC524180);
          OUTLINED_FUNCTION_70_7();
          OUTLINED_FUNCTION_159();
          OUTLINED_FUNCTION_107_6();
          v117();
          v87 = v249;
          v81 = *(v112 + *(v249 + 20));
          OUTLINED_FUNCTION_11_31();
LABEL_33:
          sub_1DC43F4A8();
LABEL_66:
          v187 = sub_1DC517B9C();
          sub_1DC297814();
          v188 = sub_1DC296DBC();
          OUTLINED_FUNCTION_70_7();
          v189 = v245;
          v190 = OUTLINED_FUNCTION_74();
          v191(v190);
          if (os_log_type_enabled(v188, v187))
          {
            v192 = OUTLINED_FUNCTION_63();
            v193 = OUTLINED_FUNCTION_82();
            v252 = v193;
            *v192 = 136315138;
            v194 = sub_1DC32B2D8();
            v196 = v195;
            v197 = OUTLINED_FUNCTION_288();
            v198(v197);
            sub_1DC291244(v194, v196, &v252);
            OUTLINED_FUNCTION_155_0();

            *(v192 + 4) = v189;
            _os_log_impl(&dword_1DC287000, v188, v187, "Model Decision: %s", v192, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v193);
            v87 = v249;
            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_66();
          }

          else
          {

            v199 = OUTLINED_FUNCTION_288();
            v200(v199);
          }

          v30 = v231;
          v201 = OUTLINED_FUNCTION_35_0();
          v202(v201);
          goto LABEL_70;
        }
      }
    }

    if (!v59[2])
    {
      goto LABEL_85;
    }

    sub_1DC329B0C();
    v119 = v118;

    v120 = v244;
    if (v119)
    {
      v121 = OUTLINED_FUNCTION_56_0();
      MEMORY[0x1E1296060](v121);

      OUTLINED_FUNCTION_56_0();
      sub_1DC329804(v122);

      MEMORY[0x1EEE9AC00](v123);
      OUTLINED_FUNCTION_66_1();
      *(v124 - 16) = v243;
      *(v124 - 8) = v26;
      v126 = sub_1DC42A10C(sub_1DC43F51C, v125, v59);

      v241 = *(v126 + 16);
      if (!v241)
      {
LABEL_29:
        *v247 = v126;
        v81 = 5;
LABEL_64:
        OUTLINED_FUNCTION_257_0();
        OUTLINED_FUNCTION_107_6();
        v186();
        (*(v242 + 8))(v243, v26);
        goto LABEL_65;
      }

      v127 = 0;
      OUTLINED_FUNCTION_22_0();
      v129 = v126 + v128;
      v26 = v248;
      while (v127 < *(v126 + 16))
      {
        (*(v248 + 16))(v246, v129 + *(v248 + 72) * v127, v120);
        sub_1DC32F444();
        if (v131)
        {
          v132 = v130 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v132 = 0;
        }

        if (v131)
        {
          v133 = v131;
        }

        else
        {
          v133 = 0xE000000000000000;
        }

        v134 = OUTLINED_FUNCTION_45_2();
        v135(v134);

        v136 = HIBYTE(v133) & 0xF;
        if ((v133 & 0x2000000000000000) == 0)
        {
          v136 = v132;
        }

        if (!v136)
        {

          v81 = 1;
          goto LABEL_64;
        }

        if (v241 == ++v127)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v177 = sub_1DC296DBC();
    v178 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v178, v179, v180, v181, 54, 2);

    v182 = OUTLINED_FUNCTION_90_1();
    v183(v182);
    v81 = 1;
LABEL_65:
    v87 = v249;
    goto LABEL_66;
  }

  v243 = v49;
  v246 = v26;
  v70 = v59[4];
  v71 = v59[5];
  v72 = v59[6];
  v73 = v59[7];

  OUTLINED_FUNCTION_476();
  sub_1DC3295D4();
  v229 = v74;
  v76 = v75;

  v252 = v70;
  v253 = v71;
  v254 = v72;
  v255 = v73;
  v250 = 0x3E656761733CLL;
  v251 = 0xE600000000000000;
  sub_1DC327AE8(v77, v78, v79);
  v80 = v242;
  if (sub_1DC517E5C() & 1) != 0 && (sub_1DC2D14F0())
  {
    goto LABEL_60;
  }

  v252 = v70;
  v253 = v71;
  v254 = v72;
  v255 = v73;
  OUTLINED_FUNCTION_458();
  v250 = v138;
  v251 = v137;
  v140 = OUTLINED_FUNCTION_414(v139, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6158]);
  if (v140)
  {
    v140 = sub_1DC2CFA84();
    if (v140)
    {

      OUTLINED_FUNCTION_476();
      OUTLINED_FUNCTION_192();

      sub_1DC515ECC();
      v141 = v238;
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v142, v143, v144, v145);
      v146 = v239;
      OUTLINED_FUNCTION_96_4();
      sub_1DC428B40(v147, v148, v149, v150, v238, v151, v246, v152, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);

      sub_1DC28EB30(v141, &qword_1ECC7D090, &qword_1DC524180);
      OUTLINED_FUNCTION_70_7();
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_107_6();
      v153();
      v87 = v249;
      v81 = *(v146 + *(v249 + 20));
      OUTLINED_FUNCTION_11_31();
      goto LABEL_33;
    }
  }

  v252 = v70;
  v253 = v71;
  v254 = v72;
  v255 = v73;
  v250 = 0x3E6863726165733CLL;
  v251 = 0xE800000000000000;
  v154 = OUTLINED_FUNCTION_414(v140, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6158]);
  if (v154)
  {
    v154 = sub_1DC2BCEFC();
    if (v154)
    {
      OUTLINED_FUNCTION_253_0();
      v156 = v229;
      v158 = v229 == v157 && v76 == v155;
      if (v158)
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_187();
      if (sub_1DC51825C())
      {
        goto LABEL_60;
      }

      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
      v170 = OUTLINED_FUNCTION_311_0(v215);
      *(v170 + 16) = xmmword_1DC522F20;
      MEMORY[0x1EEE9AC00](v170);
      OUTLINED_FUNCTION_66_1();
      *(v216 - 16) = v156;
      *(v216 - 8) = v76;
      sub_1DC5158BC();
      OUTLINED_FUNCTION_429();
      sub_1DC5158DC();
      OUTLINED_FUNCTION_14_2(v236);
      v162 = v232;
      if (!v158)
      {

        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_272_0();
        v217();
        (*(v72 + 104))(v170 + v246, *MEMORY[0x1E69D0338], v244);
        v176 = &a18;
        goto LABEL_82;
      }

      goto LABEL_86;
    }
  }

  v252 = v70;
  v253 = v71;
  v254 = v72;
  v255 = v73;
  v250 = 0x3E78697269733CLL;
  v251 = 0xE700000000000000;
  if ((OUTLINED_FUNCTION_414(v154, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6158]) & 1) == 0)
  {
LABEL_60:

LABEL_61:
    v184 = OUTLINED_FUNCTION_90_1();
    v185(v184);
LABEL_62:
    v81 = 5;
    goto LABEL_65;
  }

  v240 = v73;
  sub_1DC329B0C();
  v160 = v76;
  v161 = v229 == v241 && v76 == v237;
  v87 = v249;
  v162 = v232;
  if (v161)
  {

    v203 = OUTLINED_FUNCTION_257_0();
    v204(v203);

LABEL_77:
    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v210 = sub_1DC296DBC();
    v211 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v211, v212, v213, v214, 20, 2);

LABEL_78:
    v81 = 1;
    goto LABEL_66;
  }

  LODWORD(v238) = v159;
  v239 = HIBYTE(v76) & 0xF;
  v163 = v229;
  if (OUTLINED_FUNCTION_267_0(v229))
  {
    goto LABEL_72;
  }

  OUTLINED_FUNCTION_253_0();
  if (v229 == v165 && v160 == v164)
  {
    goto LABEL_72;
  }

  OUTLINED_FUNCTION_77_1();
  if (sub_1DC51825C())
  {
    goto LABEL_72;
  }

  v167 = v229 & 0xFFFFFFFFFFFFLL;
  if ((v160 & 0x2000000000000000) != 0)
  {
    v167 = v239;
  }

  if (!v167)
  {
LABEL_72:

    v205 = OUTLINED_FUNCTION_257_0();
    v206(v205);
    v207 = OUTLINED_FUNCTION_77_1();
    v208 = OUTLINED_FUNCTION_267_0(v207);

    if ((v208 & 1) == 0)
    {
      v209 = v229 & 0xFFFFFFFFFFFFLL;
      if ((v160 & 0x2000000000000000) != 0)
      {
        v209 = v239;
      }

      if (((v209 != 0) & v238) != 0)
      {
        v81 = 5;
        goto LABEL_66;
      }
    }

    goto LABEL_77;
  }

  v168 = OUTLINED_FUNCTION_69_7();
  if ((sub_1DC32A17C(v168, v243, v246, v229, v160) & 1) == 0)
  {

    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v221 = sub_1DC296DBC();
    v222 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v222, v223, v224, v225, 49, 2);

    v226 = OUTLINED_FUNCTION_257_0();
    v227(v226);
    goto LABEL_78;
  }

  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
  v170 = OUTLINED_FUNCTION_311_0(v169);
  *(v170 + 16) = xmmword_1DC522F20;
  MEMORY[0x1EEE9AC00](v170);
  OUTLINED_FUNCTION_66_1();
  *(v171 - 16) = v163;
  *(v171 - 8) = v160;
  v172 = v234;
  sub_1DC51583C();
  OUTLINED_FUNCTION_429();
  sub_1DC51587C();
  v173 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_14_2(v173);
  if (!v158)
  {

    OUTLINED_FUNCTION_7_1();
    v175 = v246;
    (*(v174 + 32))(v170 + v246, v172, &v228);
    (*(v87 + 104))(v170 + v175, *MEMORY[0x1E69D0330], v244);
    v176 = &a16;
LABEL_82:
    v218 = *(v176 - 32);
    *v218 = v170;
    (*(v80 + 104))(v218, *MEMORY[0x1E69D02C8], v162);
    OUTLINED_FUNCTION_42_5();
    v219 = OUTLINED_FUNCTION_72();
    v220(v219);
    goto LABEL_62;
  }

LABEL_87:
  __break(1u);
}

uint64_t sub_1DC425868()
{
  OUTLINED_FUNCTION_1_0();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[2] = v7;
  v8 = type metadata accessor for HeuristicRoutingResponse(0);
  v0[9] = v8;
  OUTLINED_FUNCTION_10(v8);
  v0[10] = OUTLINED_FUNCTION_118();
  v9 = sub_1DC5157EC();
  v0[11] = v9;
  OUTLINED_FUNCTION_52(v9);
  v0[12] = v10;
  v0[13] = OUTLINED_FUNCTION_124();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA60, &qword_1DC52A778);
  OUTLINED_FUNCTION_10(v11);
  v0[16] = OUTLINED_FUNCTION_124();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DC425998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_368();
  v17 = *(v16 + 136);
  v18 = *(v16 + 72);
  v19 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & **(v16 + 24)) + 0x178))(*(v16 + 32), *(v16 + 40), *(v16 + 48), *(v16 + 56));
  OUTLINED_FUNCTION_45_2();
  sub_1DC4465D4();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1DC28EB30(*(v16 + 136), &qword_1ECC7DA60, &qword_1DC52A778);
    v20 = OUTLINED_FUNCTION_151();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_60();
    v23(v22);
    OUTLINED_FUNCTION_211_1();
    sub_1DC43F4A8();
    v20 = OUTLINED_FUNCTION_48_0();
  }

  v21(v20);
  (*((*v19 & **(v16 + 24)) + 0x1C0))(*(v16 + 120));
  OUTLINED_FUNCTION_45_2();
  if ((sub_1DC5157DC() & 1) != 0 || (v24 = *(v16 + 72), sub_1DC4465D4(), v25 = OUTLINED_FUNCTION_34_11(), OUTLINED_FUNCTION_39(v25, v26, v24), v27))
  {
    v52 = 2;
    v53 = 0;
  }

  else
  {
    v29 = *(v16 + 72);
    v28 = *(v16 + 80);
    sub_1DC440004();
    v30 = (v28 + *(v29 + 20));
    v52 = v30[1];
    v53 = *v30;

    OUTLINED_FUNCTION_211_1();
    sub_1DC43F4A8();
  }

  v31 = *(v16 + 144);
  v49 = *(v16 + 128);
  v50 = *(v16 + 112);
  v32 = *(v16 + 96);
  v51 = *(v16 + 80);
  v33 = *(v16 + 16);
  (*((*MEMORY[0x1E69E7D40] & **(v16 + 24)) + 0x180))(*(v16 + 104), *(v16 + 40), *(v16 + 64));
  v34 = *(v32 + 8);
  v35 = OUTLINED_FUNCTION_77_1();
  v34(v35);
  v36 = OUTLINED_FUNCTION_39_0();
  v34(v36);
  sub_1DC28EB30(v31, &qword_1ECC7DA60, &qword_1DC52A778);
  v37 = OUTLINED_FUNCTION_391();
  *(v33 + v38) = 0;
  v39 = (v33 + *(v37 + 24));
  *v39 = v53;
  v39[1] = v52;

  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_24_6();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, v49, v50, v51, v52, v53, a14, a15, a16);
}

uint64_t sub_1DC425CD0()
{
  OUTLINED_FUNCTION_1_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1DC510B6C();
  v1[6] = v5;
  OUTLINED_FUNCTION_52(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_118();
  v7 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC425D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_107_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_93_0();
  a20 = v22;
  v25 = v22[8];
  v26 = sub_1DC517B9C();
  v22[9] = sub_1DC297814();
  v27 = sub_1DC296DBC();
  v28 = OUTLINED_FUNCTION_87_1();
  v29(v28);
  if (os_log_type_enabled(v27, v26))
  {
    OUTLINED_FUNCTION_63();
    a10 = OUTLINED_FUNCTION_115_4();
    *v25 = 136315138;
    v30 = sub_1DC510B1C();
    HIDWORD(a9) = v26;
    v32 = v31;
    v33 = OUTLINED_FUNCTION_12_3();
    v34(v33);
    v35 = sub_1DC291244(v30, v32, &a10);

    *(v25 + 4) = v35;
    OUTLINED_FUNCTION_407(&dword_1DC287000, v36, BYTE4(a9), "GMS inference clientRequestIdentifier: %s");
    OUTLINED_FUNCTION_146_5();
    OUTLINED_FUNCTION_67();
  }

  else
  {

    v37 = OUTLINED_FUNCTION_12_3();
    v38(v37);
  }

  v39 = sub_1DC517B9C();
  v40 = sub_1DC296DBC();
  if (os_log_type_enabled(v40, v39))
  {
    v41 = OUTLINED_FUNCTION_63();
    a10 = OUTLINED_FUNCTION_82();
    *v41 = 136315138;
    v42 = OUTLINED_FUNCTION_16();
    *(v41 + 4) = sub_1DC291244(v42, v43, v44);
    OUTLINED_FUNCTION_409(&dword_1DC287000, v45, v39, "Model input: %s");
    OUTLINED_FUNCTION_146_5();
    OUTLINED_FUNCTION_54_12();
  }

  OUTLINED_FUNCTION_11_16();
  v47 = (*(v46 + 168))();
  v22[10] = v47;
  if (v47)
  {
    sub_1DC517B9C();
    v48 = sub_1DC296DBC();
    OUTLINED_FUNCTION_475(v48, &dword_1DC287000, v49, "Running inference with sanitizers disabled");

    v50 = swift_task_alloc();
    v22[11] = v50;
    *v50 = v22;
    v50[1] = sub_1DC4260B0;
    OUTLINED_FUNCTION_33_12(v22[2]);
    OUTLINED_FUNCTION_74_5();

    return sub_1DC4265BC();
  }

  else
  {
    sub_1DC517B9C();
    v53 = sub_1DC296DBC();
    v54 = OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C(v54, v55, v56, v57, 65, 2);

    sub_1DC43F5BC(v58, v59, v60);
    OUTLINED_FUNCTION_236_1();
    swift_allocError();
    *v61 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_74_5();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DC4260B0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  v2[12] = v4;
  v2[13] = v5;
  v2[14] = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC4261B4()
{
  OUTLINED_FUNCTION_36_11();
  v1 = sub_1DC517B9C();
  v2 = sub_1DC296DBC();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_82();
    *v3 = 136315138;
    v4 = OUTLINED_FUNCTION_16();
    *(v3 + 4) = sub_1DC291244(v4, v5, v6);
    OUTLINED_FUNCTION_409(&dword_1DC287000, v7, v1, "Model output: %s");
    OUTLINED_FUNCTION_146_5();
    OUTLINED_FUNCTION_54_12();
  }

  else
  {
  }

  OUTLINED_FUNCTION_297_0();
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);

  return v8(v9, v10);
}

void sub_1DC4262C4()
{
  OUTLINED_FUNCTION_36_11();
  v2 = sub_1DC517B9C();
  v3 = sub_1DC296DBC();
  if (os_log_type_enabled(v3, v2))
  {
    OUTLINED_FUNCTION_63();
    v4 = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_483(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_431(v5);
    _os_log_impl(&dword_1DC287000, v3, v2, "Model Inference Error: %@", v1, 0xCu);
    sub_1DC28EB30(v4, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_58();
  }

  v6 = *(v0 + 112);

  sub_1DC517BAC();
  v7 = sub_1DC296DBC();
  v8 = OUTLINED_FUNCTION_62_1();
  sub_1DC516F0C(v8, v9, v10, v11, 39, 2);

  sub_1DC43F5BC(v12, v13, v14);
  OUTLINED_FUNCTION_236_1();
  swift_allocError();
  *v15 = v6;
  swift_willThrow();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_477();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DC426430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_115_5();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_33_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_5(v15);
  OUTLINED_FUNCTION_272_0();

  return sub_1DC4265BC();
}

uint64_t sub_1DC4264C8()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;

  OUTLINED_FUNCTION_297_0();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_36();
  }

  return v5(v4);
}

uint64_t sub_1DC4265BC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_432(v1, v2, v3, v4);
  v0[28] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF08, &qword_1DC52E7D8);
  v0[29] = v6;
  OUTLINED_FUNCTION_52(v6);
  v0[30] = v7;
  v0[31] = OUTLINED_FUNCTION_118();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF10, &qword_1DC52E7E0);
  OUTLINED_FUNCTION_10(v8);
  v0[32] = OUTLINED_FUNCTION_118();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF18, &qword_1DC52E7E8);
  v0[33] = v9;
  OUTLINED_FUNCTION_10(v9);
  v10 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_461(v10);
  v11 = sub_1DC51648C();
  v0[35] = v11;
  OUTLINED_FUNCTION_52(v11);
  v0[36] = v12;
  v0[37] = OUTLINED_FUNCTION_118();
  v13 = sub_1DC51649C();
  v0[38] = v13;
  OUTLINED_FUNCTION_52(v13);
  v0[39] = v14;
  v0[40] = OUTLINED_FUNCTION_118();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF20, &qword_1DC52E7F0);
  OUTLINED_FUNCTION_10(v15);
  v0[41] = OUTLINED_FUNCTION_118();
  v16 = sub_1DC516EEC();
  v0[42] = v16;
  OUTLINED_FUNCTION_52(v16);
  v0[43] = v17;
  v0[44] = OUTLINED_FUNCTION_124();
  v0[45] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF28, &qword_1DC52E7F8);
  OUTLINED_FUNCTION_10(v18);
  v0[46] = OUTLINED_FUNCTION_124();
  v0[47] = swift_task_alloc();
  v19 = sub_1DC51510C();
  v0[48] = v19;
  OUTLINED_FUNCTION_52(v19);
  v0[49] = v20;
  v0[50] = OUTLINED_FUNCTION_118();
  v21 = sub_1DC51755C();
  v0[51] = v21;
  OUTLINED_FUNCTION_52(v21);
  v0[52] = v22;
  v0[53] = OUTLINED_FUNCTION_124();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1DC426900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_467();
  v19 = v18[54];
  v20 = v18[52];
  v22 = v18[50];
  v21 = v18[51];
  v47 = v18[49];
  v48 = v18[48];
  v46 = v18[47];
  OUTLINED_FUNCTION_370_0();
  v23 = v18[25];
  v24 = v18[24];
  v25 = swift_task_alloc();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  sub_1DC51756C();

  OUTLINED_FUNCTION_22_18();
  v18[58] = sub_1DC43F1F8(v26, v27);
  sub_1DC5175AC();
  v28 = *(v20 + 8);
  v18[59] = v28;
  v18[60] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29 = OUTLINED_FUNCTION_12_3();
  v28(v29);
  sub_1DC5175BC();
  (v28)(v19, v21);
  sub_1DC510B1C();
  sub_1DC5175DC();

  v30 = OUTLINED_FUNCTION_121_0();
  v28(v30);
  sub_1DC5150AC();
  v18[61] = sub_1DC5150BC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_1DC4465D4();
  OUTLINED_FUNCTION_69_10(a18);
  sub_1DC5150EC();
  sub_1DC5150CC();
  sub_1DC5150DC();
  sub_1DC28EB30(v46, &qword_1ECC7DF28, &qword_1DC52E7F8);
  OUTLINED_FUNCTION_89();
  sub_1DC5175EC();
  v35 = *(v47 + 8);
  v18[62] = v35;
  v18[63] = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v22, v48);
  v36 = OUTLINED_FUNCTION_113_0();
  v28(v36);
  sub_1DC516EDC();
  v37 = OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  OUTLINED_FUNCTION_406();
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  v18[64] = v41;
  *v41 = v42;
  OUTLINED_FUNCTION_345_0(v41);
  OUTLINED_FUNCTION_366_0();

  return MEMORY[0x1EEE0B308](v43);
}

uint64_t sub_1DC426BE8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 520) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC426CE0()
{
  v2 = v0[32];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF30, &qword_1DC52E800);
  v4 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v4, v5, v3);
  if (v6)
  {
    sub_1DC28EB30(v2, &qword_1ECC7DF10, &qword_1DC52E7E0);
  }

  else
  {
    v121 = v0[62];
    v119 = v0[61];
    v7 = OUTLINED_FUNCTION_99_3(v0[56]);
    v8 = (v1)(v7);
    v16 = OUTLINED_FUNCTION_325_0(v8, v9, v10, v11, v12, v13, v14, v15, v60, v65, v70, v75, v80, v85, v90);
    v3(v16);
    OUTLINED_FUNCTION_206_0();
    v17 = v1();
    v25 = OUTLINED_FUNCTION_428(v17, v18, v19, v20, v21, v22, v23, v24, v61, v66, v71, v76, v81, v86, v91, v95, v99);
    v3(v25);
    v26 = sub_1DC51647C();
    v34 = OUTLINED_FUNCTION_323_0(v26, v27, v28, v29, v30, v31, v32, v33, v62, v67, v72, v77, v82, v87, v92, v96, v100, v103, v106, v109, v112);
    v35(v34);
    v36 = OUTLINED_FUNCTION_63_0();
    v37(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF38, &qword_1DC52E808);
    inited = swift_initStackObject();
    v39 = OUTLINED_FUNCTION_295_0(inited, xmmword_1DC522F20);
    OUTLINED_FUNCTION_404(v39, MEMORY[0x1E69C6560], v63, v68, v73, v78, v83, v88, v93, v97, v101, v104, v107, v110, v113, v115, v116, v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF40, &unk_1DC52E810);
    OUTLINED_FUNCTION_288();
    sub_1DC51764C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE0, &qword_1DC525830);
    v40 = swift_initStackObject();
    OUTLINED_FUNCTION_292_0(v40, "_OverrideConfigurationHelper.samplingParameters(SamplingParameters(strategy:.argmax()))", v64, v69, v74, v79, v84, v89, v94, v98, v102, v105, v108, v111, v114);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v119);
    OUTLINED_FUNCTION_75_4();
    sub_1DC4465D4();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_69_10(v118);
    sub_1DC5150EC();
    sub_1DC5150CC();
    sub_1DC5150DC();
    sub_1DC28EB30(v3, &qword_1ECC7DF28, &qword_1DC52E7F8);
    *(v40 + 72) = v120;
    __swift_allocate_boxed_opaque_existential_0Tm((v40 + 48));
    sub_1DC51517C();
    v44 = OUTLINED_FUNCTION_19_6();
    v121(v44);
    OUTLINED_FUNCTION_47_1();
    sub_1DC51764C();
    OUTLINED_FUNCTION_96_4();
    sub_1DC51646C();

    v45 = OUTLINED_FUNCTION_209();
    v46(v45);
    v47 = OUTLINED_FUNCTION_147_4();
    v48(v47);
    v49 = OUTLINED_FUNCTION_438();
    v50(v49);
    v51 = OUTLINED_FUNCTION_60();
    v52(v51);
  }

  v53 = v0[59];
  OUTLINED_FUNCTION_322_0();
  OUTLINED_FUNCTION_335();
  v54 = OUTLINED_FUNCTION_45_2();
  v53(v54);
  v55 = swift_task_alloc();
  v0[66] = v55;
  OUTLINED_FUNCTION_203_1();
  sub_1DC43F1F8(v56, v57);
  *v55 = v0;
  v58 = OUTLINED_FUNCTION_426();

  return MEMORY[0x1EEE0A360](v58);
}

uint64_t sub_1DC4270A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_464();
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *v7 = *v4;
  v6[67] = v3;

  v8 = v6[31];
  v9 = v6[30];
  v10 = v6[29];
  if (!v3)
  {
    v6[68] = v2;
    v6[69] = v5;
  }

  (*(v9 + 8))(v8, v10);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_487();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC42720C()
{
  v1 = v0[59];
  (*(v0[43] + 8))(v0[45], v0[42]);
  v2 = OUTLINED_FUNCTION_39_0();
  v1(v2);

  OUTLINED_FUNCTION_297_0();
  v4 = v0[69];
  v5 = v0[68];

  return v3(v4, v5);
}

uint64_t sub_1DC42736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_374_0();
  v19 = *(v18 + 472);
  v20 = OUTLINED_FUNCTION_110_7();
  v21(v20);
  v22 = OUTLINED_FUNCTION_31_0();
  v19(v22);
  OUTLINED_FUNCTION_192_1();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_290_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1DC427468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_374_0();
  v19 = *(v18 + 472);
  v20 = OUTLINED_FUNCTION_110_7();
  v21(v20);
  v22 = OUTLINED_FUNCTION_31_0();
  v19(v22);
  OUTLINED_FUNCTION_192_1();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_290_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1DC427564()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_115_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_272_0();

  return sub_1DC4275FC();
}

uint64_t sub_1DC4275FC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_432(v1, v2, v3, v4);
  v0[28] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF08, &qword_1DC52E7D8);
  v0[29] = v6;
  OUTLINED_FUNCTION_52(v6);
  v0[30] = v7;
  v0[31] = OUTLINED_FUNCTION_118();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF10, &qword_1DC52E7E0);
  OUTLINED_FUNCTION_10(v8);
  v0[32] = OUTLINED_FUNCTION_118();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF18, &qword_1DC52E7E8);
  v0[33] = v9;
  OUTLINED_FUNCTION_10(v9);
  v10 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_461(v10);
  v11 = sub_1DC51648C();
  v0[35] = v11;
  OUTLINED_FUNCTION_52(v11);
  v0[36] = v12;
  v0[37] = OUTLINED_FUNCTION_118();
  v13 = sub_1DC51649C();
  v0[38] = v13;
  OUTLINED_FUNCTION_52(v13);
  v0[39] = v14;
  v0[40] = OUTLINED_FUNCTION_118();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF20, &qword_1DC52E7F0);
  OUTLINED_FUNCTION_10(v15);
  v0[41] = OUTLINED_FUNCTION_118();
  v16 = sub_1DC516EEC();
  v0[42] = v16;
  OUTLINED_FUNCTION_52(v16);
  v0[43] = v17;
  v0[44] = OUTLINED_FUNCTION_124();
  v0[45] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF28, &qword_1DC52E7F8);
  OUTLINED_FUNCTION_10(v18);
  v0[46] = OUTLINED_FUNCTION_124();
  v0[47] = swift_task_alloc();
  v19 = sub_1DC51510C();
  v0[48] = v19;
  OUTLINED_FUNCTION_52(v19);
  v0[49] = v20;
  v0[50] = OUTLINED_FUNCTION_118();
  v21 = sub_1DC51755C();
  v0[51] = v21;
  OUTLINED_FUNCTION_52(v21);
  v0[52] = v22;
  v0[53] = OUTLINED_FUNCTION_124();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1DC427928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_467();
  v19 = v18[52];
  v20 = v18[50];
  v44 = v18[49];
  v45 = v18[48];
  v21 = v18[47];
  OUTLINED_FUNCTION_370_0();
  v22 = v18[25];
  v23 = v18[24];
  v24 = swift_task_alloc();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  sub_1DC51756C();

  sub_1DC510B1C();
  OUTLINED_FUNCTION_141_1();
  OUTLINED_FUNCTION_22_18();
  v18[56] = sub_1DC43F1F8(v25, v26);
  OUTLINED_FUNCTION_31_0();
  sub_1DC5175DC();

  v27 = *(v19 + 8);
  v18[57] = v27;
  v18[58] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28 = OUTLINED_FUNCTION_121_0();
  v27(v28);
  sub_1DC5150AC();
  v18[59] = sub_1DC5150BC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_1DC4465D4();
  OUTLINED_FUNCTION_69_10(a18);
  sub_1DC5150EC();
  sub_1DC5150CC();
  sub_1DC5150DC();
  sub_1DC28EB30(v21, &qword_1ECC7DF28, &qword_1DC52E7F8);
  OUTLINED_FUNCTION_89();
  sub_1DC5175EC();
  v33 = *(v44 + 8);
  v18[60] = v33;
  v18[61] = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v20, v45);
  v34 = OUTLINED_FUNCTION_12_3();
  v27(v34);
  sub_1DC516EDC();
  v35 = OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  OUTLINED_FUNCTION_406();
  swift_task_alloc();
  OUTLINED_FUNCTION_79_0();
  v18[62] = v39;
  *v39 = v40;
  OUTLINED_FUNCTION_345_0(v39);
  OUTLINED_FUNCTION_366_0();

  return MEMORY[0x1EEE0B308](v41);
}

uint64_t sub_1DC427BB8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 504) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC427CB0()
{
  v2 = v0[32];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF30, &qword_1DC52E800);
  v4 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v4, v5, v3);
  if (v6)
  {
    sub_1DC28EB30(v2, &qword_1ECC7DF10, &qword_1DC52E7E0);
  }

  else
  {
    v121 = v0[60];
    v119 = v0[59];
    v7 = OUTLINED_FUNCTION_99_3(v0[54]);
    v8 = (v1)(v7);
    v16 = OUTLINED_FUNCTION_325_0(v8, v9, v10, v11, v12, v13, v14, v15, v60, v65, v70, v75, v80, v85, v90);
    v3(v16);
    OUTLINED_FUNCTION_206_0();
    v17 = v1();
    v25 = OUTLINED_FUNCTION_428(v17, v18, v19, v20, v21, v22, v23, v24, v61, v66, v71, v76, v81, v86, v91, v95, v99);
    v3(v25);
    v26 = sub_1DC51647C();
    v34 = OUTLINED_FUNCTION_323_0(v26, v27, v28, v29, v30, v31, v32, v33, v62, v67, v72, v77, v82, v87, v92, v96, v100, v103, v106, v109, v112);
    v35(v34);
    v36 = OUTLINED_FUNCTION_63_0();
    v37(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF38, &qword_1DC52E808);
    inited = swift_initStackObject();
    v39 = OUTLINED_FUNCTION_295_0(inited, xmmword_1DC522F20);
    OUTLINED_FUNCTION_404(v39, MEMORY[0x1E69C6560], v63, v68, v73, v78, v83, v88, v93, v97, v101, v104, v107, v110, v113, v115, v116, v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF40, &unk_1DC52E810);
    OUTLINED_FUNCTION_288();
    sub_1DC51764C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE0, &qword_1DC525830);
    v40 = swift_initStackObject();
    OUTLINED_FUNCTION_292_0(v40, "_OverrideConfigurationHelper.samplingParameters(SamplingParameters(strategy:.argmax()))", v64, v69, v74, v79, v84, v89, v94, v98, v102, v105, v108, v111, v114);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v119);
    OUTLINED_FUNCTION_75_4();
    sub_1DC4465D4();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_69_10(v118);
    sub_1DC5150EC();
    sub_1DC5150CC();
    sub_1DC5150DC();
    sub_1DC28EB30(v3, &qword_1ECC7DF28, &qword_1DC52E7F8);
    *(v40 + 72) = v120;
    __swift_allocate_boxed_opaque_existential_0Tm((v40 + 48));
    sub_1DC51517C();
    v44 = OUTLINED_FUNCTION_19_6();
    v121(v44);
    OUTLINED_FUNCTION_47_1();
    sub_1DC51764C();
    OUTLINED_FUNCTION_96_4();
    sub_1DC51646C();

    v45 = OUTLINED_FUNCTION_209();
    v46(v45);
    v47 = OUTLINED_FUNCTION_147_4();
    v48(v47);
    v49 = OUTLINED_FUNCTION_438();
    v50(v49);
    v51 = OUTLINED_FUNCTION_60();
    v52(v51);
  }

  v53 = v0[57];
  OUTLINED_FUNCTION_322_0();
  OUTLINED_FUNCTION_335();
  v54 = OUTLINED_FUNCTION_45_2();
  v53(v54);
  v55 = swift_task_alloc();
  v0[64] = v55;
  OUTLINED_FUNCTION_203_1();
  sub_1DC43F1F8(v56, v57);
  *v55 = v0;
  v58 = OUTLINED_FUNCTION_426();

  return MEMORY[0x1EEE0A360](v58);
}

uint64_t sub_1DC428070(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_464();
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *v7 = *v4;
  v6[65] = v3;

  v8 = v6[31];
  v9 = v6[30];
  v10 = v6[29];
  if (!v3)
  {
    v6[66] = v2;
    v6[67] = v5;
  }

  (*(v9 + 8))(v8, v10);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_487();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC4281DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_468();
  v21 = v20[57];
  v22 = v20[55];
  v23 = v20[51];
  v33 = v20[46];
  v34 = v20[44];
  v35 = v20[41];
  v36 = v20[40];
  v37 = v20[37];
  v38 = v20[34];
  v39 = v20[32];
  v40 = v20[31];
  (*(v20[43] + 8))(v20[45], v20[42]);
  v21(v22, v23);

  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_365_0();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, v36, v37, v38, v39, v40, a18, a19, a20);
}

uint64_t sub_1DC428310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_368();
  v17 = *(v16 + 456);
  v18 = OUTLINED_FUNCTION_110_7();
  v19(v18);
  v20 = OUTLINED_FUNCTION_31_0();
  v17(v20);
  OUTLINED_FUNCTION_245_0();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_24_6();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1DC4283FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_368();
  v17 = *(v16 + 456);
  v18 = OUTLINED_FUNCTION_110_7();
  v19(v18);
  v20 = OUTLINED_FUNCTION_31_0();
  v17(v20);
  OUTLINED_FUNCTION_245_0();

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_24_6();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1DC4284E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DC51759C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v13[3] = MEMORY[0x1E69E6158];
  v13[4] = MEMORY[0x1E69C6560];
  v13[0] = a1;
  v13[1] = a2;

  sub_1DC51758C();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF48, &qword_1DC52E820);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DC522F20;
  (*(v6 + 16))(v8 + v7, v2, v5);
  v9 = OUTLINED_FUNCTION_29_0();
  MEMORY[0x1E1295E20](v9);

  v10 = OUTLINED_FUNCTION_36();
  return v11(v10);
}

void sub_1DC428688(char a1)
{
  switch(a1)
  {
    case 12:
      OUTLINED_FUNCTION_415(19);
      break;
    case 14:
    case 25:
      OUTLINED_FUNCTION_31_1();
      break;
    default:
      return;
  }
}

uint64_t sub_1DC4289E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC5174BC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1DC428A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for NLRouterActionCandidate(0);
  if (v3)
  {
    sub_1DC43F610();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v4);
}

void sub_1DC428B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  v23 = v22;
  v217 = v24;
  v235 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v227 = v34;
  sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  v224 = v36;
  v225 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v37);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF50, &unk_1DC52E828);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  v41 = OUTLINED_FUNCTION_10(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23_1();
  v222 = v43;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_23_1();
  v223 = v45;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_62();
  v221 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v48);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25();
  v213 = v50;
  OUTLINED_FUNCTION_12();
  sub_1DC515F4C();
  OUTLINED_FUNCTION_3_33();
  v233 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v53);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF58, &qword_1DC52E838);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v56);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_25();
  v230 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  v60 = OUTLINED_FUNCTION_10(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v212 - v65;
  sub_1DC3299B0(&unk_1F57FD000, v23, v29, v27);
  OUTLINED_FUNCTION_253_0();
  v229 = v67;
  v216 = v68;
  v70 = v33 == v69 && v31 == 0xEC0000003E657469;
  if (v70 || (OUTLINED_FUNCTION_62_2(), (sub_1DC51825C() & 1) != 0))
  {
    v234 = 0;
    v238 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_62_2();
    v234 = sub_1DC32977C();
    v238 = v71;
  }

  sub_1DC515F3C();
  sub_1DC43F1F8(&qword_1ECC7C1E8, MEMORY[0x1E69D0618]);
  OUTLINED_FUNCTION_56_7();
  v236 = sub_1DC51502C();
  OUTLINED_FUNCTION_56();
  sub_1DC329C6C();
  OUTLINED_FUNCTION_56();
  v72 = sub_1DC329EF0();
  OUTLINED_FUNCTION_146_1();
  sub_1DC4465D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v20);
  v74 = MEMORY[0x1E69D0620];
  v237 = v66;
  v231 = v29;
  v232 = v27;
  v228 = v72;
  if (EnumTagSinglePayload != 1)
  {
    sub_1DC4465D4();
    v75 = v233;
    v76 = OUTLINED_FUNCTION_117_0();
    if (v77(v76) == *v74)
    {
      KeyPath = swift_getKeyPath();
      sub_1DC515E7C();
      OUTLINED_FUNCTION_226_1();
      sub_1DC43F1F8(v78, v79);
      OUTLINED_FUNCTION_56_7();
      sub_1DC51502C();
      swift_getKeyPath();
      v80 = sub_1DC514FCC();

      v23 = v80(v66);

      swift_getKeyPath();
      v81 = sub_1DC514FCC();

      v82 = OUTLINED_FUNCTION_81_7();
      v81(v82);

      v83 = MEMORY[0x1E69D0600];
      goto LABEL_16;
    }

    v84 = OUTLINED_FUNCTION_117_0();
    v85(v84);
  }

  KeyPath = swift_getKeyPath();
  if (v72)
  {
    sub_1DC515E7C();
    OUTLINED_FUNCTION_226_1();
    sub_1DC43F1F8(v86, v87);
    OUTLINED_FUNCTION_56_7();
    sub_1DC51502C();
    swift_getKeyPath();
    sub_1DC514FCC();
    OUTLINED_FUNCTION_412();

    v88 = OUTLINED_FUNCTION_81_7();
    v23(v88);
    OUTLINED_FUNCTION_353_0();

    v83 = MEMORY[0x1E69D0600];
  }

  else
  {
    sub_1DC515EBC();
    OUTLINED_FUNCTION_225_2();
    sub_1DC43F1F8(v89, v90);
    OUTLINED_FUNCTION_56_7();
    sub_1DC51502C();
    swift_getKeyPath();
    sub_1DC514FCC();
    OUTLINED_FUNCTION_412();

    v91 = OUTLINED_FUNCTION_81_7();
    v23(v91);
    OUTLINED_FUNCTION_353_0();

    v83 = MEMORY[0x1E69D0608];
  }

  v75 = v233;
LABEL_16:
  OUTLINED_FUNCTION_80_8();
  swift_getKeyPath();
  sub_1DC514FCC();
  OUTLINED_FUNCTION_412();

  v23(v235);
  OUTLINED_FUNCTION_353_0();

  v92 = v230;
  sub_1DC51500C();

  v93 = *v83;
  v94 = sub_1DC515EDC();
  OUTLINED_FUNCTION_35();
  v96 = *(v95 + 104);
  v96(v92, v93, v94);
  v97 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v94);
  sub_1DC514FFC();
  sub_1DC28EB30(v21, &qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_11_6(v237);
  if (v70)
  {
    goto LABEL_18;
  }

  v233 = v96;
  v103 = v219;
  (*(v75 + 13))(v219, *MEMORY[0x1E69D0620], v20);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v20);
  v107 = *(v218 + 48);
  v108 = v103;
  v27 = v220;
  OUTLINED_FUNCTION_392();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_392();
  sub_1DC4465D4();
  OUTLINED_FUNCTION_11_6(v27);
  if (v109)
  {
    sub_1DC28EB30(v108, &qword_1ECC7CB08, &unk_1DC5240E0);
    OUTLINED_FUNCTION_11_6(v27 + v107);
    if (!v70)
    {
      goto LABEL_27;
    }

    sub_1DC28EB30(v27, &qword_1ECC7CB08, &unk_1DC5240E0);
    OUTLINED_FUNCTION_80_8();
LABEL_18:
    OUTLINED_FUNCTION_265_0();
    goto LABEL_32;
  }

  sub_1DC4465D4();
  OUTLINED_FUNCTION_11_6(v27 + v107);
  if (v110)
  {
    sub_1DC28EB30(v108, &qword_1ECC7CB08, &unk_1DC5240E0);
    v75 += 8;
    v111 = OUTLINED_FUNCTION_147_0();
    v112(v111);
LABEL_27:
    sub_1DC28EB30(v27, &qword_1ECC7DF58, &qword_1DC52E838);
    OUTLINED_FUNCTION_80_8();
    OUTLINED_FUNCTION_265_0();
    goto LABEL_28;
  }

  v125 = OUTLINED_FUNCTION_380();
  v126(v125);
  sub_1DC43F1F8(&qword_1ECC7DF60, MEMORY[0x1E69D0630]);
  OUTLINED_FUNCTION_39_0();
  LODWORD(KeyPath) = sub_1DC5176CC();
  v127 = *(v75 + 1);
  v75 += 8;
  v128 = OUTLINED_FUNCTION_36();
  v127(v128);
  OUTLINED_FUNCTION_206_0();
  sub_1DC28EB30(v129, v130, v131);
  v132 = OUTLINED_FUNCTION_147_0();
  v127(v132);
  OUTLINED_FUNCTION_206_0();
  sub_1DC28EB30(v133, v134, v135);
  OUTLINED_FUNCTION_80_8();
  OUTLINED_FUNCTION_265_0();
  if (KeyPath)
  {
LABEL_32:
    v137 = v231;
    v136 = v232;
    v241 = v231;
    v242 = v232;
    v239 = v75;
    v240 = v27;
    sub_1DC2A32B0(v100, v101, v102);
    if (OUTLINED_FUNCTION_328_0(&v239, MEMORY[0x1E69E6158]))
    {
      v138 = MEMORY[0x1E69D0730];
      v139 = v237;
      v141 = v224;
      v140 = v225;
      v142 = v222;
    }

    else
    {
      v241 = v137;
      v242 = v136;
      OUTLINED_FUNCTION_242_1();
      v143 = OUTLINED_FUNCTION_328_0(&v239, MEMORY[0x1E69E6158]);
      v139 = v237;
      v141 = v224;
      v140 = v225;
      v142 = v222;
      if ((v143 & 1) == 0)
      {
        if (v228)
        {
          swift_getKeyPath();
          v150 = *MEMORY[0x1E69D0728];
          v144 = *(v141 + 104);
          v144(v221, v150, v140);
          v151 = OUTLINED_FUNCTION_56_13();
          __swift_storeEnumTagSinglePayload(v151, v152, v153, v140);
          OUTLINED_FUNCTION_62_2();
          sub_1DC514FFC();
          if (v229)
          {
            goto LABEL_37;
          }

LABEL_42:
          swift_getKeyPath();
          sub_1DC514FEC();

          v144(v142, v150, v140);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v154, v155, v156, v140);
          v157 = v215;
          OUTLINED_FUNCTION_96_4();
          sub_1DC4465D4();
          OUTLINED_FUNCTION_96_4();
          sub_1DC4465D4();
          v158 = OUTLINED_FUNCTION_53_15();
          OUTLINED_FUNCTION_39(v158, v159, v140);
          if (v70)
          {
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v160, v161, v162);
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v163, v164, v165);
            v166 = OUTLINED_FUNCTION_331();
            OUTLINED_FUNCTION_39(v166, v167, v140);
            if (v70)
            {
              sub_1DC28EB30(v157, &qword_1ECC7BF98, &qword_1DC5224C0);
LABEL_57:
              if (!v216)
              {
                goto LABEL_37;
              }

              goto LABEL_58;
            }
          }

          else
          {
            OUTLINED_FUNCTION_484();
            v168 = OUTLINED_FUNCTION_331();
            OUTLINED_FUNCTION_39(v168, v169, v140);
            if (!v170)
            {
              v182 = OUTLINED_FUNCTION_380();
              v183(v182);
              OUTLINED_FUNCTION_48_10();
              sub_1DC43F1F8(v184, v185);
              OUTLINED_FUNCTION_63_0();
              LODWORD(v237) = sub_1DC5176CC();
              v186 = *(v141 + 8);
              v187 = OUTLINED_FUNCTION_187();
              v186(v187);
              OUTLINED_FUNCTION_26_1();
              sub_1DC28EB30(v188, v189, v190);
              OUTLINED_FUNCTION_26_1();
              sub_1DC28EB30(v191, v192, v193);
              (v186)(&qword_1ECC7BF98, v140);
              OUTLINED_FUNCTION_69_7();
              OUTLINED_FUNCTION_26_1();
              sub_1DC28EB30(v194, v195, v196);
              if ((v237 & 1) == 0)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            }

            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v171, v172, v173);
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v174, v175, v176);
            v177 = OUTLINED_FUNCTION_187();
            v178(v177);
          }

          sub_1DC28EB30(v157, &qword_1ECC7DF50, &unk_1DC52E828);
          goto LABEL_58;
        }

        if (v229)
        {
          goto LABEL_37;
        }

LABEL_58:
        if (v217)
        {
          v149 = v227;
          if (!v216 && !v238)
          {
            v148 = 5;
            goto LABEL_64;
          }
        }

        else
        {

          v149 = v227;
          if (((v228 | v229) & 1) == 0)
          {
            sub_1DC517BAC();
            OUTLINED_FUNCTION_21_2();
            v200 = sub_1DC296DBC();
            v201 = OUTLINED_FUNCTION_40_1();
            sub_1DC516F0C(v201, v202, v203, v204, 52, 2);

            v148 = 0;
            v197 = MEMORY[0x1E69D02D8];
            goto LABEL_65;
          }
        }

        v148 = 0;
LABEL_64:
        sub_1DC51500C();
        v197 = MEMORY[0x1E69D02E0];
        goto LABEL_65;
      }

      v138 = MEMORY[0x1E69D0720];
    }

    swift_getKeyPath();
    v144 = *(v141 + 104);
    v144(v221, *v138, v140);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v145, v146, v147, v140);
    OUTLINED_FUNCTION_31_0();
    sub_1DC514FFC();
    if (v229)
    {
LABEL_37:

      v148 = 5;
      v149 = v227;
      goto LABEL_64;
    }

    if (v228)
    {
      v150 = *MEMORY[0x1E69D0728];
      goto LABEL_42;
    }

    goto LABEL_58;
  }

LABEL_28:
  v114 = v231;
  v113 = v232;
  v241 = v231;
  v242 = v232;
  v239 = v75;
  v240 = v27;
  sub_1DC2A32B0(v100, v101, v102);
  if (OUTLINED_FUNCTION_328_0(&v239, MEMORY[0x1E69E6158]) & 1) != 0 || (v241 = v114, v242 = v113, OUTLINED_FUNCTION_242_1(), (OUTLINED_FUNCTION_328_0(&v239, MEMORY[0x1E69E6158])))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_155();
    sub_1DC515EBC();
    OUTLINED_FUNCTION_225_2();
    sub_1DC43F1F8(v115, v116);
    OUTLINED_FUNCTION_56_7();
    sub_1DC51502C();
    swift_getKeyPath();
    v117 = sub_1DC514FCC();

    v118 = OUTLINED_FUNCTION_81_7();
    v117(v118);
    OUTLINED_FUNCTION_155_0();

    swift_getKeyPath();
    v119 = sub_1DC514FCC();
    v27 = v120;

    v119(v235);
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_80_8();

    v121 = v230;
    sub_1DC51500C();

    (v233)(v121, *MEMORY[0x1E69D0608], v94);
    v122 = OUTLINED_FUNCTION_56_13();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v94);
    OUTLINED_FUNCTION_36();
    v100 = sub_1DC514FFC();
    v228 = 0;
    goto LABEL_32;
  }

  sub_1DC5157CC();
  OUTLINED_FUNCTION_1_38();
  sub_1DC43F1F8(v179, v180);
  OUTLINED_FUNCTION_56_7();
  sub_1DC51502C();
  swift_getKeyPath();
  OUTLINED_FUNCTION_81_7();
  sub_1DC514FDC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_155();
  v181 = sub_1DC515ECC();
  OUTLINED_FUNCTION_39(v235, 1, v181);
  if (v70)
  {
    sub_1DC51589C();
    OUTLINED_FUNCTION_19();
  }

  else
  {
    v205 = *MEMORY[0x1E69D0350];
    v206 = sub_1DC51589C();
    OUTLINED_FUNCTION_35();
    (*(v207 + 104))(v213, v205, v206);
    OUTLINED_FUNCTION_61();
    v211 = v206;
  }

  __swift_storeEnumTagSinglePayload(v208, v209, v210, v211);
  v149 = v227;
  v139 = v237;
  OUTLINED_FUNCTION_107();
  sub_1DC514FDC();
  sub_1DC51500C();

  v148 = 5;
  v197 = MEMORY[0x1E69D02E8];
LABEL_65:

  v198 = *v197;
  sub_1DC5157EC();
  OUTLINED_FUNCTION_11_0();
  (*(v199 + 104))(v149, v198);
  *(v149 + *(type metadata accessor for IntepretedModelDecision(0) + 20)) = v148;
  sub_1DC28EB30(v139, &qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_34();
}

void sub_1DC429CA4()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v43 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF18, &qword_1DC522340);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_76_9(v9, v41);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF10, &unk_1DC522A50);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_30_1();
  v12 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  MEMORY[0x1E1296060](*v3, v3[1], v3[2], v3[3]);
  sub_1DC3295D4();

  OUTLINED_FUNCTION_147_0();
  v16 = sub_1DC32977C();
  v44 = v17;

  v18 = *(v14 + 104);
  v18(v1, *MEMORY[0x1E69D02F8], v12);
  OUTLINED_FUNCTION_47_1();
  v19 = sub_1DC5157DC();
  v20 = *(v14 + 8);
  v21 = OUTLINED_FUNCTION_176();
  v20(v21);
  if (v19)
  {
    v22 = sub_1DC2D14F0();
    if (v22)
    {
      MEMORY[0x1EEE9AC00](v22);
      OUTLINED_FUNCTION_66_1();
      *(v23 - 16) = v16;
      *(v23 - 8) = v44;
      sub_1DC5158FC();
      OUTLINED_FUNCTION_457();
      v24 = sub_1DC51591C();
      OUTLINED_FUNCTION_14_2(v0);
      if (!v25)
      {

        OUTLINED_FUNCTION_7_1();
        v27 = v43;
        (*(v26 + 32))(v43, v0, v24);
        v28 = MEMORY[0x1E69D0340];
LABEL_11:
        v39 = *v28;
        sub_1DC51588C();
        OUTLINED_FUNCTION_11_0();
        (*(v40 + 104))(v27, v39);
        OUTLINED_FUNCTION_34();
        return;
      }

      goto LABEL_13;
    }
  }

  v18(v1, *MEMORY[0x1E69D02F0], v12);
  OUTLINED_FUNCTION_288();
  v29 = sub_1DC5157DC();
  v30 = OUTLINED_FUNCTION_176();
  v31 = (v20)(v30);
  if ((v29 & 1) == 0 || (v31 = sub_1DC2BCEFC(), (v31 & 1) == 0))
  {
    MEMORY[0x1EEE9AC00](v31);
    OUTLINED_FUNCTION_66_1();
    *(v34 - 16) = v16;
    *(v34 - 8) = v44;
    sub_1DC51583C();
    OUTLINED_FUNCTION_457();
    v35 = sub_1DC51587C();
    v36 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_39(v36, v37, v35);
    if (!v25)
    {

      OUTLINED_FUNCTION_7_1();
      v27 = v43;
      OUTLINED_FUNCTION_26_1();
      v38();
      v28 = MEMORY[0x1E69D0330];
      goto LABEL_11;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_66_1();
  *(v32 - 16) = v16;
  *(v32 - 8) = v44;
  sub_1DC5158BC();
  OUTLINED_FUNCTION_457();
  sub_1DC5158DC();
  OUTLINED_FUNCTION_14_2(v42);
  if (!v25)
  {

    OUTLINED_FUNCTION_7_1();
    v27 = v43;
    OUTLINED_FUNCTION_272_0();
    v33();
    v28 = MEMORY[0x1E69D0338];
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1DC42A10C(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_1DC51588C();
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1DC2AA348(0, v9, 0);
  v10 = v24;
  v17 = v6 + 32;
  for (i = (a3 + 56); ; i += 4)
  {
    v12 = *(i - 1);
    v13 = *i;
    v21 = *(i - 3);
    v22 = v12;
    v23 = v13;

    v19(&v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v24 = v10;
    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1DC2AA348((v14 > 1), v15 + 1, 1);
      v10 = v24;
    }

    *(v10 + 16) = v15 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v8, v18);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void sub_1DC42A2E0()
{
  OUTLINED_FUNCTION_33();
  v6 = v5;
  v56 = v7;
  v57 = v8;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA60, &qword_1DC52A778);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_50_13(v13, v54);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_24_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_78_8();
  v18 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_2();
  v22 = type metadata accessor for NLRouterServiceRequest(0);
  v23 = OUTLINED_FUNCTION_10(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3();
  v24 = type metadata accessor for HeuristicRoutingRequest(0);
  v25 = OUTLINED_FUNCTION_10(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_221_1();
  sub_1DC43F610();
  (*(v20 + 16))(v1, v10, v18);
  v26 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  v28 = *(v27 + 240);

  v30 = v28(&v58, v29);
  (*((*v26 & *v0) + 0x120))(v30);
  OUTLINED_FUNCTION_11_16();
  (*(v31 + 144))();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_61();
  v36 = __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  sub_1DC40C2CC(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_55();
  sub_1DC40C2D4(v39, v40, v56, v6, v41, v4, v3, v42, v43);
  sub_1DC376A28(v2, v55);
  v44 = type metadata accessor for HeuristicRoutingResponse(0);
  OUTLINED_FUNCTION_4_24(v55);
  if (v45)
  {
    if (qword_1ECC82DF0 != -1)
    {
      OUTLINED_FUNCTION_24_17(&qword_1ECC82DF0);
    }

    OUTLINED_FUNCTION_72_6();
    swift_beginAccess();
    if ((byte_1ECC8FA40 & 1) != 0 || (sub_1DC32B52C(), (v46 & 1) == 0))
    {
      OUTLINED_FUNCTION_61_7();
      sub_1DC28EB30(v55, &qword_1ECC7DA60, &qword_1DC52A778);
      v52 = OUTLINED_FUNCTION_53_15();
    }

    else
    {
      sub_1DC517B9C();
      OUTLINED_FUNCTION_21_2();
      v47 = sub_1DC296DBC();
      v48 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v48, v49, v50, v51, 68, 2);

      sub_1DC32CDF4();
      sub_1DC40C468(v1, 0xD00000000000001ALL, 0x80000001DC547E90, v57);
      OUTLINED_FUNCTION_61_7();
      sub_1DC28EB30(v55, &qword_1ECC7DA60, &qword_1DC52A778);
      v52 = v57;
      v53 = 0;
    }

    __swift_storeEnumTagSinglePayload(v52, v53, 1, v44);
  }

  else
  {
    OUTLINED_FUNCTION_61_7();
    sub_1DC440B84();
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC42A710()
{
  OUTLINED_FUNCTION_33();
  sub_1DC5157EC();
  OUTLINED_FUNCTION_3_33();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v5 = *(v3 + 16);
  v6 = OUTLINED_FUNCTION_149();
  v5(v6);
  v7 = (*(v3 + 88))(v1, v0);
  if (v7 == *MEMORY[0x1E69D02E8])
  {
    goto LABEL_2;
  }

  if (v7 == *MEMORY[0x1E69D02C8])
  {
    (*(v3 + 8))(v1, v0);
    v10 = OUTLINED_FUNCTION_55();
    v11(v10);
    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x1E69D02E0])
  {
LABEL_2:
    OUTLINED_FUNCTION_11_16();
    v8 = OUTLINED_FUNCTION_55();
    v9(v8);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_35_0();
    v5(v12);
  }

  (*(v3 + 8))(v1, v0);
LABEL_6:
  OUTLINED_FUNCTION_34();
}

void sub_1DC42A94C()
{
  OUTLINED_FUNCTION_33();
  v101 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_57_0();
  v96 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v104 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v94 = v9;
  v10 = OUTLINED_FUNCTION_12();
  v11 = type metadata accessor for TurnSummary(v10);
  v12 = OUTLINED_FUNCTION_52(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v13 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  v17 = *(v15 + 16);
  v18 = OUTLINED_FUNCTION_55();
  (v17)(v18);
  v19 = OUTLINED_FUNCTION_73();
  v21 = v20(v19);
  if (v21 != *MEMORY[0x1E69D02C8])
  {
    v77 = OUTLINED_FUNCTION_73();
    v78(v77);
    OUTLINED_FUNCTION_75_4();
    v17();
    goto LABEL_48;
  }

  v93 = v21;
  OUTLINED_FUNCTION_433();
  v22 = OUTLINED_FUNCTION_73();
  v23(v22);
  v24 = *v1;
  OUTLINED_FUNCTION_11_16();
  (*(v25 + 240))(&v106);
  v26 = v13;
  if (!v107)
  {
    sub_1DC28EB30(&v106, &qword_1ECC7CF30, &unk_1DC525A00);
    v79 = *(v24 + 16);
    if (v79)
    {
      OUTLINED_FUNCTION_379();
      v108[0] = MEMORY[0x1E69E7CC0];
      sub_1DC2AA348(0, v79, 0);
      v80 = v108[0];
      v103 = *(v104 + 16);
      OUTLINED_FUNCTION_24();
      v100 = v81;
      v82 = v24 + v81;
      v99 = *(v104 + 72);
      do
      {
        v83 = OUTLINED_FUNCTION_48_0();
        v103(v83);
        sub_1DC329208();
        sub_1DC3305F4();

        v84 = OUTLINED_FUNCTION_151();
        v85(v84);
        v108[0] = v80;
        v87 = *(v80 + 16);
        v86 = *(v80 + 24);
        if (v87 >= v86 >> 1)
        {
          v88 = OUTLINED_FUNCTION_26(v86);
          sub_1DC2AA348(v88, v87 + 1, 1);
          v80 = v108[0];
        }

        *(v80 + 16) = v87 + 1;
        (*(v104 + 32))(v80 + v100 + v87 * v99, v94, v96);
        v82 += v99;
        --v79;
      }

      while (v79);

      v0 = v92;
      v26 = v91;
      v15 = v90;
    }

    else
    {

      v80 = MEMORY[0x1E69E7CC0];
    }

    *v0 = v80;
    (*(v15 + 104))(v0, v93, v26);
    goto LABEL_48;
  }

  v89 = v24;
  OUTLINED_FUNCTION_379();
  sub_1DC28F9B0(&v106, v108);
  v27 = v109;
  v28 = v110;
  OUTLINED_FUNCTION_310_0(v108);
  v29 = (*(v28 + 8))(*v5, v5[1], 1, v27, v28);
  v30 = *(v5 + *(type metadata accessor for NLRouterServiceRequest(0) + 24));

  sub_1DC2D69A8(v101, v30);
  v97 = v33;
  if (v31 == v32 >> 1)
  {
LABEL_38:
    swift_unknownObjectRelease();

    v72 = sub_1DC322E3C(v71);
    MEMORY[0x1EEE9AC00](v72);
    OUTLINED_FUNCTION_66_1();
    *(v74 - 16) = v73;
    *(v74 - 8) = v108;
    v76 = sub_1DC3289D8(sub_1DC43F684, v75, v89);

    *v92 = v76;
    (*(v90 + 104))();
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
LABEL_48:
    OUTLINED_FUNCTION_34();
    return;
  }

  v34 = v32 >> 1;
  v95 = v32 >> 1;
  while (1)
  {
    if (v31 >= v34)
    {
      goto LABEL_53;
    }

    v98 = v31;
    v35 = *(v97 + 48 * v31 + 32);
    v36 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v102 = *(v36 + 8);

    swift_bridgeObjectRetain_n();
    v105 = v35;

    v37 = OUTLINED_FUNCTION_107();
    v38 = v102(v37);

    v39 = *(v38 + 16);
    v40 = *(v29 + 2);
    v41 = v40 + v39;
    if (__OFADD__(v40, v39))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v41 > *(v29 + 3) >> 1)
    {
      if (v40 <= v41)
      {
        v43 = v40 + v39;
      }

      else
      {
        v43 = v40;
      }

      v29 = sub_1DC2ACCD4(isUniquelyReferenced_nonNull_native, v43, 1, v29);
    }

    if (*(v38 + 16))
    {
      OUTLINED_FUNCTION_444();
      if (v45 < v39)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_443(v44);
      swift_arrayInitWithCopy();

      if (v39)
      {
        v46 = *(v29 + 2);
        v47 = __OFADD__(v46, v39);
        v48 = v46 + v39;
        if (v47)
        {
          goto LABEL_57;
        }

        *(v29 + 2) = v48;
      }
    }

    else
    {

      if (v39)
      {
        goto LABEL_55;
      }
    }

    v49 = *(v105 + 16);
    if (v49)
    {
      OUTLINED_FUNCTION_22_0();
      v52 = v50 + v51;
      v54 = *(v53 + 72);
      do
      {
        OUTLINED_FUNCTION_44_14();
        OUTLINED_FUNCTION_113_0();
        sub_1DC43F610();
        v55 = v109;
        v56 = v110;
        OUTLINED_FUNCTION_310_0(v108);
        v58 = *(v2 + 32);
        v57 = *(v2 + 40);

        OUTLINED_FUNCTION_43_15();
        sub_1DC43F4A8();
        if (v57)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        if (v57)
        {
          v60 = v57;
        }

        else
        {
          v60 = 0xE000000000000000;
        }

        v61 = (*(v56 + 8))(v59, v60, 1, v55, v56);

        v62 = *(v61 + 16);
        v63 = *(v29 + 2);
        if (__OFADD__(v63, v62))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if (v63 + v62 > *(v29 + 3) >> 1)
        {
          v68 = OUTLINED_FUNCTION_441();
          v29 = sub_1DC2ACCD4(v68, v69, v70, v29);
          if (*(v61 + 16))
          {
LABEL_30:
            OUTLINED_FUNCTION_444();
            if (v65 < v62)
            {
              goto LABEL_51;
            }

            OUTLINED_FUNCTION_443(v64);
            swift_arrayInitWithCopy();

            if (v62)
            {
              v66 = *(v29 + 2);
              v47 = __OFADD__(v66, v62);
              v67 = v66 + v62;
              if (v47)
              {
                goto LABEL_52;
              }

              *(v29 + 2) = v67;
            }

            goto LABEL_36;
          }
        }

        else if (v62)
        {
          goto LABEL_30;
        }

        if (v62)
        {
          goto LABEL_50;
        }

LABEL_36:
        v52 += v54;
        --v49;
      }

      while (v49);
    }

    v31 = v98 + 1;
    v34 = v95;
    if (v98 + 1 == v95)
    {
      goto LABEL_38;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_1DC42B108(uint64_t a1)
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

  sub_1DC43F0B8(result, 1, sub_1DC43EB6C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for NLRouterActionCandidate(0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DC42B21C(uint64_t a1)
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

  result = sub_1DC43F0B8(result, 1, sub_1DC43EDB4);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + v7 + 32), (a1 + 32), v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1DC42B2E8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v37 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v38 = sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v18 = *(v10 + 16);
  v19 = OUTLINED_FUNCTION_74_0();
  v18(v19);
  v20 = OUTLINED_FUNCTION_212();
  if (v21(v20) == *MEMORY[0x1E69D0330])
  {
    v35 = v7;
    v36 = v5;
    v22 = OUTLINED_FUNCTION_212();
    v23(v22);
    (*(v16 + 32))(v0, v14, v38);
    v24 = *(v2 + 32);
    v25 = OUTLINED_FUNCTION_152();
    v27 = __swift_project_boxed_opaque_existential_1(v25, v26);
    v28 = sub_1DC51582C();
    (*(v24 + 8))(v28);
    OUTLINED_FUNCTION_155_0();

    v29 = sub_1DC322E3C(v27);
    v30 = sub_1DC40BF8C(v37, v29);

    if ((v30 & 1) == 0)
    {
      sub_1DC329208();
      sub_1DC3305F4();

      (*(v16 + 8))(v0, v38);
      goto LABEL_7;
    }

    (*(v16 + 8))(v0, v38);
    v31 = v35;
    v32 = v36;
  }

  else
  {
    v33 = OUTLINED_FUNCTION_212();
    v34(v33);
    v31 = OUTLINED_FUNCTION_176();
  }

  (v18)(v31, v32, v8);
LABEL_7:
  OUTLINED_FUNCTION_34();
}

void sub_1DC42B5EC()
{
  OUTLINED_FUNCTION_33();
  v53 = v1;
  v52 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v55 = v9;
  sub_1DC5157EC();
  OUTLINED_FUNCTION_3_33();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  v13 = v6(0);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v54 = v18;
  v19 = *(v11 + 16);
  v20 = OUTLINED_FUNCTION_159();
  v19(v20);
  v21 = OUTLINED_FUNCTION_30_6();
  if (v22(v21) == *v4)
  {
    v51 = v8;
    v23 = OUTLINED_FUNCTION_30_6();
    v24(v23);
    v25 = *(v15 + 32);
    v26 = OUTLINED_FUNCTION_35_0();
    v25(v26);
    OUTLINED_FUNCTION_11_16();
    (*(v27 + 240))(&v56);
    if (v57)
    {
      v49 = v15;
      v50 = v13;
      sub_1DC28F9B0(&v56, v58);
      sub_1DC42B9FC();
      v28 = v59;
      v29 = v60;
      v30 = __swift_project_boxed_opaque_existential_1(v58, v59);
      v31 = v52();
      if (v32)
      {
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      (*(v29 + 8))(v31, v33, 1, v28, v29);
      OUTLINED_FUNCTION_155_0();

      sub_1DC322E3C(v30);
      v34 = OUTLINED_FUNCTION_340_0();
      v36 = sub_1DC40BF8C(v34, v35);

      if (v36)
      {
        (*(v49 + 8))(v54, v50);
        (v19)(v55, v51, v0);
      }

      else
      {
        v45 = sub_1DC329208();
        v53(v45);

        (*(v49 + 8))(v54, v50);
        v46 = OUTLINED_FUNCTION_74();
        v25(v46);
        v47 = OUTLINED_FUNCTION_436();
        v48(v47);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v58);
    }

    else
    {
      sub_1DC28EB30(&v56, &qword_1ECC7CF30, &unk_1DC525A00);
      v39 = sub_1DC329208();
      v53(v39);

      v40 = OUTLINED_FUNCTION_47_1();
      v41(v40);
      v42 = OUTLINED_FUNCTION_74();
      v25(v42);
      v43 = OUTLINED_FUNCTION_436();
      v44(v43);
    }
  }

  else
  {
    v37 = OUTLINED_FUNCTION_30_6();
    v38(v37);
    (v19)(v55, v8, v0);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC42B9FC()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_38_2();
  v6 = type metadata accessor for TurnSummary(v5);
  v7 = OUTLINED_FUNCTION_52(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = OUTLINED_FUNCTION_151();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v54 = v9;
  v55 = v8;
  v12 = *(v9 + 8);
  v12(*v4, v4[1], 1, v8, v9);
  v13 = OUTLINED_FUNCTION_384();
  v14 = *(v4 + *(type metadata accessor for NLRouterServiceRequest(v13) + 24));

  sub_1DC2D69A8(v2, v14);
  v51 = v17;
  if (v15 == v16 >> 1)
  {
LABEL_36:
    swift_unknownObjectRelease();
    sub_1DC322E3C(v8);
    OUTLINED_FUNCTION_34();
  }

  else
  {
    v18 = v16 >> 1;
    v50 = v16 >> 1;
    while (1)
    {
      if (v15 >= v18)
      {
        goto LABEL_41;
      }

      v19 = (v51 + 48 * v15);
      v20 = v19[3];
      v21 = v19[4];
      v22 = v19[2];
      v23 = v20 ? v22 : 0;
      v24 = v20 ? v20 : 0xE000000000000000;
      v52 = v15;

      swift_bridgeObjectRetain_n();
      v53 = v21;

      v25 = v12(v23, v24, 1, v55, v54);

      v26 = *(v25 + 16);
      v27 = *(v8 + 2);
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v28 > *(v8 + 3) >> 1)
      {
        if (v27 <= v28)
        {
          v30 = v27 + v26;
        }

        else
        {
          v30 = v27;
        }

        v8 = sub_1DC2ACCD4(isUniquelyReferenced_nonNull_native, v30, 1, v8);
      }

      if (*(v25 + 16))
      {
        OUTLINED_FUNCTION_444();
        if (v31 < v26)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        if (v26)
        {
          v32 = *(v8 + 2);
          v33 = __OFADD__(v32, v26);
          v34 = v32 + v26;
          if (v33)
          {
            goto LABEL_45;
          }

          *(v8 + 2) = v34;
        }
      }

      else
      {

        if (v26)
        {
          goto LABEL_43;
        }
      }

      v35 = *(v53 + 16);
      if (v35)
      {
        OUTLINED_FUNCTION_22_0();
        v38 = v36 + v37;
        v40 = *(v39 + 72);
        do
        {
          OUTLINED_FUNCTION_44_14();
          OUTLINED_FUNCTION_39_0();
          sub_1DC43F610();

          OUTLINED_FUNCTION_43_15();
          sub_1DC43F4A8();
          OUTLINED_FUNCTION_299_0();
          v41 = (v12)();

          v42 = *(v41 + 16);
          v43 = *(v8 + 2);
          if (__OFADD__(v43, v42))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          if (v43 + v42 > *(v8 + 3) >> 1)
          {
            v47 = OUTLINED_FUNCTION_441();
            v8 = sub_1DC2ACCD4(v47, v48, v49, v8);
            if (*(v41 + 16))
            {
LABEL_28:
              OUTLINED_FUNCTION_444();
              if (v44 < v42)
              {
                goto LABEL_39;
              }

              swift_arrayInitWithCopy();

              if (v42)
              {
                v45 = *(v8 + 2);
                v33 = __OFADD__(v45, v42);
                v46 = v45 + v42;
                if (v33)
                {
                  goto LABEL_40;
                }

                *(v8 + 2) = v46;
              }

              goto LABEL_34;
            }
          }

          else if (v42)
          {
            goto LABEL_28;
          }

          if (v42)
          {
            goto LABEL_38;
          }

LABEL_34:
          v38 += v40;
          --v35;
        }

        while (v35);
      }

      v15 = v52 + 1;
      v18 = v50;
      if (v52 + 1 == v50)
      {
        goto LABEL_36;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

uint64_t sub_1DC42BD90()
{
  OUTLINED_FUNCTION_1_0();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DED0, &qword_1DC52E700);
  OUTLINED_FUNCTION_10(v5);
  v1[16] = OUTLINED_FUNCTION_118();
  v6 = sub_1DC51750C();
  v1[17] = v6;
  OUTLINED_FUNCTION_52(v6);
  v1[18] = v7;
  v1[19] = OUTLINED_FUNCTION_118();
  v8 = sub_1DC5174BC();
  v1[20] = v8;
  OUTLINED_FUNCTION_52(v8);
  v1[21] = v9;
  v1[22] = OUTLINED_FUNCTION_124();
  v1[23] = swift_task_alloc();
  v10 = sub_1DC510B6C();
  v1[24] = v10;
  OUTLINED_FUNCTION_52(v10);
  v1[25] = v11;
  v1[26] = OUTLINED_FUNCTION_118();
  v12 = sub_1DC51754C();
  v1[27] = v12;
  OUTLINED_FUNCTION_52(v12);
  v1[28] = v13;
  v1[29] = OUTLINED_FUNCTION_118();
  v14 = sub_1DC5174EC();
  v1[30] = v14;
  OUTLINED_FUNCTION_52(v14);
  v1[31] = v15;
  v1[32] = OUTLINED_FUNCTION_124();
  v1[33] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DC42BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_374_0();
  OUTLINED_FUNCTION_11_16();
  (*(v19 + 192))();
  if (*(v18 + 80))
  {
    v57 = *(v18 + 256);
    v20 = *(v18 + 248);
    v55 = *(v18 + 264);
    v56 = *(v18 + 240);
    v22 = *(v18 + 224);
    v21 = *(v18 + 232);
    v23 = *(v18 + 208);
    v24 = *(v18 + 200);
    v54 = *(v18 + 192);
    v52 = *(v18 + 216);
    v53 = *(v18 + 112);
    sub_1DC28F9B0((v18 + 56), v18 + 16);
    v25 = OUTLINED_FUNCTION_113_0();
    v26(v25);
    OUTLINED_FUNCTION_137();
    (*(v22 + 104))(v21, *MEMORY[0x1E69ABD58], v52);
    (*(v24 + 16))(v23, v53, v54);
    OUTLINED_FUNCTION_48_0();
    sub_1DC5174CC();
    v27 = sub_1DC517B9C();
    *(v18 + 272) = sub_1DC297814();
    v28 = sub_1DC296DBC();
    (*(v20 + 16))(v57, v55, v56);
    v29 = os_log_type_enabled(v28, v27);
    v31 = *(v18 + 248);
    v30 = *(v18 + 256);
    if (v29)
    {
      v58 = v27;
      v32 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_82();
      *v32 = 136315138;
      sub_1DC5174DC();
      v33 = *(v31 + 8);
      v34 = OUTLINED_FUNCTION_151();
      v33(v34);
      v35 = OUTLINED_FUNCTION_74_0();
      sub_1DC291244(v35, v36, v37);
      OUTLINED_FUNCTION_353_0();

      *(v32 + 4) = v30;
      OUTLINED_FUNCTION_473(&dword_1DC287000, "Cache input: %s", v58);
      OUTLINED_FUNCTION_138_3();
      OUTLINED_FUNCTION_58();
    }

    else
    {

      v33 = *(v31 + 8);
      v47 = OUTLINED_FUNCTION_151();
      v33(v47);
    }

    *(v18 + 280) = v33;
    OUTLINED_FUNCTION_310_0((v18 + 16));
    swift_task_alloc();
    OUTLINED_FUNCTION_79_0();
    *(v18 + 288) = v48;
    *v48 = v49;
    v48[1] = sub_1DC42C310;
    OUTLINED_FUNCTION_290_0();

    return MEMORY[0x1EEE18718](v50);
  }

  else
  {
    sub_1DC28EB30(v18 + 56, &qword_1ECC7DA28, &unk_1DC52A6D0);

    OUTLINED_FUNCTION_297_0();
    OUTLINED_FUNCTION_75_6();
    OUTLINED_FUNCTION_290_0();

    return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1DC42C310()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC42C408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_107_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_93_0();
  a20 = v22;
  v25 = v22[16];
  v26 = sub_1DC5174FC();
  v27 = OUTLINED_FUNCTION_56_0();
  v28(v27);
  sub_1DC4289E0(v26, v25);

  OUTLINED_FUNCTION_11_6(v25);
  if (v29)
  {
    v30 = v22[35];
    sub_1DC28EB30(v22[16], &qword_1ECC7DED0, &qword_1DC52E700);
    v31 = sub_1DC517BBC();
    v32 = sub_1DC296DBC();
    sub_1DC516F0C(v31, &dword_1DC287000, v32, "Cache MISS, will continue with regular inference", 48, 2, MEMORY[0x1E69E7CC0]);

    v33 = OUTLINED_FUNCTION_63_0();
    v30(v33);
  }

  else
  {
    (*(v22[21] + 32))(v22[23], v22[16], v22[20]);
    v34 = sub_1DC517BBC();
    v35 = sub_1DC296DBC();
    v36 = OUTLINED_FUNCTION_16();
    v37(v36);
    v38 = os_log_type_enabled(v35, v34);
    v39 = v22[22];
    if (v38)
    {
      v40 = OUTLINED_FUNCTION_63();
      a11 = OUTLINED_FUNCTION_82();
      *v40 = 136315138;
      v41 = sub_1DC5174AC();
      HIDWORD(a9) = v34;
      v43 = v42;
      v44 = OUTLINED_FUNCTION_151();
      a10 = v45;
      v45(v44);
      sub_1DC291244(v41, v43, &a11);
      OUTLINED_FUNCTION_353_0();

      *(v40 + 4) = v39;
      OUTLINED_FUNCTION_473(&dword_1DC287000, "Cache HIT, cache output: %s", BYTE4(a9));
      OUTLINED_FUNCTION_138_3();
      OUTLINED_FUNCTION_58();
    }

    else
    {

      v46 = OUTLINED_FUNCTION_151();
      a10 = v47;
      v47(v46);
    }

    v48 = v22[35];
    sub_1DC5174AC();
    OUTLINED_FUNCTION_141_1();
    v49 = OUTLINED_FUNCTION_54_2();
    a10(v49);
    v50 = OUTLINED_FUNCTION_45_2();
    v48(v50);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);

  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_74_5();

  return v54(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DC42C6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_374_0();
  v19 = sub_1DC517BAC();
  v20 = sub_1DC296DBC();
  if (os_log_type_enabled(v20, v19))
  {
    OUTLINED_FUNCTION_63();
    v21 = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_483(5.7779e-34);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_431(v22);
    OUTLINED_FUNCTION_410(&dword_1DC287000, v23, v19, "Failed to search cache, will continue with regular inference %@");
    sub_1DC28EB30(v21, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_58();
  }

  v24 = v18[37];
  v25 = v18[35];
  v40 = v18[26];
  v41 = v18[23];
  v42 = v18[22];
  v43 = v18[19];
  v44 = v18[16];

  sub_1DC445EB4(v26, v27, v28);
  OUTLINED_FUNCTION_236_1();
  swift_allocError();
  *v29 = 0;
  swift_willThrow();

  v30 = OUTLINED_FUNCTION_117_0();
  v25(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v18 + 2);

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_290_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, v43, v44, a15, a16, a17, a18);
}

uint64_t sub_1DC42C88C()
{
  OUTLINED_FUNCTION_1_0();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = sub_1DC510B6C();
  v1[18] = v7;
  OUTLINED_FUNCTION_52(v7);
  v1[19] = v8;
  v1[20] = OUTLINED_FUNCTION_118();
  v9 = sub_1DC51752C();
  v1[21] = v9;
  OUTLINED_FUNCTION_52(v9);
  v1[22] = v10;
  v1[23] = OUTLINED_FUNCTION_118();
  v11 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC42C984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_93_0();
  v15 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  (*(v16 + 192))();
  if (*(v14 + 80))
  {
    v18 = *(v14 + 152);
    v17 = *(v14 + 160);
    v19 = *(v14 + 136);
    v41 = *(v14 + 144);
    v20 = *(v14 + 128);
    v21 = *(v14 + 104);
    v42 = *(v14 + 112);
    v43 = *(v14 + 184);
    v22 = *(v14 + 96);
    sub_1DC28F9B0((v14 + 56), v14 + 16);
    (*((*v15 & *v19) + 0x1B8))(v22, v21);
    OUTLINED_FUNCTION_141_1();
    (*(v18 + 16))(v17, v20, v41);

    OUTLINED_FUNCTION_31_0();
    sub_1DC51751C();
    OUTLINED_FUNCTION_310_0((v14 + 16));
    v23 = swift_task_alloc();
    *(v14 + 192) = v23;
    *v23 = v14;
    v23[1] = sub_1DC42CB80;
    OUTLINED_FUNCTION_33_12(*(v14 + 184));
    OUTLINED_FUNCTION_74_5();

    return MEMORY[0x1EEE18720](v24, v25, v26, v27, v28, v29, v30, v31, v41, v42, v43, a12, a13, a14);
  }

  else
  {
    sub_1DC28EB30(v14 + 56, &qword_1ECC7DA28, &unk_1DC52A6D0);

    OUTLINED_FUNCTION_39_5();
    OUTLINED_FUNCTION_74_5();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DC42CB80()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC42CC78()
{
  OUTLINED_FUNCTION_37_4();
  sub_1DC517BBC();
  sub_1DC297814();
  v1 = sub_1DC296DBC();
  OUTLINED_FUNCTION_475(v1, &dword_1DC287000, v2, "Inserted the model output to cache manager");

  v3 = OUTLINED_FUNCTION_63_0();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_39_5();

  return v5();
}

uint64_t sub_1DC42CD4C()
{
  OUTLINED_FUNCTION_37_4();
  (*(v1[22] + 8))(v1[23], v1[21]);
  sub_1DC517BAC();
  OUTLINED_FUNCTION_21_2();
  v2 = sub_1DC296DBC();
  if (os_log_type_enabled(v2, v0))
  {
    OUTLINED_FUNCTION_63();
    v3 = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_483(5.7779e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_431(v4);
    OUTLINED_FUNCTION_410(&dword_1DC287000, v5, v0, "Failed to insert model output to cache %@");
    sub_1DC28EB30(v3, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_58();
  }

  v6 = v1[25];

  sub_1DC445EB4(v7, v8, v9);
  OUTLINED_FUNCTION_236_1();
  swift_allocError();
  *v10 = 1;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);

  OUTLINED_FUNCTION_2_2();

  return v11();
}

uint64_t sub_1DC42CEA0()
{
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  if (unk_1ECC7BD08 == 1)
  {
    OUTLINED_FUNCTION_75_6();
    nullsub_1();
  }

  v0 = OUTLINED_FUNCTION_74();
  sub_1DC2A329C(v0, v1);
  v2 = OUTLINED_FUNCTION_16();
  sub_1DC2B8808(v2, v3);

  v4 = OUTLINED_FUNCTION_159();
  MEMORY[0x1E1296160](v4);

  MEMORY[0x1E1296160](8285, 0xE200000000000000);
  v5 = OUTLINED_FUNCTION_36();
  MEMORY[0x1E1296160](v5);
  return 91;
}

void sub_1DC42CF74()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1DC51592C();
  OUTLINED_FUNCTION_3_33();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v53 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_60_12(v13);
  v14 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  if (sub_1DC51577C())
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))(v55);
    v18 = v0;
    v19 = v16;
    v20 = v14;
    v21 = v6;
    v23 = v56;
    v22 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v24 = v23;
    v6 = v21;
    v14 = v20;
    v16 = v19;
    v25 = v18;
    v2 = v1;
    LOBYTE(v22) = (*(v22 + 8))(v4, v24, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    if ((v22 & 1) == 0)
    {
      (*(v8 + 104))(v53, *MEMORY[0x1E69D0380], v25);
      v26 = OUTLINED_FUNCTION_74_8();
      v27(v26);
      v28 = OUTLINED_FUNCTION_56();
      v29(v28);
      v30 = OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_39(v30, v31, v14);
      if (!v32)
      {
        v38 = *(v16 + 32);
        v39 = OUTLINED_FUNCTION_29_0();
        v38(v39);
        sub_1DC517B9C();
        OUTLINED_FUNCTION_21_2();
        v40 = sub_1DC296DBC();
        v41 = OUTLINED_FUNCTION_40_1();
        sub_1DC516F0C(v41, v42, v43, v44, 45, 2);

        v45 = OUTLINED_FUNCTION_146_1();
        v38(v45);
        goto LABEL_10;
      }

      sub_1DC28EB30(v54, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

  if (!sub_1DC32DB10() || (sub_1DC32DBF4(), (v33 & 1) != 0) || ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x108))(v55), OUTLINED_FUNCTION_310_0(v55), v34 = OUTLINED_FUNCTION_36(), v36 = v35(v34), __swift_destroy_boxed_opaque_existential_1Tm(v55), (v36 & 1) != 0))
  {
    OUTLINED_FUNCTION_32();
    v37();
  }

  else
  {
    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v46 = sub_1DC296DBC();
    v47 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v47, v48, v49, v50, 66, 2);

    sub_1DC5157CC();
    OUTLINED_FUNCTION_1_38();
    sub_1DC43F1F8(v51, v52);
    sub_1DC51501C();
    (*(v16 + 104))(v6, *MEMORY[0x1E69D02E8], v14);
  }

LABEL_10:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC42D440()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_54_3();
  swift_getKeyPath();
  v3 = *MEMORY[0x1E69D0380];
  v4 = sub_1DC51592C();
  OUTLINED_FUNCTION_35();
  (*(v5 + 104))(v0, v3, v4);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
  OUTLINED_FUNCTION_55();
  return sub_1DC514FDC();
}

void sub_1DC42D528()
{
  OUTLINED_FUNCTION_33();
  v103 = v2;
  v104 = v3;
  OUTLINED_FUNCTION_384();
  v101 = sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v99 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v100 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v102 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC5157CC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v98 - v16;
  v18 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v22 = OUTLINED_FUNCTION_187();
  v23(v22);
  v24 = OUTLINED_FUNCTION_45_2();
  v26 = v25(v24);
  v27 = v26;
  v28 = *MEMORY[0x1E69D02E8];
  if (v26 != v28)
  {
    if (v26 == *MEMORY[0x1E69D02D0])
    {
      OUTLINED_FUNCTION_433();
      v40 = OUTLINED_FUNCTION_45_2();
      v41(v40);
      v42 = sub_1DC321880(*v0);
      v44 = v43;

      MEMORY[0x1EEE9AC00](v45);
      v98[-4] = v42;
      v98[-3] = v44;
      v98[-2] = v103;
      OUTLINED_FUNCTION_1_38();
      sub_1DC43F1F8(v46, v47);
      OUTLINED_FUNCTION_59_2();
      sub_1DC51501C();

      v48 = v104;
      v49 = OUTLINED_FUNCTION_220_0();
      v50(v49);
      (*(v20 + 104))(v48, v28, v18);
      v51 = v48;
LABEL_5:
      v52 = 0;
LABEL_13:
      v66 = 1;
      v67 = v18;
      goto LABEL_20;
    }

    if (v26 == *MEMORY[0x1E69D02C8])
    {
      v98[2] = v13;
      v53 = v20;
      OUTLINED_FUNCTION_433();
      v54 = v18;
      v55(v0, v18);
      v56 = v102;
      sub_1DC408B88(*v0, v102);

      sub_1DC4465D4();
      sub_1DC51588C();
      OUTLINED_FUNCTION_11_6(v1);
      if (v91)
      {
        OUTLINED_FUNCTION_59_2();
        sub_1DC28EB30(v57, v58, v59);
        OUTLINED_FUNCTION_59_2();
        sub_1DC28EB30(v60, v61, v62);
      }

      else
      {
        v68 = OUTLINED_FUNCTION_117_0();
        if (v69(v68) == *MEMORY[0x1E69D0330])
        {
          v70 = OUTLINED_FUNCTION_117_0();
          v71(v70);
          v72 = v99;
          v73 = v100;
          v74 = (*(v99 + 32))();
          v98[1] = v98;
          MEMORY[0x1EEE9AC00](v74);
          v75 = v103;
          v98[-2] = v73;
          v98[-1] = v75;
          OUTLINED_FUNCTION_1_38();
          sub_1DC43F1F8(v76, v77);
          OUTLINED_FUNCTION_59_2();
          sub_1DC51501C();
          sub_1DC28EB30(v56, &qword_1ECC7CB20, &unk_1DC529C40);
          v78 = v104;
          v79 = OUTLINED_FUNCTION_220_0();
          v80(v79);
          (*(v53 + 104))(v78, v28, v54);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v81, v82, v83, v54);
          (*(v72 + 8))(v100, v101);
          goto LABEL_21;
        }

        sub_1DC28EB30(v56, &qword_1ECC7CB20, &unk_1DC529C40);
        v89 = OUTLINED_FUNCTION_117_0();
        v90(v89);
      }

      OUTLINED_FUNCTION_19();
      v67 = v54;
LABEL_20:
      __swift_storeEnumTagSinglePayload(v51, v52, v66, v67);
      goto LABEL_21;
    }

    if (v26 == *MEMORY[0x1E69D02E0])
    {
      v63 = OUTLINED_FUNCTION_45_2();
      v64(v63);
      v65 = v104;
    }

    else
    {
      v65 = v104;
      if (v26 == *MEMORY[0x1E69D02D8])
      {
        MEMORY[0x1EEE9AC00](v26);
        v98[-2] = v84;
        OUTLINED_FUNCTION_1_38();
        sub_1DC43F1F8(v85, v86);
        OUTLINED_FUNCTION_59_2();
        sub_1DC51501C();
        v87 = OUTLINED_FUNCTION_75();
        v88(v87);
        (*(v20 + 104))(v65, v28, v18);
        v51 = v65;
        goto LABEL_5;
      }

      v91 = v26 == *MEMORY[0x1E69D02F8] || v26 == *MEMORY[0x1E69D02F0];
      if (!v91)
      {
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v92, v93, v94, v18);
        v95 = OUTLINED_FUNCTION_45_2();
        v97(v95, v96);
        goto LABEL_21;
      }
    }

    v51 = v65;
    v52 = 1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_433();
  v29 = OUTLINED_FUNCTION_45_2();
  v30(v29);
  v31 = *(v13 + 32);
  OUTLINED_FUNCTION_272_0();
  v32 = v31();
  v102 = v98;
  MEMORY[0x1EEE9AC00](v32);
  v33 = v103;
  v98[-2] = v17;
  v98[-1] = v33;
  OUTLINED_FUNCTION_1_38();
  sub_1DC43F1F8(v34, v35);
  OUTLINED_FUNCTION_272_0();
  sub_1DC51501C();
  v36 = v104;
  OUTLINED_FUNCTION_59_2();
  v31();
  (*(v20 + 104))(v36, v27, v18);
  v37 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v18);
  (*(v13 + 8))(v17, v11);
LABEL_21:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC42DD54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_31_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_28_13();
  swift_getKeyPath();
  v4 = sub_1DC5157AC();
  OUTLINED_FUNCTION_472(v4, v5);
  swift_getKeyPath();
  v6 = sub_1DC51579C();
  OUTLINED_FUNCTION_472(v6, v7);
  swift_getKeyPath();
  sub_1DC51578C();
  OUTLINED_FUNCTION_54_2();
  sub_1DC514FDC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_2();
  v8 = sub_1DC51592C();
  OUTLINED_FUNCTION_35();
  v9 = OUTLINED_FUNCTION_36();
  v10(v9);
  v11 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v8);
  OUTLINED_FUNCTION_62_2();
  return sub_1DC514FDC();
}

uint64_t sub_1DC42DED0()
{
  OUTLINED_FUNCTION_42_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_31_3();
  swift_getKeyPath();
  v2 = sub_1DC51592C();
  OUTLINED_FUNCTION_35();
  v3 = OUTLINED_FUNCTION_36();
  v4(v3);
  v5 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v2);
  OUTLINED_FUNCTION_65_1();
  return sub_1DC514FDC();
}

uint64_t sub_1DC42DF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  swift_getKeyPath();

  sub_1DC514FDC();
  swift_getKeyPath();

  sub_1DC514FDC();
  swift_getKeyPath();
  v5 = sub_1DC51592C();
  OUTLINED_FUNCTION_35();
  v6 = OUTLINED_FUNCTION_36();
  v7(v6);
  v8 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
  OUTLINED_FUNCTION_65_1();
  return sub_1DC514FDC();
}

void sub_1DC42E0C8()
{
  OUTLINED_FUNCTION_33();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_24_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_1();
  swift_getKeyPath();
  v8 = sub_1DC51582C();
  OUTLINED_FUNCTION_471(v8, v9);
  swift_getKeyPath();
  v10 = sub_1DC51581C();
  OUTLINED_FUNCTION_471(v10, v11);
  swift_getKeyPath();
  sub_1DC51580C();
  v12 = sub_1DC5157FC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v12);
  sub_1DC28EB30(v1, &qword_1ECC7BF08, &unk_1DC522330);
  if (EnumTagSinglePayload == 1)
  {
    sub_1DC51589C();
    OUTLINED_FUNCTION_19();
  }

  else
  {
    v18 = *MEMORY[0x1E69D0350];
    v19 = sub_1DC51589C();
    OUTLINED_FUNCTION_35();
    (*(v20 + 104))(v0, v18, v19);
    OUTLINED_FUNCTION_61();
    v17 = v19;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1DC514FDC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_2();
  v21 = sub_1DC51592C();
  OUTLINED_FUNCTION_35();
  v22 = OUTLINED_FUNCTION_36();
  v23(v22);
  v24 = OUTLINED_FUNCTION_56_13();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v21);
  OUTLINED_FUNCTION_62_2();
  sub_1DC514FDC();
  OUTLINED_FUNCTION_34();
}

id sub_1DC42E324()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRouterService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC42E35C()
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_11_16();
  v6 = (*(v0 + 360) + **(v0 + 360));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_453(v2);

  return v6(v4);
}

void static TurnSummary.ExecutionSource.== infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_384();
  v2 = sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v6 = type metadata accessor for TurnSummary.ExecutionSource(0);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA68, &unk_1DC52A780);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_47_7();
  v11 = *(v10 + 56);
  sub_1DC43F610();
  sub_1DC43F610();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
  switch(__swift_getEnumTagSinglePayload(v0, 4, v12))
  {
    case 1u:
      OUTLINED_FUNCTION_39(v0 + v11, 4, v12);
      if (v15)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (OUTLINED_FUNCTION_291_0() != 2)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 3u:
      if (OUTLINED_FUNCTION_291_0() != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 4u:
      if (OUTLINED_FUNCTION_291_0() != 4)
      {
        goto LABEL_7;
      }

LABEL_5:
      OUTLINED_FUNCTION_40_15();
      sub_1DC43F4A8();
      break;
    default:
      OUTLINED_FUNCTION_202_2();
      OUTLINED_FUNCTION_46_6();
      sub_1DC43F610();
      if (OUTLINED_FUNCTION_291_0())
      {
        v13 = OUTLINED_FUNCTION_72();
        v14(v13);
LABEL_7:
        sub_1DC28EB30(v0, &qword_1ECC7DA68, &unk_1DC52A780);
      }

      else
      {
        OUTLINED_FUNCTION_42_5();
        v16(v1, v0 + v11, v2);
        OUTLINED_FUNCTION_73();
        sub_1DC5161BC();
        v17 = *(v4 + 8);
        v18 = OUTLINED_FUNCTION_62_2();
        v17(v18);
        v19 = OUTLINED_FUNCTION_72();
        v17(v19);
        OUTLINED_FUNCTION_40_15();
        sub_1DC43F4A8();
      }

      break;
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC42E79C()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v1 == 0x5869726973 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_32_13(0x5869726973, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x72656E6E616C70 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_32_13(0x72656E6E616C70, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = OUTLINED_FUNCTION_462();
      v7 = v3 && v0 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_32_13(v6, 0xE500000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v1 == 0x6372616553617170 && v0 == 0xE900000000000068;
        if (v8 || (v9 = OUTLINED_FUNCTION_32_13(0x6372616553617170, 0xE900000000000068), (v9 & 1) != 0))
        {

          return 3;
        }

        else if (v1 == 0xD000000000000010 && 0x80000001DC548200 == v0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_53_16(v9, 0x80000001DC548200);
          OUTLINED_FUNCTION_168();
          if (v1)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DC42E8E8(char a1)
{
  result = 0x5869726973;
  switch(a1)
  {
    case 1:
      result = 0x72656E6E616C70;
      break;
    case 2:
      result = 0x49416E6567;
      break;
    case 3:
      result = 0x6372616553617170;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC42E980(uint64_t a1, uint64_t a2)
{
  if (a1 == 1819242356 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_267_0(1819242356);
    OUTLINED_FUNCTION_168();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC42EA14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC42E79C();
  *a1 = result;
  return result;
}

uint64_t sub_1DC42EA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F774(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC42EA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F774(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC42EB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F870(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC42EB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F870(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC42EB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F7C8(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC42EBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F7C8(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC42EBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F8C4(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC42EC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F8C4(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC42EC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F81C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC42EC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F81C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC42ECC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC43F918(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}