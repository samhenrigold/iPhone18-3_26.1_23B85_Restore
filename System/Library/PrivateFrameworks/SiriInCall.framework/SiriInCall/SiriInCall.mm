uint64_t sub_266EB1A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[6] = a4;
  v26[7] = a5;
  v26[4] = a1;
  v26[5] = a2;
  v6 = sub_266EB8F68();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  v15 = *(v8 + 16);
  v15(v26 - v13, a3, v6);
  v16 = sub_266EB9178();
  v26[2] = v17;
  v26[3] = v16;
  sub_266EB9168();
  v26[1] = sub_266EB9158();
  v18 = [objc_opt_self() sharedInstance];
  if (qword_281327608 != -1)
  {
    swift_once();
  }

  v19 = qword_281327610;
  type metadata accessor for ButterflyRequestProcessor(0);
  v20 = swift_allocObject();
  v28[3] = sub_266EB1DC4();
  v28[4] = &off_28787B068;
  v28[0] = v18;
  v21 = qword_281327650;
  v22 = *MEMORY[0x277D5CF40];
  v23 = sub_266EB9098();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *(v20 + qword_281327660) = 2;
  sub_266EB1E08(v28, v20 + qword_281327658);
  *(v20 + qword_281327648) = v19;
  v15(v12, v14, v6);
  sub_266EB1E08(v29, v27);

  v24 = sub_266EB90A8();
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  (*(v8 + 8))(v14, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v24;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t type metadata accessor for ButterflyRequestProcessor(uint64_t a1)
{
  result = qword_2813274F0;
  if (!qword_2813274F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_266EB1DC4()
{
  result = qword_2813274B0;
  if (!qword_2813274B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813274B0);
  }

  return result;
}

uint64_t sub_266EB1E08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_266EB1F20(void *a1, uint64_t a2, unsigned int *a3)
{
  v6 = sub_266EB9098();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  (*(v8 + 104))(v11 - v10, *a3, v6);
  sub_266EB2008(v12, a1, a2);
  return (*(v8 + 8))(v12, v6);
}

uint64_t sub_266EB2008(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_266EB9098();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  if (qword_2813274C0 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_2813274C0);
  }

  v13 = sub_266EB91B8();
  __swift_project_value_buffer(v13, qword_281327620);
  v14 = a2;
  v15 = sub_266EB9198();
  v16 = sub_266EB9318();

  if (os_log_type_enabled(v15, v16))
  {
    v33 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v6;
    v34[0] = v31;
    *v17 = 138412546;
    *(v17 + 4) = v14;
    *v18 = v14;
    *(v17 + 12) = 2080;
    v19 = v14;
    v20 = sub_266EB9088();
    v22 = v8;
    v23 = v12;
    v24 = a1;
    v25 = sub_266EB2334(v20, v21, v34);

    *(v17 + 14) = v25;
    a1 = v24;
    v12 = v23;
    v8 = v22;
    _os_log_impl(&dword_266EB0000, v15, v16, "ButterflyRequestProcessor handling message: %@, requestId: %s", v17, 0x16u);
    sub_266EB2554(v18);
    MEMORY[0x26D5F6FB0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v6 = v32;
    MEMORY[0x26D5F6FB0](v31, -1, -1);
    v26 = v17;
    a3 = v33;
    MEMORY[0x26D5F6FB0](v26, -1, -1);
  }

  (*(v8 + 16))(v12, a1, v6);
  v27 = qword_281327650;
  swift_beginAccess();
  (*(v8 + 40))(a3 + v27, v12, v6);
  swift_endAccess();
  v28 = sub_266EB9088();
  sub_266EB25BC(v28, v29);
}

void OUTLINED_FUNCTION_3()
{

  JUMPOUT(0x26D5F6FB0);
}

unint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_266EB2334(a1, v9, va);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_266EB2334(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266EB2454(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_266EB23F8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_266EB23F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_266EB2454(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_266EB84DC(a5, a6);
    *a1 = v9;
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
    result = sub_266EB93D8();
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

uint64_t sub_266EB2554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC998, &qword_266EB9CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266EB25BC(uint64_t a1, unint64_t a2)
{
  v5 = sub_266EB90B8();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;

  static ButterflyCallStateManager.isUserOnACall(_:_:completion:)(v5, a1, a2, sub_266EB3504, v6);
  swift_unknownObjectRelease();
}

uint64_t sub_266EB266C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void static ButterflyCallStateManager.isUserOnACall(_:_:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_2813274C0 != -1)
  {
    swift_once();
  }

  v10 = sub_266EB91B8();
  __swift_project_value_buffer(v10, qword_281327620);

  v11 = sub_266EB9198();
  v12 = sub_266EB9318();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_266EB2334(a2, a3, v21);
    _os_log_impl(&dword_266EB0000, v11, v12, "Fetching isUserOnACall status for requestId: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D5F6FB0](v14, -1, -1);
    MEMORY[0x26D5F6FB0](v13, -1, -1);
  }

  if ([a1 respondsToSelector_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC978, &qword_266EB9C60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266EB9C50;
    *(inited + 32) = sub_266EB9228();
    *(inited + 40) = v16;
    sub_266EB29C8(inited);
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a3;
    v17[4] = a4;
    v17[5] = a5;

    v18 = sub_266EB92F8();
    v19 = sub_266EB9218();
    v21[4] = sub_266EB2F1C;
    v21[5] = v17;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_266EB2B6C;
    v21[3] = &block_descriptor;
    v20 = _Block_copy(v21);

    [a1 fetchContextsForKeys:v18 forRequestID:v19 includesNearbyDevices:0 completion:v20];
    _Block_release(v20);
  }
}

uint64_t sub_266EB2988()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266EB29C8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC990, &qword_266EB9CA0);
  result = sub_266EB9388();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_266EB9428();

    sub_266EB9258();
    result = sub_266EB9448();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_266EB9418() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266EB2B6C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_266EB5F3C();
    v2 = sub_266EB9288();
  }

  v3(v2);
}

uint64_t sub_266EB2C24(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(_BOOL8))
{
  if (!a1)
  {
    goto LABEL_9;
  }

  result = sub_266EB5D84(a1);
  if (!result)
  {
    goto LABEL_9;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D5F6BE0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(a1 + 32);
  }

  v10 = sub_266EB60AC(v9);
  if (!v10)
  {
LABEL_9:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = sub_266EB9228();
  sub_266EB5CB4(v11, &v23, v12, v13);

  if (!*(&v24 + 1))
  {
LABEL_10:
    sub_266EB2E94(&v23);
    v17 = 0;
    goto LABEL_11;
  }

  sub_266EB6124(&v23, v25);
  sub_266EB23F8(v25, &v23);
  v14 = objc_allocWithZone(MEMORY[0x277CEF1C8]);
  v15 = sub_266EB5D18(&v23);
  v16 = [v15 callState];

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v17 = v16 != 0;
LABEL_11:
  if (qword_2813274C0 != -1)
  {
    swift_once();
  }

  v18 = sub_266EB91B8();
  __swift_project_value_buffer(v18, qword_281327620);

  v19 = sub_266EB9198();
  v20 = sub_266EB9318();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v25[0] = v22;
    *v21 = 67109378;
    *(v21 + 4) = v17;
    *(v21 + 8) = 2080;
    *(v21 + 10) = sub_266EB2334(a2, a3, v25);
    _os_log_impl(&dword_266EB0000, v19, v20, "Retrieved isUserOnACall status: %{BOOL}d for requestId: %s", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x26D5F6FB0](v22, -1, -1);
    MEMORY[0x26D5F6FB0](v21, -1, -1);
  }

  return a4(v17);
}

uint64_t sub_266EB2E94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC988, &qword_266EB9C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266EB2F28(uint64_t a1, uint64_t a2, char a3)
{
  v6._countAndFlagsBits = sub_266EB90C8();
  sub_266EB2F78(v6, a3);
}

void sub_266EB2F78(Swift::String endedFor, char a2)
{
  object = endedFor._object;
  countAndFlagsBits = endedFor._countAndFlagsBits;
  v5 = *(v2 + qword_281327660);
  if (v5 == 2)
  {
    if (qword_2813274C0 != -1)
    {
      swift_once();
    }

    v6 = sub_266EB91B8();
    __swift_project_value_buffer(v6, qword_281327620);

    oslog = sub_266EB9198();
    v7 = sub_266EB9328();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_266EB2334(countAndFlagsBits, object, &v11);
      _os_log_impl(&dword_266EB0000, oslog, v7, "Phone call state unknown at time of request completion requestId=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D5F6FB0](v9, -1, -1);
      MEMORY[0x26D5F6FB0](v8, -1, -1);
    }

    else
    {
    }
  }

  else if (v5)
  {
    SiriInCallInstrumentationUtil.logInvocationContext(endedFor:isCancelled:)(endedFor, a2 & 1);
  }
}

uint64_t ButterflyRequestProcessor.__deallocating_deinit()
{
  v0 = ButterflyRequestProcessor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_266EB317C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC940, &qword_266EB9B80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_266EB91F8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + qword_281327660) = a1;
  if (qword_2813274C0 != -1)
  {
    swift_once();
  }

  v15 = sub_266EB91B8();
  __swift_project_value_buffer(v15, qword_281327620);
  v16 = sub_266EB9198();
  v17 = sub_266EB9318();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v12;
    v19 = v11;
    v20 = v10;
    v21 = a2;
    v22 = a4;
    v23 = a3;
    v24 = v18;
    *v18 = 67109120;
    *(v18 + 4) = a1 & 1;
    _os_log_impl(&dword_266EB0000, v16, v17, "Phone call state retrieved: %{BOOL}d", v18, 8u);
    v25 = v24;
    a3 = v23;
    a4 = v22;
    a2 = v21;
    v10 = v20;
    v11 = v19;
    v12 = v30;
    MEMORY[0x26D5F6FB0](v25, -1, -1);
  }

  if (a1)
  {
    sub_266EB91D8();
    v26 = sub_266EB91E8();
    (*(v12 + 8))(v14, v11);
    v27 = sub_266EB92E8();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = a2;
    v28[5] = a3;
    v28[6] = a4;
    v28[7] = v26;

    sub_266EB4704(0, 0, v10, &unk_266EB9B90, v28);
  }
}

uint64_t sub_266EB3440()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t ButterflyRequestProcessor.deinit()
{
  v0 = sub_266EB90D8();
  v1 = qword_281327650;
  sub_266EB9098();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_281327658));
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2()
{
}

uint64_t sub_266EB35A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_266EB35C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266EB3624()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC980, &qword_266EB9C90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_266EB3744(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t SICCall.init(isMuted:mediaType:status:participantCount:providerType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = a2;
  *(a6 + 8) = BYTE4(a2) & 1;
  *(a6 + 12) = a3;
  *(a6 + 16) = BYTE4(a3) & 1;
  *(a6 + 20) = a4;
  *(a6 + 24) = BYTE4(a4) & 1;
  *(a6 + 28) = a5;
  *(a6 + 32) = BYTE4(a5) & 1;
  return result;
}

unint64_t sub_266EB3868(unint64_t a1)
{
  if ((a1 & 0x100000000) == 0)
  {
    if (a1 > 20)
    {
      v2 = 6;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if (a1 > 10)
    {
      v2 = 5;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if (a1 > 5)
    {
      v2 = 4;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if (a1 > 2)
    {
      v2 = 3;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if (a1 == 2)
    {
      v2 = 2;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if (a1 == 1)
    {
      v2 = 1;
      return v2 | ((HIDWORD(a1) & 1) << 32);
    }

    if ((a1 & 0x80000000) != 0)
    {
      if (qword_2800EC838 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2800EC838);
      }

      v4 = sub_266EB91B8();
      __swift_project_value_buffer(v4, qword_2800ECC50);
      v5 = sub_266EB9198();
      v6 = sub_266EB9328();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 67109120;
        *(v7 + 4) = a1;
        _os_log_impl(&dword_266EB0000, v5, v6, "Unknown participantCount=%d", v7, 8u);
        OUTLINED_FUNCTION_3();
      }
    }
  }

  v2 = 0;
  return v2 | ((HIDWORD(a1) & 1) << 32);
}

uint64_t sub_266EB39B4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = OUTLINED_FUNCTION_2();
  v4(v3);
  if (v26)
  {
    sub_266EB35A8(&v25, v27);
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v5 = OUTLINED_FUNCTION_2();
    v7 = v6(v5);
    if (qword_2800EC838 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2800EC838);
    }

    v8 = sub_266EB91B8();
    __swift_project_value_buffer(v8, qword_2800ECC50);
    v9 = sub_266EB9198();
    v10 = sub_266EB9318();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134283521;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_266EB0000, v9, v10, "partcipantCount=%{private}ld", v11, 0xCu);
      OUTLINED_FUNCTION_3();
    }

    v12 = v28;
    v13 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v14 = (*(v13 + 8))(v12, v13);
    v15 = sub_266EB3C88(v27);
    v16 = v28;
    v17 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v18 = (*(v17 + 16))(v16, v17);
    result = sub_266EB3F9C(v18);
    if (v7 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v7 <= 0x7FFFFFFF)
    {
      v20 = result;
      v21 = v14 & 1;
      v22 = v28;
      v23 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v24 = (*(v23 + 32))(v22, v23);
      LODWORD(v22) = sub_266EB4164(v24);

      LOBYTE(v25) = 0;
      *a1 = v21;
      *(a1 + 4) = v15;
      *(a1 + 8) = 0;
      *(a1 + 12) = v20;
      *(a1 + 16) = 0;
      *(a1 + 20) = v7;
      *(a1 + 24) = 0;
      *(a1 + 28) = v22;
      *(a1 + 32) = 0;
      return __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    __break(1u);
  }

  else
  {
    result = sub_266EB43B4(&v25, &qword_2800EC930, &qword_266EB9AF8);
    *a1 = 2;
    *(a1 + 4) = 0;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_266EB3C88(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = OUTLINED_FUNCTION_2();
  v3(v2);
  if (!v30)
  {
    sub_266EB43B4(&v29, &qword_2800EC938, &qword_266EB9B00);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v18 = OUTLINED_FUNCTION_2();
    v20 = v19(v18);
    v21 = [v20 supportsAudioAndVideo];
    v22 = [v20 supportsAudioOnly];
    v23 = v22;
    if (!v21)
    {

      return v23;
    }

    if (v22)
    {
      v24 = a1[3];
      v25 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v24);
      v26 = (*(v25 + 40))(v24, v25);

      if (v26)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return 2;
  }

  sub_266EB35A8(&v29, v32);
  v4 = v33;
  v5 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v6 = (*(v5 + 8))(v4, v5);
  if (v6 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    return 2;
  }

  if (v6 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    return 1;
  }

  else
  {
    if (v6)
    {
      if (qword_2800EC838 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2800EC838);
      }

      v7 = sub_266EB91B8();
      __swift_project_value_buffer(v7, qword_2800ECC50);
      sub_266EB1E08(v32, &v29);
      v8 = sub_266EB9198();
      v9 = sub_266EB9328();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136315138;
        v12 = v30;
        v13 = v31;
        __swift_project_boxed_opaque_existential_1(&v29, v30);
        (*(v13 + 8))(v12, v13);
        type metadata accessor for TUConversationAVMode(0);
        v14 = sub_266EB9238();
        v16 = v15;
        __swift_destroy_boxed_opaque_existential_1Tm(&v29);
        v17 = sub_266EB2334(v14, v16, &v28);

        *(v10 + 4) = v17;
        _os_log_impl(&dword_266EB0000, v8, v9, "Unknown TUConversationAVMode encountered avMode=%s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_3();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v29);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    return 0;
  }
}

uint64_t sub_266EB3F9C(uint64_t a1)
{
  v1 = a1;
  switch(a1)
  {
    case 0:
      if (qword_2800EC838 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2800EC838);
      }

      v2 = sub_266EB91B8();
      __swift_project_value_buffer(v2, qword_2800ECC50);
      v3 = sub_266EB9198();
      v4 = sub_266EB9328();
      if (!os_log_type_enabled(v3, v4))
      {

        goto LABEL_16;
      }

      v1 = 2;
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_266EB0000, v3, v4, "Encountered callStatus=idle mapping to disconnected", v5, 2u);
      OUTLINED_FUNCTION_3();

      break;
    case 1:
      return v1;
    case 2:
      v1 = 5;
      break;
    case 3:
      v1 = 4;
      break;
    case 4:
      v1 = 3;
      break;
    case 5:
      if (qword_2800EC838 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2800EC838);
      }

      v6 = sub_266EB91B8();
      __swift_project_value_buffer(v6, qword_2800ECC50);
      v7 = sub_266EB9198();
      v8 = sub_266EB9318();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_266EB0000, v7, v8, "Encountered callStatus=disconnecting mapping to connected", v9, 2u);
        OUTLINED_FUNCTION_3();
      }

      v1 = 1;
      break;
    case 6:
LABEL_16:
      v1 = 2;
      break;
    default:
      v1 = 0;
      break;
  }

  return v1;
}

uint64_t sub_266EB4164(void *a1)
{
  if (![a1 isSystemProvider])
  {
    return 3;
  }

  if ([a1 isFaceTimeProvider])
  {
    return 2;
  }

  return [a1 isTelephonyProvider];
}

__n128 __swift_memcpy33_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266EB4278(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[33])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

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

uint64_t sub_266EB42D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t sub_266EB43B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_266EB4440(uint64_t a1, unsigned int *a2)
{
  v4 = sub_266EB9098();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *a2, v4);
  v8 = qword_281327650;
  swift_beginAccess();
  (*(v5 + 40))(v2 + v8, v7, v4);
  swift_endAccess();
  v9 = sub_266EB90C8();
  sub_266EB25BC(v9, v10);
}

uint64_t sub_266EB4564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_266EB4588, 0, 0);
}

uint64_t sub_266EB4588()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 48) = qword_281327658;
  sub_266EB92C8();
  *(v0 + 56) = sub_266EB92B8();
  v2 = sub_266EB9298();

  return MEMORY[0x2822009F8](sub_266EB4624, v2, v1);
}

uint64_t sub_266EB4624()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  sub_266EB39B4(v0 + 64, (v2 + v1));

  return MEMORY[0x2822009F8](sub_266EB4698, 0, 0);
}

uint64_t sub_266EB4698()
{
  OUTLINED_FUNCTION_1_0();
  SiriInCallInstrumentationUtil.logInvocationContext(occurringFor:at:callMetadata:)(*(v0 + 24), *(v0 + 32), *(v0 + 40), (v0 + 64));
  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_266EB4704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC940, &qword_266EB9B80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_266EB4F38(a3, v24 - v10);
  v12 = sub_266EB92E8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_266EB4FD0(v11);
  }

  else
  {
    sub_266EB92D8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_266EB9298();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_266EB9248() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_266EB4FD0(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_266EB4FD0(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_266EB4A38()
{
  v1 = qword_281327650;
  sub_266EB9098();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_281327658));
}

uint64_t sub_266EB4AA8(uint64_t a1)
{
  result = sub_266EB9098();
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

uint64_t sub_266EB4B80(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_266EB4C78;

  return v6(a1);
}

uint64_t sub_266EB4C78()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_266EB4D88(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_0(v9);
  *v10 = v11;
  v10[1] = sub_266EB4E54;

  return sub_266EB4564(a1, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_266EB4E54()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_266EB4F38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC940, &qword_266EB9B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266EB4FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC940, &qword_266EB9B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266EB5038()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_0(v1);

  return v4(v3);
}

uint64_t sub_266EB50D0()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_0(v1);

  return v4(v3);
}

id sub_266EB51FC@<X0>(void *a1@<X8>)
{
  result = [v1 frontmostAudioOrVideoCall];
  v4 = result;
  if (result)
  {
    result = sub_266EB57AC(0, &qword_2800EC970, 0x277D6EDE0);
    v5 = &off_28787B078;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

char *sub_266EB5294()
{
  v1 = v0;
  if ([v0 isConversation])
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 activeConversationForCall_];

    if (v3)
    {
      v4 = [v3 activeRemoteParticipants];
      sub_266EB57AC(0, &qword_2800EC960, 0x277D6EEA8);
      sub_266EB575C(&qword_2800EC968, &qword_2800EC960, 0x277D6EEA8);
      v5 = sub_266EB9308();

      v1 = sub_266EB54F0(v5);

      result = v1 + 1;
      if (!__OFADD__(v1, 1))
      {
        return result;
      }

      __break(1u);
    }
  }

  if (qword_2800EC838 != -1)
  {
    swift_once();
  }

  v7 = sub_266EB91B8();
  __swift_project_value_buffer(v7, qword_2800ECC50);
  v8 = sub_266EB9198();
  v9 = sub_266EB9328();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_266EB0000, v8, v9, "Call not backed by conversation.  Using alternate partcipantCount method.", v10, 2u);
    MEMORY[0x26D5F6FB0](v10, -1, -1);
  }

  v11 = [v1 remoteParticipantHandles];
  sub_266EB57AC(0, &qword_2800EC950, 0x277D6EEE8);
  sub_266EB575C(&qword_2800EC958, &qword_2800EC950, 0x277D6EEE8);
  v12 = sub_266EB9308();

  v13 = sub_266EB54F0(v12);

  result = (v13 + 1);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266EB54F0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 < 0)
  {
    return MEMORY[0x2821FCF20](a1);
  }

  return MEMORY[0x2821FCF20](a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_266EB5510@<X0>(void *a1@<X8>)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 activeConversationForCall_];

  if (v4)
  {
    result = sub_266EB57AC(0, &qword_2800EC948, 0x277D6EE60);
    v6 = &off_28787B0B0;
  }

  else
  {
    result = 0;
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

id sub_266EB5680()
{
  v1 = [v0 provider];

  return v1;
}

uint64_t sub_266EB575C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_266EB57AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266EB57AC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_266EB57EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_266EB8F48();
  v6 = [v4 derivedIdentifierForComponentName:a1 fromSourceIdentifier:v5];

  if (v6)
  {
    sub_266EB8F58();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_266EB8F68();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

uint64_t static ButterflyCallStateManager.isUserOnACall(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266EB58CC, 0, 0);
}

uint64_t sub_266EB58CC()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_266EB59D4;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 56, 0, 0, 0xD000000000000013, 0x8000000266EBAF20, sub_266EB5DA8, v2, v4);
}

uint64_t sub_266EB59D4()
{

  return MEMORY[0x2822009F8](sub_266EB5AEC, 0, 0);
}

uint64_t sub_266EB5B04(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC980, &qword_266EB9C90);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  static ButterflyCallStateManager.isUserOnACall(_:_:completion:)(a2, a3, a4, sub_266EB5EC0, v13);
}

double sub_266EB5CB4@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_266EB5F80(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_266EB23F8(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id sub_266EB5D18(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_266EB5D84(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FCF20](a1);
}

uint64_t getEnumTagSinglePayload for ButterflyCallStateManager(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ButterflyCallStateManager(_BYTE *result, int a2, int a3)
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

uint64_t sub_266EB5EC0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC980, &qword_266EB9C90);

  return sub_266EB5C68(a1);
}

unint64_t sub_266EB5F3C()
{
  result = qword_2813274A8;
  if (!qword_2813274A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813274A8);
  }

  return result;
}

unint64_t sub_266EB5F80(uint64_t a1, uint64_t a2)
{
  sub_266EB9428();
  sub_266EB9258();
  v4 = sub_266EB9448();

  return sub_266EB5FF8(a1, a2, v4);
}

unint64_t sub_266EB5FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266EB9418() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_266EB60AC(void *a1)
{
  v2 = [a1 serializedContextByKey];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266EB9208();

  return v3;
}

_OWORD *sub_266EB6124(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t ButterflyBridge.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v8 = sub_266EB91B8();
  OUTLINED_FUNCTION_0_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v27 = sub_266EB9188();
  OUTLINED_FUNCTION_0_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  sub_266EB6420();
  sub_266EB9138();
  v28 = a3;
  sub_266EB1E08(a3, v30);
  sub_266EB1E08(a6, v29);
  v21 = qword_2813274C0;
  swift_unknownObjectRetain();
  v22 = a5;
  if (v21 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_2813274C0);
  }

  v23 = __swift_project_value_buffer(v8, qword_281327620);
  (*(v10 + 16))(v14, v23, v8);
  v24 = sub_266EB90F8();

  sub_266EB6474();
  sub_266EB9118();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  (*(v16 + 8))(v20, v27);
  return v24;
}

unint64_t sub_266EB6420()
{
  result = qword_281327500;
  if (!qword_281327500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281327500);
  }

  return result;
}

uint64_t sub_266EB6474()
{
  sub_266EB9038();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9028();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FB8();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FC8();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FA8();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9078();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9058();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9018();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9008();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FF8();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8F88();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8F98();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FE8();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9048();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB9068();
  OUTLINED_FUNCTION_1_1();
  sub_266EB90E8();
  sub_266EB8FD8();
  OUTLINED_FUNCTION_1_1();

  return sub_266EB90E8();
}

uint64_t ButterflyBridge.__deallocating_deinit()
{
  v0 = _s10SiriInCall15ButterflyBridgeCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for ButterflyBridge(uint64_t a1)
{
  result = qword_281327540;
  if (!qword_281327540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266EB6C24()
{
  sub_266EB6D0C();
  result = sub_266EB9368();
  qword_281327668 = result;
  return result;
}

id sub_266EB6C90()
{
  if (qword_281327510 != -1)
  {
    swift_once();
  }

  v1 = qword_281327668;

  return v1;
}

unint64_t sub_266EB6D0C()
{
  result = qword_2813274A0;
  if (!qword_2813274A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813274A0);
  }

  return result;
}

uint64_t sub_266EB6D50()
{
  v0 = sub_266EB91B8();
  __swift_allocate_value_buffer(v0, qword_2800ECC50);
  __swift_project_value_buffer(v0, qword_2800ECC50);
  return sub_266EB91A8();
}

uint64_t sub_266EB6DCC()
{
  v0 = sub_266EB91B8();
  __swift_allocate_value_buffer(v0, qword_281327620);
  __swift_project_value_buffer(v0, qword_281327620);
  if (qword_281327510 != -1)
  {
    swift_once();
  }

  v1 = qword_281327668;
  return sub_266EB91C8();
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

void SiriInCallInstrumentationUtil.logInvocationContext(occurringFor:at:callMetadata:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = *a4;
  v61 = *(a4 + 3);
  v62 = *(a4 + 1);
  v64 = a4[16];
  v65 = a4[8];
  v8 = *(a4 + 5);
  v63 = *(a4 + 7);
  v66 = a4[32];
  v67 = a4[24];
  if (qword_2800EC838 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2800EC838);
  }

  v9 = sub_266EB91B8();
  __swift_project_value_buffer(v9, qword_2800ECC50);

  v10 = sub_266EB9198();
  v11 = sub_266EB9318();

  v60 = v7;
  if (os_log_type_enabled(v10, v11))
  {
    v56 = v8;
    v12 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v12 = 136316418;
    v13 = a1;
    *(v12 + 4) = sub_266EB2334(a1, a2, &v69);
    *(v12 + 12) = 2080;
    v14 = 1702195828;
    if ((v7 & 1) == 0)
    {
      v14 = 0x65736C6166;
    }

    v15 = 0xE500000000000000;
    if (v7)
    {
      v15 = 0xE400000000000000;
    }

    if (v7 == 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    if (v7 == 2)
    {
      v17 = 0xE000000000000000;
    }

    else
    {
      v17 = v15;
    }

    v18 = sub_266EB2334(v16, v17, &v69);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    if (v64)
    {
      v26 = 0;
    }

    else
    {
      v26 = sub_266EB9348();
    }

    OUTLINED_FUNCTION_3_2(v26, v19, v20, v21, v22, v23, v24, v25, v56);
    OUTLINED_FUNCTION_2_2();
    *(v12 + 24) = v18;
    *(v12 + 32) = 2080;
    a1 = v13;
    if (v65)
    {
      v34 = 0;
    }

    else
    {
      v34 = sub_266EB9338();
    }

    v8 = v57;
    OUTLINED_FUNCTION_3_2(v34, v27, v28, v29, v30, v31, v32, v33, v57);
    OUTLINED_FUNCTION_2_2();
    *(v12 + 34) = v18;
    *(v12 + 42) = 2080;
    if ((sub_266EB3868(v8 | (v67 << 32)) & 0x100000000) != 0)
    {
      v42 = 0;
    }

    else
    {
      v42 = SICSchemaSICParticipantCountBucket.debugDescription.getter();
    }

    OUTLINED_FUNCTION_3_2(v42, v35, v36, v37, v38, v39, v40, v41, v58);
    OUTLINED_FUNCTION_2_2();
    *(v12 + 44) = v18;
    *(v12 + 52) = 2080;
    if (v66)
    {
      v50 = 0;
    }

    else
    {
      v50 = sub_266EB9358();
    }

    OUTLINED_FUNCTION_3_2(v50, v43, v44, v45, v46, v47, v48, v49, v59);
    OUTLINED_FUNCTION_2_2();
    *(v12 + 54) = v18;
    _os_log_impl(&dword_266EB0000, v10, v11, "Emitting invocation context started instrumentation. requestId=%s isMuted=%s callStatus=%s mediaType=%s participants=%s providerType=%s", v12, 0x3Eu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3();
  }

  else
  {
  }

  v51 = [objc_allocWithZone(MEMORY[0x277D5A678]) init];
  if (v51)
  {
    v52 = v51;
    v53 = [objc_allocWithZone(MEMORY[0x277D5A688]) init];
    if (v53)
    {
      v68 = v53;
      if ((v64 & 1) == 0)
      {
        [v53 setCallState_];
      }

      if ((v65 & 1) == 0)
      {
        [v68 setCallType_];
      }

      if ((v66 & 1) == 0)
      {
        [v68 setCallAppType_];
      }

      v70 = v67;
      v54 = sub_266EB3868(v8 | (v67 << 32));
      if ((v54 & 0x100000000) == 0)
      {
        [v68 setParticipantCountBucket_];
      }

      if (v60 != 2)
      {
        [v68 setIsMuted_];
      }

      [v52 setStartedOrChanged_];
      sub_266EB7C4C(a1, a2, a3);
      sub_266EB771C(v52, a1, a2, a3);

      v55 = v68;
    }

    else
    {
      v55 = v52;
    }
  }
}

Swift::Void __swiftcall SiriInCallInstrumentationUtil.logInvocationContext(endedFor:isCancelled:)(Swift::String endedFor, Swift::Bool isCancelled)
{
  object = endedFor._object;
  countAndFlagsBits = endedFor._countAndFlagsBits;
  v4 = sub_266EB91F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800EC838 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2800EC838);
  }

  v8 = sub_266EB91B8();
  __swift_project_value_buffer(v8, qword_2800ECC50);

  v9 = sub_266EB9198();
  v10 = sub_266EB9318();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_266EB2334(countAndFlagsBits, object, &v23);
    *(v11 + 12) = 1024;
    *(v11 + 14) = isCancelled;
    _os_log_impl(&dword_266EB0000, v9, v10, "Emitting invocation context ended instrumentation. requestId=%s isCancelled=%{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3();
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D5A678]) init];
  if (v13)
  {
    v22 = v13;
    if (isCancelled)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D5A670]) init];
      if (v14)
      {
        v15 = v14;
        v16 = &selRef_setCancelled_;
LABEL_11:
        [v15 setExists_];
        [v22 *v16];

        sub_266EB91D8();
        v18 = sub_266EB91E8();
        (*(v5 + 8))(v7, v4);
        sub_266EB771C(v22, countAndFlagsBits, object, v18);

        return;
      }
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x277D5A680]) init];
      if (v17)
      {
        v15 = v17;
        v16 = &selRef_setEnded_;
        goto LABEL_11;
      }
    }

    v19 = v22;
  }
}

uint64_t sub_266EB75D4()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedStream];
  v2 = [v0 sharedAnalytics];
  v3 = [v2 defaultMessageStream];

  type metadata accessor for SiriInCallInstrumentationUtil();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v3;
  qword_281327610 = result;
  return result;
}

uint64_t static SiriInCallInstrumentationUtil.sharedInstance.getter()
{
  if (qword_281327608 != -1)
  {
    swift_once();
  }
}

uint64_t SiriInCallInstrumentationUtil.__allocating_init(_:_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SiriInCallInstrumentationUtil.init(_:_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_266EB771C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v38 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC9A8, &unk_266EB9DB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = sub_266EB8F68();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  sub_266EB8F38();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_266EB88DC(v12);
    if (qword_2800EC838 != -1)
    {
      swift_once();
    }

    v23 = sub_266EB91B8();
    __swift_project_value_buffer(v23, qword_2800ECC50);

    v24 = sub_266EB9198();
    v25 = sub_266EB9328();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_266EB2334(a2, a3, &v40);
      _os_log_impl(&dword_266EB0000, v24, v25, "RequestId=%s isn't in the right format of a uuid string", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x26D5F6FB0](v27, -1, -1);
      MEMORY[0x26D5F6FB0](v26, -1, -1);
    }
  }

  else
  {
    v37 = a4;
    v28 = *(v14 + 32);
    v28(v22, v12, v13);
    v29 = [objc_allocWithZone(MEMORY[0x277D5A660]) init];
    if (v29)
    {
      v30 = v29;
      v31 = [objc_allocWithZone(MEMORY[0x277D5A668]) init];
      if (v31)
      {
        v36 = v31;
        sub_266EB57EC(29, v10);
        if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
        {
          (*(v14 + 8))(v22, v13);

          sub_266EB88DC(v10);
        }

        else
        {
          v28(v20, v10, v13);
          sub_266EB8944();
          (*(v14 + 16))(v17, v20, v13);
          v32 = sub_266EB7BB0(v17);
          v33 = v36;
          [v36 setSicId_];

          [v30 setEventMetadata_];
          [v30 setSiriInCallInvocationContext_];
          [*(v39 + 16) emitMessage:v30 timestamp:v37];

          v34 = *(v14 + 8);
          v34(v20, v13);
          v34(v22, v13);
        }
      }

      else
      {
        (*(v14 + 8))(v22, v13);
      }
    }

    else
    {
      (*(v14 + 8))(v22, v13);
    }
  }
}

id sub_266EB7BB0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_266EB8F48();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_266EB8F68();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_266EB7C4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC9A8, &unk_266EB9DB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v69 - v10;
  v12 = sub_266EB8F68();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v69 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v69 - v20;
  sub_266EB8F38();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_266EB88DC(v11);
    if (qword_2800EC838 != -1)
    {
      swift_once();
    }

    v22 = sub_266EB91B8();
    __swift_project_value_buffer(v22, qword_2800ECC50);

    v23 = sub_266EB9198();
    v24 = sub_266EB9328();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v80 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_266EB2334(a1, a2, &v80);
      _os_log_impl(&dword_266EB0000, v23, v24, "RequestId=%s isn't in the right format of a uuid string", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x26D5F6FB0](v26, -1, -1);
      MEMORY[0x26D5F6FB0](v25, -1, -1);
    }

    return;
  }

  v77 = a3;
  v78 = v19;
  v27 = *(v13 + 32);
  v27(v21, v11, v12);
  sub_266EB57EC(29, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) != 1)
  {
    v34 = v78;
    v27(v78, v9, v12);
    sub_266EB8944();
    v76 = v13;
    v35 = *(v13 + 16);
    v35(v16, v34, v12);
    v36 = sub_266EB7BB0(v16);
    v35(v16, v21, v12);
    v37 = sub_266EB7BB0(v16);
    v38 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
    if (v38)
    {
      v39 = v38;
      v40 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v40)
      {
        v41 = v40;
        v42 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
        if (v42)
        {
          v43 = v42;
          v74 = v36;
          [v41 setUuid_];
          [v41 setComponent_];
          [v39 setSource_];
          v75 = v37;
          [v43 setUuid_];
          [v43 setComponent_];
          [v39 setTarget_];
          if (qword_2800EC838 != -1)
          {
            swift_once();
          }

          v44 = sub_266EB91B8();
          __swift_project_value_buffer(v44, qword_2800ECC50);
          v45 = v39;
          v46 = sub_266EB9198();
          v47 = sub_266EB9328();

          v48 = os_log_type_enabled(v46, v47);
          v49 = v76;
          v50 = v77;
          if (v48)
          {
            v51 = swift_slowAlloc();
            v71 = v51;
            v73 = swift_slowAlloc();
            v80 = v73;
            *v51 = 136315138;
            v52 = v45;
            v72 = v47;
            v53 = v52;
            v54 = [v52 description];
            v70 = v46;
            v55 = v54;
            v69 = sub_266EB9228();
            v56 = v45;
            v58 = v57;

            v59 = sub_266EB2334(v69, v58, &v80);
            v45 = v56;
            v50 = v77;

            v61 = v70;
            v60 = v71;
            *(v71 + 1) = v59;
            v62 = v60;
            _os_log_impl(&dword_266EB0000, v61, v72, "Emitting deprecated request link: %s", v60, 0xCu);
            v63 = v73;
            __swift_destroy_boxed_opaque_existential_1Tm(v73);
            MEMORY[0x26D5F6FB0](v63, -1, -1);
            MEMORY[0x26D5F6FB0](v62, -1, -1);
          }

          else
          {
          }

          [*(v79 + 16) emitMessage:v45 timestamp:v50];

LABEL_30:
          v68 = *(v49 + 8);
          v68(v78, v12);
          v68(v21, v12);
          return;
        }
      }

      else
      {
        v41 = v39;
      }
    }

    if (qword_2800EC838 != -1)
    {
      swift_once();
    }

    v64 = sub_266EB91B8();
    __swift_project_value_buffer(v64, qword_2800ECC50);
    v65 = sub_266EB9198();
    v66 = sub_266EB9328();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_266EB0000, v65, v66, "Failed to create RequestLink event for SiriInCall", v67, 2u);
      MEMORY[0x26D5F6FB0](v67, -1, -1);
    }

    v49 = v76;
    goto LABEL_30;
  }

  v28 = v13;
  sub_266EB88DC(v9);
  if (qword_2800EC838 != -1)
  {
    swift_once();
  }

  v29 = sub_266EB91B8();
  __swift_project_value_buffer(v29, qword_2800ECC50);

  v30 = sub_266EB9198();
  v31 = sub_266EB9328();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v80 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_266EB2334(a1, a2, &v80);
    _os_log_impl(&dword_266EB0000, v30, v31, "Unable to derive SIC component ID from RequestId=%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x26D5F6FB0](v33, -1, -1);
    MEMORY[0x26D5F6FB0](v32, -1, -1);
  }

  (*(v28 + 8))(v21, v12);
}

uint64_t SiriInCallInstrumentationUtil.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SiriInCallInstrumentationUtil.__deallocating_deinit()
{
  SiriInCallInstrumentationUtil.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266EB84DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_266EB8528(a1, a2);
  sub_266EB8640(&unk_28787ADB8);
  return v3;
}

uint64_t sub_266EB8528(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_266EB9278())
  {
    result = sub_266EB8724(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266EB9398();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_266EB93D8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_266EB8640(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_266EB8794(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_266EB8724(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC9A0, &qword_266EB9DA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_266EB8794(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC9A0, &qword_266EB9DA8);
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

uint64_t sub_266EB88DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EC9A8, &unk_266EB9DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266EB8944()
{
  result = qword_2800EC9B0;
  if (!qword_2800EC9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EC9B0);
  }

  return result;
}

const char *SiriInCallFeatureFlag.feature.getter()
{
  if (*v0)
  {
    return "blinded_sphinx";
  }

  else
  {
    return "blushing_phantom";
  }
}

uint64_t SiriInCallFeatureFlag.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for SiriInCallFeatureFlag;
  v4[4] = sub_266EB8A24();
  LOBYTE(v4[0]) = v1;
  v2 = sub_266EB8F78();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

unint64_t sub_266EB8A24()
{
  result = qword_281327618;
  if (!qword_281327618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281327618);
  }

  return result;
}

uint64_t SiriInCallFeatureFlag.description.getter()
{
  v1 = *v0;
  v10[1] = 0xE000000000000000;
  sub_266EB93A8();
  v2 = sub_266EB93B8();
  v4 = v3;

  v11 = v2;
  v12 = v4;
  MEMORY[0x26D5F6A80](92, 0xE100000000000000);
  v5 = sub_266EB93B8();
  MEMORY[0x26D5F6A80](v5);

  MEMORY[0x26D5F6A80](0x64656C62616E6520, 0xE90000000000003DLL);
  v10[3] = &type metadata for SiriInCallFeatureFlag;
  v10[4] = sub_266EB8A24();
  v10[0] = v1;
  v6 = sub_266EB8F78();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (v6)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26D5F6A80](v7, v8);

  return v11;
}

uint64_t SiriInCallFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_266EB9428();
  MEMORY[0x26D5F6C50](v1);
  return sub_266EB9448();
}

uint64_t sub_266EB8C64(uint64_t a1)
{
  v2 = *v1;
  sub_266EB9428();
  MEMORY[0x26D5F6C50](v2);
  return sub_266EB9448();
}

unint64_t sub_266EB8CAC()
{
  result = qword_2800EC9C0;
  if (!qword_2800EC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EC9C0);
  }

  return result;
}

unint64_t sub_266EB8D34(uint64_t a1)
{
  result = sub_266EB8D5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_266EB8D5C()
{
  result = qword_2800EC9C8;
  if (!qword_2800EC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EC9C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriInCallFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriInCallFeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
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