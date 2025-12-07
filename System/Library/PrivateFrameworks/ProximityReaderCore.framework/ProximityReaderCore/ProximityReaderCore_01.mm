uint64_t sub_2611ADF14(uint64_t a1)
{
  v2 = sub_2611AF830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611ADF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5472656E74726170 && a2 == 0xEC0000006E656B6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26121D4D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2611ADFFC(uint64_t a1)
{
  v2 = sub_2611AF8D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611AE038(uint64_t a1)
{
  v2 = sub_2611AF8D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611AE080@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2611AE0B0(uint64_t a1)
{
  v2 = sub_2611AF884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611AE0EC(uint64_t a1)
{
  v2 = sub_2611AF884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalSessionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87398, &qword_2612208C0);
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x28223BE20](v3);
  v17 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE873A0, &qword_2612208C8);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE873A8, &qword_2612208D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611AF830();
  sub_26121D600();
  if (v12)
  {
    v23 = 0;
    sub_2611AF8D8();
    sub_26121D410();
    v13 = v22;
    sub_26121D460();
    (*(v21 + 8))(v7, v13);
  }

  else
  {
    v24 = 1;
    sub_2611AF884();
    v15 = v17;
    sub_26121D410();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t InternalSessionType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE873B0, &qword_2612208D8);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE873B8, &qword_2612208E0);
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE873C0, &unk_2612208E8);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611AF830();
  v11 = v34;
  sub_26121D5F0();
  if (v11)
  {
    goto LABEL_7;
  }

  v12 = v32;
  v34 = a1;
  v13 = v10;
  v14 = sub_26121D400();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_26121D220();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470);
    *v18 = &type metadata for InternalSessionType;
    sub_26121D360();
    sub_26121D210();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v33 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v26 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  if (*(v14 + 32))
  {
    v36 = 1;
    sub_2611AF884();
    sub_26121D350();
    v15 = v33;
    v22 = v12;
    (*(v31 + 1))(v4, v29);
    (*(v15 + 8))(v13, v8);
    swift_unknownObjectRelease();
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v35 = 0;
    sub_2611AF8D8();
    v19 = v7;
    sub_26121D350();
    v20 = v10;
    v21 = v33;
    v22 = v12;
    v25 = v19;
    v31 = v20;
    v23 = sub_26121D3B0();
    v24 = v28;
    (*(v30 + 8))(v25, v5);
    (*(v21 + 8))(v31, v8);
    swift_unknownObjectRelease();
  }

  *v22 = v23;
  v22[1] = v24;
  v26 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t static SessionRequestInternal.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE87390 = a1;
  return result;
}

uint64_t sub_2611AEA80@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE87390;
  return result;
}

uint64_t sub_2611AEACC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE87390 = v1;
  return result;
}

uint64_t SessionRequestInternal.sessionType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType);
  a1[1] = v2;
}

void SessionRequestInternal.options.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options + 1);
  *a1 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options);
  a1[1] = v2;
}

id SessionRequestInternal.__allocating_init(sessionType:options:)(_OWORD *a1, char *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a2;
  v7 = a2[1];
  *&v5[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType] = *a1;
  v8 = &v5[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options];
  *v8 = v6;
  v8[1] = v7;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SessionRequestInternal.init(sessionType:options:)(_OWORD *a1, char *a2)
{
  v3 = *a2;
  *&v2[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType] = *a1;
  v4 = a2[1];
  v5 = &v2[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options];
  *v5 = v3;
  v5[1] = v4;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SessionRequestInternal();
  return objc_msgSendSuper2(&v7, sel_init);
}

id SessionRequestInternal.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_26119FDE8();
  v4 = sub_26121D060();
  if (v4)
  {
    v5 = v4;
    v6 = sub_26121C690();
    v8 = v7;

    v9 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_26119D904(v6, v8);
    v11 = sub_2611A0014(v6, v8);
    sub_26119DA0C(v6, v8);
    if (v11)
    {
      sub_2611AF950(&qword_27FE873E8, &protocol conformance descriptor for SessionRequestInternal);
      sub_26121CFF0();
      v12 = v20;
      if (v20)
      {
        v13 = *&v20[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType + 8];
        v14 = &v2[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType];
        *v14 = *&v20[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType];
        *(v14 + 1) = v13;
        v15 = v12[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options];
        v16 = v12[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options + 1];

        v17 = &v2[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options];
        *v17 = v15;
        v17[1] = v16;
        [v11 finishDecoding];

        sub_26119DA0C(v6, v8);
        v19.receiver = v2;
        v19.super_class = type metadata accessor for SessionRequestInternal();
        v18 = objc_msgSendSuper2(&v19, sel_init);

        return v18;
      }

      [v11 finishDecoding];
    }

    sub_26119DA0C(v6, v8);
  }

  else
  {
  }

  type metadata accessor for SessionRequestInternal();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_2611AEE90(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for SessionRequestInternal();
  sub_2611AF950(&qword_27FE873F0, &protocol conformance descriptor for SessionRequestInternal);
  sub_26121CFE0();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26121CC50();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

id SessionRequestInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2611AF0D4()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x546E6F6973736573;
  }
}

uint64_t sub_2611AF118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546E6F6973736573 && a2 == 0xEB00000000657079;
  if (v6 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

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

uint64_t sub_2611AF1F8(uint64_t a1)
{
  v2 = sub_2611AF990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611AF234(uint64_t a1)
{
  v2 = sub_2611AF990();

  return MEMORY[0x2821FE720](a1, v2);
}

id SessionRequestInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionRequestInternal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2611AF2B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE873F8, &qword_2612208F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611AF990();
  sub_26121D600();
  v9 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType + 8);
  v14 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType);
  v15 = v9;
  v13 = 0;
  sub_2611AF9E4();

  sub_26121D4A0();

  if (!v2)
  {
    v10 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options + 1);
    LOBYTE(v14) = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options);
    BYTE1(v14) = v10;
    v13 = 1;
    sub_2611AFA38();
    sub_26121D4A0();
  }

  return (*(v6 + 8))(v8, v5);
}

void *SessionRequestInternal.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87410, &qword_261220900);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611AF990();
  sub_26121D5F0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SessionRequestInternal();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    sub_2611AFA8C();
    sub_26121D3F0();
    *(v1 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType) = v14;
    v15 = 1;
    sub_2611AFAE0();
    sub_26121D3F0();
    v10 = BYTE1(v14);
    v11 = v1 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options;
    *v11 = v14;
    v11[1] = v10;
    v12 = type metadata accessor for SessionRequestInternal();
    v13.receiver = v1;
    v13.super_class = v12;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_2611AF728@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _s19ProximityReaderCore19InternalSessionTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_26121D4D0();
}

unint64_t sub_2611AF830()
{
  result = qword_27FE8B650;
  if (!qword_27FE8B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8B650);
  }

  return result;
}

unint64_t sub_2611AF884()
{
  result = qword_27FE8B658;
  if (!qword_27FE8B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8B658);
  }

  return result;
}

unint64_t sub_2611AF8D8()
{
  result = qword_27FE8B660;
  if (!qword_27FE8B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8B660);
  }

  return result;
}

uint64_t sub_2611AF950(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionRequestInternal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2611AF990()
{
  result = qword_27FE8B668[0];
  if (!qword_27FE8B668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8B668);
  }

  return result;
}

unint64_t sub_2611AF9E4()
{
  result = qword_27FE87400;
  if (!qword_27FE87400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87400);
  }

  return result;
}

unint64_t sub_2611AFA38()
{
  result = qword_27FE87408;
  if (!qword_27FE87408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87408);
  }

  return result;
}

unint64_t sub_2611AFA8C()
{
  result = qword_27FE87418;
  if (!qword_27FE87418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87418);
  }

  return result;
}

unint64_t sub_2611AFAE0()
{
  result = qword_27FE87420;
  if (!qword_27FE87420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87420);
  }

  return result;
}

uint64_t sub_2611AFB34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2611AFB84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2611AFBD8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2611AFBF0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2611AFD50()
{
  result = qword_27FE8BAF0[0];
  if (!qword_27FE8BAF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8BAF0);
  }

  return result;
}

unint64_t sub_2611AFDA8()
{
  result = qword_27FE8BD00[0];
  if (!qword_27FE8BD00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8BD00);
  }

  return result;
}

unint64_t sub_2611AFE00()
{
  result = qword_27FE8BF10[0];
  if (!qword_27FE8BF10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8BF10);
  }

  return result;
}

unint64_t sub_2611AFE58()
{
  result = qword_27FE8C020;
  if (!qword_27FE8C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C020);
  }

  return result;
}

unint64_t sub_2611AFEB0()
{
  result = qword_27FE8C028[0];
  if (!qword_27FE8C028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C028);
  }

  return result;
}

unint64_t sub_2611AFF08()
{
  result = qword_27FE8C0B0;
  if (!qword_27FE8C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C0B0);
  }

  return result;
}

unint64_t sub_2611AFF60()
{
  result = qword_27FE8C0B8[0];
  if (!qword_27FE8C0B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C0B8);
  }

  return result;
}

unint64_t sub_2611AFFB8()
{
  result = qword_27FE8C140;
  if (!qword_27FE8C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C140);
  }

  return result;
}

unint64_t sub_2611B0010()
{
  result = qword_27FE8C148[0];
  if (!qword_27FE8C148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C148);
  }

  return result;
}

unint64_t sub_2611B0068()
{
  result = qword_27FE8C1D0;
  if (!qword_27FE8C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C1D0);
  }

  return result;
}

unint64_t sub_2611B00C0()
{
  result = qword_27FE8C1D8[0];
  if (!qword_27FE8C1D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C1D8);
  }

  return result;
}

uint64_t static JwtHelper.generateSignature(base64UrlEncodedHeader:base64UrlEncodedPayload:privateKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](a3, a4);
  v8 = sub_2611BFDD8(a5, a1, a2);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    return 0;
  }

  v12 = sub_2611BF248(v8, v10);
  sub_26119EF48(v8, v10);
  return v12;
}

uint64_t static JwtHelper.generateToken<A, B>(header:payload:privateKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = Encodable.toJson()(a4, a6);
  if (v16 >> 60 != 15)
  {
    v17 = v15;
    v18 = v16;
    v19 = sub_2611BF248(v15, v16);
    v21 = v20;
    sub_26119EF48(v17, v18);
    v22 = Encodable.toJson()(a5, a7);
    if (v23 >> 60 != 15)
    {
      v24 = v22;
      v25 = v23;
      v26 = sub_2611BF248(v22, v23);
      v28 = v27;
      sub_26119EF48(v24, v25);
      v42 = v19;
      v43 = v21;

      MEMORY[0x2666FBF20](46, 0xE100000000000000);
      MEMORY[0x2666FBF20](v26, v28);
      v29 = sub_2611BFDD8(a3, v42, v43);
      v31 = v30;

      if (v31 >> 60 != 15)
      {
        v39 = sub_2611BF248(v29, v31);
        v41 = v40;
        sub_26119EF48(v29, v31);
        v42 = v19;
        v43 = v21;
        MEMORY[0x2666FBF20](46, 0xE100000000000000);
        MEMORY[0x2666FBF20](v26, v28);

        MEMORY[0x2666FBF20](46, 0xE100000000000000);
        MEMORY[0x2666FBF20](v39, v41);

        return v42;
      }
    }
  }

  v32 = sub_2611F04C0();
  sub_2611ABE1C(v32, v14, &qword_27FE87700, &unk_2612203D0);
  v33 = sub_26121CA60();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v14, 1, v33) == 1)
  {
    sub_2611AC114(v14, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v35 = sub_26121CA40();
    v36 = sub_26121CFC0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_261197000, v35, v36, "Could not generate JWT token", v37, 2u);
      MEMORY[0x2666FCF20](v37, -1, -1);
    }

    (*(v34 + 8))(v14, v33);
  }

  return 0;
}

uint64_t static JwtHelper.compareStringClaim(token1:token2:claim:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2611B0608(0, a1, a2, a5, a6);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_2611B0608(0, a3, a4, a5, a6);
    if (v15)
    {
      if (v12 == v14 && v13 == v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = sub_26121D4D0();
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2611B0608(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2611B6750(a2, a3, ~a1 & 1);
  if (!v8)
  {
    return 0;
  }

  v9 = sub_2611BF08C(v7, v8);
  if (v10 >> 60 == 15)
  {
    return 0;
  }

  v12 = v9;
  v13 = v10;
  v14 = sub_26119C568();
  v15 = sub_2611BF3A8(v14 & 1, v12, v13);
  sub_26119EF48(v12, v13);
  if (v15[2] && (v16 = sub_2611B3970(a4, a5), (v17 & 1) != 0))
  {
    sub_2611AC930(v15[7] + 32 * v16, v18);
  }

  else
  {

    memset(v18, 0, sizeof(v18));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B10, &qword_26121F890);
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2611B0730(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2611B6750(a2, a3, ~a1 & 1);
  if (!v8)
  {
    return 0;
  }

  v9 = sub_2611BF08C(v7, v8);
  if (v10 >> 60 == 15)
  {
    return 0;
  }

  v12 = v9;
  v13 = v10;
  v14 = sub_26119C568();
  v15 = sub_2611BF3A8(v14 & 1, v12, v13);
  sub_26119EF48(v12, v13);
  if (v15[2] && (v16 = sub_2611B3970(a4, a5), (v17 & 1) != 0))
  {
    sub_2611AC930(v15[7] + 32 * v16, v18);
  }

  else
  {

    memset(v18, 0, sizeof(v18));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B10, &qword_26121F890);
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t static JwtHelper.claim<A>(fromHeader:_:claim:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = sub_2611B6750(a2, a3, (a1 & 1) == 0);
  if (v12 && (v13 = sub_2611BF08C(v11, v12), v14 >> 60 != 15))
  {
    v17 = v13;
    v18 = v14;
    v19 = sub_26119C568();
    v20 = sub_2611BF3A8(v19 & 1, v17, v18);
    sub_26119EF48(v17, v18);
    if (v20[2] && (v21 = sub_2611B3970(a4, a5), (v22 & 1) != 0))
    {
      sub_2611AC930(v20[7] + 32 * v21, v24);
    }

    else
    {

      memset(v24, 0, sizeof(v24));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B10, &qword_26121F890);
    v23 = swift_dynamicCast();
    return (*(*(a6 - 8) + 56))(a7, v23 ^ 1u, 1, a6);
  }

  else
  {
    v15 = *(*(a6 - 8) + 56);

    return v15(a7, 1, 1, a6);
  }
}

uint64_t sub_2611B0A0C(uint64_t a1, uint64_t a2)
{
  sub_2611AC930(a1, v4);
  result = swift_dynamicCast();
  if (result)
  {
    sub_2611AC930(a2, v4);
    return (swift_dynamicCast() & 1) != 0;
  }

  return result;
}

uint64_t sub_2611B0AB0(uint64_t a1, uint64_t a2)
{
  sub_2611AC930(a1, v5);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_2611AC930(a2, v5);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t static JwtHelper.compareClaim<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v31 = a3;
  v7 = sub_26121D0C0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  v15 = *(a4 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  sub_2611AC930(a2, v32);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if ((v21 & 1) == 0)
  {
    v22(v14, 1, 1, a4);
    (*(v8 + 8))(v14, v7);
LABEL_6:
    v25 = 0;
    return v25 & 1;
  }

  v29 = v7;
  v22(v14, 0, 1, a4);
  v23 = v14;
  v24 = *(v15 + 32);
  v24(v20, v23, a4);
  sub_2611AC930(v31, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22(v11, 1, 1, a4);
    (*(v15 + 8))(v20, a4);
    (*(v8 + 8))(v11, v29);
    goto LABEL_6;
  }

  v22(v11, 0, 1, a4);
  v24(v18, v11, a4);
  v25 = sub_26121CC20();
  v26 = *(v15 + 8);
  v26(v18, a4);
  v26(v20, a4);
  return v25 & 1;
}

uint64_t sub_2611B0EC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *))
{
  sub_2611AC930(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v14;
    sub_2611AC930(a2, v13);
    if (swift_dynamicCast())
    {
      v12 = v11;
      if (*(v10 + 16) == *(v11 + 16))
      {
        a5(&v14);

        a5(&v12);

        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2611B0FE0(uint64_t a1, uint64_t a2)
{
  sub_2611AC930(a1, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v8;
    sub_2611AC930(a2, &v9);
    if (swift_dynamicCast())
    {
      v5 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2611B6700(v8);
      }

      v6 = *(v4 + 2);
      v9 = v4 + 32;
      v10 = v6;
      sub_2611B3E48(&v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2611B6700(v8);
      }

      v7 = *(v5 + 2);
      v9 = v5 + 32;
      v10 = v7;
      sub_2611B3E48(&v9);

      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static JwtHelper.compareArrayClaim<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2611AC930(a1, v8);
  sub_26121CF00();
  if (swift_dynamicCast())
  {
    sub_2611AC930(a2, v8);
    if (swift_dynamicCast())
    {

      v5 = sub_26121CEF0();
      v6 = sub_26121CEF0();

      if (v5 == v6)
      {
        swift_getWitnessTable();
        swift_getWitnessTable();
        sub_26121CC00();

        sub_26121CC00();

        return 1;
      }
    }
  }

  return 0;
}

uint64_t static JwtHelper.compareClaims(token1:token2:claims:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  result = static JwtHelper.claims(_:claimIdentifiers:)(a1, a2, a5);
  if (!result)
  {
    return result;
  }

  v17 = result;
  v18 = static JwtHelper.claims(_:claimIdentifiers:)(a3, a4, a5);
  if (!v18)
  {

    return 0;
  }

  v19 = v18;
  v64 = v13;
  v63 = v15;
  v20 = *(a5 + 16);
  if (!v20)
  {
LABEL_39:

    return 1;
  }

  v21 = (a5 + 40);
  while (1)
  {
    v23 = *(v21 - 1);
    v22 = *v21;
    v24 = *(v17 + 16);

    if (!v24 || (v25 = sub_2611B3970(v23, v22), (v26 & 1) == 0))
    {

      goto LABEL_49;
    }

    sub_2611AC930(*(v17 + 56) + 32 * v25, v67);
    if (!*(v19 + 16) || (v27 = sub_2611B3970(v23, v22), (v28 & 1) == 0))
    {

      goto LABEL_48;
    }

    v65 = v21;
    sub_2611AC930(*(v19 + 56) + 32 * v27, v66);
    __swift_project_boxed_opaque_existential_1(v67, v67[3]);
    DynamicType = swift_getDynamicType();
    __swift_project_boxed_opaque_existential_1(v66, v66[3]);
    if (DynamicType != swift_getDynamicType())
    {
      break;
    }

    sub_2611AC930(v67, v70);
    if (swift_dynamicCast())
    {
      sub_2611AC930(v67, &v69);
      if (!swift_dynamicCast())
      {
        goto LABEL_42;
      }

      v30 = v68[0];
      sub_2611AC930(v66, &v69);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_42;
      }

      v31 = v68[0];
      __swift_destroy_boxed_opaque_existential_1(v70);
      v32 = v30 == v31;
LABEL_18:
      v35 = v65;
      if (!v32)
      {
        goto LABEL_43;
      }

      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_2611AC930(v67, &v69);
      if (!swift_dynamicCast() || (v33 = *v68, sub_2611AC930(v66, &v69), (swift_dynamicCast() & 1) == 0))
      {
LABEL_42:
        __swift_destroy_boxed_opaque_existential_1(v70);
LABEL_43:

        v43 = sub_2611F04C0();
        v44 = v63;
        sub_2611ABE1C(v43, v63, &qword_27FE87700, &unk_2612203D0);
        v45 = sub_26121CA60();
        v46 = *(v45 - 8);
        if ((*(v46 + 48))(v44, 1, v45) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1(v66);
          __swift_destroy_boxed_opaque_existential_1(v67);
          v47 = v44;
LABEL_51:
          sub_2611AC114(v47, &qword_27FE87700, &unk_2612203D0);
          return 0;
        }

        v48 = sub_26121CA40();
        v49 = sub_26121CFD0();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v70[0] = v51;
          *v50 = 136315138;
          v52 = sub_2611AA228(v23, v22, v70);

          *(v50 + 4) = v52;
          _os_log_impl(&dword_261197000, v48, v49, "The claim: [ %s ] does not match or could not be compared", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x2666FCF20](v51, -1, -1);
          MEMORY[0x2666FCF20](v50, -1, -1);
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1(v66);
        __swift_destroy_boxed_opaque_existential_1(v67);
        (*(v46 + 8))(v44, v45);
        return 0;
      }

      v34 = *v68;
      __swift_destroy_boxed_opaque_existential_1(v70);
      v32 = v33 == v34;
      goto LABEL_18;
    }

    if (swift_dynamicCast())
    {
      v36 = sub_2611B0A0C(v67, v66);
      __swift_destroy_boxed_opaque_existential_1(v70);
      v35 = v65;
      if ((v36 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_20;
    }

    v37 = swift_dynamicCast();
    v35 = v65;
    if (v37)
    {

      v38 = sub_2611B0AB0(v67, v66);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87450, &qword_2612210C8);
      if (swift_dynamicCast())
      {

        v39 = sub_2611B3D10;
        v40 = &qword_27FE87450;
        v41 = &qword_2612210C8;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87458, &qword_2612210D0);
        if (swift_dynamicCast())
        {

          v39 = sub_2611B3BD8;
          v40 = &qword_27FE87458;
          v41 = &qword_2612210D0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87460, &qword_2612210D8);
          if (!swift_dynamicCast())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
            if (!swift_dynamicCast())
            {
              goto LABEL_42;
            }

            v38 = sub_2611B0FE0(v67, v66);
            goto LABEL_34;
          }

          v39 = sub_2611B3AA0;
          v40 = &qword_27FE87460;
          v41 = &qword_2612210D8;
        }
      }

      v38 = sub_2611B0EC8(v67, v66, v40, v41, v39);
    }

LABEL_34:
    v42 = v38;
    __swift_destroy_boxed_opaque_existential_1(v70);
    if ((v42 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_20:

    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v67);
    v21 = v35 + 2;
    if (!--v20)
    {
      goto LABEL_39;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v66);
LABEL_48:
  __swift_destroy_boxed_opaque_existential_1(v67);
LABEL_49:
  v53 = sub_2611F04C0();
  v54 = v64;
  sub_2611ABE1C(v53, v64, &qword_27FE87700, &unk_2612203D0);
  v55 = sub_26121CA60();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {

    v47 = v54;
    goto LABEL_51;
  }

  v57 = sub_26121CA40();
  v58 = sub_26121CFC0();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v70[0] = v60;
    *v59 = 136315138;
    v61 = sub_2611AA228(v23, v22, v70);

    *(v59 + 4) = v61;
    _os_log_impl(&dword_261197000, v57, v58, "The claim: [ %s ] could not be found or have different value types", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x2666FCF20](v60, -1, -1);
    MEMORY[0x2666FCF20](v59, -1, -1);
  }

  else
  {
  }

  (*(v56 + 8))(v54, v55);
  return 0;
}

uint64_t static JwtHelper.claims(_:claimIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2611B6750(a1, a2, 1);
  if (!v5)
  {
    return 0;
  }

  v6 = sub_2611BF08C(v4, v5);
  if (v7 >> 60 == 15)
  {
    return 0;
  }

  v9 = v6;
  v10 = v7;
  v11 = sub_26119C568();
  v12 = sub_2611BF3A8(v11 & 1, v9, v10);
  sub_26119EF48(v9, v10);
  v21 = MEMORY[0x277D84F98];
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = (a3 + 40);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      *&v24 = v16;
      *(&v24 + 1) = v15;
      *&v22 = 46;
      *(&v22 + 1) = 0xE100000000000000;
      sub_2611B6988();
      if (sub_26121D140())
      {
        *&v24 = v16;
        *(&v24 + 1) = v15;
        *&v22 = 46;
        *(&v22 + 1) = 0xE100000000000000;
        v17 = sub_26121D120();
        sub_2611B26EC(v17 + 32, 0, (2 * *(v17 + 16)) | 1, v12, &v22);

        if (v23)
        {
          sub_2611B69DC(&v22, &v24);
          sub_2611AC930(&v24, &v22);

          sub_2611B2618(&v22, v16, v15);
          __swift_destroy_boxed_opaque_existential_1(&v24);
        }

        else
        {
          sub_2611AC114(&v22, &qword_27FE87B10, &qword_26121F890);
        }
      }

      else
      {
        if (v12[2])
        {

          v18 = sub_2611B3970(v16, v15);
          if (v19)
          {
            sub_2611AC930(v12[7] + 32 * v18, &v24);
          }

          else
          {
            v24 = 0u;
            v25 = 0u;
          }
        }

        else
        {
          v24 = 0u;
          v25 = 0u;
        }

        sub_2611B2618(&v24, v16, v15);
      }

      v14 += 2;
      --v13;
    }

    while (v13);
    v20 = v21;
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  return v20;
}

uint64_t static JwtHelper.compare(token1:token2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26121D4D0();
  }
}

uint64_t static JwtHelper.redactSignature(_:)(uint64_t a1, unint64_t a2)
{
  sub_2611B6988();
  v3 = sub_26121D120();
  if (v3[2] < 3uLL)
  {

    return a1;
  }

  result = sub_26121D1E0();
  if (v3[2])
  {
    v5 = v3[4];

    v8 = v5;
    result = MEMORY[0x2666FBF20](46, 0xE100000000000000);
    if (v3[2] >= 2uLL)
    {
      v6 = v3[6];
      v7 = v3[7];

      MEMORY[0x2666FBF20](v6, v7);

      MEMORY[0x2666FBF20](0x7463616465723C2ELL, 0xEB000000003E6465);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id static JwtHelper.makeToken(header:claims:inject:expiry:sign:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v69 = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87430, &qword_261220E50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v60 - v10;
  v62 = sub_26121CB40();
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26121C760();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C750();
  sub_26121C720();
  v18 = v17;
  v19 = v17;
  (*(v14 + 8))(v16, v13);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (a3)
  {
    v20 = MEMORY[0x277D83B88];
    v68 = MEMORY[0x277D83B88];
    *&v67 = v18;
    sub_2611B69DC(&v67, v66);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = a2;
    sub_2611B63A0(v66, 7627113, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    if (!__OFADD__(v18, a4))
    {
      v22 = v65;
      v68 = v20;
      *&v67 = v18 + a4;
      sub_2611B69DC(&v67, v66);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v22;
      sub_2611B63A0(v66, 7370853, 0xE300000000000000, v23);
      goto LABEL_8;
    }

LABEL_38:
    __break(1u);
  }

LABEL_8:
  v61 = a5;
  v24 = objc_opt_self();
  v25 = sub_26121CB80();
  *&v67 = 0;
  v26 = [v24 dataWithJSONObject:v25 options:0 error:&v67];

  v27 = v67;
  if (v26)
  {
    v28 = sub_26121C690();
    v30 = v29;

    v31 = sub_2611BF248(v28, v30);
    v33 = v32;
    sub_26119DA0C(v28, v30);
  }

  else
  {
    v34 = v27;
    v35 = sub_26121C500();

    swift_willThrow();
    v31 = 0;
    v33 = 0;
  }

  v36 = sub_26121CB80();
  *&v67 = 0;
  v37 = [v24 dataWithJSONObject:v36 options:0 error:&v67];

  v38 = v67;
  if (v37)
  {
    v39 = sub_26121C690();
    v41 = v40;

    v42 = sub_2611BF248(v39, v41);
    v44 = v43;
    sub_26119DA0C(v39, v41);
  }

  else
  {
    v45 = v38;
    v46 = sub_26121C500();

    swift_willThrow();
    v42 = 0;
    v44 = 0;
  }

  v47 = v62;
  sub_2611ABE1C(v61, v11, &qword_27FE87430, &qword_261220E50);
  v48 = v64;
  if ((*(v64 + 48))(v11, 1, v47) != 1)
  {
    result = (*(v48 + 32))(v63, v11, v47);
    if (v33)
    {
      if (v44)
      {
        *&v67 = v31;
        *(&v67 + 1) = v33;
        swift_bridgeObjectRetain_n();

        MEMORY[0x2666FBF20](46, 0xE100000000000000);
        MEMORY[0x2666FBF20](v42, v44);
        v52 = sub_2611BFDD8(v63, v67, *(&v67 + 1));
        v54 = v53;

        if (v54 >> 60 == 15)
        {
          v49 = 0xEB0000000064656CLL;
          v50 = 0x6961662D6E676973;
        }

        else
        {
          v50 = sub_2611BF248(v52, v54);
          v49 = v55;
          sub_26119EF48(v52, v54);
        }

        (*(v64 + 8))(v63, v47);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_2611AC114(v11, &qword_27FE87430, &qword_261220E50);
  v49 = 0xEA00000000006465;
  v50 = 0x6E6769732D746F6ELL;
LABEL_22:
  *&v67 = 0;
  *(&v67 + 1) = 0xE000000000000000;
  if (v33)
  {
    v56 = v31;
  }

  else
  {
    v56 = 0;
  }

  if (v33)
  {
    v57 = v33;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  MEMORY[0x2666FBF20](v56, v57);

  MEMORY[0x2666FBF20](46, 0xE100000000000000);

  if (v44)
  {
    v58 = v42;
  }

  else
  {
    v58 = 0;
  }

  if (v44)
  {
    v59 = v44;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  MEMORY[0x2666FBF20](v58, v59);

  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](v50, v49);

  return v67;
}

uint64_t sub_2611B2618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2611B69DC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_2611B63A0(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_2611AC114(a1, &qword_27FE87B10, &qword_26121F890);
    sub_2611B5E94(a2, a3, v9);

    return sub_2611AC114(v9, &qword_27FE87B10, &qword_26121F890);
  }

  return result;
}

uint64_t sub_2611B26EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  result = MEMORY[0x28223BE20](v10 - 8);
  v13 = v34 - v12;
  v14 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((a3 >> 1) - a2) >= 2)
  {
    if (v14 > a2)
    {
      if (*(a4 + 16))
      {
        v15 = (a1 + 16 * a2);
        v16 = *v15;
        v17 = v15[1];

        v18 = sub_2611B3970(v16, v17);
        v20 = v19;

        if (v20)
        {
          sub_2611AC930(*(a4 + 56) + 32 * v18, v35);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87448, &qword_2612210C0);
          if (swift_dynamicCast())
          {
            sub_2611B26EC(a1, a2 + 1, a3, v34[1], a5);
          }
        }
      }

      v28 = sub_2611F04C0();
      sub_2611ABE1C(v28, v13, &qword_27FE87700, &unk_2612203D0);
      v29 = sub_26121CA60();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v13, 1, v29) == 1)
      {
        result = sub_2611AC114(v13, &qword_27FE87700, &unk_2612203D0);
      }

      else
      {
        v31 = sub_26121CA40();
        v32 = sub_26121CFC0();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_261197000, v31, v32, "Invalid key path", v33, 2u);
          MEMORY[0x2666FCF20](v33, -1, -1);
        }

        result = (*(v30 + 8))(v13, v29);
      }

      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v14 == a2)
  {
    goto LABEL_20;
  }

  if (v14 <= a2)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  if (!*(a4 + 16) || (v21 = (a1 + 16 * a2), v22 = *v21, v23 = v21[1], , v24 = sub_2611B3970(v22, v23), v26 = v25, result = , (v26 & 1) == 0))
  {
LABEL_20:
    *a5 = 0u;
    a5[1] = 0u;
    return result;
  }

  v27 = *(a4 + 56) + 32 * v24;

  return sub_2611AC930(v27, a5);
}

uint64_t static JwtHelper.isExpired(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v40[-v8];
  v10 = sub_26121C760();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v14 = COERCE_DOUBLE(sub_2611B0730(0, a1, a2, 7370853, 0xE300000000000000));
  if (v15)
  {
    v16 = sub_2611F04C0();
    sub_2611ABE1C(v16, v7, &qword_27FE87700, &unk_2612203D0);
    v17 = sub_26121CA60();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v7, 1, v17) == 1)
    {
      sub_2611AC114(v7, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v24 = sub_26121CA40();
      v25 = sub_26121CFC0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_261197000, v24, v25, "Token does not have 'exp' claim", v26, 2u);
        MEMORY[0x2666FCF20](v26, -1, -1);
      }

      (*(v18 + 8))(v7, v17);
    }

    return 2;
  }

  else
  {
    v19 = *&v14;
    sub_26121C730();
    sub_26121C720();
    v21 = v20;
    v22 = *(v11 + 8);
    v22(v13, v10);
    if (v21 >= v19)
    {
      v27 = sub_2611F04C0();
      sub_2611ABE1C(v27, v9, &qword_27FE87700, &unk_2612203D0);
      v28 = sub_26121CA60();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v9, 1, v28) == 1)
      {
        sub_2611AC114(v9, &qword_27FE87700, &unk_2612203D0);
        return 1;
      }

      else
      {
        v30 = sub_26121CA40();
        v31 = sub_26121CFC0();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v42 = v32;
          v43 = swift_slowAlloc();
          v44 = v43;
          *v32 = 136315138;
          sub_26121C710();
          sub_2611B69EC();
          v41 = v31;
          v33 = sub_26121D4C0();
          v35 = v34;
          v22(v13, v10);
          v36 = sub_2611AA228(v33, v35, &v44);

          v37 = v42;
          *(v42 + 1) = v36;
          v38 = v37;
          _os_log_impl(&dword_261197000, v30, v41, "Token is expired: [%s]", v37, 0xCu);
          v39 = v43;
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x2666FCF20](v39, -1, -1);
          MEMORY[0x2666FCF20](v38, -1, -1);
        }

        (*(v29 + 8))(v9, v28);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2611B2E84(uint64_t a1)
{
  v2 = sub_2611B6A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611B2EC0(uint64_t a1)
{
  v2 = sub_2611B6A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JwtHelper.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87438, &qword_261220E58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611B6A44();
  sub_26121D600();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2611B3010(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87438, &qword_261220E58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611B6A44();
  sub_26121D600();
  return (*(v3 + 8))(v5, v2);
}

ProximityReaderCore::JwtHeader __swiftcall JwtHeader.init(alg:typ:)(Swift::String alg, Swift::String typ)
{
  *v2 = alg;
  v2[1] = typ;
  result.typ = typ;
  result.alg = alg;
  return result;
}

uint64_t sub_2611B3130()
{
  if (*v0)
  {
    return 7371124;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_2611B3154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6777953 && a2 == 0xE300000000000000;
  if (v5 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7371124 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

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

uint64_t sub_2611B3230(uint64_t a1)
{
  v2 = sub_2611B6A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611B326C(uint64_t a1)
{
  v2 = sub_2611B6A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JwtHeader.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87440, &qword_261220E60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611B6A98();
  sub_26121D600();
  v12 = 0;
  v8 = v10[3];
  sub_26121D460();
  if (!v8)
  {
    v11 = 1;
    sub_26121D460();
  }

  return (*(v4 + 8))(v6, v3);
}

char *sub_2611B3454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87D10, &unk_261221610);
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

char *sub_2611B3560(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87470, &qword_2612210E8);
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

char *sub_2611B3664(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87488, &unk_261221100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2611B3768(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87480, &qword_2612210F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2611B386C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87478, &qword_2612210F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_2611B3970(uint64_t a1, uint64_t a2)
{
  sub_26121D5B0();
  sub_26121CD50();
  v4 = sub_26121D5D0();

  return sub_2611B39E8(a1, a2, v4);
}

unint64_t sub_2611B39E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26121D4D0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2611B3AA0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2611B6714(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26121D4B0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26121CEE0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2611B45EC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2611B3BD8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2611B6728(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26121D4B0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26121CEE0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2611B4B48(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2611B3D10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2611B673C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26121D4B0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26121CEE0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2611B50A4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2611B3E48(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26121D4B0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26121CEE0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2611B4010(v7, v8, a1, v4);
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
    return sub_2611B3F40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2611B3F40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_26121D4D0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2611B4010(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2611B5E80(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2611B55F0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_26121D4D0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_26121D4D0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2611B3560(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2611B3560((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2611B55F0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2611B5E80(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2611B5DF4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_26121D4D0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_2611B45EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2611B5E80(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_2611B5818((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
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
      result = sub_2611B3560(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_2611B3560((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_2611B5818((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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

uint64_t sub_2611B4B48(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2611B5E80(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_2611B5A0C((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
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
      result = sub_2611B3560(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_2611B3560((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_2611B5A0C((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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

uint64_t sub_2611B50A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2611B5E80(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_2611B5C00((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_2611B3560(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_2611B3560((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_2611B5C00((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_2611B55F0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_26121D4D0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_26121D4D0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2611B5818(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_2611B5A0C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_2611B5C00(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
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

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_2611B5DF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2611B5E80(v3);
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

double sub_2611B5E94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2611B3970(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2611B655C();
      v10 = v12;
    }

    sub_2611B69DC((*(v10 + 56) + 32 * v8), a3);
    sub_2611B61F0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2611B5F38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
  v33 = v4;
  result = sub_26121D300();
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
        sub_2611B69DC(v24, v34);
      }

      else
      {
        sub_2611AC930(v24, v34);
      }

      sub_26121D5B0();
      sub_26121CD50();
      result = sub_26121D5D0();
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
      result = sub_2611B69DC(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_2611B61F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26121D180() + 1) & ~v5;
    do
    {
      sub_26121D5B0();

      sub_26121CD50();
      v10 = sub_26121D5D0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_2611B63A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2611B3970(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2611B655C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2611B5F38(v16, a4 & 1);
    v11 = sub_2611B3970(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_26121D520();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_2611B69DC(a1, v22);
  }

  else
  {
    sub_2611B64F0(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_2611B64F0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2611B69DC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_2611B655C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
  v2 = *v0;
  v3 = sub_26121D2F0();
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
        sub_2611AC930(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2611B69DC(v25, (*(v4 + 56) + v22));
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

uint64_t sub_2611B6750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  v22[2] = a1;
  v22[3] = a2;
  v22[0] = 46;
  v22[1] = 0xE100000000000000;
  sub_2611B6988();
  v9 = sub_26121D120();
  if (*(v9 + 16) <= a3)
  {
    goto LABEL_6;
  }

  v10 = v9 + 16 * a3;
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = v12;

    return v14;
  }

  else
  {
LABEL_6:

    v16 = sub_2611F04C0();
    sub_2611ABE1C(v16, v8, &qword_27FE87700, &unk_2612203D0);
    v17 = sub_26121CA60();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_2611AC114(v8, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v19 = sub_26121CA40();
      v20 = sub_26121CFD0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261197000, v19, v20, "Error extracting JWT payload value", v21, 2u);
        MEMORY[0x2666FCF20](v21, -1, -1);
      }

      (*(v18 + 8))(v8, v17);
    }

    return 0;
  }
}

unint64_t sub_2611B6988()
{
  result = qword_27FE87428;
  if (!qword_27FE87428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87428);
  }

  return result;
}

_OWORD *sub_2611B69DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2611B69EC()
{
  result = qword_27FE87740;
  if (!qword_27FE87740)
  {
    sub_26121C760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87740);
  }

  return result;
}

unint64_t sub_2611B6A44()
{
  result = qword_27FE8C260;
  if (!qword_27FE8C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C260);
  }

  return result;
}

unint64_t sub_2611B6A98()
{
  result = qword_27FE8C268[0];
  if (!qword_27FE8C268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C268);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2611B6B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2611B6B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2611B6BC4()
{
  result = qword_27FE8C570[0];
  if (!qword_27FE8C570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C570);
  }

  return result;
}

unint64_t sub_2611B6C1C()
{
  result = qword_27FE8C680;
  if (!qword_27FE8C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C680);
  }

  return result;
}

unint64_t sub_2611B6C74()
{
  result = qword_27FE8C688[0];
  if (!qword_27FE8C688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C688);
  }

  return result;
}

unint64_t sub_2611B6CCC()
{
  result = qword_27FE8C710;
  if (!qword_27FE8C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C710);
  }

  return result;
}

unint64_t sub_2611B6D24()
{
  result = qword_27FE8C718[0];
  if (!qword_27FE8C718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C718);
  }

  return result;
}

void SecureStorage.save(at:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[10] = *MEMORY[0x277D85DE8];
  v24 = sub_26121C5F0();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v25 = [v8 defaultManager];
  sub_26121C5A0();
  v9 = [v8 defaultManager];
  sub_26121C5C0();
  v10 = sub_26121CC50();

  v11 = [v9 fileExistsAtPath_];

  if (v11)
  {
    goto LABEL_4;
  }

  v23[1] = a3;
  v23[2] = v3;
  v12 = sub_26121C590();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87490, &qword_261221110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2612203B0;
  v14 = *MEMORY[0x277CCA1B0];
  *(inited + 32) = *MEMORY[0x277CCA1B0];
  v15 = *MEMORY[0x277CCA190];
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v16;
  *(inited + 40) = v15;
  v17 = v14;
  v18 = v15;
  sub_2611B7EB4(inited);
  swift_setDeallocating();
  sub_2611B7FBC(inited + 32);
  type metadata accessor for FileAttributeKey(0);
  sub_2611B81E4(&qword_27FE874A0, type metadata accessor for FileAttributeKey, &unk_261221450);
  v19 = sub_26121CB80();

  v26[0] = 0;
  v20 = v25;
  LODWORD(v14) = [v25 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:v19 error:v26];

  if (v14)
  {
    v21 = v26[0];
LABEL_4:
    sub_26121C6A0();
    (*(v5 + 8))(v7, v24);

    return;
  }

  v22 = v26[0];
  sub_26121C500();

  swift_willThrow();
  (*(v5 + 8))(v7, v24);
}

id SecureStorage.exists(at:)()
{
  v0 = [objc_opt_self() defaultManager];
  sub_26121C5C0();
  v1 = sub_26121CC50();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t SecureStorage.delete(at:)()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_26121C590();
  v6[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_26121C500();

    swift_willThrow();
  }

  return 1;
}

void *SecureStorage.getDirectoryContent(at:)()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_26121C590();
  v7[0] = 0;
  v2 = [v0 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:0 options:0 error:v7];

  v3 = v7[0];
  if (v2)
  {
    sub_26121C5F0();
    v1 = sub_26121CEC0();
    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    sub_26121C500();

    swift_willThrow();
  }

  return v1;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SecureStorage.getDirectoryContent(at:)(Swift::String at)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_26121CC50();
  v9[0] = 0;
  v3 = [v1 contentsOfDirectoryAtPath:v2 error:v9];

  v4 = v9[0];
  if (v3)
  {
    v2 = sub_26121CEC0();
    v5 = v4;
  }

  else
  {
    v7 = v9[0];
    sub_26121C500();

    swift_willThrow();
  }

  v8 = v2;
  result.value._rawValue = v8;
  result.is_nil = v6;
  return result;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SecureStorage.getDirectoryContentAbsolutePath(at:)(Swift::String at)
{
  object = at._object;
  countAndFlagsBits = at._countAndFlagsBits;
  result = SecureStorage.getDirectoryContent(at:)(at);
  if (!v4)
  {
    if (result.value._rawValue)
    {
      v5 = *(result.value._rawValue + 2);
      if (v5)
      {
        v13 = MEMORY[0x277D84F90];
        rawValue = result.value._rawValue;
        sub_2611B7D88(0, v5, 0);
        v1 = v13;
        v7 = (rawValue + 40);
        do
        {
          v8 = *(v7 - 1);
          v9 = *v7;

          MEMORY[0x2666FBF20](47, 0xE100000000000000);
          MEMORY[0x2666FBF20](v8, v9);

          v11 = v13[2];
          v10 = v13[3];
          if (v11 >= v10 >> 1)
          {
            sub_2611B7D88((v10 > 1), v11 + 1, 1);
          }

          v13[2] = v11 + 1;
          v12 = &v13[2 * v11];
          v12[4] = countAndFlagsBits;
          v12[5] = object;
          v7 += 2;
          --v5;
        }

        while (v5);
      }

      else
      {

        v1 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v1 = 0;
    }
  }

  result.value._rawValue = v1;
  return result;
}

id sub_2611B7628()
{
  v0 = [objc_opt_self() defaultManager];
  sub_26121C5C0();
  v1 = sub_26121CC50();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t sub_2611B7728(uint64_t a1, id *a2)
{
  result = sub_26121CC60();
  *a2 = 0;
  return result;
}

uint64_t sub_2611B77A0(uint64_t a1, id *a2)
{
  v3 = sub_26121CC70();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2611B7820@<X0>(uint64_t *a2@<X8>)
{
  sub_26121CC80();
  v3 = sub_26121CC50();

  *a2 = v3;
  return result;
}

uint64_t sub_2611B7878@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26121CC80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2611B78A4(uint64_t a1)
{
  v2 = sub_2611B81E4(&qword_27FE874A0, type metadata accessor for FileAttributeKey, &unk_261221450);
  v3 = sub_2611B81E4(&qword_27FE874F8, type metadata accessor for FileAttributeKey, &unk_26122124C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2611B7960@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26121CC50();

  *a2 = v3;
  return result;
}

uint64_t sub_2611B79A8(uint64_t a1)
{
  v2 = sub_2611B81E4(&qword_27FE874E8, type metadata accessor for FileProtectionType, &unk_2612213C0);
  v3 = sub_2611B81E4(&qword_27FE874F0, type metadata accessor for FileProtectionType, &unk_261221360);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2611B7A64()
{
  v0 = sub_26121CC80();
  v1 = MEMORY[0x2666FBFB0](v0);

  return v1;
}

uint64_t sub_2611B7AA0(uint64_t a1)
{
  sub_26121CC80();
  sub_26121CD50();
}

uint64_t sub_2611B7AF4(uint64_t a1)
{
  sub_26121CC80();
  sub_26121D5B0();
  sub_26121CD50();
  v1 = sub_26121D5D0();

  return v1;
}

uint64_t sub_2611B7B68(void *a1, uint64_t *a2)
{
  v2 = sub_26121CC80();
  v4 = v3;
  if (v2 == sub_26121CC80() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26121D4D0();
  }

  return v7 & 1;
}

unint64_t sub_2611B7BF0(uint64_t a1)
{
  sub_26121CC80();
  sub_26121D5B0();
  sub_26121CD50();
  v2 = sub_26121D5D0();

  return sub_2611B7C84(a1, v2);
}

unint64_t sub_2611B7C84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26121CC80();
      v8 = v7;
      if (v6 == sub_26121CC80() && v8 == v9)
      {
        break;
      }

      v11 = sub_26121D4D0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_2611B7D88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2611B7DA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2611B7DA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87D10, &unk_261221610);
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

unint64_t sub_2611B7EB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87500, &qword_2612214A0);
    v3 = sub_26121D310();
    v4 = a1 + 32;

    while (1)
    {
      sub_2611B8394(v4, &v11);
      v5 = v11;
      result = sub_2611B7BF0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2611B69DC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_2611B7FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87498, &qword_261221118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2611B8038(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2611B81E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2611B8394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87498, &qword_261221118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611B842C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v6 = type metadata accessor for AnalyticsReporter(0);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611B857C, v4, 0);
}

uint64_t sub_2611B857C()
{
  v36 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];

  AnalyticsReporter.init(serviceName:hierarchyToken:)(v7, v6, v5, v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2611AC114(v0[12], &qword_27FE87508, qword_2612214C0);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = v0[16];
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[11];
    v14 = v0[10];
    sub_2611B88EC(v0[12], v10);
    sub_2611D2F0C();
    v8 = *(v10 + 24);
    v9 = *(v10 + 32);
    sub_2611B8950(v10, v13);
    (*(v12 + 56))(v13, 0, 1, v11);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    sub_2611B89B4(v13, v8, v9);
    swift_endAccess();
    v15 = sub_2611F05A8();
    sub_2611B8B74(v15, v14);
    v16 = sub_26121CA60();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v14, 1, v16);
    v19 = v0[16];
    if (v18 == 1)
    {
      v20 = v0[10];
      sub_2611B8BE4(v19);
      sub_2611AC114(v20, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      sub_2611B8950(v19, v0[15]);
      v21 = sub_26121CA40();
      v22 = sub_26121CFB0();
      v23 = os_log_type_enabled(v21, v22);
      v25 = v0[15];
      v24 = v0[16];
      if (v23)
      {
        v26 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v26 = 136315138;
        v32 = *(v25 + 24);
        v34 = v24;
        v35 = v33;
        v27 = *(v25 + 32);

        sub_2611B8BE4(v25);
        v28 = sub_2611AA228(v32, v27, &v35);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_261197000, v21, v22, "Session [%s] created", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x2666FCF20](v33, -1, -1);
        MEMORY[0x2666FCF20](v26, -1, -1);

        v29 = v34;
      }

      else
      {

        sub_2611B8BE4(v25);
        v29 = v24;
      }

      sub_2611B8BE4(v29);
      (*(v17 + 8))(v0[10], v16);
    }
  }

  v30 = v0[1];

  return v30(v8, v9);
}

uint64_t sub_2611B88EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsReporter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611B8950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsReporter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611B89B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AnalyticsReporter(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2611AC114(a1, &qword_27FE87508, qword_2612214C0);
    sub_2611BD270(a2, a3, v9);

    return sub_2611AC114(v9, &qword_27FE87508, qword_2612214C0);
  }

  else
  {
    sub_2611B88EC(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2611BD8F0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_2611B8B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611B8BE4(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsReporter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2611B8C40(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611B8CE0, v2, 0);
}

uint64_t sub_2611B8CE0()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[5];
    v3 = v0[6];

    v5 = sub_2611B3970(v4, v3);
    if (v6)
    {
      v7 = v5;
      v8 = v0[8];
      v9 = *(v2 + 56);
      v10 = type metadata accessor for AnalyticsReporter(0);
      v11 = *(v10 - 8);
      sub_2611B8950(v9 + *(v11 + 72) * v7, v8);

      v12 = 0;
      goto LABEL_6;
    }
  }

  v10 = type metadata accessor for AnalyticsReporter(0);
  v11 = *(v10 - 8);
  v12 = 1;
LABEL_6:
  v13 = v0[8];
  (*(v11 + 56))(v13, v12, 1, v10);
  type metadata accessor for AnalyticsReporter(0);
  v14 = (*(*(v10 - 8) + 48))(v13, 1, v10) != 1;
  sub_2611AC114(v13, &qword_27FE87508, qword_2612214C0);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_2611B8ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[8] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v6 = type metadata accessor for AnalyticsReporter(0);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611B902C, v4, 0);
}

uint64_t sub_2611B902C()
{
  v36 = v0;
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[8];
    v3 = v0[9];

    v5 = sub_2611B3970(v4, v3);
    if (v6)
    {
      sub_2611B8950(*(v2 + 56) + *(v0[16] + 72) * v5, v0[14]);
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v9 = v0 + 14;
  v8 = v0[14];
  v10 = v0[15];
  v11 = v0[16];
  v12 = *(v11 + 56);
  v12(v8, v7, 1, v10);
  v13 = *(v11 + 48);
  if (v13(v8, 1, v10) != 1)
  {
    v9 = v0 + 13;
    v14 = v0[13];
    v15 = v0[15];
    sub_2611B88EC(v0[14], v0[18]);
    sub_2611D3998(v14);
    v16 = v13(v14, 1, v15);
    v17 = v0[18];
    if (v16 != 1)
    {
      v30 = v0[17];
      v34 = v0[15];
      v31 = v0[12];
      sub_2611B88EC(v0[13], v30);
      sub_2611D2F0C();
      v28 = *(v30 + 24);
      v29 = *(v30 + 32);
      sub_2611B8950(v30, v31);
      v12(v31, 0, 1, v34);
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      sub_2611B89B4(v31, v28, v29);
      swift_endAccess();
      sub_2611B8BE4(v30);
      sub_2611B8BE4(v17);
      goto LABEL_17;
    }

    sub_2611B8BE4(v0[18]);
  }

  v18 = v0[11];
  sub_2611AC114(*v9, &qword_27FE87508, qword_2612214C0);
  v19 = sub_2611F05A8();
  sub_2611B8B74(v19, v18);
  v20 = sub_26121CA60();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_2611AC114(v0[11], &qword_27FE87700, &unk_2612203D0);
  }

  else
  {

    v22 = sub_26121CA40();
    v23 = sub_26121CFC0();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = v0[8];
      v24 = v0[9];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2611AA228(v25, v24, &v35);
      _os_log_impl(&dword_261197000, v22, v23, "Could not find parent session with ID: [%s]", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x2666FCF20](v27, -1, -1);
      MEMORY[0x2666FCF20](v26, -1, -1);
    }

    (*(v21 + 8))(v0[11], v20);
  }

  v28 = 0;
  v29 = 0;
LABEL_17:

  v32 = v0[1];

  return v32(v28, v29);
}

uint64_t sub_2611B9428(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 232) = a4;
  *(v5 + 176) = a3;
  *(v5 + 184) = v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  *(v5 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0);
  *(v5 + 200) = swift_task_alloc();
  v6 = type metadata accessor for AnalyticsReporter(0);
  *(v5 + 208) = v6;
  *(v5 + 216) = *(v6 - 8);
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611B9560, v4, 0);
}

uint64_t sub_2611B9560()
{
  v68 = v0;
  v1 = *(v0 + 184);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);

    v5 = sub_2611B3970(v4, v3);
    if (v6)
    {
      sub_2611B8950(*(v2 + 56) + *(*(v0 + 216) + 72) * v5, *(v0 + 200));
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v10 = *(v0 + 200);
  (*(v9 + 56))(v10, v7, 1, v8);
  if ((*(v9 + 48))(v10, 1, v8) != 1)
  {
    v41 = *(v0 + 224);
    v42 = *(v0 + 232);
    v43 = *(v0 + 176);
    sub_2611B88EC(*(v0 + 200), v41);
    v44 = sub_2611B9BCC(v43);
    v45 = sub_2611BDF84(v41, v44);

    sub_2611D3AE0(v45);

    if (v42 == 1)
    {
      (*(**(v0 + 184) + 168))(*(v0 + 160), *(v0 + 168));
    }

    sub_2611B8BE4(*(v0 + 224));
    goto LABEL_37;
  }

  v11 = *(v0 + 176);
  sub_2611AC114(*(v0 + 200), &qword_27FE87508, qword_2612214C0);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_31:
    v46 = *(v0 + 192);
    *(v0 + 152) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
    sub_2611BDF14();
    v47 = sub_26121CBF0();
    v49 = v48;

    v50 = sub_2611F05A8();
    sub_2611B8B74(v50, v46);
    v51 = sub_26121CA60();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 48))(v46, 1, v51);
    v54 = *(v0 + 192);
    if (v53 == 1)
    {

      sub_2611AC114(v54, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {

      v55 = sub_26121CA40();
      v56 = sub_26121CFC0();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v67 = v58;
        *v57 = 136315138;
        v59 = sub_2611AA228(v47, v49, &v67);

        *(v57 + 4) = v59;
        _os_log_impl(&dword_261197000, v55, v56, "Could not send session event: [%s]", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x2666FCF20](v58, -1, -1);
        MEMORY[0x2666FCF20](v57, -1, -1);
      }

      else
      {
      }

      (*(v52 + 8))(*(v0 + 192), v51);
    }

LABEL_37:

    v60 = *(v0 + 8);

    return v60();
  }

  v65 = v0;
  v14 = *(v0 + 176);
  v67 = MEMORY[0x277D84F90];
  sub_2611B7D88(0, v12, 0);
  v66 = v67;
  v15 = v14 + 64;
  result = sub_26121D170();
  v17 = result;
  v18 = 0;
  v19 = *(v14 + 36);
  v61 = v14 + 72;
  v62 = v12;
  v63 = v19;
  v64 = v14 + 64;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v14 + 32))
  {
    v22 = v17 >> 6;
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_41;
    }

    if (v19 != *(v14 + 36))
    {
      goto LABEL_42;
    }

    v23 = *(v14 + 56);
    v24 = (*(v14 + 48) + 16 * v17);
    v25 = v14;
    v27 = *v24;
    v26 = v24[1];
    sub_2611AC930(v23 + 32 * v17, v65 + 32);
    *(v65 + 64) = v27;
    *(v65 + 72) = v26;
    sub_2611B69DC((v65 + 32), (v65 + 80));
    *(v65 + 136) = 0;
    *(v65 + 144) = 0xE000000000000000;

    MEMORY[0x2666FBF20](v27, v26);
    MEMORY[0x2666FBF20](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87510, &qword_2612214E0);
    sub_26121D2D0();
    v29 = *(v65 + 136);
    v28 = *(v65 + 144);
    result = sub_2611AC114(v65 + 64, &qword_27FE87518, qword_2612214E8);
    v30 = v66;
    v67 = v66;
    v32 = *(v66 + 16);
    v31 = *(v66 + 24);
    if (v32 >= v31 >> 1)
    {
      result = sub_2611B7D88((v31 > 1), v32 + 1, 1);
      v30 = v67;
    }

    *(v30 + 16) = v32 + 1;
    v33 = v30 + 16 * v32;
    *(v33 + 32) = v29;
    *(v33 + 40) = v28;
    v20 = 1 << *(v25 + 32);
    if (v17 >= v20)
    {
      goto LABEL_43;
    }

    v14 = v25;
    v15 = v64;
    v34 = *(v64 + 8 * v22);
    if ((v34 & (1 << v17)) == 0)
    {
      goto LABEL_44;
    }

    v66 = v30;
    v19 = v63;
    if (v63 != *(v14 + 36))
    {
      goto LABEL_45;
    }

    v35 = v34 & (-2 << (v17 & 0x3F));
    if (v35)
    {
      v20 = __clz(__rbit64(v35)) | v17 & 0x7FFFFFFFFFFFFFC0;
      v21 = v62;
    }

    else
    {
      v36 = v22 << 6;
      v21 = v62;
      v37 = (v61 + 8 * v22);
      v38 = v22 + 1;
      while (v38 < (v20 + 63) >> 6)
      {
        v40 = *v37++;
        v39 = v40;
        v36 += 64;
        ++v38;
        if (v40)
        {
          result = sub_2611BDF78(v17, v63, 0);
          v20 = __clz(__rbit64(v39)) + v36;
          goto LABEL_11;
        }
      }

      result = sub_2611BDF78(v17, v63, 0);
    }

LABEL_11:
    ++v18;
    v17 = v20;
    if (v18 == v21)
    {
      v0 = v65;
      v13 = v66;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

unint64_t sub_2611B9BCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
    v2 = sub_26121D310();
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_2611AC930(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_2611B69DC(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87510, &qword_2612214E0);
        swift_dynamicCast();
        sub_2611B69DC(&v23, v25);
        sub_2611B69DC(v25, v26);
        sub_2611B69DC(v26, &v24);
        result = sub_2611B3970(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_2611B69DC(&v24, v10);
          v8 = v11;
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
          *(v2[6] + 16 * result) = v17;
          result = sub_2611B69DC(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
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

uint64_t sub_2611B9E58(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20[-1] - v8;
  v10 = type metadata accessor for AnalyticsReporter(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  swift_beginAccess();

  sub_2611B89B4(v9, a1, a2);
  swift_endAccess();
  v11 = sub_2611F05A8();
  sub_2611B8B74(v11, v6);
  v12 = sub_26121CA60();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    return sub_2611AC114(v6, &qword_27FE87700, &unk_2612203D0);
  }

  v15 = sub_26121CA40();
  v16 = sub_26121CFB0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2611AA228(a1, a2, v20);
    _os_log_impl(&dword_261197000, v15, v16, "Session [%s] released", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2666FCF20](v18, -1, -1);
    MEMORY[0x2666FCF20](v17, -1, -1);
  }

  return (*(v13 + 8))(v6, v12);
}

uint64_t sub_2611BA118(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AnalyticsReporter(0);
  v59 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v56 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v52 - v17;
  v19 = sub_2611F05A8();
  sub_2611B8B74(v19, v18);
  v20 = sub_26121CA60();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v18, 1, v20);
  v57 = a1;
  v58 = a2;
  if (v22 == 1)
  {
    sub_2611AC114(v18, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {

    v23 = sub_26121CA40();
    v24 = sub_26121CFB0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      LODWORD(v55) = v24;
      v26 = v25;
      v27 = swift_slowAlloc();
      v28 = a1;
      v29 = v27;
      v61[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2611AA228(v28, a2, v61);
      _os_log_impl(&dword_261197000, v23, v55, "Released all sessions from service [%s]", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x2666FCF20](v29, -1, -1);
      MEMORY[0x2666FCF20](v26, -1, -1);
    }

    (*(v21 + 8))(v18, v20);
  }

  swift_beginAccess();
  v30 = v3[14];
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v30 + 64);
  v34 = (v31 + 63) >> 6;

  v36 = 0;
  v55 = MEMORY[0x277D84F90];
  while (1)
  {
    v37 = v36;
    if (!v33)
    {
      break;
    }

LABEL_13:
    v38 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v39 = *(v59 + 72);
    v40 = v56;
    sub_2611B8950(*(v30 + 56) + v39 * (v38 | (v36 << 6)), v56);
    sub_2611B88EC(v40, v15);
    v41 = *(v15 + 1) == v57 && *(v15 + 2) == v58;
    if (v41 || (sub_26121D4D0() & 1) != 0)
    {
      sub_2611B88EC(v15, v54);
      v42 = v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2611BDD1C(0, *(v42 + 16) + 1, 1);
        v42 = v60;
      }

      v45 = *(v42 + 16);
      v44 = *(v42 + 24);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v55 = v45 + 1;
        v53 = v45;
        sub_2611BDD1C((v44 > 1), v45 + 1, 1);
        v46 = v55;
        v45 = v53;
        v42 = v60;
      }

      *(v42 + 16) = v46;
      v47 = *(v59 + 80);
      v55 = v42;
      result = sub_2611B88EC(v54, v42 + ((v47 + 32) & ~v47) + v45 * v39);
    }

    else
    {
      result = sub_2611B8BE4(v15);
    }
  }

  while (1)
  {
    v36 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return result;
    }

    if (v36 >= v34)
    {
      break;
    }

    v33 = *(v30 + 64 + 8 * v36);
    ++v37;
    if (v33)
    {
      goto LABEL_13;
    }
  }

  v48 = *(v55 + 16);
  if (v48)
  {
    v49 = *(*v3 + 168);
    v50 = v55 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v51 = *(v59 + 72);
    do
    {
      sub_2611B8950(v50, v11);
      v49(*(v11 + 3), *(v11 + 4));
      sub_2611B8BE4(v11);
      v50 += v51;
      --v48;
    }

    while (v48);
  }
}

uint64_t sub_2611BA61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for AnalyticsReporter(0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611BA718, v3, 0);
}

uint64_t sub_2611BA718()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[5];
    v3 = v0[6];

    v5 = sub_2611B3970(v4, v3);
    if (v6)
    {
      v7 = v0[10];
      sub_2611B8950(*(v2 + 56) + *(v0[11] + 72) * v5, v0[12]);

      v8 = sub_2611BE374(&qword_27FE87520, &protocol conformance descriptor for AnalyticsReporter);
      v9 = Encodable.toJson()(v7, v8);
      if (v10 >> 60 == 15)
      {
        sub_2611B8BE4(v0[12]);
      }

      else
      {
        v13 = v9;
        v14 = v10;
        v15 = v0[7];
        SecureStorage.init()();
        SecureStorage.save(at:data:)(v15, v13, v14);
        sub_2611B8BE4(v0[12]);
        sub_26119EF48(v13, v14);
      }
    }

    else
    {
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2611BAA70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7];
  v9 = type metadata accessor for AnalyticsReporter(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SecureStorage.init()();
  v13 = SecureStorage.read(at:)(a1);
  v15 = v14;
  sub_2611BE374(&qword_27FE87530, &protocol conformance descriptor for AnalyticsReporter);
  nullsub_1();
  Data.fromJson<A>(_:)(v9, v9, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26119DA0C(v13, v15);
    sub_2611AC114(v8, &qword_27FE87508, qword_2612214C0);
    return 0;
  }

  else
  {
    sub_2611B88EC(v8, v12);
    sub_2611D2F0C();
    v16 = *(v12 + 3);
    v17 = *(v12 + 4);
    sub_2611B8950(v12, v6);
    (*(v10 + 56))(v6, 0, 1, v9);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    sub_2611B89B4(v6, v16, v17);
    swift_endAccess();
    sub_26119DA0C(v13, v15);
    sub_2611B8BE4(v12);
    return v16;
  }
}

uint64_t sub_2611BAEDC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v6 + 32))(a1, v5, v6) & 1;
}

unint64_t sub_2611BB144(uint64_t a1, void *a2, uint64_t (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v70 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  v15 = sub_26121C5F0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  SecureStorage.init()();
  v22._countAndFlagsBits = a1;
  v22._object = a2;
  result = SecureStorage.getDirectoryContentAbsolutePath(at:)(v22);
  if (v24)
  {
    v26 = sub_2611F05A8();
    sub_2611B8B74(v26, v12);
    v27 = sub_26121CA60();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v12, 1, v27) == 1)
    {

      return sub_2611AC114(v12, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v48 = v24;
      v49 = sub_26121CA40();
      v50 = sub_26121CFC0();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        v53 = v24;
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v54;
        *v52 = v54;
        _os_log_impl(&dword_261197000, v49, v50, "Could not load Analytics sessions: [%@]", v51, 0xCu);
        sub_2611AC114(v52, &qword_27FE87528, &qword_261221500);
        MEMORY[0x2666FCF20](v52, -1, -1);
        MEMORY[0x2666FCF20](v51, -1, -1);
      }

      else
      {
      }

      return (*(v28 + 8))(v12, v27);
    }
  }

  else
  {
    v65 = v19;
    v68 = v14;
    if (result)
    {
      v29 = result;
      v69 = *(result + 16);
      if (v69)
      {
        v30 = 0;
        v62 = (v16 + 16);
        v31 = (v16 + 8);
        v32 = result + 40;
        *&v25 = 136315138;
        v55 = v25;
        v66 = a4;
        v67 = v5;
        v63 = result;
        v61 = v15;
        while (v30 < *(v29 + 16))
        {

          sub_26121C570();
          if (v70(v21) & 1) == 0 || (v71[3] = &type metadata for SecureStorage, v71[4] = &protocol witness table for SecureStorage, v33 = (*(*v5 + 200))(v21, v71), __swift_destroy_boxed_opaque_existential_1(v71), (v33))
          {
            (*v31)(v21, v15);
          }

          else
          {
            v34 = sub_2611F05A8();
            v35 = v68;
            sub_2611B8B74(v34, v68);
            v36 = sub_26121CA60();
            v37 = *(v36 - 8);
            if ((*(v37 + 48))(v35, 1, v36) == 1)
            {
              (*v31)(v21, v15);
              sub_2611AC114(v35, &qword_27FE87700, &unk_2612203D0);
              v5 = v67;
            }

            else
            {
              v38 = v65;
              (*v62)(v65, v21, v15);
              v39 = sub_26121CA40();
              v64 = sub_26121CFC0();
              if (os_log_type_enabled(v39, v64))
              {
                v40 = swift_slowAlloc();
                v59 = swift_slowAlloc();
                v71[0] = v59;
                *v40 = v55;
                v58 = v39;
                v56 = sub_26121C580();
                v42 = v41;
                v60 = *v31;
                v60(v38, v61);
                v43 = sub_2611AA228(v56, v42, v71);

                v44 = v40;
                v57 = v40;
                v15 = v61;
                *(v44 + 1) = v43;
                v45 = v58;
                _os_log_impl(&dword_261197000, v58, v64, "Could not delete Analytics session: [%s]", v44, 0xCu);
                v46 = v59;
                __swift_destroy_boxed_opaque_existential_1(v59);
                MEMORY[0x2666FCF20](v46, -1, -1);
                MEMORY[0x2666FCF20](v57, -1, -1);

                v60(v21, v15);
              }

              else
              {

                v47 = *v31;
                (*v31)(v38, v15);
                v47(v21, v15);
              }

              (*(v37 + 8))(v68, v36);
              v5 = v67;
              v29 = v63;
            }
          }

          ++v30;

          v32 += 16;
          if (v69 == v30)
          {
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_2611BB7B4(uint64_t a1, uint64_t a2)
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v2);
}

uint64_t sub_2611BB7EC()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_2611BB83C()
{
  type metadata accessor for AnalyticsCache();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  qword_27FE8CDA8 = v0;
  return result;
}

uint64_t static AnalyticsManager.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FE8CDA0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27FE8CDA8;
}

uint64_t AnalyticsManager.createSession(serviceName:hierarchyToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 120) + **(**v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2611BBA38;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_2611BBA38(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t AnalyticsManager.createSubSession(serviceName:parentSessionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 144) + **(**v4 + 144));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2611BE58C;

  return v12(a1, a2, a3, a4);
}

uint64_t AnalyticsManager.sessionExists(sessionID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 136) + **(**v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2611BBDAC;

  return v8(a1, a2);
}

uint64_t sub_2611BBDAC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t AnalyticsManager.sendSessionEvent(sessionID:message:releaseSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 160) + **(**v4 + 160));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2611BBFEC;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_2611BBFEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AnalyticsManager.releaseSession(sessionID:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v4 = swift_task_alloc();
  v5 = *v2;
  v3[4] = v4;
  v3[5] = v5;

  return MEMORY[0x2822009F8](sub_2611BC180, 0, 0);
}

uint64_t sub_2611BC180(uint64_t a1)
{
  v16 = v1;
  v2 = v1[4];
  v3 = sub_2611F05A8();
  sub_2611B8B74(v3, v2);
  v4 = sub_26121CA60();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_2611AC114(v1[4], &qword_27FE87700, &unk_2612203D0);
  }

  else
  {

    v6 = sub_26121CA40();
    v7 = sub_26121CFB0();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v1[2];
      v8 = v1[3];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2611AA228(v9, v8, &v15);
      _os_log_impl(&dword_261197000, v6, v7, "Releasing session: [%s]", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x2666FCF20](v11, -1, -1);
      MEMORY[0x2666FCF20](v10, -1, -1);
    }

    (*(v5 + 8))(v1[4], v4);
  }

  v12 = v1[5];
  v13 = (*v12 + 168) & 0xFFFFFFFFFFFFLL | 0xE622000000000000;
  v1[6] = *(*v12 + 168);
  v1[7] = v13;

  return MEMORY[0x2822009F8](sub_2611BC38C, v12, 0);
}

uint64_t sub_2611BC38C()
{
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnalyticsManager.releaseAllSessions(for:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  v5 = (*v4 + 176) & 0xFFFFFFFFFFFFLL | 0xA8A3000000000000;
  v3[5] = *(*v4 + 176);
  v3[6] = v5;
  return MEMORY[0x2822009F8](sub_2611BC43C, v4, 0);
}

uint64_t sub_2611BC43C()
{
  (*(v0 + 40))(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnalyticsManager.storeSession(sessionID:fileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = sub_26121C5F0();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v4;
  v5[8] = v7;
  v5[9] = v8;

  return MEMORY[0x2822009F8](sub_2611BC570, 0, 0);
}

uint64_t sub_2611BC570()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  type metadata accessor for Utilities();
  static Utilities.analyticsCacheDirectoryPath()();
  MEMORY[0x2666FBF20](v3, v2);
  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](7562611, 0xE300000000000000);
  sub_26121C570();

  v9 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_2611BC704;
  v5 = v0[8];
  v7 = v0[2];
  v6 = v0[3];

  return v9(v7, v6, v5);
}

uint64_t sub_2611BC704()
{

  return MEMORY[0x2822009F8](sub_2611BC800, 0, 0);
}

uint64_t sub_2611BC800()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t AnalyticsManager.storeSubSession(sessionID:fileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = sub_26121C5F0();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v4;
  v5[8] = v7;
  v5[9] = v8;

  return MEMORY[0x2822009F8](sub_2611BC944, 0, 0);
}

uint64_t sub_2611BC944()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  type metadata accessor for Utilities();
  static Utilities.analyticsCacheDirectoryPath()();
  MEMORY[0x2666FBF20](v3, v2);
  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](6452595, 0xE300000000000000);
  sub_26121C570();

  v9 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_2611BCAD8;
  v5 = v0[8];
  v7 = v0[2];
  v6 = v0[3];

  return v9(v7, v6, v5);
}

uint64_t sub_2611BCAD8()
{

  return MEMORY[0x2822009F8](sub_2611BE588, 0, 0);
}

uint64_t AnalyticsManager.loadSession(fileName:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_26121C5F0();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[6] = v5;
  v3[7] = v6;

  return MEMORY[0x2822009F8](sub_2611BCC98, 0, 0);
}

uint64_t sub_2611BCC98()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  type metadata accessor for Utilities();
  static Utilities.analyticsCacheDirectoryPath()();
  MEMORY[0x2666FBF20](v3, v2);
  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](7562611, 0xE300000000000000);
  sub_26121C570();

  v4 = (*v1 + 192) & 0xFFFFFFFFFFFFLL | 0xB558000000000000;
  v0[8] = *(*v1 + 192);
  v0[9] = v4;

  return MEMORY[0x2822009F8](sub_2611BCD8C, v1, 0);
}

uint64_t sub_2611BCD8C()
{
  *(v0 + 80) = (*(v0 + 64))(*(v0 + 48));
  *(v0 + 88) = v1;

  return MEMORY[0x2822009F8](sub_2611BCDFC, 0, 0);
}

uint64_t sub_2611BCDFC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[10];
  v3 = v0[11];

  return v1(v2, v3);
}

uint64_t AnalyticsManager.loadSubSession(fileName:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_26121C5F0();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[6] = v5;
  v3[7] = v6;

  return MEMORY[0x2822009F8](sub_2611BCF40, 0, 0);
}

uint64_t sub_2611BCF40()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  type metadata accessor for Utilities();
  static Utilities.analyticsCacheDirectoryPath()();
  MEMORY[0x2666FBF20](v3, v2);
  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](6452595, 0xE300000000000000);
  sub_26121C570();

  v4 = (*v1 + 192) & 0xFFFFFFFFFFFFLL | 0xB558000000000000;
  v0[8] = *(*v1 + 192);
  v0[9] = v4;

  return MEMORY[0x2822009F8](sub_2611BD034, v1, 0);
}

uint64_t sub_2611BD034()
{
  *(v0 + 80) = (*(v0 + 64))(*(v0 + 48));
  *(v0 + 88) = v1;

  return MEMORY[0x2822009F8](sub_2611BE590, 0, 0);
}

uint64_t sub_2611BD0C8()
{
  v1 = v0[2];
  type metadata accessor for Utilities();
  v0[3] = static Utilities.analyticsCacheDirectoryPath()();
  v0[4] = v2;
  v3 = (*v1 + 208) & 0xFFFFFFFFFFFFLL | 0x41F1000000000000;
  v0[5] = *(*v1 + 208);
  v0[6] = v3;

  return MEMORY[0x2822009F8](sub_2611BD15C, v1, 0);
}

uint64_t sub_2611BD15C()
{
  (*(v0 + 40))(*(v0 + 24), *(v0 + 32), sub_2611BD1E8, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2611BD1E8()
{
  if ((sub_26121C540() & 1) == 0)
  {
    return 0;
  }

  if (sub_26121C560() == 6452595 && v0 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v2 = sub_26121D4D0();

    return v2 & 1;
  }
}

uint64_t sub_2611BD270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2611B3970(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2611BDAEC();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for AnalyticsReporter(0);
    v19 = *(v12 - 8);
    sub_2611B88EC(v11 + *(v19 + 72) * v8, a3);
    sub_2611BD704(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for AnalyticsReporter(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2611BD3C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AnalyticsReporter(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87540, &unk_261221620);
  v40 = v4;
  result = sub_26121D300();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_2611B88EC(v28, v41);
      }

      else
      {
        sub_2611B8950(v28, v41);
      }

      sub_26121D5B0();
      sub_26121CD50();
      result = sub_26121D5D0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_2611B88EC(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_2611BD704(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26121D180() + 1) & ~v5;
    while (1)
    {
      sub_26121D5B0();

      sub_26121CD50();
      v9 = sub_26121D5D0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for AnalyticsReporter(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2611BD8F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2611B3970(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2611BDAEC();
      goto LABEL_7;
    }

    sub_2611BD3C8(v15, a4 & 1);
    v22 = sub_2611B3970(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26121D520();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for AnalyticsReporter(0) - 8) + 72) * v12;

    return sub_2611BE524(a1, v20);
  }

LABEL_13:
  sub_2611BDA54(v12, a2, a3, a1, v18);
}

uint64_t sub_2611BDA54(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AnalyticsReporter(0);
  result = sub_2611B88EC(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_2611BDAEC()
{
  v1 = v0;
  v2 = type metadata accessor for AnalyticsReporter(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87540, &unk_261221620);
  v4 = *v0;
  v5 = sub_26121D2F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_2611B8950(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_2611B88EC(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2611BDD1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2611BDD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2611BDD3C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87538, &qword_2612215F8);
  v10 = *(type metadata accessor for AnalyticsReporter(0) - 8);
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
  v15 = *(type metadata accessor for AnalyticsReporter(0) - 8);
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

unint64_t sub_2611BDF14()
{
  result = qword_27FE87960;
  if (!qword_27FE87960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87468, &qword_2612210E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87960);
  }

  return result;
}

uint64_t sub_2611BDF78(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2611BDF84(void *a1, uint64_t a2)
{
  v4 = sub_26121C760();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = a1[1];
  v15 = a1[2];

  if (__PAIR128__(v15, v14) == *sub_261199A70() || (sub_26121D4D0() & 1) != 0)
  {
    sub_26121C750();
    sub_2611C0E50(v13);
    v16 = *(v5 + 8);
    v16(v7, v4);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_2611AC114(v13, &unk_27FE879C0, &unk_261221600);
      goto LABEL_10;
    }

    sub_26121C720();
    v18 = v17;
    v16(v13, v4);
  }

  else
  {
    sub_26121C750();
    sub_2611C0B10(v11);
    v19 = *(v5 + 8);
    v19(v7, v4);
    if ((*(v5 + 48))(v11, 1, v4) == 1)
    {
      sub_2611AC114(v11, &unk_27FE879C0, &unk_261221600);
      goto LABEL_10;
    }

    sub_26121C720();
    v18 = v20;
    v19(v11, v4);
  }

  v21 = sub_261199C14();
  v22 = *v21;
  v23 = v21[1];
  v44 = MEMORY[0x277D839F8];
  *&v43 = v18;
  sub_2611B69DC(&v43, v42);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = a2;
  sub_2611B63A0(v42, v22, v23, isUniquelyReferenced_nonNull_native);

  a2 = v41;
LABEL_10:
  v25 = AnalyticsReporter.sessionDuration.getter();
  if ((v26 & 1) == 0)
  {
    v27 = v25;
    v28 = sub_261199C3C();
    v29 = *v28;
    v30 = v28[1];
    v44 = MEMORY[0x277D83B88];
    *&v43 = v27;
    sub_2611B69DC(&v43, v42);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v41 = a2;
    sub_2611B63A0(v42, v29, v30, v31);

    a2 = v41;
  }

  v32 = sub_261199A4C();
  if (v14 == *v32 && v15 == *(v32 + 1) || (sub_26121D4D0() & 1) != 0)
  {
    v33 = sub_261199AC4();
    v34 = *v33;
    v35 = v33[1];
    v36 = a1[5];
    v37 = a1[6];
    v44 = MEMORY[0x277D837D0];
    *&v43 = v36;
    *(&v43 + 1) = v37;
    sub_2611B69DC(&v43, v42);

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v41 = a2;
    sub_2611B63A0(v42, v34, v35, v38);

    return v41;
  }

  return a2;
}

uint64_t sub_2611BE374(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnalyticsReporter(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AnalyticsManager(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsManager(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2611BE524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsReporter(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Encodable.toJson()(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
  v4 = sub_26121C340();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C380();
  swift_allocObject();
  sub_26121C370();
  (*(v5 + 104))(v7, *MEMORY[0x277CC8778], v4);
  sub_26121C350();
  v8 = sub_26121C360();

  return v8;
}

Swift::String __swiftcall String.localized(table:comment:)(Swift::String table, Swift::String comment)
{
  v4 = sub_2611C130C(table._countAndFlagsBits, table._object, v2, v3);
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t String.localized(table:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - v12;
  sub_2611C130C(a1, a2, a6, a7);
  sub_26121C830();
  v14 = sub_26121C930();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v15 = sub_26121CCA0();

  sub_2611AC114(v13, &qword_27FE87548, &unk_261221BA0);
  return v15;
}

Swift::String __swiftcall Data.upperHex(format:)(Swift::String format)
{
  v3 = v2;
  v4 = v1;
  object = format._object;
  countAndFlagsBits = format._countAndFlagsBits;

  sub_2611C1728(v4, v3, countAndFlagsBits, object);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
  sub_2611C1CC8(&qword_27FE87960, &qword_27FE87468, &qword_2612210E0, MEMORY[0x277D83958]);
  v7 = sub_26121CBF0();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t Data.fromJson<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v14[2] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_26121C2F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C330();
  swift_allocObject();
  sub_26121C320();
  (*(v10 + 104))(v12, *MEMORY[0x277CC86D0], v9);
  sub_26121C300();
  sub_26121C310();
  (*(*(a4 - 8) + 56))(a6, 0, 1, a4);
}

uint64_t Date.toISO8601String(timeZone:options:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = sub_26121C700();
  v5 = sub_26121C9B0();
  v6 = [v3 stringFromDate:v4 timeZone:v5 formatOptions:a2];

  v7 = sub_26121CC80();
  return v7;
}

uint64_t sub_2611BF08C(uint64_t a1, unint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v17 = 45;
  v18 = 0xE100000000000000;
  v15 = 43;
  v16 = 0xE100000000000000;
  v2 = sub_2611B6988();
  v3 = MEMORY[0x277D837D0];
  v4 = sub_26121D130(&v17, &v15, 0, 0, 0, 1, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837D0], v2, v2, v2);
  v6 = v5;

  v19 = v4;
  v20 = v6;
  v17 = 95;
  v18 = 0xE100000000000000;
  v15 = 47;
  v16 = 0xE100000000000000;
  v7 = sub_26121D130(&v17, &v15, 0, 0, 0, 1, v3, v3, v3, v2, v2, v2);
  v9 = v8;

  for (; (sub_26121CD60() & 3) != 0; v9 = v18)
  {
    v19 = 61;
    v20 = 0xE100000000000000;
    v17 = v7;
    v18 = v9;
    v17 = sub_26121CE50();
    v18 = v10;
    sub_26121CD90();
    v7 = v17;
  }

  v11 = sub_26121C620();
  v13 = v12;
  sub_26119EA60(v11, v12);

  if (v13 >> 60 != 15)
  {
    sub_26119EF48(v11, v13);
  }

  return v11;
}

uint64_t sub_2611BF248(uint64_t a1, uint64_t a2)
{
  v17 = sub_26121C670();
  v18 = v2;
  v15 = 43;
  v16 = 0xE100000000000000;
  v13 = 45;
  v14 = 0xE100000000000000;
  v3 = sub_2611B6988();
  v4 = MEMORY[0x277D837D0];
  v5 = sub_26121D130(&v15, &v13, 0, 0, 0, 1, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837D0], v3, v3, v3);
  v7 = v6;

  v17 = v5;
  v18 = v7;
  v15 = 47;
  v16 = 0xE100000000000000;
  v13 = 95;
  v14 = 0xE100000000000000;
  v8 = sub_26121D130(&v15, &v13, 0, 0, 0, 1, v4, v4, v4, v3, v3, v3);
  v10 = v9;

  v17 = v8;
  v18 = v10;
  v15 = 61;
  v16 = 0xE100000000000000;
  v13 = 0;
  v14 = 0xE000000000000000;
  v11 = sub_26121D130(&v15, &v13, 0, 0, 0, 1, v4, v4, v4, v3, v3, v3);

  return v11;
}

void *sub_2611BF3A8(char a1, uint64_t a2, uint64_t a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v67 - v5;
  v7 = objc_opt_self();
  v8 = sub_26121C660();
  *&v74 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:1 error:&v74];

  if (v9)
  {
    v10 = v74;
    sub_26121D150();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87558, &qword_261221650);
    if (swift_dynamicCast())
    {
      v11 = *&v73[0];
      if ((a1 & 1) == 0)
      {
LABEL_4:
        v12 = sub_2611BFA98(v11);

        return v12;
      }
    }

    else
    {
      v11 = sub_2611C1A94(MEMORY[0x277D84F90]);
      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v12 = sub_2611C1B98(MEMORY[0x277D84F90]);
    v18 = 0;
    v19 = v11 + 64;
    v20 = 1 << *(v11 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 64);
    v23 = (v20 + 63) >> 6;
    v68 = v23;
    v69 = v11 + 64;
    v70 = v11;
    while (1)
    {
      if (!v22)
      {
        while (1)
        {
          v26 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v26 >= v23)
          {

            return v12;
          }

          v22 = *(v19 + 8 * v26);
          ++v18;
          if (v22)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }

      v26 = v18;
LABEL_18:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = v27 | (v26 << 6);
      v29 = (*(v11 + 48) + 16 * v28);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(*(v11 + 56) + 8 * v28);
      *&v74 = sub_26121CBE0();
      *(&v74 + 1) = v33;
      *&v73[0] = 0x6E656B6F74;
      *(&v73[0] + 1) = 0xE500000000000000;
      sub_2611B6988();

      swift_unknownObjectRetain();
      v34 = sub_26121D140();

      if ((v34 & 1) == 0)
      {
        goto LABEL_26;
      }

      v71 = v31;
      *&v73[0] = v32;
      swift_unknownObjectRetain();
      v35 = MEMORY[0x277D837D0];
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v36 = static JwtHelper.redactSignature(_:)(v74, *(&v74 + 1));
      v38 = v37;

      ObjectType = v35;
      *&v74 = v36;
      *(&v74 + 1) = v38;
      sub_2611B69DC(&v74, v73);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v12;
      v40 = sub_2611B3970(v71, v30);
      v42 = v12[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_51;
      }

      v46 = v41;
      if (v12[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v62 = v40;
          sub_2611B655C();
          v40 = v62;
        }

        v47 = v71;
        if (v46)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_2611B5F38(v45, isUniquelyReferenced_nonNull_native);
        v47 = v71;
        v40 = sub_2611B3970(v71, v30);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_53;
        }

        if (v46)
        {
LABEL_11:
          v24 = v40;

          v12 = v72;
          v25 = (v72[7] + 32 * v24);
          __swift_destroy_boxed_opaque_existential_1(v25);
          sub_2611B69DC(v73, v25);
          swift_unknownObjectRelease();
          goto LABEL_12;
        }
      }

      v12 = v72;
      v72[(v40 >> 6) + 8] |= 1 << v40;
      v59 = (v12[6] + 16 * v40);
      *v59 = v47;
      v59[1] = v30;
      sub_2611B69DC(v73, (v12[7] + 32 * v40));
      swift_unknownObjectRelease();
      v60 = v12[2];
      v44 = __OFADD__(v60, 1);
      v58 = v60 + 1;
      if (v44)
      {
        goto LABEL_52;
      }

LABEL_39:
      v12[2] = v58;
LABEL_12:
      v18 = v26;
      v19 = v69;
      v11 = v70;
      v23 = v68;
    }

    v31 = v71;
LABEL_26:
    ObjectType = swift_getObjectType();
    *&v74 = v32;
    sub_2611B69DC(&v74, v73);
    swift_unknownObjectRetain();
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v12;
    v40 = sub_2611B3970(v31, v30);
    v51 = v12[2];
    v52 = (v50 & 1) == 0;
    v44 = __OFADD__(v51, v52);
    v53 = v51 + v52;
    if (v44)
    {
      goto LABEL_49;
    }

    v54 = v50;
    if (v12[3] >= v53)
    {
      if ((v49 & 1) == 0)
      {
        v61 = v40;
        sub_2611B655C();
        v40 = v61;
        if (v54)
        {
          goto LABEL_11;
        }

        goto LABEL_32;
      }
    }

    else
    {
      sub_2611B5F38(v53, v49);
      v40 = sub_2611B3970(v31, v30);
      if ((v54 & 1) != (v55 & 1))
      {
LABEL_53:
        result = sub_26121D520();
        __break(1u);
        return result;
      }
    }

    if (v54)
    {
      goto LABEL_11;
    }

LABEL_32:
    v12 = v72;
    v72[(v40 >> 6) + 8] |= 1 << v40;
    v56 = (v12[6] + 16 * v40);
    *v56 = v31;
    v56[1] = v30;
    sub_2611B69DC(v73, (v12[7] + 32 * v40));
    swift_unknownObjectRelease();
    v57 = v12[2];
    v44 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v44)
    {
      goto LABEL_50;
    }

    goto LABEL_39;
  }

  v13 = v74;
  v14 = sub_26121C500();

  swift_willThrow();
  v15 = sub_2611F04C0();
  sub_2611ABE1C(v15, v6, &qword_27FE87700, &unk_2612203D0);
  v16 = sub_26121CA60();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    sub_2611AC114(v6, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v63 = sub_26121CA40();
    v64 = sub_26121CFD0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_261197000, v63, v64, "Error json->dictionary", v65, 2u);
      MEMORY[0x2666FCF20](v65, -1, -1);
    }

    (*(v17 + 8))(v6, v16);
  }

  v12 = sub_2611C1B98(MEMORY[0x277D84F90]);

  return v12;
}