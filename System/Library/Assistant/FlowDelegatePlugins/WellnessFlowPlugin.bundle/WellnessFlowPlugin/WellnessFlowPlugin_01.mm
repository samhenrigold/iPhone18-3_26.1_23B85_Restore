uint64_t sub_1B0AC()
{
  v1 = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionsExitValue;
  sub_16C71C();
  sub_1BA5C();
  (*(v2 + 8))(v0 + v1);

  sub_2D64((v0 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_flowConfig));
  sub_C938(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_provider);
  swift_unknownObjectRelease();
  sub_1B918(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionInput, &qword_1C6250, &qword_1715A8);
  return v0;
}

uint64_t sub_1B174()
{
  sub_1B0AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MedsLoggingCorrectionsFlow(uint64_t a1)
{
  result = qword_1C60D8;
  if (!qword_1C60D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B220(uint64_t a1)
{
  sub_16C71C();
  if (v1 <= 0x3F)
  {
    sub_1B334(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B334(uint64_t a1)
{
  if (!qword_1C60E8)
  {
    sub_16C7DC();
    v1 = sub_16E3EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C60E8);
    }
  }
}

uint64_t getEnumTagSinglePayload for MedsLoggingCorrectionsFlow.State(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MedsLoggingCorrectionsFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1B4E0);
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

_BYTE *storeEnumTagSinglePayload for MedsLoggingCorrectionsFlow.CorrectionsTask(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1B5B4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B5F0()
{
  result = qword_1C6230;
  if (!qword_1C6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6230);
  }

  return result;
}

unint64_t sub_1B648()
{
  result = qword_1C6238;
  if (!qword_1C6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6238);
  }

  return result;
}

uint64_t sub_1B69C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionsExitValue;
  swift_beginAccess();
  v5 = sub_16C71C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1B784()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_19C5C();
}

uint64_t sub_1B820(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MedsLoggingCorrectionsFlow(0);

  return sub_16C37C();
}

uint64_t sub_1B8D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B918(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2440(a2, a3);
  sub_1BA5C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B96C()
{
}

uint64_t sub_1B9B4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_1B9D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_1BA00()
{
}

BOOL sub_1BA1C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1BA38()
{

  return swift_slowAlloc();
}

void sub_1BA70(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_1BAA0(uint64_t a1, uint64_t a2)
{
  sub_1C45C();

  return sub_16C33C();
}

uint64_t sub_1BAF4()
{
  sub_8A88();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_16DBEC();
  v1[7] = v3;
  sub_888C(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v5 = sub_16C46C();
  v1[10] = v5;
  sub_888C(v5);
  v1[11] = v6;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[14] = v7;
  sub_888C(v7);
  v1[15] = v8;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1BC5C);
}

uint64_t sub_1BC5C()
{
  sub_8A88();
  sub_2D20((*(v0 + 48) + 40), *(*(v0 + 48) + 64));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1BCFC;

  return sub_7A690(0);
}

uint64_t sub_1BCFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;

  if (v1)
  {

    v7 = sub_1BFD4;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_1BE20;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_1BE20()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v12 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[6];
  sub_16C45C();
  (*(v5 + 16))(v6, v4, v7);
  sub_16C75C();
  (*(v5 + 8))(v4, v7);
  v9 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_2D20(v8, v8[3]);
  sub_16C2FC();
  sub_16C4FC();

  (*(v3 + 8))(v2, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1BFD4(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_16DBDC();
  v7 = sub_16E37C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&def_259DC, v6, v7, "Failed to execute appRestricted pattern", v8, 2u);
  }

  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[7];

  (*(v10 + 8))(v9, v11);
  sub_16C50C();

  v12 = v1[1];

  return v12();
}

uint64_t sub_1C138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C1E8;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_1C1E8()
{
  sub_8A88();
  v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1C2DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C374;

  return sub_1BAF4();
}

uint64_t sub_1C374()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1C45C()
{
  result = qword_1C6258;
  if (!qword_1C6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6258);
  }

  return result;
}

uint64_t sub_1C4B0(void *__src, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  memcpy((v7 + 16), __src, 0xA0uLL);
  sub_17464(a2, v7 + 176);
  sub_17464(a3, v7 + 216);
  *(v7 + 256) = a4;
  *(v7 + 264) = a5;
  *(v7 + 272) = a6;
  *(v7 + 280) = a7;
  return v7;
}

uint64_t sub_1C538()
{
  v0 = sub_16DBEC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_16DBBC();
  sub_8B48(v4, v10);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1BA38();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "In MedNameDisambiguationStrategy's actionForInput().", v7, 2u);
    sub_8A2C(v7);
  }

  (*(v1 + 8))(v3, v0);
  return sub_16C47C();
}

uint64_t sub_1C69C()
{
  sub_8A88();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  sub_2440(&qword_1C5800, &unk_16F510);
  v1[18] = sub_8BC0();
  v1[19] = type metadata accessor for WellnessDisambiguateMedNameParameters(0);
  v1[20] = sub_8BC0();
  v4 = sub_16C46C();
  v1[21] = v4;
  sub_888C(v4);
  v1[22] = v5;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v6 = sub_16C7BC();
  v1[25] = v6;
  sub_888C(v6);
  v1[26] = v7;
  v1[27] = sub_8BC0();
  v8 = sub_16DBEC();
  v1[28] = v8;
  sub_888C(v8);
  v1[29] = v9;
  v1[30] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_1C84C(uint64_t a1)
{
  v3 = v1[29];
  v2 = v1[30];
  v4 = v1[28];
  v5 = sub_16DBBC();
  sub_8B48(v5, (v1 + 12));
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_16DBDC();
  v7 = sub_16E36C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_1BA38();
    *v8 = 0;
    _os_log_impl(&def_259DC, v6, v7, "MedNameDisambiguationStrategy: makePromptForDisambiguation", v8, 2u);
    sub_8A2C(v8);
  }

  v10 = v1[29];
  v9 = v1[30];
  v11 = v1[28];
  v12 = v1[23];
  v13 = v1[24];
  v15 = v1[21];
  v14 = v1[22];
  v16 = v1[20];
  v26 = v1[19];
  v27 = v1[18];
  v25 = v1[17];

  (*(v10 + 8))(v9, v11);
  sub_16C44C();
  (*(v14 + 16))(v12, v13, v15);
  sub_16C75C();
  (*(v14 + 8))(v13, v15);
  sub_16C79C();
  sub_8388(v25 + 56, (v1 + 2));
  sub_2D20(v1 + 2, v1[5]);
  sub_2440(&qword_1C63E8, &unk_1717E0);
  v17 = sub_16C74C();
  v1[31] = v17;
  LOBYTE(v14) = *(v25 + 280);
  v18 = v26[12];
  v19 = sub_16D5CC();

  sub_214C(v16 + v18, 1, 1, v19);
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v16 + 9) = 65792;
  *(v16 + 16) = v17;
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  *(v16 + 40) = 0;
  *(v16 + 48) = 1;
  *(v16 + v26[13]) = v14;
  v20 = v16 + v26[14];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v16 + v26[15];
  *v21 = 0;
  *(v21 + 8) = 1;

  sub_16E23C();

  sub_214C(v27, 0, 1, v19);
  sub_8640(v27, v16 + v18);
  *(v16 + 40) = *(v25 + 272);
  *(v16 + 48) = 0;
  v22 = sub_79FFC();
  v1[32] = v22;
  v28 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v23 = swift_task_alloc();
  v1[33] = v23;
  *v23 = v1;
  v23[1] = sub_1CBB0;

  return v28(0xD00000000000001CLL, 0x800000000017AE40, v22);
}

uint64_t sub_1CBB0()
{
  sub_8A88();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  *(v5 + 272) = v4;
  *(v5 + 280) = v0;

  sub_8ACC();

  return _swift_task_switch(v6);
}

uint64_t sub_1CCD4()
{
  v1 = v0[34];
  v2 = v0[17];
  sub_1E148(v0[20]);

  sub_2D64(v0 + 2);
  v3 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v2 + 176, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  sub_2D20(v0 + 7, v4);
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_1CE14;
  v7 = v0[34];
  v8 = v0[27];
  v9 = v0[15];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v9, v7, v8, v4, v5);
}

uint64_t sub_1CE14()
{
  sub_8A88();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  *(v4 + 296) = v0;

  sub_8ACC();

  return _swift_task_switch(v5);
}

uint64_t sub_1CF18()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  sub_1E148(v0[20]);

  (*(v2 + 8))(v1, v3);
  sub_2D64(v0 + 2);
  sub_1E1C4();

  sub_C9BC();

  return v4();
}

uint64_t sub_1CFF4()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 56));

  sub_C9BC();

  return v4();
}

uint64_t sub_1D0D4()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 56));
  sub_1E1C4();

  sub_C9BC();

  return v4();
}

uint64_t sub_1D198()
{
  sub_8A88();
  v0[83] = v1;
  v0[82] = v2;
  v3 = sub_16C7FC();
  v0[84] = v3;
  sub_888C(v3);
  v0[85] = v4;
  v0[86] = sub_8BC0();
  v5 = sub_16C80C();
  v0[87] = v5;
  sub_888C(v5);
  v0[88] = v6;
  v0[89] = swift_task_alloc();
  v0[90] = swift_task_alloc();
  v7 = sub_16DBEC();
  v0[91] = v7;
  sub_888C(v7);
  v0[92] = v8;
  v0[93] = swift_task_alloc();
  v0[94] = swift_task_alloc();
  v0[95] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v9);
}

uint64_t sub_1D310(uint64_t a1)
{
  v2 = *(v1 + 760);
  v3 = *(v1 + 736);
  v4 = *(v1 + 728);
  v5 = sub_16DBBC();
  sub_8B48(v5, v1 + 528);
  v71 = v5;
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_16DBDC();
  v7 = sub_16E36C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_1BA38();
    *v8 = 0;
    _os_log_impl(&def_259DC, v6, v7, "MedNameDisambiguationStrategy: parseDisambiguationResponse", v8, 2u);
    sub_8A2C(v8);
  }

  v9 = *(v1 + 760);
  v10 = *(v1 + 736);
  v11 = *(v1 + 728);
  v12 = *(v1 + 720);
  v13 = *(v1 + 712);
  v14 = *(v1 + 704);
  v15 = *(v1 + 696);

  v16 = *(v10 + 8);
  v16(v9, v11);
  sub_16C7CC();
  (*(v14 + 16))(v13, v12, v15);
  v76 = v16;
  if ((*(v14 + 88))(v13, v15) == enum case for Parse.directInvocation(_:))
  {
    v17 = *(v1 + 712);
    v18 = *(v1 + 688);
    v19 = *(v1 + 680);
    v20 = *(v1 + 672);
    (*(*(v1 + 704) + 96))(v17, *(v1 + 696));
    (*(v19 + 32))(v18, v17, v20);
    v21 = sub_16C7EC();
    if (v21)
    {
      sub_17400(v21, (v1 + 400), 0x656C756465686373, 0xEA00000000004449);

      if (*(v1 + 424))
      {
        v22 = swift_dynamicCast();
        if (v22)
        {
          v23 = *(v1 + 632);
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v24 = *(v1 + 640);
        }

        else
        {
          v24 = 0;
        }

LABEL_17:
        v39 = sub_16C7EC();
        if (v39)
        {
          sub_17400(v39, (v1 + 432), 0x697461636964656DLL, 0xEC00000044496E6FLL);

          if (*(v1 + 456))
          {
            if (swift_dynamicCast())
            {
              v74 = *(v1 + 608);
              v77 = *(v1 + 600);
              v40 = sub_16C7EC();
              if (v40)
              {
                sub_17400(v40, (v1 + 464), 0x6874676E65727473, 0xE800000000000000);

                if (*(v1 + 488))
                {
                  v41 = swift_dynamicCast();
                  v42 = *(v1 + 648);
                  if (!v41)
                  {
                    v42 = 0;
                  }

                  v72 = v42;
                  v43 = v41 ^ 1;
LABEL_37:
                  v59 = sub_16C7EC();
                  if (v59)
                  {
                    sub_17400(v59, (v1 + 496), 0x6874676E65727473, 0xEC00000074696E55);

                    if (*(v1 + 520))
                    {
                      v60 = swift_dynamicCast();
                      v61 = *(v1 + 616);
                      v62 = *(v1 + 624);
                      if (!v60)
                      {
                        v61 = 0;
                        v62 = 0;
                      }

                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    *(v1 + 496) = 0u;
                    *(v1 + 512) = 0u;
                  }

                  sub_C878(v1 + 496, &qword_1C63E0, &unk_1717D0);
                  v61 = 0;
                  v62 = 0;
LABEL_43:
                  v70 = *(v1 + 720);
                  v63 = *(v1 + 704);
                  v64 = *(v1 + 696);
                  v65 = *(v1 + 688);
                  v66 = *(v1 + 680);
                  v67 = *(v1 + 672);
                  *(v1 + 336) = v23;
                  *(v1 + 344) = v24;
                  *(v1 + 352) = v77;
                  *(v1 + 360) = v74;
                  *(v1 + 368) = v72;
                  *(v1 + 376) = v43;
                  *(v1 + 384) = v61;
                  *(v1 + 392) = v62;
                  sub_2440(&qword_1C63D8, &qword_1717C8);
                  sub_16C72C();
                  v68 = *(v1 + 352);
                  *(v1 + 272) = *(v1 + 336);
                  *(v1 + 288) = v68;
                  v69 = *(v1 + 384);
                  *(v1 + 304) = *(v1 + 368);
                  *(v1 + 320) = v69;
                  sub_C878(v1 + 272, &qword_1C63D8, &qword_1717C8);
                  (*(v66 + 8))(v65, v67);
                  (*(v63 + 8))(v70, v64);
                  goto LABEL_32;
                }
              }

              else
              {
                *(v1 + 464) = 0u;
                *(v1 + 480) = 0u;
              }

              sub_C878(v1 + 464, &qword_1C63E0, &unk_1717D0);
              v72 = 0;
              v43 = 1;
              goto LABEL_37;
            }

            goto LABEL_29;
          }
        }

        else
        {

          *(v1 + 432) = 0u;
          *(v1 + 448) = 0u;
        }

        sub_C878(v1 + 432, &qword_1C63E0, &unk_1717D0);
LABEL_29:
        sub_8B48(v71, v1 + 576);
        v44 = sub_1E1AC();
        v45(v44);
        v46 = sub_16DBDC();
        v47 = sub_16E36C();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = sub_1BA38();
          *v48 = 0;
          _os_log_impl(&def_259DC, v46, v47, "error in parseDisambiguationResponse for medication name; could not unpack directInvocation.", v48, 2u);
          sub_8A2C(v48);
        }

        v49 = *(v1 + 752);
        v50 = *(v1 + 728);
        v51 = *(v1 + 704);
        v73 = *(v1 + 696);
        v75 = *(v1 + 720);
        v52 = *(v1 + 688);
        v53 = *(v1 + 680);
        v54 = *(v1 + 672);

        v16(v49, v50);
        *(v1 + 208) = 0;
        *(v1 + 216) = 0;
        *(v1 + 224) = 0;
        *(v1 + 232) = 0xE000000000000000;
        *(v1 + 240) = 0;
        *(v1 + 248) = 1;
        *(v1 + 256) = 0;
        *(v1 + 264) = 0;
        sub_2440(&qword_1C63D8, &qword_1717C8);
        sub_16C72C();
        v55 = *(v1 + 224);
        *(v1 + 144) = *(v1 + 208);
        *(v1 + 160) = v55;
        v56 = *(v1 + 256);
        *(v1 + 176) = *(v1 + 240);
        *(v1 + 192) = v56;
        sub_C878(v1 + 144, &qword_1C63D8, &qword_1717C8);
        (*(v53 + 8))(v52, v54);
        (*(v51 + 8))(v75, v73);
        goto LABEL_32;
      }
    }

    else
    {
      *(v1 + 400) = 0u;
      *(v1 + 416) = 0u;
    }

    sub_C878(v1 + 400, &qword_1C63E0, &unk_1717D0);
    v23 = 0;
    v24 = 0;
    goto LABEL_17;
  }

  sub_8B48(v71, v1 + 552);
  v25 = sub_1E1AC();
  v26(v25);
  v27 = sub_16DBDC();
  v28 = sub_16E36C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = sub_1BA38();
    *v29 = 0;
    _os_log_impl(&def_259DC, v27, v28, "error in parsing disambiguation response for medication name.", v29, 2u);
    sub_8A2C(v29);
  }

  v30 = *(v1 + 744);
  v31 = *(v1 + 728);
  v32 = *(v1 + 720);
  v33 = *(v1 + 712);
  v34 = *(v1 + 704);
  v35 = *(v1 + 696);

  v76(v30, v31);
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  sub_2440(&qword_1C63D8, &qword_1717C8);
  sub_16C72C();
  v36 = *(v1 + 96);
  *(v1 + 16) = *(v1 + 80);
  *(v1 + 32) = v36;
  v37 = *(v1 + 128);
  *(v1 + 48) = *(v1 + 112);
  *(v1 + 64) = v37;
  sub_C878(v1 + 16, &qword_1C63D8, &qword_1717C8);
  v38 = *(v34 + 8);
  v38(v32, v35);
  v38(v33, v35);
LABEL_32:

  sub_C9BC();

  return v57();
}

void *sub_1DB58()
{
  sub_C938(v0 + 16);
  sub_2D64((v0 + 176));
  sub_2D64((v0 + 216));

  return v0;
}

uint64_t sub_1DB90()
{
  sub_1DB58();

  return _swift_deallocClassInstance(v0, 281, 7);
}

uint64_t sub_1DC18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E1A4;

  return sub_1D198();
}

uint64_t sub_1DCB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E1A4;

  return sub_1C69C();
}

uint64_t sub_1DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for MedNameDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_1E1A4;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t sub_1DE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for MedNameDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_1E1A4;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t sub_1DEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF9C;

  return PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t sub_1DF9C()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  sub_C9BC();

  return v3();
}

uint64_t sub_1E080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E1A4;

  return PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, a3, a4);
}

uint64_t sub_1E148(uint64_t a1)
{
  v2 = type metadata accessor for WellnessDisambiguateMedNameParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1C4()
{
}

uint64_t type metadata accessor for HeightQueryModel(uint64_t a1)
{
  result = qword_1C64A0;
  if (!qword_1C64A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeightQueryModel.isDifferenceNegligible.setter(char a1)
{
  result = type metadata accessor for HeightQueryModel(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_1E634(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_43AC(a1, a2, a3, a4);
  sub_8B38();
  v5 = sub_8B9C();
  v6(v5);
  return v4;
}

uint64_t HeightQueryModel.minHeightSymbolic.getter()
{
  type metadata accessor for HeightQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t HeightQueryModel.minHeightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(sub_20640() + 44));

  *v5 = v3;
  v5[1] = a2;
  return result;
}

uint64_t HeightQueryModel.maxHeightSymbolic.getter()
{
  type metadata accessor for HeightQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t HeightQueryModel.maxHeightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(sub_20640() + 48));

  *v5 = v3;
  v5[1] = a2;
  return result;
}

uint64_t HeightQueryModel.heightSymbolic.getter()
{
  type metadata accessor for HeightQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t HeightQueryModel.heightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(sub_20640() + 52));

  *v5 = v3;
  v5[1] = a2;
  return result;
}

uint64_t sub_1E8C0(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  v6 = sub_16BE9C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_4304();
  v12 = v11 - v10;
  sub_86B0(a1, v5, &qword_1C57F8, &unk_172510);
  sub_206AC(v5);
  if (v13)
  {
    sub_8748(v5, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v8 + 32))(v12, v5, v6);
    v14 = sub_16BE5C();
    sub_2068C(v14, v15);
    return (*(v8 + 8))(v12, v6);
  }
}

uint64_t sub_1EA54(uint64_t a1, char a2, uint64_t a3)
{
  v27[1] = a1;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  v6 = sub_4348(v5);
  v7 = __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v27 - v11;
  __chkstk_darwin(v10);
  v14 = v27 - v13;
  v15 = sub_16D5CC();
  sub_42F0();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_4304();
  v21 = v20 - v19;
  v22 = 0;
  if ((a2 & 1) == 0)
  {
    sub_86B0(a3, v14, &qword_1C5800, &unk_16F510);
    sub_206AC(v14);
    if (v24)
    {
      v23 = v14;
    }

    else
    {
      (*(v17 + 32))(v21, v14, v15);
      sub_16D2DC();
      swift_allocObject();
      sub_16D2CC();
      sub_16D40C();

      (*(v17 + 16))(v12, v21, v15);
      sub_214C(v12, 0, 1, v15);
      sub_16D3FC();

      sub_8748(v12, &qword_1C5800, &unk_16F510);
      sub_16D3EC();

      sub_16D2EC();
      sub_206AC(v9);
      if (!v24)
      {
        v22 = sub_16D5BC();

        v25 = *(v17 + 8);
        v25(v21, v15);
        v25(v9, v15);
        return v22;
      }

      (*(v17 + 8))(v21, v15);

      v23 = v9;
    }

    sub_8748(v23, &qword_1C5800, &unk_16F510);
    return 0;
  }

  return v22;
}

uint64_t sub_1ED58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x686769654878616DLL && a2 == 0xE900000000000074;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x68676965486E696DLL && a2 == 0xE900000000000074;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x800000000017AE60 == a2;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x800000000017AE80 == a2;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x800000000017AEA0 == a2;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x800000000017AEC0 == a2;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x7953746867696568 && a2 == 0xEE0063696C6F626DLL)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_16E6BC();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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
}

uint64_t sub_1F07C(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      result = 0x746867696568;
      break;
    case 2:
      v3 = 1215848813;
      goto LABEL_7;
    case 3:
      v3 = 1215195501;
LABEL_7:
      result = v3 | 0x6867696500000000;
      break;
    case 4:
      result = 0x6562614C65746164;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x7953746867696568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1F1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ED58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1F208@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1F074();
  *a1 = result;
  return result;
}

uint64_t sub_1F230(uint64_t a1)
{
  v2 = sub_1F5EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1F26C(uint64_t a1)
{
  v2 = sub_1F5EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HeightQueryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C6400, &qword_171808);
  sub_42F0();
  v7 = v6;
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v19[-v9];
  sub_2D20(a1, a1[3]);
  sub_1F5EC();
  sub_16E77C();
  v19[15] = 0;
  sub_16C11C();
  sub_20594();
  sub_1FDF4(v11, v12, &protocol conformance descriptor for AppPunchout);
  sub_205DC();
  sub_16E63C();
  if (!v2)
  {
    Model = type metadata accessor for HeightQueryModel(0);
    sub_2061C(v3 + Model[5]);
    v19[14] = 1;
    sub_20584();
    sub_16E62C();
    sub_2061C(v3 + Model[6]);
    v19[13] = 2;
    sub_20584();
    sub_16E62C();
    sub_2061C(v3 + Model[7]);
    v19[12] = 3;
    sub_20584();
    sub_16E62C();
    v19[11] = 4;
    sub_16D5CC();
    sub_205C4();
    sub_1FDF4(v14, v15, &protocol conformance descriptor for SpeakableString);
    sub_205DC();
    sub_16E63C();
    v19[10] = 5;
    sub_205DC();
    sub_16E65C();
    v19[9] = 6;
    type metadata accessor for SnippetHeaderModel(0);
    sub_205AC();
    sub_1FDF4(v16, v17, &protocol conformance descriptor for SnippetHeaderModel);
    sub_205DC();
    sub_16E63C();
    v19[8] = 7;
    sub_20584();
    sub_16E61C();
    v19[7] = 8;
    sub_20584();
    sub_16E61C();
    v19[6] = 9;
    sub_20584();
    sub_16E61C();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1F5EC()
{
  result = qword_1C6408;
  if (!qword_1C6408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6408);
  }

  return result;
}

uint64_t HeightQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v3);
  sub_433C();
  __chkstk_darwin(v4);
  v67 = &v64 - v5;
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  sub_433C();
  __chkstk_darwin(v7);
  v9 = &v64 - v8;
  v10 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v10);
  sub_433C();
  __chkstk_darwin(v11);
  v68 = &v64 - v12;
  sub_2440(&qword_1C6428, &qword_171810);
  sub_42F0();
  v69 = v14;
  v70 = v13;
  sub_433C();
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  Model = type metadata accessor for HeightQueryModel(0);
  sub_8B38();
  __chkstk_darwin(v19);
  sub_4304();
  v22 = v21 - v20;
  v23 = sub_16C11C();
  sub_214C(v22, 1, 1, v23);
  v24 = *(Model + 32);
  v25 = sub_16D5CC();
  v75 = v24;
  sub_214C(v22 + v24, 1, 1, v25);
  v26 = *(Model + 40);
  v27 = type metadata accessor for SnippetHeaderModel(0);
  v74 = v26;
  v76 = v22;
  sub_214C(v22 + v26, 1, 1, v27);
  v28 = a1[3];
  v73 = a1;
  sub_2D20(a1, v28);
  sub_1F5EC();
  v71 = v17;
  v29 = v72;
  sub_16E76C();
  if (v29)
  {
    v31 = v74;
    v30 = v75;
    v38 = v76;
    sub_2D64(v73);
    sub_8748(v38, &qword_1C63F0, &unk_1717F0);
    sub_8748(v38 + v30, &qword_1C5800, &unk_16F510);
    sub_8748(v38 + v31, &dword_1C63F8, &qword_171800);
  }

  else
  {
    v64 = v25;
    v65 = v9;
    v72 = Model;
    v32 = v67;
    v86 = 0;
    sub_20594();
    sub_1FDF4(v33, v34, &protocol conformance descriptor for AppPunchout);
    v35 = v68;
    sub_16E5AC();
    v37 = v74;
    v36 = v75;
    v40 = v35;
    v41 = v76;
    sub_1E634(v40, v76, &qword_1C63F0, &unk_1717F0);
    v85 = 1;
    sub_20674();
    v42 = sub_16E59C();
    sub_20608(v42, v43, v72[5]);
    v84 = 2;
    sub_20674();
    v44 = sub_16E59C();
    sub_20608(v44, v45, v72[6]);
    v83 = 3;
    sub_20674();
    v46 = sub_16E59C();
    sub_20608(v46, v47, v72[7]);
    v82 = 4;
    sub_205C4();
    sub_1FDF4(v48, v49, &protocol conformance descriptor for SpeakableString);
    sub_20680();
    sub_16E5AC();
    sub_1E634(v65, v41 + v36, &qword_1C5800, &unk_16F510);
    v81 = 5;
    sub_20680();
    *(v41 + v72[9]) = sub_16E5CC() & 1;
    v80 = 6;
    sub_205AC();
    sub_1FDF4(v50, v51, &protocol conformance descriptor for SnippetHeaderModel);
    sub_20680();
    sub_16E5AC();
    sub_1E634(v32, v41 + v37, &dword_1C63F8, &qword_171800);
    v79 = 7;
    sub_20680();
    v52 = sub_16E58C();
    v53 = v72;
    v54 = (v41 + v72[11]);
    *v54 = v52;
    v54[1] = v55;
    v78 = 8;
    sub_20674();
    v56 = sub_16E58C();
    v57 = (v41 + v53[12]);
    *v57 = v56;
    v57[1] = v58;
    v77 = 9;
    v59 = sub_16E58C();
    v61 = v60;
    v62 = v76;
    v63 = (v76 + v72[13]);
    (*(v69 + 8))(v71, v70);
    *v63 = v59;
    v63[1] = v61;
    sub_1FCA4(v62, v66);
    sub_2D64(v73);
    return sub_1FD08(v62);
  }
}

uint64_t sub_1FCA4(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for HeightQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_1FD08(uint64_t a1)
{
  Model = type metadata accessor for HeightQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_1FDF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1FE80(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_369C(v9, a2, v8);
  }

  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[8];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_2440(&dword_1C63F8, &qword_171800);
  sub_436C();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[10];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_1FFF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_2440(&qword_1C5800, &unk_16F510);
    sub_436C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      sub_2440(&dword_1C63F8, &qword_171800);
      sub_436C();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[11] + 8) = a2;
        return;
      }

      v10 = v15;
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  sub_214C(v11, a2, a2, v10);
}

void sub_20144(uint64_t a1)
{
  sub_2029C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  if (v1 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_2029C(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
      if (v3 <= 0x3F)
      {
        sub_2029C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
        if (v4 <= 0x3F)
        {
          sub_3A10(319, &qword_1C64C8, &type metadata for String);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2029C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HeightQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HeightQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x20444);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_20480()
{
  result = qword_1C6518;
  if (!qword_1C6518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6518);
  }

  return result;
}

unint64_t sub_204D8()
{
  result = qword_1C6520;
  if (!qword_1C6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6520);
  }

  return result;
}

unint64_t sub_20530()
{
  result = qword_1C6528;
  if (!qword_1C6528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6528);
  }

  return result;
}

void sub_205E8(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t sub_20608@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_20628()
{

  return type metadata accessor for HeightQueryModel(0);
}

uint64_t sub_20640()
{

  return type metadata accessor for HeightQueryModel(0);
}

uint64_t sub_20658()
{
}

uint64_t sub_2068C(uint64_t a1, uint64_t a2)
{

  return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)(a1, a2, 0, 0xE000000000000000, 0, 0xE000000000000000);
}

uint64_t getEnumTagSinglePayload for HealthKitIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x34)
  {
    if (a2 + 204 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 204) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 205;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xCD;
  v5 = v6 - 205;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthKitIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 204 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 204) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x34)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x33)
  {
    v6 = ((a2 - 52) >> 8) + 1;
    *result = a2 - 52;
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
        JUMPOUT(0x20820);
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
          *result = a2 - 52;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2085C()
{
  result = qword_1C6530;
  if (!qword_1C6530)
  {
    sub_9790(&qword_1C6538, qword_171A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6530);
  }

  return result;
}

uint64_t sub_208C0(char a1)
{
  result = 0x73676E69524B48;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000027;
      break;
    case 2:
      sub_25AD4();
      result = v21 - 11;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    case 4:
    case 43:
    case 56:
    case 64:
    case 76:
    case 93:
    case 98:
    case 110:
    case -124:
    case -119:
    case -101:
    case -89:
    case -70:
      sub_25AD4();
      result = v32 - 1;
      break;
    case 5:
    case 27:
    case -102:
      sub_25AD4();
      result = v24 + 12;
      break;
    case 6:
    case 29:
    case 63:
    case 74:
    case 77:
    case 89:
    case 113:
    case -105:
    case -66:
      sub_25AD4();
      result = v22 + 3;
      break;
    case 7:
    case 23:
    case 47:
    case 51:
    case 67:
    case 72:
    case 102:
    case 119:
    case -99:
    case -87:
    case -77:
    case -71:
      sub_25AD4();
      result = v14 + 4;
      break;
    case 8:
    case 15:
    case 16:
    case 20:
    case 24:
    case 26:
    case 65:
    case 66:
    case 105:
    case -90:
      sub_25AD4();
      result = v29 - 7;
      break;
    case 9:
    case 30:
    case 48:
    case 62:
    case -69:
    case -59:
      sub_25AD4();
      result = v23 - 5;
      break;
    case 10:
    case 11:
    case 96:
    case 111:
      sub_25AD4();
      result = v30 + 5;
      break;
    case 12:
    case 45:
    case -94:
    case -67:
      sub_25AD4();
      result = v27 - 9;
      break;
    case 13:
    case 61:
    case 100:
    case 101:
    case 103:
    case 121:
    case -120:
    case -111:
    case -93:
    case -91:
    case -79:
    case -78:
    case -62:
    case -56:
    case -55:
      sub_25AD4();
      result = v20 - 3;
      break;
    case 14:
    case 40:
    case 42:
    case 60:
    case 73:
    case 84:
    case 91:
    case 106:
    case 108:
    case 115:
    case 122:
    case 123:
    case -128:
    case -121:
      sub_25AD4();
      result = v33 - 2;
      break;
    case 17:
    case 28:
    case 35:
    case 50:
    case 55:
    case -97:
    case -83:
    case -72:
    case -54:
      sub_25AD4();
      result = v31 - 6;
      break;
    case 19:
    case 99:
      sub_25AD4();
      result = v7 | 0x10;
      break;
    case 22:
    case 83:
      sub_25AD4();
      result = v28 - 10;
      break;
    case 25:
    case 59:
    case 79:
    case 82:
    case 125:
    case 126:
    case -125:
    case -116:
    case -107:
    case -86:
    case -81:
    case -74:
      sub_25AD4();
      result = v19 + 1;
      break;
    case 31:
    case 33:
    case 53:
    case 71:
    case 117:
    case 118:
    case -75:
      sub_25AD4();
      result = v26 + 10;
      break;
    case 32:
    case 52:
    case 94:
    case -127:
    case -106:
    case -98:
    case -85:
      sub_25AD4();
      result = v25 + 7;
      break;
    case 34:
    case 95:
    case -95:
    case -84:
    case -80:
      sub_25AD4();
      result = v15 + 9;
      break;
    case 36:
    case 37:
    case 41:
    case 44:
    case 46:
    case 124:
    case -110:
      sub_25AD4();
      result = v34 - 4;
      break;
    case 38:
    case 116:
    case -104:
      sub_25AD4();
      result = v17 + 6;
      break;
    case 39:
    case 57:
    case 70:
    case 90:
    case 97:
    case 104:
    case 127:
    case -126:
    case -123:
    case -117:
    case -73:
    case -61:
      sub_25AD4();
      result = v35 + 2;
      break;
    case 49:
      sub_25AD4();
      result = v4 + 17;
      break;
    case 54:
      sub_25AD4();
      result = v8 + 19;
      break;
    case 58:
      result = 0xD000000000000027;
      break;
    case 68:
      result = 0xD000000000000027;
      break;
    case 69:
      sub_25AD4();
      result = v5 + 18;
      break;
    case 75:
      result = 0xD000000000000027;
      break;
    case 78:
      result = 0xD000000000000027;
      break;
    case 80:
      result = 0xD000000000000027;
      break;
    case 81:
      result = 0xD000000000000027;
      break;
    case 85:
    case 87:
      sub_25AD4();
      result = v11 - 12;
      break;
    case 86:
    case -60:
    case -58:
      sub_25AD4();
      result = v13 - 16;
      break;
    case 88:
    case -64:
      sub_25AD4();
      result = v16 + 15;
      break;
    case 92:
      sub_25AD4();
      result = v12 + 14;
      break;
    case 107:
      result = 0xD000000000000027;
      break;
    case 109:
      result = 0xD000000000000027;
      break;
    case 112:
      result = 0xD000000000000027;
      break;
    case 114:
      result = 0xD000000000000027;
      break;
    case 120:
      result = 0xD000000000000027;
      break;
    case -122:
      result = 0xD000000000000027;
      break;
    case -118:
      result = 0xD000000000000027;
      break;
    case -115:
      result = 0xD000000000000027;
      break;
    case -114:
      result = 0xD000000000000027;
      break;
    case -113:
      result = 0xD000000000000027;
      break;
    case -112:
      result = 0xD000000000000027;
      break;
    case -109:
      result = 0xD000000000000027;
      break;
    case -108:
    case -103:
    case -96:
    case -88:
    case -76:
    case -65:
      sub_25AD4();
      result = v18 + 11;
      break;
    case -100:
    case -63:
      sub_25AD4();
      result = v6 | 8;
      break;
    case -92:
      result = 0xD000000000000027;
      break;
    case -82:
      result = 0xD000000000000027;
      break;
    case -68:
      result = 0xD000000000000027;
      break;
    case -57:
      return result;
    case -53:
      sub_25AD4();
      result = v9 + 23;
      break;
    case -52:
      sub_25AD4();
      result = v10 | 0x18;
      break;
    default:
      sub_25AD4();
      result = v3 - 8;
      break;
  }

  return result;
}

Swift::Int sub_219C8(char a1)
{
  sub_16E72C();
  sub_170FC(v3, a1);
  return sub_16E75C();
}

Swift::Int sub_21A28(uint64_t a1)
{
  v1 = a1;
  sub_16E72C();
  sub_140650(v1);
  sub_179C4(v2, v3, v4);

  return sub_16E75C();
}

Swift::Int sub_21A90(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_16E72C();
  v4 = a2(a1);
  sub_179C4(v4, v5, v6);

  return sub_16E75C();
}

uint64_t sub_21AE8(uint64_t a1, void *a2)
{
  sub_2440(&qword_1C6558, qword_178150);
  swift_allocObject();
  v4._rawValue = sub_61090();
  *v5 = "HKActivitySummaryTypeIdentifier";
  *(v5 + 8) = 31;
  *(v5 + 16) = 2;
  *(v5 + 24) = "HKCategoryTypeIdentifierAbdominalCramps";
  *(v5 + 32) = 39;
  *(v5 + 40) = 2;
  *(v5 + 48) = "HKCategoryTypeIdentifierAcne";
  *(v5 + 56) = 28;
  *(v5 + 64) = 2;
  *(v5 + 72) = "HKCategoryTypeIdentifierAppetiteChanges";
  *(v5 + 80) = 39;
  *(v5 + 88) = 2;
  *(v5 + 96) = "HKCategoryTypeIdentifierAppleStandHour";
  *(v5 + 104) = 38;
  *(v5 + 112) = 2;
  *(v5 + 120) = "HKCategoryTypeIdentifierAppleWalkingSteadinessEvent";
  *(v5 + 128) = 51;
  *(v5 + 136) = 2;
  *(v5 + 144) = "HKCategoryTypeIdentifierAudioExposureEvent";
  *(v5 + 152) = 42;
  *(v5 + 160) = 2;
  *(v5 + 168) = "HKCategoryTypeIdentifierBladderIncontinence";
  *(v5 + 176) = 43;
  *(v5 + 184) = 2;
  *(v5 + 192) = "HKCategoryTypeIdentifierBloating";
  *(v5 + 200) = 32;
  *(v5 + 208) = 2;
  *(v5 + 216) = "HKCategoryTypeIdentifierBreastPain";
  *(v5 + 224) = 34;
  *(v5 + 232) = 2;
  *(v5 + 240) = "HKCategoryTypeIdentifierCervicalMucusQuality";
  *(v5 + 248) = 44;
  *(v5 + 256) = 2;
  *(v5 + 264) = "HKCategoryTypeIdentifierChestTightnessOrPain";
  *(v5 + 272) = 44;
  *(v5 + 280) = 2;
  *(v5 + 288) = "HKCategoryTypeIdentifierChills";
  *(v5 + 296) = 30;
  *(v5 + 304) = 2;
  *(v5 + 312) = "HKCategoryTypeIdentifierConstipation";
  *(v5 + 320) = 36;
  *(v5 + 328) = 2;
  *(v5 + 336) = "HKCategoryTypeIdentifierContraceptive";
  *(v5 + 344) = 37;
  *(v5 + 352) = 2;
  *(v5 + 360) = "HKCategoryTypeIdentifierCoughing";
  *(v5 + 368) = 32;
  *(v5 + 376) = 2;
  *(v5 + 384) = "HKCategoryTypeIdentifierDiarrhea";
  *(v5 + 392) = 32;
  *(v5 + 400) = 2;
  *(v5 + 408) = "HKCategoryTypeIdentifierDizziness";
  *(v5 + 416) = 33;
  *(v5 + 424) = 2;
  *(v5 + 432) = "HKCategoryTypeIdentifierDrySkin";
  *(v5 + 440) = 31;
  *(v5 + 448) = 2;
  *(v5 + 456) = "HKCategoryTypeIdentifierEnvironmentalAudioExposureEvent";
  *(v5 + 464) = 55;
  *(v5 + 472) = 2;
  *(v5 + 480) = "HKCategoryTypeIdentifierFainting";
  *(v5 + 488) = 32;
  *(v5 + 496) = 2;
  *(v5 + 504) = "HKCategoryTypeIdentifierFatigue";
  *(v5 + 512) = 31;
  *(v5 + 520) = 2;
  *(v5 + 528) = "HKCategoryTypeIdentifierFever";
  *(v5 + 536) = 29;
  *(v5 + 544) = 2;
  *(v5 + 552) = "HKCategoryTypeIdentifierGeneralizedBodyAche";
  *(v5 + 560) = 43;
  *(v5 + 568) = 2;
  *(v5 + 576) = "HKCategoryTypeIdentifierHairLoss";
  *(v5 + 584) = 32;
  *(v5 + 592) = 2;
  *(v5 + 600) = "HKCategoryTypeIdentifierHandwashingEvent";
  *(v5 + 608) = 40;
  *(v5 + 616) = 2;
  *(v5 + 624) = "HKCategoryTypeIdentifierHeadache";
  *(v5 + 632) = 32;
  *(v5 + 640) = 2;
  *(v5 + 648) = "HKCategoryTypeIdentifierHeadphoneAudioExposureEvent";
  *(v5 + 656) = 51;
  *(v5 + 664) = 2;
  *(v5 + 672) = "HKCategoryTypeIdentifierHeartburn";
  *(v5 + 680) = 33;
  *(v5 + 688) = 2;
  *(v5 + 696) = "HKCategoryTypeIdentifierHighHeartRateEvent";
  *(v5 + 704) = 42;
  *(v5 + 712) = 2;
  *(v5 + 720) = "HKCategoryTypeIdentifierHotFlashes";
  *(v5 + 728) = 34;
  *(v5 + 736) = 2;
  *(v5 + 744) = "HKCategoryTypeIdentifierInfrequentMenstrualCycles";
  *(v5 + 752) = 49;
  *(v5 + 760) = 2;
  *(v5 + 768) = "HKCategoryTypeIdentifierIntermenstrualBleeding";
  *(v5 + 776) = 46;
  *(v5 + 784) = 2;
  *(v5 + 792) = "HKCategoryTypeIdentifierIrregularHeartRhythmEvent";
  *(v5 + 800) = 49;
  *(v5 + 808) = 2;
  *(v5 + 816) = "HKCategoryTypeIdentifierIrregularMenstrualCycles";
  *(v5 + 824) = 48;
  *(v5 + 832) = 2;
  *(v5 + 840) = "HKCategoryTypeIdentifierLactation";
  *(v5 + 848) = 33;
  *(v5 + 856) = 2;
  *(v5 + 864) = "HKCategoryTypeIdentifierLossOfSmell";
  *(v5 + 872) = 35;
  *(v5 + 880) = 2;
  *(v5 + 888) = "HKCategoryTypeIdentifierLossOfTaste";
  *(v5 + 896) = 35;
  *(v5 + 904) = 2;
  *(v5 + 912) = "HKCategoryTypeIdentifierLowCardioFitnessEvent";
  *(v5 + 920) = 45;
  *(v5 + 928) = 2;
  *(v5 + 936) = "HKCategoryTypeIdentifierLowHeartRateEvent";
  *(v5 + 944) = 41;
  *(v5 + 952) = 2;
  *(v5 + 960) = "HKCategoryTypeIdentifierLowerBackPain";
  *(v5 + 968) = 37;
  *(v5 + 976) = 2;
  *(v5 + 984) = "HKCategoryTypeIdentifierMemoryLapse";
  *(v5 + 992) = 35;
  *(v5 + 1000) = 2;
  *(v5 + 1008) = "HKCategoryTypeIdentifierMenstrualFlow";
  *(v5 + 1016) = 37;
  *(v5 + 1024) = 2;
  *(v5 + 1032) = "HKCategoryTypeIdentifierMindfulSession";
  *(v5 + 1040) = 38;
  *(v5 + 1048) = 2;
  *(v5 + 1056) = "HKCategoryTypeIdentifierMoodChanges";
  *(v5 + 1064) = 35;
  *(v5 + 1072) = 2;
  *(v5 + 1080) = "HKCategoryTypeIdentifierNausea";
  *(v5 + 1088) = 30;
  *(v5 + 1096) = 2;
  *(v5 + 1104) = "HKCategoryTypeIdentifierNightSweats";
  *(v5 + 1112) = 35;
  *(v5 + 1120) = 2;
  *(v5 + 1128) = "HKCategoryTypeIdentifierOvulationTestResult";
  *(v5 + 1136) = 43;
  *(v5 + 1144) = 2;
  *(v5 + 1152) = "HKCategoryTypeIdentifierPelvicPain";
  *(v5 + 1160) = 34;
  *(v5 + 1168) = 2;
  *(v5 + 1176) = "HKCategoryTypeIdentifierPersistentIntermenstrualBleeding";
  *(v5 + 1184) = 56;
  *(v5 + 1192) = 2;
  *(v5 + 1200) = "HKCategoryTypeIdentifierPregnancy";
  *(v5 + 1208) = 33;
  *(v5 + 1216) = 2;
  *(v5 + 1224) = "HKCategoryTypeIdentifierPregnancyTestResult";
  *(v5 + 1232) = 43;
  *(v5 + 1240) = 2;
  *(v5 + 1248) = "HKCategoryTypeIdentifierProgesteroneTestResult";
  *(v5 + 1256) = 46;
  *(v5 + 1264) = 2;
  *(v5 + 1272) = "HKCategoryTypeIdentifierProlongedMenstrualPeriods";
  *(v5 + 1280) = 49;
  *(v5 + 1288) = 2;
  *(v5 + 1296) = "HKCategoryTypeIdentifierRapidPoundingOrFlutteringHeartbeat";
  *(v5 + 1304) = 58;
  *(v5 + 1312) = 2;
  *(v5 + 1320) = "HKCategoryTypeIdentifierRunnyNose";
  *(v5 + 1328) = 33;
  *(v5 + 1336) = 2;
  *(v5 + 1344) = "HKCategoryTypeIdentifierSexualActivity";
  *(v5 + 1352) = 38;
  *(v5 + 1360) = 2;
  *(v5 + 1368) = "HKCategoryTypeIdentifierShortnessOfBreath";
  *(v5 + 1376) = 41;
  *(v5 + 1384) = 2;
  *(v5 + 1392) = "HKCategoryTypeIdentifierSinusCongestion";
  *(v5 + 1400) = 39;
  *(v5 + 1408) = 2;
  *(v5 + 1416) = "HKCategoryTypeIdentifierSkippedHeartbeat";
  *(v5 + 1424) = 40;
  *(v5 + 1432) = 2;
  *(v5 + 1440) = "HKCategoryTypeIdentifierSleepAnalysis";
  *(v5 + 1448) = 37;
  *(v5 + 1456) = 2;
  *(v5 + 1464) = "HKCategoryTypeIdentifierSleepChanges";
  *(v5 + 1472) = 36;
  *(v5 + 1480) = 2;
  *(v5 + 1488) = "HKCategoryTypeIdentifierSoreThroat";
  *(v5 + 1496) = 34;
  *(v5 + 1504) = 2;
  *(v5 + 1512) = "HKCategoryTypeIdentifierToothbrushingEvent";
  *(v5 + 1520) = 42;
  *(v5 + 1528) = 2;
  *(v5 + 1536) = "HKCategoryTypeIdentifierVaginalDryness";
  *(v5 + 1544) = 38;
  *(v5 + 1552) = 2;
  *(v5 + 1560) = "HKCategoryTypeIdentifierVomiting";
  *(v5 + 1568) = 32;
  *(v5 + 1576) = 2;
  *(v5 + 1584) = "HKCategoryTypeIdentifierWheezing";
  *(v5 + 1592) = 32;
  *(v5 + 1600) = 2;
  *(v5 + 1608) = "HKCharacteristicTypeIdentifierBiologicalSex";
  *(v5 + 1616) = 43;
  *(v5 + 1624) = 2;
  *(v5 + 1632) = "HKCharacteristicTypeIdentifierBloodType";
  *(v5 + 1640) = 39;
  *(v5 + 1648) = 2;
  *(v5 + 1656) = "HKCharacteristicTypeIdentifierCardioFitnessMedicationsUse";
  *(v5 + 1664) = 57;
  *(v5 + 1672) = 2;
  *(v5 + 1680) = "HKCharacteristicTypeIdentifierDateOfBirth";
  *(v5 + 1688) = 41;
  *(v5 + 1696) = 2;
  *(v5 + 1704) = "HKCharacteristicTypeIdentifierFitzpatrickSkinType";
  *(v5 + 1712) = 49;
  *(v5 + 1720) = 2;
  *(v5 + 1728) = "HKCharacteristicTypeIdentifierWheelchairUse";
  *(v5 + 1736) = 43;
  *(v5 + 1744) = 2;
  *(v5 + 1752) = "HKClinicalTypeIdentifierAllergyRecord";
  *(v5 + 1760) = 37;
  *(v5 + 1768) = 2;
  *(v5 + 1776) = "HKClinicalTypeIdentifierClinicalNoteRecord";
  *(v5 + 1784) = 42;
  *(v5 + 1792) = 2;
  *(v5 + 1800) = "HKClinicalTypeIdentifierConditionRecord";
  *(v5 + 1808) = 39;
  *(v5 + 1816) = 2;
  *(v5 + 1824) = "HKClinicalTypeIdentifierCoverageRecord";
  *(v5 + 1832) = 38;
  *(v5 + 1840) = 2;
  *(v5 + 1848) = "HKClinicalTypeIdentifierImmunizationRecord";
  *(v5 + 1856) = 42;
  *(v5 + 1864) = 2;
  *(v5 + 1872) = "HKClinicalTypeIdentifierLabResultRecord";
  *(v5 + 1880) = 39;
  *(v5 + 1888) = 2;
  *(v5 + 1896) = "HKClinicalTypeIdentifierMedicationRecord";
  *(v5 + 1920) = "HKClinicalTypeIdentifierProcedureRecord";
  *(v5 + 1944) = "HKClinicalTypeIdentifierVitalSignRecord";
  *(v5 + 1968) = "HKCorrelationTypeIdentifierBloodPressure";
  *(v5 + 2304) = "HKQuantityTypeIdentifierBasalBodyTemperature";
  *(v5 + 2328) = "HKQuantityTypeIdentifierBasalEnergyBurned";
  *(v5 + 2376) = "HKQuantityTypeIdentifierCyclingFunctionalThresholdPower";
  *(v5 + 2400) = "HKQuantityTypeIdentifierCyclingPower";
  *(v5 + 2496) = "HKQuantityTypeIdentifierBodyFatPercentage";
  *(v5 + 2592) = "HKQuantityTypeIdentifierDietaryBiotin";
  *(v5 + 2688) = "HKQuantityTypeIdentifierDietaryChloride";
  *(v5 + 2784) = "HKQuantityTypeIdentifierDietaryEnergyConsumed";
  *(v5 + 2856) = "HKQuantityTypeIdentifierDietaryFatSaturated";
  *(v5 + 2848) = 2;
  *(v5 + 2832) = "HKQuantityTypeIdentifierDietaryFatPolyunsaturated";
  *(v5 + 2816) = 49;
  *(v5 + 2824) = 2;
  *(v5 + 2840) = 49;
  *(v5 + 1904) = 40;
  *(v5 + 2808) = "HKQuantityTypeIdentifierDietaryFatMonounsaturated";
  *(v5 + 2792) = 45;
  *(v5 + 2800) = 2;
  *(v5 + 2760) = "HKQuantityTypeIdentifierDietaryCopper";
  *(v5 + 2752) = 2;
  *(v5 + 2768) = 37;
  *(v5 + 2776) = 2;
  *(v5 + 2736) = "HKQuantityTypeIdentifierDietaryChromium";
  *(v5 + 2720) = 42;
  *(v5 + 2728) = 2;
  *(v5 + 2744) = 39;
  *(v5 + 1912) = 2;
  *(v5 + 2712) = "HKQuantityTypeIdentifierDietaryCholesterol";
  *(v5 + 2696) = 39;
  *(v5 + 2704) = 2;
  *(v5 + 2664) = "HKQuantityTypeIdentifierDietaryCarbohydrates";
  *(v5 + 2656) = 2;
  *(v5 + 2672) = 44;
  *(v5 + 2680) = 2;
  *(v5 + 2640) = "HKQuantityTypeIdentifierDietaryCalcium";
  *(v5 + 2624) = 39;
  *(v5 + 2632) = 2;
  *(v5 + 2648) = 38;
  *(v5 + 1928) = 39;
  *(v5 + 2616) = "HKQuantityTypeIdentifierDietaryCaffeine";
  *(v5 + 2600) = 37;
  *(v5 + 2608) = 2;
  *(v5 + 2568) = "HKQuantityTypeIdentifierBodyTemperature";
  *(v5 + 2560) = 2;
  *(v5 + 2576) = 39;
  *(v5 + 2584) = 2;
  *(v5 + 2544) = "HKQuantityTypeIdentifierBodyMassIndex";
  *(v5 + 2528) = 32;
  *(v5 + 2536) = 2;
  *(v5 + 2552) = 37;
  *(v5 + 1936) = 2;
  *(v5 + 2520) = "HKQuantityTypeIdentifierBodyMass";
  *(v5 + 2504) = 41;
  *(v5 + 2512) = 2;
  *(v5 + 2472) = "HKQuantityTypeIdentifierBloodGlucose";
  *(v5 + 2464) = 2;
  *(v5 + 2480) = 36;
  *(v5 + 2488) = 2;
  *(v5 + 2448) = "HKQuantityTypeIdentifierBloodAlcoholContent";
  *(v5 + 2432) = 36;
  *(v5 + 2440) = 2;
  *(v5 + 2456) = 43;
  *(v5 + 2424) = "HKQuantityTypeIdentifierCyclingSpeed";
  *(v5 + 2392) = 2;
  *(v5 + 2408) = 36;
  *(v5 + 2416) = 2;
  *(v5 + 1952) = 39;
  *(v5 + 2384) = 55;
  *(v5 + 2360) = 38;
  *(v5 + 2368) = 2;
  *(v5 + 2352) = "HKQuantityTypeIdentifierCyclingCadence";
  *(v5 + 2320) = 2;
  *(v5 + 2336) = 41;
  *(v5 + 2344) = 2;
  *(v5 + 1960) = 2;
  *(v5 + 2312) = 44;
  *(v5 + 2288) = 48;
  *(v5 + 2296) = 2;
  *(v5 + 1976) = 40;
  *(v5 + 2280) = "HKQuantityTypeIdentifierAtrialFibrillationBurden";
  *(v5 + 2264) = 46;
  *(v5 + 2272) = 2;
  *(v5 + 2208) = "HKQuantityTypeIdentifierAppleSleepingWristTemperature";
  *(v5 + 2240) = 38;
  *(v5 + 2248) = 2;
  *(v5 + 2256) = "HKQuantityTypeIdentifierAppleWalkingSteadiness";
  *(v5 + 2216) = 53;
  *(v5 + 2224) = 2;
  *(v5 + 2232) = "HKQuantityTypeIdentifierAppleStandTime";
  *(v5 + 2176) = 2;
  *(v5 + 2184) = "HKQuantityTypeIdentifierAppleMoveTime";
  *(v5 + 2192) = 37;
  *(v5 + 2200) = 2;
  *(v5 + 1984) = 2;
  *(v5 + 2152) = 2;
  *(v5 + 2160) = "HKQuantityTypeIdentifierAppleExerciseTime";
  *(v5 + 2168) = 41;
  *(v5 + 1992) = "HKDataTypeIdentifierAudiogram";
  *(v5 + 2128) = 2;
  *(v5 + 2136) = "HKQuantityTypeIdentifierActiveEnergyBurned";
  *(v5 + 2144) = 42;
  *(v5 + 2104) = 2;
  *(v5 + 2112) = "HKMedicationDoseEventTypeIdentifierMedicationDoseEvent";
  *(v5 + 2120) = 54;
  *(v5 + 2088) = "HKDocumentTypeIdentifierCDA";
  *(v5 + 2072) = 23;
  *(v5 + 2080) = 2;
  *(v5 + 2096) = 27;
  *(v5 + 2000) = 29;
  *(v5 + 2048) = 27;
  *(v5 + 2056) = 2;
  *(v5 + 2064) = "HKDataTypeSleepSchedule";
  *(v5 + 2016) = "HKDataTypeIdentifierElectrocardiogram";
  *(v5 + 2024) = 37;
  *(v5 + 2032) = 2;
  *(v5 + 2040) = "HKDataTypeSleepDurationGoal";
  *(v5 + 2008) = 2;
  *(v5 + 2864) = 43;
  *(v5 + 2872) = 2;
  *(v5 + 2880) = "HKQuantityTypeIdentifierDietaryFatTotal";
  *(v5 + 2888) = 39;
  *(v5 + 2896) = 2;
  *(v5 + 2904) = "HKQuantityTypeIdentifierDietaryFiber";
  *(v5 + 2912) = 36;
  *(v5 + 2920) = 2;
  *(v5 + 2928) = "HKQuantityTypeIdentifierDietaryFolate";
  *(v5 + 2936) = 37;
  *(v5 + 2944) = 2;
  *(v5 + 2952) = "HKQuantityTypeIdentifierDietaryIodine";
  *(v5 + 2960) = 37;
  *(v5 + 2968) = 2;
  *(v5 + 2976) = "HKQuantityTypeIdentifierDietaryIron";
  *(v5 + 2984) = 35;
  *(v5 + 2992) = 2;
  *(v5 + 3000) = "HKQuantityTypeIdentifierDietaryMagnesium";
  *(v5 + 3008) = 40;
  *(v5 + 3016) = 2;
  *(v5 + 3024) = "HKQuantityTypeIdentifierDietaryManganese";
  *(v5 + 3032) = 40;
  *(v5 + 3040) = 2;
  *(v5 + 3048) = "HKQuantityTypeIdentifierDietaryMolybdenum";
  *(v5 + 3056) = 41;
  *(v5 + 3064) = 2;
  *(v5 + 3072) = "HKQuantityTypeIdentifierDietaryNiacin";
  *(v5 + 3080) = 37;
  *(v5 + 3088) = 2;
  *(v5 + 3096) = "HKQuantityTypeIdentifierDietaryPantothenicAcid";
  *(v5 + 3104) = 46;
  *(v5 + 3112) = 2;
  *(v5 + 3120) = "HKQuantityTypeIdentifierDietaryPhosphorus";
  *(v5 + 3128) = 41;
  *(v5 + 3136) = 2;
  *(v5 + 3144) = "HKQuantityTypeIdentifierDietaryPotassium";
  *(v5 + 3152) = 40;
  *(v5 + 3160) = 2;
  *(v5 + 3168) = "HKQuantityTypeIdentifierDietaryProtein";
  *(v5 + 3176) = 38;
  *(v5 + 3184) = 2;
  *(v5 + 3192) = "HKQuantityTypeIdentifierDietaryRiboflavin";
  *(v5 + 3200) = 41;
  *(v5 + 3208) = 2;
  *(v5 + 3216) = "HKQuantityTypeIdentifierDietarySelenium";
  *(v5 + 3224) = 39;
  *(v5 + 3232) = 2;
  *(v5 + 3240) = "HKQuantityTypeIdentifierDietarySodium";
  *(v5 + 3248) = 37;
  *(v5 + 3256) = 2;
  *(v5 + 3264) = "HKQuantityTypeIdentifierDietarySugar";
  *(v5 + 3272) = 36;
  *(v5 + 3280) = 2;
  *(v5 + 3288) = "HKQuantityTypeIdentifierDietaryThiamin";
  *(v5 + 3296) = 38;
  *(v5 + 3304) = 2;
  *(v5 + 3312) = "HKQuantityTypeIdentifierDietaryVitaminA";
  *(v5 + 3320) = 39;
  *(v5 + 3328) = 2;
  *(v5 + 3336) = "HKQuantityTypeIdentifierDietaryVitaminB12";
  *(v5 + 3344) = 41;
  *(v5 + 3352) = 2;
  *(v5 + 3360) = "HKQuantityTypeIdentifierDietaryVitaminB6";
  *(v5 + 3368) = 40;
  *(v5 + 3376) = 2;
  *(v5 + 3384) = "HKQuantityTypeIdentifierDietaryVitaminC";
  *(v5 + 3392) = 39;
  *(v5 + 3400) = 2;
  *(v5 + 3408) = "HKQuantityTypeIdentifierDietaryVitaminD";
  *(v5 + 3416) = 39;
  *(v5 + 3424) = 2;
  *(v5 + 3432) = "HKQuantityTypeIdentifierDietaryVitaminE";
  *(v5 + 3440) = 39;
  *(v5 + 3448) = 2;
  *(v5 + 3456) = "HKQuantityTypeIdentifierDietaryVitaminK";
  *(v5 + 3464) = 39;
  *(v5 + 3472) = 2;
  *(v5 + 3480) = "HKQuantityTypeIdentifierDietaryWater";
  *(v5 + 3488) = 36;
  *(v5 + 3496) = 2;
  *(v5 + 3504) = "HKQuantityTypeIdentifierDietaryZinc";
  *(v5 + 3512) = 35;
  *(v5 + 3520) = 2;
  *(v5 + 3528) = "HKQuantityTypeIdentifierDistanceCycling";
  *(v5 + 3536) = 39;
  *(v5 + 3544) = 2;
  *(v5 + 3552) = "HKQuantityTypeIdentifierDistanceDownhillSnowSports";
  *(v5 + 3560) = 50;
  *(v5 + 3568) = 2;
  *(v5 + 3576) = "HKQuantityTypeIdentifierDistanceSwimming";
  *(v5 + 3584) = 40;
  *(v5 + 3592) = 2;
  *(v5 + 3600) = "HKQuantityTypeIdentifierDistanceWalkingRunning";
  *(v5 + 3608) = 46;
  *(v5 + 3616) = 2;
  *(v5 + 3624) = "HKQuantityTypeIdentifierDistanceWheelchair";
  *(v5 + 3632) = 42;
  *(v5 + 3640) = 2;
  *(v5 + 3648) = "HKQuantityTypeIdentifierElectrodermalActivity";
  *(v5 + 3656) = 45;
  *(v5 + 3664) = 2;
  *(v5 + 3672) = "HKQuantityTypeIdentifierEnvironmentalAudioExposure";
  *(v5 + 3680) = 50;
  *(v5 + 3688) = 2;
  *(v5 + 3696) = "HKQuantityTypeIdentifierEnvironmentalSoundReduction";
  *(v5 + 3704) = 51;
  *(v5 + 3712) = 2;
  *(v5 + 3720) = "HKQuantityTypeIdentifierFlightsClimbed";
  *(v5 + 3728) = 38;
  *(v5 + 3736) = 2;
  *(v5 + 3744) = "HKQuantityTypeIdentifierForcedExpiratoryVolume1";
  *(v5 + 3752) = 47;
  *(v5 + 3760) = 2;
  *(v5 + 3768) = "HKQuantityTypeIdentifierForcedVitalCapacity";
  *(v5 + 3776) = 43;
  *(v5 + 3784) = 2;
  *(v5 + 3792) = "HKQuantityTypeIdentifierHeadphoneAudioExposure";
  *(v5 + 3800) = 46;
  *(v5 + 3808) = 2;
  *(v5 + 3816) = "HKQuantityTypeIdentifierHeartRate";
  *(v5 + 3824) = 33;
  *(v5 + 3832) = 2;
  *(v5 + 3840) = "HKQuantityTypeIdentifierHeartRateRecoveryOneMinute";
  *(v5 + 3848) = 50;
  *(v5 + 3856) = 2;
  *(v5 + 3864) = "HKQuantityTypeIdentifierHeartRateVariabilitySDNN";
  *(v5 + 3872) = 48;
  *(v5 + 3880) = 2;
  *(v5 + 3888) = "HKQuantityTypeIdentifierHeight";
  *(v5 + 3896) = 30;
  *(v5 + 3904) = 2;
  *(v5 + 3912) = "HKQuantityTypeIdentifierInhalerUsage";
  *(v5 + 3920) = 36;
  *(v5 + 3928) = 2;
  *(v5 + 3936) = "HKQuantityTypeIdentifierInsulinDelivery";
  *(v5 + 3944) = 39;
  *(v5 + 3952) = 2;
  *(v5 + 3960) = "HKQuantityTypeIdentifierLeanBodyMass";
  *(v5 + 3968) = 36;
  *(v5 + 3976) = 2;
  *(v5 + 3984) = "HKQuantityTypeIdentifierNikeFuel";
  *(v5 + 3992) = 32;
  *(v5 + 4000) = 2;
  *(v5 + 4008) = "HKQuantityTypeIdentifierPhysicalEffort";
  *(v5 + 4016) = 38;
  *(v5 + 4024) = 2;
  *(v5 + 4032) = "HKQuantityTypeIdentifierNumberOfAlcoholicBeverages";
  *(v5 + 4040) = 50;
  *(v5 + 4048) = 2;
  *(v5 + 4056) = "HKQuantityTypeIdentifierNumberOfTimesFallen";
  *(v5 + 4064) = 43;
  *(v5 + 4072) = 2;
  *(v5 + 4080) = "HKQuantityTypeIdentifierOxygenSaturation";
  *(v5 + 4088) = 40;
  *(v5 + 4096) = 2;
  *(v5 + 4104) = "HKQuantityTypeIdentifierPeakExpiratoryFlowRate";
  *(v5 + 4112) = 46;
  *(v5 + 4120) = 2;
  *(v5 + 4128) = "HKQuantityTypeIdentifierPeripheralPerfusionIndex";
  *(v5 + 4136) = 48;
  *(v5 + 4144) = 2;
  *(v5 + 4152) = "HKQuantityTypeIdentifierPushCount";
  *(v5 + 4160) = 33;
  *(v5 + 4168) = 2;
  *(v5 + 4176) = "HKQuantityTypeIdentifierRespiratoryRate";
  *(v5 + 4184) = 39;
  *(v5 + 4192) = 2;
  *(v5 + 4200) = "HKQuantityTypeIdentifierRestingHeartRate";
  *(v5 + 4208) = 40;
  *(v5 + 4216) = 2;
  *(v5 + 4224) = "HKQuantityTypeIdentifierRunningGroundContactTime";
  *(v5 + 4232) = 48;
  *(v5 + 4240) = 2;
  *(v5 + 4248) = "HKQuantityTypeIdentifierRunningPower";
  *(v5 + 4256) = 36;
  *(v5 + 4264) = 2;
  *(v5 + 4272) = "HKQuantityTypeIdentifierRunningSpeed";
  *(v5 + 4280) = 36;
  *(v5 + 4288) = 2;
  *(v5 + 4296) = "HKQuantityTypeIdentifierRunningStrideLength";
  *(v5 + 4304) = 43;
  *(v5 + 4312) = 2;
  *(v5 + 4320) = "HKQuantityTypeIdentifierRunningVerticalOscillation";
  *(v5 + 4328) = 50;
  *(v5 + 4336) = 2;
  *(v5 + 4344) = "HKQuantityTypeIdentifierSixMinuteWalkTestDistance";
  *(v5 + 4352) = 49;
  *(v5 + 4360) = 2;
  *(v5 + 4368) = "HKQuantityTypeIdentifierStairAscentSpeed";
  *(v5 + 4376) = 40;
  *(v5 + 4384) = 2;
  *(v5 + 4392) = "HKQuantityTypeIdentifierStairDescentSpeed";
  *(v5 + 4400) = 41;
  *(v5 + 4408) = 2;
  *(v5 + 4416) = "HKQuantityTypeIdentifierStepCount";
  *(v5 + 4424) = 33;
  *(v5 + 4432) = 2;
  *(v5 + 4440) = "HKQuantityTypeIdentifierSwimmingStrokeCount";
  *(v5 + 4448) = 43;
  *(v5 + 4456) = 2;
  *(v5 + 4464) = "HKQuantityTypeIdentifierTimeInDaylight";
  *(v5 + 4472) = 38;
  *(v5 + 4480) = 2;
  *(v5 + 4488) = "HKQuantityTypeIdentifierUVExposure";
  *(v5 + 4496) = 34;
  *(v5 + 4504) = 2;
  *(v5 + 4512) = "HKQuantityTypeIdentifierUnderwaterDepth";
  *(v5 + 4520) = 39;
  *(v5 + 4528) = 2;
  *(v5 + 4536) = "HKQuantityTypeIdentifierVO2Max";
  *(v5 + 4544) = 30;
  *(v5 + 4552) = 2;
  *(v5 + 4560) = "HKQuantityTypeIdentifierWaistCircumference";
  *(v5 + 4568) = 42;
  *(v5 + 4576) = 2;
  *(v5 + 4584) = "HKQuantityTypeIdentifierWalkingAsymmetryPercentage";
  *(v5 + 4592) = 50;
  *(v5 + 4600) = 2;
  *(v5 + 4608) = "HKQuantityTypeIdentifierWalkingDoubleSupportPercentage";
  *(v5 + 4616) = 54;
  *(v5 + 4624) = 2;
  *(v5 + 4632) = "HKQuantityTypeIdentifierWalkingHeartRateAverage";
  *(v5 + 4640) = 47;
  *(v5 + 4648) = 2;
  *(v5 + 4656) = "HKQuantityTypeIdentifierWalkingSpeed";
  *(v5 + 4664) = 36;
  *(v5 + 4672) = 2;
  *(v5 + 4680) = "HKQuantityTypeIdentifierWalkingStepLength";
  *(v5 + 4688) = 41;
  *(v5 + 4696) = 2;
  *(v5 + 4704) = "HKSampleTypeStateOfMind";
  *(v5 + 4712) = 23;
  *(v5 + 4720) = 2;
  *(v5 + 4728) = "HKVisionPrescriptionTypeIdentifier";
  *(v5 + 4736) = 34;
  *(v5 + 4744) = 2;
  *(v5 + 4752) = "HKWorkoutTypeIdentifier";
  *(v5 + 4760) = 23;
  *(v5 + 4768) = 2;
  *(v5 + 4776) = "HKRings";
  *(v5 + 4784) = 7;
  *(v5 + 4792) = 2;
  *(v5 + 4800) = "HKScoredAssessmentTypeIdentifierGAD7";
  *(v5 + 4808) = 36;
  *(v5 + 4816) = 2;
  *(v5 + 4824) = "HKScoredAssessmentTypeIdentifierPHQ9";
  *(v5 + 4832) = 36;
  *(v5 + 4840) = 2;
  *(v5 + 4848) = "HKCategoryValueSleepAnalysisInBed";
  *(v5 + 4856) = 33;
  *(v5 + 4864) = 2;
  *(v5 + 4872) = "_HKCharacteristicTypeIdentifierUserEnteredMenstrualCycleLength";
  *(v5 + 4880) = 62;
  *(v5 + 4888) = 2;
  *(v5 + 4896) = "_HKCharacteristicTypeIdentifierUserEnteredMenstrualPeriodLength";
  *(v5 + 4904) = 63;
  *(v5 + 4912) = 2;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  v6 = sub_16E55C(v4, v9);

  v7 = 0;
  result = 112;
  switch(v6)
  {
    case 0:
      goto LABEL_130;
    case 1:
      v7 = 1;
      goto LABEL_130;
    case 2:
      v7 = 2;
      goto LABEL_130;
    case 3:
      v7 = 3;
      goto LABEL_130;
    case 4:
      v7 = 4;
      goto LABEL_130;
    case 5:
      v7 = 5;
      goto LABEL_130;
    case 6:
      v7 = 6;
      goto LABEL_130;
    case 7:
      v7 = 7;
      goto LABEL_130;
    case 8:
      v7 = 8;
      goto LABEL_130;
    case 9:
      v7 = 9;
      goto LABEL_130;
    case 10:
      v7 = 10;
      goto LABEL_130;
    case 11:
      v7 = 11;
      goto LABEL_130;
    case 12:
      v7 = 12;
      goto LABEL_130;
    case 13:
      v7 = 13;
      goto LABEL_130;
    case 14:
      v7 = 14;
      goto LABEL_130;
    case 15:
      v7 = 15;
      goto LABEL_130;
    case 16:
      v7 = 16;
      goto LABEL_130;
    case 17:
      v7 = 17;
      goto LABEL_130;
    case 18:
      v7 = 18;
      goto LABEL_130;
    case 19:
      v7 = 19;
      goto LABEL_130;
    case 20:
      v7 = 20;
      goto LABEL_130;
    case 21:
      v7 = 21;
      goto LABEL_130;
    case 22:
      v7 = 22;
      goto LABEL_130;
    case 23:
      v7 = 23;
      goto LABEL_130;
    case 24:
      v7 = 24;
      goto LABEL_130;
    case 25:
      v7 = 25;
      goto LABEL_130;
    case 26:
      v7 = 26;
      goto LABEL_130;
    case 27:
      v7 = 27;
      goto LABEL_130;
    case 28:
      v7 = 28;
      goto LABEL_130;
    case 29:
      v7 = 29;
      goto LABEL_130;
    case 30:
      v7 = 30;
      goto LABEL_130;
    case 31:
      v7 = 31;
      goto LABEL_130;
    case 32:
      v7 = 32;
      goto LABEL_130;
    case 33:
      v7 = 33;
      goto LABEL_130;
    case 34:
      v7 = 34;
      goto LABEL_130;
    case 35:
      v7 = 35;
      goto LABEL_130;
    case 36:
      v7 = 36;
      goto LABEL_130;
    case 37:
      v7 = 37;
      goto LABEL_130;
    case 38:
      v7 = 38;
      goto LABEL_130;
    case 39:
      v7 = 39;
      goto LABEL_130;
    case 40:
      v7 = 40;
      goto LABEL_130;
    case 41:
      v7 = 41;
      goto LABEL_130;
    case 42:
      v7 = 42;
      goto LABEL_130;
    case 43:
      v7 = 43;
      goto LABEL_130;
    case 44:
      v7 = 44;
      goto LABEL_130;
    case 45:
      v7 = 45;
      goto LABEL_130;
    case 46:
      v7 = 46;
      goto LABEL_130;
    case 47:
      v7 = 47;
      goto LABEL_130;
    case 48:
      v7 = 48;
      goto LABEL_130;
    case 49:
      v7 = 49;
      goto LABEL_130;
    case 50:
      v7 = 50;
      goto LABEL_130;
    case 51:
      v7 = 51;
      goto LABEL_130;
    case 52:
      v7 = 52;
      goto LABEL_130;
    case 53:
      v7 = 53;
      goto LABEL_130;
    case 54:
      v7 = 54;
      goto LABEL_130;
    case 55:
      v7 = 55;
      goto LABEL_130;
    case 56:
      v7 = 56;
      goto LABEL_130;
    case 57:
      v7 = 57;
      goto LABEL_130;
    case 58:
      v7 = 58;
      goto LABEL_130;
    case 59:
      v7 = 59;
      goto LABEL_130;
    case 60:
      v7 = 60;
      goto LABEL_130;
    case 61:
      v7 = 61;
      goto LABEL_130;
    case 62:
      v7 = 62;
      goto LABEL_130;
    case 63:
      v7 = 63;
      goto LABEL_130;
    case 64:
      v7 = 64;
      goto LABEL_130;
    case 65:
      v7 = 65;
      goto LABEL_130;
    case 66:
      v7 = 66;
      goto LABEL_130;
    case 67:
      v7 = 67;
      goto LABEL_130;
    case 68:
      v7 = 68;
      goto LABEL_130;
    case 69:
      v7 = 69;
      goto LABEL_130;
    case 70:
      v7 = 70;
      goto LABEL_130;
    case 71:
      v7 = 71;
      goto LABEL_130;
    case 72:
      v7 = 72;
      goto LABEL_130;
    case 73:
      v7 = 73;
      goto LABEL_130;
    case 74:
      v7 = 74;
      goto LABEL_130;
    case 75:
      v7 = 75;
      goto LABEL_130;
    case 76:
      v7 = 76;
      goto LABEL_130;
    case 77:
      v7 = 77;
      goto LABEL_130;
    case 78:
      v7 = 78;
      goto LABEL_130;
    case 79:
      v7 = 79;
      goto LABEL_130;
    case 80:
      v7 = 80;
      goto LABEL_130;
    case 81:
      v7 = 81;
      goto LABEL_130;
    case 82:
      v7 = 82;
      goto LABEL_130;
    case 83:
      v7 = 83;
      goto LABEL_130;
    case 84:
      v7 = 84;
      goto LABEL_130;
    case 85:
      v7 = 85;
      goto LABEL_130;
    case 86:
      v7 = 86;
      goto LABEL_130;
    case 87:
      v7 = 87;
      goto LABEL_130;
    case 88:
      v7 = 88;
      goto LABEL_130;
    case 89:
      v7 = 89;
      goto LABEL_130;
    case 90:
      v7 = 90;
      goto LABEL_130;
    case 91:
      v7 = 91;
      goto LABEL_130;
    case 92:
      v7 = 92;
      goto LABEL_130;
    case 93:
      v7 = 93;
      goto LABEL_130;
    case 94:
      v7 = 94;
      goto LABEL_130;
    case 95:
      v7 = 95;
      goto LABEL_130;
    case 96:
      v7 = 96;
      goto LABEL_130;
    case 97:
      v7 = 97;
      goto LABEL_130;
    case 98:
      v7 = 98;
      goto LABEL_130;
    case 99:
      v7 = 99;
      goto LABEL_130;
    case 100:
      v7 = 100;
      goto LABEL_130;
    case 101:
      v7 = 101;
      goto LABEL_130;
    case 102:
      v7 = 102;
      goto LABEL_130;
    case 103:
      v7 = 103;
      goto LABEL_130;
    case 104:
      v7 = 104;
      goto LABEL_130;
    case 105:
      v7 = 105;
      goto LABEL_130;
    case 106:
      v7 = 106;
      goto LABEL_130;
    case 107:
      v7 = 107;
      goto LABEL_130;
    case 108:
      v7 = 108;
      goto LABEL_130;
    case 109:
      v7 = 109;
      goto LABEL_130;
    case 110:
      v7 = 110;
      goto LABEL_130;
    case 111:
      v7 = 111;
LABEL_130:
      result = v7;
      break;
    case 112:
      return result;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v6 & 0xFFFFFFFFFFFFFFC0) == 0x80)
      {
        result = v6;
      }

      else if ((v6 - 192) >= 0xD)
      {
        result = 4294967245;
      }

      else
      {
        result = v6;
      }

      break;
  }

  return result;
}

uint64_t sub_23260@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21AE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_208C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_232D0()
{
  result = qword_1C6540;
  if (!qword_1C6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6540);
  }

  return result;
}

Class sub_23324(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAbdominalCramps];
      return v3;
    case 2:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAcne];
      return v3;
    case 3:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAppetiteChanges];
      return v3;
    case 4:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAppleStandHour];
      return v3;
    case 5:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAppleWalkingSteadinessEvent];
      return v3;
    case 6:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAudioExposureEvent];
      return v3;
    case 7:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierBladderIncontinence];
      return v3;
    case 8:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierBloating];
      return v3;
    case 9:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierBreastPain];
      return v3;
    case 10:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierCervicalMucusQuality];
      return v3;
    case 11:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierChestTightnessOrPain];
      return v3;
    case 12:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierChills];
      return v3;
    case 13:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierConstipation];
      return v3;
    case 14:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierContraceptive];
      return v3;
    case 15:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierCoughing];
      return v3;
    case 16:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierDiarrhea];
      return v3;
    case 17:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierDizziness];
      return v3;
    case 18:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierDrySkin];
      return v3;
    case 19:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierEnvironmentalAudioExposureEvent];
      return v3;
    case 20:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierFainting];
      return v3;
    case 21:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierFatigue];
      return v3;
    case 22:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierFever];
      return v3;
    case 23:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierGeneralizedBodyAche];
      return v3;
    case 24:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHairLoss];
      return v3;
    case 25:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHandwashingEvent];
      return v3;
    case 26:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHeadache];
      return v3;
    case 27:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHeadphoneAudioExposureEvent];
      return v3;
    case 28:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHeartburn];
      return v3;
    case 29:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHighHeartRateEvent];
      return v3;
    case 30:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHotFlashes];
      return v3;
    case 31:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierInfrequentMenstrualCycles];
      return v3;
    case 32:
    case 49:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierIntermenstrualBleeding];
      return v3;
    case 33:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierIrregularHeartRhythmEvent];
      return v3;
    case 34:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierIrregularMenstrualCycles];
      return v3;
    case 35:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLactation];
      return v3;
    case 36:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLossOfSmell];
      return v3;
    case 37:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLossOfTaste];
      return v3;
    case 38:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLowCardioFitnessEvent];
      return v3;
    case 39:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLowHeartRateEvent];
      return v3;
    case 40:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLowerBackPain];
      return v3;
    case 41:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierMemoryLapse];
      return v3;
    case 42:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierMenstrualFlow];
      return v3;
    case 43:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
      return v3;
    case 44:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierMoodChanges];
      return v3;
    case 45:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierNausea];
      return v3;
    case 46:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierNightSweats];
      return v3;
    case 47:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierOvulationTestResult];
      return v3;
    case 48:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierPelvicPain];
      return v3;
    case 50:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierPregnancy];
      return v3;
    case 51:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierPregnancyTestResult];
      return v3;
    case 52:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierProgesteroneTestResult];
      return v3;
    case 53:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierProlongedMenstrualPeriods];
      return v3;
    case 54:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierRapidPoundingOrFlutteringHeartbeat];
      return v3;
    case 55:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierRunnyNose];
      return v3;
    case 56:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSexualActivity];
      return v3;
    case 57:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierShortnessOfBreath];
      return v3;
    case 58:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSinusCongestion];
      return v3;
    case 59:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSkippedHeartbeat];
      return v3;
    case 60:
    case -54:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSleepAnalysis];
      return v3;
    case 61:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSleepChanges];
      return v3;
    case 62:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSoreThroat];
      return v3;
    case 63:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierToothbrushingEvent];
      return v3;
    case 64:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierVaginalDryness];
      return v3;
    case 65:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierVomiting];
      return v3;
    case 66:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierWheezing];
      return v3;
    case 67:
      v3 = [objc_opt_self() characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierBiologicalSex];
      return v3;
    case 68:
      v3 = [objc_opt_self() characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierBloodType];
      return v3;
    case 69:
    case -58:
      return result;
    case 70:
      v3 = [objc_opt_self() characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierDateOfBirth];
      return v3;
    case 71:
      v3 = [objc_opt_self() characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierFitzpatrickSkinType];
      return v3;
    case 72:
      v3 = [objc_opt_self() characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierWheelchairUse];
      return v3;
    case 73:
      v3 = [objc_opt_self() allergyRecordTypeForIdentifier:HKAllergyRecordTypeIdentifierAllergyRecord];
      return v3;
    case 74:
      v3 = [objc_opt_self() clinicalNoteRecordTypeForIdentifier:HKClinicalNoteRecordTypeIdentifierClinicalNoteRecord];
      return v3;
    case 75:
      v3 = [objc_opt_self() conditionRecordTypeForIdentifier:HKConditionRecordTypeIdentifierConditionRecord];
      return v3;
    case 76:
      v3 = [objc_opt_self() coverageRecordTypeForIdentifier:HKCoverageRecordTypeIdentifierCoverageRecord];
      return v3;
    case 77:
      sub_25908(0, &qword_1C6550, HKClinicalType_ptr);
      v4 = &HKClinicalTypeIdentifierImmunizationRecord;
      return sub_16E3AC(*v4).super.super.super.isa;
    case 78:
      sub_25908(0, &qword_1C6550, HKClinicalType_ptr);
      v4 = &HKClinicalTypeIdentifierLabResultRecord;
      return sub_16E3AC(*v4).super.super.super.isa;
    case 79:
      sub_25908(0, &qword_1C6550, HKClinicalType_ptr);
      v4 = &HKClinicalTypeIdentifierMedicationRecord;
      return sub_16E3AC(*v4).super.super.super.isa;
    case 80:
      sub_25908(0, &qword_1C6550, HKClinicalType_ptr);
      v4 = &HKClinicalTypeIdentifierProcedureRecord;
      return sub_16E3AC(*v4).super.super.super.isa;
    case 81:
      sub_25908(0, &qword_1C6550, HKClinicalType_ptr);
      v4 = &HKClinicalTypeIdentifierVitalSignRecord;
      return sub_16E3AC(*v4).super.super.super.isa;
    case 82:
      v3 = [objc_opt_self() correlationTypeForIdentifier:HKCorrelationTypeIdentifierBloodPressure];
      return v3;
    case 83:
      v3 = [objc_opt_self() dataTypeWithCode:145];
      return v3;
    case 84:
      v3 = [objc_opt_self() dataTypeWithCode:144];
      return v3;
    case 85:
      v3 = [objc_opt_self() dataTypeWithCode:197];
      return v3;
    case 86:
      v3 = [objc_opt_self() dataTypeWithCode:198];
      return v3;
    case 87:
      v3 = [objc_opt_self() dataTypeWithCode:107];
      return v3;
    case 88:
      v3 = [objc_opt_self() dataTypeWithCode:273];
      return v3;
    case 89:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
      return v3;
    case 90:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleExerciseTime];
      return v3;
    case 91:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleMoveTime];
      return v3;
    case 92:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleSleepingWristTemperature];
      return v3;
    case 93:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleStandTime];
      return v3;
    case 94:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleWalkingSteadiness];
      return v3;
    case 95:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAtrialFibrillationBurden];
      return v3;
    case 96:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBasalBodyTemperature];
      return v3;
    case 97:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBasalEnergyBurned];
      return v3;
    case 98:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingCadence];
      return v3;
    case 99:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingFunctionalThresholdPower];
      return v3;
    case 100:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingPower];
      return v3;
    case 101:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingSpeed];
      return v3;
    case 102:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodAlcoholContent];
      return v3;
    case 103:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodGlucose];
      return v3;
    case 104:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyFatPercentage];
      return v3;
    case 105:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMass];
      return v3;
    case 106:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMassIndex];
      return v3;
    case 107:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyTemperature];
      return v3;
    case 108:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryBiotin];
      return v3;
    case 109:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCaffeine];
      return v3;
    case 110:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCalcium];
      return v3;
    case 111:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCarbohydrates];
      return v3;
    case 112:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryChloride];
      return v3;
    case 113:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCholesterol];
      return v3;
    case 114:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryChromium];
      return v3;
    case 115:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCopper];
      return v3;
    case 116:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryEnergyConsumed];
      return v3;
    case 117:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatMonounsaturated];
      return v3;
    case 118:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatPolyunsaturated];
      return v3;
    case 119:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatSaturated];
      return v3;
    case 120:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatTotal];
      return v3;
    case 121:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFiber];
      return v3;
    case 122:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFolate];
      return v3;
    case 123:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryIodine];
      return v3;
    case 124:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryIron];
      return v3;
    case 125:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryMagnesium];
      return v3;
    case 126:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryManganese];
      return v3;
    case 127:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryMolybdenum];
      return v3;
    case -128:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryNiacin];
      return v3;
    case -127:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPantothenicAcid];
      return v3;
    case -126:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPhosphorus];
      return v3;
    case -125:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPotassium];
      return v3;
    case -124:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryProtein];
      return v3;
    case -123:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryRiboflavin];
      return v3;
    case -122:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySelenium];
      return v3;
    case -121:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySodium];
      return v3;
    case -120:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySugar];
      return v3;
    case -119:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryThiamin];
      return v3;
    case -118:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminA];
      return v3;
    case -117:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminB12];
      return v3;
    case -116:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminB6];
      return v3;
    case -115:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminC];
      return v3;
    case -114:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminD];
      return v3;
    case -113:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminE];
      return v3;
    case -112:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminK];
      return v3;
    case -111:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryWater];
      return v3;
    case -110:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryZinc];
      return v3;
    case -109:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceCycling];
      return v3;
    case -108:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceDownhillSnowSports];
      return v3;
    case -107:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceSwimming];
      return v3;
    case -106:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceWalkingRunning];
      return v3;
    case -105:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceWheelchair];
      return v3;
    case -104:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierElectrodermalActivity];
      return v3;
    case -103:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierEnvironmentalAudioExposure];
      return v3;
    case -102:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierEnvironmentalSoundReduction];
      return v3;
    case -101:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierFlightsClimbed];
      return v3;
    case -100:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierForcedExpiratoryVolume1];
      return v3;
    case -99:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierForcedVitalCapacity];
      return v3;
    case -98:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierHeadphoneAudioExposure];
      return v3;
    case -97:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
      return v3;
    case -96:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRateRecoveryOneMinute];
      return v3;
    case -95:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRateVariabilitySDNN];
      return v3;
    case -94:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierHeight];
      return v3;
    case -93:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierInhalerUsage];
      return v3;
    case -92:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierInsulinDelivery];
      return v3;
    case -91:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierLeanBodyMass];
      return v3;
    case -90:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierNikeFuel];
      return v3;
    case -89:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierPhysicalEffort];
      return v3;
    case -88:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierNumberOfAlcoholicBeverages];
      return v3;
    case -87:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierNumberOfTimesFallen];
      return v3;
    case -86:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierOxygenSaturation];
      return v3;
    case -85:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierPeakExpiratoryFlowRate];
      return v3;
    case -84:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierPeripheralPerfusionIndex];
      return v3;
    case -83:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierPushCount];
      return v3;
    case -82:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRespiratoryRate];
      return v3;
    case -81:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRestingHeartRate];
      return v3;
    case -80:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningGroundContactTime];
      return v3;
    case -79:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningPower];
      return v3;
    case -78:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningSpeed];
      return v3;
    case -77:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningStrideLength];
      return v3;
    case -76:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningVerticalOscillation];
      return v3;
    case -75:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierSixMinuteWalkTestDistance];
      return v3;
    case -74:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierStairAscentSpeed];
      return v3;
    case -73:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierStairDescentSpeed];
      return v3;
    case -72:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierStepCount];
      return v3;
    case -71:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierSwimmingStrokeCount];
      return v3;
    case -70:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierTimeInDaylight];
      return v3;
    case -69:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierUVExposure];
      return v3;
    case -68:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierUnderwaterDepth];
      return v3;
    case -67:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierVO2Max];
      return v3;
    case -66:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWaistCircumference];
      return v3;
    case -65:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingAsymmetryPercentage];
      return v3;
    case -64:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingDoubleSupportPercentage];
      return v3;
    case -63:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingHeartRateAverage];
      return v3;
    case -62:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingSpeed];
      return v3;
    case -61:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingStepLength];
      return v3;
    case -60:
      sub_25908(0, &qword_1C6548, HKSampleType_ptr);
      v3 = [swift_getObjCClassFromMetadata() stateOfMindType];
      return v3;
    case -59:
      v3 = [objc_opt_self() dataTypeWithCode:257];
      return v3;
    case -56:
      v3 = [objc_opt_self() gad7Type];
      return v3;
    case -55:
      v3 = [objc_opt_self() phq9Type];
      return v3;
    case -53:
      v3 = [objc_opt_self() dataTypeWithCode:175];
      return v3;
    case -52:
      v3 = [objc_opt_self() dataTypeWithCode:176];
      return v3;
    default:
      v3 = [objc_opt_self() activitySummaryType];
      return v3;
  }
}

uint64_t sub_25908(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_25948(unsigned __int8 a1)
{
  result = 0xD000000000000016;
  if (!(!v2 & v1))
  {
    switch(a1)
    {
      case 'X':
        return 0xD000000000000023;
      case 'Y':
      case 'Z':
      case '[':
      case ']':
      case 'a':
        return 0xD000000000000018;
      case '\\':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'd':
      case 'e':
      case 'f':
      case 'h':
      case 'j':
        return result;
        return 0xD00000000000001DLL;
      case 'g':
      case 'k':
        return 0xD000000000000017;
      case 'i':
        return 0xD000000000000021;
      default:
        JUMPOUT(0);
    }
  }

  v5 = a1 - 147;
  if (v5 <= 0x25)
  {
    if (((1 << (a1 + 109)) & 0x2004000119) != 0)
    {
      return 0xD000000000000018;
    }

    if (((1 << (a1 + 109)) & 0x8800000) != 0)
    {
      return 0xD00000000000001CLL;
    }

    if (v5 == 15)
    {
      return 0xD000000000000021;
    }
  }

  if (a1 != 60)
  {
    if (a1 == 32 || a1 == 42)
    {
      return 0xD00000000000001DLL;
    }

    if (a1 == 4)
    {
      return 0xD000000000000018;
    }
  }

  return result;
}

uint64_t sub_25AE8(uint64_t a1, __int128 *a2, const void *a3, const void *a4, uint64_t a5)
{
  v12 = sub_16D63C();
  v13 = sub_4348(v12);
  __chkstk_darwin(v13);
  sub_4304();
  v14 = sub_16C58C();
  sub_389CC(v14);
  v15 = sub_16C57C();
  *(v5 + 320) = v6;
  *(v5 + 328) = &protocol witness table for ResponseFactory;
  *(v5 + 296) = v15;
  type metadata accessor for WellnessLoggingCATsSimple(0);
  sub_16D62C();
  *(v5 + 336) = sub_16D5FC();
  type metadata accessor for WellnessCATs(0);
  sub_16D62C();
  *(v5 + 344) = sub_16D58C();
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v16 = objc_allocWithZone(sub_16DB4C());
  *(v5 + 352) = sub_16DB3C();
  *(v5 + 16) = a1;
  sub_17464(a2, v5 + 24);
  memcpy((v5 + 64), a3, 0xA0uLL);
  memcpy((v5 + 224), a4, 0x41uLL);
  *(v5 + 400) = 0;
  if (*(a5 + 24))
  {
    sub_17464(a5, &v18);
  }

  else
  {
    *(&v19 + 1) = &type metadata for MedsCorrectionsFlowProvider;
    v20 = &off_1BB2F8;
    *&v18 = swift_allocObject();
    sub_8388(v5 + 24, v18 + 16);
    sub_8284(v5 + 64, v18 + 56);
    if (*(a5 + 24))
    {
      sub_8748(a5, &qword_1C67D8, &unk_176890);
    }
  }

  sub_17464(&v18, v5 + 360);
  return v5;
}

uint64_t sub_25CD4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GenericMedLoggingFlow();
  sub_37C38(&qword_1C67D0, v2, type metadata accessor for GenericMedLoggingFlow, &unk_171BC0);
  return sub_16C33C();
}

uint64_t sub_25D60()
{
  sub_8A88();
  v1[1137] = v0;
  v1[1136] = v2;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v1[1138] = sub_8C38();
  v1[1139] = swift_task_alloc();
  v4 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v4);
  v1[1140] = sub_8BC0();
  v5 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v5);
  v1[1141] = sub_8BC0();
  v6 = type metadata accessor for GenericMedCompletedLogModel(0);
  v1[1142] = v6;
  sub_4348(v6);
  v1[1143] = sub_8BC0();
  v7 = type metadata accessor for SnippetHeaderModel(0);
  v1[1144] = v7;
  sub_4348(v7);
  v1[1145] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v8);
  v1[1146] = sub_8C38();
  v1[1147] = swift_task_alloc();
  v1[1148] = swift_task_alloc();
  v1[1149] = swift_task_alloc();
  v9 = sub_16C46C();
  sub_4348(v9);
  v1[1150] = sub_8BC0();
  v10 = sub_16C7BC();
  v1[1151] = v10;
  sub_888C(v10);
  v1[1152] = v11;
  v1[1153] = sub_8C38();
  v1[1154] = swift_task_alloc();
  v1[1155] = swift_task_alloc();
  v1[1156] = swift_task_alloc();
  v1[1157] = swift_task_alloc();
  v1[1158] = swift_task_alloc();
  v1[1159] = swift_task_alloc();
  v1[1160] = swift_task_alloc();
  v12 = sub_16BF5C();
  v1[1161] = v12;
  sub_888C(v12);
  v1[1162] = v13;
  v1[1163] = sub_8C38();
  v1[1164] = swift_task_alloc();
  v14 = sub_16DBEC();
  v1[1165] = v14;
  sub_888C(v14);
  v1[1166] = v15;
  v1[1167] = sub_8C38();
  v1[1168] = swift_task_alloc();
  v1[1169] = swift_task_alloc();
  v1[1170] = swift_task_alloc();
  v1[1171] = swift_task_alloc();
  v1[1172] = swift_task_alloc();
  v1[1173] = swift_task_alloc();
  v1[1174] = swift_task_alloc();
  v1[1175] = swift_task_alloc();
  v1[1176] = swift_task_alloc();
  v1[1177] = swift_task_alloc();
  v1[1178] = swift_task_alloc();
  v1[1179] = swift_task_alloc();
  v1[1180] = swift_task_alloc();
  v1[1181] = swift_task_alloc();
  v1[1182] = swift_task_alloc();
  v1[1183] = swift_task_alloc();
  v1[1184] = swift_task_alloc();
  v1[1185] = swift_task_alloc();
  v1[1186] = swift_task_alloc();
  v1[1187] = swift_task_alloc();
  v1[1188] = swift_task_alloc();
  v1[1189] = swift_task_alloc();
  v1[1190] = swift_task_alloc();
  v1[1191] = swift_task_alloc();
  v1[1192] = swift_task_alloc();
  v1[1193] = swift_task_alloc();
  v1[1194] = swift_task_alloc();
  v1[1195] = swift_task_alloc();
  v1[1196] = swift_task_alloc();
  v1[1197] = swift_task_alloc();
  v1[1198] = swift_task_alloc();
  v1[1199] = swift_task_alloc();
  v1[1200] = swift_task_alloc();
  v1[1201] = swift_task_alloc();
  v1[1202] = swift_task_alloc();
  v16 = sub_17960();

  return _swift_task_switch(v16);
}

uint64_t sub_261EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void (*a55)(uint64_t), uint64_t (*a56)(uint64_t), uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  memcpy((v60 + 4952), (*(v60 + 9096) + 224), 0x41uLL);
  v61 = *(v60 + 4952);
  *(v60 + 9624) = v61;
  v62 = *(v60 + 5016);
  if (v62 >> 6 == 2)
  {
    v85 = *(v60 + 9328);
    *(v60 + 10536) = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    *(v60 + 10544) = *(v85 + 16);
    *(v60 + 10552) = (v85 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v86 = sub_389C0();
    a56 = v87;
    v87(v86);
    v88 = sub_16DBDC();
    v89 = sub_16E36C();
    if (sub_1BA1C(v89))
    {
      v90 = sub_1BA38();
      sub_1BA50(v90);
      sub_1B9D0(&def_259DC, v91, v92, "Received .receivedConfirmationMixedLogging code, sending back to handler.");
      sub_1BA00();
    }

    v93 = *(v60 + 9328);

    v94 = *(v93 + 8);
    *(v60 + 10560) = v94;
    v95 = sub_C9F8();
    v94(v95);
    v96 = [objc_allocWithZone(sub_16DA1C()) init];
    *(v60 + 10568) = v96;
    v97 = v96;

    v98 = getMedStatus(from:)();

    v99 = [objc_allocWithZone(NSNumber) initWithBool:v98 & 1];
    [v97 setMedStatus:v99];

    if ((v61 - 3) < 3u)
    {
      v100 = *(v60 + 9096);
      sub_37750();
      v101 = v97;
      isa = sub_16E3BC((3u >> ((v61 - 3) & 7)) & 1).super.super.isa;
      [v101 setShouldOverwriteExistingStatuses:isa];

      *(v60 + 10576) = *(v100 + 352);
      *(v60 + 16) = v60;
      *(v60 + 56) = v60 + 9024;
      *(v60 + 24) = sub_2F588;
      v103 = swift_continuation_init();
      *(v60 + 5360) = sub_2440(&qword_1C67A0, &qword_171C78);
      *(v60 + 5336) = v103;
      *(v60 + 5304) = _NSConcreteStackBlock;
      *(v60 + 5312) = 1107296256;
      sub_38494();
      *(v60 + 5320) = v104;
      *(v60 + 5328) = &unk_1B9B58;
      [swift_unknownObjectRetain() handleLogGenericMedications:v101 completion:v60 + 5304];
LABEL_45:
      sub_38648();

      return _swift_continuation_await(v192);
    }

    v128 = v60 + 1272;
    sub_385D8();
    swift_beginAccess();
    v129 = sub_389C0();
    a56(v129);
    v130 = sub_16DBDC();
    v131 = sub_16E37C();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = sub_1BA38();
      *v132 = 0;
      _os_log_impl(&def_259DC, v130, v131, ".receivedConfirmationMixedLogging got an unrecognized confirmation status, returning GenericError", v132, 2u);
      sub_8A2C(v132);
    }

    v133 = *(v60 + 9096);

    v134 = sub_387CC();
    v94(v134);
    sub_8284(v133 + 64, v60 + 1272);
    sub_82E0();
    sub_16C4EC();
    sub_389E8();

    goto LABEL_39;
  }

  if (v62 >> 6 != 3)
  {
LABEL_36:
    v128 = v60 + 792;
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v160 = sub_389C0();
    v161(v160);
    v162 = sub_16DBDC();
    v163 = sub_16E37C();
    if (sub_38670(v163))
    {
      v164 = sub_1BA38();
      sub_387A4(v164);
      sub_3851C(&def_259DC, v165, v166, "GenericMedLoggingFlow ended up in an unrecognized state, returning GenericErrorFlow.");
      sub_38604();
    }

    sub_38CDC();
    v167 = *(v60 + 9096);

    v168 = sub_C9E0();
    v169(v168);
    sub_8284(v167 + 64, v60 + 792);
    sub_82E0();
    sub_16C4EC();
LABEL_39:
    sub_8334(v128);
    sub_37D94();
    sub_37E9C();

    sub_C9BC();
    sub_38648();

    return v171(v170, v171, v172, v173, v174, v175, v176, v177, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
  }

  v63 = *(v60 + 4984);
  v64 = *(v60 + 4976);
  v65 = *(v60 + 4968);
  v66 = *(v60 + 4960);
  v67 = *(v60 + 4992) | *(v60 + 5000) | *(v60 + 5008);
  if (v62 == 192 && !(v67 | v61 | v63 | v64 | v65 | v66))
  {
    v68 = *(v60 + 9328);
    v69 = *(v60 + 9320);
    *(v60 + 9632) = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v70 = *(v68 + 16);
    *(v60 + 9640) = v70;
    *(v60 + 9648) = (v68 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v71 = sub_38B40();
    v70(v71);
    v72 = sub_16DBDC();
    v73 = sub_16E36C();
    if (sub_1BA1C(v73))
    {
      v74 = sub_1BA38();
      sub_387A4(v74);
      _os_log_impl(&def_259DC, v72, v69, "Executing GenericMedLoggingFlow", &loc_20B0, 2u);
      sub_38604();
    }

    v75 = *(v60 + 9312);
    v76 = *(v60 + 9096);

    v77 = sub_38E50();
    a55 = v78;
    v78(v77);
    a56 = v76;
    v79 = *(v76 + 16);

    sub_16BF4C();
    v80 = isLoggingTimeframeToday(from:todayDate:)(v79, v75);
    v81 = *(v60 + 9296);
    if (v80)
    {

      v82 = *(v81 + 8);
      v83 = (v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v84 = sub_38E50();
      v82(v84);
LABEL_44:
      *(v60 + 9656) = v82;
      v182 = *(v60 + 9304);
      v202 = *(v60 + 9096);
      v183 = [objc_allocWithZone(sub_16DA1C()) init];
      *(v60 + 9664) = v183;
      v184 = *(v76 + 16);

      sub_16BF4C();
      v185 = isLoggingTimeframeToday(from:todayDate:)(v184, v182);

      *(v60 + 9672) = v83;
      v186 = sub_387CC();
      v82(v186);
      v187 = [objc_allocWithZone(NSNumber) initWithBool:v185 & 1];
      [v183 setIsTimeframeToday:v187];

      v188 = getMedStatus(from:)();

      v189 = [objc_allocWithZone(NSNumber) initWithBool:v188 & 1];
      [v183 setMedStatus:v189];

      *(v60 + 9680) = *(v202 + 352);
      *(v60 + 80) = v60;
      *(v60 + 120) = v60 + 9048;
      *(v60 + 88) = sub_270FC;
      v190 = swift_continuation_init();
      *(v60 + 5424) = sub_2440(&qword_1C67A0, &qword_171C78);
      *(v60 + 5400) = v190;
      *(v60 + 5368) = _NSConcreteStackBlock;
      *(v60 + 5376) = 1107296256;
      sub_38494();
      *(v60 + 5384) = v191;
      *(v60 + 5392) = &unk_1B9C70;
      [swift_unknownObjectRetain() handleLogGenericMedications:v183 completion:v60 + 5368];
      goto LABEL_45;
    }

    v178 = isLoggingTimeframeNone(from:)();

    v180 = *(v81 + 8);
    v179 = v81 + 8;
    v82 = v180;
    v181 = sub_38E50();
    v180(v181);
    if (v178)
    {
      v83 = v179 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      goto LABEL_44;
    }

    v128 = v60 + 3352;
    sub_385D8();
    swift_beginAccess();
    v194 = sub_38B40();
    v70(v194);
    v195 = sub_16DBDC();
    v196 = sub_16E36C();
    if (sub_38670(v196))
    {
      v197 = sub_1BA38();
      sub_387A4(v197);
      sub_3851C(&def_259DC, v198, v199, "Received unsupported timeframe while logging generic medication");
      sub_38604();
    }

    sub_38CDC();
    v200 = *(v60 + 9096);

    v201 = sub_C9E0();
    a55(v201);
    sub_8284(v200 + 64, v60 + 3352);
    sub_82E0();
    sub_16C4EC();
    sub_389E8();
    goto LABEL_39;
  }

  v105 = v67 | v63 | v64 | v65 | v66;
  v106 = v62 == 192 && v61 == 7;
  if (!v106 || v105)
  {
    v135 = v62 == 192 && v61 == 9;
    if (v135 && !v105)
    {
      v136 = *(v60 + 9328);
      *(v60 + 9984) = sub_16DBBC();
      sub_385D8();
      swift_beginAccess();
      *(v60 + 9992) = *(v136 + 16);
      sub_38DB8();
      *(v60 + 10000) = v137;
      v138 = sub_38B40();
      v139(v138);
      v140 = sub_16DBDC();
      v141 = sub_16E36C();
      if (sub_1BA1C(v141))
      {
        v142 = sub_1BA38();
        sub_1BA50(v142);
        sub_1B9D0(&def_259DC, v143, v144, "Received .receivedConfirmationLogAsScheduled code, sending back to intent handler.");
        sub_1BA00();
      }

      v145 = *(v60 + 9488);
      v146 = *(v60 + 9328);
      v147 = *(v60 + 9320);
      v148 = *(v60 + 9304);
      v149 = *(v60 + 9296);
      v150 = *(v60 + 9288);
      v151 = *(v60 + 9096);

      (*(v146 + 8))(v145, v147);
      v152 = [objc_allocWithZone(sub_16DA1C()) init];
      *(v60 + 10008) = v152;
      v153 = *(v151 + 16);

      sub_16BF4C();
      LOBYTE(v147) = isLoggingTimeframeToday(from:todayDate:)(v153, v148);

      v154 = *(v149 + 8);
      *(v60 + 10016) = v154;
      *(v60 + 10024) = (v149 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v154(v148, v150);
      v155 = [objc_allocWithZone(NSNumber) initWithBool:v147 & 1];
      [v152 setIsTimeframeToday:v155];

      LOBYTE(v148) = getMedStatus(from:)();

      v156 = [objc_allocWithZone(NSNumber) initWithBool:v148 & 1];
      [v152 setMedStatus:v156];

      sub_37750();
      v157 = sub_16E3BC(1).super.super.isa;
      [v152 setConfirmedLogAsScheduled:v157];

      *(v60 + 10032) = *(v151 + 352);
      *(v60 + 144) = v60;
      *(v60 + 184) = v60 + 8992;
      *(v60 + 152) = sub_2ABA4;
      v158 = swift_continuation_init();
      *(v60 + 5296) = sub_2440(&qword_1C67A0, &qword_171C78);
      *(v60 + 5272) = v158;
      *(v60 + 5240) = _NSConcreteStackBlock;
      *(v60 + 5248) = 1107296256;
      sub_38494();
      *(v60 + 5256) = v159;
      *(v60 + 5264) = &unk_1B9BD0;
      [swift_unknownObjectRetain() handleLogGenericMedications:v152 completion:v60 + 5240];
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  v107 = *(v60 + 9328);
  *(v60 + 10456) = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v109 = *(v107 + 16);
  v108 = v107 + 16;
  *(v60 + 10464) = v109;
  sub_38DB8();
  *(v60 + 10472) = v110;
  v111 = sub_38B40();
  v112(v111);
  v113 = sub_16DBDC();
  v114 = sub_16E36C();
  if (sub_1BA1C(v114))
  {
    v115 = sub_1BA38();
    sub_1BA50(v115);
    sub_1B9D0(&def_259DC, v116, v117, "Received .rejectedConfirmation code, indicating rejectedConfirmation to log as scheduled. creating output.");
    sub_1BA00();
  }

  sub_38DD0();
  v118 = *(v60 + 9096);

  *(v60 + 10480) = *(v108 + 8);
  v119 = sub_C9F8();
  v120(v119);
  *(v60 + 10488) = *(v118 + 336);
  sub_16D5CC();
  sub_8AB4();
  sub_214C(v121, v122, v123, v124);

  v125 = swift_task_alloc();
  *(v60 + 10496) = v125;
  *v125 = v60;
  v125[1] = sub_2EABC;
  sub_38648();

  return sub_166794();
}

uint64_t sub_270FC()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_271CC()
{
  sub_38664();
  v148 = v0;
  v4 = *(v0 + 9048);
  *(v0 + 9688) = v4;
  v5 = swift_unknownObjectRelease();
  v6 = (*(&stru_20.maxprot + (swift_isaMask & *v4)))(v5);
  switch(v6)
  {
    case 'e':
      sub_38584();
      sub_38474();
      v7 = sub_8948();
      (v3)(v7);
      v8 = sub_16DBDC();
      v9 = sub_16E36C();
      if (sub_38670(v9))
      {
        v10 = sub_1BA38();
        sub_387A4(v10);
        sub_3851C(&def_259DC, v11, v12, "Received .requiresAuthorization, returning Output with FlowActivity for Requires Auth");
        sub_38604();
      }

      v13 = *(v0 + 9664);
      v14 = *(v0 + 9096);

      v15 = sub_387CC();
      v16(v15);
      sub_8388(v14 + 24, v0 + 216);
      sub_8284(v14 + 64, v0 + 256);
      v17 = sub_16C58C();
      sub_8D14(v17);
      v18 = sub_16C57C();
      *(v0 + 440) = v17;
      *(v0 + 448) = &protocol witness table for ResponseFactory;
      *(v0 + 416) = v18;
      v19 = sub_78A24();
      v20 = sub_78A50();
      *(v0 + 208) = 88;
      *(v0 + 456) = v19;
      *(v0 + 464) = v20;
      sub_84F0();
      sub_16C4EC();

      sub_376FC(v0 + 4952);
      sub_8544(v0 + 208);
      goto LABEL_50;
    case 'f':
      goto LABEL_12;
    case 'g':
      sub_386FC();
      sub_38450();
      v42 = sub_38408();
      (v2)(v42);
      sub_16DBDC();
      v43 = sub_16E36C();
      if (sub_1BA1C(v43))
      {
        v44 = sub_1BA38();
        sub_1BA50(v44);
        sub_1B9D0(&def_259DC, v45, v46, "Got multiple meds (failure for generic med logging), creating output.");
        sub_1BA00();
      }

      sub_38D44();
      *(v0 + 9872) = *(v1 + 8);
      v47 = sub_C9F8();
      v48(v47);
      *(v0 + 9880) = *(v2 + 336);

      v49 = swift_task_alloc();
      *(v0 + 9888) = v49;
      *v49 = v0;
      sub_38A20(v49);
      sub_38C58();

      return sub_165C0C();
    case 'h':
      goto LABEL_7;
    case 'i':
      v51 = *(v0 + 9640);
      v52 = *(v0 + 9096);
      memcpy((v0 + 5024), (v52 + 224), 0x41uLL);
      *(v52 + 224) = 4;
      *(v52 + 232) = 0u;
      v53 = v52 + 232;
      *(v53 + 16) = 0u;
      *(v53 + 32) = 0u;
      *(v53 + 48) = 0;
      *(v53 + 56) = -64;
      sub_376FC(v0 + 5024);
      sub_385D8();
      swift_beginAccess();
      v54 = sub_8948();
      v51(v54);
      v55 = sub_16DBDC();
      v56 = sub_16E36C();
      if (sub_38670(v56))
      {
        v57 = sub_1BA38();
        sub_387A4(v57);
        sub_3851C(&def_259DC, v58, v59, "got state .awaitingConfirmationLogAsScheduled inside GenericMedLoggingFlow");
        sub_38604();
      }

      v60 = *(v0 + 9328);

      v61 = *(v60 + 8);
      v62 = sub_C9E0();
      v61(v62);
      v63 = sub_372A0(v4, &selRef_matchingMeds);
      if (v63)
      {
        v64 = v63;
        v65 = *(v0 + 9096);
        v144 = *(v0 + 9664);

        v142 = getMedStatus(from:)();

        sub_8284(v65 + 64, v0 + 2712);
        v66 = sub_104A68();
        v67 = sub_104A6C();
        v68 = sub_16C58C();
        sub_8D14(v68);
        v69 = sub_16C57C();
        type metadata accessor for LogMedAsScheduledConfirmationStrategy();
        v70 = swift_allocObject();
        *(v0 + 5496) = v68;
        *(v0 + 5504) = &protocol witness table for ResponseFactory;
        *(v0 + 5472) = v69;
        *(v70 + 16) = 0;
        *(v70 + 24) = 0;
        *(v70 + 32) = v142 & 1;
        *(v70 + 40) = v64;
        memcpy((v70 + 48), (v0 + 2712), 0xA0uLL);
        *(v70 + 208) = v66;
        *(v70 + 216) = v67;
        sub_17464((v0 + 5472), v70 + 224);

        sub_16C73C();
        v71 = sub_2440(&qword_1C67A8, &qword_171CC0);
        sub_8D14(v71);
        sub_37C38(&qword_1C67C0, 255, type metadata accessor for LogMedAsScheduledConfirmationStrategy, &unk_1748A0);
        *(v0 + 9080) = sub_16C21C();
        sub_388B8(&qword_1C67B8);

        sub_16C4CC();

        sub_389E8();

LABEL_49:

LABEL_50:
        sub_37E68();

        sub_C9BC();
        sub_38C58();

        __asm { BRAA            X1, X16 }
      }

      sub_38584();
      sub_38474();
      v111 = sub_8948();
      (unk_1FD8)(v111);
      sub_16DBDC();
      v112 = sub_16E36C();
      if (sub_38670(v112))
      {
        v113 = sub_1BA38();
        sub_387A4(v113);
        sub_3851C(&def_259DC, v114, v115, "Needed confirmation log as scheduled but intentResponse.matchingMeds was nil.");
        sub_38604();
      }

      v116 = *(v0 + 9664);
      sub_38A94();
      v117 = sub_C9E0();
      v61(v117);
      sub_8284(v53 + 64, v0 + 2872);
      sub_82E0();
      sub_16C4EC();

      sub_389E8();
      v41 = v0 + 2872;
      goto LABEL_46;
    case 'j':
      sub_38584();
      sub_38474();
      v72 = sub_8948();
      (v3)(v72);
      v73 = sub_16DBDC();
      v74 = sub_16E36C();
      if (sub_38670(v74))
      {
        v75 = sub_1BA38();
        sub_387A4(v75);
        sub_3851C(&def_259DC, v76, v77, "Received .needsSingleMedLogging, returning SpecificMedLoggingFlow");
        sub_38604();
      }

      v78 = *(v0 + 9328);

      v79 = *(v78 + 8);
      v80 = sub_C9E0();
      v79(v80);
      v81 = sub_372A0(v4, &selRef_matchingMeds);
      if (!v81)
      {
        goto LABEL_43;
      }

      v82 = sub_9AE60(v81);

      if (!v82)
      {
        goto LABEL_43;
      }

      v83 = sub_10340C(v82);
      if (v84)
      {
        v85 = v83;
        v86 = v84;
        v87 = *(v0 + 9096);
        v88 = *(v87 + 16);
        sub_8388(v87 + 24, v0 + 5792);
        sub_8284(v87 + 64, v0 + 4792);
        v145 = v88;

        v89 = sub_103400(v82);
        v91 = v90;
        v92 = [v82 strength];
        v93 = v92;
        if (v92)
        {
          [v92 doubleValue];
          v95 = v94;
        }

        else
        {
          v95 = 0;
        }

        v143 = *(v0 + 9664);
        v125 = sub_103418(v82);
        *(v0 + 5096) = v89;
        *(v0 + 5104) = v91;
        *(v0 + 5112) = v85;
        *(v0 + 5120) = v86;
        *(v0 + 5128) = v95;
        *(v0 + 5136) = v93 == 0;
        *(v0 + 5144) = v125;
        *(v0 + 5152) = v126;
        *(v0 + 5160) = 0;
        v127 = sub_16C58C();
        memset(v146, 0, sizeof(v146));
        v147 = 0;
        sub_8D14(v127);
        v128 = sub_16C57C();
        v129 = sub_38868();
        v141 = sub_30B2C(v129, &CATWrapperSimple.__allocating_init(options:globals:));
        v140 = sub_30B2C(type metadata accessor for WellnessCATs, &CATWrapper.__allocating_init(options:globals:));
        v139 = sub_30958();
        sub_309A0((v0 + 5512));
        type metadata accessor for SpecificMedLoggingFlow();
        v138 = swift_allocObject();
        v130 = *(v0 + 5536);
        v131 = *(v0 + 5544);
        v132 = sub_37BE8(v0 + 5512, v130);
        v133 = *(v130 - 8);
        v134 = sub_8BC0();
        (*(v133 + 16))(v134, v132, v130);
        *(v0 + 9056) = v128;

        v135 = sub_103E98(v145, (v0 + 5792), (v0 + 4792), (v0 + 5096), v0 + 9056, v141, v140, v139, v134, v146, v138, v127, v130, &protocol witness table for ResponseFactory, v131);
        sub_2D64((v0 + 5512));

        *(v0 + 9064) = v135;
        sub_37C38(&qword_1C67C8, 255, type metadata accessor for SpecificMedLoggingFlow, &unk_1766A8);
        sub_16C4EC();

        sub_389E8();
        goto LABEL_49;
      }

LABEL_43:
      sub_38584();
      sub_38474();
      v118 = sub_8948();
      (v3)(v118);
      sub_16DBDC();
      v119 = sub_16E37C();
      if (sub_38670(v119))
      {
        v120 = sub_1BA38();
        sub_387A4(v120);
        sub_3851C(&def_259DC, v121, v122, ".needsSingleMedLogging case: failed to unpack matchingMed, returning GenericErrorFlow.");
        sub_38604();
      }

      v123 = *(v0 + 9664);
      sub_38A94();
      v124 = sub_C9E0();
      v79(v124);
      sub_8284(v0 + 4160, v0 + 952);
      sub_82E0();
      sub_16C4EC();

      sub_389E8();
      v41 = v0 + 952;
      goto LABEL_46;
    default:
      if (v6 == 4)
      {
        sub_38584();
        sub_38474();
        v96 = sub_8948();
        (v3)(v96);
        v97 = sub_16DBDC();
        v98 = sub_16E36C();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = sub_1BA38();
          sub_387A4(v99);
          sub_38EC4(&def_259DC, v100, v101, "Received successful intent response, creating output.");
          sub_38604();
        }

        sub_38CDC();
        v102 = *(v0 + 9096);

        *(v0 + 9696) = *(v3 + 8);
        v103 = sub_C9E0();
        v104(v103);
        v105 = sub_372A0(v4, &selRef_matchingMedsBeforeUpdate);
        if (v105)
        {
          v106 = v105;
        }

        else
        {
          v106 = _swiftEmptyArrayStorage;
        }

        sub_30BB0(v106);

        *(v0 + 5017) = getMedStatus(from:)() & 1;

        *(v0 + 9704) = *(v102 + 336);

        v107 = swift_task_alloc();
        *(v0 + 9712) = v107;
        *v107 = v0;
        sub_38A20(v107);
        sub_38C58();

        return sub_1658EC(v108, v109);
      }

      else
      {
        if (v6 != 5)
        {
LABEL_12:
          sub_38584();
          sub_38474();
          v31 = sub_8948();
          (v3)(v31);
          v32 = sub_16DBDC();
          v33 = sub_16E36C();
          if (sub_38670(v33))
          {
            v34 = sub_1BA38();
            sub_387A4(v34);
            sub_3851C(&def_259DC, v35, v36, "Intent response code was not an expected one, returning nil output.");
            sub_38604();
          }

          v37 = *(v0 + 9664);
          v38 = *(v0 + 9096);

          v39 = sub_C9E0();
          v40(v39);
          sub_8284(v38 + 64, v0 + 3032);
          sub_82E0();
          sub_16C4EC();

          sub_376FC(v0 + 4952);
          v41 = v0 + 3032;
LABEL_46:
          sub_8334(v41);
          goto LABEL_50;
        }

LABEL_7:
        sub_386FC();
        sub_38450();
        v21 = sub_38408();
        (v2)(v21);
        sub_16DBDC();
        v22 = sub_16E36C();
        if (sub_1BA1C(v22))
        {
          v23 = sub_1BA38();
          sub_1BA50(v23);
          sub_1B9D0(&def_259DC, v24, v25, "Got .noMedsFound or .failure, creating output.");
          sub_1BA00();
        }

        sub_38D44();
        *(v0 + 9928) = *(v1 + 8);
        v26 = sub_C9F8();
        v27(v26);
        *(v0 + 9936) = *(v2 + 336);

        v28 = swift_task_alloc();
        *(v0 + 9944) = v28;
        *v28 = v0;
        sub_38A20(v28);
        sub_38C58();

        return sub_165B5C();
      }
  }
}

uint64_t sub_2827C()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v3 = v2;
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 9720) = v6;

  sub_38A38();
  if (v0)
  {
  }

  sub_385C8();

  return _swift_task_switch(v8);
}

uint64_t sub_283A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v14 = v12[1215];
  v15 = v12[1137];
  sub_16C43C();
  sub_37FFC();
  v16 = sub_38594();
  sub_B9BF4(v16, v17, v18);
  sub_16C7AC();
  v19 = [v14 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_38F14();
  sub_3820C(v12 + 859);
  v20 = sub_17970();
  v21(v20);
  sub_38138(v12 + 854);
  if (sub_16C40C())
  {
    sub_38CB8();
  }

  else
  {
    v13 = 6792;
    sub_8388(v15 + 24, (v12 + 849));
    sub_3820C(v12 + 849);
    v22 = sub_17970();
    v23(v22);
    sub_38138(v12 + 834);
    sub_16C3FC();
    sub_2D64(v12 + 834);
    sub_38A6C(v12 + 849);
  }

  sub_38E44();
  sub_160444(0, 0, v24);
  sub_38CF4();
  sub_3820C(v12 + 829);
  v25 = sub_17970();
  v26(v25);
  sub_38138(v12 + 824);
  if (sub_16C40C())
  {
    v27 = sub_38F5C(v12 + 824);
    sub_2D64(v27);
    v28 = "calendarIdentifier";
  }

  else
  {
    sub_38F14();
    sub_3820C(v12 + 819);
    v29 = sub_17970();
    v30(v29);
    sub_38138(v12 + 754);
    sub_16C3FC();
    sub_2D64(v12 + 754);
    sub_38A44(v12 + 819);
    sub_38CE8();
    if (v31)
    {
      v13 = v32;
    }

    if (v31)
    {
      v28 = v34;
    }

    else
    {
      v28 = v33;
    }
  }

  v12[1217] = v28;
  v12[1216] = v13;
  v35 = swift_task_alloc();
  v12[1218] = v35;
  *v35 = v12;
  sub_383B8(v35);
  sub_8CC0();

  return sub_66A84(v36, v37);
}

uint64_t sub_28644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[1219] = v17;
  v14[1220] = v18;

  v19 = swift_task_alloc();
  v14[1221] = v19;
  *v19 = v16;
  v20 = sub_3822C(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_28760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[1222] = v17;
  v14[1223] = v18;

  v19 = swift_task_alloc();
  v14[1224] = v19;
  *v19 = v16;
  v20 = sub_38398(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_2887C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[1225] = v17;
  v14[1226] = v18;

  v19 = swift_task_alloc();
  v14[1227] = v19;
  *v19 = v16;
  v20 = sub_38554(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_289A4()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  v4[1228] = v8;

  v4[1229] = v2;
  v9 = swift_task_alloc();
  v4[1230] = v9;
  *v9 = v6;
  sub_3853C(v9);

  return sub_66E84();
}

uint64_t sub_28AC8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v1[1112] = v0;
  v1[1113] = v3;
  v1[1114] = v4;
  sub_38800();
  v5 = *v0;
  sub_C990();
  *v6 = v5;
  *(v8 + 9848) = v7;

  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_28FE0()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 5912));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_290E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v15 = *(v12 + 9720);
  v16 = *(v12 + 9688);
  v17 = *(v12 + 9664);
  sub_38C18();
  v18 = *(v12 + 9192);
  sub_3880C(v19);
  sub_387F4();
  swift_allocObject();
  sub_3888C((v12 + 5832));
  v20 = sub_16C1DC();
  sub_389CC(v20);
  *(v12 + 9000) = sub_384FC();
  sub_38D0C();

  sub_389E8();
  sub_2D64((v12 + 5992));
  sub_381C4();
  sub_375C0(v13, v21);
  sub_8748(v18, &qword_1C57F8, &unk_172510);
  (*(v14 + 8))();
  sub_38418();

  sub_37E68();
  sub_38250();

  sub_C9BC();
  sub_8CC0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_293F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_386FC();
  sub_38450();
  v62 = sub_38408();
  v61(v62);
  sub_16DBDC();
  v63 = sub_16E37C();
  if (sub_1BA1C(v63))
  {
    v64 = sub_1BA38();
    sub_1BA50(v64);
    sub_1B9D0(&def_259DC, v65, v66, "Failed executing catWrapperSimple.genericMedicationCompletedLog_Dialog, returning nil");
    sub_1BA00();
  }

  v67 = v60[1212];
  v68 = v60[1211];
  v69 = v60[1208];
  sub_386DC();
  v70 = sub_C9F8();
  v67(v70);
  sub_8284(v61 + 64, (v60 + 139));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 139));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_296C4()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v3 = v2;
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 9896) = v6;

  sub_38A38();
  if (v0)
  {
  }

  sub_385C8();

  return _swift_task_switch(v8);
}

uint64_t sub_297F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_38AB4();
  sub_38664();
  v14 = v12[1237];
  sub_38BBC(v15);
  sub_37FFC();
  v16 = sub_38594();
  sub_B9BF4(v16, v17, v18);
  sub_38EE4();
  v19 = [v14 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v13 + 24, (v12 + 929));
  sub_8284(v13 + 64, (v12 + 199));
  sub_8388(v13 + 296, (v12 + 869));
  v12[1238] = *(v13 + 336);
  v12[1239] = *(v13 + 344);

  swift_task_alloc();
  sub_179E8();
  v12[1240] = v20;
  *v20 = v21;
  v20[1] = sub_29934;
  sub_38C08();
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_29934()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 6952));
  sub_C938(v2 + 1592);
  sub_2D64((v2 + 7432));
  sub_17960();
  sub_38F74();

  return _swift_task_switch(v6);
}

uint64_t sub_29A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v12[937])
  {
    v15 = v12[1237];
    v16 = v12[1211];
    v17 = v12[1208];
    v18 = sub_385A4(7472);
    sub_38BD8(v18);
    sub_387F4();
    v19 = swift_allocObject();
    sub_38754(v19);
    v20 = sub_16C1DC();
    sub_38964(v20);
    v12[1127] = sub_384FC();
    sub_38AEC();

    sub_389E8();
    sub_2D64(v12 + 939);
    v21 = sub_C9F8();
    v22(v21);
  }

  else
  {
    sub_38584();
    sub_8748(v12 + v23, &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v24 = sub_38408();
    v14(v24);
    sub_16DBDC();
    v25 = sub_16E37C();
    if (sub_1BA1C(v25))
    {
      v26 = sub_1BA38();
      sub_1BA50(v26);
      sub_1B9D0(&def_259DC, v27, v28, "getPunchoutOutput() returned nil, returning GenericErrorFlow");
      sub_1BA00();
    }

    v29 = v12[1234];
    v30 = v12[1211];
    v43 = v12[1208];
    v44 = v12[1237];
    sub_38910();
    v31 = sub_C9F8();
    v29(v31);
    sub_8284(v13 + 64, (v12 + 179));
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334((v12 + 179));
    v32 = sub_38E20();
    v33(v32);
  }

  sub_37E68();
  sub_38014();

  sub_C9BC();
  sub_8CC0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_29E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_386FC();
  sub_38450();
  v62 = sub_38408();
  v61(v62);
  sub_16DBDC();
  v63 = sub_16E37C();
  if (sub_1BA1C(v63))
  {
    v64 = sub_1BA38();
    sub_1BA50(v64);
    sub_1B9D0(&def_259DC, v65, v66, "Failed executing catWrapperSimple.genericMedicationMultipleMedsFound_Dialog, returning nil");
    sub_1BA00();
  }

  v67 = v60[1234];
  v68 = v60[1211];
  v69 = v60[1208];
  sub_386DC();
  v70 = sub_C9F8();
  v67(v70);
  sub_8284(v61 + 64, (v60 + 219));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 219));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2A134()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v3 = v2;
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 9952) = v6;

  sub_38A38();
  if (v0)
  {
  }

  sub_385C8();

  return _swift_task_switch(v8);
}

uint64_t sub_2A260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_38AB4();
  sub_38664();
  v14 = v12[1244];
  sub_38BBC(v15);
  sub_37FFC();
  v16 = sub_38594();
  sub_B9BF4(v16, v17, v18);
  sub_38EE4();
  v19 = [v14 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v13 + 24, (v12 + 964));
  sub_8284(v13 + 64, (v12 + 279));
  sub_8388(v13 + 296, (v12 + 954));
  v12[1245] = *(v13 + 336);
  v12[1246] = *(v13 + 344);

  swift_task_alloc();
  sub_179E8();
  v12[1247] = v20;
  *v20 = v21;
  v20[1] = sub_2A3A4;
  sub_38C08();
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_2A3A4()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 7632));
  sub_C938(v2 + 2232);
  sub_2D64((v2 + 7712));
  sub_17960();
  sub_38F74();

  return _swift_task_switch(v6);
}

uint64_t sub_2A4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v12[982])
  {
    v15 = v12[1244];
    v16 = v12[1211];
    v17 = v12[1208];
    v18 = sub_385A4(7832);
    sub_38BD8(v18);
    sub_387F4();
    v19 = swift_allocObject();
    sub_38754(v19);
    v20 = sub_16C1DC();
    sub_38964(v20);
    v12[1130] = sub_384FC();
    sub_38AEC();

    sub_389E8();
    sub_2D64(v12 + 984);
    v21 = sub_C9F8();
    v22(v21);
  }

  else
  {
    sub_38584();
    sub_8748(v12 + v23, &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v24 = sub_38408();
    v14(v24);
    sub_16DBDC();
    v25 = sub_16E37C();
    if (sub_1BA1C(v25))
    {
      v26 = sub_1BA38();
      sub_1BA50(v26);
      sub_1B9D0(&def_259DC, v27, v28, "getPunchoutOutput() returned nil, returning GenericErrorFlow");
      sub_1BA00();
    }

    v29 = v12[1241];
    v30 = v12[1211];
    v43 = v12[1208];
    v44 = v12[1244];
    sub_38910();
    v31 = sub_C9F8();
    v29(v31);
    sub_8284(v13 + 64, (v12 + 239));
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334((v12 + 239));
    v32 = sub_38E20();
    v33(v32);
  }

  sub_37E68();
  sub_38014();

  sub_C9BC();
  sub_8CC0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_2A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_386FC();
  sub_38450();
  v62 = sub_38408();
  v61(v62);
  sub_16DBDC();
  v63 = sub_16E37C();
  if (sub_1BA1C(v63))
  {
    v64 = sub_1BA38();
    sub_1BA50(v64);
    sub_1B9D0(&def_259DC, v65, v66, "Failed executing catWrapperSimple.genericMedicationLogFailed_Dialog, returning nil");
    sub_1BA00();
  }

  v67 = v60[1241];
  v68 = v60[1211];
  v69 = v60[1208];
  sub_386DC();
  v70 = sub_C9F8();
  v67(v70);
  sub_8284(v61 + 64, (v60 + 299));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 299));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2ABA4()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_2AC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v16 = *(v12 + 8992);
  *(v12 + 10040) = v16;
  v17 = swift_unknownObjectRelease();
  v18 = (*(&stru_20.maxprot + (swift_isaMask & *v16)))(v17);
  v19 = *(v12 + 10000);
  v20 = *(v12 + 9992);
  switch(v18)
  {
    case 108:
      sub_385D8();
      swift_beginAccess();
      v55 = sub_C9F8();
      v20(v55);
      v56 = sub_16DBDC();
      v57 = sub_16E36C();
      if (sub_1BA1C(v57))
      {
        v58 = sub_1BA38();
        sub_1BA50(v58);
        sub_1B9D0(&def_259DC, v59, v60, "Received .allMedsLoggedAlready inside first .receivedConfirmationLogAsScheduled case, handling.");
        sub_1BA00();
      }

      v61 = *(v12 + 9328);
      v62 = *(v12 + 9200);
      v63 = *(v12 + 9096);

      *(v12 + 10224) = *(v61 + 8);
      v64 = sub_C9E0();
      v65(v64);
      sub_16C45C();
      sub_37FFC();
      sub_B9BF4(v62, v66, 0);
      sub_16C7AC();
      *(v12 + 10232) = *(v63 + 336);

      getMedStatus(from:)();

      sub_16D5CC();
      sub_8AB4();
      sub_214C(v67, v68, v69, v70);
      swift_task_alloc();
      sub_179E8();
      *(v12 + 10240) = v71;
      *v71 = v72;
      v71[1] = sub_2CB4C;
      sub_8CC0();

      return sub_16746C();
    case 107:
      sub_385D8();
      swift_beginAccess();
      v37 = sub_38DF0();
      v20(v37);
      v38 = sub_16DBDC();
      v39 = sub_16E36C();
      if (sub_38670(v39))
      {
        v40 = sub_1BA38();
        sub_387A4(v40);
        sub_3851C(&def_259DC, v41, v42, "Received .needsConfirmMixedLogging inside first .receivedConfirmationLogAsScheduled case, handling.");
        sub_38604();
      }

      sub_38CDC();
      v43 = *(v12 + 9096);

      v44 = *(v19 + 8);
      v45 = sub_C9E0();
      v44(v45);
      memcpy((v12 + 5168), (v43 + 224), 0x41uLL);
      *(v43 + 224) = 6;
      *(v43 + 232) = 0u;
      v43 += 232;
      *(v43 + 16) = 0u;
      *(v43 + 32) = 0u;
      *(v43 + 48) = 0;
      *(v43 + 56) = -64;
      sub_376FC(v12 + 5168);
      v46 = sub_372A0(v16, &selRef_matchingMeds);
      if (v46)
      {
        v47 = v46;
        v100 = *(v12 + 10008);

        v99 = getMedStatus(from:)();

        sub_30A28(v101);
        v48 = sub_38868();
        v49 = sub_30B2C(v48, &CATWrapperSimple.__allocating_init(options:globals:));
        v50 = sub_30B2C(type metadata accessor for WellnessLoggingCATs, &CATWrapper.__allocating_init(options:globals:));
        v51 = sub_16C58C();
        sub_8D14(v51);
        v52 = sub_16C57C();
        type metadata accessor for LogMedGenericMixedStatusConfirmationStrategy();
        v53 = swift_allocObject();
        *(v12 + 6776) = v51;
        *(v12 + 6784) = &protocol witness table for ResponseFactory;
        *(v12 + 6752) = v52;
        *(v53 + 16) = v99 & 1;
        *(v53 + 24) = v47;
        memcpy((v53 + 32), v101, 0xA0uLL);
        *(v53 + 192) = v49;
        *(v53 + 200) = v50;
        sub_17464((v12 + 6752), v53 + 208);

        sub_16C73C();
        v54 = sub_2440(&qword_1C67A8, &qword_171CC0);
        sub_8D14(v54);
        sub_37C38(&qword_1C67B0, 255, type metadata accessor for LogMedGenericMixedStatusConfirmationStrategy, &unk_175168);
        *(v12 + 9008) = sub_16C21C();
        sub_388B8(&qword_1C67B8);

        sub_16C4CC();

        sub_389E8();
      }

      else
      {
        v83 = *(v12 + 9992);
        sub_38474();
        v84 = sub_8948();
        v83(v84);
        sub_16DBDC();
        v85 = sub_16E36C();
        if (sub_38670(v85))
        {
          v86 = sub_1BA38();
          sub_387A4(v86);
          sub_3851C(&def_259DC, v87, v88, "Needed confirmation for mixed logging, but intentResponse.matchingMeds was nil.");
          sub_38604();
        }

        v89 = *(v12 + 10008);
        sub_38A94();
        v90 = sub_C9E0();
        v44(v90);
        sub_8284(v15 + 64, v12 + 3832);
        sub_82E0();
        sub_16C4EC();

        sub_389E8();
        sub_8334(v12 + 3832);
      }

      sub_37D94();

      sub_C9BC();
      sub_8CC0();

      return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12);
    case 4:
      sub_385D8();
      swift_beginAccess();
      v21 = sub_38DF0();
      v20(v21);
      v22 = sub_16DBDC();
      v23 = sub_16E36C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = sub_1BA38();
        sub_387A4(v24);
        sub_38EC4(&def_259DC, v25, v26, "Received successful intent response, creating output.");
        sub_38604();
      }

      sub_38CDC();
      v27 = *(v12 + 9096);

      *(v12 + 10048) = *(v19 + 8);
      v28 = sub_C9E0();
      v29(v28);
      v30 = sub_372A0(v16, &selRef_matchingMedsBeforeUpdate);
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = _swiftEmptyArrayStorage;
      }

      sub_30BB0(v31);

      *(v12 + 5018) = getMedStatus(from:)() & 1;

      *(v12 + 10056) = *(v27 + 336);

      v32 = swift_task_alloc();
      *(v12 + 10064) = v32;
      *v32 = v12;
      sub_38A20(v32);
      sub_8CC0();

      return sub_1658EC(v33, v34);
    default:
      sub_385D8();
      swift_beginAccess();
      v74 = sub_C9F8();
      v20(v74);
      sub_16DBDC();
      v75 = sub_16E36C();
      if (sub_1BA1C(v75))
      {
        v76 = sub_1BA38();
        sub_1BA50(v76);
        sub_1B9D0(&def_259DC, v77, v78, "Got unacceptable response code after confirmedLogAsScheduled, creating failure output.");
        sub_1BA00();
      }

      sub_38D44();
      *(v12 + 10400) = *(v13 + 8);
      v79 = sub_C9F8();
      v80(v79);
      *(v12 + 10408) = *(v14 + 336);

      v81 = swift_task_alloc();
      *(v12 + 10416) = v81;
      *v81 = v12;
      sub_38A20(v81);
      sub_8CC0();

      return sub_165B5C();
  }
}

uint64_t sub_2B6E8()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v3 = v2;
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 10072) = v6;

  sub_38A38();
  if (v0)
  {
  }

  sub_385C8();

  return _swift_task_switch(v8);
}

uint64_t sub_2B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v14 = v12[1259];
  sub_16C43C();
  sub_37FFC();
  v15 = sub_38594();
  sub_B9BF4(v15, v16, v17);
  v18 = [v14 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_16C7AC();
  sub_38F14();
  sub_3820C(v12 + 999);
  v19 = sub_17970();
  v20(v19);
  sub_38138(v12 + 714);
  if (sub_16C40C())
  {
    sub_38CB8();
  }

  else
  {
    v13 = 7072;
    sub_38CF4();
    sub_3820C(v12 + 879);
    v21 = sub_17970();
    v22(v21);
    sub_38138(v12 + 884);
    sub_16C3FC();
    v23 = sub_38F5C(v12 + 884);
    sub_38A6C(v23);
  }

  sub_38E44();
  sub_160444(0, 0, v24);
  sub_38CF4();
  sub_3820C(v12 + 889);
  v25 = sub_17970();
  v26(v25);
  sub_38138(v12 + 894);
  if (sub_16C40C())
  {
    v27 = sub_38F5C(v12 + 894);
    sub_2D64(v27);
    v28 = "calendarIdentifier";
  }

  else
  {
    sub_38CF4();
    sub_3820C(v12 + 899);
    v29 = sub_17970();
    v30(v29);
    sub_38138(v12 + 904);
    sub_16C3FC();
    v31 = sub_38F5C(v12 + 904);
    sub_38A44(v31);
    sub_38CE8();
    if (v32)
    {
      v13 = v33;
    }

    if (v32)
    {
      v28 = v35;
    }

    else
    {
      v28 = v34;
    }
  }

  v12[1261] = v28;
  v12[1260] = v13;
  v36 = swift_task_alloc();
  v12[1262] = v36;
  *v36 = v12;
  sub_383B8(v36);
  sub_8CC0();

  return sub_66A84(v37, v38);
}

uint64_t sub_2BAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[1263] = v17;
  v14[1264] = v18;

  v19 = swift_task_alloc();
  v14[1265] = v19;
  *v19 = v16;
  v20 = sub_3822C(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_2BBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[1266] = v17;
  v14[1267] = v18;

  v19 = swift_task_alloc();
  v14[1268] = v19;
  *v19 = v16;
  v20 = sub_38398(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_2BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[1269] = v17;
  v14[1270] = v18;

  v19 = swift_task_alloc();
  v14[1271] = v19;
  *v19 = v16;
  v20 = sub_38554(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_2BE00()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  v4[1272] = v8;

  v4[1273] = v2;
  v9 = swift_task_alloc();
  v4[1274] = v9;
  *v9 = v6;
  sub_3853C(v9);

  return sub_66E84();
}

uint64_t sub_2BF24()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v1[1115] = v0;
  v1[1116] = v3;
  v1[1117] = v4;
  sub_38800();
  v5 = *v0;
  sub_C990();
  *v6 = v5;
  *(v8 + 10200) = v7;

  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_2C00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_3884C();
  sub_38980();
  v103 = *(v31 + 10104);
  v97 = *(v31 + 10088);
  v112 = *(v31 + 10080);
  v113 = *(v31 + 10072);
  v107 = *(v31 + 5018);
  v96 = *(v31 + 9304);
  v108 = *(v31 + 9288);
  v109 = *(v31 + 10016);
  v33 = *(v31 + 9184);
  v105 = *(v31 + 9176);
  sub_3870C();
  v111 = v35;
  v36 = *(v31 + 9152);
  if (v51)
  {
    v34 = 0xD000000000000019;
  }

  v110 = v34;
  sub_38C48();
  v39 = v38 | 0x6974616369640000;
  v40 = *(v31 + 9136);
  if (v51)
  {
    v41 = v39;
  }

  else
  {
    v41 = v37;
  }

  v114 = *(v31 + 9128);
  sub_38E84(v41);

  sub_38B4C();
  v42 = (v32 + *(v36 + 20));
  *v42 = 0xD000000000000023;
  v42[1] = v43;
  v44 = (v32 + *(v36 + 24));
  *v44 = 0xD000000000000036;
  v44[1] = 0x800000000017BF80;
  sub_16BF4C();
  sub_372FC(v105, v33);
  v106 = sub_14D35C();
  sub_38E14();
  v46 = v45 & 0xFFFF00000000FFFFLL | 0x646567670000;
  if (!v51)
  {
    v46 = v103;
  }

  v104 = v46;
  sub_38E08();
  v50 = v49 | 0x64657070690000;
  if (!v51)
  {
    v50 = v47;
  }

  v101 = v50;
  v102 = v48;
  sub_38DFC();
  v56 = v55 & 0xFFFF00000000FFFFLL | 0x6E656B0000;
  if (!v51)
  {
    v56 = v53;
  }

  v99 = v56;
  v100 = v54;
  v57 = 0xE500000000000000;
  if (!v51)
  {
    v57 = v52;
  }

  v98 = v57;
  sub_381F4();
  sub_38D60(v58, v59, v60);
  sub_388E4();
  sub_214C(v61, v62, v63, v36);
  v91 = v40[6];
  v64 = sub_16C11C();
  sub_8AB4();
  sub_214C(v65, v66, v67, v64);
  v68 = (v30 + v40[8]);
  v92 = (v30 + v40[10]);
  v93 = v40[7];
  v69 = (v30 + v40[11]);
  v70 = (v30 + v40[12]);
  v94 = v40[14];
  v95 = v40[9];
  v71 = (v30 + v40[13]);
  sub_8AB4();
  sub_214C(v72, v73, v74, v36);
  *v30 = v107;
  *(v30 + 8) = sub_BA66C();
  *(v30 + 16) = v75;
  sub_BA70C(v33);
  sub_8748(v33, &qword_1C57F8, &unk_172510);
  v109(v96, v108);
  v76 = sub_38744();
  sub_214C(v76, v77, v78, v64);
  sub_38EFC(&qword_1C63F0, &unk_1717F0, v91);
  *(v30 + v93) = 0;
  *v68 = v112;
  v68[1] = v97 | 0x8000000000000000;
  *(v30 + v95) = v106 & 1;
  *v92 = v104;
  v92[1] = v102;
  *v69 = v101;
  v69[1] = v100;
  *v70 = v99;
  v70[1] = v98;
  *v71 = v110;
  v71[1] = v111;
  sub_3769C(v114, v30 + v94, &dword_1C63F8, &qword_171800);
  sub_8388(a30 + 296, v31 + 7312);
  *(v31 + 7376) = sub_38B74((v31 + 7312));
  sub_381DC();
  *(v31 + 7384) = sub_37C38(v79, 255, v80, &protocol conformance descriptor for WellnessSnippets);
  v81 = sub_9910((v31 + 7352));
  sub_383D8(v81);
  sub_38B58();
  v82 = sub_2440(&qword_1C5ED8, &unk_173090);
  v83 = sub_38DA0(v82);
  *(v31 + 10208) = sub_60CF0(v83, 1);
  *v84 = v113;
  v85 = v113;
  swift_task_alloc();
  sub_179E8();
  *(v31 + 10216) = v86;
  *v86 = v87;
  v86[1] = sub_2C468;
  sub_3856C();
  sub_387D8();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v88);
}

uint64_t sub_2C468()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 7352));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_2C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v15 = *(v12 + 10072);
  v16 = *(v12 + 10040);
  v17 = *(v12 + 10008);
  sub_38C18();
  v18 = *(v12 + 9176);
  sub_3880C(v19);
  sub_387F4();
  swift_allocObject();
  sub_3888C((v12 + 7392));
  v20 = sub_16C1DC();
  sub_389CC(v20);
  *(v12 + 9032) = sub_384FC();
  sub_38D0C();

  sub_389E8();
  sub_2D64((v12 + 7272));
  sub_381C4();
  sub_375C0(v13, v21);
  sub_8748(v18, &qword_1C57F8, &unk_172510);
  (*(v14 + 8))();
  sub_38418();

  sub_37E68();
  sub_38250();

  sub_C9BC();
  sub_8CC0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_2C878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_38C28();
  sub_38450();
  v62 = sub_38408();
  v61(v62);
  sub_16DBDC();
  v63 = sub_16E37C();
  if (sub_1BA1C(v63))
  {
    v64 = sub_1BA38();
    sub_1BA50(v64);
    sub_1B9D0(&def_259DC, v65, v66, "Failed executing catWrapperSimple.genericMedicationCompletedLog_Dialog, returning nil");
    sub_1BA00();
  }

  v67 = v60[1256];
  v68 = v60[1255];
  v69 = v60[1251];
  sub_386DC();
  v70 = sub_C9F8();
  v67(v70);
  sub_8284(v61 + 64, (v60 + 439));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 439));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2CB4C()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *v2;
  sub_38440();
  *v6 = v5;
  *(v8 + 10248) = v7;

  sub_8C88();
  v9 = *(v1 + 9112);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_2CCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v14 = [*(v12 + 10248) catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_38F14();
  sub_3820C((v12 + 6072));
  v15 = sub_17970();
  v16(v15);
  sub_38138((v12 + 6112));
  if (sub_16C40C())
  {
    sub_38CB8();
  }

  else
  {
    v13 = 6192;
    sub_38CF4();
    sub_3820C((v12 + 6152));
    v17 = sub_17970();
    v18(v17);
    sub_38138((v12 + 6192));
    sub_16C3FC();
    v19 = sub_38F5C((v12 + 6192));
    sub_38A6C(v19);
  }

  sub_38E44();
  sub_160444(0, 0, v20);
  sub_38CF4();
  sub_3820C((v12 + 6232));
  v21 = sub_17970();
  v22(v21);
  sub_38138((v12 + 6272));
  if (sub_16C40C())
  {
    v23 = sub_38F5C((v12 + 6272));
    sub_2D64(v23);
    v24 = "calendarIdentifier";
  }

  else
  {
    sub_38CF4();
    sub_3820C((v12 + 6312));
    v25 = sub_17970();
    v26(v25);
    sub_38138((v12 + 6352));
    sub_16C3FC();
    v27 = sub_38F5C((v12 + 6352));
    sub_38A44(v27);
    sub_38CE8();
    if (v28)
    {
      v13 = v29;
    }

    if (v28)
    {
      v24 = v31;
    }

    else
    {
      v24 = v30;
    }
  }

  *(v12 + 10264) = v24;
  *(v12 + 10256) = v13;
  v32 = swift_task_alloc();
  *(v12 + 10272) = v32;
  *v32 = v12;
  sub_383B8(v32);
  sub_8CC0();

  return sub_66A84(v33, v34);
}

uint64_t sub_2CF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[1285] = v17;
  v14[1286] = v18;

  v19 = swift_task_alloc();
  v14[1287] = v19;
  *v19 = v16;
  v20 = sub_3822C(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_2D044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[1288] = v17;
  v14[1289] = v18;

  v19 = swift_task_alloc();
  v14[1290] = v19;
  *v19 = v16;
  v20 = sub_38398(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_2D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[1291] = v17;
  v14[1292] = v18;

  v19 = swift_task_alloc();
  v14[1293] = v19;
  *v19 = v16;
  v20 = sub_38554(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_2D288()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  v4[1294] = v8;

  v4[1295] = v2;
  v9 = swift_task_alloc();
  v4[1296] = v9;
  *v9 = v6;
  sub_3853C(v9);

  return sub_66E84();
}

uint64_t sub_2D3AC()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v1[1118] = v0;
  v1[1119] = v3;
  v1[1120] = v4;
  sub_38800();
  v5 = *v0;
  sub_C990();
  *v6 = v5;
  *(v8 + 10376) = v7;

  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_2D8E4()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 6472));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_2D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v15 = *(v12 + 10248);
  v16 = *(v12 + 10040);
  v17 = *(v12 + 10008);
  sub_38C18();
  v18 = *(v12 + 9168);
  sub_3880C(v19);
  sub_387F4();
  swift_allocObject();
  sub_3888C((v12 + 6512));
  v20 = sub_16C1DC();
  sub_389CC(v20);
  *(v12 + 8976) = sub_384FC();
  sub_38D0C();

  sub_389E8();
  sub_2D64((v12 + 6392));
  sub_381C4();
  sub_375C0(v13, v21);
  sub_8748(v18, &qword_1C57F8, &unk_172510);
  (*(v14 + 8))();
  sub_38418();

  sub_37E68();
  sub_38250();

  sub_C9BC();
  sub_8CC0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_2DCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_38C28();
  sub_38450();
  v62 = sub_38408();
  v61(v62);
  v63 = sub_16DBDC();
  v64 = sub_16E36C();
  if (sub_1BA1C(v64))
  {
    v65 = sub_1BA38();
    sub_1BA50(v65);
    sub_1B9D0(&def_259DC, v66, v67, "Couldn't create specificMedicationAllMedsLoggedAlready_Dialog, returning GenericErrorFlow");
    sub_1BA00();
  }

  v68 = v60[1278];
  v69 = v60[1255];
  sub_38DD0();
  v85 = v60[1156];
  v70 = v60[1152];
  v83 = v71;
  v84 = v60[1151];
  v72 = v60[1137];

  v73 = sub_C9F8();
  v68(v73);
  sub_8284(v72 + 64, (v60 + 499));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 499));
  (*(v70 + 8))(v85, v84);
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, v83, v84, v85, a57, a58, a59, a60);
}

uint64_t sub_2E000()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v3 = v2;
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 10424) = v6;

  sub_38A38();
  if (v0)
  {
  }

  sub_385C8();

  return _swift_task_switch(v8);
}

uint64_t sub_2E12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_38AB4();
  sub_38664();
  v13 = v12[1303];
  v14 = v12[1137];
  sub_16C45C();
  sub_37FFC();
  v15 = sub_38594();
  sub_B9BF4(v15, v16, v17);
  sub_16C7AC();
  v18 = [v13 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v14 + 24, (v12 + 709));
  sub_8284(v14 + 64, (v12 + 539));
  sub_8388(v14 + 296, (v12 + 719));
  v12[1304] = *(v14 + 336);
  v12[1305] = *(v14 + 344);

  swift_task_alloc();
  sub_179E8();
  v12[1306] = v19;
  *v19 = v20;
  v19[1] = sub_2E290;
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_2E290()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 5752));
  sub_C938(v2 + 4312);
  sub_2D64((v2 + 5672));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_2E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v12[707])
  {
    v13 = v12[1303];
    v14 = v12[1255];
    v15 = v12[1251];
    v16 = sub_385A4(5632);
    sub_38BD8(v16);
    sub_387F4();
    v17 = swift_allocObject();
    sub_38754(v17);
    v18 = sub_16C1DC();
    sub_38964(v18);
    v12[1123] = sub_384FC();
    sub_38AEC();

    sub_389E8();
    sub_2D64(v12 + 699);
    v19 = sub_C9F8();
    v20(v19);
  }

  else
  {
    v21 = v12[1250];
    v22 = v12[1249];
    sub_8748((v12 + 704), &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v23 = sub_38408();
    v22(v23);
    sub_16DBDC();
    v24 = sub_16E37C();
    if (sub_1BA1C(v24))
    {
      v25 = sub_1BA38();
      sub_1BA50(v25);
      sub_1B9D0(&def_259DC, v26, v27, "getPunchoutOutput() returned nil, returning GenericErrorFlow");
      sub_1BA00();
    }

    v28 = v12[1300];
    v29 = v12[1255];
    v42 = v12[1251];
    v43 = v12[1303];
    sub_38910();
    v30 = sub_C9F8();
    v28(v30);
    sub_8284(v21 + 64, (v12 + 519));
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334((v12 + 519));
    v31 = sub_38E20();
    v32(v31);
  }

  sub_37E68();
  sub_38014();

  sub_C9BC();
  sub_8CC0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_2E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_38C28();
  sub_38450();
  v62 = sub_38408();
  v61(v62);
  v63 = sub_16DBDC();
  v64 = sub_16E37C();
  if (sub_1BA1C(v64))
  {
    v65 = sub_1BA38();
    sub_1BA50(v65);
    sub_1B9D0(&def_259DC, v66, v67, "Failed executing catWrapperSimple.genericMedicationLogFailed_Dialog, returning nil");
    sub_1BA00();
  }

  v68 = v60[1300];
  v69 = v60[1255];
  v70 = v60[1251];
  sub_38DD0();
  v71 = v60[1137];

  v72 = sub_C9F8();
  v68(v72);
  sub_8284(v71 + 64, (v60 + 579));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 579));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2EABC()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *v2;
  sub_38440();
  *v6 = v5;
  *(v8 + 10504) = v7;

  sub_8C88();
  v9 = *(v1 + 9104);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_2EC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_38AB4();
  sub_38664();
  v14 = v12[1313];
  sub_38BBC(v15);
  sub_37FFC();
  v16 = sub_38594();
  sub_B9BF4(v16, v17, v18);
  sub_38EE4();
  v19 = [v14 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v13 + 24, (v12 + 679));
  sub_8284(v13 + 64, (v12 + 59));
  sub_8388(v13 + 296, (v12 + 874));
  v12[1314] = *(v13 + 336);
  v12[1315] = *(v13 + 344);

  swift_task_alloc();
  sub_179E8();
  v12[1316] = v20;
  *v20 = v21;
  v20[1] = sub_2ED7C;
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_2ED7C()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 6992));
  sub_C938(v2 + 472);
  sub_2D64((v2 + 5432));
  sub_17960();
  sub_38F74();

  return _swift_task_switch(v6);
}

uint64_t sub_2EEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v12[977])
  {
    v13 = v12[1313];
    v14 = sub_385A4(7792);
    sub_17464(v14, (v12 + 694));
    sub_8388((v12 + 694), (v12 + 959));
    sub_387F4();
    v15 = swift_allocObject();
    sub_38754(v15);
    v16 = sub_16C1DC();
    sub_38964(v16);
    v12[1134] = sub_384FC();
    sub_16C4EC();

    sub_389E8();
    sub_2D64(v12 + 694);
    v17 = sub_C9F8();
    v18(v17);
  }

  else
  {
    v19 = v12[1309];
    v20 = v12[1308];
    sub_8748((v12 + 974), &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v21 = sub_38408();
    v20(v21);
    sub_16DBDC();
    v22 = sub_16E36C();
    if (sub_1BA1C(v22))
    {
      v23 = sub_1BA38();
      sub_1BA50(v23);
      sub_1B9D0(&def_259DC, v24, v25, "Couldn't create output, returning GenericErrorFlow");
      sub_1BA00();
    }

    v26 = v12[1313];
    v27 = v12[1310];
    v28 = v12[1152];
    sub_38910();
    v29 = sub_C9F8();
    v27(v29);
    sub_8284(v19 + 64, (v12 + 79));
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334((v12 + 79));
    (*(v28 + 8))();
  }

  sub_37E68();
  sub_38014();

  sub_C9BC();
  sub_8CC0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_2F2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  v61 = v60[1308];
  sub_38450();
  v62 = sub_38408();
  v61(v62);
  v63 = sub_16DBDC();
  v64 = sub_16E36C();
  if (sub_1BA1C(v64))
  {
    v65 = sub_1BA38();
    sub_1BA50(v65);
    sub_1B9D0(&def_259DC, v66, v67, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_1BA00();
  }

  v68 = v60[1310];
  v69 = v60[1137];

  v70 = sub_C9F8();
  v68(v70);
  sub_8284(v69 + 64, (v60 + 559));
  sub_82E0();
  sub_16C4EC();
  sub_376FC((v60 + 619));
  sub_8334((v60 + 559));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2F588()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_2F658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  v61 = v60[1321];
  v62 = v60[1128];
  v60[1323] = v62;
  swift_unknownObjectRelease();

  v63 = (*(&stru_20.maxprot + (swift_isaMask & *v62)))();
  if (v63 == 5)
  {
    v70 = v60[1318];
    sub_38450();
    v71 = sub_38408();
    v70(v71);
    v72 = sub_16DBDC();
    v73 = sub_16E36C();
    if (sub_1BA1C(v73))
    {
      v74 = sub_1BA38();
      sub_1BA50(v74);
      sub_1B9D0(&def_259DC, v75, v76, "Got .noMedsFound or .failure, creating output.");
      sub_1BA00();
    }

    v77 = v60[1320];
    sub_38DD0();
    v78 = v60[1137];

    v79 = sub_C9F8();
    v77(v79);
    v60[1325] = *(v78 + 336);

    v80 = swift_task_alloc();
    v60[1326] = v80;
    *v80 = v60;
    sub_38A20(v80);
    sub_38648();

    return sub_165B5C();
  }

  else if (v63 == 4)
  {
    v64 = sub_372A0(v62, &selRef_matchingMedsBeforeUpdate);
    if (v64)
    {
      v65 = v64;
    }

    else
    {
      v65 = _swiftEmptyArrayStorage;
    }

    sub_30BB0(v65);

    swift_task_alloc();
    sub_179E8();
    v60[1324] = v66;
    *v66 = v67;
    v66[1] = sub_2FB50;
    sub_38648();

    return sub_31C5C();
  }

  else
  {
    v82 = v60[1318];
    sub_38474();
    v83 = sub_8948();
    v82(v83);
    v84 = sub_16DBDC();
    v85 = sub_16E37C();
    if (sub_38670(v85))
    {
      v86 = sub_1BA38();
      sub_387A4(v86);
      sub_3851C(&def_259DC, v87, v88, ".receivedConfirmationMixedLogging got a non-{success/failure} response code, returning GenericErrorFlow");
      sub_38604();
    }

    v89 = v60[1321];
    v90 = v60[1320];
    v91 = v60[1137];

    v92 = sub_C9E0();
    v90(v92);
    sub_8284(v91 + 64, (v60 + 259));
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334((v60 + 259));
    sub_37D94();
    sub_37E9C();

    sub_C9BC();
    sub_38648();

    return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
  }
}

uint64_t sub_2FB50()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_2FC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  v61 = *(v60 + 10584);

  sub_376FC(v60 + 4952);
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2FE70()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v3 = v2;
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 10616) = v6;

  sub_38A38();
  if (v0)
  {
  }

  sub_385C8();

  return _swift_task_switch(v8);
}

uint64_t sub_2FF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_38AB4();
  sub_38664();
  v14 = v12[1327];
  sub_38BBC(v15);
  sub_37FFC();
  v16 = sub_38594();
  sub_B9BF4(v16, v17, v18);
  sub_38EE4();
  v19 = [v14 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v13 + 24, (v12 + 969));
  sub_8284(v13 + 64, (v12 + 399));
  sub_8388(v13 + 296, (v12 + 944));
  v12[1328] = *(v13 + 336);
  v12[1329] = *(v13 + 344);

  swift_task_alloc();
  sub_179E8();
  v12[1330] = v20;
  *v20 = v21;
  v20[1] = sub_300E0;
  sub_38C08();
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_300E0()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 7552));
  sub_C938(v2 + 3192);
  sub_2D64((v2 + 7752));
  sub_17960();
  sub_38F74();

  return _swift_task_switch(v6);
}

uint64_t sub_3021C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v12[992])
  {
    v13 = v12[1327];
    v14 = v12[1323];
    v15 = v12[1321];
    v16 = sub_385A4(7912);
    sub_38BD8(v16);
    sub_387F4();
    v17 = swift_allocObject();
    sub_38754(v17);
    v18 = sub_16C1DC();
    sub_38964(v18);
    v12[1121] = sub_384FC();
    sub_38AEC();

    sub_389E8();
    sub_2D64(v12 + 994);
    v19 = sub_C9F8();
    v20(v19);
  }

  else
  {
    v21 = v12[1318];
    sub_8748((v12 + 989), &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v22 = sub_38408();
    v21(v22);
    v23 = sub_16DBDC();
    v24 = sub_16E37C();
    if (sub_1BA1C(v24))
    {
      v25 = sub_1BA38();
      sub_1BA50(v25);
      sub_1B9D0(&def_259DC, v26, v27, "getPunchoutOutput() returned nil, returning GenericErrorFlow");
      sub_1BA00();
    }

    v28 = v12[1323];
    v43 = v12[1327];
    v44 = v12[1321];
    v29 = v12[1320];
    v30 = v12[1137];

    v31 = sub_C9F8();
    v29(v31);
    sub_8284(v30 + 64, (v12 + 459));
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334((v12 + 459));
    v32 = sub_38E20();
    v33(v32);
  }

  sub_37E68();
  sub_38014();

  sub_C9BC();
  sub_8CC0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_30624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  v61 = v60[1318];
  sub_38450();
  v62 = sub_38408();
  v61(v62);
  sub_16DBDC();
  v63 = sub_16E37C();
  if (sub_1BA1C(v63))
  {
    v64 = sub_1BA38();
    sub_1BA50(v64);
    sub_1B9D0(&def_259DC, v65, v66, "Failed executing catWrapperSimple.genericMedicationLogFailed_Dialog, returning nil");
    sub_1BA00();
  }

  v67 = v60[1323];
  v68 = v60[1321];
  v69 = v60[1320];
  sub_386DC();
  v70 = sub_C9F8();
  v69(v70);
  sub_8284(v61 + 64, (v60 + 319));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 319));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_309A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_16D8AC();
  v3 = objc_allocWithZone(v2);
  result = sub_16D89C();
  a1[3] = v2;
  a1[4] = &protocol witness table for MedStorageHelper;
  *a1 = result;
  return result;
}

uint64_t sub_30A08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_37D90);
}

uint64_t sub_30A28@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_16D63C();
  v4 = sub_4348(v3);
  __chkstk_darwin(v4);
  sub_4304();
  sub_C1F30(a1);
  v5 = type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_38F2C(v5);
  sub_38E5C();
  v6 = sub_16D58C();
  a1[8] = v1;
  a1[9] = &off_1BA5B0;
  a1[5] = v6;
  v7 = type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_38F2C(v7);
  sub_38E5C();
  v8 = sub_16D58C();
  a1[13] = v1;
  a1[14] = &off_1BC5D0;
  a1[10] = v8;
  v9 = type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_38F2C(v9);
  sub_38E5C();
  result = sub_16D58C();
  a1[18] = v1;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

uint64_t sub_30B2C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v4 = sub_16D63C();
  v5 = sub_4348(v4);
  __chkstk_darwin(v5);
  sub_4304();
  v6 = a1(0);
  sub_38F2C(v6);
  v7 = sub_38E5C();
  return a2(v7);
}

uint64_t sub_30BB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_16DBEC();
  sub_42F0();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  sub_16D21C();
  if (sub_16D20C())
  {
    sub_16D1EC();

    sub_16C31C();

    if (*(&v24 + 1))
    {
      sub_17464(&v23, v26);
      sub_16DBBC();
      sub_385D8();
      swift_beginAccess();
      sub_8B60();
      v13();
      v14 = sub_16DBDC();
      v15 = sub_16E36C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = sub_1BA38();
        *v16 = 0;
        _os_log_impl(&def_259DC, v14, v15, "SpecificMedLoggingFlow: Registering corrections flow", v16, 2u);
        sub_8A2C(v16);
      }

      (*(v6 + 8))(v12, v4);
      sub_8388(v2 + 360, v22);
      sub_2D20(v22, v22[3]);
      sub_BDE9C(a1, &v23);
      sub_2D64(v22);
      sub_2D20(v26, v26[3]);
      sub_16C30C();
      sub_2D64(&v23);
      return sub_2D64(v26);
    }
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
  }

  sub_8748(&v23, &qword_1C6790, &qword_171C70);
  sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  sub_8B60();
  v18();
  v19 = sub_16DBDC();
  v20 = sub_16E37C();
  if (sub_38670(v20))
  {
    v21 = sub_1BA38();
    *v21 = 0;
    _os_log_impl(&def_259DC, v19, a1, "SpecificMedLoggingFlow: No corrections client available. Continuing without registering corrections flow.", v21, 2u);
    sub_8A2C(v21);
  }

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_30EA0(uint64_t a1)
{
  v2 = sub_2440(&qword_1C6780, &qword_176710);
  sub_42F0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v6);
  v8 = &v81 - v7;
  v9 = sub_16DBEC();
  sub_42F0();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v13);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v14);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v15);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v16);
  v18 = (&v81 - v17);
  v19 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v94 = v11;
  v20 = *(v11 + 16);
  v88 = v9;
  v93 = v11 + 16;
  v92 = v20;
  v20(v18, v19, v9);
  v91 = v4;
  v22 = *(v4 + 16);
  v21 = (v4 + 16);
  v89 = a1;
  v23 = v2;
  v87 = v22;
  v22(v8, a1, v2);
  v24 = sub_16DBDC();
  v25 = sub_16E36C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = sub_8BD8();
    v27 = sub_38D7C(v26);
    v84 = v19;
    v83 = v27;
    v95[0] = v27;
    *v18 = 136315138;
    sub_38940(&qword_1C6788, &qword_1C6780, &qword_176710);
    v28 = sub_16E68C();
    v30 = v29;
    v31 = *(v91 + 8);
    v31(v8, v23);
    v32 = sub_3AB7C(v28, v30, v95);

    v33 = v82;
    *(v82 + 4) = v32;
    _os_log_impl(&def_259DC, v24, v25, "Received response from PromptForValueFlowAsync for LogConfirmationAsScheduledStrategy: %s", v33, 0xCu);
    v34 = v83;
    sub_2D64(v83);
    v35 = v34;
    v19 = v84;
    sub_8A2C(v35);
    sub_1BA00();

    v36 = v31;
  }

  else
  {

    v36 = *(v91 + 8);
    v36(v8, v2);
  }

  v37 = *(v94 + 8);
  v38 = v88;
  v37(v18, v88);
  v39 = v90;
  v87(v90, v89, v23);
  v40 = sub_38E38();
  if (v41(v40) != enum case for PromptResult.answered<A>(_:))
  {
    v49 = sub_38E38();
    (v36)(v49);
    sub_385D8();
    swift_beginAccess();
    v50 = sub_38B08(&v98);
    v51(v50);
    v47 = sub_16DBDC();
    v52 = sub_16E37C();
    if (sub_387B0(v52))
    {
LABEL_10:
      v53 = sub_1BA38();
      sub_1BA50(v53);
      sub_385B8();
      _os_log_impl(v54, v55, v56, v57, v58, 2u);
      sub_1BA00();
    }

LABEL_11:

    v37(v21, v38);
    sub_388F0();
    v59 = 8;
    goto LABEL_12;
  }

  v42 = sub_38E38();
  v43(v42);
  if (!v39[1] || (v44 = *v39, , v44 == 2))
  {
    sub_385D8();
    swift_beginAccess();
    v45 = sub_38B08(&v97);
    v46(v45);
    v47 = sub_16DBDC();
    v48 = sub_16E37C();
    if (sub_387B0(v48))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  sub_385D8();
  swift_beginAccess();
  v61 = sub_38DC4(&v96);
  v62 = v19;
  v63 = v92;
  v92(v61, v19, v38);
  v64 = sub_16DBDC();
  v65 = sub_16E36C();
  if (sub_387B0(v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 67109120;
    v66[1] = v44 & 1;
    sub_385B8();
    _os_log_impl(v67, v68, v69, v70, v71, 8u);
    sub_1BA00();
  }

  v37(v86, v38);
  if (v44)
  {
    sub_388F0();
    v59 = 9;
  }

  else
  {
    sub_385D8();
    swift_beginAccess();
    v72 = v85;
    v63(v85, v62, v38);
    v73 = sub_16DBDC();
    v74 = sub_16E37C();
    if (sub_387B0(v74))
    {
      v75 = sub_1BA38();
      sub_1BA50(v75);
      sub_385B8();
      _os_log_impl(v76, v77, v78, v79, v80, 2u);
      sub_1BA00();
    }

    v37(v72, v38);
    sub_388F0();
    v59 = 7;
  }

LABEL_12:
  sub_38A00(v59);
  return sub_376FC(v95);
}

uint64_t sub_31524(uint64_t a1)
{
  v2 = sub_2440(&qword_1C6780, &qword_176710);
  sub_42F0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v6);
  v8 = &v93 - v7;
  v9 = sub_16DBEC();
  sub_42F0();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v13);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v14);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v15);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v16);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v17);
  v19 = (&v93 - v18);
  v20 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v100 = v11;
  v21 = v11[2];
  v103 = v20;
  v102 = v11 + 2;
  v105 = v21;
  v21(v19, v20, v9);
  v22 = *(v4 + 16);
  v23 = v8;
  v24 = v8;
  v101 = a1;
  v25 = v2;
  v99 = v22;
  v22(v24, a1, v2);
  v26 = sub_16DBDC();
  v27 = sub_16E36C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = sub_8BD8();
    v96 = v9;
    v95 = sub_38D7C(v28);
    __dst[0] = v95;
    *v19 = 136315138;
    sub_38940(&qword_1C6788, &qword_1C6780, &qword_176710);
    v29 = sub_16E68C();
    v31 = v30;
    v32 = *(v4 + 8);
    v33 = sub_389C0();
    v32(v33);
    v34 = sub_3AB7C(v29, v31, __dst);

    v35 = v94;
    *(v94 + 4) = v34;
    _os_log_impl(&def_259DC, v26, v27, "Received response from PromptForValueFlowAsync for LogMedGenericMixedStatusConfirmationStrategy: %s", v35, 0xCu);
    v36 = sub_38DC4(&v107);
    sub_2D64(v36);
    sub_8A2C(v34);
    v9 = v96;
    sub_8A2C(v35);

    v37 = v32;
  }

  else
  {

    v37 = *(v4 + 8);
    v37(v23, v2);
  }

  v38 = v100;
  v39 = v100[1];
  v40 = sub_38E38();
  v39(v40);
  v41 = sub_38DC4(&v112);
  v99(v41, v101, v25);
  v42 = sub_389C0();
  if (v43(v42) != enum case for PromptResult.answered<A>(_:))
  {
    v51 = sub_389C0();
    (v37)(v51);
    v52 = v103;
    sub_385D8();
    swift_beginAccess();
    v25 = v98;
    v105(v98, v52, v9);
    v49 = sub_16DBDC();
    v53 = sub_16E37C();
    if (sub_387B0(v53))
    {
LABEL_10:
      v54 = sub_1BA38();
      sub_1BA50(v54);
      sub_385B8();
      _os_log_impl(v55, v56, v57, v58, v59, 2u);
      sub_1BA00();
    }

LABEL_11:

    (v39)(v25, v9);
    sub_388F0();
    sub_38A00(8);
    return sub_376FC(__dst);
  }

  v44 = sub_389C0();
  v45(v44);
  v46 = v103;
  if (!v38[1] || (v25 = *v38, , v25 == 2))
  {
    sub_385D8();
    swift_beginAccess();
    v47 = sub_386C4(&v111);
    v48(v47);
    v49 = sub_16DBDC();
    v50 = sub_16E37C();
    if (sub_387B0(v50))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  sub_385D8();
  swift_beginAccess();
  v61 = sub_38DC4(&v110);
  v105(v61, v46, v9);
  v62 = sub_16DBDC();
  v63 = sub_16E36C();
  if (sub_387B0(v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 67109120;
    v64[1] = v25 & 1;
    sub_385B8();
    _os_log_impl(v65, v66, v67, v68, v69, 8u);
    sub_1BA00();
  }

  (v39)(v97, v9);
  sub_385D8();
  if (v25)
  {
    swift_beginAccess();
    v70 = sub_386C4(&v108);
    v71(v70);
    v72 = sub_16DBDC();
    v73 = sub_16E36C();
    if (sub_387B0(v73))
    {
      v74 = sub_1BA38();
      sub_1BA50(v74);
      sub_385B8();
      _os_log_impl(v75, v76, v77, v78, v79, 2u);
      sub_1BA00();
    }

    (v39)(v25, v9);

    v80 = getMedStatus(from:)();

    if (v80)
    {
      v81 = 4;
    }

    else
    {
      v81 = 3;
    }
  }

  else
  {
    swift_beginAccess();
    v82 = sub_386C4(&v109);
    v83(v82);
    v84 = sub_16DBDC();
    v85 = sub_16E36C();
    if (sub_387B0(v85))
    {
      v86 = sub_1BA38();
      sub_1BA50(v86);
      sub_385B8();
      _os_log_impl(v87, v88, v89, v90, v91, 2u);
      sub_1BA00();
    }

    (v39)(v25, v9);
    v81 = 5;
  }

  v92 = v104;
  memcpy(__dst, (v104 + 224), 0x41uLL);
  *(v104 + 224) = v81;
  *(v92 + 264) = 0;
  *(v92 + 288) = 0x80;
  return sub_376FC(__dst);
}

uint64_t sub_31C5C()
{
  sub_8A88();
  *(v1 + 3056) = v0;
  *(v1 + 3048) = v2;
  *(v1 + 2985) = v3;
  *(v1 + 3040) = v4;
  v5 = type metadata accessor for GenericMedCompletedLogModel(0);
  *(v1 + 3064) = v5;
  sub_4348(v5);
  *(v1 + 3072) = sub_8BC0();
  v6 = type metadata accessor for WellnessLoggingLogGenericMedRejectedConfirmationResultSetParameters(0);
  *(v1 + 3080) = v6;
  sub_4348(v6);
  *(v1 + 3088) = sub_8BC0();
  v7 = sub_16D5CC();
  *(v1 + 3096) = v7;
  sub_888C(v7);
  *(v1 + 3104) = v8;
  *(v1 + 3112) = sub_8C38();
  *(v1 + 3120) = swift_task_alloc();
  v9 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v9);
  *(v1 + 3128) = sub_8BC0();
  v10 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v10);
  *(v1 + 3136) = sub_8C38();
  *(v1 + 3144) = swift_task_alloc();
  v11 = sub_16BF5C();
  *(v1 + 3152) = v11;
  sub_888C(v11);
  *(v1 + 3160) = v12;
  *(v1 + 3168) = sub_8C38();
  *(v1 + 3176) = swift_task_alloc();
  v13 = type metadata accessor for SpecificMedCompletedLogModel(0);
  *(v1 + 3184) = v13;
  sub_4348(v13);
  *(v1 + 3192) = sub_8C38();
  *(v1 + 3200) = swift_task_alloc();
  v14 = type metadata accessor for SnippetHeaderModel(0);
  *(v1 + 3208) = v14;
  sub_4348(v14);
  *(v1 + 3216) = sub_8C38();
  *(v1 + 3224) = swift_task_alloc();
  v15 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v15);
  *(v1 + 3232) = sub_8C38();
  *(v1 + 3240) = swift_task_alloc();
  *(v1 + 3248) = swift_task_alloc();
  *(v1 + 3256) = swift_task_alloc();
  *(v1 + 3264) = swift_task_alloc();
  *(v1 + 3272) = swift_task_alloc();
  v16 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v16);
  *(v1 + 3280) = sub_8C38();
  *(v1 + 3288) = swift_task_alloc();
  *(v1 + 3296) = swift_task_alloc();
  *(v1 + 3304) = swift_task_alloc();
  v17 = sub_16DBEC();
  *(v1 + 3312) = v17;
  sub_888C(v17);
  *(v1 + 3320) = v18;
  *(v1 + 3328) = sub_8C38();
  *(v1 + 3336) = swift_task_alloc();
  *(v1 + 3344) = swift_task_alloc();
  *(v1 + 3352) = swift_task_alloc();
  *(v1 + 3360) = swift_task_alloc();
  *(v1 + 3368) = swift_task_alloc();
  *(v1 + 3376) = swift_task_alloc();
  *(v1 + 3384) = swift_task_alloc();
  *(v1 + 3392) = swift_task_alloc();
  v19 = sub_16C46C();
  *(v1 + 3400) = v19;
  sub_888C(v19);
  *(v1 + 3408) = v20;
  *(v1 + 3416) = sub_8C38();
  *(v1 + 3424) = swift_task_alloc();
  v21 = sub_16C7BC();
  *(v1 + 3432) = v21;
  sub_888C(v21);
  *(v1 + 3440) = v22;
  *(v1 + 3448) = sub_8C38();
  *(v1 + 3456) = swift_task_alloc();
  v23 = sub_17960();

  return _swift_task_switch(v23);
}

uint64_t sub_32090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_38E68();
  a47 = v50;
  a48 = v51;
  a46 = v48;
  v52 = *(v48 + 3424);
  v53 = *(v48 + 3416);
  v54 = *(v48 + 3408);
  v55 = *(v48 + 3400);
  v56 = *(v48 + 3320);
  v57 = *(v48 + 2985);
  sub_16C43C();
  v58 = *(v54 + 16);
  *(v48 + 3464) = v58;
  *(v48 + 3472) = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v58(v53, v52, v55);
  sub_38594();
  sub_16C75C();
  *(v48 + 3480) = *(v54 + 8);
  *(v48 + 3488) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v59 = sub_38E50();
  v60(v59);
  *(v48 + 3496) = sub_16DBBC();
  v61 = (v56 + 16);
  v62 = *(v48 + 3048);
  if (v57 == 5)
  {
    sub_385D8();
    swift_beginAccess();
    *(v48 + 3504) = *v61;
    sub_38DB8();
    *(v48 + 3512) = v63;
    sub_8B60();
    v64();
    v65 = v62;
    v66 = sub_16DBDC();
    v67 = sub_16E36C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = *(v48 + 3048);
      v69 = sub_8BD8();
      v61 = swift_slowAlloc();
      a36 = v61;
      *v69 = 136315138;
      v70 = sub_372A0(v68, &selRef_matchingMeds);
      v71 = v70;
      if (v70)
      {
        sub_3B35C(v70);
        sub_38F44();
      }

      else
      {
        v49 = 0;
      }

      v88 = *(v48 + 3392);
      v89 = *(v48 + 3320);
      v90 = *(v48 + 3312);
      *(v48 + 2992) = v49;
      *(v48 + 3000) = v71 == 0;
      sub_2440(&qword_1C6778, &qword_171C30);
      v91 = sub_16E3DC();
      sub_3AB7C(v91, v92, &a36);
      sub_38F44();
      *(v69 + 4) = v49;
      sub_38EA4(&def_259DC, v93, v94, "got .rejectedOverwriteInGroup, starting with %s matchingMeds");
      sub_2D64(v61);
      sub_8A2C(v61);
      sub_38604();

      v83 = *(v89 + 8);
      v83(v88, v90);
    }

    else
    {
      v82 = *(v48 + 3320);

      v83 = *(v82 + 8);
      v84 = sub_38B40();
      (v83)(v84);
    }

    *(v48 + 3520) = v83;
    v95 = sub_372A0(*(v48 + 3048), &selRef_matchingMeds);
    if (!v95)
    {
      goto LABEL_15;
    }

    v96 = sub_3B35C(v95);

    if (v96 == 1)
    {
      v102 = *(v48 + 3048);
      *(v48 + 3576) = *(*(v48 + 3056) + 336);

      v103 = sub_372A0(v102, &selRef_matchingMeds);
      if (v103 && (v104 = sub_9AE60(v103), , v104) && (sub_16B9FC(v104), v105))
      {
        sub_16E23C();

        v106 = 0;
      }

      else
      {
        v106 = 1;
      }

      sub_214C(*(v48 + 3296), v106, 1, *(v48 + 3096));
      v127 = swift_task_alloc();
      *(v48 + 3584) = v127;
      *v127 = v48;
      v127[1] = sub_33308;
      goto LABEL_29;
    }

    if (!v96)
    {
LABEL_15:
      *(v48 + 3528) = *(*(v48 + 3056) + 336);
      sub_8AB4();
      sub_214C(v97, v98, v99, v100);

      v101 = swift_task_alloc();
      *(v48 + 3536) = v101;
      *v101 = v48;
      v101[1] = sub_329B4;
LABEL_29:
      sub_38AD0();

      return sub_166794();
    }

    v107 = sub_372A0(*(v48 + 3048), &selRef_matchingMeds);
    if (v107)
    {
      v108 = *(v48 + 3096);
      v109 = *(v48 + 3056);
      sub_3B35C(v107);

      *(v48 + 3704) = *(v109 + 336);
      sub_8AB4();
      sub_214C(v110, v111, v112, v108);

      v113 = swift_task_alloc();
      *(v48 + 3712) = v113;
      *v113 = v48;
      v113[1] = sub_34620;
      goto LABEL_29;
    }

    sub_385F4();
    v129 = *(v48 + 3344);
    sub_385D8();
    swift_beginAccess();
    v130 = sub_38408();
    (v61)(v130);
    sub_16DBDC();
    v131 = sub_16E37C();
    if (sub_1BA1C(v131))
    {
      v132 = sub_1BA38();
      sub_1BA50(v132);
      sub_1B9D0(&def_259DC, v133, v134, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
      sub_1BA00();
    }

    v135 = *(v48 + 3520);
    v154 = *(v48 + 3456);
    v136 = *(v48 + 3440);
    v137 = *(v48 + 3432);
    sub_38724();
    v138 = sub_386B4();
    v135(v138);
    sub_8284(v129 + 64, v48 + 976);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v48 + 976);
    (*(v136 + 8))(v154, v137);
    sub_37F20();
    sub_3815C();
    v147 = *(v48 + 3168);
    v148 = *(v48 + 3144);
    v149 = *(v48 + 3136);
    v150 = *(v48 + 3128);
    v151 = *(v48 + 3120);
    v152 = *(v48 + 3112);
    v153 = *(v48 + 3088);
    v155 = *(v48 + 3072);

    sub_C9BC();
    sub_38AD0();

    return v140(v139, v140, v141, v142, v143, v144, v145, v146, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v147, v148, v149, v150, v151, v152, v153, v155, a36, a37, a38, a39, a40);
  }

  else
  {
    sub_385D8();
    swift_beginAccess();
    *(v48 + 3768) = *v61;
    sub_38DB8();
    *(v48 + 3776) = v72;
    sub_8B60();
    v73();
    v74 = v62;
    v75 = sub_16DBDC();
    v76 = sub_16E36C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = *(v48 + 3048);
      v78 = sub_8BD8();
      v79 = swift_slowAlloc();
      a36 = v79;
      *v78 = 136315138;
      v80 = sub_372A0(v77, &selRef_matchingMeds);
      v81 = v80;
      if (v80)
      {
        sub_3B35C(v80);
        sub_38F44();
      }

      else
      {
        v49 = 0;
      }

      v114 = *(v48 + 3336);
      v115 = *(v48 + 3320);
      v116 = *(v48 + 3312);
      *(v48 + 2976) = v49;
      *(v48 + 2984) = v81 == 0;
      sub_2440(&qword_1C6778, &qword_171C30);
      v117 = sub_16E3DC();
      sub_3AB7C(v117, v118, &a36);
      sub_38F44();
      *(v78 + 4) = v49;
      sub_38EA4(&def_259DC, v119, v120, "didn't get .rejectedOverwriteInGroup, starting with %s matchingMeds");
      sub_2D64(v79);
      sub_8A2C(v79);
      sub_38604();

      v86 = *(v115 + 8);
      v86(v114, v116);
    }

    else
    {
      v85 = *(v48 + 3320);

      v86 = *(v85 + 8);
      v87 = sub_38B40();
      (v86)(v87);
    }

    *(v48 + 3784) = v86;
    v121 = *(v48 + 3056);

    *(v48 + 2986) = getMedStatus(from:)() & 1;

    *(v48 + 3792) = *(v121 + 336);

    v122 = swift_task_alloc();
    *(v48 + 3800) = v122;
    *v122 = v48;
    sub_38A20(v122);
    sub_38AD0();

    return sub_1658EC(v123, v124);
  }
}

uint64_t sub_329B4()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *v2;
  sub_38440();
  *v6 = v5;
  *(v8 + 3544) = v7;

  sub_8C88();
  v9 = *(v1 + 3304);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_32B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_C9EC();
  v13 = *(v12 + 3056);
  v14 = [*(v12 + 3544) catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_16C7AC();
  sub_8388(v13 + 24, v12 + 1736);
  sub_8284(v13 + 64, v12 + 1136);
  sub_8388(v13 + 296, v12 + 1656);
  *(v12 + 3552) = *(v13 + 336);
  *(v12 + 3560) = *(v13 + 344);

  swift_task_alloc();
  sub_179E8();
  *(v12 + 3568) = v15;
  *v15 = v16;
  v15[1] = sub_32C64;
  sub_385E4();
  sub_38F74();

  return sub_9AEDC();
}

uint64_t sub_32C64()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 1656));
  sub_C938(v2 + 1136);
  sub_2D64((v2 + 1736));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_32D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  sub_38C90();
  sub_38E2C();
  if (*(v44 + 2000))
  {
    v46 = *(v44 + 3544);
    sub_17464((v44 + 1976), v44 + 2056);
    sub_8388(v44 + 2056, v44 + 2256);
    sub_387F4();
    swift_allocObject();
    sub_3888C((v44 + 2256));
    v47 = sub_16C1DC();
    sub_38964(v47);
    *(v44 + 3032) = sub_384FC();
    sub_16C4EC();

    sub_2D64((v44 + 2056));
    v48 = sub_C9F8();
    v49(v48);
  }

  else
  {
    sub_385F4();
    sub_8748(v44 + 1976, &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v50 = sub_38408();
    v45(v50);
    v51 = sub_16DBDC();
    v52 = sub_16E36C();
    if (sub_1BA1C(v52))
    {
      v53 = sub_1BA38();
      sub_1BA50(v53);
      sub_1B9D0(&def_259DC, v54, v55, "Couldn't create output, returning GenericErrorFlow");
      sub_1BA00();
    }

    v56 = *(v44 + 3544);
    v57 = *(v44 + 3520);
    v58 = *(v44 + 3440);
    a34 = *(v44 + 3432);
    a35 = *(v44 + 3456);
    v59 = *(v44 + 3056);

    v60 = sub_387CC();
    v57(v60);
    sub_8284(v59 + 64, v44 + 16);
    sub_82E0();
    sub_16C4EC();

    sub_8334(v44 + 16);
    (*(v58 + 8))(a35, a34);
  }

  sub_37F20();
  sub_3815C();
  sub_384B8();

  sub_C9BC();
  sub_38C74();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_330D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3884C();
  sub_38980();
  sub_385F4();
  v40 = *(v38 + 3376);
  sub_385D8();
  swift_beginAccess();
  v41 = sub_38408();
  v39(v41);
  sub_16DBDC();
  v42 = sub_16E36C();
  if (sub_1BA1C(v42))
  {
    v43 = sub_1BA38();
    sub_1BA50(v43);
    sub_1B9D0(&def_259DC, v44, v45, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_1BA00();
  }

  v46 = *(v38 + 3520);
  sub_38620();
  sub_38724();
  v47 = sub_386B4();
  v46(v47);
  sub_8284(v40 + 64, v38 + 656);
  sub_82E0();
  sub_16C4EC();
  sub_8334(v38 + 656);
  v48 = sub_38930();
  v49(v48);
  sub_37F20();
  sub_37F54();

  sub_C9BC();
  sub_387D8();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_33308()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *v2;
  sub_38440();
  *v6 = v5;
  *(v8 + 3592) = v7;

  sub_8C88();
  v9 = *(v1 + 3296);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_3347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_C9EC();
  v13 = 0xD000000000000010;
  v14 = *(v12 + 3056);
  v15 = [*(v12 + 3592) catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_16C7AC();
  sub_8388(v14 + 24, v12 + 2296);
  sub_3820C((v12 + 2296));
  v16 = sub_17970();
  v17(v16);
  sub_38138((v12 + 2336));
  if ((sub_16C40C() & 1) == 0)
  {
    sub_8388(v14 + 24, v12 + 2376);
    sub_3820C((v12 + 2376));
    v18 = sub_17970();
    v19(v18);
    sub_38138((v12 + 2416));
    sub_16C3FC();
    sub_2D64((v12 + 2416));
    sub_2D64((v12 + 2376));
  }

  sub_2D64((v12 + 2336));
  sub_2D64((v12 + 2296));
  sub_16BE8C();
  sub_8388(v14 + 24, v12 + 2456);
  sub_3820C((v12 + 2456));
  v20 = sub_17970();
  v21(v20);
  sub_38138((v12 + 2496));
  if (sub_16C40C())
  {
    sub_2D64((v12 + 2496));
    sub_2D64((v12 + 2456));
    v22 = "calendarIdentifier";
  }

  else
  {
    sub_8388(v14 + 24, v12 + 2536);
    sub_3820C((v12 + 2536));
    v23 = sub_17970();
    v24(v23);
    sub_38138((v12 + 2576));
    sub_16C3FC();
    sub_2D64((v12 + 2576));
    sub_2D64((v12 + 2536));
    sub_2D64((v12 + 2496));
    sub_2D64((v12 + 2456));
    sub_38CE8();
    if (v25)
    {
      v13 = v26;
    }

    if (v25)
    {
      v22 = v28;
    }

    else
    {
      v22 = v27;
    }
  }

  *(v12 + 3608) = v22;
  *(v12 + 3600) = v13;
  v29 = swift_task_alloc();
  *(v12 + 3616) = v29;
  *v29 = v12;
  v30 = sub_383B8(v29);

  return sub_66A84(v30, v31);
}

uint64_t sub_3375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[453] = v17;
  v14[454] = v18;

  v19 = swift_task_alloc();
  v14[455] = v19;
  *v19 = v16;
  v20 = sub_3822C(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_33878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[456] = v17;
  v14[457] = v18;

  v19 = swift_task_alloc();
  v14[458] = v19;
  *v19 = v16;
  v20 = sub_38398(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_33994()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 3672) = v3;
  *(v1 + 3680) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_33A80()
{
  sub_38C90();
  sub_38E2C();
  v88 = *(v0 + 3680);
  v89 = *(v0 + 3672);
  v1 = *(v0 + 3224);
  v2 = *(v0 + 3208);
  v3 = *(v0 + 3048);
  sub_16E23C();
  sub_38B4C();
  v4 = (v1 + *(v2 + 20));
  *v4 = 0xD000000000000023;
  v4[1] = v5;
  v6 = (v1 + *(v2 + 24));
  *v6 = 0xD000000000000036;
  v6[1] = 0x800000000017BF80;

  v85 = getMedStatus(from:)();

  sub_16BF4C();
  v7 = sub_372A0(v3, &selRef_matchingMeds);
  if (v7 && (v8 = sub_9AE60(v7), , v8))
  {
    v9 = sub_16BA08(v8);
    v77 = v10;
    v78 = v9;
  }

  else
  {
    v77 = 0;
    v78 = 0;
  }

  v11 = sub_372A0(*(v0 + 3048), &selRef_matchingMeds);
  if (v11 && (v12 = sub_9AE60(v11), , v12))
  {
    v71 = sub_16B9FC(v12);
    v72 = v13;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v84 = *(v0 + 3680);
  v81 = *(v0 + 3656);
  v82 = *(v0 + 3648);
  v75 = *(v0 + 3632);
  v76 = *(v0 + 3624);
  v80 = *(v0 + 3608);
  v79 = *(v0 + 3600);
  v87 = *(v0 + 3592);
  v68 = *(v0 + 3264);
  v14 = *(v0 + 3224);
  v15 = *(v0 + 3208);
  v86 = *(v0 + 3200);
  v16 = *(v0 + 3192);
  v17 = *(v0 + 3184);
  v62 = *(v0 + 3176);
  v69 = *(v0 + 3160);
  v70 = *(v0 + 3152);
  v18 = *(v0 + 3144);
  v74 = v18;
  v83 = *(v0 + 3056);
  sub_372FC(*(v0 + 3272), v68);
  *(v0 + 2640) = &type metadata for WellnessFeatureFlagsKey;
  *(v0 + 2648) = sub_3736C();
  *(v0 + 2616) = 4;
  v73 = sub_16C86C();
  sub_2D64((v0 + 2616));
  sub_381F4();
  sub_374DC(v14, v18, v19);
  sub_388E4();
  sub_214C(v20, v21, v22, v15);
  v67 = v17[8];
  v61 = sub_16C11C();
  sub_8AB4();
  sub_214C(v23, v24, v25, v26);
  v60 = v16 + v17[9];
  v27 = (v16 + v17[10]);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = (v16 + v17[11]);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v16 + v17[12]);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v30 = (v16 + v17[13]);
  sub_38B4C();
  *v30 = 0xD000000000000010;
  v30[1] = v31;
  v64 = v17[14];
  *(v16 + v64) = 0;
  v63 = v17[15];
  *(v16 + v63) = 0;
  v65 = (v16 + v17[16]);
  *v65 = 0;
  v65[1] = 0;
  v32 = (v16 + v17[17]);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v16 + v17[18]);
  *v33 = 0;
  v33[1] = 0;
  v66 = v17[19];
  sub_8AB4();
  sub_214C(v34, v35, v36, v15);
  *v16 = v85 & 1;
  *(v16 + 8) = sub_BA66C();
  *(v16 + 16) = v37;
  *(v16 + 24) = v78;
  *(v16 + 32) = v77;
  *(v16 + 40) = v71;
  *(v16 + 48) = v72;
  *v60 = 0;
  *(v60 + 8) = 1;
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v38 = 0x656465654E207341;
  if (v72)
  {
    v38 = v71;
  }

  v39 = 0xE900000000000064;
  if (v72)
  {
    v39 = v72;
  }

  *v28 = 0;
  v28[1] = 0;
  *v29 = v38;
  v29[1] = v39;

  sub_147DA8(v68);
  sub_8748(v68, &qword_1C57F8, &unk_172510);
  (*(v69 + 8))(v62, v70);
  v40 = sub_38744();
  sub_214C(v40, v41, v42, v61);
  sub_38EFC(&qword_1C63F0, &unk_1717F0, v67);
  v43 = 0x646567676F4CLL;
  if (v75)
  {
    v43 = v76;
  }

  *v30 = v79;
  v30[1] = v80 | 0x8000000000000000;
  v44 = 0xE600000000000000;
  if (v75)
  {
    v44 = v75;
  }

  v45 = 0x64657070696B53;
  if (v81)
  {
    v45 = v82;
  }

  *(v16 + v64) = 0;
  *(v16 + v63) = v73 & 1;
  v46 = 0xE700000000000000;
  if (v81)
  {
    v46 = v81;
  }

  *v65 = v43;
  v65[1] = v44;
  v47 = v89;
  if (!v88)
  {
    v47 = 0x6E656B6154;
  }

  *v32 = v45;
  v32[1] = v46;
  v48 = 0xE500000000000000;
  if (v88)
  {
    v48 = v84;
  }

  *v33 = v47;
  v33[1] = v48;
  sub_3769C(v74, v16 + v66, &dword_1C63F8, &qword_171800);
  sub_37478(v16, v86);
  sub_8388(v83 + 296, v0 + 1336);
  sub_2D20((v0 + 1336), *(v0 + 1360));
  *(v0 + 1320) = type metadata accessor for WellnessSnippets(0);
  sub_381DC();
  *(v0 + 1328) = sub_37C38(v49, 255, v50, &protocol conformance descriptor for WellnessSnippets);
  v51 = sub_9910((v0 + 1296));
  sub_374DC(v86, v51, type metadata accessor for SpecificMedCompletedLogModel);
  swift_storeEnumTagMultiPayload();
  v52 = sub_2440(&qword_1C5ED8, &unk_173090);
  v53 = sub_38DA0(v52);
  *(v0 + 3688) = v53;
  *(v53 + 16) = xmmword_170F70;
  *(v53 + 32) = v87;
  v54 = v87;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 3696) = v55;
  *v55 = v56;
  v55[1] = sub_3406C;
  sub_38C74();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v57);
}

uint64_t sub_3406C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 1296));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_3416C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  sub_38C90();
  sub_38E2C();
  v45 = *(v44 + 3592);
  v62 = *(v44 + 3456);
  v46 = *(v44 + 3440);
  v47 = *(v44 + 3432);
  v48 = *(v44 + 3272);
  v49 = *(v44 + 3224);
  v50 = *(v44 + 3200);
  sub_2D64((v44 + 1336));
  sub_8388(v44 + 2656, v44 + 2216);
  sub_387F4();
  swift_allocObject();
  sub_3888C((v44 + 2216));
  v51 = sub_16C1DC();
  sub_389CC(v51);
  *(v44 + 3008) = sub_384FC();
  sub_16C4EC();

  sub_2D64((v44 + 2656));
  sub_375C0(v50, type metadata accessor for SpecificMedCompletedLogModel);
  sub_381C4();
  sub_375C0(v49, v52);
  sub_8748(v48, &qword_1C57F8, &unk_172510);
  (*(v46 + 8))(v62, v47);

  sub_37F20();
  sub_3815C();
  sub_384B8();

  sub_C9BC();
  sub_38C74();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, v62, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_343EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3884C();
  sub_38980();
  sub_385F4();
  v40 = *(v38 + 3368);
  sub_385D8();
  swift_beginAccess();
  v41 = sub_38408();
  v39(v41);
  sub_16DBDC();
  v42 = sub_16E36C();
  if (sub_1BA1C(v42))
  {
    v43 = sub_1BA38();
    sub_1BA50(v43);
    sub_1B9D0(&def_259DC, v44, v45, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_1BA00();
  }

  v46 = *(v38 + 3520);
  sub_38620();
  sub_38724();
  v47 = sub_386B4();
  v46(v47);
  sub_8284(v40 + 64, v38 + 176);
  sub_82E0();
  sub_16C4EC();
  sub_8334(v38 + 176);
  v48 = sub_38930();
  v49(v48);
  sub_37F20();
  sub_37F54();

  sub_C9BC();
  sub_387D8();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_34620()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *v2;
  sub_38440();
  *v6 = v5;
  *(v8 + 3720) = v7;

  sub_8C88();
  v9 = *(v1 + 3288);
  if (v0)
  {

    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v9, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_34F14()
{
  sub_C9EC();
  v3 = v2;
  sub_C9D4();
  v5 = v4;
  sub_38388();
  *v6 = v5;
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v5 + 3752) = v0;

  if (!v0)
  {
    *(v5 + 3760) = v3;
  }

  sub_8ACC();
  sub_38F74();

  return _swift_task_switch(v9);
}

uint64_t sub_35040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_38E68();
  v41 = v40[470];
  v42 = v40[432];
  v43 = v40[430];
  v87 = v40[429];
  v83 = v40[465];
  v85 = v40[407];
  v44 = v40[388];
  v79 = v40[387];
  v81 = v40[390];
  v45 = v40[382];
  v46 = v40[381];
  sub_3898C(v40[386]);

  sub_8388(v45 + 64, (v40 + 272));
  sub_2D20(v40 + 272, v40[275]);
  sub_16C2FC();
  sub_2D64(v40 + 272);
  sub_16C4FC();

  (*(v44 + 8))(v81, v79);
  sub_8748(v85, &qword_1C57F8, &unk_172510);
  (*(v43 + 8))(v42, v87);

  sub_37F20();
  v58 = v48;
  v59 = v47;
  v60 = v40[416];
  v61 = v40[413];
  v62 = v40[412];
  v63 = v40[411];
  v64 = v40[410];
  v65 = v40[409];
  v66 = v40[408];
  v67 = v40[407];
  v68 = v40[406];
  v69 = v40[405];
  v70 = v40[404];
  v71 = v40[403];
  v72 = v40[402];
  v73 = v40[400];
  v74 = v40[399];
  v75 = v40[397];
  v76 = v40[396];
  v77 = v40[393];
  v78 = v40[392];
  v80 = v40[391];
  v82 = v40[390];
  v84 = v40[389];
  v86 = v40[386];
  v88 = v40[384];

  sub_C9BC();
  sub_38AD0();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v80, v82, v84, v86, v88, a37, a38, a39, a40);
}

uint64_t sub_3535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3884C();
  sub_38980();
  v39 = v38[438];
  v40 = v38[381];
  sub_3898C(v38[386]);

  sub_385D8();
  swift_beginAccess();
  v41 = sub_38DF0();
  v39(v41);
  v42 = sub_16DBDC();
  v43 = sub_16E37C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = sub_1BA38();
    *v44 = 0;
    _os_log_impl(&def_259DC, v42, v43, "Couldn't create loggenericmedrejectedconfirmationresultset pattern, returning GenericErrorFlow", v44, 2u);
    sub_8A2C(v44);
  }

  v65 = v38[432];
  v66 = v38[466];
  v45 = v38[430];
  v46 = v38[420];
  v47 = v38[415];
  v48 = v38[414];
  v63 = v38[407];
  v64 = v38[429];
  v61 = v38[465];
  v62 = v38[390];
  v49 = v38[388];
  v50 = v38[387];
  v51 = v38[382];

  (*(v47 + 8))(v46, v48);
  sub_8284(v51 + 64, (v38 + 62));
  sub_82E0();
  sub_16C4EC();

  sub_8334((v38 + 62));
  (*(v49 + 8))(v62, v50);
  sub_8748(v63, &qword_1C57F8, &unk_172510);
  (*(v45 + 8))(v65, v64);

  sub_37F20();
  sub_37F54();

  sub_C9BC();
  sub_387D8();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v61, v62, v63, v64, v65, v66, a35, a36, a37, a38);
}

uint64_t sub_35678()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v3 = v2;
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 3808) = v6;

  sub_38A38();
  if (v0)
  {
  }

  sub_385C8();

  return _swift_task_switch(v8);
}

uint64_t sub_357A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_3868C();
  sub_38664();
  v47 = v20[476];
  v21 = v20[435];
  v22 = v20[433];
  v23 = v20[428];
  v24 = v20[427];
  v25 = v20[425];
  v26 = v20[382];
  sub_16C43C();
  v27 = sub_38DF0();
  v22(v27);
  sub_16C75C();
  v21(v23, v25);
  sub_16C7AC();
  v28 = [v47 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v26 + 24, (v20 + 267));
  sub_3820C(v20 + 267);
  v29 = sub_17970();
  v30(v29);
  sub_38138(v20 + 262);
  if ((sub_16C40C() & 1) == 0)
  {
    sub_8388(v26 + 24, (v20 + 252));
    sub_3820C(v20 + 252);
    v31 = sub_17970();
    v32(v31);
    sub_38138(v20 + 222);
    sub_16C3FC();
    sub_2D64(v20 + 222);
    sub_2D64(v20 + 252);
  }

  sub_2D64(v20 + 262);
  sub_2D64(v20 + 267);
  sub_38E44();
  sub_16BE8C();
  sub_8388(v26 + 24, (v20 + 212));
  sub_3820C(v20 + 212);
  v33 = sub_17970();
  v34(v33);
  sub_38138(v20 + 202);
  if (sub_16C40C())
  {
    sub_2D64(v20 + 202);
    sub_2D64(v20 + 212);
    v35 = "calendarIdentifier";
  }

  else
  {
    sub_8388(v26 + 24, (v20 + 337));
    sub_3820C(v20 + 337);
    v36 = sub_17970();
    v37(v36);
    sub_38138(v20 + 172);
    sub_16C3FC();
    sub_2D64(v20 + 172);
    sub_2D64(v20 + 337);
    sub_2D64(v20 + 202);
    sub_2D64(v20 + 212);
    sub_38CE8();
    if (v38)
    {
      v24 = v39;
    }

    if (v38)
    {
      v35 = v41;
    }

    else
    {
      v35 = v40;
    }
  }

  v20[478] = v35;
  v20[477] = v24;
  v42 = swift_task_alloc();
  v20[479] = v42;
  *v42 = v20;
  sub_383B8(v42);
  sub_8CC0();

  return sub_66A84(v43, v44);
}

uint64_t sub_35AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[480] = v17;
  v14[481] = v18;

  v19 = swift_task_alloc();
  v14[482] = v19;
  *v19 = v16;
  v20 = sub_3822C(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_35C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[483] = v17;
  v14[484] = v18;

  v19 = swift_task_alloc();
  v14[485] = v19;
  *v19 = v16;
  v20 = sub_38398(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_35D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_8A88();
  sub_C9D4();
  v14 = v13;
  sub_38388();
  *v15 = v14;
  v16 = *v12;
  *v15 = v16;
  v14[486] = v17;
  v14[487] = v18;

  v19 = swift_task_alloc();
  v14[488] = v19;
  *v19 = v16;
  v20 = sub_38554(v19);

  return sub_66A84(v20, v21);
}

uint64_t sub_35E54()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  v4[489] = v8;

  v4[490] = v2;
  v9 = swift_task_alloc();
  v4[491] = v9;
  *v9 = v6;
  sub_3853C(v9);

  return sub_66E84();
}

uint64_t sub_35F78()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v1[369] = v0;
  v1[370] = v3;
  v1[371] = v4;
  sub_38800();
  v5 = *v0;
  sub_C990();
  *v6 = v5;
  *(v8 + 3936) = v7;

  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_364F0()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 1536));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_365F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  sub_38C90();
  sub_38E2C();
  v45 = *(v44 + 3808);
  v46 = *(v44 + 3448);
  v47 = *(v44 + 3440);
  v48 = *(v44 + 3432);
  v49 = *(v44 + 3240);
  v50 = *(v44 + 3216);
  v63 = *(v44 + 3456);
  v64 = *(v44 + 3072);
  sub_2D64((v44 + 1496));
  sub_8388(v44 + 1456, v44 + 1576);
  sub_387F4();
  swift_allocObject();
  sub_3888C((v44 + 1576));
  v51 = sub_16C1DC();
  sub_8D14(v51);
  *(v44 + 3024) = sub_384FC();
  sub_16C4EC();

  sub_2D64((v44 + 1456));
  sub_381C4();
  sub_375C0(v50, v52);
  sub_8748(v49, &qword_1C57F8, &unk_172510);
  v53 = *(v47 + 8);
  v53(v46, v48);
  v53(v63, v48);
  sub_38418();

  sub_37F20();
  sub_3815C();
  sub_384B8();

  sub_C9BC();
  sub_38C74();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v63, v64, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_36874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3884C();
  sub_38980();
  v39 = v38[471];
  v40 = v38[416];
  sub_385D8();
  swift_beginAccess();
  v41 = sub_38408();
  v39(v41);
  sub_16DBDC();
  v42 = sub_16E37C();
  if (sub_1BA1C(v42))
  {
    v43 = sub_1BA38();
    sub_1BA50(v43);
    sub_1B9D0(&def_259DC, v44, v45, "Failed executing catWrapperSimple.genericMedicationCompletedLog_Dialog, returning nil");
    sub_1BA00();
  }

  v46 = v38[473];
  sub_38620();
  sub_38724();
  v47 = sub_386B4();
  v46(v47);
  sub_8284(v40 + 64, (v38 + 42));
  sub_82E0();
  sub_16C4EC();
  sub_8334((v38 + 42));
  v48 = sub_38930();
  v49(v48);
  sub_37F20();
  sub_37F54();

  sub_C9BC();
  sub_387D8();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}