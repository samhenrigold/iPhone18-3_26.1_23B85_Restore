void *sub_2684CC29C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  sub_2684CC878(a2, (v2 + 5));
  sub_2684CC878(a2, v9);
  type metadata accessor for ANReadUnsupportedFollowupAction();
  swift_allocObject();

  v6 = sub_2684DECAC(v5, v9);
  sub_2684CC8D4(a2);
  v7 = sub_2684CC928(&qword_280282A08, 255, type metadata accessor for ANReadUnsupportedFollowupAction, &unk_26856AEE8);
  v3[2] = v6;
  v3[3] = v7;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_2684CC378@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_2684CC878(v1 + 40, __src);
  type metadata accessor for ANFollowupReturnGroup();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  memcpy((v4 + 24), __src, 0x80uLL);
  sub_2684CC878(v1 + 40, __src);
  type metadata accessor for ANFollowupFlow(0);
  swift_allocObject();
  __src[0] = ANFollowupFlow.init(notificationManager:sharedObjects:)();
  sub_2685677B0();
  swift_allocObject();
  sub_2684CC928(&qword_280282A10, 255, type metadata accessor for ANFollowupFlow, &protocol conformance descriptor for ANFollowupFlow);
  sub_2684CC928(&qword_280282A18, 255, type metadata accessor for ANFollowupReturnGroup, &unk_26856F2C8);
  swift_retain_n();
  *a1 = sub_2685677A0();
  v5 = *MEMORY[0x277D5B898];
  v6 = sub_268567960();
  (*(*(v6 - 8) + 104))(a1, v5, v6);
  v7 = *MEMORY[0x277D5BF50];
  v8 = sub_268567E80();
  (*(*(v8 - 8) + 104))(a1, v7, v8);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
}

uint64_t sub_2684CC594()
{
  swift_unknownObjectRelease();

  sub_2684CC8D4(v0 + 40);
  return v0;
}

uint64_t sub_2684CC5C4()
{
  sub_2684CC594();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t variable initialization expression of ANFollowupFlow.input@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268568040();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_2684CC760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684D1054();
  *a1 = result;
  return result;
}

uint64_t sub_2684CC794()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_2684E12C0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_2684CC7C8(uint64_t a2@<X8>)
{
  sub_268503104();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_2684CC7FC()
{
  OUTLINED_FUNCTION_0();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_2684CC928(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2684CC9CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2684CCA88@<X0>(uint64_t *a1@<X8>)
{
  sub_2684CC878(v1 + 40, v10);
  v3 = *(v1 + 168);
  type metadata accessor for RNReadAppNotificationsActionGroup();
  swift_allocObject();

  v5 = sub_26850CF38(v4, v10, v3);
  v6 = sub_2684CCC64(&qword_280282A38, 255, type metadata accessor for RNReadAppNotificationsActionGroup, &unk_26856CE8C);
  *a1 = v5;
  a1[1] = v6;
  v7 = *MEMORY[0x277D5BF58];
  v8 = sub_268567E80();
  (*(*(v8 - 8) + 104))(a1, v7, v8);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
}

uint64_t sub_2684CCB9C()
{
  sub_2684CC594();

  return MEMORY[0x2821FE8D8](v0, 169, 7);
}

uint64_t sub_2684CCC64(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

BOOL sub_2684CCCAC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t sub_2684CCCD4(int a1)
{
  sub_268568FD0();
  MEMORY[0x26D61BDA0](0xD00000000000002BLL, 0x8000000268571550);
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x26D61BDA0](v2, v3);

  MEMORY[0x26D61BDA0](0xD000000000000014, 0x8000000268571580);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D61BDA0](v4, v5);

  MEMORY[0x26D61BDA0](0xD000000000000018, 0x80000002685715A0);
  if ((a1 & 0x10000) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x26D61BDA0](v6, v7);

  MEMORY[0x26D61BDA0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2684CCE20(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = a4;
  v76 = a6;
  v80 = a3;
  v81 = a2;
  LODWORD(v9) = a1;
  v10 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v66 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v22 = __swift_project_value_buffer(v10, qword_28028B348);
  v23 = *(v12 + 16);
  v78 = v22;
  v79 = v23;
  v77 = v12 + 16;
  (v23)(v21);

  v24 = sub_2685689E0();
  v25 = sub_268568DD0();

  v72 = v25;
  if (!os_log_type_enabled(v24, v25))
  {

    v31 = *(v12 + 8);
    v31(v21, v10);
    if (!a7)
    {
      goto LABEL_44;
    }

LABEL_12:
    if (a5)
    {
      if (v75 == v76 && a5 == a7)
      {
        v34 = v9 != 1 || v81 == 1;
        if (v34 && v9)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v33 = sub_2685691C0() & (v81 != 1);
        if (v9 != 1)
        {
          LOBYTE(v33) = 0;
        }

        if ((v33 & 1) == 0 && v9)
        {
          if ((sub_2685691C0() & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_31:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          goto LABEL_47;
        }
      }
    }

    else if (v9)
    {
      goto LABEL_46;
    }

    v79(v19, v78, v10);
    v38 = sub_2685689E0();
    v39 = sub_268568DD0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2684CA000, v38, v39, "#HeadGesturesHintsExperimentProvider failed to create HeadGesturesHintExperimentPolicy with invalid arguments", v40, 2u);
      OUTLINED_FUNCTION_2();
    }

    v31(v19, v10);
    v41 = 0;
    v37 = 0;
    goto LABEL_60;
  }

  v67 = v24;
  v70 = v19;
  v71 = v10;
  v73 = v16;
  v26 = swift_slowAlloc();
  v68 = swift_slowAlloc();
  v84 = v68;
  *v26 = 136316162;
  v27 = v9;
  v9 = 0xD000000000000018;
  v28 = "TrialLevelBool.enabled";
  v69 = v27;
  v74 = v12;
  if (v27)
  {
    if (v27 == 1)
    {
      v29 = 0xD000000000000016;
    }

    else
    {
      v29 = 0xD000000000000017;
    }

    if (v27 == 1)
    {
      v30 = "TrialLevelBool.disabled";
    }

    else
    {
      v30 = "vel";
    }
  }

  else
  {
    v29 = 0xD000000000000018;
    v30 = "TrialLevelBool.enabled";
  }

  v42 = sub_2684EABEC(v29, v30 | 0x8000000000000000, &v84);

  *(v26 + 4) = v42;
  *(v26 + 12) = 2080;
  if (v81)
  {
    if (v81 == 1)
    {
      v9 = 0xD000000000000016;
    }

    else
    {
      v9 = 0xD000000000000017;
    }

    if (v81 == 1)
    {
      v28 = "TrialLevelBool.disabled";
    }

    else
    {
      v28 = "vel";
    }
  }

  v43 = sub_2684EABEC(v9, v28 | 0x8000000000000000, &v84);

  *(v26 + 14) = v43;
  *(v26 + 22) = 1024;
  *(v26 + 24) = v80 & 1;
  *(v26 + 28) = 2080;
  v82 = v75;
  v83 = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A50, &unk_268569F80);
  v44 = sub_268568B70();
  v46 = sub_2684EABEC(v44, v45, &v84);

  *(v26 + 30) = v46;
  *(v26 + 38) = 2080;
  v82 = v76;
  v83 = a7;

  v47 = sub_268568B70();
  v49 = sub_2684EABEC(v47, v48, &v84);

  *(v26 + 40) = v49;
  v50 = v67;
  _os_log_impl(&dword_2684CA000, v67, v72, "#HeadGesturesHintsExperimentProvider creating HeadGesturesHintExperimentPolicy with lastTriggeredTrialLevel: %s, currentTrialLevel: %s, hintHasPlayed: %{BOOL}d, currentExperimentId: %s, lastTriggeredExperimentId: %s", v26, 0x30u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2();

  v12 = v74;
  v31 = *(v74 + 8);
  v10 = v71;
  v31(v21, v71);
  v16 = v73;
  v19 = v70;
  LOBYTE(v9) = v69;
  if (a7)
  {
    goto LABEL_12;
  }

LABEL_44:
  if (a5)
  {
LABEL_45:
    v51 = v9;
    v37 = v81 == 1;
    v35 = v80 | (v51 != 0);
    v36 = 1;
    goto LABEL_47;
  }

LABEL_46:
  v35 = 0;
  v36 = 0;
  v37 = (v81 == 1) & ~v80;
LABEL_47:
  v79(v16, v78, v10);
  v52 = sub_2685689E0();
  v53 = sub_268568DD0();
  if (!os_log_type_enabled(v52, v53))
  {

    v31(v16, v10);
    if ((v35 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_58;
  }

  v54 = OUTLINED_FUNCTION_4();
  v73 = v16;
  v55 = v54;
  v56 = swift_slowAlloc();
  v74 = v12;
  v57 = v56;
  v82 = v56;
  *v55 = 136315138;
  v81 = v35 & 1;
  if (v35)
  {
    v58 = 0x10000;
  }

  else
  {
    v58 = 0;
  }

  if (v36)
  {
    v59 = 256;
  }

  else
  {
    v59 = 0;
  }

  v60 = sub_2684CCCD4(v59 | v37 | v58);
  v62 = v10;
  v63 = sub_2684EABEC(v60, v61, &v82);

  *(v55 + 4) = v63;
  _os_log_impl(&dword_2684CA000, v52, v53, "#HeadGesturesHintsExperimentProvider created %s", v55, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v57);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2();

  v31(v73, v62);
  if (v81)
  {
LABEL_58:
    v41 = 0x10000;
    if (v36)
    {
      goto LABEL_59;
    }

LABEL_60:
    v64 = 0;
    return v64 | v41 | v37;
  }

LABEL_55:
  v41 = 0;
  if (v36)
  {
LABEL_59:
    v64 = 256;
    return v64 | v41 | v37;
  }

  v64 = 0;
  return v64 | v41 | v37;
}

unint64_t sub_2684CD53C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000017;
}

uint64_t sub_2684CD59C()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2684CCCD4(v2 | *v0 | v1);
}

uint64_t sub_2684CD5F4(unsigned __int8 a1)
{
  sub_268569260();
  MEMORY[0x26D61C3F0](a1);
  return sub_268569280();
}

uint64_t sub_2684CD64C(uint64_t a1)
{
  v2 = *v1;
  sub_268569260();
  MEMORY[0x26D61C3F0](v2);
  return sub_268569280();
}

uint64_t sub_2684CD6A4()
{
  v2 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v6 = [objc_opt_self() clientWithIdentifier_];
  v7 = sub_268568B10();
  v8 = sub_268568B10();
  v9 = [v6 levelForFactor:v7 withNamespaceName:v8];

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v10 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v4 + 16))(v1, v10, v2);
  v11 = v9;
  v12 = sub_2685689E0();
  v13 = sub_268568DC0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_4();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v9;
    v16 = v11;
    _os_log_impl(&dword_2684CA000, v12, v13, "#HeadGesturesHintsExperimentProvider loaded factor with level: %@", v14, 0xCu);
    sub_2684CECB8(v15);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v4 + 8))(v1, v2);
  if (v11)
  {
    v17 = [v11 BOOLeanValue];

    if (v17)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 0;
  }
}

id sub_2684CD8F0()
{
  v1 = [objc_opt_self() clientWithIdentifier_];
  v2 = sub_268568B10();
  v3 = [v1 experimentIdentifiersWithNamespaceName_];

  if (v3)
  {
    v4 = [v3 experimentId];

    v3 = sub_268568B20();
  }

  return v3;
}

void sub_2684CD9C0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_2685685F0();
  if (!sub_2685685D0())
  {
    goto LABEL_9;
  }

  sub_2685685B0();

  v13 = sub_268568920();
  v15 = v14;

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v11;
  sub_2684CEC74();

  v17 = sub_2684CDD30(v13, v15);
  if (!v17)
  {

LABEL_9:
    v18 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    goto LABEL_12;
  }

  v18 = v17;
  v31 = v13;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v19 = __swift_project_value_buffer(v9, qword_28028B348);
  (*(v16 + 16))(v3, v19, v9);

  v20 = sub_2685689E0();
  v21 = sub_268568DC0();

  v32 = v21;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_4();
    v30 = v20;
    v23 = v22;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v23 = 136315138;
    v24 = sub_2684EABEC(v31, v15, &v34);

    *(v23 + 4) = v24;
    v25 = v30;
    _os_log_impl(&dword_2684CA000, v30, v32, "#HeadGesturesHintsExperimentProvider trigger log for requestId: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  (*(v16 + 8))(v3, v9);
LABEL_12:
  v26 = v18;
  sub_268568D50();
  v27 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v33;
  v28[5] = a2;
  v28[6] = v4;
  v28[7] = v26;

  sub_2684CED9C(0, 0, v8, &unk_268569F98, v28);
}

id sub_2684CDD30(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_268568B10();

  v4 = [v2 initWithUUIDString_];

  return v4;
}

uint64_t sub_2684CDDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_2685689F0();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684CDE74, 0, 0);
}

uint64_t sub_2684CDE74()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_2684CEC74();

  v3 = sub_2684CDD30(v1, v2);
  if (!v3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  }

  v4 = v3;
  v0[14] = v3;
  v6 = v0[8];
  v5 = v0[9];
  v0[15] = [objc_allocWithZone(sub_2685689A0()) init];
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v11 = (*MEMORY[0x277CE4828] + MEMORY[0x277CE4828]);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_2684CDFA8;

  return v11(v4, v7, v8, v5);
}

uint64_t sub_2684CDFA8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2684CE220;
  }

  else
  {
    v2 = sub_2684CE0BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2684CE0BC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  if (v7)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "#HeadGesturesHintsExperimentProvider trigger log complete", v13, 2u);
    OUTLINED_FUNCTION_2();
  }

  (*(v12 + 8))(v10, v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2684CE220()
{
  v23 = v0;
  v1 = *(v0 + 112);

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v2 = *(v0 + 136);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = __swift_project_value_buffer(v5, qword_28028B348);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_2685689E0();
  v9 = sub_268568DE0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 136);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v14 = *(v0 + 80);
  if (v10)
  {
    v15 = OUTLINED_FUNCTION_4();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_268569210();
    v19 = sub_2684EABEC(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2684CA000, v8, v9, "#HeadGesturesHintsExperimentProvider error during trigger logging: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v13 + 8))(v12, v14);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2684CE424()
{

  return v0;
}

uint64_t sub_2684CE44C()
{
  sub_2684CE424();

  return MEMORY[0x2821FE8D8](v0, 59, 7);
}

uint64_t sub_2684CE4A4()
{
  result = v0;
  *(v0 + 16) = 335;
  *(v0 + 24) = 0xD000000000000012;
  *(v0 + 32) = 0x80000002685715C0;
  *(v0 + 40) = 0xD000000000000025;
  *(v0 + 48) = 0x80000002685715E0;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  return result;
}

uint64_t sub_2684CE55C(uint64_t result)
{
  v2 = *v1;
  v2[56] = result & 1;
  v2[57] = BYTE1(result) & 1;
  v2[58] = BYTE2(result) & 1;
  return result;
}

uint64_t sub_2684CE584()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_2684CE5C0()
{

  return MEMORY[0x2821FE8D8](v0, 43, 7);
}

uint64_t getEnumTagSinglePayload for SummaryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TrialLevelBool(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2684CE780);
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

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeadGesturesHintExperimentPolicy(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadGesturesHintExperimentPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_2684CE8F8()
{
  result = qword_280282A48;
  if (!qword_280282A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282A48);
  }

  return result;
}

uint64_t sub_2684CE9B8(uint64_t result)
{
  v2 = *v1;
  v2[40] = result & 1;
  v2[41] = BYTE1(result) & 1;
  v2[42] = BYTE2(result) & 1;
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

uint64_t sub_2684CEA5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2684CEAAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2684CEB80;

  return sub_2684CDDA4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2684CEB80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2684CEC74()
{
  result = qword_280282A60;
  if (!qword_280282A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280282A60);
  }

  return result;
}

uint64_t sub_2684CECB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A68, &qword_268569FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2()
{

  JUMPOUT(0x26D61CB30);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_slowAlloc();
}

uint64_t sub_2684CED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_2684D1904(a3, v25 - v11);
  v13 = sub_268568D70();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2684D199C(v12, &qword_280282A58, &qword_26856A930);
  }

  else
  {
    sub_268568D60();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_268568D30();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_268568B90() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2684D199C(a3, &qword_280282A58, &qword_26856A930);

      return v23;
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

  sub_2684D199C(a3, &qword_280282A58, &qword_26856A930);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2684CF06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for EmojiFormatter(0);
  v9 = OUTLINED_FUNCTION_10(v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = a1;
  *(a4 + 1) = a2;
  v13 = *(v10 + 28);
  v14 = sub_268567690();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v12[v13], a3, v14);
  *v12 = a1;
  *(v12 + 1) = a2;

  sub_2685232B4();
  sub_2685237C8(v16);
  v18 = v17;

  sub_268523AA8(v18);
  v20 = v19;
  v22 = v21;

  sub_2684D1288(v12);
  *(a4 + 2) = v20;
  *(a4 + 3) = v22;
  v23 = type metadata accessor for ContentProcessor(0);
  return (*(v15 + 32))(&a4[*(v23 + 24)], a3, v14);
}

void sub_2684CF1C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_2684D0BE0(v1, v2);
  sub_2684D16C0(0, &qword_280282A70, 0x277D79988);
  type metadata accessor for ContentProcessor(0);
  v3 = sub_268567630();
  v5 = sub_2684CF410(v3, v4);
  v6 = sub_268568B10();

  v7 = [v5 unspeakableRangeOfText_];

  sub_2684D16C0(0, &qword_280282A78, 0x277CCAE60);
  v8 = sub_268568CE0();

  v9 = sub_2684DEAF0(v8);
  v10 = 0;
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v9 == v10)
    {

      return;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26D61C170](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v14 = [v11 rangeValue];
    v16 = v15;
    v17 = sub_268567370();

    ++v10;
    if (v14 != v17)
    {
      v18 = &v14[v16];
      if (__OFADD__(v14, v16))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26854BC10();
        v23 = v21;
      }

      v19 = *(v23 + 16);
      if (v19 >= *(v23 + 24) >> 1)
      {
        sub_26854BC10();
        v23 = v22;
      }

      *(v23 + 16) = v19 + 1;
      v20 = v23 + 16 * v19;
      *(v20 + 32) = v14;
      *(v20 + 40) = v18;
      v10 = v13;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_2684CF410(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_268568B10();

  v4 = [v2 initWithLanguage_];

  return v4;
}

uint64_t sub_2684CF484()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  OUTLINED_FUNCTION_10(v3);
  v1[16] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2684CF510()
{
  v1 = v0[15];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[2] = v3;
  v0[3] = v2;
  v0[4] = 10;
  v0[5] = 0xE100000000000000;
  v0[6] = 2108960;
  v0[7] = 0xE300000000000000;
  v4 = sub_2684D166C();
  v25 = MEMORY[0x277D837D0];
  v5 = OUTLINED_FUNCTION_8((v0 + 4), (v0 + 6));
  v7 = v6;
  objc_allocWithZone(MEMORY[0x277CCA948]);
  v8 = sub_2684D0FA0(32);
  if (v8 && (v11 = v8, v12 = sub_268568B10(), v13 = [v11 matchesInString:v12 options:0 range:{0, MEMORY[0x26D61BDE0](v5, v7), v25, v4, v4, v4}], v12, v11, sub_2684D16C0(0, &qword_280282AA0, 0x277CCACC0), v14 = sub_268568CE0(), v13, v15 = sub_2684DEAF0(v14), , v11, v15))
  {
    v16 = v0[16];
    v17 = v0[14];
    v0[8] = v5;
    v0[9] = v7;
    v0[10] = 0x5DA680E25BLL;
    v0[11] = 0xA500000000000000;
    v0[12] = 0;
    v0[13] = 0xE000000000000000;
    v18 = OUTLINED_FUNCTION_8((v0 + 10), (v0 + 12));
    v20 = v19;

    v0[17] = v20;
    type metadata accessor for URLFormatter.Store();
    v21 = swift_allocObject();
    v0[18] = v21;

    swift_defaultActor_initialize();
    *(v21 + 112) = 0;
    *(v21 + 120) = 0;
    v22 = dispatch_semaphore_create(0);
    v0[19] = v22;
    v23 = sub_268568D70();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v21;
    v24[5] = v18;
    v24[6] = v20;
    v24[7] = v17;
    v24[8] = 1918985330;
    v24[9] = 0xE400000000000000;
    v24[10] = v22;

    v22;
    sub_2684CED9C(0, 0, v16, &unk_26856A050, v24);

    sub_268568E30();

    return MEMORY[0x2822009F8](sub_2684CF84C, v21, 0);
  }

  else
  {

    v9 = v0[1];

    return v9(v5, v7);
  }
}

uint64_t sub_2684CF84C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[18];
  v0[20] = *(v1 + 112);
  v0[21] = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_2684CF8C4, 0, 0);
}

uint64_t sub_2684CF8C4()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

BOOL sub_2684CF960(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v31[-v15];
  if (a2)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v17 = __swift_project_value_buffer(v8, qword_28028B348);
    (*(v10 + 16))(v14, v17, v8);
    v18 = sub_2685689E0();
    v19 = sub_268568DC0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2684CA000, v18, v19, "ContentProcessor#exceedsTTSLength missing timeInterval, returning false", v20, 2u);
      MEMORY[0x26D61CB30](v20, -1, -1);
    }

    (*(v10 + 8))(v14, v8);
    return 0;
  }

  else
  {
    v22 = *&a1;
    v23 = 20.0;
    if (a3 != 0xD000000000000013 || 0x8000000268571650 != a4)
    {
      if (sub_2685691C0())
      {
        v23 = 20.0;
      }

      else
      {
        v23 = 10.0;
      }
    }

    v21 = v23 <= *&a1;
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v25 = __swift_project_value_buffer(v8, qword_28028B348);
    (*(v10 + 16))(v16, v25, v8);

    v26 = sub_2685689E0();
    v27 = sub_268568DC0();

    if (os_log_type_enabled(v26, v27))
    {
      v32 = v23 <= v22;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v28 = 136315650;
      *(v28 + 4) = sub_2684EABEC(a3, a4, &v33);
      *(v28 + 12) = 2048;
      *(v28 + 14) = v23;
      *(v28 + 22) = 1024;
      *(v28 + 24) = v32;
      _os_log_impl(&dword_2684CA000, v26, v27, "ContentProcessor#exceedsTTSLength bundleId: %s, threshold: %f, exceedsTTSLength: %{BOOL}d", v28, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x26D61CB30](v29, -1, -1);
      MEMORY[0x26D61CB30](v28, -1, -1);
    }

    (*(v10 + 8))(v16, v8);
  }

  return v21;
}

uint64_t sub_2684CFCE0()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_2685689D0();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2684CFD98()
{
  type metadata accessor for ContentProcessor(0);
  sub_268567630();
  v1 = objc_allocWithZone(sub_268568670());
  v2 = sub_268568660();
  v0[10] = v2;
  objc_allocWithZone(sub_268568690());

  v3 = v2;
  v4 = sub_268568680();
  v0[11] = v4;
  v5 = [objc_allocWithZone(sub_268568650()) init];
  v0[12] = v5;
  if (qword_280282968 != -1)
  {
    swift_once();
  }

  v6 = v0[9];
  v7 = qword_28028B360;
  sub_2685689C0();
  sub_268568E20();
  sub_2685689B0();
  v8 = swift_task_alloc();
  v0[13] = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v6;
  v9 = swift_task_alloc();
  v0[14] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A80, &qword_26856A020);
  *v9 = v0;
  v9[1] = sub_2684CFFC8;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000026, 0x80000002685716A0, sub_2684D1344, v8, v10);
}

uint64_t sub_2684CFFC8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2684D00C8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v1 && (v3 & 1) == 0)
  {
    v4 = *(v0 + 32);
    type metadata accessor for LimitedTTSDurationCache();
    sub_2684D07D8(v4, v1, v2);
  }

  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);

  (*(v9 + 8))(v6, v8);

  v10 = *(v0 + 8);

  return v10(*&v2, v3);
}

uint64_t sub_2684D01A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a3;
  v18[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A90, &unk_26856A030);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v10 = sub_2685689D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a4, v10);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  (*(v7 + 32))(v16 + v15, v9, v6);
  sub_268568640();
}

void sub_2684D03CC(void *a1, uint64_t a2, double a3)
{
  v5 = sub_2685689F0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  sub_268568E10();
  if (qword_280282968 != -1)
  {
    swift_once();
  }

  sub_2685689B0();
  if (a1)
  {
    v12 = a1;
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v5, qword_28028B348);
    (*(v6 + 16))(v11, v13, v5);
    v14 = a1;
    v15 = sub_2685689E0();
    v16 = sub_268568DE0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_2684CA000, v15, v16, "ContentProcessor getTTSDuration | error: %@", v17, 0xCu);
      sub_2684D199C(v18, &qword_280282A68, &qword_268569FA0);
      MEMORY[0x26D61CB30](v18, -1, -1);
      MEMORY[0x26D61CB30](v17, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    v25 = 0.0;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A90, &unk_26856A030);
    sub_268568D40();
  }

  else
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v5, qword_28028B348);
    (*(v6 + 16))(v9, v21, v5);
    v22 = sub_2685689E0();
    v23 = sub_268568DC0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a3;
      _os_log_impl(&dword_2684CA000, v22, v23, "ContentProcessor getTTSDuration | timeInterval: %f", v24, 0xCu);
      MEMORY[0x26D61CB30](v24, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v25 = a3;
    v26 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A90, &unk_26856A030);
    sub_268568D40();
  }
}

uint64_t sub_2684D07D8(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_280282940 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_280282940);
  }

  v6 = swift_beginAccess();
  v14 = 0;
  v15 = qword_28028B200;
  v16 = *(qword_28028B200 + 16);
  v17 = (qword_28028B200 + 40);
  while (v16 != v14)
  {
    v18 = *(v17 - 1) == a1 && *v17 == a2;
    if (v18 || (v6 = sub_2685691C0(), (v6 & 1) != 0))
    {
      swift_beginAccess();
      sub_2684D0978(v14);
      goto LABEL_14;
    }

    ++v14;
    v17 += 3;
  }

  if (*(v15 + 16) < 0xAuLL)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_11(v6, v7, v8, v9, v10, v11, v12, v13, v23);
  sub_2684D0A18();
LABEL_14:
  swift_endAccess();

LABEL_15:
  swift_beginAccess();

  sub_268524114();
  v19 = *(qword_28028B200 + 16);
  sub_2685241A0(v19);
  v20 = qword_28028B200;
  *(qword_28028B200 + 16) = v19 + 1;
  v21 = v20 + 24 * v19;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = a3;
  qword_28028B200 = v20;
  return swift_endAccess();
}

void sub_2684D0978(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26852425C(v3);
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_26854C574((v3 + 24 * a1 + 56), v4 - 1 - a1, (v3 + 24 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

uint64_t sub_2684D0A18()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);

    sub_2684D1350(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2684D0A7C(uint64_t a1, uint64_t a2)
{
  if (qword_280282940 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_280282940);
  }

  swift_beginAccess();
  v10 = 0;
  v11 = *(qword_28028B200 + 16);
  v12 = (qword_28028B200 + 40);
  while (v11 != v10)
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    v15 = v13 == a1 && v14 == a2;
    if (v15 || (v13 = sub_2685691C0(), (v13 & 1) != 0))
    {
      OUTLINED_FUNCTION_11(v13, v14, v4, v5, v6, v7, v8, v9, v26);
      sub_2684D0978(v10);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      sub_268524114();
      v22 = *(qword_28028B200 + 16);
      sub_2685241A0(v22);
      v23 = qword_28028B200;
      *(qword_28028B200 + 16) = v22 + 1;
      v24 = (v23 + 24 * v22);
      v24[4] = v17;
      v24[5] = v19;
      v24[6] = v21;
      qword_28028B200 = v23;
      swift_endAccess();
      return v21;
    }

    ++v10;
    v12 += 3;
  }

  return 0;
}

uint64_t sub_2684D0BE0(uint64_t a1, unint64_t a2)
{
  v26 = sub_2685692D0();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_268567450();
  MEMORY[0x28223BE20](v28);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  v11 = HIBYTE(a2) & 0xF;
  v32 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v27 = v11;
  if (v11)
  {
    v12 = 0;
    v22[1] = v2;
    v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v13 = (v8 + 8);
    v24 = a2 & 0xFFFFFFFFFFFFFFLL;
    v25 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_268568FC0();
        v16 = v15;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v29[0] = v32;
          v29[1] = v24;
          if (*(v29 + v12) < 0)
          {
            switch(__clz(*(v29 + v12) ^ 0xFF))
            {
              case 0x1Au:
LABEL_21:
                v16 = 2;
                break;
              case 0x1Bu:
LABEL_22:
                v16 = 3;
                break;
              case 0x1Cu:
LABEL_23:
                v16 = 4;
                break;
              default:
                goto LABEL_13;
            }

            goto LABEL_14;
          }
        }

        else
        {
          v14 = v23;
          if ((v32 & 0x1000000000000000) == 0)
          {
            v14 = sub_268569010();
          }

          if (*(v14 + v12) < 0)
          {
            switch(__clz(*(v14 + v12) ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_21;
              case 0x1Bu:
                goto LABEL_22;
              case 0x1Cu:
                goto LABEL_23;
              default:
                break;
            }
          }
        }

LABEL_13:
        v16 = 1;
      }

LABEL_14:
      sub_2685673E0();
      v17 = sub_268567430();
      (*v13)(v10, v28);
      if (v17 & 1) != 0 || (sub_2685692E0(), v18 = sub_2685692C0(), v19 = *v25, (*v25)(v7, v26), (v18) || (sub_2685692E0(), v20 = sub_2685692B0(), v19(v7, v26), (v20))
      {
        sub_268568BF0();
      }

      v12 += v16;
      if (v12 >= v27)
      {

        return v30;
      }
    }
  }

  return 0;
}

id sub_2684D0FA0(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2685674D0();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_2684D105C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2684D1154;

  return v6(a1);
}

uint64_t sub_2684D1154()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t type metadata accessor for ContentProcessor(uint64_t a1)
{
  result = qword_280282AA8;
  if (!qword_280282AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2684D1288(uint64_t a1)
{
  v2 = type metadata accessor for EmojiFormatter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2684D130C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_2684D1350(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_26854C6CC(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 24 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A88, &qword_26856A028);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_26854C574((v9 + 24 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2684D1444()
{
  v1 = sub_2685689D0();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A90, &unk_26856A030);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

void sub_2684D1580(void *a1, double a2)
{
  v5 = *(sub_2685689D0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A90, &unk_26856A030);
  OUTLINED_FUNCTION_10(v7);

  sub_2684D03CC(a1, v2 + v6, a2);
}

unint64_t sub_2684D166C()
{
  result = qword_280282A98;
  if (!qword_280282A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282A98);
  }

  return result;
}

uint64_t sub_2684D16C0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2684D1700()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2684D1760(uint64_t a1)
{
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_6(v1);
  *v2 = v3;
  v2[1] = sub_2684D1820;

  return sub_2685348A4();
}

uint64_t sub_2684D1820()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2684D1904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684D199C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2684D19FC()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_0(v1);

  return v4(v3);
}

uint64_t sub_2684D1A94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2684D1ACC()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_0(v1);

  return v4(v3);
}

uint64_t sub_2684D1B64(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = *v3;
  result = sub_2684D1C14(*v3);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - v6;
  if (__OFSUB__(a2, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_2684DEAF0(v7);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_26854CA8C();

  return sub_2684D1C38(v6, a2, 1, a3);
}

uint64_t sub_2684D1C14(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2685690A0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2684D1C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  type metadata accessor for ReadNotification(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_12;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    result = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = sub_2685690A0();
LABEL_6:
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  sub_26854CA88(v11 + 8 * v8, result - v8, v5);
  if (v9)
  {
    result = sub_2685690A0();
  }

  else
  {
    result = *(v10 + 16);
  }

  if (__OFADD__(result, v12))
  {
    goto LABEL_23;
  }

  *(v10 + 16) = result + v12;
LABEL_12:
  if (v7 < 1)
  {
  }

  else
  {
    v16 = v10 + 8 * v6;
    *(v16 + 32) = v4;
    if (v16 + 40 < v5)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2684D1DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_268567690();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2684D1E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_268567690();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2684D1EC4(uint64_t a1)
{
  result = sub_268567690();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2)
{

  return sub_268568F10();
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

uint64_t sub_2684D2024()
{
  v1 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_title;
  v2 = sub_268568810();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_subtitle);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_body);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_notificationId);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appId);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appName);
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isMessage) = 0;
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isDM) = 0;
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isMail) = 0;
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isReminder) = 0;
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isHighlight) = 0;
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_highlight);
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_stackSummary);
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_containsStackSummary) = 0;
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_senderDisplayName);
  *(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_containsHighlightSummary) = 0;
  OUTLINED_FUNCTION_6_0(OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_threadId);
  return v0;
}

uint64_t sub_2684D2134()
{
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_title);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_subtitle);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_body);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_notificationId);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appId);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appName);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_highlight);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_stackSummary);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_senderDisplayName);
  sub_2684D4378(v0 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_threadId);
  return v0;
}

uint64_t sub_2684D2228(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-v4 - 8];
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_20(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_title, v18);
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_title);
  OUTLINED_FUNCTION_20(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_subtitle, v17);
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_subtitle);
  OUTLINED_FUNCTION_20(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_body, v16);
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_body);
  OUTLINED_FUNCTION_20(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_notificationId, v15);
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_notificationId);
  OUTLINED_FUNCTION_20(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appId, v14);
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appId);
  OUTLINED_FUNCTION_20(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_appName, v13);
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appName);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMessage) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isMessage);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isDM) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isDM);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMail) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isMail);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isReminder) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isReminder);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_isHighlight);
  OUTLINED_FUNCTION_20(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_highlight, v12);
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_highlight);
  OUTLINED_FUNCTION_20(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_stackSummary, v11);
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_stackSummary);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_containsStackSummary);
  OUTLINED_FUNCTION_20(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_senderDisplayName, v10);
  OUTLINED_FUNCTION_21(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsHighlightSummary) = *(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_containsHighlightSummary);
  v6 = OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_threadId;
  OUTLINED_FUNCTION_20(a1 + OBJC_IVAR____TtCC24SiriNotificationsIntents25NotificationsNotification7Builder_threadId, v9);
  sub_2684D4298(a1 + v6, v5);

  sub_2684D4308(v5, v1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId);
  return v1;
}

uint64_t sub_2684D24B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_27();
  v77 = v8;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v76 = v10;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v75 = v12;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v74 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_28();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v74 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v74 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v74 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v74 - v28;
  v30 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v30 || (OUTLINED_FUNCTION_8_0(0x656C746974, 0xE500000000000000) & 1) != 0)
  {
    v31 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_title);
    sub_2684D4298(v31, v29);
    sub_268568810();
    OUTLINED_FUNCTION_2_1(v29);
    if (!v30)
    {
      goto LABEL_125;
    }

    v32 = v29;
    goto LABEL_9;
  }

  v35 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
  if (v35 || (OUTLINED_FUNCTION_8_0(0x656C746974627573, 0xE800000000000000) & 1) != 0)
  {
    v36 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_subtitle);
    sub_2684D4298(v36, v27);
    sub_268568810();
    OUTLINED_FUNCTION_2_1(v27);
    if (!v30)
    {
      goto LABEL_125;
    }

    v32 = v27;
    goto LABEL_9;
  }

  v37 = a1 == 2036625250 && a2 == 0xE400000000000000;
  if (v37 || (OUTLINED_FUNCTION_8_0(2036625250, 0xE400000000000000) & 1) != 0)
  {
    v38 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_body);
    sub_2684D4298(v38, v24);
    sub_268568810();
    OUTLINED_FUNCTION_2_1(v24);
    if (!v30)
    {
      goto LABEL_125;
    }

    v32 = v24;
    goto LABEL_9;
  }

  v39 = OUTLINED_FUNCTION_23();
  v41 = a1 == v39 && a2 == v40;
  if (v41 || (OUTLINED_FUNCTION_8_0(v39, v40) & 1) != 0)
  {
    v42 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_notificationId);
    sub_2684D4298(v42, v21);
    v43 = sub_268568810();
    if (__swift_getEnumTagSinglePayload(v21, 1, v43) != 1)
    {
      v44 = v79;
      *(v79 + 24) = v43;
      __swift_allocate_boxed_opaque_existential_0(v44);
      v45 = *(*(v43 - 8) + 32);
      return v45();
    }

    v32 = v21;
    goto LABEL_9;
  }

  v46 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (v46 || (OUTLINED_FUNCTION_8_0(0x6449707061, 0xE500000000000000) & 1) != 0)
  {
    v47 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appId);
    sub_2684D4298(v47, v4);
    sub_268568810();
    OUTLINED_FUNCTION_2_1(v4);
    if (!v30)
    {
      goto LABEL_125;
    }

    v32 = v4;
    goto LABEL_9;
  }

  v48 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v48 || (OUTLINED_FUNCTION_8_0(0x656D614E707061, 0xE700000000000000) & 1) != 0)
  {
    v49 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appName);
    sub_2684D4298(v49, v17);
    sub_268568810();
    OUTLINED_FUNCTION_2_1(v17);
    if (!v30)
    {
      goto LABEL_125;
    }

    v32 = v17;
    goto LABEL_9;
  }

  result = 0x67617373654D7369;
  v50 = a1 == 0x67617373654D7369 && a2 == 0xE900000000000065;
  if (v50 || (result = OUTLINED_FUNCTION_8_0(0x67617373654D7369, 0xE900000000000065), (result & 1) != 0))
  {
    v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMessage;
  }

  else
  {
    v54 = a1 == 1296331625 && a2 == 0xE400000000000000;
    if (v54 || (result = OUTLINED_FUNCTION_8_0(1296331625, 0xE400000000000000), (result & 1) != 0))
    {
      v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isDM;
    }

    else
    {
      result = 0x6C69614D7369;
      v55 = a1 == 0x6C69614D7369 && a2 == 0xE600000000000000;
      if (v55 || (result = OUTLINED_FUNCTION_8_0(0x6C69614D7369, 0xE600000000000000), (result & 1) != 0))
      {
        v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMail;
      }

      else
      {
        result = 0x646E696D65527369;
        v56 = a1 == 0x646E696D65527369 && a2 == 0xEA00000000007265;
        if (v56 || (result = OUTLINED_FUNCTION_8_0(0x646E696D65527369, 0xEA00000000007265), (result & 1) != 0))
        {
          v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isReminder;
        }

        else
        {
          result = OUTLINED_FUNCTION_25();
          v58 = a1 == result && a2 == v57;
          if (v58 || (result = OUTLINED_FUNCTION_8_0(result, v57), (result & 1) != 0))
          {
            v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight;
          }

          else
          {
            v59 = a1 == 0x6867696C68676968 && a2 == 0xE900000000000074;
            if (v59 || (OUTLINED_FUNCTION_8_0(0x6867696C68676968, 0xE900000000000074) & 1) != 0)
            {
              v60 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_highlight);
              sub_2684D4298(v60, v3);
              sub_268568810();
              OUTLINED_FUNCTION_2_1(v3);
              if (!v30)
              {
                goto LABEL_125;
              }

              v32 = v3;
              goto LABEL_9;
            }

            v61 = OUTLINED_FUNCTION_24();
            v63 = a1 == v61 && a2 == v62;
            if (v63 || (OUTLINED_FUNCTION_8_0(v61, v62) & 1) != 0)
            {
              v64 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_stackSummary);
              v65 = v75;
              sub_2684D4298(v64, v75);
              sub_268568810();
              OUTLINED_FUNCTION_2_1(v65);
              if (!v30)
              {
                goto LABEL_125;
              }

              v32 = v75;
              goto LABEL_9;
            }

            result = 0xD000000000000014;
            v66 = a1 == 0xD000000000000014 && 0x8000000268570F30 == a2;
            if (v66 || (result = OUTLINED_FUNCTION_8_0(0xD000000000000014, 0x8000000268570F30), (result & 1) != 0))
            {
              v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary;
            }

            else
            {
              v67 = a1 == 0xD000000000000011 && 0x8000000268570F50 == a2;
              if (v67 || (OUTLINED_FUNCTION_8_0(0xD000000000000011, 0x8000000268570F50) & 1) != 0)
              {
                v68 = OUTLINED_FUNCTION_16(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName);
                v69 = v76;
                sub_2684D4298(v68, v76);
                sub_268568810();
                OUTLINED_FUNCTION_2_1(v69);
                if (!v30)
                {
                  goto LABEL_125;
                }

                v32 = v76;
                goto LABEL_9;
              }

              result = 0xD000000000000018;
              if (a1 != 0xD000000000000018 || 0x8000000268570F70 != a2)
              {
                result = OUTLINED_FUNCTION_8_0(0xD000000000000018, 0x8000000268570F70);
                if ((result & 1) == 0)
                {
                  if (a1 != 0x6449646165726874 || a2 != 0xE800000000000000)
                  {
                    result = OUTLINED_FUNCTION_8_0(0x6449646165726874, 0xE800000000000000);
                    if ((result & 1) == 0)
                    {
                      goto LABEL_10;
                    }
                  }

                  v72 = v77;
                  sub_2684D4298(v78 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId, v77);
                  sub_268568810();
                  OUTLINED_FUNCTION_2_1(v72);
                  if (!v30)
                  {
LABEL_125:
                    OUTLINED_FUNCTION_22();
                    OUTLINED_FUNCTION_4_1();
                    v45 = *(v73 + 32);
                    return v45();
                  }

                  v32 = v77;
LABEL_9:
                  result = sub_2684D4378(v32);
LABEL_10:
                  v34 = v79;
                  *v79 = 0u;
                  *(v34 + 16) = 0u;
                  return result;
                }
              }

              v51 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsHighlightSummary;
            }
          }
        }
      }
    }
  }

  v52 = v79;
  v53 = *(v78 + v51);
  *(v79 + 24) = MEMORY[0x277D839B0];
  *v52 = v53;
  return result;
}

unint64_t sub_2684D2CF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2685691F0();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2684D2D60(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 2036625250;
      break;
    case 3:
      result = OUTLINED_FUNCTION_23();
      break;
    case 4:
      result = 0x6449707061;
      break;
    case 5:
      result = 0x656D614E707061;
      break;
    case 6:
      result = 0x67617373654D7369;
      break;
    case 7:
      result = 1296331625;
      break;
    case 8:
      result = 0x6C69614D7369;
      break;
    case 9:
      result = 0x646E696D65527369;
      break;
    case 10:
      result = OUTLINED_FUNCTION_25();
      break;
    case 11:
      result = 0x6867696C68676968;
      break;
    case 12:
      result = OUTLINED_FUNCTION_24();
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0x6449646165726874;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2684D2F8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2684D2CF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2684D2FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684D2D60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2684D2FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2684D2D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2684D3024(uint64_t a1)
{
  v2 = sub_2684D4424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2684D3060(uint64_t a1)
{
  v2 = sub_2684D4424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2684D309C()
{
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_title);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_subtitle);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_body);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_notificationId);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appId);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appName);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_highlight);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_stackSummary);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName);
  sub_2684D4378(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId);
  return v0;
}

uint64_t sub_2684D3174(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2684D31F8(uint64_t a1)
{
  sub_2684D3618(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2684D32B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B10, &qword_26856A1F0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2684D4424();
  sub_2685692A0();
  v12[15] = 0;
  sub_268568810();
  OUTLINED_FUNCTION_14();
  sub_2684D4250(v9, v10, MEMORY[0x277D55C50]);
  sub_268569140();
  if (!v1)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3_1(6);
    OUTLINED_FUNCTION_3_1(7);
    OUTLINED_FUNCTION_3_1(8);
    OUTLINED_FUNCTION_3_1(9);
    OUTLINED_FUNCTION_3_1(10);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3_1(13);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3_1(15);
    OUTLINED_FUNCTION_0_1();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2684D35C8(void *a1)
{
  v2 = swift_allocObject();
  sub_2684D3784(a1);
  return v2;
}

void sub_2684D3618(uint64_t a1)
{
  if (!qword_280282AC8)
  {
    sub_268568810();
    v1 = sub_268568EB0();
    if (!v2)
    {
      atomic_store(v1, &qword_280282AC8);
    }
  }
}

uint64_t sub_2684D3698(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684D36D0(uint64_t a1)
{
  sub_2684D3618(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2684D3784(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_27();
  v63 = v6;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v64 = v8;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v65 = v10;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v66 = v12;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v67 = v14;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_28();
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v19);
  v68 = &v63 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF8, &qword_26856A1E8);
  OUTLINED_FUNCTION_1();
  v69 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  v73 = a1;
  v74 = v1;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2684D4424();
  v70 = v26;
  v27 = v72;
  sub_268569290();
  if (v27)
  {
    v61 = v74;

    v31 = v73;
    type metadata accessor for NotificationsNotification(0);
    swift_deallocPartialClassInstance();
    v62 = v31;
  }

  else
  {
    v72 = v3;
    sub_268568810();
    v75 = 0;
    OUTLINED_FUNCTION_14();
    sub_2684D4250(v28, v29, MEMORY[0x277D55C60]);
    v30 = v68;
    sub_2685690F0();
    OUTLINED_FUNCTION_15();
    sub_2684D4308(v30, v33);
    OUTLINED_FUNCTION_11_0(1);
    OUTLINED_FUNCTION_12();
    sub_2685690F0();
    OUTLINED_FUNCTION_15();
    sub_2684D4308(v21, v34);
    OUTLINED_FUNCTION_11_0(2);
    OUTLINED_FUNCTION_12();
    v68 = 0;
    sub_2685690F0();
    OUTLINED_FUNCTION_15();
    sub_2684D4308(v2, v35);
    OUTLINED_FUNCTION_11_0(3);
    OUTLINED_FUNCTION_12();
    sub_2685690F0();
    OUTLINED_FUNCTION_15();
    sub_2684D4308(0, v36);
    OUTLINED_FUNCTION_11_0(4);
    v37 = v72;
    OUTLINED_FUNCTION_12();
    sub_2685690F0();
    OUTLINED_FUNCTION_15();
    sub_2684D4308(v37, v38);
    OUTLINED_FUNCTION_11_0(5);
    v39 = v67;
    OUTLINED_FUNCTION_12();
    sub_2685690F0();
    OUTLINED_FUNCTION_15();
    sub_2684D4308(v39, v40);
    OUTLINED_FUNCTION_18(6);
    v41 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v41, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMessage);
    OUTLINED_FUNCTION_18(7);
    v42 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v42, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isDM);
    OUTLINED_FUNCTION_18(8);
    v43 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v43, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isMail);
    OUTLINED_FUNCTION_18(9);
    v44 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v44, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isReminder);
    OUTLINED_FUNCTION_18(10);
    v45 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v45, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight);
    OUTLINED_FUNCTION_11_0(11);
    OUTLINED_FUNCTION_10_0(v46, v47);
    OUTLINED_FUNCTION_15();
    sub_2684D4308(v66, v48);
    OUTLINED_FUNCTION_11_0(12);
    OUTLINED_FUNCTION_10_0(v49, v50);
    OUTLINED_FUNCTION_15();
    sub_2684D4308(v65, v51);
    OUTLINED_FUNCTION_18(13);
    v52 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v52, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary);
    OUTLINED_FUNCTION_11_0(14);
    OUTLINED_FUNCTION_10_0(v53, v54);
    OUTLINED_FUNCTION_15();
    sub_2684D4308(v64, v55);
    OUTLINED_FUNCTION_18(15);
    v56 = sub_268569110();
    OUTLINED_FUNCTION_7_0(v56, OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsHighlightSummary);
    OUTLINED_FUNCTION_11_0(16);
    OUTLINED_FUNCTION_10_0(v57, v58);
    v59 = OUTLINED_FUNCTION_13();
    v60(v59);
    v61 = v74;
    sub_2684D4308(v63, v74 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId);
    v62 = v73;
  }

  __swift_destroy_boxed_opaque_existential_0(v62);
  return v61;
}

void *sub_2684D4060()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_2684D40A8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_2684D4170@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2684D35C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2684D4250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2684D4298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684D4308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684D4378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2684D4424()
{
  result = qword_280282B00;
  if (!qword_280282B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B00);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for NotificationsNotification.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NotificationsNotification.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
        JUMPOUT(0x2684D462CLL);
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2684D4668()
{
  result = qword_280282B20;
  if (!qword_280282B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B20);
  }

  return result;
}

unint64_t sub_2684D46C0()
{
  result = qword_280282B28;
  if (!qword_280282B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B28);
  }

  return result;
}

unint64_t sub_2684D4718()
{
  result = qword_280282B30;
  if (!qword_280282B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{
  *(v2 - 65) = v1;

  return sub_268569140();
}

uint64_t OUTLINED_FUNCTION_3_1@<X0>(char a2@<W8>)
{
  *(v2 - 65) = a2;

  return sub_268569160();
}

uint64_t OUTLINED_FUNCTION_6_0@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2)
{

  return sub_2685691C0();
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2)
{

  return sub_2685690F0();
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21@<X0>(uint64_t a1@<X8>)
{

  return sub_2684D4298(v1 + v3, v2 + a1);
}

uint64_t *OUTLINED_FUNCTION_22()
{
  v3 = *(v1 - 88);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t sub_2684D4A5C()
{
  sub_268569260();
  MEMORY[0x26D61C3F0](0);
  return sub_268569280();
}

uint64_t sub_2684D4AAC(uint64_t a1)
{
  sub_268569260();
  MEMORY[0x26D61C3F0](0);
  return sub_268569280();
}

uint64_t sub_2684D4AF4()
{
  type metadata accessor for NotificationsFeatureFlags();
  result = swift_initStaticObject();
  static NotificationsFeatureFlags.shared = result;
  return result;
}

uint64_t *NotificationsFeatureFlags.shared.unsafeMutableAddressor()
{
  if (qword_280282948 != -1)
  {
    swift_once();
  }

  return &static NotificationsFeatureFlags.shared;
}

uint64_t static NotificationsFeatureFlags.shared.getter()
{
  type metadata accessor for NotificationsFeatureFlags();

  return swift_initStaticObject();
}

uint64_t sub_2684D4BC4()
{
  v2[3] = &type metadata for SiriNotificationsFeatures;
  v2[4] = sub_2684D4C2C();
  v0 = sub_2685680D0();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

unint64_t sub_2684D4C2C()
{
  result = qword_280282B38;
  if (!qword_280282B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriNotificationsFeatures(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SiriNotificationsFeatures(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2684D4D70);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2684D4DAC()
{
  result = qword_280282B40;
  if (!qword_280282B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B40);
  }

  return result;
}

void *sub_2684D4E64(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  sub_2684CC878(a2, (v2 + 5));
  sub_2684CC878(a2, v12);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9[3] = &type metadata for ProtectedAppCheck;
  v9[4] = &off_2879195A0;
  type metadata accessor for ANReadNotificationAction(0);
  v4 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v9, &type metadata for ProtectedAppCheck);

  v6 = sub_2684D52D8(v5, v12, v10, v4);
  sub_2684CC8D4(a2);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v7 = sub_2684D58C8(&qword_280282B50, 255, type metadata accessor for ANReadNotificationAction, &unk_2685701D8);
  v2[2] = v6;
  v2[3] = v7;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2684D4F7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2685675E0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_268503B1C(v5))
  {

    sub_2684CC878(v1 + 40, v23);
    type metadata accessor for ANReadNotificationsActionGroup();
    v8 = swift_allocObject();

    sub_2684D4E64(v9, v23);
    v11 = &unk_280282B70;
    v12 = type metadata accessor for ANReadNotificationsActionGroup;
    v13 = &unk_26856A4E8;
  }

  else
  {
    sub_2685199D0();
    if (v14)
    {
      v16 = v14;
      v17 = v15;
      sub_2685675D0();
      sub_268519BA8();

      (*(v4 + 8))(v7, v3);
    }

    sub_2684CC878(v1 + 40, v23);
    type metadata accessor for ANReadSpokenHintActionGroup();
    swift_allocObject();

    v8 = sub_2684F8238(v18, v23);
    v11 = &unk_280282B68;
    v12 = type metadata accessor for ANReadSpokenHintActionGroup;
    v13 = &unk_26856BD44;
    v10 = 255;
  }

  v19 = sub_2684D58C8(v11, v10, v12, v13);
  *a1 = v8;
  a1[1] = v19;
  v20 = *MEMORY[0x277D5BF58];
  v21 = sub_268567E80();
  (*(*(v21 - 8) + 104))(a1, v20, v21);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v21);
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

char *sub_2684D52D8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_2685689F0();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268567690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2685688F0();
  MEMORY[0x28223BE20](v14 - 8);
  v33[3] = &type metadata for ProtectedAppCheck;
  v33[4] = &off_2879195A0;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *(a4 + 4) = a1;
  sub_2684D57FC(a2 + 40, (a4 + 40));
  sub_2684D57FC(a2, (a4 + 80));
  sub_2684D57FC(a2 + 80, (a4 + 120));
  v30 = a3;
  sub_2684D578C(a3, (a4 + 160));
  sub_2684CC878(a2, (a4 + 208));
  type metadata accessor for ReadNotificationsCATs(0);

  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC((a4 + 40), v31);
  sub_2685686B0();
  *(a4 + 25) = sub_268568710();
  sub_2684D57FC((a4 + 40), v31);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_268567A70();
  (*(v11 + 32))(&a4[OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_locale], v13, v10);
  __swift_destroy_boxed_opaque_existential_0(v31);
  sub_2684D57FC(v33, &a4[OBJC_IVAR____TtC24SiriNotificationsIntents24ANReadNotificationAction_protectedAppChecker]);
  v15 = sub_2684D4BC4();
  if (v15 & 1) != 0 && sub_268503B1C(v15) && (v16 = sub_268541488(), , (v16))
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v17 = v29;
    v18 = __swift_project_value_buffer(v29, qword_28028B348);
    v20 = v27;
    v19 = v28;
    (*(v28 + 16))(v27, v18, v17);
    v21 = sub_2685689E0();
    v22 = sub_268568DC0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2684CA000, v21, v22, "ANReadNotificationAction#run Skipping appending to prompt", v23, 2u);
      MEMORY[0x26D61CB30](v23, -1, -1);
    }

    sub_2684D5860(v30);
    (*(v19 + 8))(v20, v17);
    __swift_destroy_boxed_opaque_existential_0(v33);
    sub_2684CC8D4(a2);
    swift_beginAccess();
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
  }

  else
  {
    sub_2684D5860(v30);
    __swift_destroy_boxed_opaque_existential_0(v33);
    sub_2684D57FC((a4 + 80), v31);
    type metadata accessor for ANAppendNotificationAction();
    swift_allocObject();
    v24 = sub_2684D6C9C(a1, v31);
    sub_2684CC8D4(a2);
    v25 = sub_2684D58C8(&qword_280282B60, 255, type metadata accessor for ANAppendNotificationAction, &unk_26856A6B8);
    swift_beginAccess();
    *(a4 + 2) = v24;
    *(a4 + 3) = v25;
  }

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_2684D578C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B58, &qword_26856A520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684D57FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2684D5860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B58, &qword_26856A520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2684D58C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2684D5920()
{
  v0 = sub_2685689F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v4 = __swift_project_value_buffer(v0, qword_28028B348);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "GuardedFlow on | returning true", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 1;
}

uint64_t sub_2684D5AA0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_2685689F0();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684D5B60, 0, 0);
}

uint64_t sub_2684D5B60()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "GuardedFlow executing | executing flow with guards", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[6];
  v10 = v0[7];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B80, &qword_26856A608);
  sub_268567800();
  *(swift_allocObject() + 16) = xmmword_26856A540;
  sub_2685677E0();
  v12 = sub_2685676E0();

  v0[2] = v11;
  v0[3] = v12;
  sub_268567790();
  sub_2685677C0();
  v0[4] = sub_268567930();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B88, &unk_26856A610);
  sub_2684D60BC();
  sub_268567C20();

  v13 = v0[1];

  return v13();
}

uint64_t sub_2684D5E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2684D5F10;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2684D5F10(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2684D6014(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2684CEB80;

  return sub_2684D5AA0(a1, v4);
}

unint64_t sub_2684D60BC()
{
  result = qword_280282B90;
  if (!qword_280282B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280282B88, &unk_26856A610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B90);
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

unint64_t sub_2684D6168()
{
  result = qword_280282B98;
  if (!qword_280282B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282B98);
  }

  return result;
}

BOOL sub_2684D61BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2685692D0();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  v11 = HIBYTE(a2) & 0xF;
  v24[0] = a1;
  v24[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24[2] = 0;
  v24[3] = v11;
  v12 = (v8 + 8);

  while (1)
  {
    v13 = sub_268568C30();
    v15 = v14;
    if (!v14)
    {
      break;
    }

    v16 = v13;
    v17 = sub_2684D63DC(v13, v14);
    if ((v17 & 0x100000000) == 0)
    {
      v18 = v17;
      sub_2685692E0();
      v19 = sub_2685692C0();
      (*v12)(v10, v4);
      if ((v19 & 1) != 0 && v18 >= 0x238D)
      {

        break;
      }
    }

    v20 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v20 = v16;
    }

    if (((v15 >> 60) & ((v16 & 0x800000000000000) == 0)) != 0)
    {
      v21 = 11;
    }

    else
    {
      v21 = 7;
    }

    if (sub_2684D6724(0xFuLL, v21 | (v20 << 16), v16, v15) < 2 || (sub_2684D63DC(v16, v15) & 0x100000000) != 0)
    {
    }

    else
    {
      sub_2685692E0();
      v22 = sub_2685692C0();

      (*v12)(v7, v4);
      if (v22)
      {
        break;
      }
    }
  }

  return v15 != 0;
}

unint64_t sub_2684D63DC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2684D6684(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_268568FC0();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_268569010();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

uint64_t sub_2684D65D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

unint64_t sub_2684D6684(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2684D6930(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2684D69A0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2684D6724(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_2684D6B28(a1, a3, a4);
  result = sub_2684D6B28(a2, a3, a4);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_268568BD0();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_268569010();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_268568BE0();
        v7 = result;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = sub_268569010();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_38;
  }

  return 0;
}

unint64_t sub_2684D6930(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_2684D6AAC(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2684D69A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x2821FD070]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_268569010();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

unint64_t sub_2684D6AAC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_268568C70();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D61BDD0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_2684D6B28(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2684D6BC8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2684D69A0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2684D6BC8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_2684D6AAC(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

void *sub_2684D6C9C(uint64_t a1, __int128 *a2)
{
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  sub_2684D8314(a2, (v2 + 5));
  return v2;
}

uint64_t sub_2684D6CCC()
{
  v1[3] = v0;
  v2 = sub_2685689F0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684D6D98, 0, 0);
}

uint64_t sub_2684D6D98()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D47618]) init];
  v0[8] = v1;
  v2 = sub_268568B20();
  sub_2684D94A0(v2, v3, v1);
  sub_2684D16C0(0, &qword_280282BA8, 0x277CCABB0);
  v4 = sub_268568E50();
  [v1 setSupportsSpokenNotifications_];

  v5 = sub_268568E50();
  [v1 setIsOnDeviceSearch_];

  v7 = sub_268503BF8(v6);
  if (v7)
  {

    v7 = sub_268568B10();
  }

  v8 = v0[3];
  [v1 setAfterNotificationId_];

  v9 = v8[8];
  v10 = v8[9];
  __swift_project_boxed_opaque_existential_1(v8 + 5, v9);
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = sub_2684D16C0(0, &qword_280282BB0, 0x277D471B0);
  *v11 = v0;
  v11[1] = sub_2684D6F74;

  return MEMORY[0x2821BB6A0](v1, v9, v12, v10);
}

uint64_t sub_2684D6F74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_2684D73C4;
  }

  else
  {
    v4 = sub_2684D7088;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2684D7088()
{
  v37 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v0[10];
  if (v1)
  {
    v3 = v0[8];
    v4 = sub_2684D9504(v1);
    sub_2684D75A0(v4);

    OUTLINED_FUNCTION_9_1();
  }

  else
  {

    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v6 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    v9 = __swift_project_value_buffer(v7, qword_28028B348);
    (*(v8 + 16))(v6, v9, v7);
    v10 = sub_2685689E0();
    v11 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2684CA000, v10, v11, "ANAppendNotificationAction run | unable to convert SABaseCommand to SAOnDeviceNotificationsSearchCompleted", v12, 2u);
      OUTLINED_FUNCTION_2();
    }

    v13 = v0[7];
    v14 = v0[4];
    v15 = v0[5];

    (*(v15 + 8))(v13, v14);
    sub_2684D9574();
    v16 = swift_allocError();
    swift_willThrow();
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    __swift_project_value_buffer(v0[4], qword_28028B348);
    v17 = OUTLINED_FUNCTION_10_1();
    v18(v17);
    v19 = v16;
    v20 = sub_2685689E0();
    v21 = sub_268568DE0();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[5];
    v24 = v0[6];
    v25 = v0[4];
    if (v22)
    {
      OUTLINED_FUNCTION_4();
      v26 = OUTLINED_FUNCTION_12_0();
      v36 = v26;
      *v24 = 136315138;
      v0[2] = v16;
      v27 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
      v28 = sub_268568B70();
      v30 = sub_2684EABEC(v28, v29, &v36);

      *(v24 + 4) = v30;
      OUTLINED_FUNCTION_11_1(&dword_2684CA000, v31, v32, "ANAppendNotificationAction run | error: %s");
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_3_2();

      (*(v23 + 8))(v35, v25);
    }

    else
    {

      (*(v23 + 8))(v24, v25);
    }

    v33 = v0[8];
    swift_willThrow();

    OUTLINED_FUNCTION_9_1();
  }

  return v5();
}

uint64_t sub_2684D73C4()
{
  v23 = v0;
  v1 = v0[11];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  __swift_project_value_buffer(v0[4], qword_28028B348);
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  v4 = v1;
  v5 = sub_2685689E0();
  v6 = sub_268568DE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];
  if (v7)
  {
    OUTLINED_FUNCTION_4();
    v11 = OUTLINED_FUNCTION_12_0();
    v22 = v11;
    *v9 = 136315138;
    v0[2] = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v13 = sub_268568B70();
    v15 = sub_2684EABEC(v13, v14, &v22);

    *(v9 + 4) = v15;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v16, v17, "ANAppendNotificationAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3_2();

    (*(v8 + 8))(v21, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  v18 = v0[8];
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v19();
}

uint64_t sub_2684D75A0(uint64_t a1)
{
  v3 = sub_2685689F0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v103 = &v96 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v96 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v96 - v14;
  MEMORY[0x28223BE20](v13);
  v102 = &v96 - v16;
  if (!a1 || !sub_2684DEAF0(a1))
  {
    if (qword_280282960 != -1)
    {
LABEL_64:
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v90 = __swift_project_value_buffer(v3, qword_28028B348);
    (*(v4 + 16))(v7, v90, v3);
    v91 = sub_2685689E0();
    v92 = v3;
    v93 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_2684CA000, v91, v93, "NotificationAppendingAction appendNotifications was not passed any notifications to append", v94, 2u);
      OUTLINED_FUNCTION_2();
    }

    return (*(v4 + 8))(v7, v92);
  }

  v110 = sub_2684F10C8(v17);
  sub_2684D832C(&v110);
  v18 = v110;
  v107 = sub_2684DEAF0(v110);
  if (!v107)
  {
  }

  v20 = *(v1 + 32);
  v105 = v4 + 16;
  v106 = v18 & 0xC000000000000001;
  v104 = (v4 + 8);
  v4 = 4;
  *&v19 = 138412290;
  v96 = v19;
  *&v19 = 136315138;
  v98 = v19;
  v100 = v3;
  v101 = v12;
  v97 = v15;
  v108 = v20;
  v99 = v18;
  while (1)
  {
    v7 = v106;
    sub_2684DEAFC();
    if (v7)
    {
      v21 = MEMORY[0x26D61C170](v4 - 4, v18);
    }

    else
    {
      v21 = *(v18 + 8 * v4);
    }

    v22 = v21;
    if (__OFADD__(v4 - 4, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    v109 = v4 - 3;
    v23 = sub_268503BF8(v21);
    if (v23)
    {
      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v26 = v22;
    v27 = sub_2685565F0(v26);
    if (v24)
    {
      if (v28)
      {
        if (v25 == v27 && v24 == v28)
        {

          v30 = 1;
        }

        else
        {
          v30 = sub_2685691C0();
        }
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_23;
    }

    if (v28)
    {
      v30 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v30 = 1;
LABEL_24:
    v31 = v108;
    v32 = *(sub_268503AA4(v27) + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform);

    type metadata accessor for AnnounceNotification(0);
    v33 = swift_allocObject();
    v34 = v26;
    v35 = sub_268541AD0(v34, v30 & 1, v32);
    if (!v35)
    {

      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      __swift_project_value_buffer(v3, qword_28028B348);
      OUTLINED_FUNCTION_1_1();
      v50(v103);
      v51 = v34;
      v52 = sub_2685689E0();
      v53 = sub_268568DC0();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_4();
        v55 = swift_slowAlloc();
        *v54 = v96;
        *(v54 + 4) = v51;
        *v55 = v51;
        v56 = v51;
        _os_log_impl(&dword_2684CA000, v52, v53, "NotificationAppendingAction appendNotifications unable to append notification, since notification: %@ is missing required content", v54, 0xCu);
        sub_2684CECB8(v55);
        v3 = v100;
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_2();
      }

      else
      {
        v56 = v52;
        v52 = v51;
      }

      (*v104)(v103, v3);
      goto LABEL_54;
    }

    v36 = v35;
    if ((sub_26850497C(v35) & 1) == 0)
    {
      break;
    }

    v37 = v102;
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_28028B348);
    OUTLINED_FUNCTION_1_1();
    v38(v37);
    v39 = v34;
    v40 = sub_2685689E0();
    v41 = sub_268568DC0();
    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_4();
      v42 = OUTLINED_FUNCTION_7_1();
      v33 = OUTLINED_FUNCTION_2_2(v42);
      v44 = v43;

      if (!v44)
      {
        goto LABEL_66;
      }

      v45 = OUTLINED_FUNCTION_6_1();
      v48 = sub_2684EABEC(v45, v46, v47);

      *(v25 + 4) = v48;
      _os_log_impl(&dword_2684CA000, v40, v41, "NotificationAppendingAction appendNotifications unable to append notification, since notification: %s has duplicate content", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_2();

      OUTLINED_FUNCTION_5_1();
      v3 = v100;
      v49(v102, v100);
      v12 = v101;
      v18 = v99;
    }

    else
    {

      OUTLINED_FUNCTION_5_1();
      v73(v37, v3);
      v12 = v101;
      v18 = v99;
    }

LABEL_54:
    ++v4;
    if (v109 == v107)
    {
    }
  }

  v57 = sub_268565290(v34);
  if (v58)
  {
    v59 = sub_268503D28(v57, v58);

    if (v59)
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      __swift_project_value_buffer(v3, qword_28028B348);
      OUTLINED_FUNCTION_1_1();
      v60(v12);
      v61 = v34;
      v62 = sub_2685689E0();
      v63 = v12;
      v64 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_0(v64))
      {
        OUTLINED_FUNCTION_4();
        v65 = OUTLINED_FUNCTION_7_1();
        v33 = OUTLINED_FUNCTION_2_2(v65);
        v67 = v66;

        if (!v67)
        {
          goto LABEL_68;
        }

        v68 = OUTLINED_FUNCTION_6_1();
        v71 = sub_2684EABEC(v68, v69, v70);

        *(v25 + 4) = v71;
        _os_log_impl(&dword_2684CA000, v62, v64, "NotificationAppendingAction appendNotifications appending notification: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_2();

        OUTLINED_FUNCTION_5_1();
        v3 = v100;
        v12 = v101;
        v72(v101, v100);
      }

      else
      {

        OUTLINED_FUNCTION_5_1();
        v86 = OUTLINED_FUNCTION_6_1();
        v87(v86);
        v12 = v63;
      }

      sub_268504B7C(v36);
    }

    else
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      __swift_project_value_buffer(v3, qword_28028B348);
      OUTLINED_FUNCTION_1_1();
      v74(v97);
      v75 = v34;
      v76 = sub_2685689E0();
      v77 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_0(v77))
      {
        OUTLINED_FUNCTION_4();
        v78 = OUTLINED_FUNCTION_7_1();
        v33 = OUTLINED_FUNCTION_2_2(v78);
        v80 = v79;

        if (!v80)
        {
          goto LABEL_67;
        }

        v81 = OUTLINED_FUNCTION_6_1();
        v84 = sub_2684EABEC(v81, v82, v83);

        *(v25 + 4) = v84;
        _os_log_impl(&dword_2684CA000, v76, v77, "NotificationAppendingAction appendNotifications unable to append notification, since notification: %s is not new", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_2();

        OUTLINED_FUNCTION_5_1();
        v3 = v100;
        v85(v97, v100);
        v12 = v101;
      }

      else
      {

        OUTLINED_FUNCTION_5_1();
        v88 = OUTLINED_FUNCTION_6_1();
        v89(v88);
        v12 = v101;
      }
    }

    goto LABEL_54;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_2684D7F58()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  return v0;
}

uint64_t sub_2684D7F88()
{
  sub_2684D7F58();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2684D7FE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_2684D80CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684D8158;

  return sub_2684D6CCC();
}

uint64_t sub_2684D8158()
{

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_2684D82D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANAppendNotificationAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2684D8314(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2684D832C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_268537B94(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2684D83A8(v6);
  return sub_268569030();
}

void sub_2684D83A8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_268569190();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_268563684(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2684D86C4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_2684D8488(0, v3, 1, a1);
  }
}

void sub_2684D8488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_2685675E0();
  v8 = MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v34 = v14;
      v35 = a3;
      v16 = *(v39 + 8 * a3);
      v33 = v15;
      v17 = v15;
      do
      {
        v18 = *v14;
        v19 = v16;
        v20 = v18;
        v21 = [v19 date];
        if (!v21)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v22 = v21;
        sub_2685675C0();

        v23 = [v20 date];
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = v23;
        v25 = v37;
        sub_2685675C0();

        v40 = sub_268567590();
        v26 = v17;
        v27 = *v36;
        v28 = v25;
        v29 = v38;
        (*v36)(v28, v38);
        v27(v12, v29);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_13;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
      }

      while (v26 != -1);
      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void sub_2684D86C4(void ***a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v133 = a1;
  v147 = sub_2685675E0();
  v6 = MEMORY[0x28223BE20](v147);
  v144 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v130 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v137 = &v130 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v132 = &v130 - v15;
  MEMORY[0x28223BE20](v14);
  v141 = a3;
  v19 = a3[1];
  if (v19 >= 1)
  {
    v130 = a4;
    v131 = &v130 - v17;
    v136 = v18;
    v20 = 0;
    v146 = (v16 + 8);
    v21 = MEMORY[0x277D84F90];
    v22 = 0x279C3C000uLL;
    while (1)
    {
      v23 = v20;
      v24 = v20 + 1;
      v134 = v23;
      if (v24 < v19)
      {
        v145 = v19;
        v25 = *v141;
        v143 = v24;
        v26 = *(v25 + 8 * v23);
        v27 = *(v25 + 8 * v24);
        v28 = v26;
        v29 = [v27 *(v22 + 2648)];
        if (!v29)
        {
          goto LABEL_140;
        }

        v30 = v29;
        v31 = v23;
        v148 = v27;
        v32 = v131;
        sub_2685675C0();

        v33 = [v28 *(v22 + 2648)];
        if (!v33)
        {
          goto LABEL_141;
        }

        v34 = v33;
        v35 = v132;
        sub_2685675C0();

        LODWORD(v140) = sub_268567590();
        v36 = *v146;
        v37 = v35;
        v38 = v147;
        (*v146)(v37, v147);
        v138 = v36;
        (v36)(v32, v38);

        v135 = 8 * v31;
        a4 = v25 + 8 * v31 + 16;
        v39 = (v31 + 2);
        v24 = v143;
        v22 = 0x279C3C000uLL;
        v40 = v145;
        v139 = v21;
        while (1)
        {
          v41 = v39;
          if (v24 + 1 >= v40)
          {
            break;
          }

          v143 = v24;
          v42 = *(a4 - 8);
          v43 = *a4;
          v44 = v42;
          v45 = [v43 *(v22 + 2648)];
          if (!v45)
          {
            goto LABEL_135;
          }

          v46 = v45;
          v148 = v41;
          v47 = v136;
          sub_2685675C0();

          v48 = [v44 *(v22 + 2648)];
          if (!v48)
          {
            goto LABEL_134;
          }

          v49 = v48;
          v50 = v137;
          sub_2685675C0();

          LODWORD(v49) = sub_268567590() & 1;
          v51 = v50;
          v52 = v147;
          v53 = v138;
          (v138)(v51, v147);
          (v53)(v47, v52);

          a4 += 8;
          v24 = v143 + 1;
          v41 = v148;
          v39 = (v148 + 1);
          v22 = 0x279C3C000;
          v21 = v139;
          v40 = v145;
          if ((v140 & 1) != v49)
          {
            goto LABEL_13;
          }
        }

        v24 = v40;
LABEL_13:
        if (v140)
        {
          v54 = v134;
          if (v24 < v134)
          {
            goto LABEL_127;
          }

          if (v134 < v24)
          {
            if (v40 >= v41)
            {
              v55 = v41;
            }

            else
            {
              v55 = v40;
            }

            v56 = 8 * v55 - 8;
            v57 = v24;
            v58 = v135;
            do
            {
              if (v54 != --v57)
              {
                v59 = *v141;
                if (!*v141)
                {
                  goto LABEL_138;
                }

                v60 = *(v59 + v58);
                *(v59 + v58) = *(v59 + v56);
                *(v59 + v56) = v60;
              }

              ++v54;
              v56 -= 8;
              v58 += 8;
            }

            while (v54 < v57);
          }
        }
      }

      v61 = v141[1];
      if (v24 < v61)
      {
        if (__OFSUB__(v24, v134))
        {
          goto LABEL_126;
        }

        if (v24 - v134 < v130)
        {
          v62 = v130 + v134;
          if (__OFADD__(v134, v130))
          {
            goto LABEL_128;
          }

          if (v62 >= v61)
          {
            v62 = v141[1];
          }

          if (v62 >= v134)
          {
            if (v24 == v62)
            {
              goto LABEL_43;
            }

            v139 = v21;
            v145 = *v141;
            v63 = v145 + 8 * v24 - 8;
            v64 = (v134 - v24);
            v135 = v62;
LABEL_33:
            v143 = v24;
            v65 = *(v145 + 8 * v24);
            v138 = v64;
            v66 = v64;
            v140 = v63;
            while (1)
            {
              v67 = *v63;
              v68 = v65;
              v69 = v67;
              v70 = [v68 *(v22 + 2648)];
              if (!v70)
              {
                goto LABEL_132;
              }

              v71 = v70;
              sub_2685675C0();

              v72 = [v69 *(v22 + 2648)];
              if (!v72)
              {
                break;
              }

              v73 = v72;
              v148 = v68;
              a4 = v66;
              v74 = v144;
              sub_2685675C0();

              LOBYTE(v73) = sub_268567590();
              v75 = *v146;
              v76 = v74;
              v77 = v147;
              (*v146)(v76, v147);
              v75(v10, v77);

              if ((v73 & 1) == 0)
              {
                v22 = 0x279C3C000;
LABEL_41:
                v24 = v143 + 1;
                v63 = v140 + 8;
                v64 = (v138 - 1);
                if (v143 + 1 == v135)
                {
                  v24 = v135;
                  v21 = v139;
                  goto LABEL_43;
                }

                goto LABEL_33;
              }

              if (!v145)
              {
                goto LABEL_133;
              }

              v78 = *v63;
              v65 = *(v63 + 8);
              *v63 = v65;
              *(v63 + 8) = v78;
              v63 -= 8;
              v66 = (v66 + 1);
              v22 = 0x279C3C000;
              if (a4 == -1)
              {
                goto LABEL_41;
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
            goto LABEL_142;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          v21 = sub_2684F0F24(v21);
          goto LABEL_97;
        }
      }

LABEL_43:
      if (v24 < v134)
      {
        goto LABEL_125;
      }

      v143 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26854BC10();
        v21 = v120;
      }

      v79 = *(v21 + 16);
      a4 = v79 + 1;
      v80 = v143;
      if (v79 >= *(v21 + 24) >> 1)
      {
        sub_26854BC10();
        v80 = v143;
        v21 = v121;
      }

      *(v21 + 16) = a4;
      v81 = v21 + 32;
      v82 = (v21 + 32 + 16 * v79);
      *v82 = v134;
      v82[1] = v80;
      v148 = *v133;
      if (!v148)
      {
        goto LABEL_139;
      }

      if (v79)
      {
        break;
      }

LABEL_92:
      v19 = v141[1];
      v20 = v143;
      if (v143 >= v19)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      v83 = a4 - 1;
      v84 = (v81 + 16 * (a4 - 1));
      v85 = (v21 + 16 * a4);
      if (a4 >= 4)
      {
        break;
      }

      if (a4 == 3)
      {
        v86 = *(v21 + 32);
        v87 = *(v21 + 40);
        v96 = __OFSUB__(v87, v86);
        v88 = v87 - v86;
        v89 = v96;
LABEL_63:
        if (v89)
        {
          goto LABEL_112;
        }

        v101 = *v85;
        v100 = v85[1];
        v102 = __OFSUB__(v100, v101);
        v103 = v100 - v101;
        v104 = v102;
        if (v102)
        {
          goto LABEL_115;
        }

        v105 = v84[1];
        v106 = v105 - *v84;
        if (__OFSUB__(v105, *v84))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v103, v106))
        {
          goto LABEL_120;
        }

        if (v103 + v106 >= v88)
        {
          if (v88 < v106)
          {
            v83 = a4 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (a4 < 2)
      {
        goto LABEL_114;
      }

      v108 = *v85;
      v107 = v85[1];
      v96 = __OFSUB__(v107, v108);
      v103 = v107 - v108;
      v104 = v96;
LABEL_78:
      if (v104)
      {
        goto LABEL_117;
      }

      v110 = *v84;
      v109 = v84[1];
      v96 = __OFSUB__(v109, v110);
      v111 = v109 - v110;
      if (v96)
      {
        goto LABEL_119;
      }

      if (v111 < v103)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v83 - 1 >= a4)
      {
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

      if (!*v141)
      {
        goto LABEL_136;
      }

      v115 = v21;
      a4 = v81 + 16 * (v83 - 1);
      v116 = *a4;
      v117 = v81 + 16 * v83;
      v21 = *(v117 + 8);
      v118 = v142;
      sub_2684D9048((*v141 + 8 * *a4), (*v141 + 8 * *v117), (*v141 + 8 * v21), v148);
      v142 = v118;
      if (v118)
      {
        goto LABEL_105;
      }

      if (v21 < v116)
      {
        goto LABEL_107;
      }

      v119 = *(v115 + 16);
      if (v83 > v119)
      {
        goto LABEL_108;
      }

      *a4 = v116;
      *(a4 + 8) = v21;
      if (v83 >= v119)
      {
        goto LABEL_109;
      }

      a4 = v119 - 1;
      sub_2684F0F38((v117 + 16), v119 - 1 - v83, (v81 + 16 * v83));
      v21 = v115;
      *(v115 + 16) = v119 - 1;
      v22 = 0x279C3C000;
      if (v119 <= 2)
      {
        goto LABEL_92;
      }
    }

    v90 = v81 + 16 * a4;
    v91 = *(v90 - 64);
    v92 = *(v90 - 56);
    v96 = __OFSUB__(v92, v91);
    v93 = v92 - v91;
    if (v96)
    {
      goto LABEL_110;
    }

    v95 = *(v90 - 48);
    v94 = *(v90 - 40);
    v96 = __OFSUB__(v94, v95);
    v88 = v94 - v95;
    v89 = v96;
    if (v96)
    {
      goto LABEL_111;
    }

    v97 = v85[1];
    v98 = v97 - *v85;
    if (__OFSUB__(v97, *v85))
    {
      goto LABEL_113;
    }

    v96 = __OFADD__(v88, v98);
    v99 = v88 + v98;
    if (v96)
    {
      goto LABEL_116;
    }

    if (v99 >= v93)
    {
      v113 = *v84;
      v112 = v84[1];
      v96 = __OFSUB__(v112, v113);
      v114 = v112 - v113;
      if (v96)
      {
        goto LABEL_124;
      }

      if (v88 < v114)
      {
        v83 = a4 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_95:
  a4 = *v133;
  if (!*v133)
  {
LABEL_142:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_97:
  v123 = (v21 + 16);
  v122 = *(v21 + 16);
  while (v122 >= 2)
  {
    if (!*v141)
    {
      goto LABEL_137;
    }

    v124 = v21;
    v21 += 16 * v122;
    v125 = *v21;
    v126 = &v123[2 * v122];
    v127 = *(v126 + 1);
    v128 = v142;
    sub_2684D9048((*v141 + 8 * *v21), (*v141 + 8 * *v126), (*v141 + 8 * v127), a4);
    v142 = v128;
    if (v128)
    {
      break;
    }

    if (v127 < v125)
    {
      goto LABEL_121;
    }

    if (v122 - 2 >= *v123)
    {
      goto LABEL_122;
    }

    *v21 = v125;
    *(v21 + 8) = v127;
    v129 = *v123 - v122;
    if (*v123 < v122)
    {
      goto LABEL_123;
    }

    v122 = *v123 - 1;
    sub_2684F0F38(v126 + 16, v129, v126);
    *v123 = v122;
    v21 = v124;
  }

LABEL_105:
}

uint64_t sub_2684D9048(void **a1, void **a2, void **a3, void **a4)
{
  v63 = sub_2685675E0();
  v8 = MEMORY[0x28223BE20](v63);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v59 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  i = (&v56 - v15);
  v16 = a2 - a1;
  v62 = (v17 + 8);
  v18 = a3 - a2;
  if (v16 < v18)
  {
    sub_26854CA88(a1, a2 - a1, a4);
    v19 = &a4[v16];
    v20 = 0x279C3C000uLL;
    v64 = v19;
    v65 = a3;
    while (1)
    {
      if (a4 >= v19 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v22 = a1;
      v66 = a2;
      v23 = *a2;
      v24 = *a4;
      v25 = v23;
      v26 = v24;
      result = [v25 *(v20 + 2648)];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v28 = result;
      v29 = a4;
      v30 = i;
      sub_2685675C0();

      result = [v26 *(v20 + 2648)];
      if (!result)
      {
        goto LABEL_40;
      }

      v31 = result;
      v32 = v59;
      sub_2685675C0();

      LOBYTE(v31) = sub_268567590();
      v33 = *v62;
      v34 = v32;
      v35 = v63;
      (*v62)(v34, v63);
      v33(v30, v35);

      if ((v31 & 1) == 0)
      {
        break;
      }

      v36 = v66;
      a2 = v66 + 1;
      v37 = v22;
      if (v22 != v66)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v37 + 1;
      v19 = v64;
      a3 = v65;
      v20 = 0x279C3C000;
    }

    v36 = a4++;
    v37 = v22;
    a2 = v66;
    if (v22 == v29)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v37 = *v36;
    goto LABEL_14;
  }

  sub_26854CA88(a2, a3 - a2, a4);
  v19 = &a4[v18];
  v38 = 0x279C3C000uLL;
  v57 = a4;
  v58 = a1;
LABEL_16:
  v39 = a2 - 1;
  v40 = a3 - 1;
  v66 = a2;
  for (i = a2 - 1; v19 > a4 && a2 > a1; v39 = i)
  {
    v65 = v40;
    v42 = v19 - 1;
    v43 = *v39;
    v44 = *(v19 - 1);
    v45 = v43;
    result = [v44 *(v38 + 2648)];
    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v46 = result;
    v64 = v19;
    sub_2685675C0();

    result = [v45 *(v38 + 2648)];
    if (!result)
    {
      goto LABEL_41;
    }

    v47 = result;
    v48 = v60;
    sub_2685675C0();

    LOBYTE(v47) = sub_268567590();
    v49 = *v62;
    v50 = v48;
    v51 = v63;
    (*v62)(v50, v63);
    v49(v12, v51);

    if (v47)
    {
      v19 = v64;
      a3 = v65;
      v53 = i;
      a2 = i;
      a4 = v57;
      a1 = v58;
      v38 = 0x279C3C000;
      if (v65 + 1 != v66)
      {
        *v65 = *i;
        a2 = v53;
      }

      goto LABEL_16;
    }

    v52 = v65;
    a4 = v57;
    if (v64 != v65 + 1)
    {
      *v65 = *v42;
    }

    v40 = v52 - 1;
    v19 = v42;
    a2 = v66;
    a1 = v58;
    v38 = 0x279C3C000;
  }

LABEL_31:
  v54 = v19 - a4;
  if (a2 != a4 || a2 >= &a4[v54])
  {
    memmove(a2, a4, 8 * v54);
  }

  return 1;
}

void sub_2684D94A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268568B10();

  [a3 setPriority_];
}

uint64_t sub_2684D9504(void *a1)
{
  v1 = [a1 notifications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2684D16C0(0, &qword_280282BC8, 0x277D47610);
  v3 = sub_268568CE0();

  return v3;
}

unint64_t sub_2684D9574()
{
  result = qword_280282BC0;
  if (!qword_280282BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282BC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ANAppendNotificationAction.ANAppendNotificationActionErrors(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2684D9664);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2684D96A0()
{
  result = qword_280282BD8;
  if (!qword_280282BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282BD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1)
{
  *(v3 - 96) = a1;
  *v2 = *(v3 - 208);

  return sub_268565324(v1);
}

void OUTLINED_FUNCTION_3_2()
{

  JUMPOUT(0x26D61CB30);
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_11_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_13_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2684D9810(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2684D9864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2684D98C4(void *a1)
{
  if (!a1)
  {
    memset(v24, 0, sizeof(v24));
LABEL_8:
    sub_2684D9B88(v24);
    sub_2685675E0();
    v17 = OUTLINED_FUNCTION_0_3();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  v2 = sub_268568B10();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_268568F30();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  OUTLINED_FUNCTION_3_3(v4, v5, v6, v7, v8, v9, v10, v11, v22, *(&v22 + 1), v23);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = sub_2685675E0();
  OUTLINED_FUNCTION_1_2(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_2_3();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_2684D99B0(void *a1)
{
  if (!a1)
  {
    memset(v24, 0, sizeof(v24));
LABEL_8:
    sub_2684D9B88(v24);
    sub_2685675E0();
    v17 = OUTLINED_FUNCTION_0_3();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  v2 = sub_268568B10();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_268568F30();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  OUTLINED_FUNCTION_3_3(v4, v5, v6, v7, v8, v9, v10, v11, v22, *(&v22 + 1), v23);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = sub_2685675E0();
  OUTLINED_FUNCTION_1_2(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_2_3();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_2684D9A9C(void *a1)
{
  if (!a1)
  {
    memset(v24, 0, sizeof(v24));
LABEL_8:
    sub_2684D9B88(v24);
    sub_2685675E0();
    v17 = OUTLINED_FUNCTION_0_3();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  v2 = sub_268568B10();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_268568F30();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  OUTLINED_FUNCTION_3_3(v4, v5, v6, v7, v8, v9, v10, v11, v22, *(&v22 + 1), v23);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = sub_2685675E0();
  OUTLINED_FUNCTION_1_2(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_2_3();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_2684D9B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE0, &unk_26856D8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_2684D9C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *__src)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5 & 1;
  *(v6 + 49) = HIBYTE(a5) & 1;
  memcpy((v6 + 56), __src, 0x80uLL);
  return v6;
}

uint64_t sub_2684D9C8C(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_2684D9CAC, 0, 0);
}

uint64_t sub_2684D9CAC()
{
  sub_2685685F0();
  sub_2685685E0();
  v0[13] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v2 = sub_268568AD0();
  v0[14] = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_268568950();
  v5 = sub_268567C50();
  v6 = sub_2684DB3B4();
  *v3 = v0;
  v3[1] = sub_2684D9E54;
  v7 = v0[11];
  v8 = v0[12];

  return MEMORY[0x2821C8828](v7, v2, &unk_26856A998, v8, v4, v5, v6);
}

uint64_t sub_2684D9E54()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v3 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2684D9F88, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_9_1();

    return v6();
  }
}

uint64_t sub_2684D9F88()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_2684D9FEC(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = sub_2685679B0();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = sub_268567B60();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  sub_268567B10();
  v2[24] = swift_task_alloc();
  v5 = sub_268567F20();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v6 = sub_2685689F0();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  sub_2685688F0();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684DA218, 0, 0);
}

uint64_t sub_2684DA218()
{
  v1 = v0[17];
  type metadata accessor for ReadNotificationsCATPatternsExecutor(0);
  sub_2685686F0();
  sub_2685685F0();
  v2 = sub_2685685D0();
  sub_268516318(v1 + 96, v2);

  sub_2685688E0();
  v3 = sub_268568710();
  v0[32] = v3;
  v4 = *(v1 + 48);

  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_2684DA358;
  v6 = v0[17];

  return sub_26851449C(v4, v3, v6);
}

uint64_t sub_2684DA358()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v3[34] = v0;

  if (v0)
  {
    v7 = sub_2684DA7F8;
  }

  else
  {

    v7 = sub_2684DA46C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2684DA46C()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadSingleNotificationPatternFlow execute | pattern successfully executed", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v8 = v0[30];
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[27];
  v22 = v0[26];
  v23 = v0[25];
  v12 = v0[22];
  v17 = v0[13];
  v18 = v0[23];
  v19 = v0[21];
  v20 = v0[20];
  v13 = v0[19];
  v14 = v0[17];
  v21 = v0[18];

  (*(v9 + 8))(v8, v10);
  sub_268567AE0();
  sub_268567ED0();
  sub_2684D57FC(v14 + 136, (v0 + 2));
  sub_268567D00();
  swift_allocObject();
  sub_268567CF0();
  sub_268567840();
  swift_allocObject();
  v0[15] = sub_268567830();
  sub_268567890();

  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v12 + 104))(v18, *MEMORY[0x277D5BC10], v19);
  (*(v13 + 104))(v20, *MEMORY[0x277D5B958], v21);
  sub_2684EBB74(1u, 1, v18, v20, 8, 0, 0, 0, 0, 2u);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_268567C30();

  (*(v22 + 8))(v11, v23);

  OUTLINED_FUNCTION_9_1();

  return v15();
}

uint64_t sub_2684DA7F8()
{

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_2684DA8A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_268567CE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_2684DB414();

  v10 = sub_26856427C(v9);
  sub_268567CD0();
  sub_268508520(v10, v8);

  (*(v3 + 8))(v5, v2);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v2);
  sub_268567EF0();
  return sub_268567EE0();
}

uint64_t sub_2684DAA28(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_2684DDBA0(0, 0, v7, &unk_26856A940, v9);
}

uint64_t sub_2684DAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v8 = swift_task_alloc();
  v6[6] = v8;
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_2684DAC24;

  return sub_2684D9C8C(v8);
}

uint64_t sub_2684DAC24()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_2684DADC0;
  }

  else
  {
    v5 = sub_2684DAD28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2684DAD28()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_9_1();

  return v4();
}

uint64_t sub_2684DADC0()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

void *sub_2684DAE1C()
{

  sub_2684CC8D4(v0 + 56);
  return v0;
}

uint64_t sub_2684DAE5C()
{
  sub_2684DAE1C();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_2684DAEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2684DAF64;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2684DAF64()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2684DB074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2684DB128;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2684DB128()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  OUTLINED_FUNCTION_9_1();

  return v3();
}

uint64_t sub_2684DB208()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2684DB250(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB458;

  return sub_2684DAB28(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2684DB31C()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684DB128;

  return sub_2684D9FEC(v3, v0);
}

unint64_t sub_2684DB3B4()
{
  result = qword_280282BF8;
  if (!qword_280282BF8)
  {
    sub_268568950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282BF8);
  }

  return result;
}

unint64_t sub_2684DB414()
{
  result = qword_280282BC8;
  if (!qword_280282BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280282BC8);
  }

  return result;
}

uint64_t ANFlow.__allocating_init(notificationManager:sharedObjects:)(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  memcpy((v4 + 24), a2, 0x80uLL);
  return v4;
}

uint64_t ANFlow.init(notificationManager:sharedObjects:)(uint64_t a1, const void *a2)
{
  *(v2 + 16) = a1;
  memcpy((v2 + 24), a2, 0x80uLL);
  return v2;
}

uint64_t ANFlow.execute()(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_2685679B0();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = sub_268567B60();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684DB600, 0, 0);
}

uint64_t sub_2684DB600(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[31];
  v5 = v1[28];
  v4 = v1[29];
  v7 = v1[26];
  v6 = v1[27];
  v8 = v1[25];
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v1 + 18, v1[21]);
  sub_268567A20();
  (*(v2 + 104))(v3, *MEMORY[0x277D5BBF8], v4);
  (*(v6 + 104))(v5, *MEMORY[0x277D5B950], v7);
  sub_2684EBB74(6u, 9, v3, v5, 8, 0, 0, 0, 0, 2u);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v1 + 18);
  sub_2684CC878(v8 + 24, (v1 + 2));
  type metadata accessor for ANFlowSource();
  swift_allocObject();

  sub_2684F8690(v9, v1 + 2);
  sub_2684DBA44(&qword_280282C08, 255, type metadata accessor for ANFlowSource, &unk_26856BDC8);
  sub_2685678C0();
  swift_allocObject();
  v1[23] = sub_2685678B0();
  sub_268567C20();

  v10 = v1[1];

  return v10();
}

uint64_t ANFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ANFlow();
  sub_2684DBA44(&qword_280282C10, v2, type metadata accessor for ANFlow, &protocol conformance descriptor for ANFlow);
  return sub_268567900();
}

uint64_t ANFlow.deinit()
{

  sub_2684CC8D4(v0 + 24);
  return v0;
}

uint64_t ANFlow.__deallocating_deinit()
{

  sub_2684CC8D4(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_2684DB94C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684CEB80;

  return ANFlow.execute()(a1);
}

uint64_t sub_2684DB9E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ANFlow();

  return sub_268567950();
}

uint64_t sub_2684DBA44(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2684DBAF0(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v4 = OBJC_IVAR____TtC24SiriNotificationsIntents27RNReadConclusionActionGroup_transition;
  v5 = sub_268567E80();
  __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v5);
  sub_2684CC878(a1, v2 + OBJC_IVAR____TtC24SiriNotificationsIntents27RNReadConclusionActionGroup_sharedObjects);
  sub_2684CC878(a1, v9);
  type metadata accessor for RNReadConclusionAction();
  swift_allocObject();
  v6 = sub_2685443C8(v9);
  sub_2684CC8D4(a1);
  v7 = sub_2684DBEB8(&qword_280282C48, type metadata accessor for RNReadConclusionAction, &unk_26856F7B0);
  *(v2 + 16) = v6;
  *(v2 + 24) = v7;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2684DBBE0()
{
  swift_unknownObjectRelease();
  sub_2684DBF00(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents27RNReadConclusionActionGroup_transition);
  sub_2684CC8D4(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents27RNReadConclusionActionGroup_sharedObjects);
  return v0;
}

uint64_t sub_2684DBC20()
{
  sub_2684DBBE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RNReadConclusionActionGroup(uint64_t a1)
{
  result = qword_280282C20;
  if (!qword_280282C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684DBCCC(uint64_t a1)
{
  sub_2684DBD70(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2684DBD70(uint64_t a1)
{
  if (!qword_280282C30)
  {
    sub_268567E80();
    v1 = sub_268568EB0();
    if (!v2)
    {
      atomic_store(v1, &qword_280282C30);
    }
  }
}

uint64_t sub_2684DBE48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C40, &qword_26856AB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684DBEB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2684DBF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C40, &qword_26856AB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2684DBFCC()
{
  v1 = *(v0 + 16);
  sub_2684D57FC(v0 + 24, v4);
  type metadata accessor for ANPlayNotificationSoundAction();
  swift_allocObject();
  v2 = sub_2684D6C9C(v1, v4);
  sub_2684DC25C(&qword_280282C60, 255, type metadata accessor for ANPlayNotificationSoundAction, &unk_26856C2C8);

  return v2;
}

uint64_t sub_2684DC07C@<X0>(void *a1@<X8>)
{
  sub_2684CC878(v1 + 24, v9);
  type metadata accessor for ANReadNotificationsActionGroup();
  swift_allocObject();

  v4 = sub_2684D4E64(v3, v9);
  v5 = sub_2684DC25C(&qword_280282B70, 255, type metadata accessor for ANReadNotificationsActionGroup, &unk_26856A4E8);
  *a1 = v4;
  a1[1] = v5;
  v6 = *MEMORY[0x277D5BF58];
  v7 = sub_268567E80();
  (*(*(v7 - 8) + 104))(a1, v6, v7);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
}

uint64_t sub_2684DC184()
{

  sub_2684CC8D4(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_2684DC25C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2684DC2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *__src, char a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5 & 1;
  *(v7 + 49) = HIBYTE(a5) & 1;
  memcpy((v7 + 56), __src, 0x80uLL);
  *(v7 + 184) = a7;
  return v7;
}

uint64_t sub_2684DC2F4(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_2684DC314, 0, 0);
}

uint64_t sub_2684DC314()
{
  sub_2685685F0();
  sub_2685685E0();
  v0[13] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v2 = sub_268568AD0();
  v0[14] = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_268568950();
  v5 = sub_268567C50();
  v6 = sub_2684DDB50(&qword_280282BF8, MEMORY[0x277D55F70], MEMORY[0x277D55F30]);
  *v3 = v0;
  v3[1] = sub_2684D9E54;
  v7 = v0[11];
  v8 = v0[12];

  return MEMORY[0x2821C8828](v7, v2, &unk_26856AD30, v8, v4, v5, v6);
}

uint64_t sub_2684DC4EC(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  v3 = sub_2685689F0();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684DC5AC, 0, 0);
}

uint64_t sub_2684DC5AC()
{
  v1 = v0[29];
  sub_2684D57FC(v1 + 136, (v0 + 18));
  sub_268567D00();
  swift_allocObject();
  sub_268567CF0();
  v2 = sub_268567840();
  swift_allocObject();
  v3 = sub_268567830();
  v0[33] = v3;
  v0[26] = v3;
  v4 = *(v1 + 16);
  v19 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v18 = *(v1 + 48);
  v7 = *(v1 + 49);
  sub_2684CC878(v1 + 56, (v0 + 2));
  v8 = *(v1 + 184);
  swift_allocObject();

  v9 = sub_268567CF0();
  v10 = type metadata accessor for RNReadNotificationsFlowProvider();
  v11 = swift_allocObject();
  if (v7)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_2684DD560(v4, v19, v5, v6, v12 | v18, (v0 + 2), v9, v8, v11);
  v0[34] = v13;
  v0[27] = v13;
  v14 = swift_task_alloc();
  v0[35] = v14;
  v15 = sub_2684DDB50(&qword_280282C70, type metadata accessor for RNReadNotificationsFlowProvider, &unk_268570D18);
  *v14 = v0;
  v14[1] = sub_2684DC7DC;
  v16 = MEMORY[0x277D5B808];

  return MEMORY[0x2821BA370](v0 + 27, v2, v10, v16, v15);
}

uint64_t sub_2684DC7DC()
{
  OUTLINED_FUNCTION_9();
  v3[23] = v1;
  v3[24] = v2;
  v3[25] = v0;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 288) = v0;

  if (v0)
  {
    v7 = sub_2684DCAA8;
  }

  else
  {
    v7 = sub_2684DC92C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2684DC92C()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadNotificationsPatternFlow#execute pattern provider successfully created", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];

  (*(v9 + 8))(v8, v10);
  sub_268567C30();

  OUTLINED_FUNCTION_9_1();

  return v11();
}

uint64_t sub_2684DCAA8()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_2684DCB04(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_2684DDBA0(0, 0, v7, &unk_26856ACD8, v9);
}

uint64_t sub_2684DCC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v8 = swift_task_alloc();
  v6[6] = v8;
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_2684DAC24;

  return sub_2684DC2F4(v8);
}

void *sub_2684DCD00()
{

  sub_2684CC8D4(v0 + 56);
  return v0;
}

uint64_t sub_2684DCD40()
{
  sub_2684DCD00();

  return MEMORY[0x2821FE8D8](v0, 185, 7);
}

uint64_t sub_2684DCDBC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2684DCE04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB458;

  return sub_2684DCC04(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2684DCED0()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684DB128;

  return sub_2684DC4EC(v3, v0);
}

void *sub_2684DCF68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2684DD078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2684DCF88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2684DD178(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2684DCFA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2684DD288(a1, a2, a3, *v3, &qword_280282C98, &qword_26856AD58, type metadata accessor for ReadingRecord, sub_26854C5BC);
  *v3 = result;
  return result;
}

void *sub_2684DD000(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2684DD288(a1, a2, a3, *v3, &qword_280282CA8, &qword_26856AD68, MEMORY[0x277D55C48], sub_26854C5D4);
  *v3 = result;
  return result;
}

void *sub_2684DD058(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2684DD450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2684DD078(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26854C554((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2684DD178(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26854CA88(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2684DD288(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a8(a4 + v22, v14, v19 + v22);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_2684DD450(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C88, &qword_26856AD48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26854CA88(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C90, &qword_26856AD50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2684DD560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v52 = a8;
  v51 = a6;
  v47 = a5;
  v49 = a4;
  v50 = a3;
  v46 = a2;
  v11 = sub_2685689F0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_268567D00();
  v60 = MEMORY[0x277D5BD58];
  v48 = v59;
  v58[0] = a7;
  v45 = type metadata accessor for RNReadNotificationsFlowProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a9 + 16) = [objc_opt_self() bundleForClass_];
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 288) = 0xD000000000000023;
  *(a9 + 296) = 0x8000000268571AB0;
  *(a9 + 304) = 4;
  *(a9 + 336) = 0;
  if (qword_280282960 != -1)
  {
LABEL_26:
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_28028B348);
  (*(v12 + 16))(v14, v16, v11);

  v17 = sub_2685689E0();
  v18 = sub_268568DD0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v44 = v11;
    v11 = v19;
    v20 = swift_slowAlloc();
    *&v54 = v20;
    *v11 = 136315138;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
    v22 = MEMORY[0x26D61BE70](a1, v21);
    v24 = sub_2684EABEC(v22, v23, &v54);

    *(v11 + 4) = v24;
    _os_log_impl(&dword_2684CA000, v17, v18, "RNReadNotificationsFlowProvider#init items=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26D61CB30](v20, -1, -1);
    MEMORY[0x26D61CB30](v11, -1, -1);

    (*(v12 + 8))(v14, v44);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v25 = 0;
  v26 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  while (v26 != v25)
  {
    if (v25 >= *(a1 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v27 = *(a1 + 8 * v25 + 32);
    if (v27 >> 62)
    {
      v28 = sub_2685690A0();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v25;
    if (v28)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v54 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2684DCF88(0, *(v12 + 16) + 1, 1);
        v12 = v54;
      }

      v31 = *(v12 + 16);
      v30 = *(v12 + 24);
      v11 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_2684DCF88((v30 > 1), v31 + 1, 1);
        v12 = v54;
      }

      *(v12 + 16) = v11;
      *(v12 + 8 * v31 + 32) = v27;
    }
  }

  a1 = *(v12 + 16);
  if (a1)
  {
    *&v54 = v14;
    v14 = &v54;
    sub_268569040();
    v32 = 0;
    while (v32 < *(v12 + 16))
    {
      v57 = *(v12 + 8 * v32 + 32);

      sub_26855D568(&v57, v53);
      ++v32;

      v11 = v53[0];
      v14 = &v54;
      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
      if (a1 == v32)
      {

        v33 = v54;
        goto LABEL_23;
      }
    }

    goto LABEL_25;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_23:
  *(a9 + 120) = v33;
  v35 = v49;
  v34 = v50;
  *(a9 + 128) = v46;
  *(a9 + 136) = v34;
  *(a9 + 144) = v35;
  v36 = BYTE1(v47);
  *(a9 + 152) = v47 & 1;
  *(a9 + 153) = v36 & 1;
  v37 = v51;
  sub_2684CC878(v51, a9 + 160);
  sub_2684D57FC(v58, a9 + 24);
  *(a9 + 320) = 0;
  *(a9 + 328) = 0;
  sub_2684D57FC(v37 + 80, &v54);
  v38 = v48;
  swift_allocObject();

  v39 = sub_268567CF0();
  v53[3] = v38;
  v53[4] = MEMORY[0x277D5BD58];
  v53[0] = v39;
  v40 = sub_268567840();
  swift_allocObject();
  v41 = sub_268567830();
  v55 = v40;
  v56 = MEMORY[0x277D5B808];

  *&v54 = v41;
  sub_2684CC8D4(v37);
  __swift_destroy_boxed_opaque_existential_0(v58);
  sub_2684D8314(&v54, a9 + 64);
  *(a9 + 312) = v52 & 1;
  return a9;
}

uint64_t sub_2684DDB50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2684DDBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2684D1904(a3, v21 - v9);
  v11 = sub_268568D70();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_2684DE8E8(v10);
  }

  else
  {
    sub_268568D60();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_268568D30();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_268568B90() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = OUTLINED_FUNCTION_15_0();

      sub_2684DE8E8(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2684DE8E8(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return OUTLINED_FUNCTION_15_0();
}

uint64_t sub_2684DDDD0()
{
  OUTLINED_FUNCTION_5();
  v1[71] = v0;
  v1[70] = v2;
  v3 = sub_2685689F0();
  v1[72] = v3;
  v1[73] = *(v3 - 8);
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684DDEB4, 0, 0);
}

uint64_t sub_2684DDEB4()
{
  v2 = *(v0[71] + 16);
  sub_2684F4060();
  v3 = *(sub_2684F4060() + 16);

  if (v3 == 1)
  {
    if (sub_2684D1C14(*(v2 + 16)) == 1 && (v21 = *(v2 + 16), sub_2684D1C14(v21)))
    {

      if ((v21 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D61C170](0, v21);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }
      }

      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      __swift_project_value_buffer(v0[72], qword_28028B348);
      v23 = OUTLINED_FUNCTION_10_1();
      v24(v23);
      sub_2685689E0();
      v25 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v25))
      {
        *OUTLINED_FUNCTION_16_0() = 0;
        OUTLINED_FUNCTION_5_2(&dword_2684CA000, v26, v27, "Running RNReadSingleNotificationPatternFlow");
        OUTLINED_FUNCTION_11_2();
      }

      OUTLINED_FUNCTION_4_2();
      v28 = OUTLINED_FUNCTION_9_2();
      v29(v28);
      v30 = *(v1 + 40);
      v31 = OUTLINED_FUNCTION_8_1();
      sub_2684CC878(v31, (v0 + 34));
      type metadata accessor for RNReadSingleNotificationPatternFlow();
      swift_allocObject();
      v32 = OUTLINED_FUNCTION_7_2();
      v0[68] = sub_2684D9C4C(v32, v33, v34, v30, v35, v36);
      sub_2684DEA44(&qword_280282CC0, type metadata accessor for RNReadSingleNotificationPatternFlow, &unk_26856A8D8);
    }

    else
    {
      if (qword_280282960 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      __swift_project_value_buffer(v0[72], qword_28028B348);
      v51 = OUTLINED_FUNCTION_10_1();
      v52(v51);
      sub_2685689E0();
      v53 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v53))
      {
        *OUTLINED_FUNCTION_16_0() = 0;
        OUTLINED_FUNCTION_5_2(&dword_2684CA000, v54, v55, "Running RNReadNotificationsFromOneAppPatternFlow");
        OUTLINED_FUNCTION_11_2();
      }

      OUTLINED_FUNCTION_4_2();
      v56 = OUTLINED_FUNCTION_9_2();
      v57(v56);
      v58 = *(v1 + 40);
      v59 = OUTLINED_FUNCTION_8_1();
      sub_2684CC878(v59, (v0 + 18));
      type metadata accessor for RNReadNotificationsFromOneAppPatternFlow();
      swift_allocObject();

      v60 = OUTLINED_FUNCTION_7_2();
      v0[67] = sub_26854ADD4(v60, v61, v62, v58, v63, v64, 0);
      sub_2684DEA44(&qword_280282CB8, type metadata accessor for RNReadNotificationsFromOneAppPatternFlow, &unk_26856FF50);
    }
  }

  else if (v3)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    __swift_project_value_buffer(v0[72], qword_28028B348);
    v37 = OUTLINED_FUNCTION_10_1();
    v38(v37);
    sub_2685689E0();
    v39 = sub_268568DC0();
    if (OUTLINED_FUNCTION_12_1(v39))
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_5_2(&dword_2684CA000, v40, v41, "Running RNReadNotificationsFromMultipleAppPatternFlow");
      OUTLINED_FUNCTION_11_2();
    }

    OUTLINED_FUNCTION_4_2();
    v42 = OUTLINED_FUNCTION_9_2();
    v43(v42);
    v44 = *(v1 + 40);
    v45 = OUTLINED_FUNCTION_8_1();
    sub_2684CC878(v45, (v0 + 2));
    type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlow();
    swift_allocObject();
    v46 = OUTLINED_FUNCTION_7_2();
    v0[66] = sub_2684DC2A4(v46, v47, v48, v44, v49, v50, 0);
    sub_2684DEA44(&qword_280282CB0, type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlow, &unk_26856F8C0);
  }

  else
  {

    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v4 = v0[77];
    v5 = v0[73];
    v6 = v0[72];
    v7 = __swift_project_value_buffer(v6, qword_28028B348);
    (*(v5 + 16))(v4, v7, v6);
    v8 = sub_2685689E0();
    v9 = sub_268568DC0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_16_0();
      *v10 = 0;
      _os_log_impl(&dword_2684CA000, v8, v9, "Running RNNoNewNotificationsPatternFlow", v10, 2u);
      MEMORY[0x26D61CB30](v10, -1, -1);
    }

    v11 = v0[77];
    v12 = v0[73];
    v13 = v0[72];
    v14 = v0[71];

    (*(v12 + 8))(v11, v13);
    v16 = *(v14 + 24);
    v15 = *(v14 + 32);
    v17 = *(v14 + 40);
    v18 = *(v14 + 48);
    v19 = *(v14 + 49);
    sub_2684CC878(v14 + 56, (v0 + 50));
    type metadata accessor for RNNoNewNotificationsPatternFlow();
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    *(v20 + 24) = v15;
    *(v20 + 32) = v17;
    *(v20 + 40) = v18;
    *(v20 + 41) = v19;
    memcpy((v20 + 48), v0 + 50, 0x80uLL);
    v0[69] = v20;
    sub_2684DEA44(&qword_280282CC8, type metadata accessor for RNNoNewNotificationsPatternFlow, &unk_26856FC70);
  }

  sub_268567C20();

  OUTLINED_FUNCTION_9_1();

  return v65();
}

uint64_t sub_2684DE594(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_2684DDBA0(0, 0, v7, &unk_26856AE30, v9);
}

uint64_t sub_2684DE694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_2684DAC24;

  return sub_2684DDDD0();
}

uint64_t sub_2684DE7D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2684DE820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB128;

  return sub_2684DE694(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2684DE8E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2684DE960(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_2684DE984(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_13_1();
}

uint64_t sub_2684DE9E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
  }

  *v3 = v7;
  return OUTLINED_FUNCTION_13_1();
}

uint64_t sub_2684DEA44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2684DEA8C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_13_1();
}

unint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2684DE950(a3);

  return sub_2684DE960(a2, v5, a3);
}

void OUTLINED_FUNCTION_4_2()
{
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_11_2()
{

  JUMPOUT(0x26D61CB30);
}

BOOL OUTLINED_FUNCTION_12_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_17_0()
{

  JUMPOUT(0x26D61C170);
}

void *sub_2684DECAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2685688F0();
  MEMORY[0x28223BE20](v6 - 8);
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  sub_2684D57FC(a2, (v2 + 5));
  sub_2684D57FC(a2 + 40, (v2 + 10));
  type metadata accessor for UnsupportedNotificationsCATs(0);

  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC(a2 + 40, v9);
  sub_2685686B0();
  v7 = sub_268568710();

  sub_2684CC8D4(a2);
  v3[15] = v7;
  return v3;
}

uint64_t sub_2684DEDB8()
{
  OUTLINED_FUNCTION_5();
  v1[19] = v0;
  v2 = sub_2685679B0();
  v1[20] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[21] = v3;
  v1[22] = swift_task_alloc();
  v4 = sub_268567B60();
  v1[23] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[24] = v5;
  v1[25] = swift_task_alloc();
  v6 = sub_2685689F0();
  v1[26] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[27] = v7;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v8 = sub_268567D90();
  v1[31] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[32] = v9;
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2684DEF80, 0, 0);
}

uint64_t sub_2684DEF80(uint64_t a1)
{
  v2 = sub_268503BF8(a1);
  v1[34] = v2;
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);
    v1[35] = v3;

    v4 = swift_task_alloc();
    v1[36] = v4;
    *v4 = v1;
    v4[1] = sub_2684DF2AC;
    v5 = v1[33];

    return sub_268532FB4(v5, v3);
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    __swift_project_value_buffer(v1[26], qword_28028B348);
    v7 = OUTLINED_FUNCTION_12_2();
    v8(v7);
    v9 = sub_2685689E0();
    v10 = sub_268568DE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2684CA000, v9, v10, "ANReadUnsupportedFollowupAction run | missing the last notification announced", v11, 2u);
      OUTLINED_FUNCTION_2();
    }

    v12 = v1[29];
    v13 = v1[26];
    v14 = v1[27];
    v16 = v1[24];
    v15 = v1[25];
    v17 = v1[22];
    v18 = v1[23];
    v19 = v1[21];
    v27 = v1[20];

    (*(v14 + 8))(v12, v13);
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_268567A20();
    (*(v16 + 104))(v15, *MEMORY[0x277D5BC00], v18);
    (*(v19 + 104))(v17, *MEMORY[0x277D5B8D0], v27);
    sub_268568B70();
    v20 = OUTLINED_FUNCTION_1_4();
    sub_2684EBB74(v20, v21, v15, v17, 8, v22, v23, 0, v25, v26);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    sub_2684E00CC();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_7_3(v1[33]);

    OUTLINED_FUNCTION_9_1();

    return v24();
  }
}

uint64_t sub_2684DF2AC()
{
  OUTLINED_FUNCTION_5();
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v2 = v5;
  *(v5 + 296) = v0;

  if (v0)
  {
    v3 = sub_2684DF848;
  }

  else
  {

    v3 = sub_2684DF3BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2684DF3BC()
{
  v1 = v0[19];
  v2 = sub_26851C004(v0[33], v1 + 10, 0);
  v0[38] = v2;
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  v5 = swift_task_alloc();
  v0[39] = v5;
  v6 = sub_2684E0120();
  *v5 = v0;
  v5[1] = sub_2684DF4AC;

  return MEMORY[0x2821BB6A0](v2, v3, v6, v4);
}

uint64_t sub_2684DF4AC()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 320) = v0;

  if (v0)
  {
    v7 = sub_2684DFB10;
  }

  else
  {

    v7 = sub_2684DF5BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2684DF5BC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[26], qword_28028B348);
  v1 = OUTLINED_FUNCTION_12_2();
  v2(v1);
  v3 = sub_2685689E0();
  v4 = sub_268568DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2684CA000, v3, v4, "ANReadUnsupportedFollowupAction run | read unsupported follow-up message, transitioning to follow-up", v5, 2u);
    OUTLINED_FUNCTION_2();
  }

  v6 = v0[34];
  v22 = v0[38];
  v23 = v0[32];
  v24 = v0[31];
  v25 = v0[33];
  v7 = v0[30];
  v8 = v0[27];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[21];
  v20 = v0[22];
  v21 = v0[20];

  (*(v8 + 8))(v7, v9);
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_268567A20();
  (*(v11 + 104))(v10, *MEMORY[0x277D5BC00], v12);
  (*(v13 + 104))(v20, *MEMORY[0x277D5B930], v21);

  v14 = OUTLINED_FUNCTION_1_4();
  sub_2684EBB74(v14, v15, v10, v20, 2, 0, 0, v6, v18, v19);
  sub_2685679A0();

  (*(v23 + 8))(v25, v24);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  OUTLINED_FUNCTION_9_1();

  return v16();
}

uint64_t sub_2684DF848()
{
  v35 = v0;

  v4 = v0[37];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[26], qword_28028B348);
  v5 = OUTLINED_FUNCTION_10_1();
  v6(v5);
  v7 = v4;
  v8 = sub_2685689E0();
  v9 = sub_268568DE0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[27];
  v12 = v0[28];
  v13 = v0[26];
  if (v10)
  {
    swift_slowAlloc();
    v1 = OUTLINED_FUNCTION_13_2();
    v34 = v1;
    *v12 = 136315138;
    v0[18] = v4;
    v14 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v15 = sub_268568B70();
    v2 = v16;
    v3 = sub_2684EABEC(v15, v16, &v34);

    *(v12 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v17, v18, "ANReadUnsupportedFollowupAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v19 = (*(v11 + 8))(v33, v13);
  }

  else
  {

    v19 = (*(v11 + 8))(v12, v13);
  }

  OUTLINED_FUNCTION_5_3(v19);
  OUTLINED_FUNCTION_9_3();
  (*(v1 + 104))(v8, *MEMORY[0x277D5BC00], v3);
  v4[13](v12, *MEMORY[0x277D5B8D0], v9);
  v0[17] = v2;
  v20 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();

  v21 = OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_4(v21, v22, v23, v24, v25, v26, v27, v28, v31, v32);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_willThrow();

  OUTLINED_FUNCTION_7_3(v0[33]);

  OUTLINED_FUNCTION_9_1();

  return v29();
}

uint64_t sub_2684DFB10()
{
  v38 = v0;
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 248);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 320);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(*(v0 + 208), qword_28028B348);
  v8 = OUTLINED_FUNCTION_10_1();
  v9(v8);
  v10 = v7;
  v11 = sub_2685689E0();
  v12 = sub_268568DE0();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 216);
  v15 = *(v0 + 224);
  v16 = *(v0 + 208);
  if (v13)
  {
    swift_slowAlloc();
    v1 = OUTLINED_FUNCTION_13_2();
    v37 = v1;
    *v15 = 136315138;
    *(v0 + 144) = v7;
    v17 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v18 = sub_268568B70();
    v2 = v19;
    v3 = sub_2684EABEC(v18, v19, &v37);

    *(v15 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v20, v21, "ANReadUnsupportedFollowupAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v22 = (*(v14 + 8))(v36, v16);
  }

  else
  {

    v22 = (*(v14 + 8))(v15, v16);
  }

  OUTLINED_FUNCTION_5_3(v22);
  OUTLINED_FUNCTION_9_3();
  (*(v1 + 104))(v11, *MEMORY[0x277D5BC00], v3);
  v7[13](v15, *MEMORY[0x277D5B8D0], v12);
  *(v0 + 136) = v2;
  v23 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();

  v24 = OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_4(v24, v25, v26, v27, v28, v29, v30, v31, v34, v35);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  swift_willThrow();

  OUTLINED_FUNCTION_7_3(*(v0 + 264));

  OUTLINED_FUNCTION_9_1();

  return v32();
}

void *sub_2684DFDF8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return v0;
}

uint64_t sub_2684DFE38()
{
  sub_2684DFDF8();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_2684DFE90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DFF1C;

  return sub_2684DEDB8();
}

uint64_t sub_2684DFF1C()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  OUTLINED_FUNCTION_9_1();

  return v3();
}

uint64_t sub_2684E008C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANReadUnsupportedFollowupAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2684E00CC()
{
  result = qword_280282CD8;
  if (!qword_280282CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282CD8);
  }

  return result;
}

unint64_t sub_2684E0120()
{
  result = qword_280282BB0;
  if (!qword_280282BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280282BB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ANReadUnsupportedFollowupAction.ReadUnsupportedFollowupActionErrors(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2684E0200);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2684E023C()
{
  result = qword_280282CE8;
  if (!qword_280282CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282CE8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{

  return sub_2684EBB74(a1, a2, v10, v13, 8, v12, v14, v11, a9, a10);
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1)
{

  return sub_268567990();
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_9_3()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

  return sub_268567A20();
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return swift_slowAlloc();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2684E03C8()
{
  v1 = [v0 contentType];
  v2 = sub_268568B20();
  v4 = v3;
  if (v2 == sub_268568B20() && v4 == v5)
  {

    goto LABEL_12;
  }

  v7 = sub_2685691C0();

  if (v7)
  {
LABEL_12:
    v14 = 1;
    return v14 & 1;
  }

  v8 = [v0 contentType];
  v9 = sub_268568B20();
  v11 = v10;
  if (v9 == sub_268568B20() && v11 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2685691C0();
  }

  return v14 & 1;
}

uint64_t sub_2684E0514()
{
  v1 = v0;
  v2 = [v0 contentType];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = sub_268568B20();
  v0 = v5;
  if (v4 == sub_268568B20() && v0 == v6)
  {
    goto LABEL_14;
  }

  v8 = sub_2685691C0();

  if ((v8 & 1) == 0)
  {
LABEL_8:
    v10 = [v1 contentType];
    if (!v10)
    {
      v9 = 0;
      return v9 & 1;
    }

    v3 = v10;
    sub_268568B20();
    if (v1 != OUTLINED_FUNCTION_4_3() || v0 != v11)
    {
      v9 = OUTLINED_FUNCTION_2_5();
LABEL_15:

      return v9 & 1;
    }

LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_2684E0640()
{
  v2 = [v0 contentType];
  sub_268568B20();
  if (v1 == OUTLINED_FUNCTION_4_3() && v0 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_5();
  }

  return v5 & 1;
}

uint64_t sub_2684E06CC()
{
  v2 = [v0 contentType];
  if (v2)
  {
    v3 = v2;
    sub_268568B20();
    if (v1 == OUTLINED_FUNCTION_4_3() && v0 == v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = OUTLINED_FUNCTION_2_5();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id sub_2684E0768()
{
  result = [v0 communicationContext];
  if (result)
  {
    v2 = result;
    v3 = [result sender];

    if (v3)
    {
      return sub_2684E1094(v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2684E07D8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2685689F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_28028B348);
  (*(v7 + 16))(v9, v10, v6);
  v11 = OUTLINED_FUNCTION_3_5();
  sub_2684E1164(v11, v12);
  v13 = sub_2685689E0();
  v14 = sub_268568DD0();
  v15 = OUTLINED_FUNCTION_3_5();
  sub_2684E11BC(v15, v16);
  if (os_log_type_enabled(v13, v14))
  {
    v17 = swift_slowAlloc();
    v44 = v2;
    v18 = a1;
    v19 = v17;
    v20 = swift_slowAlloc();
    v45 = v20;
    *v19 = 136315138;
    sub_2684E1164(v18, a2);
    v21 = sub_268567530();
    v42 = v7;
    v43 = v6;
    v22 = v21;
    v23 = a2;
    v25 = v24;
    sub_2684E11BC(v18, v23);
    v26 = sub_2684EABEC(v22, v25, &v45);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_2684CA000, v13, v14, "#RNNotificationContent attempting to unpack data: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26D61CB30](v20, -1, -1);
    v3 = v44;
    MEMORY[0x26D61CB30](v19, -1, -1);

    (*(v42 + 8))(v9, v43);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v27 = sub_2684D16C0(0, &qword_280282CF8, 0x277CCAAC8);
  sub_2684D16C0(0, &qword_280282D00, 0x277CF3510);
  v28 = sub_268568E00();
  if (v3)
  {
    v29 = OUTLINED_FUNCTION_3_5();
    sub_2684E11BC(v29, v30);
  }

  else
  {
    v31 = v28;
    if (v28)
    {
      v32 = OUTLINED_FUNCTION_3_5();
      sub_2684E11BC(v32, v33);
      return v31;
    }

    else
    {
      sub_2684D16C0(0, &qword_280282D08, 0x277CE1FC0);
      v35 = sub_268568E00();
      v36 = v35;
      if (v35)
      {
        v27 = [v35 content];
        v37 = OUTLINED_FUNCTION_3_5();
        sub_2684E11BC(v37, v38);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_3_5();
        sub_2684E11BC(v39, v40);
        return 0;
      }
    }
  }

  return v27;
}

uint64_t sub_2684E0B50(char **a1, char a2, void *a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      v8 = a3;
      v9 = a1;
      sub_2684E1104(v9, &selRef_title);
      v10 = OUTLINED_FUNCTION_1_5();
      sub_268568B20();
      OUTLINED_FUNCTION_5_4();
      if (a1)
      {
        if (v4 == v5 && a1 == &selRef_title)
        {
        }

        else
        {
          OUTLINED_FUNCTION_0_4();
          OUTLINED_FUNCTION_6_2();

          if ((v4 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v15 = sub_2684E0514() & 1;
        if (v15 != (sub_2684E03C8() & 1))
        {
          goto LABEL_31;
        }

        v16 = sub_2684E0768();
        v18 = v17;
        v19 = sub_2684E0768();
        LOBYTE(a1) = v20;
        if (v18)
        {
          if (v20)
          {
            if (v16 == v19 && v18 == v20)
            {
            }

            else
            {
              v22 = OUTLINED_FUNCTION_8_2();

              if ((v22 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

LABEL_47:
            v31 = sub_2684E1104(v9, &selRef_threadID);
            a1 = v32;
            v33 = [v8 threadIdentifier];
            sub_268568B20();
            OUTLINED_FUNCTION_5_4();
            if (a1)
            {
              if (v31 == v5 && a1 == v18)
              {
              }

              else
              {
                OUTLINED_FUNCTION_0_4();
                OUTLINED_FUNCTION_6_2();

                if ((v31 & 1) == 0)
                {
                  goto LABEL_31;
                }
              }

              sub_2684E1104(v9, &selRef_header);
              v39 = OUTLINED_FUNCTION_1_5();
              sub_268568B20();
              OUTLINED_FUNCTION_5_4();
              if (v31 != v5 || a1 != &selRef_header)
              {
                OUTLINED_FUNCTION_0_4();
                OUTLINED_FUNCTION_6_2();

                if ((v31 & 1) == 0)
                {
                  goto LABEL_31;
                }

                goto LABEL_80;
              }

              goto LABEL_79;
            }

            goto LABEL_76;
          }

LABEL_41:

LABEL_89:

          return a1 & 1;
        }

        if (!v20)
        {
          goto LABEL_47;
        }

LABEL_45:

        goto LABEL_32;
      }

      goto LABEL_76;
    }

LABEL_18:
    sub_2684D16C0(0, &qword_280282CF0, 0x277D82BB8);
    v8 = a3;
    v14 = a1;
    LOBYTE(a1) = sub_268568E70();

LABEL_77:
    return a1 & 1;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_18;
  }

  v9 = a3;
  v8 = a1;
  sub_2684E1104(v9, &selRef_title);
  v12 = OUTLINED_FUNCTION_1_5();
  sub_268568B20();
  OUTLINED_FUNCTION_5_4();
  if (!a1)
  {
    goto LABEL_76;
  }

  if (v4 == v5 && a1 == &selRef_title)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_6_2();

    if ((v4 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v23 = sub_2684E0514() & 1;
  if (v23 != (sub_2684E03C8() & 1))
  {
    goto LABEL_31;
  }

  v24 = sub_2684E0768();
  v26 = v25;
  v27 = sub_2684E0768();
  LOBYTE(a1) = v28;
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_41;
    }

    if (v24 == v27 && v26 == v28)
    {
    }

    else
    {
      v30 = OUTLINED_FUNCTION_8_2();

      if ((v30 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v28)
  {
    goto LABEL_45;
  }

  v35 = sub_2684E1104(v9, &selRef_threadID);
  a1 = v36;
  v37 = [v8 threadIdentifier];
  sub_268568B20();
  OUTLINED_FUNCTION_5_4();
  if (!a1)
  {
LABEL_76:

    goto LABEL_77;
  }

  if (v35 == v5 && a1 == v26)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_6_2();

    if ((v35 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  sub_2684E1104(v9, &selRef_header);
  v41 = OUTLINED_FUNCTION_1_5();
  sub_268568B20();
  OUTLINED_FUNCTION_5_4();
  if (v35 != v5 || a1 != &selRef_header)
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_6_2();

    if ((v35 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:

LABEL_80:
  sub_2684E1104(v9, &selRef_subtitle);
  v44 = OUTLINED_FUNCTION_7_4();
  v45 = sub_268568B20();
  v47 = v46;

  if (&selRef_header)
  {
    if (a1 == v45 && &selRef_header == v47)
    {
      LOBYTE(a1) = 1;
    }

    else
    {
      LOBYTE(a1) = sub_2685691C0();
    }

    goto LABEL_89;
  }

LABEL_31:

LABEL_32:
  LOBYTE(a1) = 0;
  return a1 & 1;
}