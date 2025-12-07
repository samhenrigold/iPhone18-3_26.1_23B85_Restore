uint64_t sub_24FE49838()
{
  v0 = sub_24FE4D9F4();
  __swift_allocate_value_buffer(v0, qword_27F3A4368);
  __swift_project_value_buffer(v0, qword_27F3A4368);
  return sub_24FE4D9E4();
}

uint64_t sub_24FE498B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x6B63656843657270;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x726F727265;
    }

    else
    {
      v5 = 0x73734165736F6C63;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE00746E61747369;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x696C616974696E69;
    }

    else
    {
      v5 = 0x6B63656843657270;
    }

    if (v4)
    {
      v6 = 0xEB0000000064657ALL;
    }

    else
    {
      v6 = 0xE900000000000073;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x726F727265;
  if (a2 != 2)
  {
    v8 = 0x73734165736F6C63;
    v7 = 0xEE00746E61747369;
  }

  if (a2)
  {
    v3 = 0x696C616974696E69;
    v2 = 0xEB0000000064657ALL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24FE4DA94();
  }

  return v11 & 1;
}

uint64_t sub_24FE49A18()
{
  sub_24FE4DAA4();
  sub_24FE4DA24();

  return sub_24FE4DAB4();
}

uint64_t sub_24FE49AF0(uint64_t a1)
{
  sub_24FE4DA24();
}

uint64_t sub_24FE49BB4(uint64_t a1)
{
  sub_24FE4DAA4();
  sub_24FE4DA24();

  return sub_24FE4DAB4();
}

unint64_t sub_24FE49C88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24FE4D684(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24FE49CB8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x6B63656843657270;
  v4 = 0xE500000000000000;
  v5 = 0x726F727265;
  if (*v1 != 2)
  {
    v5 = 0x73734165736F6C63;
    v4 = 0xEE00746E61747369;
  }

  if (*v1)
  {
    v3 = 0x696C616974696E69;
    v2 = 0xEB0000000064657ALL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t GenerativeAssistantEnablementFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source;
  v2 = sub_24FE4D9C4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_isExplicitRequest) = 2;
  *(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) = 0;
  v3 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  *(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue) = 1;
  v4 = *MEMORY[0x277D5BC38];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  return v0;
}

uint64_t GenerativeAssistantEnablementFlow.init()()
{
  v1 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source;
  v2 = sub_24FE4D9C4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_isExplicitRequest) = 2;
  *(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) = 0;
  v3 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  *(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue) = 1;
  v4 = *MEMORY[0x277D5BC38];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  return v0;
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

uint64_t GenerativeAssistantEnablementFlow.__allocating_init(source:isExplicitRequest:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  GenerativeAssistantEnablementFlow.init(source:isExplicitRequest:)(a1, v2);
  return v4;
}

uint64_t GenerativeAssistantEnablementFlow.init(source:isExplicitRequest:)(uint64_t a1, int a2)
{
  v16 = a2;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F48, &qword_24FE4E0B8);
  MEMORY[0x28223BE20]();
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source;
  v6 = sub_24FE4D9C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v2 + v5, 1, 1, v6);
  v9 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_isExplicitRequest;
  *(v2 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_isExplicitRequest) = 2;
  *(v2 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) = 0;
  v10 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  *(v2 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue) = 1;
  v11 = *MEMORY[0x277D5BC38];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v12 - 8) + 104))(v2 + v10, v11, v12);
  (*(v7 + 32))(v4, v15, v6);
  v8(v4, 0, 1, v6);
  swift_beginAccess();
  sub_24FE4A1BC(v4, v2 + v5);
  swift_endAccess();
  *(v2 + v9) = v16;
  return v2;
}

uint64_t sub_24FE4A1BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F48, &qword_24FE4E0B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE4A22C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24FE4A2C4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_24FE4A3E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24FE4A478(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24FE4A578()
{
  if (qword_27F3A4360 != -1)
  {
    swift_once();
  }

  v0 = sub_24FE4D9F4();
  __swift_project_value_buffer(v0, qword_27F3A4368);

  v1 = sub_24FE4D9D4();
  v2 = sub_24FE4DA44();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315394;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v5 = sub_24FE4DA14();
    v7 = sub_24FE4C884(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24FE4C884(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v9);
    _os_log_impl(&dword_24FE48000, v1, v2, "%s - %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v4, -1, -1);
    MEMORY[0x253058540](v3, -1, -1);
  }

  return 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24FE4A75C(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F48, &qword_24FE4E0B8);
  v2[31] = swift_task_alloc();
  v4 = sub_24FE4D9C4();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v5 = sub_24FE4D974();
  v2[36] = v5;
  v2[37] = *(v5 - 8);
  v2[38] = swift_task_alloc();
  v6 = sub_24FE4D864();
  v2[39] = v6;
  v2[40] = *(v6 - 8);
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FE4A980, 0, 0);
}

uint64_t sub_24FE4A980()
{
  v80 = v0;
  if (qword_27F3A4360 != -1)
  {
    swift_once();
  }

  v1 = sub_24FE4D9F4();
  v0[42] = __swift_project_value_buffer(v1, qword_27F3A4368);

  v2 = sub_24FE4D9D4();
  v3 = sub_24FE4DA44();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[27];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v79[0] = v6;
    *v5 = 136315650;
    v0[25] = v4;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v7 = sub_24FE4DA14();
    v9 = sub_24FE4C884(v7, v8, v79);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, v79);
    *(v5 + 22) = 2080;
    if (*(v4 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) > 1u)
    {
      if (*(v4 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) == 2)
      {
        v10 = 0xE500000000000000;
        v11 = 0x726F727265;
      }

      else
      {
        v10 = 0xEE00746E61747369;
        v11 = 0x73734165736F6C63;
      }
    }

    else if (*(v4 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState))
    {
      v10 = 0xEB0000000064657ALL;
      v11 = 0x696C616974696E69;
    }

    else
    {
      v10 = 0xE900000000000073;
      v11 = 0x6B63656843657270;
    }

    v12 = sub_24FE4C884(v11, v10, v79);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_24FE48000, v2, v3, "%s - %s executing flow with state %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v6, -1, -1);
    MEMORY[0x253058540](v5, -1, -1);
  }

  v13 = *(v0[27] + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      sub_24FE4D954();
LABEL_27:

      v55 = v0[1];

      return v55();
    }

    v47 = sub_24FE4D9D4();
    v48 = sub_24FE4DA44();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v0[27];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v79[0] = v51;
      *v50 = 136315394;
      v0[19] = v49;
      type metadata accessor for GenerativeAssistantEnablementFlow(0);

      v52 = sub_24FE4DA14();
      v54 = sub_24FE4C884(v52, v53, v79);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, v79);
      _os_log_impl(&dword_24FE48000, v47, v48, "%s - %s cancelled auth, dismissing assistant", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253058540](v51, -1, -1);
      MEMORY[0x253058540](v50, -1, -1);
    }

    sub_24FE4D994();
    sub_24FE4D894();
    swift_allocObject();
    v0[18] = sub_24FE4D884();
    sub_24FE4D944();
LABEL_26:

    goto LABEL_27;
  }

  if (!*(v0[27] + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState))
  {
    v15 = v0[40];
    v14 = v0[41];
    v16 = v0[38];
    v17 = v0[39];
    v18 = v0[37];
    v78 = v0[36];
    v19 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    sub_24FE4D854();
    sub_24FE4D844();
    (*(v15 + 8))(v14, v17);
    v20 = sub_24FE4DA04();

    [v19 setAceId_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F60, &qword_24FE4E0D8);
    sub_24FE4D8D4();
    *(swift_allocObject() + 16) = xmmword_24FE4E090;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F68, qword_24FE4E0E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24FE4E0A0;
    *(v21 + 32) = v19;
    v22 = v19;
    sub_24FE4D964();
    v23 = type metadata accessor for CloseOnCancelStrategy(0);
    v24 = swift_allocObject();
    (*(v18 + 32))(v24 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow21CloseOnCancelStrategy_authenticationPolicy, v16, v78);
    *(v24 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow21CloseOnCancelStrategy_cancellationCommands) = v21;
    v0[10] = v23;
    v0[11] = sub_24FE4D024(&qword_27F3A3F70, type metadata accessor for CloseOnCancelStrategy, &unk_24FE4E298);
    v0[7] = v24;
    sub_24FE4D8C4();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v25 = sub_24FE4D874();

    v0[24] = v25;
    sub_24FE4D8B4();

    sub_24FE4D934();

    goto LABEL_26;
  }

  v26 = sub_24FE4D9D4();
  v27 = sub_24FE4DA44();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[27];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v79[0] = v30;
    *v29 = 136315394;
    v0[23] = v28;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v31 = sub_24FE4DA14();
    v33 = sub_24FE4C884(v31, v32, v79);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, v79);
    _os_log_impl(&dword_24FE48000, v26, v27, "%s - %s starting SAUIStartGenAIEnablementFlow", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v30, -1, -1);
    MEMORY[0x253058540](v29, -1, -1);
  }

  v35 = v0[40];
  v34 = v0[41];
  v36 = v0[39];
  v37 = v0[27];
  v38 = [objc_allocWithZone(MEMORY[0x277D47B30]) init];
  v0[43] = v38;
  v39 = v38;
  sub_24FE4D854();
  sub_24FE4D844();
  (*(v35 + 8))(v34, v36);
  v40 = sub_24FE4DA04();

  [v39 setAceId_];

  v41 = *(v37 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_isExplicitRequest);
  if (v41 != 2)
  {
    [v39 setExplicitRequest_];
  }

  v42 = v0[32];
  v43 = v0[33];
  v44 = v0[31];
  v45 = v0[27];
  v46 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source;
  swift_beginAccess();
  sub_24FE4CE4C(v45 + v46, v44);
  if ((*(v43 + 48))(v44, 1, v42) == 1)
  {
    sub_24FE4CF4C(v0[31], &qword_27F3A3F48, &qword_24FE4E0B8);
  }

  else
  {
    v58 = v0[34];
    v57 = v0[35];
    v59 = v0[32];
    v60 = v0[33];
    (*(v60 + 32))(v57, v0[31], v59);
    (*(v60 + 16))(v58, v57, v59);
    v61 = (*(v60 + 88))(v58, v59);
    if (v61 == *MEMORY[0x277D0D7C8])
    {
      v62 = v0[35];
      v63 = v0[32];
      v64 = v0[33];
      v65 = sub_24FE4DA04();
      [v39 setSource_];

      (*(v64 + 8))(v62, v63);
    }

    else
    {
      v66 = (v0[33] + 8);
      v67 = v0[35];
      if (v61 == *MEMORY[0x277D0D7B8])
      {
        v68 = v0[32];
        v69 = sub_24FE4DA04();
        [v39 setSource_];

        (*v66)(v67, v68);
      }

      else
      {
        v70 = v0[34];
        v71 = v0[32];
        v72 = sub_24FE4DA04();
        [v39 setSource_];

        v73 = *v66;
        (*v66)(v67, v71);
        v73(v70, v71);
      }
    }
  }

  sub_24FE4D914();
  v74 = v0[5];
  v75 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v74);
  v76 = swift_task_alloc();
  v0[44] = v76;
  v77 = sub_24FE4CF00();
  *v76 = v0;
  v76[1] = sub_24FE4B570;

  return MEMORY[0x2821BB6A0](v39, v74, v77, v75);
}

uint64_t sub_24FE4B570(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_24FE4BA54;
  }

  else
  {
    v4 = sub_24FE4B684;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24FE4B684()
{
  v28 = v0;
  v1 = v0[45];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v2 = v1;
  v3 = sub_24FE4D9D4();
  v4 = sub_24FE4DA44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v26 = v0[43];
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v7 = 136315650;
    v0[22] = v6;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v10 = sub_24FE4DA14();
    v12 = sub_24FE4C884(v10, v11, &v27);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, &v27);
    *(v7 + 22) = 2112;
    *(v7 + 24) = v5;
    *v8 = v5;
    v13 = v5;
    _os_log_impl(&dword_24FE48000, v3, v4, "%s - %s completed SAUIStartGenAIEnablementFlow %@", v7, 0x20u);
    sub_24FE4CF4C(v8, &qword_27F3A3F58, &qword_24FE4E0D0);
    MEMORY[0x253058540](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x253058540](v9, -1, -1);
    MEMORY[0x253058540](v7, -1, -1);
  }

  else
  {
    v14 = v0[45];
    v15 = v0[43];
  }

  v16 = sub_24FE4D9D4();
  v17 = sub_24FE4DA44();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[27];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315394;
    v0[20] = v18;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v21 = sub_24FE4DA14();
    v23 = sub_24FE4C884(v21, v22, &v27);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, &v27);
    _os_log_impl(&dword_24FE48000, v16, v17, "%s - %s returning complete", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v20, -1, -1);
    MEMORY[0x253058540](v19, -1, -1);
  }

  sub_24FE4D954();

  v24 = v0[1];

  return v24();
}

uint64_t sub_24FE4BA54()
{
  v27 = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = sub_24FE4D9D4();
  v2 = sub_24FE4DA44();

  if (os_log_type_enabled(v1, v2))
  {
    v25 = *(v0 + 368);
    v3 = *(v0 + 216);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315394;
    *(v0 + 168) = v3;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v6 = sub_24FE4DA14();
    v8 = sub_24FE4C884(v6, v7, &v26);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, &v26);
    _os_log_impl(&dword_24FE48000, v1, v2, "%s - %s setting exit value to false", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v5, -1, -1);
    MEMORY[0x253058540](v4, -1, -1);
    v9 = v25;
  }

  else
  {
    v9 = *(v0 + 368);
  }

  MEMORY[0x253058480](v9);

  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  *v10 = 0;
  (*(v11 + 104))(v10, *MEMORY[0x277D5BC38], v12);
  v14 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  (*(v11 + 40))(v13 + v14, v10, v12);
  swift_endAccess();

  v15 = sub_24FE4D9D4();
  v16 = sub_24FE4DA44();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 216);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315394;
    *(v0 + 160) = v17;
    type metadata accessor for GenerativeAssistantEnablementFlow(0);

    v20 = sub_24FE4DA14();
    v22 = sub_24FE4C884(v20, v21, &v26);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_24FE4C884(0x2865747563657865, 0xE900000000000029, &v26);
    _os_log_impl(&dword_24FE48000, v15, v16, "%s - %s returning complete", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253058540](v19, -1, -1);
    MEMORY[0x253058540](v18, -1, -1);
  }

  sub_24FE4D954();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_24FE4BE20(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GenerativeAssistantEnablementFlow(0);
  sub_24FE4D024(&unk_27F3A3F78, type metadata accessor for GenerativeAssistantEnablementFlow, &protocol conformance descriptor for GenerativeAssistantEnablementFlow);
  return sub_24FE4D8E4();
}

uint64_t sub_24FE4BEB0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24FE4D864();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FE4BF70, 0, 0);
}

uint64_t sub_24FE4BF70()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_24FE4D854();
  sub_24FE4D844();
  (*(v2 + 8))(v1, v4);
  v6 = sub_24FE4DA04();

  [v5 setAceId_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F68, qword_24FE4E0E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24FE4E0A0;
  *(v7 + 32) = v5;
  v8 = sub_24FE4D9B4();
  v9 = MEMORY[0x277D5C1D8];
  v3[3] = v8;
  v3[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_24FE4D9A4();

  v10 = v0[1];

  return v10();
}

uint64_t GenerativeAssistantEnablementFlow.deinit()
{
  sub_24FE4CF4C(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source, &qword_27F3A3F48, &qword_24FE4E0B8);
  v1 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GenerativeAssistantEnablementFlow.__deallocating_deinit()
{
  sub_24FE4CF4C(v0 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_source, &qword_27F3A3F48, &qword_24FE4E0B8);
  v1 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_24FE4C25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24FE4C30C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_24FE4C30C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24FE4C468(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24FE4C504;

  return sub_24FE4A75C(a1);
}

uint64_t sub_24FE4C504()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24FE4C5F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_exitValue;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F40, &qword_24FE4E0B0);
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_24FE4C694()
{
  v1 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow21CloseOnCancelStrategy_authenticationPolicy;
  v2 = sub_24FE4D974();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_24FE4C740@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow21CloseOnCancelStrategy_authenticationPolicy;
  v5 = sub_24FE4D974();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24FE4C7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24FE4C504;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

unint64_t sub_24FE4C884(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24FE4C950(v11, 0, 0, 1, a1, a2);
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
    sub_24FE4D780(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_24FE4C950(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24FE4CA5C(a5, a6);
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
    result = sub_24FE4DA74();
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

void *sub_24FE4CA5C(uint64_t a1, unint64_t a2)
{
  v3 = sub_24FE4CAA8(a1, a2);
  sub_24FE4CBD8(&unk_2862816D8);
  return v3;
}

void *sub_24FE4CAA8(uint64_t a1, unint64_t a2)
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

  v6 = sub_24FE4CCC4(v5, 0);
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

  result = sub_24FE4DA74();
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
        v10 = sub_24FE4DA34();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24FE4CCC4(v10, 0);
        result = sub_24FE4DA64();
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

uint64_t sub_24FE4CBD8(uint64_t result)
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

  result = sub_24FE4CD38(result, v11, 1, v3);
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

void *sub_24FE4CCC4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3FF8, &qword_24FE4E2D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24FE4CD38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3FF8, &qword_24FE4E2D0);
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

uint64_t sub_24FE4CE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A3F48, &qword_24FE4E0B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24FE4CF00()
{
  result = qword_27F3A3F50;
  if (!qword_27F3A3F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3A3F50);
  }

  return result;
}

uint64_t sub_24FE4CF4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24FE4CFCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *sub_24FE4D004(_BYTE *result)
{
  if (*result)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  *(v1 + OBJC_IVAR____TtC33GenerativeAssistantEnablementFlow33GenerativeAssistantEnablementFlow_flowState) = v2;
  return result;
}

uint64_t sub_24FE4D024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24FE4D074(uint64_t a1)
{
  sub_24FE4D36C(319);
  if (v1 <= 0x3F)
  {
    sub_24FE4D3C4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of GenerativeAssistantEnablementFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24FE4C504;

  return v6(a1);
}

void sub_24FE4D36C(uint64_t a1)
{
  if (!qword_27F3A3F88)
  {
    sub_24FE4D9C4();
    v1 = sub_24FE4DA54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A3F88);
    }
  }
}

void sub_24FE4D3C4()
{
  if (!qword_27F3A3F90)
  {
    v0 = sub_24FE4D924();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A3F90);
    }
  }
}

uint64_t sub_24FE4D41C(uint64_t a1)
{
  result = sub_24FE4D974();
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

uint64_t getEnumTagSinglePayload for FlowState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24FE4D630()
{
  result = qword_27F3A44B0[0];
  if (!qword_27F3A44B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F3A44B0);
  }

  return result;
}

unint64_t sub_24FE4D684(uint64_t a1, uint64_t a2)
{
  v2 = sub_24FE4DA84();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_24FE4D780(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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