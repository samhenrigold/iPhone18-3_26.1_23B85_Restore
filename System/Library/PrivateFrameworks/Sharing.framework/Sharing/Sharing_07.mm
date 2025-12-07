unint64_t sub_1A980101C()
{
  result = qword_1EB3B2398;
  if (!qword_1EB3B2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2398);
  }

  return result;
}

unint64_t sub_1A9801070()
{
  result = qword_1EB3B23A0;
  if (!qword_1EB3B23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23A0);
  }

  return result;
}

uint64_t SFNearbySharingInteractionViewState.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B23A8, &qword_1A99962E0);
  v44 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B23B0, &qword_1A99962E8);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B23B8, &qword_1A99962F0);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B23C0, &unk_1A99962F8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1A9800F20();
  v16 = v46;
  sub_1A9977A70();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  v37 = v8;
  v38 = 0;
  v18 = v43;
  v17 = v44;
  v46 = v12;
  v19 = v45;
  v20 = sub_1A9977620();
  v21 = (2 * *(v20 + 16)) | 1;
  v48 = v20;
  v49 = v20 + 32;
  v50 = 0;
  v51 = v21;
  v22 = sub_1A97B297C();
  if (v22 == 3 || v50 != v51 >> 1)
  {
    v25 = sub_1A9977300();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v27 = &type metadata for SFNearbySharingInteractionViewState;
    v28 = v14;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v22)
  {
    v52 = 0;
    sub_1A9801070();
    v28 = v14;
    v30 = v38;
    sub_1A9977530();
    if (!v30)
    {
      (*(v40 + 8))(v10, v37);
      (*(v46 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v31 = 6;
      goto LABEL_17;
    }

LABEL_9:
    (*(v46 + 8))(v28, v11);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  if (v22 != 1)
  {
    v52 = 2;
    sub_1A9800F74();
    v28 = v14;
    v32 = v38;
    sub_1A9977530();
    v33 = v46;
    if (v32)
    {
      goto LABEL_9;
    }

    (*(v17 + 8))(v18, v39);
    (*(v33 + 8))(v14, v11);
    swift_unknownObjectRelease();
    v31 = 7;
LABEL_17:
    v34 = v19;
    goto LABEL_18;
  }

  v52 = 1;
  sub_1A9800FC8();
  v23 = v38;
  sub_1A9977530();
  v24 = v46;
  if (v23)
  {
    (*(v46 + 8))(v14, v11);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  v34 = v19;
  sub_1A98016E4();
  v35 = v41;
  sub_1A99775F0();
  (*(v42 + 8))(v7, v35);
  (*(v24 + 8))(v14, v11);
  swift_unknownObjectRelease();
  v31 = v52;
LABEL_18:
  *v34 = v31;
  return __swift_destroy_boxed_opaque_existential_0Tm(v47);
}

unint64_t sub_1A98016E4()
{
  result = qword_1EB3B23C8;
  if (!qword_1EB3B23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23C8);
  }

  return result;
}

BOOL sub_1A9801768(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t getEnumTagSinglePayload for SFNearbySharingInteractionViewState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SFNearbySharingInteractionViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A9801914(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A9801928(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

unint64_t sub_1A980198C()
{
  result = qword_1EB3B23D0;
  if (!qword_1EB3B23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23D0);
  }

  return result;
}

unint64_t sub_1A98019E4()
{
  result = qword_1EB3B23D8;
  if (!qword_1EB3B23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23D8);
  }

  return result;
}

unint64_t sub_1A9801A3C()
{
  result = qword_1EB3B23E0;
  if (!qword_1EB3B23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23E0);
  }

  return result;
}

unint64_t sub_1A9801A94()
{
  result = qword_1EB3B23E8;
  if (!qword_1EB3B23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23E8);
  }

  return result;
}

unint64_t sub_1A9801AEC()
{
  result = qword_1EB3B23F0;
  if (!qword_1EB3B23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23F0);
  }

  return result;
}

unint64_t sub_1A9801B44()
{
  result = qword_1EB3B23F8;
  if (!qword_1EB3B23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B23F8);
  }

  return result;
}

unint64_t sub_1A9801B9C()
{
  result = qword_1EB3B2400;
  if (!qword_1EB3B2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2400);
  }

  return result;
}

unint64_t sub_1A9801BF4()
{
  result = qword_1EB3B2408;
  if (!qword_1EB3B2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2408);
  }

  return result;
}

unint64_t sub_1A9801C4C()
{
  result = qword_1EB3B2410;
  if (!qword_1EB3B2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2410);
  }

  return result;
}

unint64_t sub_1A9801CA4()
{
  result = qword_1EB3B2418;
  if (!qword_1EB3B2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2418);
  }

  return result;
}

uint64_t sub_1A9801CF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7661776B636F6873 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746E65746E6F63 && a2 == 0xEE00776569766572)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SFAirDropNoticeNotificationsOptions.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1A9977510();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1A9801E94()
{
  sub_1A9977980();
  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t sub_1A9801F08(uint64_t a1)
{
  sub_1A9977980();
  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t sub_1A9801F5C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1A9977510();

  *a2 = v3 != 0;
  return result;
}

uint64_t SFAirDropNoticeLaunchOptions.transferID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1A9802078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726566736E617274 && a2 == 0xEA00000000004449)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A9802108(uint64_t a1)
{
  v2 = sub_1A98022BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9802144(uint64_t a1)
{
  v2 = sub_1A98022BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropNoticeLaunchOptions.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2420, &qword_1A9996790);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98022BC();
  sub_1A9977AA0();
  sub_1A9977690();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A98022BC()
{
  result = qword_1EB3B2428;
  if (!qword_1EB3B2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2428);
  }

  return result;
}

uint64_t SFAirDropNoticeLaunchOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2430, &qword_1A9996798);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98022BC();
  sub_1A9977A70();
  if (!v2)
  {
    v9 = sub_1A99775A0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A980249C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2420, &qword_1A9996790);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98022BC();
  sub_1A9977AA0();
  sub_1A9977690();
  return (*(v3 + 8))(v5, v2);
}

Sharing::SFAirDropLaunchSettings_optional __swiftcall SFAirDropLaunchSettings.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1A980260C()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1 + 1);
  return sub_1A99779B0();
}

uint64_t sub_1A9802684(uint64_t a1)
{
  v2 = *v1;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v2 + 1);
  return sub_1A99779B0();
}

uint64_t SFAirDropNoticeFailure.hashValue.getter()
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](0);
  return sub_1A99779B0();
}

unint64_t sub_1A9802774()
{
  result = qword_1EB3B2438;
  if (!qword_1EB3B2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2438);
  }

  return result;
}

unint64_t sub_1A98027CC()
{
  result = qword_1EB3B2440;
  if (!qword_1EB3B2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2440);
  }

  return result;
}

unint64_t sub_1A9802824()
{
  result = qword_1EB3B2448;
  if (!qword_1EB3B2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2448);
  }

  return result;
}

unint64_t sub_1A98028DC()
{
  result = qword_1EB3B2450;
  if (!qword_1EB3B2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2450);
  }

  return result;
}

unint64_t sub_1A9802934()
{
  result = qword_1EB3B2458;
  if (!qword_1EB3B2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2458);
  }

  return result;
}

unint64_t sub_1A980298C()
{
  result = qword_1EB3B2460;
  if (!qword_1EB3B2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2460);
  }

  return result;
}

uint64_t SFXPCResilientAsyncSequence.init(name:log:body:shouldRetry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for SFXPCResilientAsyncSequence(0, a8, a10, a11);
  v18 = v17[11];
  v19 = sub_1A99764A0();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  v21 = &a9[v17[12]];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &a9[v17[13]];
  *v22 = a6;
  *(v22 + 1) = a7;
  return result;
}

uint64_t sub_1A9802AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  sub_1A9802B3C(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_1A9802B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_defaultActor_initialize();
  v15 = (v7 + qword_1EB3EAF70);
  *v15 = 0;
  v15[1] = 0;
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  v16 = qword_1EB3EAF60;
  v17 = sub_1A99764A0();
  (*(*(v17 - 8) + 32))(v7 + v16, a3, v17);
  v18 = (v7 + qword_1EB3EAF58);
  *v18 = a4;
  v18[1] = a5;
  v19 = (v7 + qword_1EB3EAF68);
  *v19 = a6;
  v19[1] = a7;
  return v7;
}

uint64_t SFXPCResilientAsyncSequence.AsyncIterator.next()(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *v1;
  v3 = sub_1A99773D0();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v4 = sub_1A99773E0();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9802D60, v1, 0);
}

uint64_t sub_1A9802D60()
{
  v1 = v0[22];
  v2 = v0[23];
  v0[31] = *(v1 + 112);
  v3 = qword_1EB3EAF70;
  v0[32] = *(v1 + 120);
  v0[33] = v3;
  v4 = (v1 + v3);
  v5 = qword_1EB3EAF58;
  v6 = qword_1EB3EAF60;
  v0[34] = qword_1EB3EAF58;
  v0[35] = v6;
  if (*v4)
  {
    v7 = v4[1];
    v0[5] = *v4;
    v0[6] = v7;

    v8 = swift_task_alloc();
    v0[36] = v8;
    v9 = v2[10];
    v0[37] = v9;
    v10 = v2[11];
    v0[38] = v10;
    v11 = v2[12];
    v0[39] = v11;
    type metadata accessor for SFXPCAsyncSequence.AsyncIterator(0, v9, v10, v11);
    *v8 = v0;
    v8[1] = sub_1A9802F44;
    v12 = v0[21];

    return SFXPCAsyncSequence.AsyncIterator.next()(v12);
  }

  else
  {
    v15 = (*(v1 + v5) + **(v1 + v5));
    v14 = swift_task_alloc();
    v0[41] = v14;
    *v14 = v0;
    v14[1] = sub_1A98035AC;

    return v15(v0 + 7);
  }
}

uint64_t sub_1A9802F44()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_1A98039E8;
  }

  else
  {
    v4 = sub_1A9803070;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A9803070()
{
  v10 = v0;
  if ((*(*(v0[37] - 8) + 48))(v0[21], 1) == 1)
  {

    v1 = sub_1A9976480();
    v2 = sub_1A9976F70();

    if (os_log_type_enabled(v1, v2))
    {
      v4 = v0[31];
      v3 = v0[32];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1A97AF148(v4, v3, &v9);
      _os_log_impl(&dword_1A9662000, v1, v2, "XPCResilientAsyncSequence[%s] END. Inner sequence finished", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x1AC58D2C0](v6, -1, -1);
      MEMORY[0x1AC58D2C0](v5, -1, -1);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A980321C()
{
  v37 = v0;
  v1 = *(v0 + 320);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);

  v4 = v1;
  v5 = sub_1A9976480();
  v6 = sub_1A9976F90();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 320);
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = swift_slowAlloc();
    v34 = v3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_1A97AF148(v9, v8, &v36);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_1A9662000, v5, v6, "XPCResilientAsyncSequence[%s] CONTINUE. Recreated sequence after error {error: %@}", v10, 0x16u);
    sub_1A97B06FC(v11, &unk_1EB3B2A50, &unk_1A9999420);
    v15 = v11;
    v3 = v34;
    MEMORY[0x1AC58D2C0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1AC58D2C0](v12, -1, -1);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
  }

  v16 = *(v0 + 312);
  v17 = *(v0 + 320);
  v18 = *(v0 + 296);
  v19 = *(v0 + 304);
  v20 = (*(v0 + 176) + *(v0 + 264));
  *(v0 + 152) = v3;
  *(v0 + 160) = v2;
  type metadata accessor for SFXPCAsyncSequence(0, v18, v19, v16);
  SFXPCAsyncSequence.makeAsyncIterator()();

  v21 = *v20;
  v22 = v20[1];
  *v20 = *(v0 + 136);
  sub_1A967C46C(v21, v22);
  v23 = *(v0 + 176);
  v24 = (v23 + *(v0 + 264));
  if (*v24)
  {
    v25 = *(v0 + 184);
    v26 = v24[1];
    *(v0 + 40) = *v24;
    *(v0 + 48) = v26;

    v27 = swift_task_alloc();
    *(v0 + 288) = v27;
    v28 = v25[10];
    *(v0 + 296) = v28;
    v29 = v25[11];
    *(v0 + 304) = v29;
    v30 = v25[12];
    *(v0 + 312) = v30;
    type metadata accessor for SFXPCAsyncSequence.AsyncIterator(0, v28, v29, v30);
    *v27 = v0;
    v27[1] = sub_1A9802F44;
    v31 = *(v0 + 168);

    return SFXPCAsyncSequence.AsyncIterator.next()(v31);
  }

  else
  {
    v35 = (*(v23 + *(v0 + 272)) + **(v23 + *(v0 + 272)));
    v33 = swift_task_alloc();
    *(v0 + 328) = v33;
    *v33 = v0;
    v33[1] = sub_1A98035AC;

    return v35(v0 + 56);
  }
}

uint64_t sub_1A98035AC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_1A980479C;
  }

  else
  {
    v4 = sub_1A98036D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98036D8()
{
  v26 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = sub_1A9976480();
  v4 = sub_1A9976F90();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1A97AF148(v6, v5, &v25);
    _os_log_impl(&dword_1A9662000, v3, v4, "XPCResilientAsyncSequence[%s] START. Created initial sequence.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1AC58D2C0](v8, -1, -1);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
  }

  v9 = *(v0 + 184);
  v10 = (*(v0 + 176) + *(v0 + 264));
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  type metadata accessor for SFXPCAsyncSequence(0, v9[10], v9[11], v9[12]);
  SFXPCAsyncSequence.makeAsyncIterator()();

  v11 = *v10;
  v12 = v10[1];
  *v10 = *(v0 + 72);
  sub_1A967C46C(v11, v12);
  v13 = *(v0 + 176);
  v14 = (v13 + *(v0 + 264));
  if (*v14)
  {
    v15 = *(v0 + 184);
    v16 = v14[1];
    *(v0 + 40) = *v14;
    *(v0 + 48) = v16;

    v17 = swift_task_alloc();
    *(v0 + 288) = v17;
    v18 = v15[10];
    *(v0 + 296) = v18;
    v19 = v15[11];
    *(v0 + 304) = v19;
    v20 = v15[12];
    *(v0 + 312) = v20;
    type metadata accessor for SFXPCAsyncSequence.AsyncIterator(0, v18, v19, v20);
    *v17 = v0;
    v17[1] = sub_1A9802F44;
    v21 = *(v0 + 168);

    return SFXPCAsyncSequence.AsyncIterator.next()(v21);
  }

  else
  {
    v24 = (*(v13 + *(v0 + 272)) + **(v13 + *(v0 + 272)));
    v23 = swift_task_alloc();
    *(v0 + 328) = v23;
    *v23 = v0;
    v23[1] = sub_1A98035AC;

    return v24(v0 + 56);
  }
}

uint64_t sub_1A98039E8()
{
  v26 = v0;
  v1 = sub_1A9804998(*(v0 + 320));
  v2 = *(v0 + 320);

  v3 = v2;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F70();
  if (v1)
  {

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 320);
      v8 = *(v0 + 248);
      v7 = *(v0 + 256);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25[0] = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_1A97AF148(v8, v7, v25);
      *(v9 + 12) = 2112;
      v12 = v6;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      *v10 = v13;
      _os_log_impl(&dword_1A9662000, v4, v5, "XPCResilientAsyncSequence[%s] RETRY. Recreating sequence {error: %@}", v9, 0x16u);
      sub_1A97B06FC(v10, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x1AC58D2C0](v11, -1, -1);
      MEMORY[0x1AC58D2C0](v9, -1, -1);
    }

    sub_1A99778B0();
    *(v0 + 104) = xmmword_1A9996BB0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1A9803D80, 0, 0);
  }

  else
  {

    if (os_log_type_enabled(v4, v5))
    {
      v14 = *(v0 + 320);
      v16 = *(v0 + 248);
      v15 = *(v0 + 256);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25[0] = v19;
      *v17 = 136315394;
      v20 = sub_1A97AF148(v16, v15, v25);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2112;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v18 = v22;
      _os_log_impl(&dword_1A9662000, v4, v5, "XPCResilientAsyncSequence[%s] FAILED. Non retryable error {error: %@}", v17, 0x16u);
      sub_1A97B06FC(v18, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1AC58D2C0](v19, -1, -1);
      MEMORY[0x1AC58D2C0](v17, -1, -1);
    }

    else
    {
    }

    swift_willThrow();

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1A9803D80()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = sub_1A98052D0(&qword_1EB3AB608, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1A9977890();
  sub_1A98052D0(&unk_1EB3AB610, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1A99773F0();
  v5 = *(v2 + 8);
  v0[43] = v5;
  v0[44] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_1A9803F04;
  v8 = v0[27];
  v7 = v0[28];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1A9803F04()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    (*(v2 + 344))(*(v2 + 216), *(v2 + 192));
    v3 = sub_1A9804290;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 344);
    v7 = *(v2 + 232);
    v6 = *(v2 + 240);
    v8 = *(v2 + 216);
    v9 = *(v2 + 224);
    v10 = *(v2 + 192);
    v11 = *(v2 + 176);
    v5(v8, v10);
    (*(v7 + 8))(v6, v9);
    v3 = sub_1A9804068;
    v4 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1A9804068()
{
  v1 = (v0[22] + v0[34]);
  v4 = (*v1 + **v1);
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_1A9804164;

  return v4(v0 + 15);
}

uint64_t sub_1A9804164()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_1A9804554;
  }

  else
  {
    v4 = sub_1A980321C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A9804290()
{
  v1 = v0[22];
  (*(v0[29] + 8))(v0[30], v0[28]);

  return MEMORY[0x1EEE6DFA0](sub_1A980430C, v1, 0);
}

uint64_t sub_1A980430C()
{
  v21 = v0;
  v1 = v0[46];
  v2 = v0[40];

  v3 = v2;
  v4 = v1;
  v5 = sub_1A9976480();
  v6 = sub_1A9976F70();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[40];
    v9 = v0[31];
    v8 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315650;
    v13 = sub_1A97AF148(v9, v8, &v20);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    *(v10 + 22) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    v11[1] = v17;
    _os_log_impl(&dword_1A9662000, v5, v6, "XPCResilientAsyncSequence[%s] FAILED. Unable to recreate sequence. Throwing iterationError {error: %@, iterationError: %@}", v10, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A50, &unk_1A9999420);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1AC58D2C0](v12, -1, -1);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A9804554()
{
  v21 = v0;
  v1 = v0[48];
  v2 = v0[40];

  v3 = v2;
  v4 = v1;
  v5 = sub_1A9976480();
  v6 = sub_1A9976F70();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[40];
    v9 = v0[31];
    v8 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315650;
    v13 = sub_1A97AF148(v9, v8, &v20);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    *(v10 + 22) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    v11[1] = v17;
    _os_log_impl(&dword_1A9662000, v5, v6, "XPCResilientAsyncSequence[%s] FAILED. Unable to recreate sequence. Throwing iterationError {error: %@, iterationError: %@}", v10, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A50, &unk_1A9999420);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1AC58D2C0](v12, -1, -1);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A980479C()
{
  v17 = v0;
  v1 = v0[42];

  v2 = v1;
  v3 = sub_1A9976480();
  v4 = sub_1A9976F70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[42];
    v7 = v0[31];
    v6 = v0[32];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315394;
    v11 = sub_1A97AF148(v7, v6, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_1A9662000, v3, v4, "XPCResilientAsyncSequence[%s] FAILED. Failed to create initial sequence.  {error: %@}", v8, 0x16u);
    sub_1A97B06FC(v9, &unk_1EB3B2A50, &unk_1A9999420);
    MEMORY[0x1AC58D2C0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
    MEMORY[0x1AC58D2C0](v8, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A9804998(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2470, &qword_1A9996D58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35[-v5];
  v7 = sub_1A9975DF0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v12 = swift_dynamicCast();
  v13 = *(v8 + 56);
  if (v12)
  {
    v13(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    LODWORD(v14) = sub_1A9975DE0();
    v15 = a1;

    v16 = sub_1A9976480();
    v17 = sub_1A9976F90();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36 = v14;
      v14 = v18;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v14 = 136315650;
      *(v14 + 4) = sub_1A97AF148(*(v2 + 112), *(v2 + 120), &v37);
      *(v14 + 12) = 1024;
      v21 = v36;
      *(v14 + 14) = v36 & 1;
      *(v14 + 18) = 2112;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 20) = v23;
      *v19 = v23;
      _os_log_impl(&dword_1A9662000, v16, v17, "XPCResilientAsyncSequence[%s] Evaluated Cocoa Error {isXPCConnectionError: %{BOOL}d, error: %@}", v14, 0x1Cu);
      sub_1A97B06FC(v19, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1AC58D2C0](v20, -1, -1);
      MEMORY[0x1AC58D2C0](v14, -1, -1);

      (*(v8 + 8))(v10, v7);
      LOBYTE(v14) = v21;
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v13(v6, 1, 1, v7);
    sub_1A97B06FC(v6, &qword_1EB3B2470, &qword_1A9996D58);
    v24 = *(v1 + qword_1EB3EAF68);
    if (v24)
    {
      v25 = *(v1 + qword_1EB3EAF68 + 8);

      LOBYTE(v14) = v24(a1);
      v26 = a1;

      v27 = sub_1A9976480();
      v28 = sub_1A9976F90();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = v14;
        v14 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37 = v31;
        *v14 = 136315650;
        *(v14 + 4) = sub_1A97AF148(*(v2 + 112), *(v2 + 120), &v37);
        *(v14 + 12) = 1024;
        *(v14 + 14) = v29 & 1;
        *(v14 + 18) = 2112;
        v32 = a1;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 20) = v33;
        *v30 = v33;
        _os_log_impl(&dword_1A9662000, v27, v28, "XPCResilientAsyncSequence[%s] Evaluated shouldRetryBlock {shouldRetry: %{BOOL}d, error: %@}", v14, 0x1Cu);
        sub_1A97B06FC(v30, &unk_1EB3B2A50, &unk_1A9999420);
        MEMORY[0x1AC58D2C0](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x1AC58D2C0](v31, -1, -1);
        MEMORY[0x1AC58D2C0](v14, -1, -1);
        sub_1A967C46C(v24, v25);

        LOBYTE(v14) = v29;
      }

      else
      {
        sub_1A967C46C(v24, v25);
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14 & 1;
}

uint64_t SFXPCResilientAsyncSequence.AsyncIterator.deinit()
{

  v1 = qword_1EB3EAF60;
  v2 = sub_1A99764A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1A967C46C(*(v0 + qword_1EB3EAF68), *(v0 + qword_1EB3EAF68 + 8));
  sub_1A967C46C(*(v0 + qword_1EB3EAF70), *(v0 + qword_1EB3EAF70 + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SFXPCResilientAsyncSequence.AsyncIterator.__deallocating_deinit()
{
  SFXPCResilientAsyncSequence.AsyncIterator.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1A9804FA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2638;

  return SFXPCResilientAsyncSequence.AsyncIterator.next()(a1);
}

uint64_t SFXPCResilientAsyncSequence.makeAsyncIterator()(uint64_t a1)
{
  v3 = sub_1A99764A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SFXPCResilientAsyncSequence.AsyncIterator(0, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v7 = *v1;
  v8 = v1[1];
  (*(v4 + 16))(v6, v1 + *(a1 + 44), v3);
  v9 = *(a1 + 52);
  v10 = (v1 + *(a1 + 48));
  v11 = *v10;
  v12 = v10[1];
  v13 = v1 + v9;
  v14 = *(v1 + v9);
  v15 = *(v13 + 1);

  sub_1A967C510(v14, v15);
  v16 = swift_allocObject();
  sub_1A9802B3C(v7, v8, v6, v11, v12, v14, v15);
  return v16;
}

uint64_t sub_1A9805194@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = SFXPCResilientAsyncSequence.makeAsyncIterator()(a1);
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t sub_1A98051FC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1A980525C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1A98052D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A980534C(uint64_t a1)
{
  sub_1A99764A0();
  if (v1 <= 0x3F)
  {
    sub_1A97C0020();
    if (v2 <= 0x3F)
    {
      sub_1A9805420(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A9805420(uint64_t a1)
{
  if (!qword_1EB3AB5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2468, qword_1A9996CD0);
    v1 = sub_1A99770A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB3AB5E0);
    }
  }
}

uint64_t sub_1A9805484(uint64_t a1)
{
  result = sub_1A99764A0();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A980555C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B2478);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B2478);
  if (qword_1EB3ACCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3ACCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFAirDropSend.ItemMetadata.fileName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SFAirDropSend.ItemMetadata.fileType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SFAirDropSend.ItemMetadata.fileSubType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SFAirDropSend.ItemMetadata.fileBOMPath.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SFAirDropSend.ItemMetadata.description.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t SFAirDropSend.ItemMetadata.previewImageData.getter()
{
  v1 = *(v0 + 96);
  sub_1A97C1554(v1, *(v0 + 104));
  return v1;
}

__n128 SFAirDropSend.ItemMetadata.init(fileName:fileType:fileSubType:fileSize:fileBOMPath:fileIsDirectory:description:previewImageData:wasString:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, unsigned __int8 a11, __n128 a12, __n128 a13, unsigned __int8 a15)
{
  result = a12;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4].n128_u64[0] = a10;
  a9[4].n128_u8[8] = a11;
  a9[5] = a12;
  a9[6] = a13;
  a9[7].n128_u8[0] = a15;
  return result;
}

uint64_t sub_1A98057A0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656D614E656C6966;
    v6 = 0x54627553656C6966;
    if (a1 != 2)
    {
      v6 = 0x657A6953656C6966;
    }

    if (a1)
    {
      v5 = 0x65707954656C6966;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7470697263736564;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0x6E69727453736177;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x504D4F42656C6966;
    if (a1 != 4)
    {
      v3 = 0x69447349656C6966;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A98058EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A980BBA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9805920(uint64_t a1)
{
  v2 = sub_1A980B824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980595C(uint64_t a1)
{
  v2 = sub_1A980B824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.ItemMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2490, &qword_1A9996D70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = *(v1 + 16);
  v28 = *(v1 + 24);
  v29 = v7;
  v8 = *(v1 + 32);
  v26 = *(v1 + 40);
  v27 = v8;
  v9 = *(v1 + 48);
  v24 = *(v1 + 56);
  v25 = v9;
  v10 = *(v1 + 64);
  v33 = *(v1 + 72);
  v11 = *(v1 + 80);
  v22 = *(v1 + 88);
  v23 = v10;
  v12 = *(v1 + 104);
  v19 = *(v1 + 96);
  v20 = v12;
  v21 = v11;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1A980B824();
  sub_1A9977AA0();
  LOBYTE(v31) = 0;
  v17 = v30;
  sub_1A9977690();
  if (!v17)
  {
    LOBYTE(v31) = 1;
    sub_1A9977650();
    LOBYTE(v31) = 2;
    sub_1A9977650();
    LOBYTE(v31) = 3;
    sub_1A99776C0();
    LOBYTE(v31) = 4;
    sub_1A9977650();
    LOBYTE(v31) = 5;
    sub_1A99776A0();
    LOBYTE(v31) = 6;
    sub_1A9977650();
    v31 = v19;
    v32 = v20;
    v34 = 7;
    sub_1A97C1554(v19, v20);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v31, v32);
    LOBYTE(v31) = 8;
    sub_1A99776A0();
  }

  return (*(v4 + 8))(v6, v16);
}

uint64_t SFAirDropSend.ItemMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24A0, &qword_1A9996D78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980B824();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v51) = 0;
  v10 = sub_1A99775A0();
  v12 = v11;
  LOBYTE(v51) = 1;
  v13 = sub_1A9977550();
  v42 = v14;
  v40 = v13;
  LOBYTE(v51) = 2;
  v39 = sub_1A9977550();
  v41 = v15;
  LOBYTE(v51) = 3;
  v38 = sub_1A99775D0();
  LOBYTE(v51) = 4;
  v16 = sub_1A9977550();
  v36 = v17;
  LOBYTE(v51) = 5;
  v65 = sub_1A99775B0();
  LOBYTE(v51) = 6;
  v18 = sub_1A9977550();
  v37 = 0;
  *(&v35 + 1) = v19;
  *&v35 = v18;
  LOBYTE(v43) = 7;
  sub_1A97B446C();
  v20 = v37;
  sub_1A9977590();
  if (v20)
  {
    v37 = v20;
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v34 = v51;
    v33 = v52;
    v66 = 8;
    v32 = sub_1A99775B0();
    v37 = 0;
    v65 &= 1u;
    v21 = v65;
    (*(v6 + 8))(v8, v5);
    *&v43 = v10;
    *(&v43 + 1) = v12;
    *&v44 = v40;
    v22 = v42;
    *(&v44 + 1) = v42;
    *&v45 = v39;
    v23 = v41;
    *(&v45 + 1) = v41;
    *&v46 = v38;
    v31 = v16;
    *(&v46 + 1) = v16;
    v24 = v36;
    *&v47 = v36;
    BYTE8(v47) = v21;
    v25 = v35;
    v48 = v35;
    *&v49 = v34;
    *(&v49 + 1) = v33;
    v26 = v32 & 1;
    v50 = v32 & 1;
    *(a2 + 112) = v32 & 1;
    v27 = v48;
    *(a2 + 64) = v47;
    *(a2 + 80) = v27;
    *(a2 + 96) = v49;
    v28 = v43;
    v29 = v44;
    v30 = v46;
    *(a2 + 32) = v45;
    *(a2 + 48) = v30;
    *a2 = v28;
    *(a2 + 16) = v29;
    sub_1A980B878(&v43, &v51);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v51 = v10;
    v52 = v12;
    v53 = v40;
    v54 = v22;
    v55 = v39;
    v56 = v23;
    v57 = v38;
    v58 = v31;
    v59 = v24;
    v60 = v65;
    v61 = __PAIR128__(*(&v35 + 1), v25);
    v62 = v34;
    v63 = v33;
    v64 = v26;
    return sub_1A980B8B0(&v51);
  }
}

uint64_t SFAirDropSend.Item.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SFAirDropSend.Item(0) + 20));
  v4 = v3[6];
  v5 = v3[4];
  v20 = v3[5];
  v21 = v4;
  v6 = v3[2];
  v8 = *v3;
  v16 = v3[1];
  v7 = v16;
  v17 = v6;
  v9 = v3[4];
  v11 = v3[2];
  v18 = v3[3];
  v10 = v18;
  v19 = v9;
  v15 = *v3;
  v12 = v3[6];
  *(a1 + 80) = v20;
  *(a1 + 96) = v12;
  *(a1 + 48) = v10;
  *(a1 + 64) = v5;
  *(a1 + 16) = v7;
  *(a1 + 32) = v11;
  v22 = *(v3 + 112);
  *(a1 + 112) = *(v3 + 112);
  *a1 = v8;
  return sub_1A980B878(&v15, v14);
}

__n128 SFAirDropSend.Item.init(url:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A980C870(a1, a3, type metadata accessor for SFSecurityScopedURL);
  v5 = a3 + *(type metadata accessor for SFAirDropSend.Item(0) + 20);
  v6 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v6;
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = *(a2 + 112);
  v7 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v7;
  result = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v5 + 32) = result;
  *(v5 + 48) = v9;
  return result;
}

uint64_t sub_1A9806418()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1A980644C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A9806528(uint64_t a1)
{
  v2 = sub_1A980B92C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9806564(uint64_t a1)
{
  v2 = sub_1A980B92C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Item.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24A8, &qword_1A9996D80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980B92C();
  sub_1A9977AA0();
  v35 = 0;
  type metadata accessor for SFSecurityScopedURL(0);
  sub_1A980CB08(&qword_1EB3B24B8, type metadata accessor for SFSecurityScopedURL, &protocol conformance descriptor for SFSecurityScopedURL);
  sub_1A99776E0();
  if (!v2)
  {
    v10 = v3 + *(type metadata accessor for SFAirDropSend.Item(0) + 20);
    v11 = *(v10 + 80);
    v12 = *(v10 + 48);
    v30 = *(v10 + 64);
    v31 = v11;
    v13 = *(v10 + 80);
    v32 = *(v10 + 96);
    v14 = *(v10 + 16);
    v15 = *(v10 + 48);
    v28 = *(v10 + 32);
    v29 = v15;
    v16 = *(v10 + 16);
    v27[0] = *v10;
    v27[1] = v16;
    v23 = v30;
    v24 = v13;
    v25 = *(v10 + 96);
    v19 = v27[0];
    v20 = v14;
    v33 = *(v10 + 112);
    v26 = *(v10 + 112);
    v21 = v28;
    v22 = v12;
    v34 = 1;
    sub_1A980B878(v27, v17);
    sub_1A980B980();
    sub_1A99776E0();
    v17[4] = v23;
    v17[5] = v24;
    v17[6] = v25;
    v18 = v26;
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v17[3] = v22;
    sub_1A980B8B0(v17);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SFAirDropSend.Item.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for SFSecurityScopedURL(0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24C8, &qword_1A9996D88);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SFAirDropSend.Item(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980B92C();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v22;
  v13 = v11;
  LOBYTE(v25) = 0;
  sub_1A980CB08(&qword_1EB3B24D0, type metadata accessor for SFSecurityScopedURL, &protocol conformance descriptor for SFSecurityScopedURL);
  v14 = v23;
  sub_1A99775F0();
  sub_1A980C870(v24, v13, type metadata accessor for SFSecurityScopedURL);
  v33 = 1;
  sub_1A980B9D4();
  sub_1A99775F0();
  (*(v12 + 8))(v8, v14);
  v15 = v13 + *(v9 + 20);
  v16 = v30;
  *(v15 + 64) = v29;
  *(v15 + 80) = v16;
  *(v15 + 96) = v31;
  *(v15 + 112) = v32;
  v17 = v26;
  *v15 = v25;
  *(v15 + 16) = v17;
  v18 = v28;
  *(v15 + 32) = v27;
  *(v15 + 48) = v18;
  sub_1A980BA28(v13, v21, type metadata accessor for SFAirDropSend.Item);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A980BA90(v13, type metadata accessor for SFAirDropSend.Item);
}

uint64_t SFAirDropSend.ItemPromise.loadHandler.getter()
{
  v1 = *(v0 + 8);
  sub_1A967C510(v1, *(v0 + 16));
  return v1;
}

uint64_t SFAirDropSend.ItemPromise.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v16 = *(v1 + 104);
  v3 = v16;
  v17 = v4;
  v18 = *(v1 + 136);
  v5 = v18;
  v11 = *(v1 + 24);
  v7 = *(v1 + 56);
  v12 = *(v1 + 40);
  v6 = v12;
  v13 = v7;
  v14 = *(v1 + 72);
  v8 = v14;
  v15 = v2;
  *a1 = v11;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_1A980B878(&v11, v10);
}

__n128 SFAirDropSend.ItemPromise.init(task:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 80);
  *(a3 + 88) = *(a2 + 64);
  *(a3 + 104) = v3;
  *(a3 + 120) = *(a2 + 96);
  v4 = *(a2 + 16);
  *(a3 + 24) = *a2;
  *(a3 + 40) = v4;
  result = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a3 + 56) = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = a1;
  *(a3 + 136) = *(a2 + 112);
  *(a3 + 72) = v6;
  return result;
}

__n128 SFAirDropSend.ItemPromise.init(loadHandler:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 80);
  *(a4 + 88) = *(a3 + 64);
  *(a4 + 104) = v4;
  *(a4 + 120) = *(a3 + 96);
  v5 = *(a3 + 16);
  *(a4 + 24) = *a3;
  *(a4 + 40) = v5;
  result = *(a3 + 32);
  v7 = *(a3 + 48);
  *(a4 + 56) = result;
  *a4 = 0;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 136) = *(a3 + 112);
  *(a4 + 72) = v7;
  return result;
}

uint64_t static SFAirDropSend.convertItemPromises(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;

  sub_1A99762B0();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90) + 68));
  *v5 = &unk_1A9996D98;
  v5[1] = v4;
  v6 = *(a2 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1A97BDC04(0, v6, 0);
    v7 = v42;
    v8 = (a2 + 32);
    do
    {
      *&v41[9] = *(v8 + 121);
      v9 = v8[7];
      v40 = v8[6];
      *v41 = v9;
      v10 = v8[5];
      v38 = v8[4];
      v39 = v10;
      v11 = v8[3];
      v36 = v8[2];
      v37 = v11;
      v12 = v8[1];
      v35[0] = *v8;
      v35[1] = v12;
      v33 = v41[24];
      v13 = *&v41[8];
      v14 = *&v41[16];
      v15 = *v41;
      v32 = *(&v40 + 1);
      v31 = v40;
      v16 = *(&v39 + 1);
      v17 = v38;
      v30 = v39;
      v18 = v37;
      v19 = v36;
      v29 = *(&v37 + 1);
      v28 = *(&v12 + 1);
      sub_1A980C124(v35, v34);

      v27 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v13, v14);
      v21 = v20;
      sub_1A980C15C(v35);
      v42 = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1A97BDC04((v22 > 1), v23 + 1, 1);
        v7 = v42;
      }

      *(v7 + 16) = v23 + 1;
      v24 = v7 + 120 * v23;
      *(v24 + 32) = v28;
      *(v24 + 40) = v19;
      *(v24 + 56) = v18;
      *(v24 + 64) = v29;
      *(v24 + 72) = v17;
      *(v24 + 88) = v30;
      *(v24 + 96) = v16;
      *(v24 + 104) = v31;
      v25 = *(v34 + 3);
      *(v24 + 105) = v34[0];
      *(v24 + 108) = v25;
      *(v24 + 112) = v32;
      *(v24 + 120) = v15;
      *(v24 + 128) = v27;
      *(v24 + 136) = v21;
      *(v24 + 144) = v33;
      v8 += 9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1A9806F14(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  v5 = type metadata accessor for SFAirDropSend.Item(0);
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v5 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = *(type metadata accessor for SFSecurityScopedURL(0) - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1A9807038, 0, 0);
}

uint64_t sub_1A9807038()
{
  v5 = *(v0 + 80);
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E8, &qword_1A9996DB8);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1A980714C;

  return MEMORY[0x1EEE6DD58](v0 + 16);
}

uint64_t sub_1A980714C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1A980743C;
  }

  else
  {

    v2 = sub_1A9807268;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9807268()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A97BDBC0(0, v2, 0);
    v5 = v15;
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    do
    {
      v8 = *(v0 + 72);
      v9 = *(v0 + 56);
      sub_1A980BA28(v6, v9, type metadata accessor for SFAirDropSend.Item);
      sub_1A980BA28(v9, v8, type metadata accessor for SFSecurityScopedURL);
      sub_1A980BA90(v9, type metadata accessor for SFAirDropSend.Item);
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A97BDBC0((v10 > 1), v11 + 1, 1);
      }

      v12 = *(v0 + 72);
      *(v15 + 16) = v11 + 1;
      sub_1A980C870(v12, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, type metadata accessor for SFSecurityScopedURL);
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  **(v0 + 24) = v5;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1A980743C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static SFAirDropSend.loadItemPromises(_:customPayload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98074DC, 0, 0);
}

uint64_t sub_1A98074DC()
{
  v5 = *(v0 + 32);
  v1 = *(v0 + 24);
  type metadata accessor for SFAirDropSend.Item(0);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E8, &qword_1A9996DB8);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1A98075FC;

  return MEMORY[0x1EEE6DD58](v0 + 16);
}

uint64_t sub_1A98075FC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1A9807734;
  }

  else
  {

    v2 = sub_1A9807718;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9807734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A980779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[330] = a5;
  v5[329] = a4;
  v5[328] = a3;
  v5[327] = a2;
  v5[326] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2530, &qword_1A99972D8);
  v5[331] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Item(0);
  v5[332] = v6;
  v5[333] = *(v6 - 8);
  v5[334] = swift_task_alloc();
  v5[335] = swift_task_alloc();
  v5[336] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v5[337] = swift_task_alloc();
  v5[338] = swift_task_alloc();
  v5[339] = swift_task_alloc();
  v5[340] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9807918, 0, 0);
}

uint64_t sub_1A9807918()
{
  v1 = *(v0 + 2640);
  v2 = *(v1 + 16);
  if (!v2)
  {
    if (qword_1EB3B0AE8 != -1)
    {
      swift_once();
    }

    v20 = sub_1A99764A0();
    __swift_project_value_buffer(v20, qword_1EB3B2478);
    v21 = sub_1A9976480();
    v22 = sub_1A9976F70();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A9662000, v21, v22, "No item promises provided", v23, 2u);
      MEMORY[0x1AC58D2C0](v23, -1, -1);
    }

    type metadata accessor for SFAirDropSend.Failure(0);
    sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_11;
  }

  if (v2 == 1)
  {
    *(v0 + 304) = *(v1 + 32);
    v3 = *(v1 + 48);
    v4 = *(v1 + 64);
    v5 = *(v1 + 96);
    *(v0 + 352) = *(v1 + 80);
    *(v0 + 368) = v5;
    *(v0 + 320) = v3;
    *(v0 + 336) = v4;
    v6 = *(v1 + 112);
    v7 = *(v1 + 128);
    v8 = *(v1 + 144);
    *(v0 + 425) = *(v1 + 153);
    *(v0 + 400) = v7;
    *(v0 + 416) = v8;
    *(v0 + 384) = v6;
    *(v0 + 448) = *(v1 + 32);
    v9 = *(v1 + 48);
    v10 = *(v1 + 64);
    v11 = *(v1 + 96);
    *(v0 + 496) = *(v1 + 80);
    *(v0 + 512) = v11;
    *(v0 + 464) = v9;
    *(v0 + 480) = v10;
    v12 = *(v1 + 112);
    v13 = *(v1 + 128);
    v14 = *(v1 + 144);
    *(v0 + 569) = *(v1 + 153);
    *(v0 + 544) = v13;
    *(v0 + 560) = v14;
    *(v0 + 528) = v12;
    sub_1A980C124(v0 + 304, v0 + 592);
    v15 = swift_task_alloc();
    *(v0 + 2760) = v15;
    *v15 = v0;
    v15[1] = sub_1A9809014;
    v16 = *(v0 + 2672);
    v17 = *(v0 + 2632);
    v18 = *(v0 + 2624);

    return sub_1A9809B44(v16, (v0 + 448), v18, v17);
  }

  v25 = 0;
  v26 = (v0 + 160);
  v27 = (v1 + 32);
  v113 = *(v1 + 16);
  v114 = (v0 + 160);
  do
  {
    *(v0 + 1024) = *v27;
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[4];
    *(v0 + 1072) = v27[3];
    *(v0 + 1088) = v30;
    *(v0 + 1040) = v28;
    *(v0 + 1056) = v29;
    v31 = v27[5];
    v32 = v27[6];
    v33 = v27[7];
    *(v0 + 1145) = *(v27 + 121);
    *(v0 + 1120) = v32;
    *(v0 + 1136) = v33;
    *(v0 + 1104) = v31;
    *(v0 + 16) = *v27;
    v34 = v27[1];
    v35 = v27[2];
    v36 = v27[4];
    *(v0 + 64) = v27[3];
    *(v0 + 80) = v36;
    *(v0 + 32) = v34;
    *(v0 + 48) = v35;
    v37 = v27[5];
    v38 = v27[6];
    v39 = v27[7];
    *(v0 + 137) = *(v27 + 121);
    *(v0 + 112) = v38;
    *(v0 + 128) = v39;
    *(v0 + 96) = v37;
    if (v25 >= 5)
    {
      sub_1A980C124(v0 + 1024, v0 + 1168);
      sub_1A980C15C(v0 + 16);
    }

    else
    {
      v40 = *(v0 + 2720);
      v115 = *(v0 + 2632);
      v116 = *(v0 + 2712);
      v41 = *(v0 + 2624);
      v42 = sub_1A9976C00();
      v43 = *(v42 - 8);
      (*(v43 + 56))(v40, 1, 1, v42);
      v44 = swift_allocObject();
      *(v44 + 16) = 0u;
      *(v44 + 32) = v41;
      *(v44 + 40) = v115;
      v45 = *(v0 + 128);
      *(v44 + 144) = *(v0 + 112);
      *(v44 + 160) = v45;
      *(v44 + 169) = *(v0 + 137);
      v46 = *(v0 + 64);
      *(v44 + 80) = *(v0 + 48);
      *(v44 + 96) = v46;
      v47 = *(v0 + 96);
      *(v44 + 112) = *(v0 + 80);
      *(v44 + 128) = v47;
      v48 = *(v0 + 32);
      *(v44 + 48) = *(v0 + 16);
      *(v44 + 64) = v48;
      sub_1A97C13A4(v40, v116, &qword_1EB3B29C0, &qword_1A9991A00);
      v49 = (*(v43 + 48))(v116, 1, v42);
      v50 = *(v0 + 2712);
      v51 = *(v0 + 2632);
      v52 = *(v0 + 2624);
      if (v49 == 1)
      {
        sub_1A980C124(v0 + 1024, v0 + 1312);
        sub_1A97C1554(v52, v51);
        sub_1A980C124(v0 + 16, v0 + 1456);
        sub_1A97B06FC(v50, &qword_1EB3B29C0, &qword_1A9991A00);
      }

      else
      {
        sub_1A980C124(v0 + 1024, v0 + 1600);
        sub_1A97C1554(v52, v51);
        sub_1A980C124(v0 + 16, v0 + 1744);
        sub_1A9976BF0();
        (*(v43 + 8))(v50, v42);
      }

      if (*(v44 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v53 = sub_1A9976B80();
        v55 = v54;
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      v56 = **(v0 + 2616);

      if (v55 | v53)
      {
        v57 = v0 + 2464;
        *(v0 + 2464) = 0;
        *(v0 + 2472) = 0;
        *(v0 + 2480) = v53;
        *(v0 + 2488) = v55;
      }

      else
      {
        v57 = 0;
      }

      v58 = *(v0 + 2720);
      *(v0 + 2560) = 1;
      *(v0 + 2568) = v57;
      *(v0 + 2576) = v56;
      swift_task_create();

      sub_1A980C15C(v0 + 16);
      sub_1A97B06FC(v58, &qword_1EB3B29C0, &qword_1A9991A00);
      v2 = v113;
      v26 = (v0 + 160);
    }

    ++v25;
    v27 += 9;
  }

  while (v2 != v25);
  v59 = MEMORY[0x1E69E7CC0];
  if (v2 <= 5)
  {
    v63 = 0;
    v61 = MEMORY[0x1E69E7CC0] + 32;
    v62 = 1;
    v60 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v60 = *(v0 + 2640);
    v61 = v60 + 32;
    v62 = (2 * v2) | 1;

    v63 = 5;
  }

  v64 = *(v0 + 2616);
  *(v0 + 2496) = v60;
  *(v0 + 2504) = v61;
  *(v0 + 2512) = v63;
  *(v0 + 2520) = v62;
  v65 = *v64;
  *(v0 + 2728) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  if (sub_1A9976D00())
  {
    if (*(v59 + 16))
    {
      v66 = *(v0 + 2608);
      swift_unknownObjectRelease();
      *v66 = v59;

      v24 = *(v0 + 8);
      goto LABEL_32;
    }

    if (qword_1EB3B0AE8 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

  *(v0 + 2736) = v59;
  v67 = *(v0 + 2512);
  v68 = *(v0 + 2520);
  v69 = v68 >> 1;
  if (v67 == v68 >> 1)
  {
    goto LABEL_64;
  }

  v70 = v69 - v67;
  if (__OFSUB__(v69, v67))
  {
    __break(1u);
    goto LABEL_69;
  }

  if (v70 < 1)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v117 = v65;
  if (v69 <= v67)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v71 = *(v0 + 2504);
  v72 = (v71 + 144 * (v69 - 1));
  *v26 = *v72;
  v73 = v72[1];
  v74 = v72[2];
  v75 = v72[4];
  v26[3] = v72[3];
  v26[4] = v75;
  v26[1] = v73;
  v26[2] = v74;
  v76 = v72[5];
  v77 = v72[6];
  v78 = v72[7];
  *(v26 + 121) = *(v72 + 121);
  v26[6] = v77;
  v26[7] = v78;
  v26[5] = v76;
  if (!__OFSUB__(v69, v69 - 1))
  {
    if ((v68 & 1) == 0)
    {
      sub_1A980C124(v26, v0 + 2320);
      goto LABEL_54;
    }

    sub_1A980C124(v26, v0 + 1888);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    *(v0 + 2496) = v60;
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      goto LABEL_54;
    }

    sub_1A9977800();
    swift_unknownObjectRetain();
    v84 = swift_dynamicCastClass();
    if (!v84)
    {
      swift_unknownObjectRelease();
      v84 = MEMORY[0x1E69E7CC0];
    }

    v85 = *(v84 + 16);
    if (v71 + 144 * v67 + 144 * v70 == v84 + 144 * v85 + 32)
    {
      v91 = *(v84 + 24);

      v92 = (v91 >> 1) - v85;
      v93 = __OFADD__(v70, v92);
      v90 = v70 + v92;
      if (v93)
      {
        goto LABEL_74;
      }
    }

    else
    {

      v90 = v69 - v67;
    }

    if (!__OFADD__(v70, -1))
    {
      if (v90 >= v70 - 1)
      {
        sub_1A980CB50(v69 - 1, v69, 0);
        goto LABEL_55;
      }

LABEL_54:
      sub_1A980ADE0((v69 - 1), v69, 0);
LABEL_55:
      v94 = *(v0 + 2704);
      v95 = *(v0 + 2696);
      v96 = *(v0 + 2632);
      v97 = *(v0 + 2624);
      v60 = *(v0 + 2496);
      v98 = sub_1A9976C00();
      v99 = *(v98 - 8);
      (*(v99 + 56))(v94, 1, 1, v98);
      v100 = swift_allocObject();
      *(v100 + 16) = 0;
      *(v100 + 24) = 0;
      *(v100 + 32) = v97;
      *(v100 + 40) = v96;
      v101 = *(v0 + 272);
      *(v100 + 144) = *(v0 + 256);
      *(v100 + 160) = v101;
      *(v100 + 169) = *(v0 + 281);
      v102 = *(v0 + 208);
      *(v100 + 80) = *(v0 + 192);
      *(v100 + 96) = v102;
      v103 = *(v0 + 240);
      *(v100 + 112) = *(v0 + 224);
      *(v100 + 128) = v103;
      v104 = *(v0 + 176);
      *(v100 + 48) = *v114;
      *(v100 + 64) = v104;
      sub_1A97C13A4(v94, v95, &qword_1EB3B29C0, &qword_1A9991A00);
      LODWORD(v95) = (*(v99 + 48))(v95, 1, v98);
      sub_1A97C1554(v97, v96);
      v105 = *(v0 + 2696);
      if (v95 == 1)
      {
        sub_1A980C124(v114, v0 + 2032);
        sub_1A97B06FC(v105, &qword_1EB3B29C0, &qword_1A9991A00);
        v106 = 0;
        v107 = 0;
        v108 = v0 + 160;
        v109 = (v0 + 2528);
      }

      else
      {
        sub_1A980C124(v114, v0 + 2176);
        sub_1A9976BF0();
        (*(v99 + 8))(v105, v98);
        v108 = v0 + 160;
        v109 = (v0 + 2528);
        if (*(v100 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v106 = sub_1A9976B80();
          v107 = v110;
          swift_unknownObjectRelease();
        }

        else
        {
          v106 = 0;
          v107 = 0;
        }
      }

      if (v107 | v106)
      {
        *v109 = 0;
        v109[1] = 0;
        *(v0 + 2544) = v106;
        *(v0 + 2552) = v107;
      }

      else
      {
        v109 = 0;
      }

      v111 = *(v0 + 2704);
      *(v0 + 2584) = 1;
      *(v0 + 2592) = v109;
      *(v0 + 2600) = v117;
      swift_task_create();

      sub_1A980C15C(v108);
      sub_1A97B06FC(v111, &qword_1EB3B29C0, &qword_1A9991A00);
LABEL_64:
      *(v0 + 2744) = v60;
      v112 = swift_task_alloc();
      *(v0 + 2752) = v112;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2538, &qword_1A9997300);
      *v112 = v0;
      v112[1] = sub_1A9808670;
      v86 = *(v0 + 2648);
      v87 = 0;
      v88 = 0;

      return MEMORY[0x1EEE6DAC8](v86, v87, v88, v89);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    return MEMORY[0x1EEE6DAC8](v86, v87, v88, v89);
  }

LABEL_71:
  __break(1u);
  __break(1u);
LABEL_72:
  swift_once();
LABEL_43:
  v79 = sub_1A99764A0();
  __swift_project_value_buffer(v79, qword_1EB3B2478);
  v80 = sub_1A9976480();
  v81 = sub_1A9976F70();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_1A9662000, v80, v81, "Failed to load any items", v82, 2u);
    MEMORY[0x1AC58D2C0](v82, -1, -1);
  }

  type metadata accessor for SFAirDropSend.Failure(0);
  sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_11:

  v24 = *(v0 + 8);
LABEL_32:

  return v24();
}

uint64_t sub_1A9808670()
{

  if (v0)
  {

    v1 = sub_1A98093B4;
  }

  else
  {
    v1 = sub_1A9808788;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A9808788()
{
  v1 = *(v0 + 2648);
  if ((*(*(v0 + 2664) + 48))(v1, 1, *(v0 + 2656)) == 1)
  {
    sub_1A97B06FC(v1, &qword_1EB3B2530, &qword_1A99972D8);
    v2 = *(v0 + 2736);
  }

  else
  {
    v3 = *(v0 + 2688);
    v4 = *(v0 + 2680);
    sub_1A980C870(v1, v3, type metadata accessor for SFAirDropSend.Item);
    sub_1A980BA28(v3, v4, type metadata accessor for SFAirDropSend.Item);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 2736);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_1A97AEA84(0, v2[2] + 1, 1, *(v0 + 2736));
    }

    v7 = v2[2];
    v6 = v2[3];
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1A97AEA84((v6 > 1), v7 + 1, 1, v2);
    }

    v8 = *(v0 + 2680);
    v9 = *(v0 + 2664);
    sub_1A980BA90(*(v0 + 2688), type metadata accessor for SFAirDropSend.Item);
    v2[2] = v7 + 1;
    sub_1A980C870(v8, v2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7, type metadata accessor for SFAirDropSend.Item);
  }

  v10 = **(v0 + 2616);
  v11 = sub_1A9976D00();
  v12 = *(v0 + 2744);
  if ((v11 & 1) == 0)
  {
    *(v0 + 2736) = v2;
    v15 = *(v0 + 2512);
    v16 = *(v0 + 2520);
    v17 = v16 >> 1;
    if (v15 == v16 >> 1)
    {
      goto LABEL_43;
    }

    v18 = v17 - v15;
    if (__OFSUB__(v17, v15))
    {
      __break(1u);
    }

    else if (v18 >= 1)
    {
      if (v17 > v15)
      {
        v62 = v10;
        v19 = *(v0 + 2504);
        v20 = (v19 + 144 * (v17 - 1));
        *(v0 + 160) = *v20;
        v21 = v20[1];
        v22 = v20[2];
        v23 = v20[4];
        *(v0 + 208) = v20[3];
        *(v0 + 224) = v23;
        *(v0 + 176) = v21;
        *(v0 + 192) = v22;
        v24 = v20[5];
        v25 = v20[6];
        v26 = v20[7];
        *(v0 + 281) = *(v20 + 121);
        *(v0 + 256) = v25;
        *(v0 + 272) = v26;
        *(v0 + 240) = v24;
        if (!__OFSUB__(v17, v17 - 1))
        {
          if ((v16 & 1) == 0)
          {
            sub_1A980C124(v0 + 160, v0 + 2320);
            goto LABEL_33;
          }

          sub_1A980C124(v0 + 160, v0 + 1888);
          isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
          *(v0 + 2496) = v12;
          if ((isUniquelyReferenced_nonNull & 1) == 0)
          {
            goto LABEL_33;
          }

          sub_1A9977800();
          swift_unknownObjectRetain();
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
            swift_unknownObjectRelease();
            v33 = MEMORY[0x1E69E7CC0];
          }

          v34 = *(v33 + 16);
          if (v19 + 144 * v15 + 144 * v18 == v33 + 144 * v34 + 32)
          {
            v40 = *(v33 + 24);

            v41 = (v40 >> 1) - v34;
            v42 = __OFADD__(v18, v41);
            v39 = v18 + v41;
            if (v42)
            {
              goto LABEL_53;
            }
          }

          else
          {

            v39 = v17 - v15;
          }

          if (!__OFADD__(v18, -1))
          {
            if (v39 >= v18 - 1)
            {
              sub_1A980CB50(v17 - 1, v17, 0);
              goto LABEL_34;
            }

LABEL_33:
            sub_1A980ADE0((v17 - 1), v17, 0);
LABEL_34:
            v43 = *(v0 + 2704);
            v44 = *(v0 + 2696);
            v45 = *(v0 + 2632);
            v46 = *(v0 + 2624);
            v61 = *(v0 + 2496);
            v47 = sub_1A9976C00();
            v48 = *(v47 - 8);
            (*(v48 + 56))(v43, 1, 1, v47);
            v49 = swift_allocObject();
            *(v49 + 16) = 0;
            *(v49 + 24) = 0;
            *(v49 + 32) = v46;
            *(v49 + 40) = v45;
            v50 = *(v0 + 272);
            *(v49 + 144) = *(v0 + 256);
            *(v49 + 160) = v50;
            *(v49 + 169) = *(v0 + 281);
            v51 = *(v0 + 208);
            *(v49 + 80) = *(v0 + 192);
            *(v49 + 96) = v51;
            v52 = *(v0 + 240);
            *(v49 + 112) = *(v0 + 224);
            *(v49 + 128) = v52;
            v53 = *(v0 + 176);
            *(v49 + 48) = *(v0 + 160);
            *(v49 + 64) = v53;
            sub_1A97C13A4(v43, v44, &qword_1EB3B29C0, &qword_1A9991A00);
            LODWORD(v44) = (*(v48 + 48))(v44, 1, v47);
            sub_1A97C1554(v46, v45);
            v54 = *(v0 + 2696);
            if (v44 == 1)
            {
              sub_1A980C124(v0 + 160, v0 + 2032);
              sub_1A97B06FC(v54, &qword_1EB3B29C0, &qword_1A9991A00);
              v55 = 0;
              v56 = 0;
            }

            else
            {
              sub_1A980C124(v0 + 160, v0 + 2176);
              sub_1A9976BF0();
              (*(v48 + 8))(v54, v47);
              if (*(v49 + 16))
              {
                swift_getObjectType();
                swift_unknownObjectRetain();
                v55 = sub_1A9976B80();
                v56 = v57;
                swift_unknownObjectRelease();
              }

              else
              {
                v55 = 0;
                v56 = 0;
              }
            }

            if (v56 | v55)
            {
              v58 = v0 + 2528;
              *(v0 + 2528) = 0;
              *(v0 + 2536) = 0;
              *(v0 + 2544) = v55;
              *(v0 + 2552) = v56;
            }

            else
            {
              v58 = 0;
            }

            v59 = *(v0 + 2704);
            *(v0 + 2584) = 1;
            *(v0 + 2592) = v58;
            v12 = v61;
            *(v0 + 2600) = v62;
            swift_task_create();

            sub_1A980C15C(v0 + 160);
            sub_1A97B06FC(v59, &qword_1EB3B29C0, &qword_1A9991A00);
LABEL_43:
            *(v0 + 2744) = v12;
            v60 = swift_task_alloc();
            *(v0 + 2752) = v60;
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2538, &qword_1A9997300);
            *v60 = v0;
            v60[1] = sub_1A9808670;
            v35 = *(v0 + 2648);
            v36 = 0;
            v37 = 0;

            return MEMORY[0x1EEE6DAC8](v35, v36, v37, v38);
          }

          __break(1u);
LABEL_53:
          __break(1u);
          return MEMORY[0x1EEE6DAC8](v35, v36, v37, v38);
        }

LABEL_50:
        __break(1u);
        __break(1u);
        goto LABEL_51;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_49;
  }

  if (!v2[2])
  {

    if (qword_1EB3B0AE8 == -1)
    {
LABEL_19:
      v27 = sub_1A99764A0();
      __swift_project_value_buffer(v27, qword_1EB3B2478);
      v28 = sub_1A9976480();
      v29 = sub_1A9976F70();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1A9662000, v28, v29, "Failed to load any items", v30, 2u);
        MEMORY[0x1AC58D2C0](v30, -1, -1);
      }

      type metadata accessor for SFAirDropSend.Failure(0);
      sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_unknownObjectRelease();

      v14 = *(v0 + 8);
      goto LABEL_22;
    }

LABEL_51:
    swift_once();
    goto LABEL_19;
  }

  v13 = *(v0 + 2608);
  swift_unknownObjectRelease();
  *v13 = v2;

  v14 = *(v0 + 8);
LABEL_22:

  return v14();
}

uint64_t sub_1A9809014()
{
  v2 = *v1;
  v3 = (*v1 + 448);
  *(*v1 + 2768) = v0;

  if (v0)
  {
    v2[46] = *v3;
    v4 = v3[1];
    v5 = v3[2];
    v6 = v3[4];
    v2[49] = v3[3];
    v2[50] = v6;
    v2[47] = v4;
    v2[48] = v5;
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[7];
    *(v2 + 857) = *(v3 + 121);
    v2[52] = v8;
    v2[53] = v9;
    v2[51] = v7;
    sub_1A980C15C((v2 + 46));
    v10 = sub_1A98092E4;
  }

  else
  {
    v2[55] = *v3;
    v11 = v3[1];
    v12 = v3[2];
    v13 = v3[4];
    v2[58] = v3[3];
    v2[59] = v13;
    v2[56] = v11;
    v2[57] = v12;
    v14 = v3[5];
    v15 = v3[6];
    v16 = v3[7];
    *(v2 + 1001) = *(v3 + 121);
    v2[61] = v15;
    v2[62] = v16;
    v2[60] = v14;
    sub_1A980C15C((v2 + 55));
    v10 = sub_1A98091A4;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1A98091A4()
{
  v1 = v0[334];
  v2 = v0[333];
  v3 = v0[326];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B11A0, &qword_1A99919E8);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A9996D60;
  sub_1A980C870(v1, v5 + v4, type metadata accessor for SFAirDropSend.Item);
  *v3 = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A98092E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98093B4()
{
  (*(*(v0 + 2664) + 56))(*(v0 + 2648), 1, 1, *(v0 + 2656));
  sub_1A97B06FC(*(v0 + 2648), &qword_1EB3B2530, &qword_1A99972D8);
  v1 = *(v0 + 2736);
  v2 = **(v0 + 2616);
  v3 = sub_1A9976D00();
  v4 = *(v0 + 2744);
  if ((v3 & 1) == 0)
  {
    *(v0 + 2736) = v1;
    v7 = *(v0 + 2512);
    v8 = *(v0 + 2520);
    v9 = v8 >> 1;
    if (v7 == v8 >> 1)
    {
      goto LABEL_36;
    }

    v10 = v9 - v7;
    if (__OFSUB__(v9, v7))
    {
      __break(1u);
    }

    else if (v10 >= 1)
    {
      if (v9 > v7)
      {
        v54 = v2;
        v11 = *(v0 + 2504);
        v12 = (v11 + 144 * (v9 - 1));
        *(v0 + 160) = *v12;
        v13 = v12[1];
        v14 = v12[2];
        v15 = v12[4];
        *(v0 + 208) = v12[3];
        *(v0 + 224) = v15;
        *(v0 + 176) = v13;
        *(v0 + 192) = v14;
        v16 = v12[5];
        v17 = v12[6];
        v18 = v12[7];
        *(v0 + 281) = *(v12 + 121);
        *(v0 + 256) = v17;
        *(v0 + 272) = v18;
        *(v0 + 240) = v16;
        if (!__OFSUB__(v9, v9 - 1))
        {
          if ((v8 & 1) == 0)
          {
            sub_1A980C124(v0 + 160, v0 + 2320);
            goto LABEL_26;
          }

          sub_1A980C124(v0 + 160, v0 + 1888);
          isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
          *(v0 + 2496) = v4;
          if ((isUniquelyReferenced_nonNull & 1) == 0)
          {
            goto LABEL_26;
          }

          sub_1A9977800();
          swift_unknownObjectRetain();
          v25 = swift_dynamicCastClass();
          if (!v25)
          {
            swift_unknownObjectRelease();
            v25 = MEMORY[0x1E69E7CC0];
          }

          v26 = *(v25 + 16);
          if (v11 + 144 * v7 + 144 * v10 == v25 + 144 * v26 + 32)
          {
            v32 = *(v25 + 24);

            v33 = (v32 >> 1) - v26;
            v34 = __OFADD__(v10, v33);
            v31 = v10 + v33;
            if (v34)
            {
              goto LABEL_46;
            }
          }

          else
          {

            v31 = v9 - v7;
          }

          if (!__OFADD__(v10, -1))
          {
            if (v31 >= v10 - 1)
            {
              sub_1A980CB50(v9 - 1, v9, 0);
              goto LABEL_27;
            }

LABEL_26:
            sub_1A980ADE0((v9 - 1), v9, 0);
LABEL_27:
            v35 = *(v0 + 2704);
            v36 = *(v0 + 2696);
            v37 = *(v0 + 2632);
            v38 = *(v0 + 2624);
            v53 = *(v0 + 2496);
            v39 = sub_1A9976C00();
            v40 = *(v39 - 8);
            (*(v40 + 56))(v35, 1, 1, v39);
            v41 = swift_allocObject();
            *(v41 + 16) = 0;
            *(v41 + 24) = 0;
            *(v41 + 32) = v38;
            *(v41 + 40) = v37;
            v42 = *(v0 + 272);
            *(v41 + 144) = *(v0 + 256);
            *(v41 + 160) = v42;
            *(v41 + 169) = *(v0 + 281);
            v43 = *(v0 + 208);
            *(v41 + 80) = *(v0 + 192);
            *(v41 + 96) = v43;
            v44 = *(v0 + 240);
            *(v41 + 112) = *(v0 + 224);
            *(v41 + 128) = v44;
            v45 = *(v0 + 176);
            *(v41 + 48) = *(v0 + 160);
            *(v41 + 64) = v45;
            sub_1A97C13A4(v35, v36, &qword_1EB3B29C0, &qword_1A9991A00);
            LODWORD(v36) = (*(v40 + 48))(v36, 1, v39);
            sub_1A97C1554(v38, v37);
            v46 = *(v0 + 2696);
            if (v36 == 1)
            {
              sub_1A980C124(v0 + 160, v0 + 2032);
              sub_1A97B06FC(v46, &qword_1EB3B29C0, &qword_1A9991A00);
              v47 = 0;
              v48 = 0;
            }

            else
            {
              sub_1A980C124(v0 + 160, v0 + 2176);
              sub_1A9976BF0();
              (*(v40 + 8))(v46, v39);
              if (*(v41 + 16))
              {
                swift_getObjectType();
                swift_unknownObjectRetain();
                v47 = sub_1A9976B80();
                v48 = v49;
                swift_unknownObjectRelease();
              }

              else
              {
                v47 = 0;
                v48 = 0;
              }
            }

            if (v48 | v47)
            {
              v50 = v0 + 2528;
              *(v0 + 2528) = 0;
              *(v0 + 2536) = 0;
              *(v0 + 2544) = v47;
              *(v0 + 2552) = v48;
            }

            else
            {
              v50 = 0;
            }

            v51 = *(v0 + 2704);
            *(v0 + 2584) = 1;
            *(v0 + 2592) = v50;
            v4 = v53;
            *(v0 + 2600) = v54;
            swift_task_create();

            sub_1A980C15C(v0 + 160);
            sub_1A97B06FC(v51, &qword_1EB3B29C0, &qword_1A9991A00);
LABEL_36:
            *(v0 + 2744) = v4;
            v52 = swift_task_alloc();
            *(v0 + 2752) = v52;
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2538, &qword_1A9997300);
            *v52 = v0;
            v52[1] = sub_1A9808670;
            v27 = *(v0 + 2648);
            v28 = 0;
            v29 = 0;

            return MEMORY[0x1EEE6DAC8](v27, v28, v29, v30);
          }

          __break(1u);
LABEL_46:
          __break(1u);
          return MEMORY[0x1EEE6DAC8](v27, v28, v29, v30);
        }

LABEL_43:
        __break(1u);
        __break(1u);
        goto LABEL_44;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (!*(v1 + 16))
  {

    if (qword_1EB3B0AE8 == -1)
    {
LABEL_12:
      v19 = sub_1A99764A0();
      __swift_project_value_buffer(v19, qword_1EB3B2478);
      v20 = sub_1A9976480();
      v21 = sub_1A9976F70();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1A9662000, v20, v21, "Failed to load any items", v22, 2u);
        MEMORY[0x1AC58D2C0](v22, -1, -1);
      }

      type metadata accessor for SFAirDropSend.Failure(0);
      sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_unknownObjectRelease();

      v6 = *(v0 + 8);
      goto LABEL_15;
    }

LABEL_44:
    swift_once();
    goto LABEL_12;
  }

  v5 = *(v0 + 2608);
  swift_unknownObjectRelease();
  *v5 = v1;

  v6 = *(v0 + 8);
LABEL_15:

  return v6();
}

uint64_t sub_1A9809B44(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 312) = a3;
  *(v4 + 320) = a4;
  *(v4 + 304) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2530, &qword_1A99972D8);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v6 = a2[7];
  *(v4 + 112) = a2[6];
  *(v4 + 128) = v6;
  *(v4 + 137) = *(a2 + 121);
  v7 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v7;
  v8 = a2[5];
  *(v4 + 80) = a2[4];
  *(v4 + 96) = v8;
  v9 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A9809C34, 0, 0);
}

uint64_t sub_1A9809C34()
{
  v35 = v0;
  v1 = v0[44];
  v2 = type metadata accessor for SFAirDropSend.Item(0);
  v0[45] = v2;
  v3 = *(v2 - 8);
  v0[46] = v3;
  v5 = v3 + 56;
  v4 = *(v3 + 56);
  v0[47] = v4;
  v0[48] = v5 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v6 = v0[2];
  v0[49] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[50] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    *v7 = v0;
    v7[1] = sub_1A980A180;
    v9 = v0[43];
    v10 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v9, v6, v2, v8, v10);
  }

  else
  {
    v12 = v0[3];
    v11 = v0[4];
    v0[52] = v12;
    v0[53] = v11;
    if (v12)
    {

      v33 = (v12 + *v12);
      v13 = swift_task_alloc();
      v0[54] = v13;
      *v13 = v0;
      v13[1] = sub_1A980A5FC;
      v14 = v0[42];
      v15 = v0[39];
      v16 = v0[40];

      return v33(v14, v15, v16);
    }

    else
    {
      v17 = v0[45];
      v18 = v0[46];
      v19 = v0[41];
      sub_1A97C13A4(v0[44], v19, &qword_1EB3B2530, &qword_1A99972D8);
      if ((*(v18 + 48))(v19, 1, v17) == 1)
      {
        sub_1A97B06FC(v0[41], &qword_1EB3B2530, &qword_1A99972D8);
        if (qword_1EB3B0AE8 != -1)
        {
          swift_once();
        }

        v20 = sub_1A99764A0();
        __swift_project_value_buffer(v20, qword_1EB3B2478);
        sub_1A980C124((v0 + 2), (v0 + 20));
        v21 = sub_1A9976480();
        v22 = sub_1A9976F70();
        sub_1A980C15C((v0 + 2));
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v34 = v24;
          *v23 = 136315138;
          v25 = v0[5];
          v26 = v0[6];

          v27 = sub_1A97AF148(v25, v26, &v34);

          *(v23 + 4) = v27;
          _os_log_impl(&dword_1A9662000, v21, v22, "Failed to load item promise %s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v24);
          MEMORY[0x1AC58D2C0](v24, -1, -1);
          MEMORY[0x1AC58D2C0](v23, -1, -1);
        }

        v28 = v0[44];
        type metadata accessor for SFAirDropSend.Failure(0);
        sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1A97B06FC(v28, &qword_1EB3B2530, &qword_1A99972D8);

        v29 = v0[1];
      }

      else
      {
        v30 = v0[41];
        v31 = v0[38];
        sub_1A97B06FC(v0[44], &qword_1EB3B2530, &qword_1A99972D8);
        sub_1A980C870(v30, v31, type metadata accessor for SFAirDropSend.Item);

        v29 = v0[1];
      }

      return v29();
    }
  }
}

uint64_t sub_1A980A180()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1A980AA60;
  }

  else
  {
    v2 = sub_1A980A294;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A980A294()
{
  v22 = v0;
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];

  sub_1A97B06FC(v2, &qword_1EB3B2530, &qword_1A99972D8);
  v1(v4, 0, 1, v3);
  sub_1A980CCC8(v0[43], v0[44]);
  v5 = v0[45];
  v6 = v0[46];
  v7 = v0[41];
  sub_1A97C13A4(v0[44], v7, &qword_1EB3B2530, &qword_1A99972D8);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_1A97B06FC(v0[41], &qword_1EB3B2530, &qword_1A99972D8);
    if (qword_1EB3B0AE8 != -1)
    {
      swift_once();
    }

    v8 = sub_1A99764A0();
    __swift_project_value_buffer(v8, qword_1EB3B2478);
    sub_1A980C124((v0 + 2), (v0 + 20));
    v9 = sub_1A9976480();
    v10 = sub_1A9976F70();
    sub_1A980C15C((v0 + 2));
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      v13 = v0[5];
      v14 = v0[6];

      v15 = sub_1A97AF148(v13, v14, &v21);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1A9662000, v9, v10, "Failed to load item promise %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x1AC58D2C0](v12, -1, -1);
      MEMORY[0x1AC58D2C0](v11, -1, -1);
    }

    v16 = v0[44];
    type metadata accessor for SFAirDropSend.Failure(0);
    sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1A97B06FC(v16, &qword_1EB3B2530, &qword_1A99972D8);

    v17 = v0[1];
  }

  else
  {
    v18 = v0[41];
    v19 = v0[38];
    sub_1A97B06FC(v0[44], &qword_1EB3B2530, &qword_1A99972D8);
    sub_1A980C870(v18, v19, type metadata accessor for SFAirDropSend.Item);

    v17 = v0[1];
  }

  return v17();
}

uint64_t sub_1A980A5FC()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1A980AB0C;
  }

  else
  {
    v2 = sub_1A980A710;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A980A710()
{
  v19 = v0;
  v1 = v0[44];
  sub_1A967C46C(v0[52], v0[53]);
  sub_1A97B06FC(v1, &qword_1EB3B2530, &qword_1A99972D8);
  sub_1A980CCC8(v0[42], v0[44]);
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[41];
  sub_1A97C13A4(v0[44], v4, &qword_1EB3B2530, &qword_1A99972D8);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1A97B06FC(v0[41], &qword_1EB3B2530, &qword_1A99972D8);
    if (qword_1EB3B0AE8 != -1)
    {
      swift_once();
    }

    v5 = sub_1A99764A0();
    __swift_project_value_buffer(v5, qword_1EB3B2478);
    sub_1A980C124((v0 + 2), (v0 + 20));
    v6 = sub_1A9976480();
    v7 = sub_1A9976F70();
    sub_1A980C15C((v0 + 2));
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      v10 = v0[5];
      v11 = v0[6];

      v12 = sub_1A97AF148(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1A9662000, v6, v7, "Failed to load item promise %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1AC58D2C0](v9, -1, -1);
      MEMORY[0x1AC58D2C0](v8, -1, -1);
    }

    v13 = v0[44];
    type metadata accessor for SFAirDropSend.Failure(0);
    sub_1A980CB08(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1A97B06FC(v13, &qword_1EB3B2530, &qword_1A99972D8);

    v14 = v0[1];
  }

  else
  {
    v15 = v0[41];
    v16 = v0[38];
    sub_1A97B06FC(v0[44], &qword_1EB3B2530, &qword_1A99972D8);
    sub_1A980C870(v15, v16, type metadata accessor for SFAirDropSend.Item);

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_1A980AA60()
{
  v1 = *(v0 + 352);

  sub_1A97B06FC(v1, &qword_1EB3B2530, &qword_1A99972D8);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A980AB0C()
{
  v1 = v0[44];
  sub_1A967C46C(v0[52], v0[53]);
  sub_1A97B06FC(v1, &qword_1EB3B2530, &qword_1A99972D8);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A980ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v10 = a6[7];
  *(v6 + 112) = a6[6];
  *(v6 + 128) = v10;
  *(v6 + 137) = *(a6 + 121);
  v11 = a6[3];
  *(v6 + 48) = a6[2];
  *(v6 + 64) = v11;
  v12 = a6[5];
  *(v6 + 80) = a6[4];
  *(v6 + 96) = v12;
  v13 = a6[1];
  *(v6 + 16) = *a6;
  *(v6 + 32) = v13;
  v14 = swift_task_alloc();
  *(v6 + 160) = v14;
  *v14 = v6;
  v14[1] = sub_1A980AC94;

  return sub_1A9809B44(a1, (v6 + 16), a4, a5);
}

uint64_t sub_1A980AC94()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A980ADC8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void *sub_1A980ADE0(void *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = __OFSUB__(a3, v4);
  v7 = a3 - v4;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v3[2];
  v8 = v3[3];
  v10 = (v8 >> 1) - v9;
  if (__OFSUB__(v8 >> 1, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  result = (v10 + v7);
  if (__OFADD__(v10, v7))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1A980AEC4(result, v10 + v7, *v3, v3[1], v3[2], v8);
  v13 = result;
  if (!__OFSUB__(v11, v9))
  {
    MEMORY[0x1EEE9AC00](result);
    sub_1A980B090(&v13, v12, a3, sub_1A980CCB4);
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1A980AEC4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v6)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1A9977800();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 144 * a5 + 144 * v8;
  if (v13 == v11 + 144 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v6)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 144 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 144 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1A986BF0C(v6, v25);
}

uint64_t *sub_1A980B090(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_32;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v34 = v15;
  v17 = (v9 + 32);
  v18 = 144 * a2;
  v19 = v9 + 32 + 144 * a2;
  v32 = v13;
  v33 = (v19 + 144 * a3);
  result = sub_1A980B380(v7);
  v36 = v9 + 32;
  if (result)
  {
    v20 = result;
    v31 = v9;
    v21 = v4[2];
    v22 = (v4[1] + 144 * v21);
    v23 = &v22[v18];
    swift_arrayDestroy();
    if (v17 != v22 || v17 >= v23)
    {
      memmove(v17, v22, v18);
    }

    swift_arrayDestroy();
    a4(v19, a3);
    v24 = &v23[144 * v34];
    if (v33 != v24 || v33 >= &v24[144 * v32])
    {
      memmove(v33, v24, 144 * v32);
    }

    swift_arrayDestroy();
    *(v20 + 16) = 0;

    v9 = v31;
  }

  else
  {
    v21 = v4[2];
    v26 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v26 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    swift_arrayInitWithCopy();
    result = a4(v36 + 144 * a2, a3);
    v27 = v26 + v34;
    if (__OFADD__(v26, v34))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v28 = v4[3] >> 1;
    if (v28 < v27)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v28, v27))
    {
LABEL_45:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  v29 = *(v9 + 16);
  v11 = __OFADD__(v21, v29);
  v30 = v21 + v29;
  if (v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v30 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v30 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v9;
  v4[1] = v36 - 144 * v21;
  v4[2] = v21;
  v4[3] = (2 * v30) | 1;
}

uint64_t sub_1A980B380(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v1[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1A9977800();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 144 * v6 + 144 * v7 != v9 + 144 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_1A9977800();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = (v8 + 144 * v6 - result - 32) / 144;
  v14 = __OFADD__(v7, v15);
  v5 = v7 + v15;
  if (v14)
  {
    goto LABEL_18;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_19:
    v16 = result;
    sub_1A98296F0(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t _s7Sharing13SFAirDropSendO12ItemMetadataV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v31 = a1[6];
  v26 = a1[7];
  v30 = a1[8];
  v28 = *(a1 + 72);
  v19 = a1[10];
  v24 = a1[11];
  v21 = a1[12];
  v22 = a1[13];
  v17 = *(a1 + 112);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v25 = *(a2 + 56);
  v29 = *(a2 + 64);
  v27 = *(a2 + 72);
  v18 = *(a2 + 80);
  v23 = *(a2 + 88);
  v11 = *(a2 + 104);
  v20 = *(a2 + 96);
  v16 = *(a2 + 112);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v2 != v6 || v3 != v7) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v8)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (!v8)
  {
    return 0;
  }

  if (v4 != v9 || v5 != v8)
  {
    v13 = sub_1A99777E0();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_20:
    if (v31 != v10)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v31 != v10)
  {
    return 0;
  }

LABEL_21:
  if (v30)
  {
    if (!v29)
    {
      return 0;
    }

    if (v26 == v25 && v30 == v29)
    {
      if (v28 != v27)
      {
        return 0;
      }

      goto LABEL_31;
    }

    v14 = sub_1A99777E0();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v29)
    {
      return result;
    }
  }

  if ((v28 ^ v27))
  {
    return result;
  }

LABEL_31:
  if (v24)
  {
    if (!v23 || (v19 != v18 || v24 != v23) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v22 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      sub_1A97C1554(v21, v22);
      sub_1A97C1554(v20, v11);
      sub_1A97D8688(v21, v22);
      return v17 ^ v16 ^ 1u;
    }

    goto LABEL_42;
  }

  if (v11 >> 60 == 15)
  {
LABEL_42:
    sub_1A97C1554(v21, v22);
    sub_1A97C1554(v20, v11);
    sub_1A97D8688(v21, v22);
    sub_1A97D8688(v20, v11);
    return 0;
  }

  sub_1A97C1554(v21, v22);
  sub_1A97C1554(v20, v11);
  v15 = sub_1A993184C(v21, v22, v20, v11);
  sub_1A97D8688(v20, v11);
  sub_1A97D8688(v21, v22);
  if (v15)
  {
    return v17 ^ v16 ^ 1u;
  }

  return 0;
}

unint64_t sub_1A980B824()
{
  result = qword_1EB3B2498;
  if (!qword_1EB3B2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2498);
  }

  return result;
}

uint64_t type metadata accessor for SFAirDropSend.Item(uint64_t a1)
{
  result = qword_1EB3B24F0;
  if (!qword_1EB3B24F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A980B92C()
{
  result = qword_1EB3B24B0;
  if (!qword_1EB3B24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B24B0);
  }

  return result;
}

unint64_t sub_1A980B980()
{
  result = qword_1EB3B24C0;
  if (!qword_1EB3B24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B24C0);
  }

  return result;
}

unint64_t sub_1A980B9D4()
{
  result = qword_1EB3B24D8;
  if (!qword_1EB3B24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B24D8);
  }

  return result;
}

uint64_t sub_1A980BA28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A980BA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A980BAF0(uint64_t a1, _OWORD *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A97B2988;

  return sub_1A9806F14(a1, a2, v6);
}

uint64_t sub_1A980BBA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954656C6966 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54627553656C6966 && a2 == 0xEB00000000657079 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x504D4F42656C6966 && a2 == 0xEB00000000687461 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69447349656C6966 && a2 == 0xEF79726F74636572 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E43A0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E69727453736177 && a2 == 0xE900000000000067)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E695F658]);
    sub_1A97B40FC(a1, a2);
    sub_1A97B40FC(a1, a2);
    v5 = sub_1A9976060();
    v6 = [v4 initWithData_];

    sub_1A97D8688(a1, a2);
    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      [v6 extent];
      v8 = [v7 createCGImage:v6 fromRect:?];

      if (v8)
      {
        v9 = SFResizedCGImage(v8, 0x100000);
        if (v9)
        {
          v10 = v9;
          v11 = sub_1A9976070();

          sub_1A97D8688(a1, a2);
          return v11;
        }
      }

      else
      {
        v8 = v6;
      }
    }

    v12 = sub_1A9976060();
    v13 = SFCreateCGImageFromData(v12);

    if (v13 && (v14 = SFResizedCGImage(v13, 0x100000), v13, v14))
    {
      v15 = sub_1A9976070();

      sub_1A97D8688(a1, a2);
      return v15;
    }

    else
    {
      if (qword_1EB3B0AE8 != -1)
      {
        swift_once();
      }

      v16 = sub_1A99764A0();
      __swift_project_value_buffer(v16, qword_1EB3B2478);
      v17 = sub_1A9976480();
      v18 = sub_1A9976F70();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1A9662000, v17, v18, "Unable to parse itemPreview data", v19, 2u);
        MEMORY[0x1AC58D2C0](v19, -1, -1);
      }

      sub_1A97D8688(a1, a2);

      return 0;
    }
  }

  return a1;
}

uint64_t sub_1A980C18C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1A97B2988;

  return sub_1A980779C(a1, a2, v6, v7, v8);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1A980C2A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A980C2EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A980C384(uint64_t a1)
{
  result = type metadata accessor for SFSecurityScopedURL(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg7Sharing13SFAirDropSendO4ItemVSgs5Error_pIegHgrzo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1A980C444(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A980C48C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s12ItemMetadataV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12ItemMetadataV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A980C664()
{
  result = qword_1EB3B2500;
  if (!qword_1EB3B2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2500);
  }

  return result;
}

unint64_t sub_1A980C6BC()
{
  result = qword_1EB3B2508;
  if (!qword_1EB3B2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2508);
  }

  return result;
}

unint64_t sub_1A980C714()
{
  result = qword_1EB3B2510;
  if (!qword_1EB3B2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2510);
  }

  return result;
}

unint64_t sub_1A980C76C()
{
  result = qword_1EB3B2518;
  if (!qword_1EB3B2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2518);
  }

  return result;
}

unint64_t sub_1A980C7C4()
{
  result = qword_1EB3B2520;
  if (!qword_1EB3B2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2520);
  }

  return result;
}

unint64_t sub_1A980C81C()
{
  result = qword_1EB3B2528;
  if (!qword_1EB3B2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2528);
  }

  return result;
}

uint64_t sub_1A980C870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A980C8D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A980ABB8(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t objectdestroy_29Tm()
{
  swift_unknownObjectRelease();
  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    sub_1A97B43C4(v0[4], v1);
  }

  if (v0[7])
  {
  }

  v2 = v0[22];
  if (v2 >> 60 != 15)
  {
    sub_1A97B43C4(v0[21], v2);
  }

  return swift_deallocObject();
}

uint64_t sub_1A980CA44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2638;

  return sub_1A980ABB8(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t sub_1A980CB08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A980CB50(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v3;
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  if (__OFSUB__(v8 >> 1, v9))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  sub_1A9977800();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  v12 = result;
  if (!result)
  {
    result = swift_unknownObjectRelease();
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 - v9;
  if (__OFSUB__(v11, v9))
  {
    goto LABEL_18;
  }

  v14 = (*(v7 + 8) + 144 * v9 - v12 - 32) / 144;
  result = v13 + v14;
  if (__OFADD__(v13, v14))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15 + v14;
  if (__OFADD__(v15, v14))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v16 < result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1A98296F0(result, v16, a3);

  v17 = v8 >> 1;
  if (__OFADD__(v9, (v8 >> 1) - v9))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    *(v7 + 24) = v8 & 1 | (2 * v19);
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1A980CCB4(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1A980CCC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2530, &qword_1A99972D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SFAirDropReceive.AcceptContext.customPayload.getter()
{
  v1 = *(v0 + 8);
  sub_1A97C1554(v1, *(v0 + 16));
  return v1;
}

uint64_t SFAirDropReceive.AcceptContext.customPayload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A97D8688(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = sub_1A97D8688(0, 0xF000000000000000);
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1A980CE14()
{
  if (*v0)
  {
    return 0x61506D6F74737563;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1A980CE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001A99E43E0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61506D6F74737563 && a2 == 0xED000064616F6C79)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A99777E0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A980CF50(uint64_t a1)
{
  v2 = sub_1A980EBE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980CF8C(uint64_t a1)
{
  v2 = sub_1A980EBE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.AcceptContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2540, &qword_1A9997310);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980EBE8();
  sub_1A9977AA0();
  LOBYTE(v11) = 0;
  v8 = v10[1];
  sub_1A99776A0();
  if (!v8)
  {
    v11 = v10[0];
    v12 = v7;
    v13 = 1;
    sub_1A97C1554(v10[0], v7);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v11, v12);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDropReceive.AcceptContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2550, &qword_1A9997318);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980EBE8();
  sub_1A9977A70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    v9 = sub_1A99775B0();
    v16 = 1;
    sub_1A97B446C();
    sub_1A9977590();
    (*(v6 + 8))(v8, v5);
    v11 = v15[0];
    v12 = v15[1];
    sub_1A97D8688(0, 0xF000000000000000);
    *a2 = v9 & 1;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    sub_1A97C1554(v11, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v13 = v11;
    v14 = v12;
  }

  return sub_1A97D8688(v13, v14);
}

uint64_t SFAirDropReceive.AskResponse.description.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.AskResponse(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A980EC88(v0, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
  v5 = (*(*(v4 - 8) + 48))(v3, 3, v4);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return 0x726F727265;
    }

    else
    {
      return 0x707954646578696DLL;
    }
  }

  else if (v5)
  {
    return 0x656E696C636564;
  }

  else
  {
    sub_1A97D8688(*&v3[*(v4 + 48) + 8], *&v3[*(v4 + 48) + 16]);
    sub_1A980FC8C(v3, type metadata accessor for SFAirDropReceive.ItemDestination);
    return 0x747065636361;
  }
}

uint64_t sub_1A980D4E8()
{
  if (*v0)
  {
    return 0x6F43747065636361;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_1A980D538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43747065636361 && a2 == 0xED0000747865746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A980D620(uint64_t a1)
{
  v2 = sub_1A980F1FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980D65C(uint64_t a1)
{
  v2 = sub_1A980F1FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A980D698()
{
  v1 = 0x747065636361;
  v2 = 0x726F727265;
  if (*v0 != 2)
  {
    v2 = 0x707954646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x656E696C636564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A980D710@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A980FAC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A980D738(uint64_t a1)
{
  v2 = sub_1A980F0AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980D774(uint64_t a1)
{
  v2 = sub_1A980F0AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A980D7B0(uint64_t a1)
{
  v2 = sub_1A980F1A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980D7EC(uint64_t a1)
{
  v2 = sub_1A980F1A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A980D828(uint64_t a1)
{
  v2 = sub_1A980F154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980D864(uint64_t a1)
{
  v2 = sub_1A980F154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A980D8A0(uint64_t a1)
{
  v2 = sub_1A980F100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980D8DC(uint64_t a1)
{
  v2 = sub_1A980F100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.AskResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2558, &qword_1A9997328);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2560, &qword_1A9997330);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2568, &qword_1A9997338);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2570, &qword_1A9997340);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v34 - v10;
  v11 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SFAirDropReceive.AskResponse(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2578, &qword_1A9997348);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A980F0AC();
  sub_1A9977AA0();
  sub_1A980EC88(v47, v15);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
  v21 = (*(*(v20 - 8) + 48))(v15, 3, v20);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v49[0] = 2;
      sub_1A980F154();
      v29 = v37;
      sub_1A9977640();
      v31 = v38;
      v30 = v39;
    }

    else
    {
      v49[0] = 3;
      sub_1A980F100();
      v29 = v40;
      sub_1A9977640();
      v31 = v43;
      v30 = v44;
    }

    (*(v31 + 8))(v29, v30);
    return (*(v17 + 8))(v19, v16);
  }

  if (v21)
  {
    v49[0] = 1;
    sub_1A980F1A8();
    sub_1A9977640();
    (*(v35 + 8))(v8, v36);
    return (*(v17 + 8))(v19, v16);
  }

  v22 = &v15[*(v20 + 48)];
  LODWORD(v44) = *v22;
  v23 = *(v22 + 1);
  v47 = *(v22 + 2);
  v24 = v41;
  sub_1A980F2A4(v15, v41, type metadata accessor for SFAirDropReceive.ItemDestination);
  v49[0] = 0;
  sub_1A980F1FC();
  v25 = v42;
  sub_1A9977640();
  v49[0] = 0;
  sub_1A980F30C(&qword_1EB3AC5A0, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v26 = v46;
  v27 = v48;
  sub_1A99776E0();
  if (v27)
  {
    sub_1A97D8688(v23, v47);
    (*(v45 + 8))(v25, v26);
    sub_1A980FC8C(v24, type metadata accessor for SFAirDropReceive.ItemDestination);
    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    v49[0] = v44;
    v32 = v23;
    v50 = v23;
    v33 = v47;
    v51 = v47;
    v52 = 1;
    sub_1A980F250();
    sub_1A99776E0();
    (*(v45 + 8))(v25, v26);
    sub_1A980FC8C(v24, type metadata accessor for SFAirDropReceive.ItemDestination);
    (*(v17 + 8))(v19, v16);
    return sub_1A97D8688(v32, v33);
  }
}

uint64_t SFAirDropReceive.AskResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B25B0, &qword_1A9997350);
  v54 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B25B8, &qword_1A9997358);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B25C0, &qword_1A9997360);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B25C8, &qword_1A9997368);
  v9 = *(v8 - 8);
  v55 = v8;
  v56 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B25D0, &unk_1A9997370);
  v62 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for SFAirDropReceive.AskResponse(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - v19;
  v21 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1A980F0AC();
  v22 = v63;
  sub_1A9977A70();
  if (!v22)
  {
    v63 = v15;
    v48 = v18;
    v49 = v20;
    v23 = v59;
    v24 = v60;
    v25 = v61;
    v26 = sub_1A9977620();
    v27 = (2 * *(v26 + 16)) | 1;
    v65 = v26;
    v66 = v26 + 32;
    v67 = 0;
    v68 = v27;
    v28 = sub_1A97B2974();
    v29 = v14;
    if (v28 == 4 || v67 != v68 >> 1)
    {
      v35 = sub_1A9977300();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v37 = v63;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v62 + 8))(v14, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28 > 1u)
      {
        v39 = v62;
        if (v28 == 2)
        {
          v69 = 2;
          sub_1A980F154();
          sub_1A9977530();
          (*(v52 + 8))(v23, v53);
          (*(v39 + 8))(v14, v12);
          swift_unknownObjectRelease();
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
          v47 = v49;
          (*(*(v40 - 8) + 56))(v49, 2, 3, v40);
        }

        else
        {
          v69 = 3;
          sub_1A980F100();
          sub_1A9977530();
          (*(v54 + 8))(v24, v25);
          (*(v39 + 8))(v14, v12);
          swift_unknownObjectRelease();
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
          v47 = v49;
          (*(*(v43 - 8) + 56))(v49, 3, 3, v43);
        }

        v30 = v58;
      }

      else
      {
        v30 = v58;
        v31 = v62;
        if (v28)
        {
          v69 = 1;
          sub_1A980F1A8();
          v41 = v57;
          sub_1A9977530();
          (*(v50 + 8))(v41, v51);
          (*(v31 + 8))(v29, v12);
          swift_unknownObjectRelease();
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
          v47 = v49;
          (*(*(v42 - 8) + 56))(v49, 1, 3, v42);
        }

        else
        {
          v69 = 0;
          sub_1A980F1FC();
          v32 = v11;
          sub_1A9977530();
          type metadata accessor for SFAirDropReceive.ItemDestination(0);
          v69 = 0;
          sub_1A980F30C(&qword_1EB3AC590, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
          v33 = v48;
          v34 = v55;
          sub_1A99775F0();
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
          v63 = v12;
          v45 = v34;
          v46 = v44;
          v69 = 1;
          sub_1A980F350();
          sub_1A99775F0();
          (*(v56 + 8))(v32, v45);
          (*(v31 + 8))(v29, v63);
          swift_unknownObjectRelease();
          (*(*(v46 - 8) + 56))(v33, 0, 3, v46);
          v47 = v49;
          sub_1A980F2A4(v33, v49, type metadata accessor for SFAirDropReceive.AskResponse);
        }
      }

      sub_1A980F2A4(v47, v30, type metadata accessor for SFAirDropReceive.AskResponse);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v64);
}

uint64_t sub_1A980E978(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A980EC88(v1, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
  v5 = (*(*(v4 - 8) + 48))(v3, 3, v4);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return 0x726F727265;
    }

    else
    {
      return 0x707954646578696DLL;
    }
  }

  else if (v5)
  {
    return 0x656E696C636564;
  }

  else
  {
    sub_1A97D8688(*&v3[*(v4 + 48) + 8], *&v3[*(v4 + 48) + 16]);
    sub_1A980FC8C(v3, type metadata accessor for SFAirDropReceive.ItemDestination);
    return 0x747065636361;
  }
}

BOOL _s7Sharing16SFAirDropReceiveO13AcceptContextV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v3 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      sub_1A97C1554(*(a1 + 1), v3);
      sub_1A97C1554(v6, v5);
      v7 = sub_1A993184C(v4, v3, v6, v5);
      sub_1A97D8688(v6, v5);
      sub_1A97D8688(v4, v3);
      return v7;
    }

LABEL_7:
    sub_1A97C1554(*(a1 + 1), v3);
    sub_1A97C1554(v6, v5);
    sub_1A97D8688(v4, v3);
    sub_1A97D8688(v6, v5);
    return 0;
  }

  if (v5 >> 60 != 15)
  {
    goto LABEL_7;
  }

  sub_1A97C1554(*(a1 + 1), v3);
  sub_1A97C1554(v6, v5);
  sub_1A97D8688(v4, v3);
  return 1;
}

unint64_t sub_1A980EBE8()
{
  result = qword_1EB3B2548;
  if (!qword_1EB3B2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2548);
  }

  return result;
}

uint64_t type metadata accessor for SFAirDropReceive.AskResponse(uint64_t a1)
{
  result = qword_1EB3AC5E8;
  if (!qword_1EB3AC5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A980EC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.AskResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s7Sharing16SFAirDropReceiveO11AskResponseO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDropReceive.AskResponse(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2658, &unk_1A9997AF0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - v12;
  v14 = &v30 + *(v11 + 56) - v12;
  sub_1A980EC88(a1, &v30 - v12);
  sub_1A980EC88(a2, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v13, 3, v15);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (v16(v14, 3, v15) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v16(v14, 3, v15) != 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v17)
    {
      sub_1A980EC88(v13, v9);
      v18 = *(v15 + 48);
      v33 = v9[v18];
      v19 = *&v9[v18 + 8];
      v20 = *&v9[v18 + 16];
      if (!v16(v14, 3, v15))
      {
        v31 = v19;
        v32 = v20;
        v23 = &v14[v18];
        v24 = v14[v18];
        v26 = *(v23 + 1);
        v25 = *(v23 + 2);
        sub_1A980F2A4(v14, v6, type metadata accessor for SFAirDropReceive.ItemDestination);
        v27 = _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(v9, v6);
        sub_1A980FC8C(v9, type metadata accessor for SFAirDropReceive.ItemDestination);
        if (v27)
        {
          v37[0] = v33;
          v29 = v31;
          v28 = v32;
          v38 = v31;
          v39 = v32;
          v34[0] = v24;
          v35 = v26;
          v36 = v25;
          v21 = _s7Sharing16SFAirDropReceiveO13AcceptContextV2eeoiySbAE_AEtFZ_0(v37, v34);
          sub_1A980FC8C(v6, type metadata accessor for SFAirDropReceive.ItemDestination);
          sub_1A97D8688(v26, v25);
          sub_1A97D8688(v29, v28);
          sub_1A980FC8C(v13, type metadata accessor for SFAirDropReceive.AskResponse);
          return v21;
        }

        sub_1A980FC8C(v6, type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_1A97D8688(v26, v25);
        sub_1A97D8688(v31, v32);
        sub_1A980FC8C(v13, type metadata accessor for SFAirDropReceive.AskResponse);
        return 0;
      }

      sub_1A97D8688(v19, v20);
      sub_1A980FC8C(v9, type metadata accessor for SFAirDropReceive.ItemDestination);
LABEL_11:
      sub_1A980FC24(v13);
      return 0;
    }

    if (v16(v14, 3, v15) != 1)
    {
      goto LABEL_11;
    }
  }

  sub_1A980FC8C(v13, type metadata accessor for SFAirDropReceive.AskResponse);
  return 1;
}

unint64_t sub_1A980F0AC()
{
  result = qword_1EB3B2580;
  if (!qword_1EB3B2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2580);
  }

  return result;
}

unint64_t sub_1A980F100()
{
  result = qword_1EB3B2588;
  if (!qword_1EB3B2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2588);
  }

  return result;
}

unint64_t sub_1A980F154()
{
  result = qword_1EB3B2590;
  if (!qword_1EB3B2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2590);
  }

  return result;
}

unint64_t sub_1A980F1A8()
{
  result = qword_1EB3B2598;
  if (!qword_1EB3B2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2598);
  }

  return result;
}

unint64_t sub_1A980F1FC()
{
  result = qword_1EB3B25A0;
  if (!qword_1EB3B25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25A0);
  }

  return result;
}

unint64_t sub_1A980F250()
{
  result = qword_1EB3B25A8;
  if (!qword_1EB3B25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25A8);
  }

  return result;
}

uint64_t sub_1A980F2A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A980F30C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SFAirDropReceive.ItemDestination(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A980F350()
{
  result = qword_1EB3B25D8;
  if (!qword_1EB3B25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25D8);
  }

  return result;
}

uint64_t sub_1A980F3A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A980F3F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A980F474(uint64_t a1)
{
  sub_1A980F4CC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1A980F4CC(uint64_t a1)
{
  if (!qword_1EB3AC5D0)
  {
    type metadata accessor for SFAirDropReceive.ItemDestination(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AC5D0);
    }
  }
}

unint64_t sub_1A980F59C()
{
  result = qword_1EB3B25E0;
  if (!qword_1EB3B25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25E0);
  }

  return result;
}

unint64_t sub_1A980F5F4()
{
  result = qword_1EB3B25E8;
  if (!qword_1EB3B25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25E8);
  }

  return result;
}

unint64_t sub_1A980F64C()
{
  result = qword_1EB3B25F0;
  if (!qword_1EB3B25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25F0);
  }

  return result;
}

unint64_t sub_1A980F6A4()
{
  result = qword_1EB3B25F8;
  if (!qword_1EB3B25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B25F8);
  }

  return result;
}

unint64_t sub_1A980F6FC()
{
  result = qword_1EB3B2600;
  if (!qword_1EB3B2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2600);
  }

  return result;
}

unint64_t sub_1A980F754()
{
  result = qword_1EB3B2608;
  if (!qword_1EB3B2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2608);
  }

  return result;
}

unint64_t sub_1A980F7AC()
{
  result = qword_1EB3B2610;
  if (!qword_1EB3B2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2610);
  }

  return result;
}

unint64_t sub_1A980F804()
{
  result = qword_1EB3B2618;
  if (!qword_1EB3B2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2618);
  }

  return result;
}

unint64_t sub_1A980F85C()
{
  result = qword_1EB3B2620;
  if (!qword_1EB3B2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2620);
  }

  return result;
}

unint64_t sub_1A980F8B4()
{
  result = qword_1EB3B2628;
  if (!qword_1EB3B2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2628);
  }

  return result;
}

unint64_t sub_1A980F90C()
{
  result = qword_1EB3B2630;
  if (!qword_1EB3B2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2630);
  }

  return result;
}

unint64_t sub_1A980F964()
{
  result = qword_1EB3B2638;
  if (!qword_1EB3B2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2638);
  }

  return result;
}

unint64_t sub_1A980F9BC()
{
  result = qword_1EB3B2640;
  if (!qword_1EB3B2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2640);
  }

  return result;
}

unint64_t sub_1A980FA14()
{
  result = qword_1EB3B2648;
  if (!qword_1EB3B2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2648);
  }

  return result;
}

unint64_t sub_1A980FA6C()
{
  result = qword_1EB3B2650;
  if (!qword_1EB3B2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2650);
  }

  return result;
}

uint64_t sub_1A980FAC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747065636361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C636564 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707954646578696DLL && a2 == 0xEA00000000007365)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A980FC24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2658, &unk_1A9997AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A980FC8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SFTempPairingStateUpdate.nearbyDeviceNames.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SFTempPairingStateUpdate.connectedDeviceNames.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SFTempPairingStateUpdate.sharingName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SFTempPairingStateUpdate.sharingName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void SFTempPairingStateUpdate.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
}

unint64_t sub_1A980FE9C()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  if (v1 != 3)
  {
    v2 = 0x4E676E6972616873;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000014;
  }

  v3 = 0xD000000000000013;
  if (*v0)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A980FF58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9811070(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A980FF8C(uint64_t a1)
{
  v2 = sub_1A9810290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A980FFC8(uint64_t a1)
{
  v2 = sub_1A9810290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFTempPairingStateUpdate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2660, &unk_1A9997B00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v8 = v1[1];
  v16 = v1[2];
  v17 = v8;
  v9 = v1[3];
  v14[0] = v1[4];
  v14[1] = v1[5];
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9810290();
  v10 = v4;
  sub_1A9977AA0();
  LOBYTE(v19) = 0;
  sub_1A99776A0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v15;
  v11 = v16;
  v19 = v17;
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97AFAF4(&qword_1EB3AB6F0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1A99776E0();
  v19 = v11;
  v18 = 2;
  sub_1A99776E0();
  v19 = v12;
  v18 = 3;
  sub_1A98102E4();
  sub_1A99776E0();
  LOBYTE(v19) = 4;
  sub_1A9977690();
  return (*(v5 + 8))(v7, v10);
}

unint64_t sub_1A9810290()
{
  result = qword_1EB3ACAA8;
  if (!qword_1EB3ACAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACAA8);
  }

  return result;
}

unint64_t sub_1A98102E4()
{
  result = qword_1EB3ABD00[0];
  if (!qword_1EB3ABD00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3ABD00);
  }

  return result;
}

uint64_t SFTempPairingStateUpdate.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2668, &qword_1A9997B10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9810290();
  sub_1A9977A70();
  if (!v2)
  {
    LOBYTE(v22) = 0;
    v9 = sub_1A99775B0();
    v19 = a2;
    v20 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    v21 = 1;
    sub_1A97AFAF4(&unk_1EB3AB6C0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1A99775F0();
    v11 = v22;
    v21 = 2;
    sub_1A99775F0();
    v12 = v22;
    v21 = 3;
    sub_1A9810684();
    sub_1A99775F0();
    v18 = v22;
    LOBYTE(v22) = 4;
    v13 = sub_1A99775A0();
    v15 = v14;
    v20 &= 1u;
    (*(v6 + 8))(v8, v5);
    v16 = v19;
    *v19 = v20;
    v16[1] = v11;
    v16[2] = v12;
    v16[3] = v18;
    v16[4] = v13;
    v16[5] = v15;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_1A9810684()
{
  result = qword_1EB3ABCF8;
  if (!qword_1EB3ABCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABCF8);
  }

  return result;
}

uint64_t sub_1A981075C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001A99E4460 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A99777E0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A98107F0(uint64_t a1)
{
  v2 = sub_1A98109A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A981082C(uint64_t a1)
{
  v2 = sub_1A98109A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFTempPairingSenderStateUpdate.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2670, &qword_1A9997B18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98109A0();
  sub_1A9977AA0();
  sub_1A99776C0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A98109A0()
{
  result = qword_1EB3B2678;
  if (!qword_1EB3B2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2678);
  }

  return result;
}

uint64_t SFTempPairingSenderStateUpdate.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2680, &qword_1A9997B20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98109A0();
  sub_1A9977A70();
  if (!v2)
  {
    v9 = sub_1A99775D0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A9810B60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2670, &qword_1A9997B18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98109A0();
  sub_1A9977AA0();
  sub_1A99776C0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t getEnumTagSinglePayload for SFTempPairingSenderStateUpdate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SFTempPairingSenderStateUpdate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SFTempPairingStateUpdate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SFTempPairingStateUpdate.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A9810E64()
{
  result = qword_1EB3B2688;
  if (!qword_1EB3B2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2688);
  }

  return result;
}

unint64_t sub_1A9810EBC()
{
  result = qword_1EB3B2690;
  if (!qword_1EB3B2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2690);
  }

  return result;
}

unint64_t sub_1A9810F14()
{
  result = qword_1EB3B2698;
  if (!qword_1EB3B2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2698);
  }

  return result;
}

unint64_t sub_1A9810F6C()
{
  result = qword_1EB3B26A0;
  if (!qword_1EB3B26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B26A0);
  }

  return result;
}

unint64_t sub_1A9810FC4()
{
  result = qword_1EB3ACA98;
  if (!qword_1EB3ACA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACA98);
  }

  return result;
}

unint64_t sub_1A981101C()
{
  result = qword_1EB3ACAA0;
  if (!qword_1EB3ACAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACAA0);
  }

  return result;
}

uint64_t sub_1A9811070(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001A99E4400 == a2;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E4420 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A99E4440 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEF65746174536E6FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E676E6972616873 && a2 == 0xEB00000000656D61)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A9811238()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B26B0);
  __swift_project_value_buffer(v0, qword_1EB3B26B0);
  return sub_1A9976490();
}

uint64_t SFProximityHandoffUIClientError.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t sub_1A9811340@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A981321C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4, v5);
}

uint64_t sub_1A98113E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A9813214;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3, v4);
  return sub_1A967C46C(v8, v9);
}

uint64_t SFProximityHandoffUIClient.invalidationHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A967C510(*v1, v1[1]);
  return v2;
}

uint64_t SFProximityHandoffUIClient.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A967C46C(v6, v7);
}

id sub_1A98115C8()
{
  v1 = OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient____lazy_storage___interface;
  v2 = *(v0 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient____lazy_storage___interface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient____lazy_storage___interface);
  }

  else
  {
    v4 = sub_1A9812F44();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id SFProximityHandoffUIClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFProximityHandoffUIClient.init()()
{
  ObjectType = swift_getObjectType();
  v9 = sub_1A9976FB0();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A9976FA0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A9976680();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = &v0[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v8 = OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_queue;
  sub_1A9812DE0(0, &qword_1EB3AC8D0, 0x1E69E9610);
  sub_1A9976650();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1A98118DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A9811934();
  sub_1A99771F0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v9);
  *&v0[v8] = sub_1A9976FE0();
  *&v0[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient____lazy_storage___interface] = 0;
  *&v0[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_proximityHandoffUIServer] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_1A98118DC()
{
  result = qword_1EB3AC8E0;
  if (!qword_1EB3AC8E0)
  {
    sub_1A9976FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC8E0);
  }

  return result;
}

unint64_t sub_1A9811934()
{
  result = qword_1EB3AC910;
  if (!qword_1EB3AC910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B26D8, &unk_1A9997EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC910);
  }

  return result;
}

id SFProximityHandoffUIClient.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_1A9811A04();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A9811A04()
{
  v1 = OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_connection;
  v2 = *(v0 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_connection);
  if (v2)
  {
    v3 = v0;
    v4 = qword_1EB3B0AF0;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_1A99764A0();
    __swift_project_value_buffer(v6, qword_1EB3B26B0);
    v7 = sub_1A9976480();
    v8 = sub_1A9976F90();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A9662000, v7, v8, "ProximityHandoffUIClient: Invalidating connection", v9, 2u);
      MEMORY[0x1AC58D2C0](v9, -1, -1);
    }

    v10 = *(v3 + v1);
    *(v3 + v1) = 0;

    v11 = v3 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler;
    swift_beginAccess();
    v12 = *v11;
    if (*v11)
    {
      v13 = *(v11 + 8);

      v12(v14);
      sub_1A967C46C(v12, v13);
    }

    [v5 invalidate];
  }

  else
  {
    if (qword_1EB3B0AF0 != -1)
    {
      swift_once();
    }

    v15 = sub_1A99764A0();
    __swift_project_value_buffer(v15, qword_1EB3B26B0);
    oslog = sub_1A9976480();
    v16 = sub_1A9976F60();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A9662000, oslog, v16, "XPC Connection not available, skipping end.", v17, 2u);
      MEMORY[0x1AC58D2C0](v17, -1, -1);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SFProximityHandoffUIClient.activate()()
{
  v1 = v0;
  v2 = sub_1A99767E0();
  v3 = sub_1A99767E0();
  v4 = [objc_opt_self() endpointForMachName:v2 service:v3 instance:0];

  if (!v4)
  {
    if (qword_1EB3B0AF0 != -1)
    {
      swift_once();
    }

    v29 = sub_1A99764A0();
    __swift_project_value_buffer(v29, qword_1EB3B26B0);
    v30 = sub_1A9976480();
    v31 = sub_1A9976F70();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1A9662000, v30, v31, "Could not find endpoint for AirDropUI launch angel. It may not be loaded.", v32, 2u);
      MEMORY[0x1AC58D2C0](v32, -1, -1);
    }

    sub_1A9812450();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
    return;
  }

  if (qword_1EB3B0AF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1A99764A0();
  __swift_project_value_buffer(v5, qword_1EB3B26B0);
  v6 = sub_1A9976480();
  v7 = sub_1A9976F60();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1A9662000, v6, v7, "ProximityHandoffUIClient: endpoint created!", v8, 2u);
    MEMORY[0x1AC58D2C0](v8, -1, -1);
  }

  v9 = [objc_opt_self() connectionWithEndpoint_];
  if (!v9)
  {
LABEL_19:
    v34 = sub_1A9976480();
    v35 = sub_1A9976F70();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1A9662000, v34, v35, "Could not create a connection with the AirDropUI endpoint", v36, 2u);
      MEMORY[0x1AC58D2C0](v36, -1, -1);
    }

    sub_1A9812450();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();

    return;
  }

  v10 = v9;
  v47 = &unk_1F1DAF0C8;
  v11 = swift_dynamicCastObjCProtocolConditional();
  if (!v11)
  {

    goto LABEL_19;
  }

  v12 = v11;
  v13 = sub_1A9976480();
  v14 = sub_1A9976F60();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1A9662000, v13, v14, "ProximityHandoffUIClient: connection created", v15, 2u);
    MEMORY[0x1AC58D2C0](v15, -1, -1);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1A9812D98;
  *(v17 + 24) = v16;
  v45 = sub_1A9812DA0;
  v46 = v17;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_1A9812A84;
  *(&v44 + 1) = &block_descriptor_3;
  v18 = _Block_copy(&aBlock);
  v19 = v1;

  v20 = v10;

  [v12 configureConnection_];

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v21 = *&v19[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_connection];
    *&v19[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_connection] = v12;
    v39 = v20;

    [v12 activate];
    v22 = sub_1A99767E0();
    v23 = sub_1A99767E0();
    v24 = [objc_opt_self() attributeWithDomain:v22 name:v23];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2768, qword_1A9997EC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1A9997EA0;
    *(v25 + 32) = v24;
    sub_1A9812DE0(0, &unk_1EB3B2770, 0x1E69C7550);
    v26 = v24;
    v27 = sub_1A9976AB0();

    v28 = [v12 remoteTargetWithLaunchingAssertionAttributes_];

    if (v28)
    {
      sub_1A99771B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    aBlock = v41;
    v44 = v42;
    sub_1A97E4448(&aBlock, &v41);
    if (*(&v42 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2780, &qword_1A9997ED8);
      if (swift_dynamicCast())
      {
        sub_1A9812E28(&aBlock);

        *&v19[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_proximityHandoffUIServer] = v40;

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      sub_1A9812E28(&v41);
    }

    sub_1A9812450();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();

    sub_1A9812E28(&aBlock);
  }
}

unint64_t sub_1A9812450()
{
  result = qword_1EB3B2700;
  if (!qword_1EB3B2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2700);
  }

  return result;
}

id sub_1A98124A4(void *a1, uint64_t a2)
{
  if (qword_1EB3B0AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A99764A0();
  __swift_project_value_buffer(v4, qword_1EB3B26B0);
  v5 = sub_1A9976480();
  v6 = sub_1A9976F60();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9662000, v5, v6, "ProximityHandoffUIClient: configuring session...", v7, 2u);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
  }

  v8 = sub_1A99767E0();
  [a1 setName_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  v10 = sub_1A98115C8();
  [a1 setInterface_];

  [a1 setInterfaceTarget_];
  v21 = sub_1A981281C;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A9812904;
  v20 = &block_descriptor_30;
  v11 = _Block_copy(&v17);
  [a1 setActivationHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1A9813224;
  v22 = v12;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A9812904;
  v20 = &block_descriptor_36;
  v13 = _Block_copy(&v17);

  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1A9813248;
  v22 = v14;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A9812904;
  v20 = &block_descriptor_40;
  v15 = _Block_copy(&v17);

  [a1 setInvalidationHandler_];
  _Block_release(v15);
  return [a1 setTargetQueue_];
}

void sub_1A981281C()
{
  if (qword_1EB3B0AF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A99764A0();
  __swift_project_value_buffer(v0, qword_1EB3B26B0);
  oslog = sub_1A9976480();
  v1 = sub_1A9976F60();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1A9662000, oslog, v1, "ProximityHandoffUIClient: connection activated!", v2, 2u);
    MEMORY[0x1AC58D2C0](v2, -1, -1);
  }
}

void sub_1A9812904(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1A981296C(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_1EB3B0AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A99764A0();
  __swift_project_value_buffer(v4, qword_1EB3B26B0);
  v5 = sub_1A9976480();
  v6 = sub_1A9976F60();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9662000, v5, v6, a3, v7, 2u);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1A9811A04();
  }
}

uint64_t sub_1A9812A84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void SFProximityHandoffUIClient.registerForProximityHandoffInteractionUpdates(completion:)(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_proximityHandoffUIServer);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v11[4] = sub_1A9812E90;
    v11[5] = v6;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A9812C6C;
    v11[3] = &block_descriptor_9;
    v7 = _Block_copy(v11);
    swift_unknownObjectRetain();

    [v5 registerForProximityHandoffInteractionUpdatesWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1A9812450();
    v9 = swift_allocError();
    *v10 = 3;
    a1();
  }
}

void sub_1A9812C6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v3(a2);
}

void sub_1A9812D34(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1A9975F10();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A9812DE0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1A9812E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BA0, &unk_1A99923D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A9812EBC()
{
  result = qword_1EB3B2788;
  if (!qword_1EB3B2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2788);
  }

  return result;
}

id sub_1A9812F44()
{
  v0 = sub_1A99767E0();
  v1 = [objc_opt_self() interfaceWithIdentifier_];

  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [v1 setServer_];

  v4 = [v2 protocolForProtocol_];
  [v1 setClient_];

  [v1 setClientMessagingExpectation_];
  return v1;
}

void sub_1A9813050(uint64_t a1, uint64_t a2)
{
  v10[2] = a2;
  v2 = *(a1 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_proximityHandoffUIServer);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1A981320C;
    *(v3 + 24) = v10;
    aBlock[4] = sub_1A9813298;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A9812C6C;
    aBlock[3] = &block_descriptor_21;
    v4 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v2 registerForProximityHandoffInteractionUpdatesWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1A9812450();
    v7 = swift_allocError();
    *v8 = 3;
    v9 = sub_1A9975F10();
    (*(a2 + 16))(a2, v9);
  }
}

void *_SFXPCContainerRegistry.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  v0[14] = sub_1A97BF010(MEMORY[0x1E69E7CC0]);
  v0[15] = sub_1A97BF010(v1);
  v0[16] = sub_1A97BF010(v1);
  return v0;
}

void *_SFXPCContainerRegistry.init()()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  v0[14] = sub_1A97BF010(MEMORY[0x1E69E7CC0]);
  v0[15] = sub_1A97BF010(v1);
  v0[16] = sub_1A97BF010(v1);
  return v0;
}

BOOL _SFXPCContainerRegistry.isEmpty.getter()
{
  swift_beginAccess();
  if (*(v0[14] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  if (*(v0[15] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  return *(v0[16] + 16) == 0;
}

uint64_t _SFXPCContainerRegistry.description.getter()
{
  v1 = v0;
  v115 = sub_1A99762C0();
  v2 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B27F0, &qword_1A9998010);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v103 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v100 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v100 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v109 = &v100 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v114 = &v100 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v100 - v17;
  v122 = 0xA3A736B636F6C42;
  v123 = 0xE800000000000000;
  swift_beginAccess();
  v19 = *(v0 + 112);
  v20 = *(v19 + 16);
  v113 = v2;
  v104 = v9;
  v108 = v12;
  v100 = v0;
  if (v20)
  {
    v21 = *(v19 + 64);
    v102 = v19 + 64;
    v22 = 1 << *(v19 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v21;
    v101 = (v22 + 63) >> 6;
    v106 = v2 + 16;
    v105 = v2 + 32;
    v110 = v19;
    v111 = v2 + 8;

    v26 = 0;
    v27 = v114;
    v107 = v18;
    v28 = v113;
    if (!v24)
    {
LABEL_6:
      if (v101 <= v26 + 1)
      {
        v30 = v26 + 1;
      }

      else
      {
        v30 = v101;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v29 >= v101)
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
          (*(*(v46 - 8) + 56))(v27, 1, 1, v46);
          v24 = 0;
          goto LABEL_14;
        }

        v24 = *(v102 + 8 * v29);
        ++v26;
        if (v24)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_60;
    }

    while (1)
    {
      v29 = v26;
LABEL_13:
      v32 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v33 = v32 | (v29 << 6);
      v34 = v110;
      v35 = v112;
      v36 = v115;
      (*(v28 + 16))(v112, *(v110 + 48) + *(v28 + 72) * v33, v115);
      v37 = (*(v34 + 56) + 16 * v33);
      v39 = *v37;
      v38 = v37[1];
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
      v41 = &v114[*(v40 + 48)];
      (*(v28 + 32))(v114, v35, v36);
      *v41 = v39;
      *(v41 + 1) = v38;
      v27 = v114;
      (*(*(v40 - 8) + 56))(v114, 0, 1, v40);

      v31 = v29;
      v18 = v107;
LABEL_14:
      sub_1A9814564(v27, v18);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
      if ((*(*(v42 - 8) + 48))(v18, 1, v42) == 1)
      {
        break;
      }

      v43 = &v18[*(v42 + 48)];
      v44 = *v43;
      v45 = *(v43 + 1);
      v120 = 9;
      v121 = 0xE100000000000000;
      MEMORY[0x1AC5895B0](v44, v45);

      MEMORY[0x1AC5895B0](10, 0xE100000000000000);
      MEMORY[0x1AC5895B0](v120, v121);

      result = (*v111)(v18, v115);
      v26 = v31;
      if (!v24)
      {
        goto LABEL_6;
      }
    }

    v2 = v113;
    v9 = v104;
    v1 = v100;
    v12 = v108;
  }

  else
  {
    MEMORY[0x1AC5895B0](0x3E7974706D653C09, 0xE90000000000000ALL);
  }

  MEMORY[0x1AC5895B0](0x65636E6575716553, 0xEB000000000A3A73);
  swift_beginAccess();
  v47 = *(v1 + 120);
  if (*(v47 + 16))
  {
    v48 = *(v47 + 64);
    v106 = v47 + 64;
    v49 = 1 << *(v47 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & v48;
    v105 = (v49 + 63) >> 6;
    v110 = v2 + 16;
    v107 = v2 + 32;
    v114 = (v2 + 8);
    v111 = v47;

    v52 = 0;
    v53 = v109;
    if (v51)
    {
      while (1)
      {
        v54 = v52;
LABEL_32:
        v57 = __clz(__rbit64(v51));
        v51 &= v51 - 1;
        v58 = v57 | (v54 << 6);
        v59 = v111;
        v60 = v112;
        v61 = v113;
        v62 = v115;
        (*(v113 + 16))(v112, *(v111 + 48) + *(v113 + 72) * v58, v115);
        v63 = (*(v59 + 56) + 16 * v58);
        v64 = *v63;
        v65 = v63[1];
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
        v67 = &v108[*(v66 + 48)];
        v68 = *(v61 + 32);
        v12 = v108;
        v68(v108, v60, v62);
        *v67 = v64;
        *(v67 + 1) = v65;
        (*(*(v66 - 8) + 56))(v12, 0, 1, v66);

        v56 = v54;
        v53 = v109;
LABEL_33:
        sub_1A9814564(v12, v53);
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
        if ((*(*(v69 - 8) + 48))(v53, 1, v69) == 1)
        {
          break;
        }

        v70 = (v53 + *(v69 + 48));
        v71 = *v70;
        v72 = v70[1];
        v118 = 9;
        v119 = 0xE100000000000000;
        MEMORY[0x1AC5895B0](v71, v72);

        MEMORY[0x1AC5895B0](10, 0xE100000000000000);
        MEMORY[0x1AC5895B0](v118, v119);

        result = (*v114)(v53, v115);
        v52 = v56;
        if (!v51)
        {
          goto LABEL_25;
        }
      }

      v2 = v113;
      v9 = v104;
      v1 = v100;
      goto LABEL_39;
    }

LABEL_25:
    if (v105 <= v52 + 1)
    {
      v55 = v52 + 1;
    }

    else
    {
      v55 = v105;
    }

    v56 = v55 - 1;
    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v54 >= v105)
      {
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
        (*(*(v73 - 8) + 56))(v12, 1, 1, v73);
        v51 = 0;
        goto LABEL_33;
      }

      v51 = *(v106 + 8 * v54);
      ++v52;
      if (v51)
      {
        goto LABEL_32;
      }
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  MEMORY[0x1AC5895B0](0x3E7974706D653C09, 0xE90000000000000ALL);
LABEL_39:
  MEMORY[0x1AC5895B0](0x726F746172657449, 0xEB000000000A3A73);
  swift_beginAccess();
  v74 = *(v1 + 128);
  if (!*(v74 + 16))
  {
    MEMORY[0x1AC5895B0](0x3E7974706D653C09, 0xE90000000000000ALL);
    return v122;
  }

  v75 = *(v74 + 64);
  v108 = (v74 + 64);
  v76 = 1 << *(v74 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & v75;
  v107 = (v76 + 63) >> 6;
  v109 = (v2 + 32);
  v110 = v2 + 16;
  v114 = (v2 + 8);
  v111 = v74;

  v79 = 0;
  v80 = v103;
  v81 = v113;
  if (v78)
  {
    while (1)
    {
      v82 = v79;
LABEL_51:
      v85 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
      v86 = v85 | (v82 << 6);
      v87 = v111;
      v88 = v112;
      v89 = v115;
      (*(v81 + 16))(v112, *(v111 + 48) + *(v81 + 72) * v86, v115);
      v90 = (*(v87 + 56) + 16 * v86);
      v92 = *v90;
      v91 = v90[1];
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
      v80 = v103;
      v94 = &v103[*(v93 + 48)];
      (*(v81 + 32))(v103, v88, v89);
      *v94 = v92;
      *(v94 + 1) = v91;
      (*(*(v93 - 8) + 56))(v80, 0, 1, v93);

      v84 = v82;
      v9 = v104;
LABEL_52:
      sub_1A9814564(v80, v9);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
      if ((*(*(v95 - 8) + 48))(v9, 1, v95) == 1)
      {
        break;
      }

      v96 = &v9[*(v95 + 48)];
      v97 = *v96;
      v98 = *(v96 + 1);
      v116 = 9;
      v117 = 0xE100000000000000;
      MEMORY[0x1AC5895B0](v97, v98);

      MEMORY[0x1AC5895B0](10, 0xE100000000000000);
      MEMORY[0x1AC5895B0](v116, v117);

      result = (*v114)(v9, v115);
      v79 = v84;
      if (!v78)
      {
        goto LABEL_44;
      }
    }

    return v122;
  }

LABEL_44:
  if (v107 <= v79 + 1)
  {
    v83 = v79 + 1;
  }

  else
  {
    v83 = v107;
  }

  v84 = v83 - 1;
  while (1)
  {
    v82 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v82 >= v107)
    {
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
      (*(*(v99 - 8) + 56))(v80, 1, 1, v99);
      v78 = 0;
      goto LABEL_52;
    }

    v78 = *&v108[8 * v82];
    ++v79;
    if (v78)
    {
      goto LABEL_51;
    }
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1A9813FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A9814008, a4, 0);
}

uint64_t sub_1A9814008()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_1A97E3308(v2, v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 112) = v8;
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1A98140D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A98140F8, a4, 0);
}

uint64_t sub_1A98140F8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + 120);
  *(v4 + 120) = 0x8000000000000000;
  sub_1A97E3308(v2, v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 120) = v8;
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1A98141C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A98141E8, a4, 0);
}

uint64_t sub_1A98141E8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + 128);
  *(v4 + 128) = 0x8000000000000000;
  sub_1A97E3308(v2, v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 128) = v8;
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1A98142B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A98142D4, a4, 0);
}

uint64_t sub_1A98142D4()
{
  sub_1A9814334(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9814334(uint64_t a1)
{
  v2 = sub_1A99762C0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  v6(v5, a1, v2);
  swift_beginAccess();
  sub_1A97DCD68(0, 0, v5);
  swift_endAccess();
  v6(v5, a1, v2);
  swift_beginAccess();
  sub_1A97DCD68(0, 0, v5);
  swift_endAccess();
  v6(v5, a1, v2);
  swift_beginAccess();
  sub_1A97DCD68(0, 0, v5);
  return swift_endAccess();
}

void *_SFXPCContainerRegistry.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t _SFXPCContainerRegistry.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1A9814564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B27F0, &qword_1A9998010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 Deque._UnsafeHandle.header.getter@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  return result;
}

uint64_t (*Deque._UnsafeHandle.count.modify(void *a1, uint64_t a2))()
{
  *a1 = *(a2 + 8);
  a1[1] = a2;
  return sub_1A9814688;
}

uint64_t (*Deque._UnsafeHandle.startSlot.modify(void *a1, uint64_t a2))()
{
  *a1 = *(a2 + 16);
  a1[1] = a2;
  return sub_1A98146D0;
}

uint64_t Deque._UnsafeHandle.buffer(for:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!__OFSUB__(a2, result))
  {
    return sub_1A99767B0();
  }

  __break(1u);
  return result;
}

uint64_t Deque._UnsafeHandle.mutableBuffer(for:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    sub_1A99767B0();

    return sub_1A99770E0();
  }

  return result;
}

Sharing::_DequeSlot __swiftcall Deque._UnsafeHandle.slot(after:)(Sharing::_DequeSlot after)
{
  if (__OFADD__(after.position, 1))
  {
    __break(1u);
  }

  else if (after.position + 1 >= *v1)
  {
    return 0;
  }

  else
  {
    ++after.position;
  }

  return after;
}

Sharing::_DequeSlot __swiftcall Deque._UnsafeHandle.slot(before:)(Sharing::_DequeSlot before)
{
  if (before.position)
  {
    v2 = __OFSUB__(before.position, 1);
    result.position = before.position - 1;
    if (!v2)
    {
      return result;
    }

    __break(1u);
  }

  result.position = *v1 - 1;
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
  }

  return result;
}

Sharing::_DequeSlot __swiftcall Deque._UnsafeHandle.slot(_:offsetBy:)(Sharing::_DequeSlot _, Swift::Int offsetBy)
{
  v4 = __OFADD__(_.position, offsetBy);
  result.position = _.position + offsetBy;
  if (v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (offsetBy < 0)
  {
LABEL_7:
    if ((result.position & 0x8000000000000000) == 0)
    {
      return result;
    }

    v4 = __OFADD__(result.position, *v2);
    result.position += *v2;
    if (!v4)
    {
      return result;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v4 = __OFSUB__(result.position, *v2);
  if (result.position >= *v2)
  {
    result.position -= *v2;
    if (v4)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  return result;
}

Sharing::_DequeSlot __swiftcall Deque._UnsafeHandle.slot(forOffset:)(Swift::Int forOffset)
{
  v2 = v1[2] + forOffset;
  v3 = *v1;
  if (v2 < *v1)
  {
    v3 = 0;
  }

  return (v2 - v3);
}

void *Deque._UnsafeHandle.segments()@<X0>(void *result@<X0>, uint64_t a4@<X8>)
{
  v5 = result[2];
  v6 = *result - v5;
  if (__OFSUB__(*result, v5))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    if (v6 >= v7)
    {
      result = _UnsafeWrappedBuffer.init(start:count:)(v10);
      goto LABEL_6;
    }

    if (!__OFSUB__(v7, v6))
    {
      result = _UnsafeWrappedBuffer.init(first:count:second:count:)(v10);
LABEL_6:
      v8 = v11;
      v9 = v10[1];
      *a4 = v10[0];
      *(a4 + 16) = v9;
      *(a4 + 32) = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *Deque._UnsafeHandle.segments(forOffsets:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a6@<X8>)
{
  v7 = a3[2];
  v8 = result + v7;
  v9 = *a3;
  if (result + v7 >= *a3)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v7 + a2;
  if (v11 >= v9)
  {
    v12 = *a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = __OFSUB__(a2, result);
  v14 = a2 - result;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = &v8[-v10];
    if (!v14 || v15 < v11 - v12)
    {
      result = _UnsafeWrappedBuffer.init(start:count:)(v18);
      goto LABEL_13;
    }

    if (!__OFSUB__(v9, v15))
    {
      result = _UnsafeWrappedBuffer.init(first:count:second:count:)(v18);
LABEL_13:
      v16 = v19;
      v17 = v18[1];
      *a6 = v18[0];
      *(a6 + 16) = v17;
      *(a6 + 32) = v16;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Deque._UnsafeHandle.mutableSegments()@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  Deque._UnsafeHandle.segments()(a1, &v22);
  v6 = sub_1A99770E0();
  v8 = v7;
  v17 = v23;
  v18 = v24;
  v16[2] = a3;
  sub_1A99767C0();
  sub_1A99770A0();
  v9 = sub_1A9977100();
  result = sub_1A97A4AD0(sub_1A98174EC, v16, MEMORY[0x1E69E73E0], v9, v10, &v19);
  v12 = v19;
  v13 = v20;
  if (v20)
  {
    v14 = v19;
  }

  else
  {
    v14 = 0;
  }

  if (v20)
  {
    v15 = v21;
  }

  else
  {
    v15 = 1;
  }

  if (!v21)
  {
    v12 = v14;
  }

  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v15;
  return result;
}

uint64_t Deque._UnsafeHandle.mutableSegments(forOffsets:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  Deque._UnsafeHandle.segments(forOffsets:)(a1, a2, a3, &v24);
  v8 = sub_1A99770E0();
  v10 = v9;
  v19 = v25;
  v20 = v26;
  v18[2] = a5;
  sub_1A99767C0();
  sub_1A99770A0();
  v11 = sub_1A9977100();
  result = sub_1A97A4AD0(sub_1A981772C, v18, MEMORY[0x1E69E73E0], v11, v12, &v21);
  v14 = v21;
  v15 = v22;
  if (v22)
  {
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  if (v22)
  {
    v17 = v23;
  }

  else
  {
    v17 = 1;
  }

  if (!v23)
  {
    v14 = v16;
  }

  *a6 = v8;
  *(a6 + 8) = v10;
  *(a6 + 16) = v14;
  *(a6 + 24) = v15;
  *(a6 + 32) = v17;
  return result;
}

Sharing::_DequeSlot Deque._UnsafeHandle.availableSegments()@<X0>(Swift::Int *a1@<X0>, uint64_t a4@<X8>)
{
  v7 = a1[1];
  v6 = a1[2];
  result.position = Deque._UnsafeHandle.slot(_:offsetBy:)(v6, v7).position;
  v9 = *a1;
  if (v7 >= *a1)
  {
    result.position = sub_1A99770C0();
    goto LABEL_6;
  }

  if (result.position < v6)
  {
    if (!__OFSUB__(v6, result.position))
    {
      sub_1A99767B0();
      result.position = sub_1A99770E0();
LABEL_6:
      v11 = 0;
      v12 = 0;
      v13 = 1;
LABEL_12:
      *a4 = result;
      *(a4 + 8) = v10;
      *(a4 + 16) = v11;
      *(a4 + 24) = v12;
      *(a4 + 32) = v13;
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v9 < result.position)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFSUB__(v9, result.position))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1A99767B0();
  result.position = sub_1A99770E0();
  if ((a1[2] & 0x8000000000000000) == 0)
  {
    position = result.position;
    v16 = v14;
    sub_1A99767B0();
    v11 = sub_1A99770E0();
    result.position = position;
    v12 = v17;
    v10 = v16;
    v13 = v12 == 0;
    if (!v12)
    {
      v11 = 0;
    }

    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A9814DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3 < 1)
  {
    return a1;
  }

  result = a7(a2, a3, a6, a4);
  if (result)
  {
    result = a8(result, a3, a5 + *(*(a6 - 8) + 72) * a1, a6);
    v14 = __OFADD__(a1, a3);
    a1 += a3;
    if (!v14)
    {
      return a1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::tuple_source_Sharing__DequeSlot_target_Sharing__DequeSlot __swiftcall Deque._UnsafeHandle.move(from:to:count:)(Sharing::_DequeSlot from, Sharing::_DequeSlot to, Swift::Int count)
{
  if (count >= 1)
  {
    position = from.position;
    v5 = to.position;
    sub_1A9977080();
    v6 = Deque._UnsafeHandle.slot(_:offsetBy:)(position, count).position;
    to.position = Deque._UnsafeHandle.slot(_:offsetBy:)(v5, count).position;
    from.position = v6;
  }

  result.target = to;
  result.source = from;
  return result;
}

uint64_t Deque._UnsafeHandle.copyElements()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _DequeBuffer(0, a3, a3, a4);
  v14 = a1;
  v15 = a2;
  sub_1A9977310();

  v7 = sub_1A99774C0();
  v8 = v7;
  if (a1[1] < 1)
  {
  }

  else
  {
    v9 = MEMORY[0x1EEE9AC00](v7);
    v13[8] = a3;
    v13[9] = a1;
    v13[10] = a2;
    MEMORY[0x1EEE9AC00](v9);
    v13[2] = a3;
    v13[3] = sub_1A9817524;
    v13[4] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817544, v13, v8, &type metadata for _DequeBufferHeader, a3, v11, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v16);
  }

  return v8;
}

uint64_t sub_1A98150BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Deque._UnsafeHandle.segments()(a3, v11);
  result = Deque._UnsafeHandle.initialize(at:from:)(a3[2], v11[0], v11[1], v8, a2, a5);
  if ((v12 & 1) == 0)
  {
    return Deque._UnsafeHandle.initialize(at:from:)(0, v11[2], v11[3], v10, a2, a5);
  }

  return result;
}

uint64_t Deque._UnsafeHandle.copyElements(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _DequeBuffer(0, a4, a3, a4);
  v14 = a2;
  v15 = a3;
  sub_1A9977310();

  v7 = sub_1A99774C0();
  v8 = v7;
  if (*(a2 + 8) < 1)
  {
  }

  else
  {
    v9 = MEMORY[0x1EEE9AC00](v7);
    v13[8] = a4;
    v13[9] = a2;
    v13[10] = a3;
    MEMORY[0x1EEE9AC00](v9);
    v13[2] = a4;
    v13[3] = sub_1A98175BC;
    v13[4] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, v13, v8, &type metadata for _DequeBufferHeader, a4, v11, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v16);
  }

  return v8;
}

uint64_t sub_1A98152D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Deque._UnsafeHandle.segments()(a3, v10);
  result = Deque._UnsafeHandle.initialize(at:from:)(0, v10[0], v10[1], v7, a2, a5);
  if ((v11 & 1) == 0)
  {
    return Deque._UnsafeHandle.initialize(at:from:)(result, v10[2], v10[3], v9, a2, a5);
  }

  return result;
}

uint64_t Deque._UnsafeHandle.moveElements(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 8);
  type metadata accessor for _DequeBuffer(0, a4, a3, a4);
  v15 = v7;
  sub_1A9977310();

  v8 = sub_1A99774C0();
  v9 = v8;
  if (v7 < 1)
  {
  }

  else
  {
    v10 = MEMORY[0x1EEE9AC00](v8);
    v14[8] = a4;
    v14[9] = a2;
    v14[10] = a3;
    MEMORY[0x1EEE9AC00](v10);
    v14[2] = a4;
    v14[3] = sub_1A9817620;
    v14[4] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, v14, v9, &type metadata for _DequeBufferHeader, a4, v12, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v16);

    *(a2 + 8) = 0;
  }

  return v9;
}

uint64_t sub_1A98154E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Deque._UnsafeHandle.segments()(a3, &v19);
  sub_1A99770E0();
  v7 = v6;
  v15 = v20;
  v16 = v21;
  v14[2] = a5;
  sub_1A99767C0();
  sub_1A99770A0();
  v8 = sub_1A9977100();
  result = sub_1A97A4AD0(sub_1A981772C, v14, MEMORY[0x1E69E73E0], v8, v9, v17);
  v11 = v17[1];
  v12 = v18;
  if (v7 >= 1)
  {
    result = sub_1A99770B0();
    if (!result)
    {
      __break(1u);
      goto LABEL_12;
    }

    result = sub_1A9977080();
  }

  if (v11 < 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if ((v13 & 1) == 0)
  {
    result = sub_1A99770B0();
    if (result)
    {
      return sub_1A9977080();
    }

LABEL_12:
    __break(1u);
  }

  return result;
}

Sharing::_DequeSlot Deque._UnsafeHandle.withUnsafeSegment<A>(startingAt:maximumCount:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, Sharing::_DequeSlot *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v43 = a10;
  v41 = *(a10 - 8);
  v42 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v21 = &v37 - v20;
  v23 = *(v22 + 8);
  if (v23 <= v24)
  {
    v36 = sub_1A99767B0();
    a5(v36);
    if (v10)
    {
      return v23;
    }

    v21 = v16;
LABEL_19:
    (*(v41 + 32))(v42, v21, v43);
    return v23;
  }

  v25 = v18;
  v38 = v17;
  v39 = v19;
  v40 = a5;
  result.position = Deque._UnsafeHandle.slot(_:offsetBy:)(a7[2], v23).position;
  v27 = a7[2].position + a2;
  position = a7->position;
  if (v27 >= a7->position)
  {
    v29 = a7->position;
  }

  else
  {
    v29 = 0;
  }

  v30 = v27 - v29;
  if (v30 < result.position)
  {
    position = result.position;
  }

  v31 = __OFSUB__(position, v30);
  v32 = position - v30;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v25 & 1) == 0)
    {
      v33 = v38;
    }

    if (v32 >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = v32;
    }

    v35 = sub_1A99767B0();
    result.position = (v40)(v35);
    if (v10)
    {
      return v23;
    }

    v23 = a2 + v34;
    if (!__OFADD__(a2, v34))
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void *Deque._UnsafeHandle.uncheckedReplaceInPlace<A>(inOffsets:with:)(void *result, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result != a2)
  {
    v35 = v8;
    v36 = v9;
    Deque._UnsafeHandle.segments(forOffsets:)(result, a2, a4, v29);
    v14 = sub_1A99770E0();
    v16 = v15;
    v31 = v29[1];
    LOBYTE(v32) = v30;
    MEMORY[0x1EEE9AC00](v14);
    v25[2] = a6;
    sub_1A99767C0();
    sub_1A99770A0();
    v17 = sub_1A9977100();
    sub_1A97A4AD0(sub_1A981772C, v25, MEMORY[0x1E69E73E0], v17, v18, &v26);
    v21 = v26;
    if (v27)
    {
      v22 = v26;
    }

    else
    {
      v22 = 0;
    }

    if (v27)
    {
      v23 = v28;
    }

    else
    {
      v23 = 1;
    }

    if (!v28)
    {
      v21 = v22;
    }

    *&v31 = v14;
    *(&v31 + 1) = v16;
    v32 = v21;
    v33 = v27;
    v34 = v23;
    v24 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, a6, v19, v20);
    return _UnsafeMutableWrappedBuffer.assign<A>(from:)(a3, v24, a7, a8);
  }

  return result;
}

uint64_t Deque._UnsafeHandle.uncheckedAppend(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + *(v8 + 72) * Deque._UnsafeHandle.slot(_:offsetBy:)(v11[2], v11[1].position).position;
  (*(v8 + 16))(v10, a1, a4);
  result = (*(v8 + 32))(v12, v10, a4);
  v14 = *(a2 + 8);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8) = v16;
  }

  return result;
}

void *Deque._UnsafeHandle.uncheckedAppend(contentsOf:)(void *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 1)
  {
    return result;
  }

  v6 = result;
  result = a3[1];
  v7 = __OFADD__(result, a2);
  v8 = result + a2;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  a3[1] = v8;
  if (v8 < result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  Deque._UnsafeHandle.segments(forOffsets:)(result, v8, a3, &v27);
  v10 = sub_1A99770E0();
  v12 = v11;
  v30 = v28;
  LOBYTE(v31) = v29;
  MEMORY[0x1EEE9AC00](v10);
  v23[2] = a5;
  v13 = sub_1A99767C0();
  sub_1A99770A0();
  v14 = sub_1A9977100();
  sub_1A97A4AD0(sub_1A981772C, v23, MEMORY[0x1E69E73E0], v14, v15, &v24);
  v18 = v24;
  if (v25)
  {
    v19 = v24;
  }

  else
  {
    v19 = 0;
  }

  if (v25)
  {
    v20 = v26;
  }

  else
  {
    v20 = 1;
  }

  if (!v26)
  {
    v18 = v19;
  }

  *&v30 = v10;
  *(&v30 + 1) = v12;
  v31 = v18;
  v32 = v25;
  v33 = v20;
  v24 = v6;
  v25 = a2;
  v21 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, a5, v16, v17);
  WitnessTable = swift_getWitnessTable();
  return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(&v24, v21, v13, WitnessTable);
}

uint64_t Deque._UnsafeHandle.uncheckedPrepend(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  result = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[2];
  if (!v11)
  {
LABEL_5:
    v12 = *a2 - 1;
    if (__OFSUB__(*a2, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v12 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  v13 = v8 + v12 * *(v6 + 72);
  (*(v6 + 16))(v10);
  result = (*(v6 + 32))(v13, v10, a4);
  a2[2] = v12;
  v14 = a2[1];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    a2[1] = v16;
    return result;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

Swift::Int Deque._UnsafeHandle.uncheckedPrepend(contentsOf:)(Swift::Int result, uint64_t a2, Sharing::_DequeSlot *a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v8 = result;
    position = a3[2].position;
    result = Deque._UnsafeHandle.slot(_:offsetBy:)(position, -a2).position;
    a3[2].position = result;
    v10 = a3[1].position;
    v11 = __OFADD__(v10, a2);
    v12 = v10 + a2;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      a3[1].position = v12;
      Deque._UnsafeHandle.mutableWrappedBuffer(between:and:)(result, position, a3, v19);
      v18[0] = v8;
      v18[1] = a2;
      v15 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, a5, v13, v14);
      v16 = sub_1A99767C0();
      WitnessTable = swift_getWitnessTable();
      return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v18, v15, v16, WitnessTable);
    }
  }

  return result;
}

uint64_t Deque._UnsafeHandle.mutableWrappedBuffer(between:and:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a6@<X8>)
{
  if (result >= a2)
  {
    if (!__OFSUB__(*a3, result))
    {
      v7 = sub_1A99770C0();
      v9 = v13;
      result = sub_1A99770C0();
      v12 = v11 == 0;
      if (v11)
      {
        v10 = result;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (!__OFSUB__(a2, result))
    {
      result = sub_1A99770C0();
      v7 = result;
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = 1;
LABEL_8:
      *a6 = v7;
      *(a6 + 8) = v9;
      *(a6 + 16) = v10;
      *(a6 + 24) = v11;
      *(a6 + 32) = v12;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v26[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 < 1)
  {
    v24 = *(v15 + 8);

    return v24(v10, a7);
  }

  else
  {
    v18 = v10;
    v19 = v14;
    v25 = v15;
    Deque._UnsafeHandle.openGap(ofSize:atOffset:)(v11, v12, v13, v26);
    (*(v25 + 16))(v17, v18, a7);
    v22 = type metadata accessor for _UnsafeMutableWrappedBuffer(0, v19, v20, v21);
    _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v17, v22, a7, a8);
    return (*(v25 + 8))(v18, a7);
  }
}

uint64_t Deque._UnsafeHandle.openGap(ofSize:atOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X2>, uint64_t a6@<X8>)
{
  v6 = a3[1];
  v7 = v6 - a2;
  if (__OFSUB__(v6, a2))
  {
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v9 = a2;
  v10 = result;
  v11 = a3[2];
  if (v7 > a2)
  {
    v12 = -result;
    if (!__OFSUB__(0, result))
    {
      v13.position = Deque._UnsafeHandle.slot(_:offsetBy:)(v11, -result).position;
      v14 = a3[2] + v9;
      v15 = *a3;
      if (v14 < *a3)
      {
        v15 = 0;
      }

      v16 = v14 - v15;
      result = Deque._UnsafeHandle.slot(_:offsetBy:)((v14 - v15), -v10).position;
      v7 = result;
      v17 = *a3;
      if (v16 <= 0)
      {
        v18 = *a3;
      }

      else
      {
        v18 = v16;
      }

      if (result <= 0)
      {
        v19 = *a3;
      }

      else
      {
        v19 = result;
      }

      if (v18 >= v11)
      {
        if (v19 < v13.position)
        {
          v30 = v17 - v13.position;
          if (__OFSUB__(v17, v13.position))
          {
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          if (v30 < 1)
          {
            goto LABEL_47;
          }

          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v30);
          position = v13.position;
          v23 = v30;
LABEL_46:
          result = Deque._UnsafeHandle.slot(_:offsetBy:)(position, v23).position;
LABEL_47:
          if (v7 < 1)
          {
            goto LABEL_74;
          }

          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v10, v7);
          v31 = 0;
          v32 = v7;
          goto LABEL_73;
        }

        if (v9 < 1)
        {
          goto LABEL_74;
        }

        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v9);
        v31 = v13.position;
        v32 = v9;
LABEL_73:
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v31, v32).position;
LABEL_74:
        a3[2] = v13.position;
        v39 = a3[1];
        v33 = __OFADD__(v39, v10);
        v40 = v39 + v10;
        if (!v33)
        {
          a3[1] = v40;
          if (v16 <= 0)
          {
            v37 = *a3;
          }

          else
          {
            v37 = v16;
          }

          v38 = v7;
LABEL_79:
          result = Deque._UnsafeHandle.mutableWrappedBuffer(between:and:)(v38, v37, a3, v44);
          v41 = v45;
          v42 = v44[1];
          *a6 = v44[0];
          *(a6 + 16) = v42;
          *(a6 + 32) = v41;
          return result;
        }

        goto LABEL_83;
      }

      v9 = v17 - v11;
      LOBYTE(v20) = __OFSUB__(v17, v11);
      if (v19 < v13.position)
      {
        if (v20)
        {
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        if (v9 >= 1)
        {
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v9);
          result = Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v9).position;
        }

        if (v10 < 1)
        {
          goto LABEL_47;
        }

        v21 = *a3 - v10;
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(0, v10);
        position = v21;
        v23 = v10;
        goto LABEL_46;
      }

LABEL_56:
      if (v20)
      {
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (v9 >= 1)
      {
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v9);
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v9).position;
      }

      if (v16 < 1)
      {
        goto LABEL_74;
      }

      v34 = *a3 + v12;
      sub_1A9977080();
      Deque._UnsafeHandle.slot(_:offsetBy:)(0, v16);
      v31 = v34;
      v32 = v16;
      goto LABEL_73;
    }

    goto LABEL_81;
  }

  result = Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v6).position;
  if (__OFADD__(v6, v10))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v12 = result;
  v11 = Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v6 + v10).position;
  v24 = a3[2] + v9;
  v25 = *a3;
  if (v24 < *a3)
  {
    v25 = 0;
  }

  v16 = v24 - v25;
  result = Deque._UnsafeHandle.slot(_:offsetBy:)((v24 - v25), v10).position;
  v13.position = result;
  v20 = *a3;
  if (v12 <= 0)
  {
    v26 = *a3;
  }

  else
  {
    v26 = v12;
  }

  if (v11 <= 0)
  {
    v27 = *a3;
  }

  else
  {
    v27 = v11;
  }

  if (v26 >= v16)
  {
    if (v27 < result)
    {
      if (__OFSUB__(0, v10))
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v11 >= 1)
      {
        v9 = v20 - v10;
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v9, v11);
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(0, v11).position;
      }

      v33 = __OFSUB__(v7, v11);
      v7 -= v11;
      if (v33)
      {
        __break(1u);
        goto LABEL_56;
      }
    }

LABEL_64:
    if (v7 <= 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v27 >= result)
  {
    if (v12 >= 1)
    {
      sub_1A9977080();
      Deque._UnsafeHandle.slot(_:offsetBy:)(0, v12);
      result = Deque._UnsafeHandle.slot(_:offsetBy:)(v10, v12).position;
      v20 = *a3;
    }

    v7 = v20 - v16;
    if (__OFSUB__(v20, v16))
    {
      goto LABEL_90;
    }

    goto LABEL_64;
  }

  if (v12 >= 1)
  {
    sub_1A9977080();
    Deque._UnsafeHandle.slot(_:offsetBy:)(0, v12);
    result = Deque._UnsafeHandle.slot(_:offsetBy:)(v10, v12).position;
  }

  if (__OFSUB__(0, v10))
  {
    goto LABEL_86;
  }

  if (v10 >= 1)
  {
    v28.position = *a3 - v10;
    sub_1A9977080();
    Deque._UnsafeHandle.slot(_:offsetBy:)(v28, v10);
    result = Deque._UnsafeHandle.slot(_:offsetBy:)(0, v10).position;
  }

  v29 = v7 - v10;
  if (__OFSUB__(v7, v10))
  {
    goto LABEL_91;
  }

  v7 = v29 - v12;
  if (!__OFSUB__(v29, v12))
  {
    if (v7 < 1)
    {
LABEL_66:
      v35 = a3[1];
      v33 = __OFADD__(v35, v10);
      v36 = v35 + v10;
      if (!v33)
      {
        a3[1] = v36;
        if (v13.position <= 0)
        {
          v37 = *a3;
        }

        else
        {
          v37 = v13.position;
        }

        v38 = v16;
        goto LABEL_79;
      }

      goto LABEL_84;
    }

LABEL_65:
    sub_1A9977080();
    Deque._UnsafeHandle.slot(_:offsetBy:)(v16, v7);
    result = Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v7).position;
    goto LABEL_66;
  }

LABEL_92:
  __break(1u);
  return result;
}