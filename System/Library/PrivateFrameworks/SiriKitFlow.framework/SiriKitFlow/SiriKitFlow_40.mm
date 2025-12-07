uint64_t ReadingFlow.__allocating_init(source:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_3();
  v4 = swift_allocObject();
  ReadingFlow.init(source:)(a1, a2);
  return v4;
}

void *ReadingFlow.init(source:)(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  ObjectType = swift_getObjectType();
  v5 = (*(a2 + 8))(ObjectType, a2);
  v7 = v6;
  swift_unknownObjectRelease();
  v2[4] = v5;
  v2[5] = v7;
  return v2;
}

uint64_t ReadingFlow.__allocating_init(source:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_3();
  v8 = swift_allocObject();
  ReadingFlow.init(source:delegate:)(a1, a2, a3, a4);
  return v8;
}

void *ReadingFlow.init(source:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = 0;
  v4[3] = 0;
  ObjectType = swift_getObjectType();
  v9 = (*(a2 + 8))(ObjectType, a2);
  v11 = v10;
  swift_unknownObjectRelease();
  v4[4] = v9;
  v4[5] = v11;
  v4[2] = a3;
  v4[3] = a4;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1DCF0F6DC(uint64_t a1)
{
  if ((*(v1 + 47) & 0x20) != 0)
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    return 0;
  }

  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 56);
  swift_unknownObjectRetain();
  v5(&v10, a1, ObjectType, v3);
  swift_unknownObjectRelease();
  v6 = v11;
  if ((~v11 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  *(v1 + 32) = v10;
  *(v1 + 40) = v6;
  sub_1DCB070D4(v8, v9);
  return 1;
}

uint64_t sub_1DCF0F7A4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF0F7C4, 0, 0);
}

uint64_t sub_1DCF0F7C4()
{
  v11 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 40);
  if ((v3 & 0x2000000000000000) == 0)
  {
    v10[0] = *(v2 + 32);
    v10[1] = v3;
    type metadata accessor for GroupHandlingFlow();
    swift_allocObject();
    sub_1DCF0F92C(v10[0], v3);
    sub_1DCBFAABC(v10[0], v3);
    sub_1DCD6DED8(v10, 0, 0);
    sub_1DD0DCF8C();
  }

  v4 = type metadata accessor for ExecuteResponse(0);
  v5 = *(v4 + 36);
  v6 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  *v1 = 1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0;
  *(v1 + 48) = -4;
  v7 = (v1 + *(v4 + 40));
  *v7 = 0u;
  v7[1] = 0u;
  v8 = v0[1];

  return v8();
}

id sub_1DCF0F92C(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return result;
  }

  else
  {
    return sub_1DCBFAABC(result, a2);
  }
}

void sub_1DCF0F938(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a2 + 32) = v2;
  *(a2 + 40) = 0x2000000000000000;
  v5 = v2;

  sub_1DCB070D4(v3, v4);
}

unint64_t sub_1DCF0F988(uint64_t a1, uint64_t a2)
{
  result = sub_1DCF0F9B0(a1, a2);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCF0F9B0(uint64_t a1, uint64_t a2)
{
  result = qword_1ECCA9B80;
  if (!qword_1ECCA9B80)
  {
    type metadata accessor for ReadingFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9B80);
  }

  return result;
}

uint64_t sub_1DCF0FAEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB193FC;

  return sub_1DCF0F7A4(a1);
}

void *sub_1DCF0FB88@<X0>(void *a1@<X8>)
{
  result = sub_1DCF0F50C();
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of ReadingFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCB193FC;

  return v6(a1);
}

uint64_t *assignWithCopy for State(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1DCF0F92C(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  sub_1DCB070D4(v5, v6);
  return a1;
}

uint64_t *assignWithTake for State(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  sub_1DCB070D4(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1F && *(a1 + 16))
    {
      v2 = *a1 + 30;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 4) & 1 | (2 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x1F;
      if (v2 >= 0x1E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t _s11SiriKitFlow5StateOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0xF | (16 * (-a2 & 0x1F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0x3000000000000007;
    }
  }

  return result;
}

double ReadingFlowDelegate.handleInterruption(_:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1DD0E2F10;
  return result;
}

uint64_t static RecentDialog.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECCA9B90 = a1;
  return result;
}

uint64_t sub_1DCF10100@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECCA9B90;
  return result;
}

uint64_t sub_1DCF1014C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECCA9B90 = v1;
  return result;
}

uint64_t RecentDialog.expiresAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_expiresAt;
  sub_1DD0DAFDC();
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t RecentDialog.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_requestId);

  return v1;
}

id RecentDialog.init(addViews:expiresAt:requestId:)()
{
  OUTLINED_FUNCTION_74_0();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_addViews] = v4;
  v6 = OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_expiresAt;
  v7 = sub_1DD0DAFDC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v1[v6], v3, v7);
  v9 = &v1[OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_requestId];
  *v9 = v2;
  *(v9 + 1) = v0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v8 + 8))(v3, v7);
  return v10;
}

id RecentDialog.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v30 - v7;
  v9 = sub_1DD0DAFDC();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA24A8, &qword_1DD0E5278);
  v16 = swift_allocObject();
  v32 = xmmword_1DD0E07C0;
  *(v16 + 16) = xmmword_1DD0E07C0;
  *(v16 + 32) = sub_1DCB10E5C(0, &unk_1EDE46230, 0x1E69C7AF8);
  sub_1DD0DE89C();

  if (!v37)
  {

LABEL_7:
    v20 = &dword_1ECCA3CE0;
    v21 = &unk_1DD0E4F80;
    v22 = v36;
LABEL_11:
    sub_1DCB0E9D8(v22, v20, v21);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v31 = ObjectType;
  v17 = v34;
  v18 = swift_allocObject();
  *(v18 + 16) = v32;
  *(v18 + 32) = sub_1DCB10E5C(0, &qword_1EDE4D6C0, 0x1E695DF00);
  sub_1DD0DE89C();

  if (!v37)
  {

    sub_1DCB0E9D8(v36, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    goto LABEL_10;
  }

  v19 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v8, v19 ^ 1u, 1, v9);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {

LABEL_10:
    v20 = &qword_1ECCA9BA0;
    v21 = &qword_1DD0E6280;
    v22 = v8;
    goto LABEL_11;
  }

  v30 = *(v11 + 32);
  v30(v15, v8, v9);
  v25 = swift_allocObject();
  *(v25 + 16) = v32;
  *(v25 + 32) = sub_1DCB10E5C(0, &qword_1EDE46098, 0x1E696AEC0);
  sub_1DD0DE89C();

  v26 = v31;
  if (!v37)
  {
    (*(v11 + 8))(v15, v9);

    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v27 = v34;
    v28 = v35;
    *&v2[OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_addViews] = v17;
    v30(&v2[OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_expiresAt], v15, v9);
    v29 = &v2[OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_requestId];
    *v29 = v27;
    *(v29 + 1) = v28;
    v33.receiver = v2;
    v33.super_class = v26;
    v23 = objc_msgSendSuper2(&v33, sel_init);

    return v23;
  }

  (*(v11 + 8))(v15, v9);

LABEL_12:
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall RecentDialog.encode(with:)(NSCoder with)
{
  v1 = sub_1DD0DDF8C();
  v2 = OUTLINED_FUNCTION_1_108();
  [v2 v3];

  v4 = sub_1DD0DAF6C();
  v5 = sub_1DD0DDF8C();
  v6 = OUTLINED_FUNCTION_1_108();
  [v6 v7];

  v8 = sub_1DD0DDF8C();
  v11 = sub_1DD0DDF8C();
  v9 = OUTLINED_FUNCTION_1_108();
  [v9 v10];
}

id RecentDialog.copy(withAddViews:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1DD0DAFDC();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4, v5);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC11SiriKitFlow12RecentDialog_expiresAt);
  objc_allocWithZone(ObjectType);

  v8 = a1;
  return RecentDialog.init(addViews:expiresAt:requestId:)();
}

id RecentDialog.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecentDialog.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RecentDialog(uint64_t a1)
{
  result = qword_1EDE4EAC8;
  if (!qword_1EDE4EAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCF10CBC(uint64_t a1)
{
  result = sub_1DD0DAFDC();
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

uint64_t ReferenceResolutionClientProtocol.siriMentioned(entities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF10DD0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DCF10EC8;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCF10EC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF10FD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_65();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCF11038(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 128) = a3;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_1DD0DD85C();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF11104, 0, 0);
}

void sub_1DCF11104()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DD87C();
  sub_1DD0DE7FC();
  if (OUTLINED_FUNCTION_26_31())
  {
    OUTLINED_FUNCTION_21_41();
    if ((v2 & 1) == 0)
    {
      if (v0)
      {
LABEL_8:
        v5 = OUTLINED_FUNCTION_17_39();
        v6 = OUTLINED_FUNCTION_25_26(v5);
        OUTLINED_FUNCTION_4_99(&dword_1DCAFC000, v7, v8, v6, v9, "");
        OUTLINED_FUNCTION_37();
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v0))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_11_59();
      if (v3)
      {
LABEL_14:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_29();
      if (!(!v3 & v4))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  v10 = OUTLINED_FUNCTION_1_109();
  v11(v10);
  v12 = sub_1DD0DD8CC();
  OUTLINED_FUNCTION_73_1(v12);
  v13 = OUTLINED_FUNCTION_13_64();
  OUTLINED_FUNCTION_0_105(v13);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_12_58(v14);
  *v15 = v16;
  v15[1] = sub_1DCF1125C;
  OUTLINED_FUNCTION_152();

  v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1DCF1125C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF11358()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_65();

  v0 = OUTLINED_FUNCTION_19_3();

  return v1(v0);
}

uint64_t sub_1DCF113C0()
{
  OUTLINED_FUNCTION_42();
  v8 = OUTLINED_FUNCTION_5_90(v1, v2, v3, v4, v5, v6, v7);
  v0[10] = v8;
  OUTLINED_FUNCTION_99(v8);
  v0[11] = v9;
  v0[12] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCF1145C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DD87C();
  sub_1DD0DE7FC();
  if (OUTLINED_FUNCTION_26_31())
  {
    OUTLINED_FUNCTION_21_41();
    if ((v2 & 1) == 0)
    {
      if (v0)
      {
LABEL_8:
        v5 = OUTLINED_FUNCTION_17_39();
        v6 = OUTLINED_FUNCTION_25_26(v5);
        OUTLINED_FUNCTION_4_99(&dword_1DCAFC000, v7, v8, v6, v9, "");
        OUTLINED_FUNCTION_37();
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v0))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_11_59();
      if (v3)
      {
LABEL_14:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_29();
      if (!(!v3 & v4))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  v10 = OUTLINED_FUNCTION_1_109();
  v11(v10);
  v12 = sub_1DD0DD8CC();
  OUTLINED_FUNCTION_73_1(v12);
  v13 = OUTLINED_FUNCTION_13_64();
  OUTLINED_FUNCTION_0_105(v13);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_12_58(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_3_102(v15);
  OUTLINED_FUNCTION_152();

  v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1DCF115A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t ReferenceResolutionClientProtocol.collectSalientEntities()()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1DD0DD85C();
  v1[5] = v4;
  OUTLINED_FUNCTION_99(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF11748()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1DD0DD88C();
  v7 = *(v0 + 16);
  __swift_project_value_buffer(v2, qword_1EDE57DD0);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  sub_1DD0DD84C();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1DCF118A4;
  v5 = *(v0 + 56);

  return sub_1DCF11038("RRaaSEntityCollectionTime", 25, 2, v5, &unk_1DD101758, v3);
}

uint64_t sub_1DCF118A4()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v5[10] = v0;

  if (v0)
  {
    (*(v5[6] + 8))(v5[7], v5[5]);
    v9 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    (*(v5[6] + 8))(v5[7], v5[5]);

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_1DCF11A18()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCF11A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF11AA0, 0, 0);
}

uint64_t sub_1DCF11AA0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA8, &qword_1DD101780);
  *v3 = v0;
  v3[1] = sub_1DCF11BA8;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCF11BA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCF11CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BB0, &qword_1DD1017F0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(a4 + 8))(sub_1DCF128E0, v13, a3, a4);
}

uint64_t sub_1DCF11E38(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BB0, &qword_1DD1017F0);
    return sub_1DD0DE45C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BB0, &qword_1DD1017F0);
    return sub_1DD0DE46C();
  }
}

uint64_t ReferenceResolutionClientProtocol.collectSalientEntities(timeout:)()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v1[3] = v4;
  OUTLINED_FUNCTION_99(v3);
  v1[7] = v5;
  v1[8] = *(v6 + 64);
  v1[9] = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF11F5C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v7 = *(v0 + 32);
  v3 = *(v0 + 32);
  (*(v2 + 16))(v1, *(v0 + 48), v3);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  *(v5 + 16) = v7;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA8, &qword_1DD101780);
  *v6 = v0;
  v6[1] = sub_1DCF120B4;

    ;
  }
}

uint64_t sub_1DCF120B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF121B8()
{
  OUTLINED_FUNCTION_42();

  v0 = OUTLINED_FUNCTION_19_3();

  return v1(v0);
}

uint64_t sub_1DCF12214()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCF12278(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCF12328;

  return ReferenceResolutionClientProtocol.collectSalientEntities()();
}

uint64_t sub_1DCF12328()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1DCF1246C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FC0, &qword_1DD0E8E08);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v21 - v15;
  v17 = sub_1DD0DD9CC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  (*(v9 + 32))(v19 + v18, v12, v8);
  (*(a5 + 16))(a3, v16, sub_1DCF12908, v19, v22, a5);

  return sub_1DCF129C8(v16);
}

uint64_t sub_1DCF126D8()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF11A7C(v3, v6, v4, v5);
}

uint64_t sub_1DCF12788()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_152();

  return sub_1DCF12278(v2);
}

uint64_t sub_1DCF12930(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2 & 1, v9);
}

uint64_t sub_1DCF129C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FC0, &qword_1DD0E8E08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCF12A3C()
{
  type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_1_110(v3, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v0 + v4);
  }

  v6 = sub_1DD0DC86C();

  return v6;
}

uint64_t RelationshipLabel.asUnboundedSemanticValue.getter()
{
  type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_1_110(v3, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v0;
  if (EnumCaseMultiPayload != 1)
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    sub_1DD0DB0FC();
    OUTLINED_FUNCTION_2();
    (*(v7 + 8))(&v0[v6]);
  }

  return v5;
}

uint64_t type metadata accessor for RelationshipLabel(uint64_t a1)
{
  result = qword_1ECCA9BB8;
  if (!qword_1ECCA9BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static RelationshipLabel.from(intentsRelationship:)@<X0>(uint64_t *a2@<X8>)
{
  sub_1DD0DDFBC();
  sub_1DCB1C4D8();
  v3 = sub_1DD0DEA5C();
  v4 = sub_1DCCD2C74(v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (v10)
  {

    MEMORY[0x1E12A66E0](v4, v6, v8, v10);

    swift_bridgeObjectRelease_n();
  }

  v11 = sub_1DD0DE04C();
  v13 = v12;

  *a2 = v11;
  a2[1] = v13;
  type metadata accessor for RelationshipLabel(0);
  return swift_storeEnumTagMultiPayload();
}

char *initializeBufferWithCopyOfBuffer for RelationshipLabel(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  if (EnumCaseMultiPayload != 1)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v8 = sub_1DD0DB0FC();
    (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t destroy for RelationshipLabel(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v6 = sub_1DD0DB0FC();
    v7 = *(*(v6 - 8) + 8);

    return v7(a1 + v5, v6);
  }

  return result;
}

char *initializeWithCopy for RelationshipLabel(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  if (EnumCaseMultiPayload != 1)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v8 = sub_1DD0DB0FC();
    (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for RelationshipLabel(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCF13094(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);

    if (EnumCaseMultiPayload != 1)
    {
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v7 = sub_1DD0DB0FC();
      (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCF13094(uint64_t a1)
{
  v2 = type metadata accessor for RelationshipLabel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *initializeWithTake for RelationshipLabel(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v9 = sub_1DD0DB0FC();
    (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for RelationshipLabel(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCF13094(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v9 = sub_1DD0DB0FC();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_1DCF132D8(uint64_t a1)
{
  result = sub_1DD0DB0FC();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v3[4] = v3;
    v3[5] = &unk_1DD101818;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DCF13380(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1DCF1340C(v1, v2);
}

uint64_t sub_1DCF133C0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1DCF1340C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *sub_1DCF134B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v7[3] = 0;
  v7[2] = 0;
  v7[11] = a1;
  v7[12] = a2;
  swift_beginAccess();
  v7[2] = a3;
  v7[3] = a4;
  sub_1DCAFF9E8(a5, (v7 + 6));
  v7[4] = a6;
  v7[5] = a7;
  return v7;
}

uint64_t RenderResponseChunkAction.__allocating_init(_:nextState:renderer:debugDescription:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_1DCB17CA0(a4, v14);
  type metadata accessor for RenderResponseChunkAction();
  v12 = swift_allocObject();
  sub_1DCF134B0(sub_1DCC9E268, a1, a2, a3, v14, a5, a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v12;
}

uint64_t RenderResponseChunkAction.__allocating_init(_:nextState:renderer:debugDescription:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_1DCB17CA0(a1, v16);
  v12 = swift_allocObject();
  sub_1DCAFF9E8(v16, v12 + 16);
  sub_1DCB17CA0(a4, v15);
  type metadata accessor for RenderResponseChunkAction();
  v13 = swift_allocObject();
  sub_1DCF134B0(sub_1DCC9E1E0, v12, a2, a3, v15, a5, a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

void sub_1DCF13700(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF137A0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5)
{
  if ((a2 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a5 + 6, a5[9]);
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    sub_1DD0DCF8C();
  }

  return a3(a1);
}

uint64_t RenderResponseChunkAction.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return v0;
}

uint64_t RenderResponseChunkAction.__deallocating_deinit()
{
  RenderResponseChunkAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF1390C(uint64_t a1)
{
  result = sub_1DCF13998(&qword_1ECCA9BC8, &protocol conformance descriptor for RenderResponseChunkAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF13954(uint64_t a1)
{
  result = sub_1DCF13998(&unk_1ECCA9BD0, &protocol conformance descriptor for RenderResponseChunkAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF13998(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RenderResponseChunkAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RequestDeviceUnlockAndRestartFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RequestDeviceUnlockAndRestartFlowFrame.__allocating_init(deviceUnlockDialog:machineUtterance:deviceState:aceServiceInvoker:)(void *a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5)
{
  v10 = swift_allocObject();
  RequestDeviceUnlockAndRestartFlowFrame.init(deviceUnlockDialog:machineUtterance:deviceState:aceServiceInvoker:)(a1, a2, a3, a4, a5);
  return v10;
}

void *RequestDeviceUnlockAndRestartFlowFrame.init(deviceUnlockDialog:machineUtterance:deviceState:aceServiceInvoker:)(void *__src, uint64_t a2, uint64_t a3, void *a4, __int128 *a5)
{
  v6 = v5;
  v5[2] = 0xD00000000000001DLL;
  v5[3] = 0x80000001DD116170;
  v5[21] = MEMORY[0x1E69E7CC0];
  v5[4] = a2;
  v5[5] = a3;
  memcpy(v5 + 6, __src, 0x48uLL);
  v9 = a4[3];
  v10 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v9);
  v11 = (*(v10 + 96))(v9, v10);
  type metadata accessor for ViewFactory();
  v12 = swift_allocObject();
  *(v12 + 16) = v11 & 1;
  v6[15] = v12;
  sub_1DCB18FF0(a5, (v6 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v6;
}

uint64_t sub_1DCF13CC0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - v6;
  v8 = *MEMORY[0x1E699F738];
  sub_1DD0DB34C();
  OUTLINED_FUNCTION_2();
  (*(v9 + 104))(v7, v8);
  swift_storeEnumTagMultiPayload();
  a3(v7);
  return sub_1DCB0E9D8(v7, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

void sub_1DCF13DC0(uint64_t a1, void *a2, void (*a3)(void *))
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69C7BD8]) init];
  v6 = a2[15];
  memcpy(__dst, a2 + 6, sizeof(__dst));
  memcpy(__src, a2 + 6, sizeof(__src));
  v7 = *(*v6 + 120);
  sub_1DCBBF670(__dst, v15);
  v8 = v7(__src, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 1);
  memcpy(v15, __src, sizeof(v15));
  sub_1DCBF48A4(v15);
  v9 = sub_1DCF14304();
  sub_1DCF14684(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD0E97E0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  a2[21] = v10;
  v11 = v8;
  v12 = v5;

  __src[0] = 0;
  LOBYTE(__src[1]) = 0;
  a3(__src);
}

void sub_1DCF13F38(uint64_t a1, void (*a2)(void, void))
{
  v3 = v2;
  v5 = [objc_allocWithZone(MEMORY[0x1E69C7BD8]) init];
  v6 = *(v2 + 120);
  memcpy(__dst, (v3 + 48), sizeof(__dst));
  memcpy(__src, (v3 + 48), sizeof(__src));
  v7 = *(*v6 + 120);
  sub_1DCBBF670(__dst, v15);
  v8 = v7(__src, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 1);
  memcpy(v15, __src, sizeof(v15));
  sub_1DCBF48A4(v15);
  v9 = sub_1DCF14304();
  sub_1DCF14684(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD0E97E0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  *(v3 + 168) = v10;
  v11 = v8;
  v12 = v5;

  a2(0, 0);
}

uint64_t sub_1DCF140A4(void (*a1)(char *), uint64_t a2)
{
  v23 = a2;
  v24 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v18 - v5;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE57E18;
  sub_1DD0DE6DC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v7 = swift_allocObject();
  v20 = xmmword_1DD0E07C0;
  *(v7 + 16) = xmmword_1DD0E07C0;
  v9 = v2[4];
  v8 = v2[5];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1DCB34060();
  *(v7 + 64) = v10;
  *(v7 + 32) = v9;
  *(v7 + 40) = v8;
  swift_bridgeObjectRetain_n();
  sub_1DD0DD7EC("Submitting Unlock Device with machine utterance: %s", v18);

  v11 = v2[19];
  v12 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v11);
  v13 = *(v12 + 56);

  v13(v14, v11, v12);

  v15 = sub_1DD0DE6DC();
  v16 = swift_allocObject();
  *(v16 + 16) = v20;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = v10;
  *(v16 + 32) = v9;
  *(v16 + 40) = v8;
  sub_1DD0DD7EC("RequestDeviceUnlockAndRestartFlowFrame exiting with status complete", 67, 2, &dword_1DCAFC000, v19, v15, v16);

  type metadata accessor for SiriKitFlowFrameInput(0);
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  v24(v6);
  return sub_1DCB0E9D8(v6, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCF14304()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69C79D0]) init];
  sub_1DCB2C534(0x6E696874656D6F73, 0xE900000000000067, v0, &selRef_setRequestId_);
  v1 = [objc_allocWithZone(MEMORY[0x1E69C7898]) init];
  sub_1DCB2C534(0xD000000000000027, 0x80000001DD1231F0, v1, &selRef_setReason_);
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E69C7AB0]) init];
  v4 = sub_1DD0DDF8C();
  [v3 setUtterance_];

  [v3 setEyesFree_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD0E15D0;
  *(v5 + 32) = v3;
  v6 = v3;
  sub_1DCC6589C(v5, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DD0E97E0;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;

  return v7;
}

void *RequestDeviceUnlockAndRestartFlowFrame.deinit()
{

  v1 = v0[12];
  v2 = v0[13];

  sub_1DCB409A8(v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return v0;
}

uint64_t RequestDeviceUnlockAndRestartFlowFrame.__deallocating_deinit()
{
  RequestDeviceUnlockAndRestartFlowFrame.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF14638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  restarted = type metadata accessor for RequestDeviceUnlockAndRestartFlowFrame();

  return MEMORY[0x1EEE089D8](a1, restarted, a3);
}

void sub_1DCF14684(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v3 = sub_1DD0DE2DC();

  [a2 setSuccessCommands_];
}

unint64_t sub_1DCF14704(uint64_t a1, uint64_t a2)
{
  result = sub_1DCF1472C(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCF1472C(uint64_t a1, uint64_t a2)
{
  result = qword_1ECCA9BF8;
  if (!qword_1ECCA9BF8)
  {
    type metadata accessor for RequestDeviceUnlockAndRestartFlowFrame();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9BF8);
  }

  return result;
}

void sub_1DCF14860(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDE46630;
  sub_1DCB4E718(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  v8[3] = type metadata accessor for RefreshableDeviceState();
  v8[4] = &protocol witness table for RefreshableDeviceState;
  v8[0] = v4;
  sub_1DCB17CA0(v8, v7);
  sub_1DCB17CA0(v8, v6);
  v5 = swift_allocObject();
  sub_1DCAFF9E8(v6, v5 + 16);
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  sub_1DD0DCF8C();
}

void RequestDeviceUnlockFlowStrategy.makePromptForDeviceUnlock(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDE46630;
  sub_1DCB4E718(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  v8[3] = type metadata accessor for RefreshableDeviceState();
  v8[4] = &protocol witness table for RefreshableDeviceState;
  v8[0] = v4;
  sub_1DCB17CA0(v8, v7);
  sub_1DCB17CA0(v8, v6);
  v5 = swift_allocObject();
  sub_1DCAFF9E8(v6, v5 + 16);
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF14AB8(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v88 = a4;
  v89 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v83 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v82 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v82 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v82 - v19;
  v87 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v87, v21);
  v23 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v30 = v82 - v29;
  v31 = *a1;
  v32 = *(a1 + 24);
  v105 = *(a1 + 8);
  v106 = v32;
  v33 = *(a1 + 56);
  v107 = *(a1 + 40);
  v108 = v33;
  v34 = *(a1 + 72);
  v109 = v105;
  v110 = v32;
  v111 = v107;
  v112 = v33;
  v85 = v34;
  if (v34)
  {
    v91 = v28;
    v95 = 0;
    *&v96 = 0xE000000000000000;
    sub_1DD0DEC1C();

    v95 = 0xD000000000000030;
    *&v96 = 0x80000001DD123400;
    swift_getErrorValue();
    v68 = sub_1DD0DF18C();
    MEMORY[0x1E12A6780](v68);

    v69 = v95;
    v70 = v96;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v71 = sub_1DD0DD8FC();
    v72 = __swift_project_value_buffer(v71, qword_1EDE57E00);
    v73 = *(v71 - 8);
    (*(v73 + 16))(v30, v72, v71);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v71);
    v74 = v91;
    sub_1DCB09910(v30, v91, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v74, 1, v71) == 1)
    {
      sub_1DCB0E9D8(v91, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {

      v75 = sub_1DD0DD8EC();
      v76 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v95 = v90;
        *v77 = 136315650;
        v78 = sub_1DD0DEC3C();
        v80 = sub_1DCB10E9C(v78, v79, &v95);

        *(v77 + 4) = v80;
        *(v77 + 12) = 2048;
        *(v77 + 14) = 48;
        *(v77 + 22) = 2080;
        *(v77 + 24) = sub_1DCB10E9C(v69, v70, &v95);
        _os_log_impl(&dword_1DCAFC000, v75, v76, "FatalError at %s:%lu - %s", v77, 0x20u);
        v81 = v90;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v81, -1, -1);
        MEMORY[0x1E12A8390](v77, -1, -1);
      }

      (*(v73 + 8))(v91, v71);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v69, v70);
  }

  v35 = a2[3];
  v36 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v35);
  v37 = (*(v36 + 96))(v35, v36);
  v38 = type metadata accessor for NLContextUpdate(0);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v38);
  type metadata accessor for ViewFactory();
  memset(v103, 0, sizeof(v103));
  v104 = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = v37 & 1;
  v86 = v31;
  v95 = v31;
  v96 = v109;
  v97 = v110;
  v98 = v111;
  v99 = v112;
  v40 = MEMORY[0x1E69E7CC0];
  v82[1] = v39;
  v43 = sub_1DD0BEA00(&v95, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 1, v41, v42);
  v84 = v20;
  v44 = v20;
  v45 = v43;
  sub_1DCB09910(v44, v17, &unk_1ECCA3270, &qword_1DD0E0F70);
  sub_1DCB09910(v103, v102, &unk_1ECCA3280, &unk_1DD0E23D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1DD0E15D0;
  v90 = v17;
  v91 = v45;
  *(v46 + 32) = v45;
  v47 = v46;
  v101 = v40;
  sub_1DCB09910(v17, v13, &unk_1ECCA3270, &qword_1DD0E0F70);
  v48 = v38;
  if (__swift_getEnumTagSinglePayload(v13, 1, v38) == 1)
  {
    v49 = v91;
    sub_1DCB0E9D8(v13, &unk_1ECCA3270, &qword_1DD0E0F70);
    v51 = v83;
    v50 = v84;
  }

  else
  {
    v95 = 0;
    v52 = v91;
    NLContextUpdate.doConvertToAceContextUpdate(options:)(&v95);
    v53 = sub_1DCB42D14(v13, type metadata accessor for NLContextUpdate);
    MEMORY[0x1E12A6920](v53);
    v51 = v83;
    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
    v50 = v84;
  }

  v54 = v90;
  sub_1DCB09910(v90, v51, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (__swift_getEnumTagSinglePayload(v51, 1, v48) == 1)
  {
    sub_1DCB0E9D8(v51, &unk_1ECCA3270, &qword_1DD0E0F70);
    v55 = v86;
  }

  else
  {
    NLContextUpdate.doConvertToServerContextUpdate()();
    v56 = sub_1DCB42D14(v51, type metadata accessor for NLContextUpdate);
    MEMORY[0x1E12A6920](v56);
    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
    v55 = v86;
    v54 = v90;
  }

  sub_1DCBB920C(v47);
  sub_1DCBB920C(MEMORY[0x1E69E7CC0]);

  sub_1DCB0E9D8(v103, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB0E9D8(v50, &unk_1ECCA3270, &qword_1DD0E0F70);
  v57 = v101;
  v58 = v87;
  sub_1DCBB6C68(v54, &v23[*(v87 + 28)]);
  v59 = v58[9];
  v60 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(&v23[v59], 1, 1, v60);
  v61 = v58[8];
  v62 = *MEMORY[0x1E69D0678];
  v63 = sub_1DD0DD15C();
  (*(*(v63 - 8) + 104))(&v23[v61], v62, v63);
  *(v23 + 15) = 0;
  *(v23 + 104) = 0u;
  *(v23 + 88) = 0u;
  sub_1DCB6C5E8(v102, (v23 + 88));
  v23[v58[10]] = 0;
  *v23 = v57;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 9) = 0;
  *(v23 + 8) = 0u;
  v23[80] = 3;
  memcpy(v94, v23 + 8, 0x49uLL);
  v95 = v55;
  v96 = v105;
  v97 = v106;
  v98 = v107;
  v99 = v108;
  v100 = v85;
  sub_1DCBBF670(&v95, v92);
  sub_1DCB431E0(v94);
  *(v23 + 1) = v55;
  v64 = v110;
  *(v23 + 1) = v109;
  *(v23 + 2) = v64;
  v65 = v112;
  *(v23 + 3) = v111;
  *(v23 + 4) = v65;
  v23[80] = 0;
  v92[3] = v58;
  v92[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v92);
  sub_1DCB6FF74(v23, boxed_opaque_existential_1Tm);
  v93 = 0;
  v89(v92);
  sub_1DCB42D14(v23, type metadata accessor for AceOutput);
  return sub_1DCB0E9D8(v92, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

void *RequestDeviceUnlockFlow.exitValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1DCB8D4CC(v1, *(v0 + 24));
  return v1;
}

void RequestDeviceUnlockFlow.exitValue.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  sub_1DCB79378(v5, v6);
}

uint64_t RequestDeviceUnlockFlow.__allocating_init(strategy:deviceState:metricsState:outputPublisher:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  RequestDeviceUnlockFlow.init(strategy:deviceState:metricsState:outputPublisher:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1DCF15610(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  *(v4 + 32) = a1;
  sub_1DCB17CA0(a2, v4 + 40);
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  sub_1DCDD5204(v9, v10);
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  v13 = (*(v12 + 16))(v11, v12);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v14)
  {
    v16 = v14;
  }

  *(v5 + 80) = v15;
  *(v5 + 88) = v16;
  sub_1DCB17CA0(a4, v5 + 96);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v17 = CommandFailure.init(errorCode:reason:)(-1, 0x656C706D6F636E49, 0xEA00000000006574);
  sub_1DCC7AE30();
  v18 = swift_allocError();
  *v19 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v5 + 16) = v18;
  *(v5 + 24) = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v5;
}

uint64_t RequestDeviceUnlockFlow.init(strategy:deviceState:metricsState:outputPublisher:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = *(*v4 + 80);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v4 + *(*v4 + 104), a1, v10);
  OUTLINED_FUNCTION_66();
  sub_1DCB17CA0(a2, v4 + *(v12 + 112));
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  sub_1DCDD5204(v13, v14);
  v15 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v15);
  v17 = (*(v16 + 16))(v15, v16);
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v18)
  {
    v20 = v18;
  }

  v21 = (v5 + *(*v5 + 120));
  *v21 = v19;
  v21[1] = v20;
  sub_1DCB17CA0(a4, v5 + *(*v5 + 128));
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v22 = CommandFailure.init(errorCode:reason:)(-1, 0x656C706D6F636E49, 0xEA00000000006574);
  sub_1DCC7AE30();
  v23 = swift_allocError();
  *v24 = v22;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  (*(v11 + 8))(a1, v10);
  *(v5 + 16) = v23;
  *(v5 + 24) = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v5;
}

uint64_t RequestDeviceUnlockFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF15A1C, 0, 0);
}

void sub_1DCF15B44(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - v7;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDE57E18;
  v10 = sub_1DD0DE6DC();
  sub_1DD0DD7EC("RequestDeviceUnlockFlow sending request to unlock the device.", 61, 2, &dword_1DCAFC000, v9, v10, MEMORY[0x1E69E7CC0]);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = *(v3 + 80);
  *(v12 + 3) = *(v3 + 88);
  *(v12 + 4) = v1;
  (*(v5 + 32))(&v12[v11], v8, v4);
  sub_1DD0DCF8C();
}

void sub_1DCF15D68(uint64_t a1, char *a2, uint64_t a3)
{
  v84 = a3;
  v80 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v83 = *(v5 - 8);
  v81 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v82 = v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v78 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v77 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v77 - v17;
  v19 = type metadata accessor for AceOutput(0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = v77 - v25;
  v27 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB09910(a1, v92, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v93 != 1)
  {
    v79 = v5;
    sub_1DCAFF9E8(v92, v91);
    v90 = MEMORY[0x1E69E7CC0];
    sub_1DCB17CA0(v91, &v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9C88, &qword_1DD101B90);
    if (swift_dynamicCast())
    {
      sub_1DCB0E9D8(v85, &qword_1ECCA9C90, &qword_1DD101B98);
    }

    else
    {
      v86 = 0;
      memset(v85, 0, sizeof(v85));
      sub_1DCB0E9D8(v85, &qword_1ECCA9C90, &qword_1DD101B98);
      sub_1DCB17CA0(v91, &v87);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
        sub_1DCB0E9D8(v18, &qword_1ECCA1BD0, &qword_1DD0EB860);
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v66 = sub_1DD0DD8FC();
        v67 = __swift_project_value_buffer(v66, qword_1EDE57E00);
        v68 = *(v66 - 8);
        (*(v68 + 16))(v14, v67, v66);
        __swift_storeEnumTagSinglePayload(v14, 0, 1, v66);
        v69 = v78;
        sub_1DCB09910(v14, v78, &unk_1ECCA7470, &qword_1DD0E16E0);
        if (__swift_getEnumTagSinglePayload(v69, 1, v66) == 1)
        {
          sub_1DCB0E9D8(v78, &unk_1ECCA7470, &qword_1DD0E16E0);
        }

        else
        {
          v70 = sub_1DD0DD8EC();
          v71 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *&v87 = v73;
            *v72 = 136315650;
            v74 = sub_1DD0DEC3C();
            v76 = sub_1DCB10E9C(v74, v75, &v87);

            *(v72 + 4) = v76;
            *(v72 + 12) = 2048;
            *(v72 + 14) = 107;
            *(v72 + 22) = 2080;
            *(v72 + 24) = sub_1DCB10E9C(0xD000000000000044, 0x80000001DD1232E0, &v87);
            _os_log_impl(&dword_1DCAFC000, v70, v71, "FatalError at %s:%lu - %s", v72, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12A8390](v73, -1, -1);
            MEMORY[0x1E12A8390](v72, -1, -1);
          }

          (*(v68 + 8))(v78, v66);
        }

        static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000044, 0x80000001DD1232E0);
      }

      __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
      sub_1DCB6DF70(v18, v26);

      sub_1DCBB920C(v38);
      sub_1DCB42D14(v26, type metadata accessor for AceOutput);
    }

    sub_1DCF172AC();
    v39 = &a2[*(*a2 + 120)];
    v40 = *v39;
    v41 = v39[1];
    v42 = *(v80 + 88);
    v43 = *(v42 + 8);
    v78 = *(v80 + 80);
    v80 = v42;
    v44 = v43();
    v46 = sub_1DCF78A20(v40, v41, v44, v45, &a2[*(*a2 + 112)]);

    v47 = v46;
    MEMORY[0x1E12A6920]();
    v48 = v84;
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
    v49 = v90;
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    v50 = v19[7];
    v51 = type metadata accessor for NLContextUpdate(0);
    v77[2] = v47;
    __swift_storeEnumTagSinglePayload(&v23[v50], 1, 1, v51);
    v52 = v19[9];
    v53 = sub_1DD0DD10C();
    __swift_storeEnumTagSinglePayload(&v23[v52], 1, 1, v53);
    v54 = v19[8];
    v55 = *MEMORY[0x1E69D0678];
    v56 = sub_1DD0DD15C();
    (*(*(v56 - 8) + 104))(&v23[v54], v55, v56);
    *(v23 + 15) = 0;
    *(v23 + 104) = 0u;
    *(v23 + 88) = 0u;
    sub_1DCB6C5E8(&v87, (v23 + 88));
    v23[v19[10]] = 1;
    *v23 = v49;
    *(v23 + 8) = 0u;
    *(v23 + 24) = 0u;
    *(v23 + 40) = 0u;
    *(v23 + 56) = 0u;
    *(v23 + 9) = 0;
    v23[80] = 3;
    v77[1] = __swift_project_boxed_opaque_existential_1(&a2[*(*a2 + 128)], *&a2[*(*a2 + 128) + 24]);
    *(&v88 + 1) = v19;
    v89 = &protocol witness table for AceOutput;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v87);
    sub_1DCB6FF74(v23, boxed_opaque_existential_1Tm);
    v58 = v83;
    v59 = v82;
    v60 = v48;
    v61 = v79;
    (*(v83 + 16))(v82, v60, v79);
    sub_1DCB17CA0(v91, v85);
    v62 = (*(v58 + 80) + 40) & ~*(v58 + 80);
    v63 = (v81 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    v65 = v80;
    *(v64 + 2) = v78;
    *(v64 + 3) = v65;
    *(v64 + 4) = a2;
    (*(v58 + 32))(&v64[v62], v59, v61);
    sub_1DCAFF9E8(v85, &v64[v63]);
    sub_1DD0DCF8C();
  }

  v31 = *&v92[0];
  swift_beginAccess();
  v32 = *(a2 + 2);
  v33 = a2[24];
  *(a2 + 2) = v31;
  a2[24] = 1;
  v34 = v31;
  sub_1DCB79378(v32, v33);
  v35 = *(v27 + 36);
  v36 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(&v30[v35], 1, 1, v36);
  *v30 = 1;
  *(v30 + 1) = 0;
  v30[16] = 0;
  *(v30 + 4) = 0;
  *(v30 + 5) = 0;
  *(v30 + 3) = 0;
  v30[48] = -4;
  v37 = &v30[*(v27 + 40)];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  sub_1DD0DE46C();
}

uint64_t sub_1DCF16840(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DD0E07C0;
    swift_getErrorValue();
    v14 = sub_1DD0DF18C();
    v16 = v15;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1DCB34060();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_1DD0DD7EC("Unexpected error while publishing output: %s", v30);

    swift_beginAccess();
    v17 = *(a3 + 16);
    v18 = *(a3 + 24);
    *(a3 + 16) = a1;
    *(a3 + 24) = 1;
    v19 = a1;
    sub_1DCB79378(v17, v18);
  }

  else
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDE57E18;
    v21 = sub_1DD0DE6DC();
    sub_1DD0DD7EC("Request to unlock device sent.", 30, 2, &dword_1DCAFC000, v20, v21, MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    v22 = *(a3 + 16);
    v23 = *(a3 + 24);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    sub_1DCB79378(v22, v23);
    v24 = a5[3];
    __swift_project_boxed_opaque_existential_1(a5, v24);
    if (sub_1DCB651D0(v24))
    {
      if (qword_1EDE4F6A8 != -1)
      {
        swift_once();
      }

      type metadata accessor for SiriKitEvent(0);
      v33 = 32;
      v32 = 29;
      sub_1DCB17CA0(a5, v31);
      v25 = swift_allocObject();
      sub_1DCAFF9E8(v31, v25 + 16);
      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    }
  }

  v26 = *(v9 + 36);
  v27 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(&v12[v26], 1, 1, v27);
  *v12 = 1;
  *(v12 + 1) = 0;
  v12[16] = 0;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  *(v12 + 3) = 0;
  v12[48] = -4;
  v28 = &v12[*(v9 + 40)];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  return sub_1DD0DE46C();
}

uint64_t sub_1DCF16C04(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  (*(v4 + 8))(v6, v3, v4);
  swift_beginAccess();
  sub_1DCB6C5E8(v6, v2 + 168);
  return swift_endAccess();
}

uint64_t *RequestDeviceUnlockFlow.deinit()
{
  v1 = *v0;
  sub_1DCB79378(v0[2], *(v0 + 24));
  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 104));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 128)));
  return v0;
}

uint64_t RequestDeviceUnlockFlow.__deallocating_deinit()
{
  RequestDeviceUnlockFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF16E50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB193FC;

  return RequestDeviceUnlockFlow.execute()(a1);
}

void *sub_1DCF16EEC@<X0>(uint64_t a1@<X8>)
{
  result = RequestDeviceUnlockFlow.exitValue.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t static SimpleRequestDeviceUnlockFlowHelper.makeUnlockFlow(deviceState:metricsState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SimpleRequestDeviceUnlockFlowHelper.SimpleRequestDeviceUnlockFlowStrategy();
  v6 = swift_allocObject();
  sub_1DCB17CA0(a1, v10);
  sub_1DCB17CA0(a2, v9);
  sub_1DCB17CA0(a3, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA9C00, &qword_1DD1019F0);
  swift_allocObject();
  return sub_1DCF15610(v6, v10, v9, v8);
}

uint64_t sub_1DCF17004(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCF1706C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

_BYTE *storeEnumTagSinglePayload for SimpleRequestDeviceUnlockFlowHelper(_BYTE *result, int a2, int a3)
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

void sub_1DCF1722C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970) - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1DCF15D68(a1, v4, v5);
}

unint64_t sub_1DCF172AC()
{
  result = qword_1ECCAB210;
  if (!qword_1ECCAB210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCAB210);
  }

  return result;
}

uint64_t sub_1DCF172F0(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v2 + 32);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DCF16840(a1, a2 & 1, v7, v2 + v6, v8);
}

uint64_t sub_1DCF17518(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DCF17558()
{
  v0 = OUTLINED_FUNCTION_65_1();
  sub_1DCDE004C();
  return v0;
}

void sub_1DCF1758C()
{
  qword_1ECCA9C98 = 0;
  qword_1ECCA9CB8 = &type metadata for FeatureFlagDefinitions.Core;
  unk_1ECCA9CC0 = &off_1F585CB38;
  byte_1ECCA9CA0 = 0;
}

uint64_t sub_1DCF175DC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDB478();
}

uint64_t sub_1DCF17688()
{
  sub_1DCF17668();
  OUTLINED_FUNCTION_88_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF176D0(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DCF1777C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF175DC();
}

id sub_1DCF17814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(*v4 + 128) + 16);
  if (v5 == 3)
  {
    v10 = OUTLINED_FUNCTION_50_18();

    return v10;
  }

  else if (v5 == 4)
  {
    v6 = OUTLINED_FUNCTION_51_26();

    return sub_1DCBF9BE8(v6, v7, v8);
  }

  else
  {
    v11 = type metadata accessor for ServerHandledTCCFlow.TCCFlowError(0, *(*v4 + 80), *(*v4 + 88), a4);
    v12 = OUTLINED_FUNCTION_32_27(v11);
    v13 = OUTLINED_FUNCTION_64_16(v12);
    v15 = OUTLINED_FUNCTION_42_26(v13, v14);

    return sub_1DCF211E0(v15, v16, v17);
  }
}

uint64_t sub_1DCF17918()
{
  OUTLINED_FUNCTION_40_26();
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_78_0();
  sub_1DCF1795C();
  return v0;
}

uint64_t sub_1DCF1795C()
{
  OUTLINED_FUNCTION_40_26();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_50();
  (*(v4 + 32))(v1 + v5);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, v1 + *(v6 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v2, v1 + *(v7 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v0, v1 + *(v8 + 120));
  OUTLINED_FUNCTION_66();
  v10 = v1 + *(v9 + 128);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 5;
  return v1;
}

uint64_t sub_1DCF17A48()
{
  v1 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "ServerHandledTCCFlow received input. Since rejections and cancellations are handled on the server we assume the user confirmed. Moving to completion.", v5, 2u);
    OUTLINED_FUNCTION_80();
  }

  v6 = (v1 + *(*v1 + 128));
  *v6 = 0;
  v6[1] = 0;
  OUTLINED_FUNCTION_61_21(v6);
  sub_1DCF212A0(v7, v8, v9);
  return 1;
}

uint64_t sub_1DCF17B24()
{
  OUTLINED_FUNCTION_42();
  v1[44] = v2;
  v1[45] = v0;
  OUTLINED_FUNCTION_104();
  v1[46] = v3;
  v4 = type metadata accessor for SiriKitEventPayload(0);
  v1[47] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[48] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_104();
  v1[49] = *(v5 + 80);
  OUTLINED_FUNCTION_0_1();
  v1[50] = v6;
  v1[51] = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF17C1C()
{
  v1 = v0[45];
  v2 = *(*v1 + 128);
  v0[52] = v2;
  v3 = *(v1 + v2);
  v0[53] = v3;
  v0[54] = *(v1 + v2 + 8);
  switch(*(v1 + v2 + 16))
  {
    case 0:
      OUTLINED_FUNCTION_70_13();
      v4 = OUTLINED_FUNCTION_11_60();
      sub_1DCF211E0(v4, v5, v6);
      sub_1DD0DCF8C();
    case 2:
      v20 = OUTLINED_FUNCTION_20();
      sub_1DCF211E0(v20, v21, 2);
      sub_1DD0DCF8C();
    case 3:
      v7 = v3;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v8 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
      v9 = sub_1DD0DD8EC();
      v10 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_61_1(v10))
      {
        v11 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_47_0(v11);
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v12, v13, v14, v15, v16, 2u);
        OUTLINED_FUNCTION_37();
      }

      v17 = OUTLINED_FUNCTION_20();
      v19 = 3;
      break;
    case 4:
      v22 = OUTLINED_FUNCTION_20();
      sub_1DCBF9BE8(v22, v23, v24);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v25 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
      v9 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_61_1(v26))
      {
        v27 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_47_0(v27);
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v28, v29, v30, v31, v32, 2u);
        OUTLINED_FUNCTION_37();
      }

      v17 = OUTLINED_FUNCTION_20();
      v19 = 4;
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v33 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v33, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  sub_1DCF212A0(v17, v18, v19);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_75_14();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCF18678()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 448) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v3 + 456) = v10;
    *v10 = v11;
    v10[1] = sub_1DCF187CC;

    return sub_1DCF19D70(v3 + 16);
  }
}

uint64_t sub_1DCF187CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 464) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF188C4()
{
  v2 = *(v1 + 40);
  if (OUTLINED_FUNCTION_46_21((v1 + 16)))
  {
    OUTLINED_FUNCTION_79_15();
    v4 = [v3 typeName];
    sub_1DD0DDFBC();

    *(v1 + 256) = 0u;
    *(v1 + 272) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0;
    *(v1 + 56) = 0u;
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_72_18();

  static ExecuteResponse.ongoing(requireInput:)(1, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  OUTLINED_FUNCTION_75_14();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCF18B78()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB16D50(v2 + 56, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v2 + 256, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF18CC4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_72_18();

  static ExecuteResponse.ongoing(requireInput:)(1, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  OUTLINED_FUNCTION_75_14();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCF18D4C()
{
  OUTLINED_FUNCTION_125();
  v1 = v0[56];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[53];
  v7 = v0[54];
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_151();
    v10 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_92_12(4.8149e-34);
    v11 = sub_1DD0DF18C();
    v19 = OUTLINED_FUNCTION_200(v11, v12, v13, v14, v15, v16, v17, v18, v10);

    *(v9 + 4) = v19;
    OUTLINED_FUNCTION_94_8(&dword_1DCAFC000, v20, v21, "Unable to publish output due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  sub_1DCF212A0(v8, v7, 2);

  OUTLINED_FUNCTION_47_20();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_75_14();

  OUTLINED_FUNCTION_29();

  return v22();
}

uint64_t sub_1DCF18ECC()
{
  OUTLINED_FUNCTION_125();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[58];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[53];
  v7 = v0[54];
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_151();
    v10 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_92_12(4.8149e-34);
    v11 = sub_1DD0DF18C();
    v19 = OUTLINED_FUNCTION_200(v11, v12, v13, v14, v15, v16, v17, v18, v10);

    *(v9 + 4) = v19;
    OUTLINED_FUNCTION_94_8(&dword_1DCAFC000, v20, v21, "Unable to publish output due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  sub_1DCF212A0(v8, v7, 2);

  OUTLINED_FUNCTION_47_20();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_75_14();

  OUTLINED_FUNCTION_29();

  return v22();
}

void sub_1DCF19110(void *a1, char a2)
{
  v3 = *v2;
  v4 = v2 + *(*v2 + 128);
  if (*(v4 + 16) != 5 || (!*(v4 + 8) ? (v5 = *v4 == 1) : (v5 = 0), !v5))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v6 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v6, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (a2)
  {
    v8 = a1;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    v10 = a1;
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1DD0DF18C();
      v17 = sub_1DCB10E9C(v15, v16, &v31);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "ServerHandledTCCFlow received an unexpected error while trying to unlock the device: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    v18 = *v4;
    v19 = *(v4 + 8);
    *v4 = a1;
    *(v4 + 8) = 0;
    v20 = *(v4 + 16);
    *(v4 + 16) = 3;
    sub_1DCF212A0(v18, v19, v20);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DCAFC000, v22, v23, "ServerHandledTCCFlow handed session off to companion device.", v24, 2u);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }

    type metadata accessor for ServerHandledTCCFlow.TCCFlowError(0, *(v3 + 80), *(v3 + 88), v25);
    swift_getWitnessTable();
    v26 = swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = -1;
    v29 = *v4;
    v28 = *(v4 + 8);
    *v4 = v26;
    *(v4 + 8) = 1;
    v30 = *(v4 + 16);
    *(v4 + 16) = 3;

    sub_1DCF212A0(v29, v28, v30);
  }
}

void sub_1DCF19638(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v4);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v8 + 32))(v13 + v11, v10, a3);
  *(v13 + v12) = a1;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  DynamicType = swift_getDynamicType();
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  swift_allocObject();
  sub_1DD01C898(sub_1DCF1EE90, 0, sub_1DCD799A4, 0, &unk_1DD1020D0, v13, DynamicType);
  sub_1DD0DCF8C();
}

void sub_1DCF19878(void *a1, char a2)
{
  v3 = v2 + *(*v2 + 128);
  if (*(v3 + 16) != 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v4 = *(v3 + 8);
  if ((a2 & 1) == 0)
  {
    sub_1DD0DCF8C();
  }

  sub_1DCF211E0(*v3, *(v3 + 8), 1);
  sub_1DCB8D4CC(a1, 1);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  v7 = a1;
  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6EC();
  sub_1DCB79378(a1, 1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v8, v9, "ServerHandledTCCFlow received an unexpected error while trying to unlock the device: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A8390](v11, -1, -1);
    MEMORY[0x1E12A8390](v10, -1, -1);
  }

  v15 = *v3;
  v16 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = 0;
  v17 = *(v3 + 16);
  *(v3 + 16) = 3;
  sub_1DCF212A0(v15, v16, v17);
}

uint64_t sub_1DCF19D70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF19D90, 0, 0);
}

uint64_t sub_1DCF19D90()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[4] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v10 = v0[3];

  __swift_project_boxed_opaque_existential_1((v10 + *(*v10 + 120)), *(v10 + *(*v10 + 120) + 24));
  OUTLINED_FUNCTION_24_0();
  v15 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_1DCF19F44;
  v13 = OUTLINED_FUNCTION_10_66(v0[2]);

  return v15(v13);
}

uint64_t sub_1DCF19F44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_29();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1DCF1A05C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_29_29();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_13_65(*(v3 + 104));
  OUTLINED_FUNCTION_13_65(*(v4 + 112));
  OUTLINED_FUNCTION_13_65(*(v5 + 120));
  sub_1DCF212A0(*(v0 + *(v6 + 128)), *(v0 + *(v6 + 128) + 8), *(v0 + *(v6 + 128) + 16));
  return v0;
}

uint64_t sub_1DCF1A13C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DCF1A23C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF17B24();
}

id sub_1DCF1A2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(*v4 + 136) + 16);
  if (v5 == 4)
  {
    v10 = OUTLINED_FUNCTION_50_18();

    return v10;
  }

  else if (v5 == 5)
  {
    v6 = OUTLINED_FUNCTION_51_26();

    return sub_1DCBF9BE8(v6, v7, v8);
  }

  else
  {
    type metadata accessor for ClientHandledTCCFlow.TCCFlowError(0, *(*v4 + 80), *(*v4 + 88), a4);
    OUTLINED_FUNCTION_1_111();
    WitnessTable = swift_getWitnessTable();
    v12 = OUTLINED_FUNCTION_64_16(WitnessTable);
    v14 = OUTLINED_FUNCTION_42_26(v12, v13);

    return sub_1DCF20F60(v14, v15, v16);
  }
}

uint64_t sub_1DCF1A40C()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_65_1();
  sub_1DCF1A464();
  return v0;
}

uint64_t sub_1DCF1A464()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_50();
  (*(v5 + 32))(v1 + v6);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v4, v1 + *(v7 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, v1 + *(v8 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v2, v1 + *(v9 + 120));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v0, v1 + *(v10 + 128));
  OUTLINED_FUNCTION_66();
  v12 = v1 + *(v11 + 136);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 6;
  return v1;
}

uint64_t sub_1DCF1A5CC()
{
  OUTLINED_FUNCTION_42();
  v1[46] = v2;
  v1[47] = v0;
  OUTLINED_FUNCTION_104();
  v1[48] = v3;
  v4 = type metadata accessor for SiriKitEventPayload(0);
  v1[49] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[50] = OUTLINED_FUNCTION_38();
  v1[51] = sub_1DD0DB04C();
  OUTLINED_FUNCTION_24_0();
  v1[52] = v5;
  v1[53] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_104();
  v1[54] = *(v6 + 80);
  OUTLINED_FUNCTION_0_1();
  v1[55] = v7;
  v1[56] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF1A714()
{
  v63 = v0;
  v1 = v0[47];
  v2 = *(*v1 + 136);
  v0[57] = v2;
  v3 = *(v1 + v2);
  v0[58] = v3;
  v4 = *(v1 + v2 + 8);
  v0[59] = v4;
  switch(*(v1 + v2 + 16))
  {
    case 0:
      v5 = OUTLINED_FUNCTION_11_60();
      sub_1DCF20F60(v5, v6, v7);
      sub_1DD0DCF8C();
    case 2:
      sub_1DD0DCF8C();
    case 3:
      v9 = OUTLINED_FUNCTION_20();
      sub_1DCF20F60(v9, v10, 3);
      sub_1DD0DCF8C();
    case 4:
      v11 = v3;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v12 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v12, qword_1EDE57E00);
      v13 = sub_1DD0DD8EC();
      v14 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_61_1(v14))
      {
        v15 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_47_0(v15);
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v16, v17, v18, v19, v20, 2u);
        OUTLINED_FUNCTION_37();
      }

      v21 = OUTLINED_FUNCTION_20();
      sub_1DCF21020(v21, v22, 4);

      break;
    case 5:
      v23 = OUTLINED_FUNCTION_19_41();
      sub_1DCF20F60(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_20();
      sub_1DCBF9BE8(v26, v27, SBYTE1(v4));
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v28 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v28, qword_1EDE57E00);
      v29 = OUTLINED_FUNCTION_20();
      sub_1DCBF9BE8(v29, v30, SBYTE1(v4));
      v31 = sub_1DD0DD8EC();
      v32 = sub_1DD0DE6DC();
      v33 = OUTLINED_FUNCTION_19_41();
      sub_1DCF21020(v33, v34, v35);
      if (os_log_type_enabled(v31, v32))
      {
        v36 = OUTLINED_FUNCTION_151();
        v37 = OUTLINED_FUNCTION_83();
        v62 = v37;
        *v36 = 136315138;
        v38 = OUTLINED_FUNCTION_20();
        v40 = sub_1DCC32D8C(v38, v39);
        v42 = sub_1DCB10E9C(v40, v41, &v62);

        *(v36 + 4) = v42;
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_37();
        v48 = OUTLINED_FUNCTION_19_41();
        sub_1DCF21020(v48, v49, v50);
        v51 = OUTLINED_FUNCTION_19_41();
        sub_1DCF21020(v51, v52, v53);
      }

      else
      {
        v54 = OUTLINED_FUNCTION_19_41();
        sub_1DCF21020(v54, v55, v56);

        v57 = OUTLINED_FUNCTION_19_41();
        sub_1DCF21020(v57, v58, v59);
      }

      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v8 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_74_17();

  OUTLINED_FUNCTION_29();

  return v60();
}

uint64_t sub_1DCF1B8C8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB16D50(v2 + 16, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v2 + 296, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF1BA14()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_79_15();
  __swift_project_boxed_opaque_existential_1((v2 + *(v1 + 104)), *(v2 + *(v1 + 104) + 24));
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  sub_1DCF21AB8();
  *v3 = v0;
  v3[1] = sub_1DCF1BAF0;

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCF1BAF0()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v5[65] = v0;

  if (v0)
  {
    v10 = v5[58];
    v9 = v5[59];
    v11 = swift_task_alloc();
    v5[66] = v11;
    *v11 = v7;
    v11[1] = sub_1DCF1BD84;

    return sub_1DCF1D078(v10, v9, v0);
  }

  else
  {

    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1DCF1BC78()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v2))
  {
    v3 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v3);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_62();
  }

  v9 = *(v0 + 472);
  v10 = *(v0 + 480);
  v11 = *(v0 + 376) + *(v0 + 456);
  sub_1DCF21020(*(v0 + 464), v9, 3);

  v12 = *v11;
  v13 = *(v11 + 8);
  *v11 = 0;
  *(v11 + 8) = 0;
  v14 = *(v11 + 16);
  *(v11 + 16) = 5;
  sub_1DCF21020(v12, v13, v14);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_74_17();

  OUTLINED_FUNCTION_29();

  return v15();
}

uint64_t sub_1DCF1BD84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF1BE68()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);

  sub_1DCF21020(v3, v1, 3);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_74_17();

  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DCF1BF78(void *a1, char a2)
{
  v3 = *v2;
  v4 = v2 + *(*v2 + 136);
  if (*(v4 + 16) != 6 || (!*(v4 + 8) ? (v5 = *v4 == 1) : (v5 = 0), !v5))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v6 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v6, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (a2)
  {
    v8 = a1;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    v10 = a1;
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1DD0DF18C();
      v17 = sub_1DCB10E9C(v15, v16, &v31);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "ClientHandledTCCFlow received an unexpected error while trying to unlock the device: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    v18 = *v4;
    v19 = *(v4 + 8);
    *v4 = a1;
    *(v4 + 8) = 0;
    v20 = *(v4 + 16);
    *(v4 + 16) = 4;
    sub_1DCF21020(v18, v19, v20);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DCAFC000, v22, v23, "ClientHandledTCCFlow handed session off to companion device.", v24, 2u);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }

    type metadata accessor for ClientHandledTCCFlow.TCCFlowError(0, *(v3 + 80), *(v3 + 88), v25);
    swift_getWitnessTable();
    v26 = swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = -64;
    v29 = *v4;
    v28 = *(v4 + 8);
    *v4 = v26;
    *(v4 + 8) = 1;
    v30 = *(v4 + 16);
    *(v4 + 16) = 4;

    sub_1DCF21020(v29, v28, v30);
  }
}

void sub_1DCF1C508(void *a1, char a2)
{
  v3 = v2 + *(*v2 + 136);
  if (*(v3 + 16) != 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v4 = *(v3 + 8);
  if ((a2 & 1) == 0)
  {
    sub_1DD0DCF8C();
  }

  sub_1DCF20F60(*v3, *(v3 + 8), 1);
  sub_1DCB8D4CC(a1, 1);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  v7 = a1;
  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6EC();
  sub_1DCB79378(a1, 1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v8, v9, "ClientHandledTCCFlow received an unexpected error while trying to unlock the device: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A8390](v11, -1, -1);
    MEMORY[0x1E12A8390](v10, -1, -1);
  }

  v15 = *v3;
  v16 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = 0;
  v17 = *(v3 + 16);
  *(v3 + 16) = 4;
  sub_1DCF21020(v15, v16, v17);
}

uint64_t sub_1DCF1CA00()
{
  OUTLINED_FUNCTION_40_26();
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_78_0();
  sub_1DCF1F4DC();
  return v0;
}

void sub_1DCF1CA44(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v57 = a3;
  v58 = a4;
  v4 = a2;
  v6 = *a2;
  v7 = *(*a2 + 88);
  v60 = *(v6 + 80);
  v61 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v62 = &v54 - v11;
  v14 = type metadata accessor for PromptResult(0, AssociatedTypeWitness, v12, v13);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v64 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v54 - v20;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v22 = sub_1DD0DD8FC();
  v23 = __swift_project_value_buffer(v22, qword_1EDE57E00);
  v24 = *(v15 + 16);
  v65 = a1;
  v63 = v24;
  v24(v21, a1, v14);
  v59 = v23;
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v55 = AssociatedTypeWitness;
    v28 = v27;
    v29 = swift_slowAlloc();
    v56 = v4;
    v30 = v29;
    v66 = v29;
    *v28 = 136315138;
    v31 = PromptResult.description.getter(v14);
    v54 = v9;
    v33 = v32;
    (*(v15 + 8))(v21, v14);
    v34 = sub_1DCB10E9C(v31, v33, &v66);
    v9 = v54;

    *(v28 + 4) = v34;
    _os_log_impl(&dword_1DCAFC000, v25, v26, "ClientHandledTCCFlow got prompt response: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v35 = v30;
    v4 = v56;
    MEMORY[0x1E12A8390](v35, -1, -1);
    v36 = v28;
    AssociatedTypeWitness = v55;
    MEMORY[0x1E12A8390](v36, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v21, v14);
  }

  v37 = v64;
  v63(v64, v65, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = v37[8] | 0x100;
      v47 = v4 + *(*v4 + 136);
      v43 = *v47;
      v44 = *(v47 + 1);
      *v47 = *v37;
      *(v47 + 1) = v46;
      v48 = v47[16];
      v47[16] = 5;
      goto LABEL_15;
    case 2u:
      v42 = v4 + *(*v4 + 136);
      v43 = *v42;
      v44 = *(v42 + 1);
      v45 = xmmword_1DD101BB0;
      goto LABEL_14;
    case 3u:
      goto LABEL_11;
    default:
      (*(v9 + 32))(v62, v37, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 8))(&v67, AssociatedTypeWitness, AssociatedConformanceWitness);
      if (v67 == 2)
      {
        v39 = sub_1DD0DD8EC();
        v40 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1DCAFC000, v39, v40, "ClientHandledTCCFlow Got nil confirmation response. Treating as unanswered...", v41, 2u);
          MEMORY[0x1E12A8390](v41, -1, -1);
        }

        (*(v9 + 8))(v62, AssociatedTypeWitness);
LABEL_11:
        v42 = v4 + *(*v4 + 136);
        v43 = *v42;
        v44 = *(v42 + 1);
        v45 = xmmword_1DD101BA0;
      }

      else
      {
        if ((v67 & 1) == 0)
        {
          v49 = sub_1DD0DD8EC();
          v50 = sub_1DD0DE6DC();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_1DCAFC000, v49, v50, "ClientHandledTCCFlow Got accepted TCC prompt, will transition state to change TCC", v51, 2u);
            MEMORY[0x1E12A8390](v51, -1, -1);
          }

          (*(v9 + 8))(v62, AssociatedTypeWitness);
          v52 = v4 + *(*v4 + 136);
          v53 = v58;
          *v52 = v57;
          *(v52 + 1) = v53;
          v52[16] = 3;
          sub_1DD0DCF8C();
        }

        (*(v9 + 8))(v62, AssociatedTypeWitness);
        v42 = v4 + *(*v4 + 136);
        v43 = *v42;
        v44 = *(v42 + 1);
        v45 = xmmword_1DD0E5100;
      }

LABEL_14:
      *v42 = v45;
      v48 = v42[16];
      v42[16] = 5;
LABEL_15:
      sub_1DCF21020(v43, v44, v48);
      return;
  }
}

uint64_t sub_1DCF1D078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[32] = *v3;
  v4[33] = type metadata accessor for SiriKitEventPayload(0);
  v4[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF1D138, 0, 0);
}

uint64_t sub_1DCF1D138()
{
  OUTLINED_FUNCTION_125();
  v23 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = v0[30];
  v2 = sub_1DD0DD8FC();
  v0[35] = OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_83();
    v22 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DD0DF18C();
    v10 = sub_1DCB10E9C(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "ClientHandledTCCFlow got error changing tcc: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_66();
  v12 = *(v11 + 88);
  v0[36] = v12;
  v13 = *(v11 + 80);
  v0[37] = v13;
  OUTLINED_FUNCTION_24_0();
  v21 = (v14 + *v14);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[38] = v15;
  *v15 = v16;
  v15[1] = sub_1DCF1D388;
  v18 = v0[29];
  v17 = v0[30];
  v19 = v0[28];

  return (v21)(v0 + 2, v17, v19, v18, v13, v12);
}

uint64_t sub_1DCF1D388()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v3 + 320) = v10;
    *v10 = v11;
    v10[1] = sub_1DCF1D4DC;

    return sub_1DCF1DD0C(v3 + 16);
  }
}

uint64_t sub_1DCF1D4DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF1D5D4()
{
  OUTLINED_FUNCTION_79_15();
  v5 = v4 + *(v3 + 136);
  v7 = *v5;
  v6 = *(v5 + 8);
  *v5 = v8;
  *(v5 + 8) = 1;
  v9 = *(v5 + 16);
  *(v5 + 16) = 4;
  v10 = v8;
  sub_1DCF21020(v7, v6, v9);
  if (OUTLINED_FUNCTION_46_21((v0 + 16)))
  {
    v11 = *(v0 + 272);
    v22 = *(v0 + 224);
    OUTLINED_FUNCTION_79_15();
    v14 = (v13 + *(v12 + 112));
    v16 = [v15 typeName];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_84_12();

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_getErrorValue();
    v17 = sub_1DD0DF18C();
    v19 = v18;
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    type metadata accessor for SiriKitEvent(0);
    *v11 = 6;
    *(v11 + 8) = v1;
    *(v11 + 16) = v2;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 24) = v22;
    sub_1DCB28B08(v0 + 96, v11 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
    sub_1DCB28B08(v0 + 56, v11 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
    *(v11 + 136) = 0u;
    *(v11 + 152) = 0u;
    *(v11 + 168) = v17;
    *(v11 + 176) = v19;
    *(v11 + 184) = 52;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCF1D8CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB16D50(v2 + 56, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v2 + 96, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF1D9F4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF1DD0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF1DD2C, 0, 0);
}

uint64_t sub_1DCF1DD2C()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[4] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v10 = v0[3];

  __swift_project_boxed_opaque_existential_1((v10 + *(*v10 + 128)), *(v10 + *(*v10 + 128) + 24));
  OUTLINED_FUNCTION_24_0();
  v15 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_1DCF1DEE0;
  v13 = OUTLINED_FUNCTION_10_66(v0[2]);

  return v15(v13);
}

uint64_t sub_1DCF1DEE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_29();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1DCF1DFF8()
{
  OUTLINED_FUNCTION_39();
  v0 = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v1))
  {
    v2 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v2);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCF1E09C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_29_29();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_13_65(*(v3 + 104));
  OUTLINED_FUNCTION_13_65(*(v4 + 112));
  OUTLINED_FUNCTION_13_65(*(v5 + 120));
  OUTLINED_FUNCTION_13_65(*(v6 + 128));
  sub_1DCF21020(*(v0 + *(v7 + 136)), *(v0 + *(v7 + 136) + 8), *(v0 + *(v7 + 136) + 16));
  return v0;
}

uint64_t sub_1DCF1E174(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF1E214()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCF1A5CC();
}

void sub_1DCF1E2D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v11 = OUTLINED_FUNCTION_20_0(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18 - v13;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v5;
  v15[4] = a2;
  v16 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1DD1020A0;
  v17[5] = v15;
  v17[6] = a3;
  v17[7] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF1E420(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a3;
  type metadata accessor for NLContextUpdate(0);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF1E4DC, 0, 0);
}

uint64_t sub_1DCF1E4DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_77_11();
  v1();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 64) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_81_8(v2);

  return sub_1DCEACD2C();
}

uint64_t sub_1DCF1E590()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 72) = v0;

  sub_1DCB41F98(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCF1E744()
{
  sub_1DCF1EC04();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF1E7FC()
{
  OUTLINED_FUNCTION_42();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *v0;
  v5 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_20_0(v5);
  v1[7] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF1E8A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_77_11();
  v1();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 64) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_81_8(v2);

  return sub_1DCEACD2C();
}

uint64_t sub_1DCF1E954()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 72) = v0;

  sub_1DCB41F98(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCF1EA98()
{
  OUTLINED_FUNCTION_125();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_13();
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  v13 = (*(v7 + 24) + **(v7 + 24));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_11_0(v9);
  *v10 = v11;
  v10[1] = sub_1DCB4AE1C;

  return v13(v5, v3, v1, v8, v7);
}

uint64_t sub_1DCF1EC04()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_29_29();
  (*(v1 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_1DCF1EC7C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DCF1ED28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF1E7FC();
}

uint64_t sub_1DCF1EDDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF1EA98();
}

uint64_t sub_1DCF1EE90@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECCA1370 != -1)
  {
    swift_once();
  }

  return sub_1DCC7DF20(&qword_1ECCA9C98, a1);
}

uint64_t sub_1DCF1EEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = (*(a6 + 40) + **(a6 + 40));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DCB4AD3C;

  return v14(a1, a3, a4, a5, a6);
}

uint64_t sub_1DCF1F048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(*v3 + 80) - 8) + 32))(v3 + *(*v3 + 96), a1);
  *(v3 + *(*v3 + 104)) = a2;
  *(v3 + *(*v3 + 112)) = a3;
  return v3;
}

uint64_t sub_1DCF1F104(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF1F14C, 0, 0);
}

uint64_t sub_1DCF1F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_59();
  OUTLINED_FUNCTION_36_34();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_39_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_100(v11);
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DCF1F278()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_1DCF1F320()
{
  sub_1DCF1F278();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF1F38C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DCF1F440(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF1F104(a1);
}

uint64_t sub_1DCF1F4DC()
{
  OUTLINED_FUNCTION_40_26();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_50();
  (*(v4 + 32))(v1 + v5);
  OUTLINED_FUNCTION_66();
  *(v1 + *(v6 + 104)) = v3;
  OUTLINED_FUNCTION_66();
  *(v1 + *(v7 + 112)) = v2;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v0, v1 + *(v8 + 120));
  return v1;
}

uint64_t sub_1DCF1F60C()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  v13 = (*(v0 + 88) + 48);
  v14 = *v13 + **v13;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_48();

  return v8(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

uint64_t sub_1DCF1F760(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF1F7A0);
}

uint64_t sub_1DCF1F7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_59();
  OUTLINED_FUNCTION_37_31();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_39_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_100(v11);
  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DCF1F8CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    *(v3 + 64) = 1089;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_67_19(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_3_103(v11);

    return sub_1DCF209B8();
  }
}

uint64_t sub_1DCF1FA18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF1FA58);
}

uint64_t sub_1DCF1FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_59();
  OUTLINED_FUNCTION_37_31();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_39_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_100(v11);
  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DCF1FB84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF1FBC4);
}

uint64_t sub_1DCF1FBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_59();
  OUTLINED_FUNCTION_37_31();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_39_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_100(v11);
  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DCF1FCF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    *(v3 + 64) = 2625;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_67_19(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_3_103(v11);

    return sub_1DCF209B8();
  }
}

uint64_t sub_1DCF1FE3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF1FE7C);
}

uint64_t sub_1DCF1FE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_59();
  OUTLINED_FUNCTION_36_34();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_39_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_100(v11);
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DCF1FFA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    *(v3 + 64) = 23917;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_67_19(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_3_103(v11);

    return sub_1DCF209B8();
  }
}

uint64_t sub_1DCF200F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF20134);
}

uint64_t sub_1DCF20134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_59();
  OUTLINED_FUNCTION_36_34();
  OUTLINED_FUNCTION_25_1();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_39_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_100(v11);
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_48();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1DCF20260()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    *(v3 + 64) = 22789;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_67_19(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_3_103(v11);

    return sub_1DCF209B8();
  }
}

uint64_t sub_1DCF203AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCF20490()
{
  OUTLINED_FUNCTION_39();
  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCF204F4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCF20538);
}

uint64_t sub_1DCF20538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_59();
  OUTLINED_FUNCTION_36_34();
  OUTLINED_FUNCTION_25_1();
  v23 = v10 + *v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v9 + 80) = v11;
  *v11 = v12;
  v11[1] = sub_1DCF20684;
  OUTLINED_FUNCTION_48();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, v23);
}

uint64_t sub_1DCF20684()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF2077C()
{
  OUTLINED_FUNCTION_39();
  *(v0 + 112) = 13318;
  swift_getErrorValue();
  sub_1DCEE0FD4(*(v0 + 24), *(v0 + 32));
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1DCF20854;
  OUTLINED_FUNCTION_10_66(*(v0 + 48));

  return sub_1DCF209B8();
}

uint64_t sub_1DCF20854()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCF20954()
{
  OUTLINED_FUNCTION_39();
  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCF209B8()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  *(v1 + 104) = v6;
  *(v1 + 112) = v0;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  v9 = type metadata accessor for SiriKitEventPayload(0);
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_20_0(v9);
  *(v1 + 128) = OUTLINED_FUNCTION_38();
  *(v1 + 152) = *v5;
  *(v1 + 153) = *v3;
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF20A58()
{
  if (OUTLINED_FUNCTION_46_21(*(v0 + 88)))
  {
    v13 = *(v0 + 153);
    v11 = *(v0 + 152);
    v3 = *(v0 + 128);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v12 = *(v0 + 96);
    v6 = (v4 + *(*v4 + 120));
    v7 = [*(v4 + *(*v4 + 112)) typeName];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_84_12();

    v8 = *(v4 + *(*v4 + 104));
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for SiriKitEvent(0);
    *v3 = v11;
    *(v3 + 8) = v1;
    *(v3 + 16) = v2;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = v8;
    sub_1DCB28B08(v0 + 56, v3 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    sub_1DCB28B08(v0 + 16, v3 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
    OUTLINED_FUNCTION_56_20();
    *(v3 + 168) = v12;
    *(v3 + 176) = v5;
    *(v3 + 184) = v13;
    swift_storeEnumTagMultiPayload();

    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCF20D34()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  sub_1DCB16D50(v1 + 16, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v1 + 56, &dword_1ECCA3CE0, &unk_1DD0E4F80);

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1DCF20E88()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_29_29();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 120)));
  return v0;
}

id sub_1DCF20F60(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      sub_1DD0DCF8C();
    case 4:

      result = result;
      break;
    case 5:

      result = sub_1DCBF9BE8(result, a2, SBYTE1(a2));
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCF21020(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:

      a1 = a2;

      goto LABEL_4;
    case 4:

LABEL_4:

      break;
    case 5:

      sub_1DCC99E78(a1, a2, SBYTE1(a2));
      break;
    default:
      return;
  }
}

uint64_t sub_1DCF21114(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCF21154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCF21198(uint64_t a1)
{
  if (*(a1 + 16) <= 5u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1DCF211B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

id sub_1DCF211E0(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
      sub_1DD0DCF8C();
    case 3:

      result = result;
      break;
    case 4:

      result = sub_1DCBF9BE8(result, a2, SBYTE1(a2));
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCF212A0(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:

      a1 = a2;

      goto LABEL_4;
    case 3:

LABEL_4:

      break;
    case 4:

      sub_1DCC99E78(a1, a2, SBYTE1(a2));
      break;
    default:
      return;
  }
}

uint64_t sub_1DCF21394(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCF213D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCF21418(uint64_t a1)
{
  if (*(a1 + 16) <= 4u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DCF21430(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DCF21480()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF1F60C();
}

uint64_t sub_1DCF21528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF1F760(a1);
}

uint64_t sub_1DCF215C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF1FA18(a1);
}

uint64_t sub_1DCF21658(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF1FB84(a1);
}

uint64_t sub_1DCF216F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF1FE3C(a1);
}

uint64_t sub_1DCF21788(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF200F4(a1);
}

uint64_t sub_1DCF21820(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCF204F4(a1, a2);
}

uint64_t sub_1DCF218C8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_65_0(v3);

  return sub_1DCF1E420(v5, v6, v7, v1);
}

uint64_t sub_1DCF21994()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_0_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_121();

  return sub_1DCF1EEFC(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1DCF21AB8()
{
  result = qword_1ECCAA148[0];
  if (!qword_1ECCAA148[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ECCAA148);
  }

  return result;
}

id sub_1DCF21B54(id result, uint64_t a2, char a3)
{
  switch(a3 >> 6)
  {
    case 1:
      sub_1DD0DCF8C();
    case 2:
      result = result;
      break;
    case 3:
      return result;
    default:
      result = sub_1DCF20F60(result, a2, a3);
      break;
  }

  return result;
}

void sub_1DCF21B98(void *a1, void *a2, char a3)
{
  switch(a3 >> 6)
  {
    case 1:

      break;
    case 2:

      break;
    case 3:
      return;
    default:
      sub_1DCF21020(a1, a2, a3);
      break;
  }
}

uint64_t sub_1DCF21BCC(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *sub_1DCF21C48(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *sub_1DCF21CCC(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

uint64_t sub_1DCF21D18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1D && *(a1 + 17))
    {
      v2 = *a1 + 28;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 1) & 0x1C | (*(a1 + 16) >> 6)) ^ 0x1F;
      if (v2 >= 0x1C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCF21D64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 16) = 0;
    *result = a2 - 29;
    *(result + 8) = 0;
    if (a3 >= 0x1D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCF21DB8(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16) & 7 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    v2 = -64;
  }

  *(result + 16) = v2;
  return result;
}

void sub_1DCF21DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 5)
  {
    sub_1DCF212A0(*a1, *(a1 + 8), v1);
  }
}

uint64_t sub_1DCF21DFC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 16);
  if (v3 > 5)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    sub_1DCF211E0(*a2, v5, v3);
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
  }

  return a1;
}

uint64_t sub_1DCF21E64(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 > 5)
  {
    if (v5 <= 5)
    {
      v12 = *a2;
      v11 = *(a2 + 1);
      sub_1DCF211E0(*a2, v11, v5);
      *a1 = v12;
      *(a1 + 8) = v11;
      *(a1 + 16) = v5;
      return a1;
    }

LABEL_7:
    v13 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v13;
    return a1;
  }

  if (v5 > 5)
  {
    sub_1DCF212A0(*a1, *(a1 + 8), v4);
    goto LABEL_7;
  }

  v7 = *a2;
  v6 = *(a2 + 1);
  sub_1DCF211E0(*a2, v6, v5);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v7;
  *(a1 + 8) = v6;
  v10 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCF212A0(v8, v9, v10);
  return a1;
}

uint64_t sub_1DCF21F18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 > 5)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v5 > 5)
  {
    sub_1DCF212A0(v6, v7, v4);
LABEL_5:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    return a1;
  }

  *a1 = *a2;
  *(a1 + 16) = v5;
  sub_1DCF212A0(v6, v7, v4);
  return a1;
}

uint64_t sub_1DCF21F84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCF21FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1DCF22014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 5)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCF22028(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

uint64_t sub_1DCF220C4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void RequestTCCAcceptanceFlowStrategy.makeHandoffResponseForAuthenticationResponse(app:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF22380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_39_27(v12);
  type metadata accessor for RCHDelegateToRequestTCCAcceptanceFlowStrategyAdapter(v13, v14, v15, v16);
  *v11 = v10;
  OUTLINED_FUNCTION_30_34();
  OUTLINED_FUNCTION_121();

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(v17, v18, v19, v20, v21, v22, v23, v24, a9);
}

uint64_t RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_1DCF22508()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToRequestTCCAcceptanceFlowStrategyAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  OUTLINED_FUNCTION_2_75();

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)();
}

uint64_t RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCF2261C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToRequestTCCAcceptanceFlowStrategyAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  v7 = OUTLINED_FUNCTION_2_75();

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(v7);
}

void sub_1DCF226C0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF228F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a7(0, *(a5 + 80), *(a5 + 88));

  return a8(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_1DCF22980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_39_27(v11);
  type metadata accessor for NLContextOnlyToRequestTCCAcceptanceFlowStrategyAsyncAdapter(v12, v13, v14, v15);
  *v10 = v9;
  OUTLINED_FUNCTION_30_34();
  OUTLINED_FUNCTION_121();

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(v16, v17, v18, v19, v20, v21, v22, v23, a9);
}

uint64_t sub_1DCF22A18()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for NLContextOnlyToRequestTCCAcceptanceFlowStrategyAsyncAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  OUTLINED_FUNCTION_2_75();

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)();
}

uint64_t sub_1DCF22AA8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for NLContextOnlyToRequestTCCAcceptanceFlowStrategyAsyncAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  v7 = OUTLINED_FUNCTION_2_75();

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(v7);
}

void sub_1DCF22BF8()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v0[15] = type metadata accessor for RefreshableDeviceState();
  v0[16] = &protocol witness table for RefreshableDeviceState;
  v0[12] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF22CF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 192) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF22DF0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[22];
  sub_1DCB17CA0((v0 + 2), v1);
  v3 = v0[7];
  v2 = v0[8];

  sub_1DCCCF318((v0 + 2));
  *(v1 + 40) = v3;
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCF22E74(uint64_t a1, void (*a2)(void *))
{
  sub_1DCB28B08(a1, v17, &qword_1ECCA2288, &unk_1DD0E4840);
  if (v19)
  {
    v3 = *&v17[0];
    v15[0] = *&v17[0];
    v16 = 1;
    v4 = *&v17[0];
    a2(v15);

    v5 = qword_1ECCAA3D8;
    v6 = qword_1DD102680;
    v7 = v15;
  }

  else
  {
    v13[0] = v17[0];
    v13[1] = v17[1];
    v13[2] = v17[2];
    v14 = v18;
    sub_1DCB28B08(v13, v12, &qword_1ECCA5500, &qword_1DD0F20A0);

    sub_1DCB28B08(v13, v11, &qword_1ECCA5500, &qword_1DD0F20A0);
    v8 = v11[5];
    v9 = v11[6];
    v15[8] = 0;
    v15[9] = 0;
    sub_1DCB18FF0(v12, v15);
    v15[5] = v8;
    v15[6] = v9;
    v15[7] = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v16 = 0;
    a2(v15);
    sub_1DCB16DB0(v15, qword_1ECCAA3D8, qword_1DD102680);
    v7 = v13;
    v5 = &qword_1ECCA5500;
    v6 = &qword_1DD0F20A0;
  }

  return sub_1DCB16DB0(v7, v5, v6);
}

uint64_t sub_1DCF22FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AD3C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(a1, a2, a3, a4, a5, v15, v16, v17, a9);
}

uint64_t sub_1DCF230A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)();
}

uint64_t sub_1DCF23138(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)();
}

uint64_t RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DCF23254(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(a1);
}

uint64_t sub_1DCF232EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF23304()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCF233D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(v6 + 88) + 16))(a3, v16, sub_1DCF26F20, v13, *(v6 + 80));
}

uint64_t sub_1DCF2358C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF235A4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCF23674(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(v6 + 88) + 24))(a3, v16, sub_1DCF26F8C, v13, *(v6 + 80));
}

uint64_t sub_1DCF2382C(uint64_t a1)
{
  sub_1DCB28B08(a1, v3, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCB18FF0(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCF238CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF238E4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCF239B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(v6 + 88) + 32))(a3, v16, sub_1DCF26F8C, v13, *(v6 + 80));
}

uint64_t sub_1DCF23B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF23B84()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCF23C54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(v6 + 88) + 40))(a3, v16, sub_1DCF26F8C, v13, *(v6 + 80));
}

uint64_t sub_1DCF23E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF23E24()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1DCC27658;
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v3);
}

uint64_t sub_1DCF23F00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAA3D0, &qword_1DD102678);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(v6 + 88) + 56))(a3, v16, sub_1DCF26E80, v13, *(v6 + 80));
}

uint64_t sub_1DCF240B8(uint64_t a1)
{
  sub_1DCB28B08(a1, __src, qword_1ECCAA3D8, qword_1DD102680);
  if (v4)
  {
    __dst[0] = __src[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAA3D0, &qword_1DD102678);
    return sub_1DD0DE45C();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAA3D0, &qword_1DD102678);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCF24160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF232EC(a1, a2, a3);
}

uint64_t sub_1DCF24214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF2358C(a1, a2, a3);
}

uint64_t sub_1DCF242C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF238CC(a1, a2, a3);
}

uint64_t sub_1DCF2437C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF23B6C(a1, a2, a3);
}

uint64_t sub_1DCF24430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF23E0C(a1, a2, a3);
}

void sub_1DCF245B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v12 = OUTLINED_FUNCTION_20_0(v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v18 - v14;
  v16 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a8;
  v17[5] = 0;
  v17[6] = a3;
  v17[7] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF246A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEADCCC();
}

uint64_t sub_1DCF24738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAE0E0();
}

uint64_t ClientHandledRequestTCCAcceptanceFlowStrategyAsync.handoffTCCFlow(deviceState:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    return 1;
  }

  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 16))(v5, v6) & 1;
}

uint64_t sub_1DCF24880(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCConfirmationRejectedResponse(app:intent:)();
}

uint64_t ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCConfirmationRejectedResponse(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEADCCC();
}

uint64_t sub_1DCF2499C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCCancelledResponse(app:intent:)();
}

uint64_t ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCCancelledResponse(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAE0E0();
}

uint64_t sub_1DCF24AB8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)();
}

uint64_t ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t ClientHandledRequestTCCAcceptanceFlowStrategyAsync.actionForInputWrapper(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF24BF0()
{
  OUTLINED_FUNCTION_42();
  (*(v0[5] + 40))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF24C60(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  (*(*(*(v4 + 152) - 8) + 16))(v1 + *(v3 + 168), a1);

  return sub_1DCC24BD8();
}

uint64_t sub_1DCF24CE8()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v0();
}

uint64_t sub_1DCF24D54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCF24DAC()
{
  OUTLINED_FUNCTION_39();
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  v2[1] = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCF24E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v4 = *(*a2 + 160);
  v5 = *(*a2 + 152);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v6 = sub_1DD0DE47C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v4;
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(v4 + 48))(v15, sub_1DCF26DAC, v12, v5, v4);
}

uint64_t sub_1DCF25094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v5);
}

uint64_t sub_1DCF2511C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF25134()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCF25204(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(v6 + 160) + 56))(a3, v16, sub_1DCF26F8C, v13, *(v6 + 152));
}

uint64_t sub_1DCF253BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF253D4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCF254A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(v6 + 160) + 64))(a3, v16, sub_1DCF26F8C, v13, *(v6 + 152));
}

uint64_t *sub_1DCF256BC()
{
  v1 = *v0;
  sub_1DCC0C0A0();
  (*(*(*(v1 + 152) - 8) + 8))(v0 + *(*v0 + 168));
  return v0;
}

uint64_t sub_1DCF25738()
{
  sub_1DCF256BC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF257B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCF24D54(a1, a2);
}

uint64_t sub_1DCF25860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF2511C(a1, a2, a3);
}

uint64_t sub_1DCF25914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF253BC(a1, a2, a3);
}

uint64_t sub_1DCF259E0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return RequestTCCAcceptanceFlowNLOnlyStrategy.makePromptForDeviceUnlock(app:intent:)();
}

uint64_t RequestTCCAcceptanceFlowNLOnlyStrategy.makePromptForDeviceUnlock(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DCF25AFC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return RequestTCCAcceptanceFlowNLOnlyStrategyAsync.makePromptForDeviceUnlock(app:intent:)();
}

uint64_t RequestTCCAcceptanceFlowNLOnlyStrategyAsync.makePromptForDeviceUnlock(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowStrategyAsync.makePromptForTCCAcceptance(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ClientHandledRequestTCCAcceptanceFlowStrategyAsync.parseTCCConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v12 = (*(v0 + 48) + **(v0 + 48));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v9[1] = sub_1DCB4AE1C;

  return v12(v7, v5, v3, v1);
}

uint64_t dispatch thunk of ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCConfirmationRejectedResponse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCCancelledResponse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(a6 + 72) + **(a6 + 72));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  v13[1] = sub_1DCB4AE1C;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCF2660C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t dispatch thunk of RequestTCCAcceptanceFlowNLOnlyStrategy.makePromptForDeviceUnlock(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowNLOnlyStrategyAsync.makePromptForDeviceUnlock(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_2_9(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_1DCF268D4()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v0();
}

uint64_t sub_1DCF26940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF26958()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCF26A28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(v6 + 88) + 24))(a3, v16, sub_1DCF26F8C, v13, *(v6 + 80));
}

uint64_t sub_1DCF26BE0()
{
  sub_1DCC0C0A0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF26C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF26940(a1, a2, a3);
}

uint64_t sub_1DCF26D44(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF26DAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v3);
  v4 = OUTLINED_FUNCTION_78();

  return sub_1DCF25094(v4, v5, v1, v2);
}

uint64_t sub_1DCF26E80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAA3D0, &qword_1DD102678);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_78();

  return sub_1DCF240B8(v1);
}

uint64_t sub_1DCF26F24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_78();
  return sub_1DCF2382C(v1);
}

uint64_t sub_1DCF26FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = a2;
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  sub_1DCF27060(a1, v8, v7, a4, a5);
  return v10;
}

uint64_t sub_1DCF27060(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 25) = a3;
  *(v5 + 32) = *a4;
  *(v5 + 48) = v6;
  *(v5 + 56) = v7;
  *(v5 + 64) = a5;
  return v5;
}

uint64_t sub_1DCF27090()
{

  return v0;
}

uint64_t sub_1DCF270C0()
{
  sub_1DCF27090();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocClassInstance();
}

__n128 sub_1DCF27188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD000000000000013;
  *(v16 + 24) = 0x80000001DD122E50;
  *(v16 + 32) = a1;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  *(v16 + 56) = 0;
  *(v16 + 64) = a2;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0;
  v17 = *(a5 + 16);
  *(v16 + 112) = *a5;
  *(v16 + 128) = v17;
  *(v16 + 144) = *(a5 + 32);
  v18 = *a6;
  v19 = a6[1];
  *(v16 + 184) = *(a6 + 4);
  *(v16 + 168) = v19;
  *(v16 + 152) = v18;
  v20 = *(a7 + 16);
  *(v16 + 192) = *a7;
  *(v16 + 208) = v20;
  *(v16 + 224) = *(a7 + 32);
  *(v16 + 232) = a8;
  OUTLINED_FUNCTION_49();
  return result;
}

uint64_t sub_1DCF27258(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - v6;
  v8 = *MEMORY[0x1E699F738];
  sub_1DD0DB34C();
  OUTLINED_FUNCTION_2();
  (*(v9 + 104))(v7, v8);
  swift_storeEnumTagMultiPayload();
  a3(v7);
  return sub_1DCB0E9D8(v7, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

void sub_1DCF27358(uint64_t a1, void (*a2)(void *, uint64_t))
{
  if (*(v2 + 104))
  {
    v4 = OUTLINED_FUNCTION_44_24();
    (a2)(v4);
LABEL_3:
    OUTLINED_FUNCTION_48_21();
    return;
  }

  v5 = v2;
  v6 = *(v2 + 64);
  v7 = (v2 + 72);
  v8 = *(v2 + 40);
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  if (*(v8 + 48) == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for ResolutionResultProcessingResult(0, AssociatedTypeWitness, v12, v13);
    v109 = v9;
    v110 = v10;
    v111 = 0;
    v112 = 1;
    OUTLINED_FUNCTION_29_30();
    *(v5 + 64) = sub_1DCF26FF4(v14, v15, v16, v17, v18);
    *v7 = 0u;
    v7[1] = 0u;
    *(v5 + 104) = 4;
    OUTLINED_FUNCTION_40_27();
    sub_1DCF2AB28(v19, v20, v21, v22, v23, v24);

    v25 = OUTLINED_FUNCTION_44_24();
    (a2)(v25);
  }

  else
  {
    v107 = v7;
    v26 = *(v8 + 24);
    OUTLINED_FUNCTION_40_27();
    sub_1DCF2AB28(v27, v28, v29, v30, v31, v32);

    v33 = sub_1DCB90DA0(v9, v10, v26);

    v34 = v10;
    if (v33)
    {
      v96 = v6;
      v35 = 0;
      v101 = v33 & 0xC000000000000001;
      v104 = sub_1DCB08B14(v33);
      v99 = v33 & 0xFFFFFFFFFFFFFF8;
      v98 = v33;
      while (v104 != v35)
      {
        if (v101)
        {
          v36 = MEMORY[0x1E12A72C0](v35, v33);
        }

        else
        {
          if (v35 >= *(v99 + 16))
          {
            goto LABEL_29;
          }

          v36 = *(v33 + 8 * v35 + 32);
        }

        v37 = v36;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v38 = [v36 resolutionResultCode];
        if (v38 <= 6 && ((1 << v38) & 0x5E) != 0)
        {

          v105 = *(v5 + 72);
          v108 = *(v5 + 64);
          v44 = *(v5 + 80);
          v100 = *(v5 + 96);
          v102 = *(v5 + 88);
          *(v5 + 64) = v96;
          *(v5 + 72) = v9;
          *(v5 + 80) = v34;
          *(v5 + 88) = v35;
          *(v5 + 96) = v37;
          v45 = *(v5 + 104);
          *(v5 + 104) = 1;
          OUTLINED_FUNCTION_40_27();
          sub_1DCF2AB28(v46, v47, v48, v49, v50, v51);
          v52 = v37;
          sub_1DCF2AC40(v108, v105, v44, v102, v100, v45);
          v53 = OUTLINED_FUNCTION_44_24();
          (a2)(v53);
          OUTLINED_FUNCTION_40_27();
          sub_1DCF2AC40(v54, v55, v56, v57, v58, v59);

          goto LABEL_3;
        }

        v40 = v34;
        if (qword_1EDE4F908 != -1)
        {
          OUTLINED_FUNCTION_2_8();
          swift_once();
        }

        v41 = qword_1EDE57E18;
        v42 = sub_1DD0DE6DC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
        OUTLINED_FUNCTION_4_0();
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1DD0E07C0;
        v109 = 0;
        v110 = 0xE000000000000000;
        v113[0] = [v37 resolutionResultCode];
        type metadata accessor for INResolutionResultCode(0);
        sub_1DD0DEDBC();
        *(v43 + 56) = MEMORY[0x1E69E6158];
        *(v43 + 64) = sub_1DCB34060();
        *(v43 + 32) = 0;
        *(v43 + 40) = 0xE000000000000000;
        sub_1DD0DD7EC("Found a resolution result '%@' that didn't need dialog, looking at the next one", 79, 2, &dword_1DCAFC000, v41, v42, v43);

        ++v35;
        v34 = v40;
        v33 = v98;
      }

      if (qword_1EDE4F908 == -1)
      {
        goto LABEL_27;
      }

LABEL_30:
      OUTLINED_FUNCTION_2_8();
      swift_once();
LABEL_27:
      v72 = qword_1EDE57E18;
      v73 = sub_1DD0DE6DC();
      sub_1DD0DD7EC("Results did not require any response processing.", 48, 2, &dword_1DCAFC000, v72, v73, MEMORY[0x1E69E7CC0]);
      v74 = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_9_66(v74, v75, v76, v77);
      v109 = 0;
      v110 = 0;
      v112 = 0;
      v111 = 0;
      v78 = sub_1DCF26FF4(v96, 0, 1, &v109, 0);
      v79 = *(v5 + 72);
      v80 = *(v5 + 88);
      v103 = *(v5 + 80);
      v106 = *(v5 + 64);
      v81 = *(v5 + 96);
      *(v5 + 64) = v78;
      *v107 = 0u;
      v107[1] = 0u;
      v82 = *(v5 + 104);
      *(v5 + 104) = 4;
      OUTLINED_FUNCTION_46_22();
      sub_1DCF2AB28(v83, v84, v85, v86, v87, v88);
      sub_1DCF2AC40(v106, v79, v103, v80, v81, v82);
      v89 = OUTLINED_FUNCTION_44_24();
      (a2)(v89);
      OUTLINED_FUNCTION_46_22();
      sub_1DCF2AC40(v90, v91, v92, v93, v94, v95);
      goto LABEL_3;
    }

    sub_1DD0DEC1C();

    v109 = 0xD00000000000002FLL;
    v110 = 0x80000001DD123F10;
    MEMORY[0x1E12A6780](v9, v10);

    MEMORY[0x1E12A6780](39, 0xE100000000000000);
    v60 = type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v61 = OUTLINED_FUNCTION_198();
    v62 = sub_1DCC7AE30();
    v63 = OUTLINED_FUNCTION_34(v60, v62);
    *v64 = v61;
    a2(v63, 1);
  }

  OUTLINED_FUNCTION_48_21();

  sub_1DCF2AC40(v65, v66, v67, v68, v69, v70);
}

void sub_1DCF279B0(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v22[10] = *v3;
  v22[11] = a3;
  v22[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v22 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v22 - v12;
  if (*(v3 + 232))
  {
    v14 = *(v3 + 232);
  }

  else
  {
    v15 = v22 - v12;
    v14 = sub_1DCF295EC(a1);
    v13 = v15;
  }

  v16 = *(v3 + 104) - 1;
  v22[12] = v14;
  switch(v16)
  {
    case 0:
      v22[4] = v13;
      v22[7] = a2;
      sub_1DD0DCF8C();
    case 2:
      sub_1DD0DCF8C();
    case 3:
      sub_1DD0DCF8C();
    case 5:
      *v9 = *(v3 + 64);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_101();
      sub_1DCF2AB28(v17, v18, v19, v20, v21, 6);
      sub_1DD0DCF8C();
    default:
      v22[20] = 0;
      v22[21] = 0xE000000000000000;
      sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCF2838C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[45] = a5;
  v6[46] = a6;
  v6[43] = a3;
  v6[44] = a4;
  v6[41] = a1;
  v6[42] = a2;
  v6[47] = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DCF283DC, 0, 0);
}

uint64_t sub_1DCF283DC()
{
  switch([*(v0 + 336) resolutionResultCode])
  {
    case 1uLL:
      v1 = OUTLINED_FUNCTION_8_66();
      *(v0 + 64) = v2;
      *(v0 + 32) = v3;
      *(v0 + 48) = v1;
      *(v0 + 16) = v4;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 432) = v5;
      *v5 = v6;
      OUTLINED_FUNCTION_45_20(v5);
      OUTLINED_FUNCTION_73();

      result = sub_1DCEB5D34(v7);
      break;
    case 2uLL:
      v26 = OUTLINED_FUNCTION_8_66();
      *(v0 + 176) = v27;
      *(v0 + 144) = v28;
      *(v0 + 160) = v26;
      *(v0 + 128) = v29;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 400) = v30;
      *v30 = v31;
      OUTLINED_FUNCTION_45_20(v30);
      OUTLINED_FUNCTION_73();

      result = sub_1DCEB564C(v32);
      break;
    case 3uLL:
      v18 = OUTLINED_FUNCTION_8_66();
      *(v0 + 184) = v19;
      *(v0 + 232) = v20;
      *(v0 + 216) = v18;
      *(v0 + 200) = v21;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 384) = v22;
      *v22 = v23;
      OUTLINED_FUNCTION_45_20(v22);
      OUTLINED_FUNCTION_73();

      result = sub_1DCEB52D8(v24);
      break;
    case 4uLL:
      v34 = OUTLINED_FUNCTION_8_66();
      *(v0 + 72) = v35;
      *(v0 + 120) = v36;
      *(v0 + 104) = v34;
      *(v0 + 88) = v37;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 416) = v38;
      *v38 = v39;
      OUTLINED_FUNCTION_45_20(v38);
      OUTLINED_FUNCTION_73();

      result = sub_1DCB9199C(v40);
      break;
    case 6uLL:
      v42 = *(v0 + 360);
      v43 = *(v0 + 336);
      v44 = *(v0 + 368);
      v45 = [v43 intentToExecute];
      v47 = *(v42 + 64);
      v46 = *(v42 + 72);
      v48 = *(v42 + 80);
      v49 = *(v42 + 88);
      v50 = *(v42 + 96);
      *(v42 + 64) = v44;
      *(v42 + 72) = v45;
      *(v42 + 88) = 0;
      *(v42 + 96) = 0;
      *(v42 + 80) = 0;
      v51 = *(v42 + 104);
      *(v42 + 104) = 5;
      sub_1DCF2AC40(v47, v46, v48, v49, v50, v51);
      type metadata accessor for SiriKitFlowFrameInput(0);
      sub_1DD0DB32C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_73();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v10 = *(v0 + 360);
      v11 = *(v0 + 336);
      sub_1DD0DEC1C();
      *(v0 + 240) = 0;
      *(v0 + 248) = 0xE000000000000000;
      OUTLINED_FUNCTION_57_0();
      MEMORY[0x1E12A6780](0xD00000000000002BLL);
      *(v0 + 256) = [v11 resolutionResultCode];
      type metadata accessor for INResolutionResultCode(0);
      sub_1DD0DEDBC();
      v13 = *(v0 + 240);
      v12 = *(v0 + 248);
      v54 = type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_41_4();
      swift_allocObject();
      v14 = CommandFailure.init(errorCode:reason:)(-1, v13, v12);
      v15 = sub_1DCC7AE30();
      v16 = OUTLINED_FUNCTION_34(v54, v15);
      *v17 = v14;
      *(v10 + 64) = v16;
      *(v10 + 72) = 0u;
      *(v10 + 88) = 0u;
      *(v10 + 104) = 6;
      sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCF28854()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCF2893C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = v10[49];
  OUTLINED_FUNCTION_14_55();
  v10[39] = v11;
  v12 = OUTLINED_FUNCTION_47_21();
  v16 = type metadata accessor for NeedsConfirmationAnswer(v12, v13, v14, v15);
  OUTLINED_FUNCTION_53_18(v16, v17, v18, v19);
  v20 = OUTLINED_FUNCTION_12_60();
  v24 = type metadata accessor for AnyValueFlow(v20, v21, v22, v23);
  OUTLINED_FUNCTION_2_96(v24);
  sub_1DCD1AC74();
  v10[40] = v25;
  sub_1DCF29004();
}

uint64_t sub_1DCF28A40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 408) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCF28B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = v10[51];
  OUTLINED_FUNCTION_14_55();
  v10[37] = v11;
  v12 = OUTLINED_FUNCTION_47_21();
  v16 = type metadata accessor for IntentPromptAnswer(v12, v13, v14, v15);
  OUTLINED_FUNCTION_53_18(v16, v17, v18, v19);
  v20 = OUTLINED_FUNCTION_12_60();
  v24 = type metadata accessor for AnyValueFlow(v20, v21, v22, v23);
  OUTLINED_FUNCTION_2_96(v24);
  sub_1DCD1AC74();
  v10[38] = v25;
  sub_1DCF29084();
}

uint64_t sub_1DCF28C2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 424) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCF28D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = v10[53];
  OUTLINED_FUNCTION_14_55();
  v10[35] = v11;
  v12 = OUTLINED_FUNCTION_47_21();
  v16 = type metadata accessor for IntentPromptAnswer(v12, v13, v14, v15);
  OUTLINED_FUNCTION_53_18(v16, v17, v18, v19);
  v20 = OUTLINED_FUNCTION_12_60();
  v24 = type metadata accessor for AnyValueFlow(v20, v21, v22, v23);
  OUTLINED_FUNCTION_2_96(v24);
  sub_1DCD1AC74();
  v10[36] = v25;
  sub_1DCF290C4();
}

uint64_t sub_1DCF28E18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 440) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCF28F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = v10[55];
  OUTLINED_FUNCTION_14_55();
  v10[33] = v11;
  v12 = OUTLINED_FUNCTION_47_21();
  v16 = type metadata accessor for IntentPromptAnswer(v12, v13, v14, v15);
  OUTLINED_FUNCTION_53_18(v16, v17, v18, v19);
  v20 = OUTLINED_FUNCTION_12_60();
  v24 = type metadata accessor for AnyValueFlow(v20, v21, v22, v23);
  OUTLINED_FUNCTION_2_96(v24);
  sub_1DCD1AC74();
  v10[34] = v25;
  sub_1DCF29104();
}

void sub_1DCF29044(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 16);
  v3 = *a2;
  v4 = v2;
  sub_1DCF2A26C(a1, &v3);
}

uint64_t sub_1DCF29144(void *a1, char a2, uint64_t *a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  v36 = a5;
  v37 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v36 - v12);
  sub_1DCCFA914();
  v14 = sub_1DD0DE93C();
  v15 = sub_1DD0DE70C();
  if (a2)
  {
    sub_1DD0DD7EC("ResolutionResultProcessingFlowFrame encountered an unexpected error while rendering dialog. Transitioning to error.", 115, 2, &dword_1DCAFC000, v14, v15, MEMORY[0x1E69E7CC0], v36);

    v16 = a3[8];
    v17 = a3[9];
    v18 = a3[10];
    v19 = a3[11];
    v20 = a3[12];
    a3[8] = a1;
    *(a3 + 9) = 0u;
    *(a3 + 11) = 0u;
    v21 = *(a3 + 104);
    *(a3 + 104) = 6;
    v22 = a1;
    sub_1DCF2AC40(v16, v17, v18, v19, v20, v21);
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v23 = a1;
  }

  else
  {
    sub_1DD0DD7EC("ResolutionResultProcessingFlowFrame successfully sent dialog. Transitioning to complete and indicating not to continue.", 119, 2, &dword_1DCAFC000, v14, v15, MEMORY[0x1E69E7CC0], v36);

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for ResolutionResultProcessingResult(0, AssociatedTypeWitness, v25, v26);
    memset(v38, 0, sizeof(v38));
    v39 = 0;
    v27 = sub_1DCF26FF4(a6, 1, 0, v38, 0);
    v28 = a3[8];
    v29 = a3[9];
    v30 = a3[10];
    v31 = a3[11];
    v32 = a3[12];
    a3[8] = v27;
    *(a3 + 9) = 0u;
    *(a3 + 11) = 0u;
    v33 = *(a3 + 104);
    *(a3 + 104) = 4;
    v34 = a6;
    sub_1DCF2AC40(v28, v29, v30, v31, v32, v33);
    type metadata accessor for SiriKitFlowFrameInput(0);
    sub_1DD0DB30C();
    swift_storeEnumTagMultiPayload();
  }

  v37(v13);
  return sub_1DCB0E9D8(v13, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

void *sub_1DCF293E4()
{
  v1 = v0[8];
  v2 = *(v0 + 104);
  if (v2 == 6)
  {
    v14 = v1;
  }

  else
  {
    v3 = v0;
    v4 = *v0;
    if (v2 != 5)
    {
      if (v2 == 4)
      {
        sub_1DD0DCF8C();
      }

      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_57_0();
      MEMORY[0x1E12A6780](0xD00000000000001CLL);
      OUTLINED_FUNCTION_20_30();
      OUTLINED_FUNCTION_36_35(v15, *(v4 + 80), *(v4 + 88), v16);
      sub_1DD0DF07C();
      v17 = type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_41_4();
      swift_allocObject();
      v18 = OUTLINED_FUNCTION_24_30();
      v20 = CommandFailure.init(errorCode:reason:)(v18, v19, 0xE000000000000000);
      v21 = sub_1DCC7AE30();
      v22 = OUTLINED_FUNCTION_34(v17, v21);
      *v23 = v20;
      v3[8] = v22;
      *(v3 + 9) = 0u;
      *(v3 + 11) = 0u;
      *(v3 + 104) = 6;
      sub_1DD0DCF8C();
    }

    v5 = v0[9];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_9_66(AssociatedTypeWitness, v7, v8, v9);
    OUTLINED_FUNCTION_43_24();
    v11 = sub_1DCF26FF4(v1, 0, 0, v10, v5);
    v12 = v1;
    v13 = v5;
    return v11;
  }

  return v1;
}

uint64_t sub_1DCF295EC(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = OUTLINED_FUNCTION_51_27();
  v6 = OUTLINED_FUNCTION_51_27();
  RCHChildFlowProducers.init()(v5, v6);
  sub_1DCD01E78((v1 + 19), &v10);
  if (!v11)
  {
    if (qword_1EDE46628 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDE46630;
    sub_1DCB4E718(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v12[3] = type metadata accessor for RefreshableDeviceState();
    v12[4] = &protocol witness table for RefreshableDeviceState;
    v12[0] = v7;
    sub_1DD0DCF8C();
  }

  sub_1DCB18FF0(&v10, v12);
  sub_1DCB36E74(v1[4], a1, v12, &v13, v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  type metadata accessor for RCHChildFlowFactory(0, v5, v6, v8);
  return RCHChildFlowFactory.__allocating_init(producers:)();
}

void sub_1DCF29788(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC(v6);
  v7 = v2 + 9;
  v8 = v2[9];
  if (*(v2 + 104) != 2)
  {
    v70[0] = 0;
    v70[1] = 0xE000000000000000;
    sub_1DD0DEC1C();
    v68[0] = *v70;
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000011);
    *v70 = OUTLINED_FUNCTION_20_30();
    v71 = v20;
    v72 = v21;
    v73 = v22;
    OUTLINED_FUNCTION_36_35(v23, *(v5 + 80), *(v5 + 88), v24);
    sub_1DD0DF07C();
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v25 = OUTLINED_FUNCTION_24_30();
    v27 = CommandFailure.init(errorCode:reason:)(v25, v26, *(&v68[0] + 1));
    v28 = sub_1DCC7AE30();
    v29 = OUTLINED_FUNCTION_4_29(v28);
    *v30 = v27;
    *&v32 = OUTLINED_FUNCTION_3_104(v29);
    *v7 = v32;
    *(v3 + 11) = v32;
LABEL_16:
    v50 = OUTLINED_FUNCTION_39_28(v31);
    goto LABEL_17;
  }

  v9 = v2[10];
  v10 = v2[8];

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentPromptAnswer(255, AssociatedTypeWitness, v12, v13);
  v14 = OUTLINED_FUNCTION_12_60();
  type metadata accessor for PromptResult(v14, v15, v16, v17);
  OUTLINED_FUNCTION_2();
  (*(v18 + 16))(v70, a2);
  if (!v73)
  {
    v68[0] = *v70;
    v68[1] = v71;
    v69 = v72;
    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    OUTLINED_FUNCTION_4_0();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1DD0E07C0;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1DCB34060();
    *(v33 + 32) = v8;
    *(v33 + 40) = v9;
    OUTLINED_FUNCTION_13_66();
    sub_1DD0DD7EC(v34);

    OUTLINED_FUNCTION_10_67(v35, v36, v37, v38);
    v39 = *(*(v5 - 8) + 8);
    v69;
    v39(v68, v5);
    OUTLINED_FUNCTION_43_24();
    goto LABEL_15;
  }

  if (v73 != 1)
  {
    if (!(*(&v71 + 1) | v72 | v70[0] | v71 | v70[1]))
    {

      sub_1DD0DE6DC();
      goto LABEL_14;
    }

    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_13_66();
    v41 = sub_1DD0DD7EC(v40);
    OUTLINED_FUNCTION_10_67(v41, v42, v43, v44);
    OUTLINED_FUNCTION_41_24();
LABEL_15:
    OUTLINED_FUNCTION_29_30();
    v66 = sub_1DCF26FF4(v61, v62, v63, v64, v65);
    *&v67 = OUTLINED_FUNCTION_3_104(v66);
    *v7 = v67;
    *(v2 + 11) = v67;
    goto LABEL_16;
  }

  v19 = v70[0];
  if (LOBYTE(v70[1]) == 1)
  {

    sub_1DD0DE6DC();
LABEL_14:
    OUTLINED_FUNCTION_13_66();
    v57 = sub_1DD0DD7EC(v56);
    OUTLINED_FUNCTION_10_67(v57, v58, v59, v60);
    OUTLINED_FUNCTION_41_24();
    goto LABEL_15;
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  OUTLINED_FUNCTION_4_0();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1DD0E07C0;
  swift_getErrorValue();
  v46 = sub_1DD0DF18C();
  v48 = v47;
  *(v45 + 56) = MEMORY[0x1E69E6158];
  *(v45 + 64) = sub_1DCB34060();
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC(v49);

  OUTLINED_FUNCTION_11_61();
  v3[8] = v19;
  *v7 = 0u;
  *(v3 + 11) = 0u;
  OUTLINED_FUNCTION_33_24();
LABEL_17:
  sub_1DCF2AC40(v50, v51, v52, v53, v54, v55);
  OUTLINED_FUNCTION_48_21();
}

void sub_1DCF29C28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC(v10);
  v11 = v2 + 9;
  if (*(v2 + 104) != 2)
  {
    v100.n128_u64[0] = 0;
    v100.n128_u64[1] = 0xE000000000000000;
    sub_1DD0DEC1C();
    v96 = v100;
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000011);
    v100 = OUTLINED_FUNCTION_20_30();
    v101 = v22;
    v102 = v23;
    v103 = v24;
    OUTLINED_FUNCTION_36_35(v25, *(v5 + 80), *(v5 + 88), v26);
    sub_1DD0DF07C();
    v27 = v96.n128_i64[1];
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v28 = OUTLINED_FUNCTION_24_30();
    v30 = CommandFailure.init(errorCode:reason:)(v28, v29, v27);
    v31 = sub_1DCC7AE30();
    v32 = OUTLINED_FUNCTION_4_29(v31);
    *v33 = v30;
    *&v35 = OUTLINED_FUNCTION_3_104(v32);
    *v11 = v35;
    *(v3 + 11) = v35;
LABEL_18:
    v68 = OUTLINED_FUNCTION_39_28(v34);
    goto LABEL_19;
  }

  v90 = v2[9];
  v12 = v2[11];
  v13 = v2[10];
  v91 = v2[8];

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for IntentPromptAnswer(255, AssociatedTypeWitness, v15, v16);
  type metadata accessor for PromptResult(0, v17, v18, v19);
  OUTLINED_FUNCTION_2();
  (*(v20 + 16))(&v100, a2);
  if (!v103)
  {
    v88 = v12;
    v89 = v17;
    v96 = v100;
    v97 = v101;
    v98 = v102;
    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    OUTLINED_FUNCTION_4_0();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1DD0E07C0;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1DCB34060();
    *(v36 + 32) = v90;
    *(v36 + 40) = v13;

    OUTLINED_FUNCTION_13_66();
    sub_1DD0DD7EC(v37);

    OUTLINED_FUNCTION_10_67(v38, v39, v40, v41);
    v42 = v98;
    v92 = 0;
    v93 = 0;
    v95 = 0;
    v94 = 0;
    OUTLINED_FUNCTION_29_30();
    v48 = sub_1DCF26FF4(v43, v44, v45, v46, v47);
    v49 = v2[8];
    v50 = v3[9];
    v87 = v13;
    v52 = v3[10];
    v51 = v3[11];
    v53 = v3[12];
    v3[8] = v48;
    *v11 = 0u;
    *(v3 + 11) = 0u;
    v54 = *(v3 + 104);
    *(v3 + 104) = 4;
    v55 = v42;
    sub_1DCF2AC40(v49, v50, v52, v51, v53, v54);
    if (qword_1EDE4F6A8 != -1)
    {
      swift_once();
    }

    type metadata accessor for SiriKitEvent(0);
    v99 = 0;
    *v9 = 0;
    *(v9 + 1) = v92;
    *(v9 + 1) = *(&v92 + 3);
    *(v9 + 1) = v55;
    *(v9 + 2) = 0;
    v56 = v90;
    *(v9 + 3) = 0;
    *(v9 + 4) = v56;
    v57 = v88;
    *(v9 + 5) = v87;
    *(v9 + 6) = v57;
    v9[56] = 0;
    swift_storeEnumTagMultiPayload();
    SiriKitEvent.__allocating_init(_:builder:)(v9, 0);
    sub_1DCB4C064();
  }

  if (v103 != 1)
  {
    if (*(&v101 + 1) | v102 | v100.n128_u64[0] | v101 | v100.n128_u64[1])
    {

      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_13_66();
      v59 = sub_1DD0DD7EC(v58);
      OUTLINED_FUNCTION_10_67(v59, v60, v61, v62);
      OUTLINED_FUNCTION_28_29();
LABEL_17:
      OUTLINED_FUNCTION_29_30();
      v84 = sub_1DCF26FF4(v79, v80, v81, v82, v83);
      *&v85 = OUTLINED_FUNCTION_3_104(v84);
      *v11 = v85;
      *(v2 + 11) = v85;
      goto LABEL_18;
    }

    sub_1DD0DE6DC();
LABEL_16:
    OUTLINED_FUNCTION_13_66();
    v75 = sub_1DD0DD7EC(v74);
    OUTLINED_FUNCTION_10_67(v75, v76, v77, v78);
    OUTLINED_FUNCTION_28_29();
    goto LABEL_17;
  }

  v21 = v100.n128_u64[0];
  if (v100.n128_u8[8] == 1)
  {

    sub_1DD0DE6DC();
    goto LABEL_16;
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  OUTLINED_FUNCTION_4_0();
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1DD0E07C0;
  swift_getErrorValue();
  v64 = sub_1DD0DF18C();
  v66 = v65;
  *(v63 + 56) = MEMORY[0x1E69E6158];
  *(v63 + 64) = sub_1DCB34060();
  *(v63 + 32) = v64;
  *(v63 + 40) = v66;
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC(v67);

  OUTLINED_FUNCTION_11_61();
  v3[8] = v21;
  *v11 = 0u;
  *(v3 + 11) = 0u;
  OUTLINED_FUNCTION_33_24();
LABEL_19:
  sub_1DCF2AC40(v68, v69, v70, v71, v72, v73);
  OUTLINED_FUNCTION_49();
}

void sub_1DCF2A26C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v6 = v2 + 9;
  v5 = v2[9];
  if (*(v2 + 104) != 2)
  {
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000011);
    OUTLINED_FUNCTION_20_30();
    OUTLINED_FUNCTION_36_35(v16, *(v4 + 80), *(v4 + 88), v17);
    sub_1DD0DF07C();
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_24_30();
    v20 = CommandFailure.init(errorCode:reason:)(v18, v19, 0xE000000000000000);
    v21 = sub_1DCC7AE30();
    v22 = OUTLINED_FUNCTION_4_29(v21);
    *v23 = v20;
    *&v24 = OUTLINED_FUNCTION_3_104(v22);
    *v6 = v24;
    v6[1] = v24;
    v26 = OUTLINED_FUNCTION_39_28(v25);
    goto LABEL_9;
  }

  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = v2[10];
  v10 = v2 + 11;
  v11 = v2[11];
  v12 = *(a2 + 16);
  v85 = v3[8];

  if (!v12)
  {
    v84 = v11;
    if (v8 == 2)
    {
      v32 = v7;

      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_2_8();
        swift_once();
      }

      v33 = qword_1EDE57E18;
      v34 = sub_1DD0DE6DC();
      sub_1DD0DD7EC("NeedsConfirmationFlow was not answered but an updated intent was returned. Returning with updated intent.", 105, 2, &dword_1DCAFC000, v33, v34, MEMORY[0x1E69E7CC0]);

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      type metadata accessor for ResolutionResultProcessingResult(0, AssociatedTypeWitness, v36, v37);
      OUTLINED_FUNCTION_15_57();
      OUTLINED_FUNCTION_29_30();
      goto LABEL_34;
    }

    v54 = qword_1EDE4F908;
    v55 = v7;
    if (v8)
    {
      if (v54 != -1)
      {
        OUTLINED_FUNCTION_2_8();
        swift_once();
      }

      v83 = qword_1EDE57E18;
      sub_1DD0DE6DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      OUTLINED_FUNCTION_4_0();
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1DD0E07C0;
      v57 = v85;
      v86 = INIntent.debugDescriptionLite.getter();
      v59 = v58;
      *(v56 + 56) = MEMORY[0x1E69E6158];
      *(v56 + 64) = sub_1DCB34060();
      *(v56 + 32) = v86;
      *(v56 + 40) = v59;
      sub_1DD0DD7EC("Confirmation request was rejected. Intent after removing rejected value: %s", v82);

      v60 = [v57 _type];
      v87 = v57;

      if (v60 != 2)
      {
        v78 = (*(*(v4 + 88) + 144))(v5, v9, *(v4 + 80));
        v79 = sub_1DD0DE6DC();
        if (v78)
        {
          sub_1DD0DD7EC("Confirmation was rejected and RCHDelegate indicates we should interpret as cancellation. Transitioning from rejecting NeedsConfirmation to cancelled.", 149, 2, &dword_1DCAFC000, v83, v79, MEMORY[0x1E69E7CC0]);

          v26 = OUTLINED_FUNCTION_11_61();
          v3[8] = v7;
          v3[9] = v5;
          v3[10] = v9;
          v80 = 3;
          *v10 = 0;
          v3[12] = 0;
        }

        else
        {
          sub_1DD0DD7EC("Transitioning from rejecting NeedsConfirmation to NeedsValue", 60, 2, &dword_1DCAFC000, v83, v79, MEMORY[0x1E69E7CC0]);
          v81 = [objc_opt_self() needsValue];

          v26 = OUTLINED_FUNCTION_11_61();
          v3[8] = v7;
          v3[9] = v5;
          v80 = 1;
          v3[10] = v9;
          v3[11] = v84;
          v3[12] = v81;
        }

        v31 = *(v3 + 104);
        *(v3 + 104) = v80;
        goto LABEL_35;
      }

      v61 = sub_1DD0DE6DC();
      sub_1DD0DD7EC("Transitioning from rejecting NeedsConfirmation to re-resolving", 62, 2, &dword_1DCAFC000, v83, v61, MEMORY[0x1E69E7CC0]);

      v62 = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_9_66(v62, v63, v64, v65);
    }

    else
    {
      if (v54 != -1)
      {
        OUTLINED_FUNCTION_2_8();
        swift_once();
      }

      sub_1DD0DE70C();
      OUTLINED_FUNCTION_6_65("Confirmation request was confirmed. Transitioning to complete to update the intent before completing", 100, v70, &dword_1DCAFC000);

      v71 = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_9_66(v71, v72, v73, v74);
    }

LABEL_33:
    OUTLINED_FUNCTION_29_30();
LABEL_34:
    v75 = sub_1DCF26FF4(v38, v39, v40, v41, v42);
    *&v76 = OUTLINED_FUNCTION_3_104(v75);
    *v6 = v76;
    v6[1] = v76;
    v26 = OUTLINED_FUNCTION_39_28(v77);
LABEL_35:

    goto LABEL_9;
  }

  if (v12 != 1)
  {

    if (v8 | v7)
    {
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_2_8();
        swift_once();
      }

      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_6_65("NeedsConfirmationFlow was not answered. Returning with unaltered intent.", 72, v43, &dword_1DCAFC000);
      v44 = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_9_66(v44, v45, v46, v47);
      OUTLINED_FUNCTION_15_57();
      goto LABEL_33;
    }

    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_2_8();
      swift_once();
    }

    sub_1DD0DE6DC();
    v14 = "ResolutionResultProcessingFlowFrame parameter resolution was cancelled by user. Transitioning to complete.";
    v15 = 106;
    goto LABEL_29;
  }

  if (v7)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_2_8();
      swift_once();
    }

    sub_1DD0DE6DC();
    v14 = "NeedsConfirmationFlow resulted in an error that was handled by the flow. Will not continue";
    v15 = 90;
LABEL_29:
    OUTLINED_FUNCTION_6_65(v14, v15, v13, &dword_1DCAFC000);
    v66 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_9_66(v66, v67, v68, v69);
    OUTLINED_FUNCTION_15_57();
    goto LABEL_33;
  }

  v48 = v8;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  OUTLINED_FUNCTION_4_0();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1DD0E07C0;
  swift_getErrorValue();
  v50 = sub_1DD0DF18C();
  v52 = v51;
  *(v49 + 56) = MEMORY[0x1E69E6158];
  *(v49 + 64) = sub_1DCB34060();
  *(v49 + 32) = v50;
  *(v49 + 40) = v52;
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC(v53);

  OUTLINED_FUNCTION_11_61();
  v3[8] = v8;
  *v6 = 0u;
  v6[1] = 0u;
  OUTLINED_FUNCTION_33_24();
LABEL_9:
  sub_1DCF2AC40(v26, v27, v28, v29, v30, v31);
}

uint64_t sub_1DCF2AA38()
{

  swift_unknownObjectRelease();

  sub_1DCF2AC40(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_1DCB0E9D8(v0 + 112, &qword_1ECCA1BF0, &qword_1DD100F20);
  sub_1DCB0E9D8(v0 + 152, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  sub_1DCB0E9D8(v0 + 192, &qword_1ECCA35F8, &qword_1DD0E97A0);

  return v0;
}

uint64_t sub_1DCF2AADC()
{
  sub_1DCF2AA38();

  return swift_deallocClassInstance();
}

void sub_1DCF2AB28(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  switch(a6)
  {
    case 0:
      goto LABEL_11;
    case 1:
    case 2:
      v6 = a1;

      goto LABEL_10;
    case 3:
      v7 = a1;

      return;
    case 4:

      sub_1DD0DCF8C();
    case 5:
      a5 = a2;
      v8 = a1;
LABEL_10:
      a1 = a5;
LABEL_11:

      goto LABEL_13;
    case 6:

LABEL_13:
      v9 = a1;
      break;
    default:
      return;
  }
}

void sub_1DCF2AC40(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  switch(a6)
  {
    case 0:
      goto LABEL_11;
    case 1:
    case 2:

      goto LABEL_10;
    case 3:

      return;
    case 4:

      return;
    case 5:
      a5 = a2;

LABEL_10:
      a1 = a5;
LABEL_11:

      goto LABEL_13;
    case 6:

LABEL_13:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCF2AD40(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_1DCF2AB28(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t sub_1DCF2ADB8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_1DCF2AB28(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v14 = *(a1 + 40);
  *(a1 + 40) = v8;
  sub_1DCF2AC40(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t sub_1DCF2AE44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v3;
  v11 = *(a1 + 40);
  *(a1 + 40) = v4;
  sub_1DCF2AC40(v5, v7, v6, v8, v9, v11);
  return a1;
}

uint64_t sub_1DCF2AE98(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 41))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCF2AED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for ConfirmedParameterDetails(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_1DCF2AFB8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1DCF2B00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1DD0DCF8C();
}

void *sub_1DCF2B0BC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DCF293E4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1DCF2B100()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DCF05FD4;
  v6 = OUTLINED_FUNCTION_8_1();

  return sub_1DCF2838C(v6, v7, v8, v9, v2, v3);
}

uint64_t sub_1DCF2B1B4()
{
  OUTLINED_FUNCTION_41();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1DCF0A34C;
  OUTLINED_FUNCTION_8_1();

  return sub_1DCCC0004();
}

uint64_t Resolvable.init(defaultValue:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_20_0(v7);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_4_64();
  v10 = OUTLINED_FUNCTION_80_8();
  type metadata accessor for ResolvableStorage(v10, v11, v12, v13);
  v14 = *(a2 - 8);
  (*(v14 + 16))(v3, a1, a2);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, a2);
  v15 = sub_1DCF2B534(v3);
  result = (*(v14 + 8))(a1, a2);
  *a3 = v15;
  return result;
}

void Resolvable.resolveAs(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Resolvable.CurrentValue(0, v6, a3, a4);
  OUTLINED_FUNCTION_20_0(v7);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_112();
  (*(v10 + 16))(v4, a1, v6);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  sub_1DD0DCF8C();
}

uint64_t Resolvable.init(type:)@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_20_0(v4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_4_64();
  v7 = OUTLINED_FUNCTION_4_11();
  type metadata accessor for ResolvableStorage(v7, v8, v9, v10);
  OUTLINED_FUNCTION_8_67();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  result = sub_1DCF2B534(v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DCF2B534(uint64_t a1)
{
  OUTLINED_FUNCTION_11_62();
  v2 = swift_allocObject();
  sub_1DCF2C36C(a1);
  return v2;
}

uint64_t Resolvable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_4_11();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_179();
  sub_1DCF2CEDC();
  OUTLINED_FUNCTION_38_2(v2);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_90_0();
    v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_112();
    (*(v10 + 32))(a2, v2, v4);
  }

  OUTLINED_FUNCTION_8_67();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void sub_1DCF2B6C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Resolvable.CurrentValue(0, v6, a3, a4);
  MEMORY[0x1EEE9AC00](v7, v8);
  (*(v10 + 16))(v13 - v9, a1);
  v13[1] = *a2;
  type metadata accessor for Resolvable(0, v6, v11, v12);
  sub_1DD0DCF8C();
}

void sub_1DCF2B7C4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = *(v2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v41 - v14;
  v16 = OUTLINED_FUNCTION_4_11();
  v20 = type metadata accessor for Resolvable.CurrentValue(v16, v17, v18, v19);
  OUTLINED_FUNCTION_9();
  v22 = v21;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v41 - v25;
  (*(v22 + 16))(&v41 - v25, v1, v20);
  OUTLINED_FUNCTION_38_2(v26);
  if (!v27)
  {
    (*(v4 + 32))(v6, v26, v3);
    sub_1DCF2D078(v6);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v28 = sub_1DD0DD8FC();
  v29 = __swift_project_value_buffer(v28, qword_1EDE57E00);
  v30 = *(v28 - 8);
  (*(v30 + 16))(v15, v29, v28);
  OUTLINED_FUNCTION_8_67();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_1DCBCF6C8(v15, v12);
  OUTLINED_FUNCTION_38_2(v12);
  if (v27)
  {
    sub_1DCB185D0(v12, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v37 = 136315650;
      v38 = sub_1DD0DEC3C();
      v40 = sub_1DCB10E9C(v38, v39, &v42);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2048;
      *(v37 + 14) = 64;
      *(v37 + 22) = 2080;
      *(v37 + 24) = sub_1DCB10E9C(0xD00000000000004DLL, 0x80000001DD124050, &v42);
      _os_log_impl(&dword_1DCAFC000, v35, v36, "FatalError at %s:%lu - %s", v37, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v30 + 8))(v12, v28);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004DLL, 0x80000001DD124050);
}

uint64_t Resolvable.resolvedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = OUTLINED_FUNCTION_4_11();
  v10 = type metadata accessor for Resolvable.CurrentValue(v6, v7, v8, v9);
  OUTLINED_FUNCTION_20_0(v10);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v22 - v13;
  v22[1] = *v2;
  Resolvable.wrappedValue.getter(a1, v22 - v13);
  OUTLINED_FUNCTION_38_2(v14);
  if (!v15)
  {
    OUTLINED_FUNCTION_112();
    (*(v16 + 32))(a2, v14, v5);
  }

  OUTLINED_FUNCTION_8_67();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

BOOL Resolvable.isSet.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_80_8();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_179();
  Resolvable.resolvedValue.getter(a1, v1);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v3) != 1;
  v7 = OUTLINED_FUNCTION_90_0();
  v8(v7);
  return v6;
}

void static Resolvable.CurrentValue<A>.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50();
  v38 = v0;
  v2 = v1;
  v4 = v3;
  v40 = *(v1 - 8);
  v41 = v5;
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v36 = &v36 - v9;
  v12 = type metadata accessor for Resolvable.CurrentValue(0, v10, v10, v11);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v36 - v17;
  OUTLINED_FUNCTION_4_11();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v21 = v20;
  OUTLINED_FUNCTION_10();
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v36 - v25;
  v27 = *(v24 + 48);
  v39 = v14;
  v28 = *(v14 + 16);
  v28(&v36 - v25, v4, v12);
  v28(&v26[v27], v41, v12);
  OUTLINED_FUNCTION_41_1(v26);
  if (v29)
  {
    OUTLINED_FUNCTION_41_1(&v26[v27]);
    if (v29)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v28(v18, v26, v12);
    OUTLINED_FUNCTION_41_1(&v26[v27]);
    if (!v29)
    {
      v30 = v40;
      v31 = *(v40 + 32);
      v32 = v36;
      v31(v36, v18, v2);
      v33 = &v26[v27];
      v34 = v37;
      v31(v37, v33, v2);
      sub_1DD0DDF7C();
      v35 = *(v30 + 8);
      v35(v34, v2);
      v35(v32, v2);
LABEL_10:
      v21 = v39;
      goto LABEL_11;
    }

    (*(v40 + 8))(v18, v2);
  }

  v12 = TupleTypeMetadata2;
LABEL_11:
  (*(v21 + 8))(v26, v12);
  OUTLINED_FUNCTION_49();
}

uint64_t Resolvable.CurrentValue<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12);
  OUTLINED_FUNCTION_38_2(v10);
  if (v13)
  {
    return MEMORY[0x1E12A7840](1);
  }

  (*(v4 + 32))(v7, v10, v3);
  sub_1DD0DDF1C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Resolvable.CurrentValue<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1DD0DF1DC();
  Resolvable.CurrentValue<A>.hash(into:)(v5, a1, a2);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCF2C318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DD0DF1DC();
  Resolvable.CurrentValue<A>.hash(into:)(v6, a2, v4);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCF2C36C(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  OUTLINED_FUNCTION_66_0();
  v5 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_4_64();
  *(v1 + 56) = 0;
  sub_1DD0DECCC();
  swift_getTupleTypeMetadata2();
  sub_1DD0DE37C();
  *(v1 + 64) = sub_1DD0DDE9C();
  *(v1 + 72) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v1 + 24) = sub_1DCF2DB20;
  *(v1 + 32) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v1 + 40) = OUTLINED_FUNCTION_68_0;
  *(v1 + 48) = v11;
  *(v1 + 56) = 0;

  sub_1DD0DDB6C();
  (*(v7 + 16))(v1, a1, v5);
  v12 = sub_1DD0DDB7C();
  (*(v7 + 8))(a1, v5);
  *(v2 + 16) = v12;
  return v2;
}

void sub_1DCF2C560(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_62();
  swift_allocObject();
  sub_1DCF2C5A8();
}

void sub_1DCF2C5A8()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(*v0 + 80);
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - v9;
  *(v1 + 56) = 0;
  sub_1DD0DECCC();
  swift_getTupleTypeMetadata2();
  sub_1DD0DE37C();
  *(v1 + 64) = sub_1DD0DDE9C();
  *(v1 + 72) = 0;
  OUTLINED_FUNCTION_88_0();
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  *(v1 + 24) = sub_1DCF2DB08;
  *(v1 + 32) = v11;
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v3;
  *(v1 + 40) = sub_1DCF2DB10;
  *(v1 + 48) = v12;
  sub_1DD0DDB6C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v6);
  swift_retain_n();
  swift_retain_n();
  *(v1 + 16) = sub_1DD0DDB7C();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF2C828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(*a1 + 80);
  v6 = sub_1DD0DE97C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12 - v9;
  sub_1DCF2CEDC();
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, *(v4 + *MEMORY[0x1E69E6CE8] + 8));
  }

  else
  {
    swift_getAtKeyPath();
    __swift_storeEnumTagSinglePayload(a3, 0, 1, *(v4 + *MEMORY[0x1E69E6CE8] + 8));
    return (*(*(v5 - 8) + 8))(v10, v5);
  }
}

uint64_t sub_1DCF2C9E8(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a1;
  v20 = *(*a3 + *MEMORY[0x1E69E6CE8] + 8);
  v19 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v4 = &v18 - v3;
  v6 = *(v5 + 80);
  v7 = sub_1DD0DE97C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v18 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v18 - v15;
  sub_1DCF2CEDC();
  if (__swift_getEnumTagSinglePayload(v12, 1, v6) != 1)
  {
    (*(v13 + 32))(v16, v12, v6);
    (*(v19 + 16))(v4, v21, v20);
    swift_setAtWritableKeyPath();
    sub_1DCF2D078(v16);
  }

  (*(v8 + 8))(v12, v7);
  return 0;
}

void sub_1DCF2CC84(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *(*a3 + *MEMORY[0x1E69E6CE8]);
  v5 = sub_1DD0DE97C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  v10 = sub_1DD0DE97C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  (*(v6 + 16))(v9, a1, v5);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    sub_1DD0DCF8C();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCF2CEDC()
{
  OUTLINED_FUNCTION_4_11();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_179();
  if ((*(v1 + 72) & 1) == 0)
  {
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_8_67();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_1DCF2D078(uint64_t a1)
{
  OUTLINED_FUNCTION_80_8();
  v2 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_20_0(v2);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_179();
  *(v1 + 72) = 0;
  sub_1DD0DCF8C();
}

void sub_1DCF2D1E0()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = *(*v0 + 80);
  OUTLINED_FUNCTION_66_0();
  v4 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v14 - v9;
  sub_1DCF2CEDC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v3);
  (*(v6 + 8))(v10, v4);
  if (EnumTagSinglePayload == 1)
  {
    swift_beginAccess();
    v14[2] = v2;
    OUTLINED_FUNCTION_66_0();
    sub_1DD0DECCC();
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_21_42(*MEMORY[0x1E69E6CE8], v12, v13);
}

uint64_t sub_1DCF2D68C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DCF2D804(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCF2DA9C()
{

  return v0;
}

uint64_t sub_1DCF2DADC()
{
  sub_1DCF2DA9C();
  OUTLINED_FUNCTION_11_62();

  return swift_deallocClassInstance();
}

void sub_1DCF2DB28()
{
  v2 = type metadata accessor for CommandFailure();
  v3 = sub_1DCF34FC8(&qword_1ECCAA6E0, type metadata accessor for CommandFailure, &unk_1DD0E8070);
  v1[0] = v0;
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1DD0DCF8C();
}

void ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v13 - v9;
  v11 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DD102AE0;
  v12[5] = a1;
  v12[6] = a3;
  v12[7] = a4;
  sub_1DD0DCF8C();
}

void sub_1DCF2DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v17 - v13;
  v15 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a8;
  v16[5] = 0;
  v16[6] = a3;
  v16[7] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF2DF00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEA99C0();
}

uint64_t sub_1DCF2DFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEA88E4();
}

uint64_t sub_1DCF2E040()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAE4F4();
}

uint64_t sub_1DCF2E0D8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCF2DF00();
}

uint64_t sub_1DCF2E15C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_65_0(v1);
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_121();

  return sub_1DCC100AC();
}

uint64_t sub_1DCF2E1EC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_65_0(v1);
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_121();

  return sub_1DCC100AC();
}

uint64_t sub_1DCF2E27C(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)();
}

uint64_t ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCEA99C0();
}

uint64_t sub_1DCF2E3A4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)();
}

uint64_t ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEA88E4();
}

uint64_t sub_1DCF2E4C8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)();
}

uint64_t ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAE4F4();
}

uint64_t sub_1DCF2E5E4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)();
}

uint64_t ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t dispatch thunk of ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_25_1();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_3_105();

  return v5();
}

uint64_t dispatch thunk of ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_25_1();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_3_105();

  return v5();
}

uint64_t dispatch thunk of ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_25_1();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_3_105();

  return v5();
}

uint64_t dispatch thunk of ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)()
{
  OUTLINED_FUNCTION_125();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v16 = (*(v0 + 48) + **(v0 + 48));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  v13[1] = sub_1DCB4AE1C;

  return v16(v11, v9, v7, v5, v3, v1);
}

uint64_t sub_1DCF2EBB8(uint64_t a1)
{
  result = swift_checkMetadataState();
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

void sub_1DCF2EC74(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v4 = *v2;
  v5 = v2 + *(*v2 + 152);
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = v5[40];
  if (v8 == 7)
  {
    *a1 = v6;
    *(a1 + 8) = v7;
    OUTLINED_FUNCTION_49();

    sub_1DCB8E3C0(v15, v16);
  }

  else if (v8 == 8)
  {
    *a1 = v6;
    *(a1 + 8) = v7 & 1 | 0x40;
    OUTLINED_FUNCTION_49();

    v14 = v12;
  }

  else
  {
    if (v8 == 9)
    {
      v10 = *(v5 + 3);
      v9 = *(v5 + 4);
      v11 = *(v5 + 2);
      if (!(v9 | v10 | v11 | v6 | v7))
      {
        *a1 = 0;
        *(a1 + 8) = 0x80;
        OUTLINED_FUNCTION_49();
        return;
      }
    }

    else
    {
      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      v9 = *(v5 + 4);
    }

    v18 = OUTLINED_FUNCTION_79_16(v4, a2);
    OUTLINED_FUNCTION_0_106();
    WitnessTable = swift_getWitnessTable();
    v20 = OUTLINED_FUNCTION_34(v18, WitnessTable);
    *v21 = v6;
    *(v21 + 8) = v7;
    *(v21 + 40) = v8 | 0x60;
    *(v21 + 16) = v11;
    *(v21 + 24) = v10;
    *(v21 + 32) = v9;
    *a1 = v20;
    *(a1 + 8) = 64;
    OUTLINED_FUNCTION_49();

    sub_1DCB3C2E8(v22, v23, v24, v25, v26, v27);
  }
}

void sub_1DCF2EE28()
{
  OUTLINED_FUNCTION_66();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCF2EEB8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 160);
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v8 + 176) = v7;

  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF2EFD4(uint64_t a1)
{
  if (v1[22])
  {
    sub_1DCF34488(*(v1[9] + *(*v1[9] + 144)));
  }

  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v1[23] = v10;
  *v10 = v11;
  v10[1] = sub_1DCF2F254;
  OUTLINED_FUNCTION_33_5();

  return sub_1DCB8E6F8(v12, v13, v14);
}