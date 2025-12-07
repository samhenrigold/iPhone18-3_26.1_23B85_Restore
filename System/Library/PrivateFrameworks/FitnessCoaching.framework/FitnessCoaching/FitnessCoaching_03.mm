uint64_t sub_2277D2338()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2277AA94C;

  return sub_2277A7178(v2, v3, v4);
}

uint64_t sub_2277D23F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2277AA94C;

  return sub_2277D1BA4(a1, v4, v5, v6);
}

uint64_t sub_2277D24C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2277AA94C;

  return sub_2277BBCE0(a1, v4);
}

uint64_t sub_2277D257C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22779696C;

  return sub_2277BBCE0(a1, v4);
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2277D267C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22779696C;

  return sub_2277D0F50(v2, v3, v5, v4);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t WalkSuggestion.protobuf()(uint64_t a1, char a2)
{
  type metadata accessor for WalkSuggestionProtobuf(0);
  sub_2277D2A0C(&qword_27D7CF1A8, &protocol conformance descriptor for WalkSuggestionProtobuf);
  return sub_2277E2274();
}

uint64_t WalkSuggestion.init(_:)(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    if (*a1)
    {
      v1 = *(a1 + 12);
      sub_2277D2948(a1);
    }

    else
    {
      sub_2277D2948(a1);
      return 0;
    }
  }

  else
  {
    v1 = a1;
    sub_227791024();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
    sub_2277D2948(v1);
  }

  return v1;
}

uint64_t sub_2277D2948(uint64_t a1)
{
  v2 = type metadata accessor for WalkSuggestionProtobuf(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2277D2A0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WalkSuggestionProtobuf(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2277D2A50()
{
  type metadata accessor for WalkSuggestionProtobuf(0);
  sub_2277D2A0C(&qword_27D7CF1A8, &protocol conformance descriptor for WalkSuggestionProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277D2AF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = *(a1 + 3);
      result = sub_2277D2948(a1);
    }

    else
    {
      result = sub_2277D2948(a1);
      v4 = 0;
    }

    *a2 = v4;
    *(a2 + 8) = v3 == 0;
  }

  else
  {
    sub_227791024();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
    return sub_2277D2948(a1);
  }

  return result;
}

uint64_t sub_2277D2B9C(uint64_t result)
{
  if (*(v1 + 24) == 1)
  {
    *result = 0;
    *(result + 8) = 1;
    return result;
  }

  v2 = *(v1 + 16);
  *result = 1;
  *(result + 8) = 1;
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    *(result + 12) = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0);
  sub_2277E20F4();
  v3 = *(GlanceWorkoutSummationTypeProtobuf + 24);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  v5 = *(*(GlanceWorkoutSummationProtobuf - 8) + 56);

  return v5(a1 + v3, 1, 1, GlanceWorkoutSummationProtobuf);
}

uint64_t type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(uint64_t a1)
{
  result = qword_27D7CF320;
  if (!qword_27D7CF320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.summation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0) + 24);
  sub_22778CE70(v1 + v3, &qword_27D7CEF70, &unk_2277E74F0);
  sub_2277B96FC(a1, v1 + v3);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  v5 = *(*(GlanceWorkoutSummationProtobuf - 8) + 56);

  return v5(v1 + v3, 0, 1, GlanceWorkoutSummationProtobuf);
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.summation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0);
  sub_2277B9624(v1 + *(GlanceWorkoutSummationTypeProtobuf + 24), v5);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  v8 = *(*(GlanceWorkoutSummationProtobuf - 8) + 48);
  if (v8(v5, 1, GlanceWorkoutSummationProtobuf) != 1)
  {
    return sub_2277B96FC(v5, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2277E20F4();
  v9 = *(GlanceWorkoutSummationProtobuf + 32);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  (*(*(GlanceModalityProtobuf - 8) + 56))(a1 + v9, 1, 1, GlanceModalityProtobuf);
  result = (v8)(v5, 1, GlanceWorkoutSummationProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v5, &qword_27D7CEF70, &unk_2277E74F0);
  }

  return result;
}

void FirstGlanceWorkoutSummationTypeProtobuf.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_2277D2F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0);
  sub_2277B9624(a1 + *(GlanceWorkoutSummationTypeProtobuf + 24), v6);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  v9 = *(*(GlanceWorkoutSummationProtobuf - 8) + 48);
  if (v9(v6, 1, GlanceWorkoutSummationProtobuf) != 1)
  {
    return sub_2277B96FC(v6, a2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_2277E20F4();
  v10 = *(GlanceWorkoutSummationProtobuf + 32);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
  (*(*(GlanceModalityProtobuf - 8) + 56))(a2 + v10, 1, 1, GlanceModalityProtobuf);
  result = (v9)(v6, 1, GlanceWorkoutSummationProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v6, &qword_27D7CEF70, &unk_2277E74F0);
  }

  return result;
}

uint64_t sub_2277D30D4(uint64_t a1, uint64_t a2)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  v5 = *(GlanceWorkoutSummationProtobuf - 8);
  MEMORY[0x28223BE20](GlanceWorkoutSummationProtobuf);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2277D3530(a1, v7);
  v8 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0) + 24);
  sub_22778CE70(a2 + v8, &qword_27D7CEF70, &unk_2277E74F0);
  sub_2277B96FC(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, GlanceWorkoutSummationProtobuf);
}

void (*FirstGlanceWorkoutSummationTypeProtobuf.summation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  v5[2] = GlanceWorkoutSummationProtobuf;
  v10 = *(GlanceWorkoutSummationProtobuf - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0) + 24);
  *(v5 + 12) = v15;
  sub_2277B9624(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, GlanceWorkoutSummationProtobuf) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    sub_2277E20F4();
    v17 = *(GlanceWorkoutSummationProtobuf + 32);
    GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf(0);
    (*(*(GlanceModalityProtobuf - 8) + 56))(v14 + v17, 1, 1, GlanceModalityProtobuf);
    if (v16(v8, 1, GlanceWorkoutSummationProtobuf) != 1)
    {
      sub_22778CE70(v8, &qword_27D7CEF70, &unk_2277E74F0);
    }
  }

  else
  {
    sub_2277B96FC(v8, v14);
  }

  return sub_2277D3418;
}

void sub_2277D3418(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_2277D3530((*a1)[5], v4);
    sub_22778CE70(v9 + v3, &qword_27D7CEF70, &unk_2277E74F0);
    sub_2277B96FC(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_2277B4F6C(v5);
  }

  else
  {
    sub_22778CE70(v9 + v3, &qword_27D7CEF70, &unk_2277E74F0);
    sub_2277B96FC(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_2277D3530(uint64_t a1, uint64_t a2)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  (*(*(GlanceWorkoutSummationProtobuf - 8) + 16))(a2, a1, GlanceWorkoutSummationProtobuf);
  return a2;
}

BOOL FirstGlanceWorkoutSummationTypeProtobuf.hasSummation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0);
  sub_2277B9624(v0 + *(GlanceWorkoutSummationTypeProtobuf + 24), v3);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  v6 = (*(*(GlanceWorkoutSummationProtobuf - 8) + 48))(v3, 1, GlanceWorkoutSummationProtobuf) != 1;
  sub_22778CE70(v3, &qword_27D7CEF70, &unk_2277E74F0);
  return v6;
}

Swift::Void __swiftcall FirstGlanceWorkoutSummationTypeProtobuf.clearSummation()()
{
  v1 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0) + 24);
  sub_22778CE70(v0 + v1, &qword_27D7CEF70, &unk_2277E74F0);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  v3 = *(*(GlanceWorkoutSummationProtobuf - 8) + 56);

  v3(v0 + v1, 1, 1, GlanceWorkoutSummationProtobuf);
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0) + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0) + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t FirstGlanceWorkoutSummationTypeProtobuf.SummationType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2277D387C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277D3FE4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t static FirstGlanceWorkoutSummationTypeProtobuf.SummationType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27D7CF2A8 = a1;
}

uint64_t sub_2277D39B8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27D7CF2A8;
}

uint64_t sub_2277D3A24()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF2B0);
  __swift_project_value_buffer(v0, qword_27D7CF2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E4B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "summation";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2277E2164();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_2277D3FE4();
        sub_2277E2184();
      }

      else if (result == 2)
      {
        sub_2277D3CD0(a1, v5, a2, a3);
      }

      result = sub_2277E2164();
    }
  }

  return result;
}

uint64_t sub_2277D3CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0);
  type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  sub_2277D4C64(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf, &protocol conformance descriptor for FirstGlanceWorkoutSummationProtobuf);
  return sub_2277E2214();
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  v11 = *(GlanceWorkoutSummationProtobuf - 8);
  MEMORY[0x28223BE20](GlanceWorkoutSummationProtobuf);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    v14 = *(v3 + 8);
    v17 = *v3;
    v18 = v14;
    sub_2277D3FE4();
    result = sub_2277E22A4();
    if (v4)
    {
      return result;
    }

    v19 = a2;
    v5 = 0;
  }

  else
  {
    v19 = a2;
  }

  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0);
  sub_2277B9624(v3 + *(GlanceWorkoutSummationTypeProtobuf + 24), v9);
  if ((*(v11 + 48))(v9, 1, GlanceWorkoutSummationProtobuf) == 1)
  {
    sub_22778CE70(v9, &qword_27D7CEF70, &unk_2277E74F0);
  }

  else
  {
    sub_2277B96FC(v9, v13);
    sub_2277D4C64(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf, &protocol conformance descriptor for FirstGlanceWorkoutSummationProtobuf);
    sub_2277E2314();
    result = sub_2277B4F6C(v13);
    if (v5)
    {
      return result;
    }
  }

  return sub_2277E20E4();
}

unint64_t sub_2277D3FE4()
{
  result = qword_27D7CF2E0;
  if (!qword_27D7CF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF2E0);
  }

  return result;
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0);
  sub_2277D4C64(&qword_27D7CF2E8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf, &protocol conformance descriptor for FirstGlanceWorkoutSummationTypeProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277D40C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_2277E20F4();
  v4 = *(a1 + 24);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  v6 = *(*(GlanceWorkoutSummationProtobuf - 8) + 56);

  return v6(a2 + v4, 1, 1, GlanceWorkoutSummationProtobuf);
}

uint64_t sub_2277D419C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277D4C64(&qword_27D7CF338, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf, &protocol conformance descriptor for FirstGlanceWorkoutSummationTypeProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277D423C(uint64_t a1)
{
  v2 = sub_2277D4C64(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf, &protocol conformance descriptor for FirstGlanceWorkoutSummationTypeProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277D42A8(uint64_t a1, uint64_t a2)
{
  sub_2277D4C64(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf, &protocol conformance descriptor for FirstGlanceWorkoutSummationTypeProtobuf);

  return sub_2277E2264();
}

uint64_t sub_2277D4328()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF2C8);
  __swift_project_value_buffer(v0, qword_27D7CF2C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3E50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "count";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "distance";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "aheadDistance";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_2277E2334();
}

uint64_t _s15FitnessCoaching39FirstGlanceWorkoutSummationTypeProtobufV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
  v5 = *(GlanceWorkoutSummationProtobuf - 8);
  MEMORY[0x28223BE20](GlanceWorkoutSummationProtobuf);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF340, &unk_2277E7820);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        if (v14 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v14 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v14)
    {
      goto LABEL_17;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_17;
  }

  v16 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0) + 24);
  v17 = *(v11 + 48);
  sub_2277B9624(a1 + v16, v13);
  sub_2277B9624(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, GlanceWorkoutSummationProtobuf) == 1)
  {
    if (v18(&v13[v17], 1, GlanceWorkoutSummationProtobuf) == 1)
    {
      sub_22778CE70(v13, &qword_27D7CEF70, &unk_2277E74F0);
LABEL_20:
      sub_2277E2104();
      sub_2277D4C64(&qword_27D7CE980, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_2277E2404();
      return v19 & 1;
    }

    goto LABEL_16;
  }

  sub_2277B9624(v13, v10);
  if (v18(&v13[v17], 1, GlanceWorkoutSummationProtobuf) == 1)
  {
    sub_2277B4F6C(v10);
LABEL_16:
    sub_22778CE70(v13, &qword_27D7CF340, &unk_2277E7820);
    goto LABEL_17;
  }

  sub_2277B96FC(&v13[v17], v7);
  v21 = static FirstGlanceWorkoutSummationProtobuf.== infix(_:_:)();
  sub_2277B4F6C(v7);
  sub_2277B4F6C(v10);
  sub_22778CE70(v13, &qword_27D7CEF70, &unk_2277E74F0);
  if (v21)
  {
    goto LABEL_20;
  }

LABEL_17:
  v19 = 0;
  return v19 & 1;
}

unint64_t sub_2277D48B4()
{
  result = qword_27D7CF2F0;
  if (!qword_27D7CF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF2F0);
  }

  return result;
}

unint64_t sub_2277D490C()
{
  result = qword_27D7CF2F8;
  if (!qword_27D7CF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF2F8);
  }

  return result;
}

unint64_t sub_2277D4964()
{
  result = qword_27D7CF300;
  if (!qword_27D7CF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF300);
  }

  return result;
}

unint64_t sub_2277D49BC()
{
  result = qword_27D7CF308;
  if (!qword_27D7CF308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CF310, &qword_2277E7610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF308);
  }

  return result;
}

void sub_2277D4B68(uint64_t a1)
{
  sub_2277E2104();
  if (v1 <= 0x3F)
  {
    sub_2277D4BFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2277D4BFC(uint64_t a1)
{
  if (!qword_27D7CF330)
  {
    type metadata accessor for FirstGlanceWorkoutSummationProtobuf(255);
    v1 = sub_2277E2774();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7CF330);
    }
  }
}

uint64_t sub_2277D4C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FitnessPlusPlanNotificationContent.init(notificationSchedule:type:hasCompletedPlanTodayAndHasPlanTomorrow:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 9) = a3;
  return result;
}

uint64_t FitnessPlusPlanNotificationContent.hash(into:)(uint64_t a1)
{
  v2 = sub_2277E20D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  LODWORD(v4) = *(v1 + 9);
  v14[2] = *(v1 + 8);
  v14[3] = v4;
  MEMORY[0x22AA9BBC0](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      sub_2277D5060();
      sub_2277E23F4();
      (*(v8 - 8))(v5, v2);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  sub_2277E2484();

  return sub_2277E2A24();
}

uint64_t FitnessPlusPlanNotificationContent.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_2277E2A04();
  FitnessPlusPlanNotificationContent.hash(into:)(v4);
  return sub_2277E2A44();
}

uint64_t sub_2277D4EDC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_2277E2A04();
  FitnessPlusPlanNotificationContent.hash(into:)(v4);
  return sub_2277E2A44();
}

uint64_t sub_2277D4F3C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_2277E2A04();
  FitnessPlusPlanNotificationContent.hash(into:)(v5);
  return sub_2277E2A44();
}

uint64_t _s15FitnessCoaching0A27PlusPlanNotificationContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  if (sub_2277D74A0(*a1, *a2))
  {
    if (v2)
    {
      v6 = 0x676E696E657665;
    }

    else
    {
      v6 = 0x676E696E726F6DLL;
    }

    if (v4)
    {
      v7 = 0x676E696E657665;
    }

    else
    {
      v7 = 0x676E696E726F6DLL;
    }

    if (v6 == v7)
    {
      swift_bridgeObjectRelease_n();
      return v3 ^ v5 ^ 1u;
    }

    v8 = sub_2277E2984();
    swift_bridgeObjectRelease_n();
    if (v8)
    {
      return v3 ^ v5 ^ 1u;
    }
  }

  return 0;
}

unint64_t sub_2277D5060()
{
  result = qword_27D7CF348;
  if (!qword_27D7CF348)
  {
    sub_2277E20D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF348);
  }

  return result;
}

unint64_t sub_2277D50BC()
{
  result = qword_27D7CF350;
  if (!qword_27D7CF350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF350);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2277D5124(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_2277D516C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FirstGlanceError.hashValue.getter()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

unint64_t sub_2277D5248()
{
  result = qword_27D7CF358;
  if (!qword_27D7CF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF358);
  }

  return result;
}

uint64_t static FirstGlanceYesterdayWorkout.== infix(_:_:)(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_2277D5308();
  return sub_2277E2754() & (v2 == v3);
}

unint64_t sub_2277D5308()
{
  result = qword_2813BC508;
  if (!qword_2813BC508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813BC508);
  }

  return result;
}

FitnessCoaching::FirstGlanceYesterdayWorkout __swiftcall FirstGlanceYesterdayWorkout.init(healthWorkout:moveRingPercentage:)(HKWorkout healthWorkout, Swift::Double moveRingPercentage)
{
  *v2 = healthWorkout;
  *(v2 + 8) = moveRingPercentage;
  result.moveRingPercentage = moveRingPercentage;
  result.healthWorkout = healthWorkout;
  return result;
}

uint64_t FirstGlanceYesterdayWorkout.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2277E2764();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x22AA9BBE0](*&v3);
}

uint64_t FirstGlanceYesterdayWorkout.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2277E2A04();
  sub_2277E2764();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x22AA9BBE0](*&v2);
  return sub_2277E2A44();
}

uint64_t sub_2277D5430(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2277E2764();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x22AA9BBE0](*&v3);
}

uint64_t sub_2277D5480(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2277E2A04();
  sub_2277E2764();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x22AA9BBE0](*&v3);
  return sub_2277E2A44();
}

unint64_t sub_2277D54EC()
{
  result = qword_27D7CF360;
  if (!qword_27D7CF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF360);
  }

  return result;
}

uint64_t sub_2277D5540(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_2277D5308();
  return sub_2277E2754() & (v2 == v3);
}

uint64_t FirstGlanceAchievementInfoProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2277E4B40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  type metadata accessor for FirstGlanceAchievementInfoProtobuf(0);
  return sub_2277E20F4();
}

uint64_t type metadata accessor for FirstGlanceAchievementInfoProtobuf(uint64_t a1)
{
  result = qword_27D7CF398;
  if (!qword_27D7CF398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceAchievementInfoProtobuf.achievementData.getter()
{
  v1 = *v0;
  sub_2277905C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t FirstGlanceAchievementInfoProtobuf.achievementData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22778E130(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t FirstGlanceAchievementInfoProtobuf.localizationKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FirstGlanceAchievementInfoProtobuf.localizationKey.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FirstGlanceAchievementInfoProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceAchievementInfoProtobuf(0) + 28);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FirstGlanceAchievementInfoProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceAchievementInfoProtobuf(0) + 28);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2277D58F4()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF368);
  __swift_project_value_buffer(v0, qword_27D7CF368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3E50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "achievementData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localizationKey";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "shouldSuggestRecovery";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_2277E2334();
}

uint64_t static FirstGlanceAchievementInfoProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE838 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FirstGlanceAchievementInfoProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2277E2164();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_2277E2174();
        break;
      case 2:
        sub_2277E21F4();
        break;
      case 1:
        sub_2277E21A4();
        break;
    }
  }

  return result;
}

uint64_t FirstGlanceAchievementInfoProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_2277E22C4();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11 = *(v3 + 24);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (result = sub_2277E22F4(), !v4))
  {
    if (*(v3 + 32) != 1 || (result = sub_2277E2294(), !v4))
    {
      type metadata accessor for FirstGlanceAchievementInfoProtobuf(0);
      return sub_2277E20E4();
    }
  }

  return result;
}

uint64_t FirstGlanceAchievementInfoProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceAchievementInfoProtobuf(0);
  sub_2277D634C(&qword_27D7CF380, type metadata accessor for FirstGlanceAchievementInfoProtobuf, &protocol conformance descriptor for FirstGlanceAchievementInfoProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277D5DFC@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2277E4B40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  return sub_2277E20F4();
}

uint64_t sub_2277D5E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277D634C(&qword_27D7CF3A8, type metadata accessor for FirstGlanceAchievementInfoProtobuf, &protocol conformance descriptor for FirstGlanceAchievementInfoProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277D5EFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE838 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2277D5FA4(uint64_t a1)
{
  v2 = sub_2277D634C(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf, &protocol conformance descriptor for FirstGlanceAchievementInfoProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277D6010(uint64_t a1, uint64_t a2)
{
  sub_2277D634C(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf, &protocol conformance descriptor for FirstGlanceAchievementInfoProtobuf);

  return sub_2277E2264();
}

uint64_t _s15FitnessCoaching34FirstGlanceAchievementInfoProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_2277E2984() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  type metadata accessor for FirstGlanceAchievementInfoProtobuf(0);
  sub_2277E2104();
  sub_2277D634C(&qword_27D7CE980, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2277E2404() & 1;
}

uint64_t sub_2277D62B8(uint64_t a1)
{
  result = sub_2277E2104();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2277D634C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2277D6394()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v5];
  v2 = v5[0];
  if (v1)
  {
    v3 = sub_2277E1F34();
  }

  else
  {
    v3 = v2;
    sub_2277E1F14();

    swift_willThrow();
  }

  return v3;
}

uint64_t FirstGlanceYesterdayWorkout.protobuf()()
{
  type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(0);
  sub_2277D6750(&qword_27D7CEBA0, &protocol conformance descriptor for FirstGlanceYesterdayWorkoutProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277D6510(uint64_t a1, double a2)
{
  result = sub_2277D6394();
  if (!v2)
  {
    v7 = result;
    v8 = v6;
    result = sub_22778E130(*a1, *(a1 + 8));
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = a2;
  }

  return result;
}

uint64_t FirstGlanceYesterdayWorkout.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
  sub_22778E6C8(0, &qword_2813BC500, 0x277CCDBE8);
  v5 = sub_2277E2734();
  if (v2)
  {

LABEL_3:
    sub_227791024();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    return sub_2277D668C(a1);
  }

  if (!v5)
  {
    goto LABEL_3;
  }

  v8 = a1[2];
  v9 = v5;
  result = sub_2277D668C(a1);
  *a2 = v9;
  a2[1] = v8;
  return result;
}

uint64_t sub_2277D668C(uint64_t a1)
{
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(0);
  (*(*(GlanceYesterdayWorkoutProtobuf - 8) + 8))(a1, GlanceYesterdayWorkoutProtobuf);
  return a1;
}

uint64_t sub_2277D6750(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2277D6794()
{
  type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(0);
  sub_2277D6750(&qword_27D7CEBA0, &protocol conformance descriptor for FirstGlanceYesterdayWorkoutProtobuf);
  return sub_2277E2274();
}

uint64_t WorkoutError.hashValue.getter()
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](0);
  return sub_2277E2A44();
}

unint64_t sub_2277D692C()
{
  result = qword_27D7CF3B0;
  if (!qword_27D7CF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF3B0);
  }

  return result;
}

uint64_t sub_2277D6990(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2277D69EC(uint64_t a1, uint64_t a2)
{
  GlanceTypeProtobuf = type metadata accessor for FirstGlanceTypeProtobuf(0);
  v5 = MEMORY[0x28223BE20](GlanceTypeProtobuf);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_2277B615C(v13, v10, type metadata accessor for FirstGlanceTypeProtobuf);
      sub_2277B615C(v14, v7, type metadata accessor for FirstGlanceTypeProtobuf);
      v16 = *(GlanceTypeProtobuf + 20);
      v17 = *&v10[v16];
      v18 = *&v7[v16];
      if (v17 != v18)
      {

        v19 = sub_2277B11B4(v17, v18);

        if (!v19)
        {
          break;
        }
      }

      sub_2277E2104();
      sub_2277D84A8(&qword_27D7CE980, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if ((sub_2277E2404() & 1) == 0)
      {
        break;
      }

      sub_2277D84F0(v7, type metadata accessor for FirstGlanceTypeProtobuf);
      sub_2277D84F0(v10, type metadata accessor for FirstGlanceTypeProtobuf);
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_2277D84F0(v7, type metadata accessor for FirstGlanceTypeProtobuf);
    sub_2277D84F0(v10, type metadata accessor for FirstGlanceTypeProtobuf);
  }

  return 0;
}

uint64_t sub_2277D6C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FirstGlanceType(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      GlanceTypeO2eeoiySbAC_ACtFZ_0 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_2277B615C(v13, v10, type metadata accessor for FirstGlanceType);
        sub_2277B615C(v14, v7, type metadata accessor for FirstGlanceType);
        GlanceTypeO2eeoiySbAC_ACtFZ_0 = _s15FitnessCoaching15FirstGlanceTypeO2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_2277D84F0(v7, type metadata accessor for FirstGlanceType);
        sub_2277D84F0(v10, type metadata accessor for FirstGlanceType);
        if ((GlanceTypeO2eeoiySbAC_ACtFZ_0 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    GlanceTypeO2eeoiySbAC_ACtFZ_0 = 0;
  }

  return GlanceTypeO2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t sub_2277D6E04(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
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
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_2277905C0(v7, v6);
          sub_2277905C0(v9, v8);
          v22 = sub_2277E1E94();
          if (v22)
          {
            v23 = sub_2277E1EB4();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_2277E1EA4();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_2277905C0(v7, v6);
        sub_2277905C0(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_2277905C0(v7, v6);
          sub_2277905C0(v9, v8);
          v27 = sub_2277E1E94();
          if (v27)
          {
            v28 = sub_2277E1EB4();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_2277E1EA4();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_2277D8278(v24, v25, v26, v33);
          sub_22778E130(v9, v8);
          sub_22778E130(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_2277905C0(v7, v6);
        sub_2277905C0(v9, v8);
      }

      sub_2277D8278(v33, v9, v8, &v32);
      sub_22778E130(v9, v8);
      sub_22778E130(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_2277D7238(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_22778E6C8(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x22AA9B9D0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x22AA9B9D0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_2277E2754();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_2277E2754();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_2277E28E4();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_2277E28E4();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2277D74A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277E20D4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_2277D84A8(&qword_27D7CF400, MEMORY[0x277D53210], MEMORY[0x277D53220]);
    v21 = sub_2277E2404();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t CollectionProtobuf.items.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CollectionProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionProtobuf(0) + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CollectionProtobuf(uint64_t a1)
{
  result = qword_27D7CF3E0;
  if (!qword_27D7CF3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CollectionProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionProtobuf(0) + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionProtobuf.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for CollectionProtobuf(0);
  return sub_2277E20F4();
}

uint64_t sub_2277D78F0()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF3B8);
  __swift_project_value_buffer(v0, qword_27D7CF3B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2277E3E40;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "items";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_2277E2324();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_2277E2334();
}

uint64_t static CollectionProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE840 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF3B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t CollectionProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2277E2164();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2277E2194();
    }
  }

  return result;
}

uint64_t CollectionProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_2277E22B4(), !v4))
  {
    type metadata accessor for CollectionProtobuf(0);
    return sub_2277E20E4();
  }

  return result;
}

uint64_t static CollectionProtobuf.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_2277D6E04(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CollectionProtobuf(0);
  sub_2277E2104();
  sub_2277D84A8(&qword_27D7CE980, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2277E2404() & 1;
}

uint64_t CollectionProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for CollectionProtobuf(0);
  sub_2277D84A8(&qword_27D7CF3D0, type metadata accessor for CollectionProtobuf, &protocol conformance descriptor for CollectionProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277D7DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277D84A8(&qword_27D7CF3F8, type metadata accessor for CollectionProtobuf, &protocol conformance descriptor for CollectionProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277D7E24@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE840 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF3B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2277D7ECC(uint64_t a1)
{
  v2 = sub_2277D84A8(&qword_27D7CEBC8, type metadata accessor for CollectionProtobuf, &protocol conformance descriptor for CollectionProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277D7F38(uint64_t a1, uint64_t a2)
{
  sub_2277D84A8(&qword_27D7CEBC8, type metadata accessor for CollectionProtobuf, &protocol conformance descriptor for CollectionProtobuf);

  return sub_2277E2264();
}

uint64_t sub_2277D80D4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_2277D6E04(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2277E2104();
  sub_2277D84A8(&qword_27D7CE980, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2277E2404() & 1;
}

void sub_2277D81A4(uint64_t a1)
{
  sub_2277D8228();
  if (v1 <= 0x3F)
  {
    sub_2277E2104();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2277D8228()
{
  if (!qword_27D7CF3F0)
  {
    v0 = sub_2277E25A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7CF3F0);
    }
  }
}

uint64_t sub_2277D8278@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2277E1E94();
    if (v10)
    {
      v11 = sub_2277E1EB4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2277E1EA4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2277E1E94();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2277E1EB4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2277E1EA4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2277D84A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2277D84F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FirstGlanceWeeklySummary.init(energyBurnTotals:moveGoalAchievedCount:mostRecentMoveGoal:totalBriskMinutes:totalDistance:totalFlightsClimbed:totalMoveValue:totalPushCount:totalStepCount:wheelchairUse:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a8;
  *(a7 + 24) = a9;
  *(a7 + 32) = a10;
  *(a7 + 40) = a3;
  *(a7 + 48) = a11;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

uint64_t FirstGlanceWeeklySummary.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  sub_22778D458(a1, *v1);
  MEMORY[0x22AA9BBC0](v2);
  if (v3 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x22AA9BBE0](*&v11);
  if (v4 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v4;
  }

  MEMORY[0x22AA9BBE0](*&v12);
  if (v5 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v5;
  }

  MEMORY[0x22AA9BBE0](*&v13);
  MEMORY[0x22AA9BBC0](v6);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x22AA9BBE0](*&v14);
  MEMORY[0x22AA9BBC0](v8);
  MEMORY[0x22AA9BBC0](v9);
  return MEMORY[0x22AA9BBC0](v10);
}

uint64_t FirstGlanceWeeklySummary.hashValue.getter()
{
  sub_2277E2A04();
  FirstGlanceWeeklySummary.hash(into:)(v1);
  return sub_2277E2A44();
}

uint64_t sub_2277D86DC()
{
  sub_2277E2A04();
  FirstGlanceWeeklySummary.hash(into:)(v1);
  return sub_2277E2A44();
}

uint64_t sub_2277D8720(uint64_t a1)
{
  sub_2277E2A04();
  FirstGlanceWeeklySummary.hash(into:)(v2);
  return sub_2277E2A44();
}

BOOL _s15FitnessCoaching24FirstGlanceWeeklySummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v20 = *(a1 + 32);
  v3 = *(a1 + 40);
  v19 = *(a1 + 48);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a2 + 8);
  v21 = *(a2 + 16);
  v22 = *(a1 + 16);
  v18 = *(a2 + 32);
  v8 = *(a2 + 40);
  v17 = *(a2 + 48);
  v10 = *(a2 + 56);
  v9 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = sub_2277D6990(*a1, *a2);
  result = 0;
  v14.f64[0] = v20;
  v14.f64[1] = v19;
  v15.f64[0] = v18;
  v15.f64[1] = v17;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v22, v21), vceqq_f64(v14, v15)))) & 1) != 0 && v2 == v7 && v3 == v8 && v5 == v10)
  {
    v16 = v6 == v11;
    if (v4 != v9)
    {
      v16 = 0;
    }

    return (v12 & 1) != 0 && v16;
  }

  return result;
}

unint64_t sub_2277D8874()
{
  result = qword_27D7CF408;
  if (!qword_27D7CF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF408);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2277D88E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2277D892C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FirstGlanceModalityType.hashValue.getter()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

unint64_t sub_2277D8A1C()
{
  result = qword_27D7CF410;
  if (!qword_27D7CF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF410);
  }

  return result;
}

uint64_t FirstGlanceType.protobuf()()
{
  type metadata accessor for FirstGlanceTypeProtobuf(0);
  sub_2277DBE44(&qword_27D7CEE40, type metadata accessor for FirstGlanceTypeProtobuf, &protocol conformance descriptor for FirstGlanceTypeProtobuf);
  return sub_2277E2274();
}

uint64_t FirstGlanceType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v155 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20);
  MEMORY[0x28223BE20](v3 - 8);
  v150 = &v136 - v4;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0);
  v145 = *(GlanceWorkoutSummationTypeProtobuf - 8);
  MEMORY[0x28223BE20](GlanceWorkoutSummationTypeProtobuf);
  v147 = (&v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v144 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v143 = &v136 - v9;
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(0);
  v153 = *(GlanceYesterdayWorkoutProtobuf - 8);
  *&v154 = GlanceYesterdayWorkoutProtobuf;
  v11 = MEMORY[0x28223BE20](GlanceYesterdayWorkoutProtobuf);
  v149 = (&v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v148 = (&v136 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDF8, &unk_2277E5A30);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v141 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v139 = &v136 - v17;
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf(0);
  v151 = *(GlanceAchievementInfoProtobuf - 8);
  v18 = MEMORY[0x28223BE20](GlanceAchievementInfoProtobuf);
  v142 = (&v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v140 = (&v136 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDE0, &qword_2277E5A28);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v136 - v22;
  v24 = type metadata accessor for WeeklySummaryInfoProtobuf(0);
  v138 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for WeeklySummaryInfo(0);
  MEMORY[0x28223BE20](v27 - 8);
  v137 = (&v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDB8, &qword_2277E5A18);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v136 - v30;
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf(0);
  v33 = *(GlanceWeeklySummaryProtobuf - 8);
  MEMORY[0x28223BE20](GlanceWeeklySummaryProtobuf);
  v35 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  swift_beginAccess();
  if (*(v36 + 24) == 1)
  {
    v136 = a1;
    switch(*(v36 + 16))
    {
      case 1:
      case 2:
      case 0xCLL:
      case 0xDLL:
        sub_2277DBDE4(v136, type metadata accessor for FirstGlanceTypeProtobuf);
        type metadata accessor for FirstGlanceType(0);
        return swift_storeEnumTagMultiPayload();
      case 3:
        v72 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
        swift_beginAccess();
        v73 = v139;
        sub_2277AF92C(v36 + v72, v139, &qword_27D7CEDF8, &unk_2277E5A30);
        v74 = *(v151 + 48);
        v75 = GlanceAchievementInfoProtobuf;
        if (v74(v73, 1, GlanceAchievementInfoProtobuf) == 1)
        {
          v76 = v140;
          *v140 = xmmword_2277E4B40;
          *(v76 + 2) = 0;
          *(v76 + 3) = 0xE000000000000000;
          *(v76 + 32) = 0;
          sub_2277E20F4();
          v77 = v74(v73, 1, v75);
          v78 = v136;
          if (v77 != 1)
          {
            sub_22778CE70(v73, &qword_27D7CEDF8, &unk_2277E5A30);
          }
        }

        else
        {
          v76 = v140;
          sub_2277DBBBC(v73, v140, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
          v78 = v136;
        }

        v105 = *v76;
        v106 = *(v76 + 1);
        v108 = *(v76 + 2);
        v107 = *(v76 + 3);
        v109 = *(v76 + 32);
        sub_2277905C0(*v76, v106);

        sub_2277DBDE4(v76, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
        sub_2277DBDE4(v78, type metadata accessor for FirstGlanceTypeProtobuf);
        v110 = v155;
        *v155 = v105;
        v110[1] = v106;
        v110[2] = v108;
        v110[3] = v107;
        *(v110 + 32) = v109;
        type metadata accessor for FirstGlanceType(0);
        return swift_storeEnumTagMultiPayload();
      case 4:
        v54 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
        swift_beginAccess();
        v55 = v141;
        sub_2277AF92C(v36 + v54, v141, &qword_27D7CEDF8, &unk_2277E5A30);
        v56 = *(v151 + 48);
        v57 = GlanceAchievementInfoProtobuf;
        if (v56(v55, 1, GlanceAchievementInfoProtobuf) == 1)
        {
          v58 = v142;
          *v142 = xmmword_2277E4B40;
          *(v58 + 2) = 0;
          *(v58 + 3) = 0xE000000000000000;
          *(v58 + 32) = 0;
          sub_2277E20F4();
          v59 = v56(v55, 1, v57);
          v60 = v136;
          if (v59 != 1)
          {
            sub_22778CE70(v55, &qword_27D7CEDF8, &unk_2277E5A30);
          }
        }

        else
        {
          v58 = v142;
          sub_2277DBBBC(v55, v142, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
          v60 = v136;
        }

        v99 = *v58;
        v100 = *(v58 + 1);
        v101 = *(v58 + 2);
        v102 = *(v58 + 3);
        v103 = *(v58 + 32);
        sub_2277905C0(*v58, v100);

        sub_2277DBDE4(v58, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
        sub_2277DBDE4(v60, type metadata accessor for FirstGlanceTypeProtobuf);
        v104 = v155;
        *v155 = v99;
        v104[1] = v100;
        v104[2] = v101;
        v104[3] = v102;
        *(v104 + 32) = v103;
        type metadata accessor for FirstGlanceType(0);
        return swift_storeEnumTagMultiPayload();
      case 5:
        v86 = (v36 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v49 = *v86;
        v50 = v86[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        sub_2277905C0(v49, v50);
        v87 = v156;
        v52 = sub_2277E2734();
        v53 = v87;
        if (v87)
        {
          goto LABEL_38;
        }

        a1 = v136;
        if (v52)
        {
          goto LABEL_70;
        }

        goto LABEL_39;
      case 6:
        v88 = (v36 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v49 = *v88;
        v50 = v88[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        sub_2277905C0(v49, v50);
        v89 = v156;
        v52 = sub_2277E2734();
        v53 = v89;
        if (v89)
        {
          goto LABEL_38;
        }

        a1 = v136;
        if (v52)
        {
          goto LABEL_70;
        }

        goto LABEL_39;
      case 7:
        v79 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
        swift_beginAccess();
        v80 = v143;
        sub_2277AF92C(v36 + v79, v143, &qword_27D7CEDA0, &qword_2277E5A10);
        v81 = v154;
        v82 = *(v153 + 48);
        if (v82(v80, 1, v154) == 1)
        {
          v83 = v148;
          *v148 = xmmword_2277E4B40;
          *(v83 + 2) = 0;
          sub_2277E20F4();
          v84 = v82(v80, 1, v81);
          v85 = v156;
          if (v84 != 1)
          {
            sub_22778CE70(v80, &qword_27D7CEDA0, &qword_2277E5A10);
          }
        }

        else
        {
          v83 = v148;
          sub_2277DBBBC(v80, v148, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
          v85 = v156;
        }

        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC500, 0x277CCDBE8);
        v111 = sub_2277E2734();
        v112 = v136;
        if (v85)
        {
          goto LABEL_65;
        }

        if (v111)
        {
          goto LABEL_56;
        }

        goto LABEL_66;
      case 8:
        v93 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
        swift_beginAccess();
        v94 = v144;
        sub_2277AF92C(v36 + v93, v144, &qword_27D7CEDA0, &qword_2277E5A10);
        v95 = v154;
        v96 = *(v153 + 48);
        if (v96(v94, 1, v154) == 1)
        {
          v83 = v149;
          *v149 = xmmword_2277E4B40;
          *(v83 + 2) = 0;
          sub_2277E20F4();
          v97 = v96(v94, 1, v95);
          v85 = v156;
          if (v97 != 1)
          {
            sub_22778CE70(v94, &qword_27D7CEDA0, &qword_2277E5A10);
          }
        }

        else
        {
          v83 = v149;
          sub_2277DBBBC(v94, v149, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
          v85 = v156;
        }

        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC500, 0x277CCDBE8);
        v111 = sub_2277E2734();
        v112 = v136;
        if (v85)
        {
LABEL_65:
        }

        else if (v111)
        {
LABEL_56:
          v113 = *(v83 + 2);
          v114 = v111;
          sub_2277DBDE4(v83, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
          sub_2277DBDE4(v112, type metadata accessor for FirstGlanceTypeProtobuf);
          v115 = v155;
          *v155 = v114;
          v115[1] = v113;
          type metadata accessor for FirstGlanceType(0);
          return swift_storeEnumTagMultiPayload();
        }

LABEL_66:
        sub_227791024();
        swift_allocError();
        *v127 = 3;
        swift_willThrow();
        sub_2277DBDE4(v83, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
        v42 = v112;
        return sub_2277DBDE4(v42, type metadata accessor for FirstGlanceTypeProtobuf);
      case 9:
        v61 = (v36 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v49 = *v61;
        v50 = v61[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        sub_2277905C0(v49, v50);
        v62 = v156;
        v52 = sub_2277E2734();
        v53 = v62;
        if (v62)
        {
          goto LABEL_38;
        }

        a1 = v136;
        if (v52)
        {
          goto LABEL_70;
        }

        goto LABEL_39;
      case 0xALL:
        v90 = (v36 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v49 = *v90;
        v50 = v90[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        sub_2277905C0(v49, v50);
        v91 = v156;
        v52 = sub_2277E2734();
        v53 = v91;
        if (v91)
        {
          goto LABEL_38;
        }

        a1 = v136;
        if (v52)
        {
          goto LABEL_70;
        }

        goto LABEL_39;
      case 0xBLL:
        v48 = (v36 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v49 = *v48;
        v50 = v48[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        sub_2277905C0(v49, v50);
        v51 = v156;
        v52 = sub_2277E2734();
        v53 = v51;
        if (v51)
        {
LABEL_38:

          a1 = v136;
        }

        else
        {
          a1 = v136;
          if (v52)
          {
LABEL_70:
            v135 = v52;
            sub_22778E130(v49, v50);
            sub_2277DBDE4(a1, type metadata accessor for FirstGlanceTypeProtobuf);
            *v155 = v135;
            type metadata accessor for FirstGlanceType(0);
            return swift_storeEnumTagMultiPayload();
          }
        }

LABEL_39:
        sub_227791024();
        swift_allocError();
        *v92 = 3;
        swift_willThrow();
        sub_22778E130(v49, v50);
        goto LABEL_7;
      case 0xELL:
        v44 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
        swift_beginAccess();
        sub_2277AF92C(v36 + v44, v23, &qword_27D7CEDE0, &qword_2277E5A28);
        v45 = *(v138 + 48);
        if (v45(v23, 1, v24) == 1)
        {
          *v26 = xmmword_2277E4B40;
          *(v26 + 2) = 0;
          *(v26 + 3) = 0;
          *(v26 + 4) = 0;
          *(v26 + 5) = 0xC000000000000000;
          *(v26 + 12) = 0;
          sub_2277E20F4();
          v46 = v45(v23, 1, v24);
          v47 = v137;
          if (v46 != 1)
          {
            sub_22778CE70(v23, &qword_27D7CEDE0, &qword_2277E5A28);
          }
        }

        else
        {
          sub_2277DBBBC(v23, v26, type metadata accessor for WeeklySummaryInfoProtobuf);
          v47 = v137;
        }

        v98 = v156;
        WeeklySummaryInfo.init(_:)(v26, v47);
        if (v98)
        {
          v42 = v136;
          return sub_2277DBDE4(v42, type metadata accessor for FirstGlanceTypeProtobuf);
        }

        v128 = (v36 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation);
        swift_beginAccess();
        v129 = *v128;
        LOBYTE(v128) = *(v128 + 8);
        sub_2277DBDE4(v136, type metadata accessor for FirstGlanceTypeProtobuf);
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE998, &qword_2277E3C48);
        v131 = v155 + *(v130 + 48);
        sub_2277DBBBC(v47, v155, type metadata accessor for WeeklySummaryInfo);
        *v131 = v129;
        v131[8] = v128;
        type metadata accessor for FirstGlanceType(0);
        return swift_storeEnumTagMultiPayload();
      case 0xFLL:
        v63 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
        swift_beginAccess();
        v64 = v150;
        sub_2277AF92C(v36 + v63, v150, &qword_27D7CEDC8, &qword_2277E5A20);
        v65 = *(v145 + 48);
        v66 = GlanceWorkoutSummationTypeProtobuf;
        if (v65(v64, 1, GlanceWorkoutSummationTypeProtobuf) == 1)
        {
          v67 = v147;
          *v147 = 0;
          *(v67 + 8) = 1;
          sub_2277E20F4();
          v68 = *(v66 + 24);
          GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf(0);
          (*(*(GlanceWorkoutSummationProtobuf - 8) + 56))(v67 + v68, 1, 1, GlanceWorkoutSummationProtobuf);
          v70 = v65(v64, 1, v66);
          v71 = v156;
          if (v70 != 1)
          {
            sub_22778CE70(v64, &qword_27D7CEDC8, &qword_2277E5A20);
          }
        }

        else
        {
          v67 = v147;
          sub_2277DBBBC(v64, v147, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
          v71 = v156;
        }

        FirstGlanceWorkoutSummationType.init(_:)(v67, v157);
        v42 = v136;
        if (v71)
        {
          return sub_2277DBDE4(v42, type metadata accessor for FirstGlanceTypeProtobuf);
        }

        sub_2277DBDE4(v136, type metadata accessor for FirstGlanceTypeProtobuf);
        v132 = v158;
        v133 = v157[1];
        v134 = v155;
        *v155 = v157[0];
        *(v134 + 1) = v133;
        v134[4] = v132;
        type metadata accessor for FirstGlanceType(0);
        return swift_storeEnumTagMultiPayload();
      default:
        v37 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
        swift_beginAccess();
        sub_2277AF92C(v36 + v37, v31, &qword_27D7CEDB8, &qword_2277E5A18);
        v38 = *(v33 + 48);
        if (v38(v31, 1, GlanceWeeklySummaryProtobuf) == 1)
        {
          *v35 = MEMORY[0x277D84F90];
          *(v35 + 2) = 0;
          *(v35 + 3) = 0;
          *(v35 + 4) = 0;
          *(v35 + 2) = 0;
          *(v35 + 10) = 0;
          *(v35 + 16) = 0;
          *(v35 + 6) = 0;
          *(v35 + 7) = 0;
          sub_2277E20F4();
          v39 = v38(v31, 1, GlanceWeeklySummaryProtobuf);
          v40 = v136;
          if (v39 != 1)
          {
            sub_22778CE70(v31, &qword_27D7CEDB8, &qword_2277E5A18);
          }
        }

        else
        {
          sub_2277DBBBC(v31, v35, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
          v40 = v136;
        }

        v117 = *(v35 + 15);
        v116 = *(v35 + 16);
        v118 = *v35;
        v119 = *(v35 + 2);
        v154 = *(v35 + 1);
        v120 = *(v35 + 4);
        v121 = *(v35 + 10);
        v122 = *(v35 + 6);
        v123 = *(v35 + 14);

        sub_2277DBDE4(v35, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
        v124 = v36 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
        swift_beginAccess();
        if (*(v124 + 8))
        {
          v125 = 0.0;
        }

        else
        {
          v125 = *v124;
        }

        sub_2277DBDE4(v40, type metadata accessor for FirstGlanceTypeProtobuf);
        v126 = v155;
        *v155 = v118;
        v126[1] = v119;
        *(v126 + 1) = v154;
        v126[4] = v120;
        v126[5] = v121;
        v126[6] = v122;
        v126[7] = v123;
        v126[8] = v117;
        v126[9] = v116;
        *(v126 + 10) = v125;
        type metadata accessor for FirstGlanceType(0);
        return swift_storeEnumTagMultiPayload();
    }
  }

  sub_227791024();
  swift_allocError();
  *v41 = 3;
  swift_willThrow();
LABEL_7:
  v42 = a1;
  return sub_2277DBDE4(v42, type metadata accessor for FirstGlanceTypeProtobuf);
}

void sub_2277DA35C(uint64_t a1, uint64_t a2)
{
  v182 = a1;
  v181 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20);
  MEMORY[0x28223BE20](v2 - 8);
  v166 = &v164 - v3;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf(0);
  v165 = *(GlanceWorkoutSummationTypeProtobuf - 8);
  MEMORY[0x28223BE20](GlanceWorkoutSummationTypeProtobuf);
  v170 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10);
  MEMORY[0x28223BE20](v5 - 8);
  v168 = &v164 - v6;
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf(0);
  v167 = *(GlanceYesterdayWorkoutProtobuf - 8);
  v7 = MEMORY[0x28223BE20](GlanceYesterdayWorkoutProtobuf);
  v174 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v173 = &v164 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDF8, &unk_2277E5A30);
  MEMORY[0x28223BE20](v10 - 8);
  v179 = &v164 - v11;
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf(0);
  v177 = *(GlanceAchievementInfoProtobuf - 8);
  v178 = GlanceAchievementInfoProtobuf;
  v13 = MEMORY[0x28223BE20](GlanceAchievementInfoProtobuf);
  v176 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v175 = &v164 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDE0, &qword_2277E5A28);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v164 - v17;
  v19 = type metadata accessor for WeeklySummaryInfoProtobuf(0);
  v164 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WeeklySummaryInfo(0);
  MEMORY[0x28223BE20](v22 - 8);
  v172 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDB8, &qword_2277E5A18);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v164 - v25;
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf(0);
  v169 = *(GlanceWeeklySummaryProtobuf - 8);
  MEMORY[0x28223BE20](GlanceWeeklySummaryProtobuf);
  v29 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  GlanceType = type metadata accessor for FirstGlanceType(0);
  MEMORY[0x28223BE20](GlanceType);
  v32 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22778E0CC(v181, v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v112 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE998, &qword_2277E3C48) + 48)];
      v181 = *v112;
      v113 = v112[8];
      v114 = v172;
      sub_2277DBBBC(v32, v172, type metadata accessor for WeeklySummaryInfo);
      v115 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v116 = v182;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = *(v116 + v115);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v118 = sub_2277AF224(v118);
        *(v116 + v115) = v118;
      }

      swift_beginAccess();
      *(v118 + 16) = 14;
      *(v118 + 24) = 1;
      v119 = v183;
      WeeklySummaryInfo.protobuf()();
      if (!v119)
      {
        v120 = v182;
        v121 = swift_isUniquelyReferenced_nonNull_native();
        v122 = *(v120 + v115);
        if ((v121 & 1) == 0)
        {
          type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
          swift_allocObject();
          v122 = sub_2277AF224(v122);
          *(v120 + v115) = v122;
        }

        sub_2277DBBBC(v21, v18, type metadata accessor for WeeklySummaryInfoProtobuf);
        (*(v164 + 56))(v18, 0, 1, v19);
        v123 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
        swift_beginAccess();
        sub_2277AF9FC(v18, v122 + v123, &qword_27D7CEDE0, &qword_2277E5A28);
        swift_endAccess();
        v114 = v172;
        if ((v113 & 1) == 0)
        {
          v161 = v182;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            sub_2277DBDE4(v114, type metadata accessor for WeeklySummaryInfo);
            v47 = *(v161 + v115);
          }

          else
          {
            type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
            swift_allocObject();

            v47 = sub_2277AF224(v163);
            sub_2277DBDE4(v114, type metadata accessor for WeeklySummaryInfo);

            *(v161 + v115) = v47;
          }

          goto LABEL_8;
        }
      }

      sub_2277DBDE4(v114, type metadata accessor for WeeklySummaryInfo);
      return;
    case 2u:
      v87 = *(v32 + 1);
      v185[0] = *v32;
      v185[1] = v87;
      v186 = v32[32];
      v88 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v89 = v182;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v91 = *(v89 + v88);
      if ((v90 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v91 = sub_2277AF224(v91);
        *(v89 + v88) = v91;
      }

      v92 = v178;
      v93 = swift_beginAccess();
      *(v91 + 16) = 3;
      *(v91 + 24) = 1;
      MEMORY[0x28223BE20](v93);
      *(&v164 - 2) = v185;
      sub_2277DBE44(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf, &protocol conformance descriptor for FirstGlanceAchievementInfoProtobuf);
      sub_2277E2274();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_2277DBD90(v185);
        v65 = *(v89 + v88);
      }

      else
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();

        v65 = sub_2277AF224(v151);
        sub_2277DBD90(v185);

        *(v89 + v88) = v65;
      }

      v67 = v179;
      v152 = v177;
      v153 = v175;
      goto LABEL_81;
    case 3u:
      v97 = *(v32 + 1);
      v187[0] = *v32;
      v187[1] = v97;
      v188 = v32[32];
      v98 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v99 = v182;
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v101 = *(v99 + v98);
      if ((v100 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v101 = sub_2277AF224(v101);
        *(v99 + v98) = v101;
      }

      v92 = v178;
      v102 = swift_beginAccess();
      *(v101 + 16) = 4;
      *(v101 + 24) = 1;
      MEMORY[0x28223BE20](v102);
      *(&v164 - 2) = v187;
      sub_2277DBE44(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf, &protocol conformance descriptor for FirstGlanceAchievementInfoProtobuf);
      sub_2277E2274();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_2277DBD90(v187);
        v65 = *(v99 + v98);
      }

      else
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();

        v65 = sub_2277AF224(v154);
        sub_2277DBD90(v187);

        *(v99 + v98) = v65;
      }

      v67 = v179;
      v153 = v176;
      v152 = v177;
LABEL_81:
      sub_2277DBBBC(v153, v67, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
      (*(v152 + 56))(v67, 0, 1, v92);
      v68 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
      swift_beginAccess();
      v69 = &qword_27D7CEDF8;
      v70 = &unk_2277E5A30;
      goto LABEL_93;
    case 4u:
      v71 = *v32;
      v72 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v73 = v182;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v75 = *(v73 + v72);
      if ((v74 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v75 = sub_2277AF224(v75);
        *(v73 + v72) = v75;
      }

      v76 = v183;
      swift_beginAccess();
      v77 = 5;
      goto LABEL_65;
    case 5u:
      v71 = *v32;
      v72 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v73 = v182;
      v124 = swift_isUniquelyReferenced_nonNull_native();
      v75 = *(v73 + v72);
      if ((v124 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v75 = sub_2277AF224(v75);
        *(v73 + v72) = v75;
      }

      v76 = v183;
      swift_beginAccess();
      v77 = 6;
      goto LABEL_65;
    case 6u:
      v103 = *v32;
      v128 = *(v32 + 1);
      v129 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v130 = v182;
      v131 = swift_isUniquelyReferenced_nonNull_native();
      v132 = *(v130 + v129);
      if ((v131 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v132 = sub_2277AF224(v132);
        *(v130 + v129) = v132;
      }

      v133 = v183;
      v134 = swift_beginAccess();
      *(v132 + 16) = 7;
      *(v132 + 24) = 1;
      MEMORY[0x28223BE20](v134);
      *(&v164 - 2) = v103;
      *(&v164 - 1) = v128;
      sub_2277DBE44(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf, &protocol conformance descriptor for FirstGlanceYesterdayWorkoutProtobuf);
      v111 = GlanceYesterdayWorkoutProtobuf;
      sub_2277E2274();
      if (v133)
      {
        goto LABEL_61;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {

        v65 = *(v130 + v129);
      }

      else
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();

        v65 = sub_2277AF224(v162);

        *(v130 + v129) = v65;
      }

      v160 = v173;
      goto LABEL_92;
    case 7u:
      v103 = *v32;
      v104 = *(v32 + 1);
      v105 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v106 = v182;
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v108 = *(v106 + v105);
      if ((v107 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v108 = sub_2277AF224(v108);
        *(v106 + v105) = v108;
      }

      v109 = v183;
      v110 = swift_beginAccess();
      *(v108 + 16) = 8;
      *(v108 + 24) = 1;
      MEMORY[0x28223BE20](v110);
      *(&v164 - 2) = v103;
      *(&v164 - 1) = v104;
      sub_2277DBE44(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf, &protocol conformance descriptor for FirstGlanceYesterdayWorkoutProtobuf);
      v111 = GlanceYesterdayWorkoutProtobuf;
      sub_2277E2274();
      if (v109)
      {
LABEL_61:
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {

          v65 = *(v106 + v105);
        }

        else
        {
          type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
          swift_allocObject();

          v65 = sub_2277AF224(v159);

          *(v106 + v105) = v65;
        }

        v160 = v174;
LABEL_92:
        v67 = v168;
        sub_2277DBBBC(v160, v168, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
        (*(v167 + 56))(v67, 0, 1, v111);
        v68 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
        swift_beginAccess();
        v69 = &qword_27D7CEDA0;
        v70 = &qword_2277E5A10;
LABEL_93:
        sub_2277AF9FC(v67, v65 + v68, v69, v70);
        swift_endAccess();
      }

      return;
    case 8u:
      v71 = *v32;
      v81 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v82 = v182;
      v141 = swift_isUniquelyReferenced_nonNull_native();
      v84 = *(v82 + v81);
      if ((v141 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v84 = sub_2277AF224(v84);
        *(v82 + v81) = v84;
      }

      v85 = v183;
      swift_beginAccess();
      v86 = 9;
      goto LABEL_71;
    case 9u:
      v71 = *v32;
      v81 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v82 = v182;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v84 = *(v82 + v81);
      if ((v83 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v84 = sub_2277AF224(v84);
        *(v82 + v81) = v84;
      }

      v85 = v183;
      swift_beginAccess();
      v86 = 10;
LABEL_71:
      *(v84 + 16) = v86;
      *(v84 + 24) = 1;
      v142 = sub_2277D6868();
      if (v85)
      {
        goto LABEL_72;
      }

      v144 = v142;
      v145 = v143;
      if (swift_isUniquelyReferenced_nonNull_native())
      {

        v146 = *(v82 + v81);
      }

      else
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();

        v146 = sub_2277AF224(v155);

        *(v82 + v81) = v146;
      }

      v156 = (v146 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
      swift_beginAccess();
      v157 = *v156;
      v158 = v156[1];
      *v156 = v144;
      v156[1] = v145;
      sub_22778E130(v157, v158);
      return;
    case 0xAu:
      v71 = *v32;
      v72 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v73 = v182;
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v75 = *(v73 + v72);
      if ((v135 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v75 = sub_2277AF224(v75);
        *(v73 + v72) = v75;
      }

      v76 = v183;
      swift_beginAccess();
      v77 = 11;
LABEL_65:
      *(v75 + 16) = v77;
      *(v75 + 24) = 1;
      v136 = sub_2277D6868();
      if (v76)
      {
LABEL_72:
      }

      else
      {
        v138 = v137;
        v139 = v136;
        if (swift_isUniquelyReferenced_nonNull_native())
        {

          v140 = *(v73 + v72);
        }

        else
        {
          type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
          swift_allocObject();

          v140 = sub_2277AF224(v147);

          *(v73 + v72) = v140;
        }

        v148 = (v140 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v149 = *v148;
        v150 = v148[1];
        *v148 = v139;
        v148[1] = v138;
        sub_22778E130(v149, v150);
      }

      return;
    case 0xBu:
      v55 = *(v32 + 1);
      v189[0] = *v32;
      v189[1] = v55;
      v190 = *(v32 + 4);
      v56 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v57 = v182;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v59 = *(v57 + v56);
      if ((v58 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v59 = sub_2277AF224(v59);
        *(v57 + v56) = v59;
      }

      v60 = v183;
      v61 = v170;
      v62 = swift_beginAccess();
      *(v59 + 16) = 15;
      *(v59 + 24) = 1;
      MEMORY[0x28223BE20](v62);
      *(&v164 - 2) = v189;
      sub_2277DBE44(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf, &protocol conformance descriptor for FirstGlanceWorkoutSummationTypeProtobuf);
      v63 = GlanceWorkoutSummationTypeProtobuf;
      sub_2277E2274();
      if (v60)
      {
        return;
      }

      v64 = swift_isUniquelyReferenced_nonNull_native();
      v65 = *(v57 + v56);
      if ((v64 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v65 = sub_2277AF224(v65);
        *(v57 + v56) = v65;
      }

      v66 = v165;
      v67 = v166;
      sub_2277DBBBC(v61, v166, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
      (*(v66 + 56))(v67, 0, 1, v63);
      v68 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
      swift_beginAccess();
      v69 = &qword_27D7CEDC8;
      v70 = &qword_2277E5A20;
      goto LABEL_93;
    case 0xCu:
      v78 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v79 = v182;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v79 + v78);
      if ((v80 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v53 = sub_2277AF224(v53);
        *(v79 + v78) = v53;
      }

      swift_beginAccess();
      *(v53 + 16) = 1;
      goto LABEL_57;
    case 0xDu:
      v125 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v126 = v182;
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v126 + v125);
      if ((v127 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v53 = sub_2277AF224(v53);
        *(v126 + v125) = v53;
      }

      swift_beginAccess();
      v54 = 2;
      goto LABEL_56;
    case 0xEu:
      v50 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v51 = v182;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v51 + v50);
      if ((v52 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v53 = sub_2277AF224(v53);
        *(v51 + v50) = v53;
      }

      swift_beginAccess();
      v54 = 12;
      goto LABEL_56;
    case 0xFu:
      v94 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v95 = v182;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v95 + v94);
      if ((v96 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v53 = sub_2277AF224(v53);
        *(v95 + v94) = v53;
      }

      swift_beginAccess();
      v54 = 13;
LABEL_56:
      *(v53 + 16) = v54;
LABEL_57:
      *(v53 + 24) = 1;
      return;
    default:
      v33 = *(v32 + 3);
      v184[2] = *(v32 + 2);
      v184[3] = v33;
      v184[4] = *(v32 + 4);
      v34 = *(v32 + 1);
      v184[0] = *v32;
      v184[1] = v34;
      v35 = *(v32 + 10);
      v36 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v37 = v182;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v37 + v36);
      v181 = v35;
      if ((v38 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v39 = sub_2277AF224(v39);
        *(v37 + v36) = v39;
      }

      v40 = swift_beginAccess();
      *(v39 + 16) = 0;
      *(v39 + 24) = 1;
      MEMORY[0x28223BE20](v40);
      *(&v164 - 2) = v184;
      sub_2277DBE44(&qword_27D7CEC38, type metadata accessor for FirstGlanceWeeklySummaryProtobuf, &protocol conformance descriptor for FirstGlanceWeeklySummaryProtobuf);
      v41 = v183;
      sub_2277E2274();
      v183 = v41;
      sub_22778E1E8(v184);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v37 + v36);
      if ((v42 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v43 = sub_2277AF224(v43);
        *(v37 + v36) = v43;
      }

      v44 = v169;
      sub_2277DBBBC(v29, v26, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
      (*(v44 + 56))(v26, 0, 1, GlanceWeeklySummaryProtobuf);
      v45 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
      swift_beginAccess();
      sub_2277AF9FC(v26, v43 + v45, &qword_27D7CEDB8, &qword_2277E5A18);
      swift_endAccess();
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v47 = *(v37 + v36);
      if ((v46 & 1) == 0)
      {
        type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        swift_allocObject();
        v47 = sub_2277AF224(v47);
        *(v37 + v36) = v47;
      }

LABEL_8:
      v48 = v181;
      v49 = v47 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
      swift_beginAccess();
      *v49 = v48;
      *(v49 + 8) = 0;
      return;
  }
}

uint64_t sub_2277DBBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2277DBCB4()
{
  type metadata accessor for FirstGlanceTypeProtobuf(0);
  sub_2277DBE44(&qword_27D7CEE40, type metadata accessor for FirstGlanceTypeProtobuf, &protocol conformance descriptor for FirstGlanceTypeProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277DBDE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2277DBE44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::String __swiftcall NotificationActionType.localized()()
{
  type metadata accessor for XPCListener();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2277E2414();

  v3 = sub_2277E2414();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_2277E2434();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t NotificationActionType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000016;
  }
}

id NotificationActionType.icon.getter()
{
  v0 = sub_2277E2414();
  v1 = [objc_opt_self() iconWithSystemImageName_];

  return v1;
}

FitnessCoaching::NotificationActionType_optional __swiftcall NotificationActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2277E2924();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2277DC128(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "VIEW_FITNESS_PLUS_PLAN";
  if (v2 == 1)
  {
    v4 = "VIEW_FITNESS_PLUS_PLAN";
  }

  else
  {
    v4 = "EDIT_PAUSE_RINGS";
  }

  if (*a1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = "CoachingStartDate";
  }

  if (*a2 != 1)
  {
    v3 = "EDIT_PAUSE_RINGS";
  }

  if (*a2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = "CoachingStartDate";
  }

  if (v5 == v7 && (v6 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2277E2984();
  }

  return v9 & 1;
}

unint64_t sub_2277DC1FC()
{
  result = qword_27D7CF418[0];
  if (!qword_27D7CF418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7CF418);
  }

  return result;
}

uint64_t sub_2277DC250()
{
  sub_2277E2A04();
  sub_2277E2484();

  return sub_2277E2A44();
}

uint64_t sub_2277DC2E4(uint64_t a1)
{
  sub_2277E2484();
}

uint64_t sub_2277DC364(uint64_t a1)
{
  sub_2277E2A04();
  sub_2277E2484();

  return sub_2277E2A44();
}

void sub_2277DC400(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "VIEW_FITNESS_PLUS_PLAN";
  if (*v1 != 1)
  {
    v3 = "EDIT_PAUSE_RINGS";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000016;
    v4 = "CoachingStartDate";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t AsyncAdvanceableThrowingStream.makeAsyncIterator()()
{
  sub_2277DD7EC();
}

char *AsyncAdvanceableThrowingStream.__allocating_init(asyncStream:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_2277DD7F4(a1);
  v3 = sub_2277E2694();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t sub_2277DC51C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_2277E2774();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2277DC5C8(uint64_t a1)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_2277E2774();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2277DC67C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = sub_2277E2684();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2277DC750(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = sub_2277E2684();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

char *AsyncAdvanceableThrowingStream.init(asyncStream:)(uint64_t a1)
{
  v2 = sub_2277DD7F4(a1);
  v3 = sub_2277E2694();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t sub_2277DC8D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2277E2684();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277DC9E4, v1, 0);
}

uint64_t sub_2277DC9E4()
{
  sub_2277DC67C(v0[7]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2277DCA90;
  v2 = v0[4];
  v3 = v0[2];

  return MEMORY[0x2822005B0](v3, v2);
}

uint64_t sub_2277DCA90()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_2277DCC84;
  }

  else
  {
    v4 = sub_2277DCBBC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2277DCBBC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v1, v3);
  sub_2277DC750(v2);
  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2277DCC84()
{
  (*(v0[5] + 8))(v0[7], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t *AsyncAdvanceableThrowingStream.deinit()
{
  v1 = *(*v0 + 112);
  v2 = sub_2277E2774();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 120);
  v4 = sub_2277E2684();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncAdvanceableThrowingStream.__deallocating_deinit()
{
  AsyncAdvanceableThrowingStream.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2277DCE70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2277DD7EC();

  *a1 = v2;
  return result;
}

uint64_t AsyncAdvanceableThrowingStream.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 80);
  v2[4] = v3;
  v4 = sub_2277E2774();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277DD00C, v1, 0);
}

uint64_t sub_2277DD00C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[4];
  sub_2277DC51C(v1);
  v4 = *(v2 + 48);
  v0[13] = v4;
  v0[14] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[9];
    v6 = v0[5];
    v7 = v0[6];
    v8 = *(v7 + 8);
    v0[15] = v8;
    v0[16] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_2277DD1EC;
    v10 = v0[8];

    return sub_2277DC8D8(v10);
  }

  else
  {
    v12 = v0[12];
    v13 = v0[10];
    v14 = v0[4];
    v15 = v0[2];
    v16 = *(v13 + 32);
    v16(v12, v0[9], v14);
    v16(v15, v12, v14);
    (*(v13 + 56))(v0[2], 0, 1, v0[4]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_2277DD1EC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_2277DD4C0;
  }

  else
  {
    v4 = sub_2277DD318;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2277DD318()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  if ((*(v0 + 104))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 80);
    (*(v0 + 120))(v1, *(v0 + 40));
    (*(v3 + 56))(*(v0 + 16), 1, 1, *(v0 + 32));
  }

  else
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 56);
    v11 = *(v0 + 16);
    v7 = *(v5 + 32);
    v7(v4, v1, v2);
    (*(v5 + 16))(v6, v4, v2);
    v8 = *(v5 + 56);
    v8(v6, 0, 1, v2);
    sub_2277DC5C8(v6);
    v7(v11, v4, v2);
    v8(*(v0 + 16), 0, 1, *(v0 + 32));
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2277DD4C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2277DD554(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22779696C;

  return AsyncAdvanceableThrowingStream.next()(a1);
}

uint64_t sub_2277DD5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  v13 = type metadata accessor for AsyncAdvanceableThrowingStream(0, a5[10], a5[11], a5[12]);
  *v12 = v6;
  v12[1] = sub_2277DD6DC;

  return MEMORY[0x282200320](a1, a2, a3, v13, a6, v6 + 16);
}

uint64_t sub_2277DD6DC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

char *sub_2277DD7F4(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v15[2] = *(*v1 + 88);
  v15[1] = *(v3 + 96);
  v16 = sub_2277E2684();
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = v15 - v6;
  v8 = sub_2277E2774();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  swift_defaultActor_initialize();
  v12 = *(*v2 + 112);
  v13 = *(*(v4 - 8) + 56);
  v13(&v2[v12], 1, 1, v4);
  v13(v11, 1, 1, v4);
  swift_beginAccess();
  (*(v9 + 40))(&v2[v12], v11, v8);
  swift_endAccess();
  sub_2277E2694();
  sub_2277E2664();
  (*(v5 + 32))(&v2[*(*v2 + 120)], v7, v16);
  return v2;
}

uint64_t sub_2277DDA90(void *a1)
{
  result = sub_2277E2774();
  if (v2 <= 0x3F)
  {
    result = sub_2277E2684();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FitnessPlusPlanLocalizer.localizedBody(type:notificationSchedule:hasCompletedPlanTodayAndHasPlanTomorrow:)(FitnessCoaching::FitnessPlusPlanNotificationType type, Swift::OpaquePointer notificationSchedule, Swift::Bool hasCompletedPlanTodayAndHasPlanTomorrow)
{
  if (*type)
  {
    v3 = sub_2277DF680(notificationSchedule._rawValue, hasCompletedPlanTodayAndHasPlanTomorrow);
  }

  else
  {
    v3 = sub_2277DF070(notificationSchedule._rawValue);
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2277DDC34(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return sub_2277DF680(a2, a3 & 1);
  }

  else
  {
    return sub_2277DF070(a2);
  }
}

void *sub_2277DDC74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2277DDE28(a1, a2, a3, *v3, &qword_27D7CF4C8, &unk_2277E84B0, type metadata accessor for FirstGlanceTypeProtobuf);
  *v3 = result;
  return result;
}

char *sub_2277DDCB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2277DDD1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2277DDCD8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2277DDE28(a1, a2, a3, *v3, &qword_27D7CF4C0, &unk_2277E84A0, MEMORY[0x277D53210]);
  *v3 = result;
  return result;
}

char *sub_2277DDD1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF08, &qword_2277E6070);
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

void *sub_2277DDE28(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_2277DE004()
{
  v0 = sub_2277E20A4();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_2277E2814();
    v4 = sub_2277E20B4();
    v6 = v5;
    v8 = v7 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF4A8, &qword_2277E8498);
    sub_2277E2084();
    sub_2277DFFBC(v4, v6, v8);
    sub_2277E2454();

    MEMORY[0x22AA9B650](0xD000000000000015, 0x80000002277EA390);
    type metadata accessor for XPCListener();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_2277E2414();

    v12 = sub_2277E2414();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    sub_2277E2434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2277E3E40;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2277CB7D4();
    *(v14 + 32) = v2;
    *(v14 + 40) = v3;
    v15 = sub_2277E2444();
  }

  else
  {
    v16 = sub_2277E20B4();
    v18 = v17;
    v20 = v19 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF4A8, &qword_2277E8498);
    sub_2277E2084();
    sub_2277DFFBC(v16, v18, v20);
    sub_2277E2454();

    MEMORY[0x22AA9B650](0x54554F4B524F575FLL, 0xE800000000000000);
    type metadata accessor for XPCListener();
    v21 = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v23 = sub_2277E2414();

    v24 = sub_2277E2414();
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    v15 = sub_2277E2434();
  }

  return v15;
}

uint64_t sub_2277DE37C(uint64_t a1)
{
  v60 = sub_2277E20D4();
  v3 = *(v60 - 8);
  v4 = MEMORY[0x28223BE20](v60);
  v65 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v64 = v57 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v57 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v59 = v10;
    v57[1] = v1;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v71 = v14;
    v63 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = *(v13 + 56);
    v62 = (v13 - 8);
    v69 = (v13 + 16);
    v16 = MEMORY[0x277D84F90];
    v68 = xmmword_2277E8410;
    v17 = a1 + v63;
    v72 = v12;
    v18 = v12;
    v19 = v60;
    v73 = v13;
    v70 = v15;
    v58 = v57 - v9;
    v61 = v17;
    v14(v11, v17, v60);
    while (1)
    {
      v22 = v19;
      v23 = sub_2277E20B4();
      v25 = v24;
      v76 = v23;
      v77 = v24;
      v26 = v11;
      v28 = v27 & 1;
      v78 = v27 & 1;
      v74 = v68;
      v75 = 1;
      v29 = sub_2277DFFCC();
      v66 = sub_2277E0020();
      v67 = v29;
      LOBYTE(v29) = sub_2277E2094();
      sub_2277DFFBC(v23, v25, v28);
      if (v29)
      {
        v30 = *v69;
        (*v69)(v64, v26, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v16;
        if (isUniquelyReferenced_nonNull_native)
        {
          v19 = v22;
        }

        else
        {
          sub_2277DDCD8(0, *(v16 + 16) + 1, 1);
          v19 = v60;
          v16 = v79;
        }

        v21 = v61;
        v33 = *(v16 + 16);
        v32 = *(v16 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_2277DDCD8((v32 > 1), v33 + 1, 1);
          v19 = v60;
          v16 = v79;
        }

        *(v16 + 16) = v33 + 1;
        v20 = v70;
        v30((v16 + v63 + v33 * v70), v64, v19);
        v11 = v58;
      }

      else
      {
        (*v62)(v26, v22);
        v19 = v22;
        v20 = v70;
        v11 = v26;
        v21 = v61;
      }

      v17 += v20;
      if (!--v18)
      {
        break;
      }

      v71(v11, v17, v19);
    }

    v64 = *(v16 + 16);

    v34 = MEMORY[0x277D84F90];
    v35 = v59;
    do
    {
      v71(v35, v21, v19);
      v37 = v19;
      v38 = sub_2277E20B4();
      v40 = v39;
      v76 = v38;
      v77 = v39;
      v42 = v41 & 1;
      v78 = v41 & 1;
      v74 = v68;
      v75 = 1;
      v43 = sub_2277E2094();
      sub_2277DFFBC(v38, v40, v42);
      if (v43)
      {
        (*v62)(v35, v37);
        v19 = v37;
        v36 = v70;
      }

      else
      {
        v44 = *v69;
        (*v69)(v65, v35, v37);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v79 = v34;
        if (v45)
        {
          v19 = v37;
        }

        else
        {
          sub_2277DDCD8(0, *(v34 + 16) + 1, 1);
          v19 = v60;
          v34 = v79;
        }

        v47 = *(v34 + 16);
        v46 = *(v34 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_2277DDCD8((v46 > 1), v47 + 1, 1);
          v19 = v60;
          v34 = v79;
        }

        *(v34 + 16) = v47 + 1;
        v36 = v70;
        v44((v34 + v63 + v47 * v70), v65, v19);
        v35 = v59;
      }

      v21 += v36;
      --v72;
    }

    while (v72);
    v48 = v64;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
    v48 = *(MEMORY[0x277D84F90] + 16);
  }

  v49 = *(v34 + 16);

  if (v49)
  {
    if (v49 == 1 && v48 == 0)
    {
      return 0x4B524F575F454E4FLL;
    }

    v51 = v49 != 1;
    if (v49 != 1 && v48 == 0)
    {
      return 0x524F575F594E414DLL;
    }

    if (v49 == 1 && v48 == 1)
    {
      return 0xD00000000000001ALL;
    }

    if (v48 == 1 && v49 != 1)
    {
      return 0xD00000000000001CLL;
    }

    if (v48 < 2)
    {
      v51 = 1;
    }

    if (v51)
    {
      if (v49 != 1 && v48 >= 2)
      {
        return 0xD00000000000001ELL;
      }

      goto LABEL_56;
    }

    return 0xD00000000000001CLL;
  }

  else
  {
    if (!v48)
    {
LABEL_56:
      sub_2277DFF68();
      swift_allocError();
      *v56 = 1;
      return swift_willThrow();
    }

    if (v48 == 1)
    {
      return 0x4944454D5F454E4FLL;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

unint64_t sub_2277DEA60(uint64_t a1)
{
  v61 = sub_2277E20D4();
  v3 = *(v61 - 8);
  v4 = MEMORY[0x28223BE20](v61);
  v66 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v65 = v58 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v58 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v60 = v10;
    v58[1] = v1;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v72 = v14;
    v64 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = *(v13 + 56);
    v63 = (v13 - 8);
    v70 = (v13 + 16);
    v16 = MEMORY[0x277D84F90];
    v69 = xmmword_2277E8410;
    v17 = a1 + v64;
    v73 = v12;
    v18 = v12;
    v19 = v61;
    v74 = v13;
    v71 = v15;
    v59 = v58 - v9;
    v62 = v17;
    v14(v11, v17, v61);
    while (1)
    {
      v22 = v19;
      v23 = sub_2277E20B4();
      v25 = v24;
      v77 = v23;
      v78 = v24;
      v26 = v11;
      v28 = v27 & 1;
      v79 = v27 & 1;
      v75 = v69;
      v76 = 1;
      v29 = sub_2277DFFCC();
      v67 = sub_2277E0020();
      v68 = v29;
      LOBYTE(v29) = sub_2277E2094();
      sub_2277DFFBC(v23, v25, v28);
      if (v29)
      {
        v30 = *v70;
        (*v70)(v65, v26, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v16;
        if (isUniquelyReferenced_nonNull_native)
        {
          v19 = v22;
        }

        else
        {
          sub_2277DDCD8(0, *(v16 + 16) + 1, 1);
          v19 = v61;
          v16 = v80;
        }

        v21 = v62;
        v33 = *(v16 + 16);
        v32 = *(v16 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_2277DDCD8((v32 > 1), v33 + 1, 1);
          v19 = v61;
          v16 = v80;
        }

        *(v16 + 16) = v33 + 1;
        v20 = v71;
        v30((v16 + v64 + v33 * v71), v65, v19);
        v11 = v59;
      }

      else
      {
        (*v63)(v26, v22);
        v19 = v22;
        v20 = v71;
        v11 = v26;
        v21 = v62;
      }

      v17 += v20;
      if (!--v18)
      {
        break;
      }

      v72(v11, v17, v19);
    }

    v65 = *(v16 + 16);

    v34 = MEMORY[0x277D84F90];
    v35 = v60;
    do
    {
      v72(v35, v21, v19);
      v37 = v19;
      v38 = sub_2277E20B4();
      v40 = v39;
      v77 = v38;
      v78 = v39;
      v42 = v41 & 1;
      v79 = v41 & 1;
      v75 = v69;
      v76 = 1;
      v43 = sub_2277E2094();
      sub_2277DFFBC(v38, v40, v42);
      if (v43)
      {
        (*v63)(v35, v37);
        v19 = v37;
        v36 = v71;
      }

      else
      {
        v44 = *v70;
        (*v70)(v66, v35, v37);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v80 = v34;
        if (v45)
        {
          v19 = v37;
        }

        else
        {
          sub_2277DDCD8(0, *(v34 + 16) + 1, 1);
          v19 = v61;
          v34 = v80;
        }

        v47 = *(v34 + 16);
        v46 = *(v34 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_2277DDCD8((v46 > 1), v47 + 1, 1);
          v19 = v61;
          v34 = v80;
        }

        *(v34 + 16) = v47 + 1;
        v36 = v71;
        v44((v34 + v64 + v47 * v71), v66, v19);
        v35 = v60;
      }

      v21 += v36;
      --v73;
    }

    while (v73);
    v48 = v65;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
    v48 = *(MEMORY[0x277D84F90] + 16);
  }

  v49 = *(v34 + 16);

  if (v49)
  {
    if (v49 == 1 && v48 == 0)
    {
      return 1;
    }

    v51 = v49 != 1;
    if (v49 != 1 && v48 == 0)
    {
      return v49;
    }

    if (v49 == 1 && v48 == 1)
    {
      return 0;
    }

    if (v48 == 1 && v49 != 1)
    {
      return v49;
    }

    if (v48 < 2)
    {
      v51 = 1;
    }

    if (!v51)
    {
      return v48;
    }

    if (v49 == 1 || v48 < 2)
    {
      goto LABEL_51;
    }

    v55 = __OFADD__(v49, v48);
    v49 += v48;
    if (!v55)
    {
      return v49;
    }

    __break(1u);
  }

  v49 = v48;
  if (!v48)
  {
LABEL_51:
    sub_2277DFF68();
    swift_allocError();
    *v56 = 1;
    swift_willThrow();
  }

  return v49;
}

uint64_t sub_2277DF070(uint64_t a1)
{
  v2 = sub_2277E20D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v54 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - v9;
  v11 = *(a1 + 16);
  v56 = v3;
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v59 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v15 = a1 + v59;
    v16 = *(v12 + 56);
    v63 = (v12 + 16);
    v58 = (v12 - 8);
    v66 = MEMORY[0x277D84F90];
    v61 = v8;
    v62 = v2;
    v60 = v14;
    do
    {
      v17 = v16;
      v13(v10, v15, v2);
      if (sub_2277E20C4())
      {
        (*v58)(v10, v2);
      }

      else
      {
        v18 = *v63;
        (*v63)(v8, v10, v2);
        v19 = v66;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v19;
        v64 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2277DDCD8(0, *(v19 + 16) + 1, 1);
          v21 = v64;
        }

        v16 = v17;
        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_2277DDCD8((v22 > 1), v23 + 1, 1);
          v16 = v17;
          v21 = v64;
        }

        *(v21 + 16) = v23 + 1;
        v66 = v21;
        v24 = v21 + v59 + v23 * v16;
        v8 = v61;
        v2 = v62;
        v18(v24, v61, v62);
        v13 = v60;
      }

      v15 += v16;
      --v11;
    }

    while (v11);
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v25 = v66;
  v26 = v57;
  v27 = sub_2277DE37C(v66);
  if (v26)
  {
  }

  else
  {
    v29 = v28;
    v30 = v27;
    v32 = sub_2277DEA60(v25);
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_2277E2814();

    v64 = 0xD00000000000002DLL;
    v65 = 0x80000002277EA360;
    MEMORY[0x22AA9B650](v30, v29);

    v33 = *(v25 + 16);
    if (v33 == 1)
    {
      v35 = v55;
      v34 = v56;
      (*(v56 + 16))(v55, v25 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v2);

      v36 = sub_2277DE004();
      v38 = v37;
      (*(v34 + 8))(v35, v2);
      type metadata accessor for XPCListener();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v40 = [objc_opt_self() bundleForClass_];
      v41 = sub_2277E2414();

      v42 = sub_2277E2414();
      v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

      sub_2277E2434();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2277E3E40;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = sub_2277CB7D4();
      *(v44 + 32) = v36;
      *(v44 + 40) = v38;
    }

    else
    {

      if (!v33)
      {

        sub_2277DFF68();
        swift_allocError();
        *v53 = 0;
        swift_willThrow();
        return v11;
      }

      type metadata accessor for XPCListener();
      v45 = swift_getObjCClassFromMetadata();
      v46 = [objc_opt_self() bundleForClass_];
      v47 = sub_2277E2414();

      v48 = sub_2277E2414();
      v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

      sub_2277E2434();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
      v50 = swift_allocObject();
      v51 = MEMORY[0x277D83B88];
      *(v50 + 16) = xmmword_2277E3E40;
      v52 = MEMORY[0x277D83C10];
      *(v50 + 56) = v51;
      *(v50 + 64) = v52;
      *(v50 + 32) = v32;
    }

    v11 = sub_2277E2424();
  }

  return v11;
}

uint64_t sub_2277DF680(uint64_t a1, int a2)
{
  v65 = a2;
  v3 = sub_2277E20D4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v63 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v63 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v63 - v11;
  v13 = *(a1 + 16);
  v71 = v10;
  v64 = v4;
  if (v13)
  {
    v16 = *(v4 + 16);
    v14 = v4 + 16;
    v15 = v16;
    v68 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v17 = a1 + v68;
    v18 = *(v14 + 56);
    v72 = (v14 + 16);
    v67 = (v14 - 8);
    v75 = MEMORY[0x277D84F90];
    v69 = v16;
    v70 = v9;
    do
    {
      v19 = v18;
      v15(v12, v17, v3);
      if (sub_2277E20C4())
      {
        (*v67)(v12, v3);
      }

      else
      {
        v20 = *v72;
        (*v72)(v9, v12, v3);
        v21 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v21;
        v73 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2277DDCD8(0, *(v21 + 16) + 1, 1);
          v23 = v73;
        }

        v18 = v19;
        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2277DDCD8((v24 > 1), v25 + 1, 1);
          v18 = v19;
          v23 = v73;
        }

        *(v23 + 16) = v25 + 1;
        v75 = v23;
        v26 = v23 + v68 + v25 * v18;
        v9 = v70;
        v3 = v71;
        v20(v26, v70, v71);
        v15 = v69;
      }

      v17 += v18;
      --v13;
    }

    while (v13);
  }

  else
  {
    v75 = MEMORY[0x277D84F90];
  }

  v27 = v75;
  v28 = v66;
  v29 = sub_2277DE37C(v75);
  if (v28)
  {
  }

  else
  {
    v32 = v29;
    v33 = v30;
    if (v65)
    {
      v34 = v75;
      v40 = sub_2277DEA60(v75);
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_2277E2814();
      MEMORY[0x22AA9B650](0xD000000000000035, 0x80000002277EA480);
      MEMORY[0x22AA9B650](v32, v33);

      v27 = v74;
      v41 = *(v34 + 16);
      if (v41 == 1)
      {
        v43 = v63;
        v42 = v64;
        v44 = v71;
        (*(v64 + 16))(v63, v34 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v71);

        v45 = sub_2277DE004();
        v47 = v46;
        (*(v42 + 8))(v43, v44);
        type metadata accessor for XPCListener();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v49 = [objc_opt_self() bundleForClass_];
        v50 = sub_2277E2414();

        v51 = sub_2277E2414();
        v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

        sub_2277E2434();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_2277E3E40;
        *(v53 + 56) = MEMORY[0x277D837D0];
        *(v53 + 64) = sub_2277CB7D4();
        *(v53 + 32) = v45;
        *(v53 + 40) = v47;
        v27 = sub_2277E2424();
      }

      else
      {

        if (v41)
        {
          type metadata accessor for XPCListener();
          v54 = swift_getObjCClassFromMetadata();
          v55 = [objc_opt_self() bundleForClass_];
          v56 = sub_2277E2414();

          v57 = sub_2277E2414();
          v58 = [v55 localizedStringForKey:v56 value:0 table:v57];

          sub_2277E2434();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
          v59 = swift_allocObject();
          v60 = MEMORY[0x277D83B88];
          *(v59 + 16) = xmmword_2277E3E40;
          v61 = MEMORY[0x277D83C10];
          *(v59 + 56) = v60;
          *(v59 + 64) = v61;
          *(v59 + 32) = v40;
          v27 = sub_2277E2424();
        }

        else
        {

          sub_2277DFF68();
          swift_allocError();
          *v62 = 0;
          swift_willThrow();
        }
      }
    }

    else
    {

      v73 = 0;
      v74 = 0xE000000000000000;
      sub_2277E2814();

      v73 = 0xD00000000000002CLL;
      v74 = 0x80000002277EA450;
      MEMORY[0x22AA9B650](v32, v33);

      type metadata accessor for XPCListener();
      v35 = swift_getObjCClassFromMetadata();
      v36 = [objc_opt_self() bundleForClass_];
      v37 = sub_2277E2414();

      v38 = sub_2277E2414();
      v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

      v27 = sub_2277E2434();
    }
  }

  return v27;
}

uint64_t _s15FitnessCoaching0A17PlusPlanLocalizerC14localizedTitle4typeSSAA0acD16NotificationTypeO_tF_0()
{
  type metadata accessor for XPCListener();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2277E2414();
  v3 = sub_2277E2414();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_2277E2434();
  return v5;
}

unint64_t sub_2277DFF68()
{
  result = qword_27D7CF4A0;
  if (!qword_27D7CF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF4A0);
  }

  return result;
}

uint64_t sub_2277DFFBC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_2277DFFCC()
{
  result = qword_27D7CF4B0;
  if (!qword_27D7CF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF4B0);
  }

  return result;
}

unint64_t sub_2277E0020()
{
  result = qword_27D7CF4B8;
  if (!qword_27D7CF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF4B8);
  }

  return result;
}

void GoalProgressPluginClient.init(healthStore:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D09D00]) initWithHealthStore_];

  *a2 = v4;
}

uint64_t GoalProgressPluginClient.registerConfiguration(_:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_2277E00EC, 0, 0);
}

uint64_t sub_2277E00EC()
{
  if (qword_2813BC718 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = sub_2277E2374();
  __swift_project_value_buffer(v3, qword_2813BC720);
  v4._countAndFlagsBits = 0xD000000000000071;
  v4._object = 0x80000002277EA4E0;
  v5._object = 0x80000002277EA560;
  v5._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v4, v5);
  v6 = [v2 transportData];
  v7 = sub_2277E1F34();
  v9 = v8;

  v0[20] = v7;
  v0[21] = v9;
  v10 = sub_2277E1F24();
  v0[22] = v10;
  v0[2] = v0;
  v0[3] = sub_2277E02D0;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF070, &qword_2277E6B58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2277C14CC;
  v0[13] = &block_descriptor_5;
  v0[14] = v11;
  [v1 pluginMessage:1 data:v10 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2277E02D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_2277E044C;
  }

  else
  {
    v2 = sub_2277E03E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2277E03E0()
{
  v1 = v0[22];
  sub_22778E130(v0[20], v0[21]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2277E044C()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  swift_willThrow();
  sub_22778E130(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2277E04EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22779696C;

  return GoalProgressPluginClient.registerConfiguration(_:)(a1);
}

uint64_t dispatch thunk of GoalProgressPluginClientProtocol.registerConfiguration(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22779696C;

  return v9(a1, a2, a3);
}

uint64_t AchievementNotificationError.hashValue.getter(unsigned __int8 a1)
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](a1);
  return sub_2277E2A44();
}

unint64_t sub_2277E073C()
{
  result = qword_27D7CF4D0;
  if (!qword_27D7CF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF4D0);
  }

  return result;
}

uint64_t FirstGlanceAchievementInfo.protobuf()()
{
  type metadata accessor for FirstGlanceAchievementInfoProtobuf(0);
  sub_2277E0A08(&qword_27D7CEED0, &protocol conformance descriptor for FirstGlanceAchievementInfoProtobuf);
  return sub_2277E2274();
}

uint64_t FirstGlanceAchievementInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_2277905C0(*a1, v5);

  result = sub_2277E0944(a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_2277E08B0(uint64_t a1, __int128 *a2)
{
  v10 = *a2;
  v4 = *a1;
  v5 = *(a1 + 8);
  sub_2277B6100(&v10, &v9);
  sub_22778E130(v4, v5);
  *a1 = v10;
  v7 = *(a2 + 2);
  v6 = *(a2 + 3);

  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_2277E0944(uint64_t a1)
{
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf(0);
  (*(*(GlanceAchievementInfoProtobuf - 8) + 8))(a1, GlanceAchievementInfoProtobuf);
  return a1;
}

uint64_t sub_2277E0A08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FirstGlanceAchievementInfoProtobuf(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2277E0A4C()
{
  type metadata accessor for FirstGlanceAchievementInfoProtobuf(0);
  sub_2277E0A08(&qword_27D7CEED0, &protocol conformance descriptor for FirstGlanceAchievementInfoProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277E0AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_2277905C0(*a1, v5);

  result = sub_2277E0944(a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  return result;
}

void WalkSuggestionProtobuf.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t WalkSuggestionProtobuf.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t WalkSuggestionProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WalkSuggestionProtobuf(0) + 24);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WalkSuggestionProtobuf(uint64_t a1)
{
  result = qword_27D7CF550;
  if (!qword_27D7CF550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WalkSuggestionProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WalkSuggestionProtobuf(0) + 24);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t WalkSuggestionProtobuf.ProtobufType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t WalkSuggestionProtobuf.ProtobufType.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_2277E0DB0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2277E0DC8()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_2277E0DE4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_2277E0E00(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_2277E0E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277E13C4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_2277E0E6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t WalkSuggestionProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  type metadata accessor for WalkSuggestionProtobuf(0);
  return sub_2277E20F4();
}

uint64_t static WalkSuggestionProtobuf.ProtobufType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27D7CF4D8 = a1;
}

uint64_t sub_2277E0FDC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27D7CF4D8;
}

uint64_t sub_2277E1048()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF4E0);
  __swift_project_value_buffer(v0, qword_27D7CF4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E4B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minutesValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t WalkSuggestionProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2277E2164();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_2277E13C4();
        sub_2277E2184();
      }

      else if (result == 2)
      {
        sub_2277E21B4();
      }

      result = sub_2277E2164();
    }
  }

  return result;
}

uint64_t WalkSuggestionProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_2277E13C4(), result = sub_2277E22A4(), !v4))
  {
    if (!*(v3 + 12) || (result = sub_2277E22D4(), !v4))
    {
      type metadata accessor for WalkSuggestionProtobuf(0);
      return sub_2277E20E4();
    }
  }

  return result;
}

unint64_t sub_2277E13C4()
{
  result = qword_27D7CF510;
  if (!qword_27D7CF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF510);
  }

  return result;
}

uint64_t WalkSuggestionProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for WalkSuggestionProtobuf(0);
  sub_2277E1CF8(&qword_27D7CF518, type metadata accessor for WalkSuggestionProtobuf, &protocol conformance descriptor for WalkSuggestionProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277E14A4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  return sub_2277E20F4();
}

uint64_t sub_2277E1520(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277E1CF8(&unk_27D7CF560, type metadata accessor for WalkSuggestionProtobuf, &protocol conformance descriptor for WalkSuggestionProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277E15C0(uint64_t a1)
{
  v2 = sub_2277E1CF8(&qword_27D7CF1A8, type metadata accessor for WalkSuggestionProtobuf, &protocol conformance descriptor for WalkSuggestionProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277E162C(uint64_t a1, uint64_t a2)
{
  sub_2277E1CF8(&qword_27D7CF1A8, type metadata accessor for WalkSuggestionProtobuf, &protocol conformance descriptor for WalkSuggestionProtobuf);

  return sub_2277E2264();
}

uint64_t sub_2277E16AC()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF4F8);
  __swift_project_value_buffer(v0, qword_27D7CF4F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E4B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unavailable";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "minutes";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t _s15FitnessCoaching22WalkSuggestionProtobufV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (*(a1 + 3) == *(a2 + 3))
  {
    type metadata accessor for WalkSuggestionProtobuf(0);
    sub_2277E2104();
    sub_2277E1CF8(&qword_27D7CE980, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2277E2404() & 1;
  }

  return 0;
}

unint64_t sub_2277E19B0()
{
  result = qword_27D7CF520;
  if (!qword_27D7CF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF520);
  }

  return result;
}

unint64_t sub_2277E1A08()
{
  result = qword_27D7CF528;
  if (!qword_27D7CF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF528);
  }

  return result;
}

unint64_t sub_2277E1A60()
{
  result = qword_27D7CF530;
  if (!qword_27D7CF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF530);
  }

  return result;
}

unint64_t sub_2277E1AB8()
{
  result = qword_27D7CF538;
  if (!qword_27D7CF538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CF540, &qword_2277E8780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF538);
  }

  return result;
}

uint64_t sub_2277E1C64(uint64_t a1)
{
  result = sub_2277E2104();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2277E1CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *FIExperienceType.convertToACHExperienceType()(unint64_t a1)
{
  if (a1 < 4)
  {
    return qword_2277E8990[a1];
  }

  sub_2277E28D4();
  __break(1u);
  return sub_2277E1DB4();
}