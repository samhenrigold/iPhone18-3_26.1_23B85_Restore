uint64_t sub_23D7A0088(uint64_t result)
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

  result = sub_23D7A01E8(result, v11, 1, v3);
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

void *sub_23D7A0174(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43E8, &qword_23D80FB38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D7A01E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43E8, &qword_23D80FB38);
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

void *sub_23D7A02DC(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_23D7A03DC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver] = 0;
  v8 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_stayingAliveAssertions] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_fetchingContentAssertions] = v8;
  v9 = &v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_allowNotification];
  *v9 = 0;
  v9[1] = 0;
  v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient__isEnabled] = 0;
  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_logger;
  v11 = sub_23D80D97C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v3[v10], a1, v11);
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_notificationHandlers] = a2;
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_runloop] = a3;
  v13 = objc_allocWithZone(AXFocusManagerObjCBridge);
  v14 = a3;
  v15 = [v13 init];
  *&v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_focusManager] = v15;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v12 + 8))(a1, v11);
  return v16;
}

uint64_t sub_23D7A054C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D7A055C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_23D7A056C(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  if (a2)
  {

    v8 = sub_23D80D95C();
    v9 = sub_23D80E06C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v43 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_23D79FD34(a1, a2, &v43);
      _os_log_impl(&dword_23D78A000, v8, v9, "Bundle id : %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x23EEED790](v11, -1, -1);
      MEMORY[0x23EEED790](v10, -1, -1);
    }

    v12 = sub_23D79A88C(a1, a2);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = [*(v5 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_focusManager) currentApplication];
      v12 = 0;
    }

    v25 = v12;
    v26 = v13;
    v27 = sub_23D80D95C();
    v28 = sub_23D80E06C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_23D78A000, v27, v28, "currentApp : %@", v29, 0xCu);
      sub_23D790730(v30, &qword_27E2E45B0, &unk_23D810330);
      v32 = v30;
      v4 = v3;
      MEMORY[0x23EEED790](v32, -1, -1);
      MEMORY[0x23EEED790](v29, -1, -1);
    }

    AXRuntimeClient.addAssertionsFor(app:bundleID:)(v26, a1, a2);
    goto LABEL_18;
  }

  v14 = [*(v2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_focusManager) currentApplication];
  v15 = sub_23D80D95C();
  v16 = sub_23D80E06C();
  v17 = &unk_278BEB000;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43 = v19;
    *v18 = 136315138;
    v20 = [v14 bundleId];

    if (!v20)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v21 = sub_23D80DD7C();
    v23 = v22;

    v24 = sub_23D79FD34(v21, v23, &v43);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_23D78A000, v15, v16, "Bundle id (currentApplication): %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x23EEED790](v19, -1, -1);
    MEMORY[0x23EEED790](v18, -1, -1);

    v4 = v3;
    v17 = &unk_278BEB000;
  }

  else
  {
  }

  v26 = v14;
  v33 = sub_23D80D95C();
  v34 = sub_23D80E06C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v26;
    *v36 = v26;
    v37 = v26;
    _os_log_impl(&dword_23D78A000, v33, v34, "currentApp (currentApplication): %@", v35, 0xCu);
    sub_23D790730(v36, &qword_27E2E45B0, &unk_23D810330);
    MEMORY[0x23EEED790](v36, -1, -1);
    MEMORY[0x23EEED790](v35, -1, -1);
  }

  v38 = [v26 v17[79]];
  if (!v38)
  {
    __break(1u);
    goto LABEL_22;
  }

  v39 = v38;
  v40 = sub_23D80DD7C();
  v42 = v41;

  AXRuntimeClient.addAssertionsFor(app:bundleID:)(v26, v40, v42);

LABEL_18:
  sub_23D79B654(v26, 1, 0);

  if (v4)
  {
  }
}

unint64_t sub_23D7A0A78()
{
  result = qword_27E2E4548;
  if (!qword_27E2E4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4548);
  }

  return result;
}

uint64_t sub_23D7A0ACC()
{
  MEMORY[0x23EEED840](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D7A0B04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23D7A0B54(uint64_t a1)
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
  v10[1] = sub_23D7A0C28;

  return sub_23D79F5B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23D7A0C28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23D7A0D20()
{
  result = qword_27E2E4568;
  if (!qword_27E2E4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4568);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXRuntimeClientError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXRuntimeClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for AXRuntimeClient(uint64_t a1)
{
  result = qword_27E2E4590;
  if (!qword_27E2E4590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D7A0F24(uint64_t a1, uint64_t a2)
{
  result = sub_23D80D97C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23D7A1020()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D7A1058(int a1)
{
  v2 = *(v1 + 16);
  *(&v4 + 1) = a1;
  v2(&v4, &v4 + 1);
  return v4;
}

uint64_t sub_23D7A1098@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D7A10D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D7A1144()
{
  result = qword_27E2E45C0;
  if (!qword_27E2E45C0)
  {
    sub_23D80DC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E45C0);
  }

  return result;
}

unint64_t sub_23D7A119C()
{
  result = qword_27E2E45D0;
  if (!qword_27E2E45D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E45C8, &qword_23D811F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E45D0);
  }

  return result;
}

uint64_t sub_23D7A1200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7A1264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7A12C8(uint64_t a1)
{
  v2 = type metadata accessor for AXRTextContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D7A1324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45A8, &qword_23D810328);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7A1394()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t AXRTextLocaleAndRange.language.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AXRTextLocaleAndRange.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23D80E24C();

  sub_23D80E30C();
  MEMORY[0x23EEEC700](3943982, 0xE300000000000000);
  sub_23D80E30C();
  MEMORY[0x23EEEC700](0, 0xE000000000000000);

  MEMORY[0x23EEEC700](0x676175676E616C0ALL, 0xEA00000000003D65);
  MEMORY[0x23EEEC700](v1, v2);
  MEMORY[0x23EEEC700](10, 0xE100000000000000);
  return 0x3D65676E6172;
}

uint64_t AXRTextLocaleAndRange.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  MEMORY[0x23EEECED0](*v1 >> 14);
  MEMORY[0x23EEECED0](v2 >> 14);

  return sub_23D80DDAC();
}

uint64_t AXRTextLocaleAndRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23D80E58C();
  MEMORY[0x23EEECED0](v1 >> 14);
  MEMORY[0x23EEECED0](v2 >> 14);
  sub_23D80DDAC();
  return sub_23D80E5CC();
}

uint64_t sub_23D7A16A8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23D80E58C();
  MEMORY[0x23EEECED0](v1 >> 14);
  MEMORY[0x23EEECED0](v2 >> 14);
  sub_23D80DDAC();
  return sub_23D80E5CC();
}

uint64_t sub_23D7A1720(uint64_t a1)
{
  v2 = v1[1];
  MEMORY[0x23EEECED0](*v1 >> 14);
  MEMORY[0x23EEECED0](v2 >> 14);

  return sub_23D80DDAC();
}

uint64_t sub_23D7A1788(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_23D80E58C();
  MEMORY[0x23EEECED0](v2 >> 14);
  MEMORY[0x23EEECED0](v3 >> 14);
  sub_23D80DDAC();
  return sub_23D80E5CC();
}

uint64_t _s23AccessibilityReaderData21AXRTextLocaleAndRangeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if ((*a2 ^ *a1) >> 14 || (a1[1] ^ a2[1]) >> 14)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_23D80E4DC();
  }
}

unint64_t sub_23D7A1860()
{
  result = qword_27E2E4608;
  if (!qword_27E2E4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4608);
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

uint64_t sub_23D7A18C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D7A1908(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t String.localizedData.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27E2E4228 != -1)
  {
    swift_once();
  }

  if (qword_27E2E4610)
  {
    v3 = qword_27E2E4610;
    v4 = sub_23D80DD4C();
    v5 = sub_23D80DD4C();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    a1 = sub_23D80DD7C();
  }

  else
  {
  }

  return a1;
}

void sub_23D7A1A54()
{
  v0 = sub_23D80DD4C();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27E2E4610 = v1;
}

void sub_23D7A1ACC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23D80DD4C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_27E2E4618 = v2;
}

id AXRUserDefaults.getter()
{
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27E2E4618;

  return v0;
}

void AXRUserDefaults.setter(uint64_t a1)
{
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27E2E4618;
  qword_27E2E4618 = a1;
}

uint64_t (*AXRUserDefaults.modify(uint64_t a1))()
{
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

BOOL sub_23D7A1CF4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v15 = v2;

  v3 = sub_23D80DDFC();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    while ((sub_23D80DD1C() & 1) != 0 || (sub_23D80DD2C() & 1) == 0)
    {

      v5 = sub_23D80DDFC();
      v6 = v7;
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    v8 = sub_23D80DD4C();

    v9 = MEMORY[0x23EEEC760](v5, v6);

    v16.location = 0;
    v16.length = v9;
    v10 = CFStringTokenizerCopyBestStringLanguage(v8, v16);

    if (v10)
    {
      v11 = [objc_opt_self() characterDirectionForLanguage_];

      return v11 == 2;
    }
  }

  else
  {
LABEL_10:
  }

  return 0;
}

uint64_t sub_23D7A1E2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  if (a1 != 5)
  {
    v5 = 0x6D6F74737563;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x746867696CLL;
  if (a1 != 3)
  {
    v7 = 1684828002;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6465636E616C6162;
  if (a1 != 1)
  {
    v9 = 0x65736F6F6CLL;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1802658148;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6465636E616C6162)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x65736F6F6CLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802658148)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802465122)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6D6F74737563)
      {
LABEL_39:
        v13 = sub_23D80E4DC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x746867696CLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1684828002)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_23D7A201C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701734764;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000072;
    v4 = 0xE600000000000000;
    if (a1 == 2)
    {
      v6 = 0x6574636172616863;
    }

    else
    {
      v6 = 0x6E696772616DLL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1685221239;
    }

    else
    {
      v6 = 1701734764;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x6574636172616863;
  v9 = 0xE900000000000072;
  if (a2 != 2)
  {
    v8 = 0x6E696772616DLL;
    v9 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 1685221239;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_23D80E4DC();
  }

  return v12 & 1;
}

uint64_t sub_23D7A2144(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE500000000000000;
    v14 = 0xE600000000000000;
    v15 = 0x776F6C6C6579;
    v16 = 0xE500000000000000;
    v17 = 0x6E65657267;
    if (a1 != 3)
    {
      v17 = 1802398064;
      v16 = 0xE400000000000000;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = 1702194274;
    if (a1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v18 = 0x6574696877;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v15;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v3 = 0x657247746867696CLL;
    v4 = 0xEA00000000006E65;
    v5 = 0x6E6950746867696CLL;
    v6 = 0xE90000000000006BLL;
    if (a1 != 9)
    {
      v5 = 0x727550746867696CLL;
      v6 = 0xEB00000000656C70;
    }

    if (a1 != 8)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE600000000000000;
    v8 = 0x656C70727570;
    v9 = 0x756C42746867696CLL;
    v10 = 0xE900000000000065;
    if (a1 != 6)
    {
      v9 = 0x6C6559746867696CLL;
      v10 = 0xEB00000000776F6CLL;
    }

    if (a1 != 5)
    {
      v8 = v9;
      v7 = v10;
    }

    if (a1 <= 7u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v3;
    }

    if (v2 <= 7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE400000000000000;
        if (v11 != 1702194274)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v19 = 0xE500000000000000;
        if (v11 != 0x6574696877)
        {
          goto LABEL_62;
        }
      }
    }

    else if (a2 == 2)
    {
      v19 = 0xE600000000000000;
      if (v11 != 0x776F6C6C6579)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 3)
    {
      v19 = 0xE500000000000000;
      if (v11 != 0x6E65657267)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v19 = 0xE400000000000000;
      if (v11 != 1802398064)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_60;
  }

  if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v19 = 0xEA00000000006E65;
      if (v11 != 0x657247746867696CLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 9)
    {
      v19 = 0xE90000000000006BLL;
      if (v11 != 0x6E6950746867696CLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v20 = 0x727550746867696CLL;
    v21 = 6646896;
  }

  else
  {
    if (a2 == 5)
    {
      v19 = 0xE600000000000000;
      if (v11 != 0x656C70727570)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 6)
    {
      v19 = 0xE900000000000065;
      if (v11 != 0x756C42746867696CLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v20 = 0x6C6559746867696CLL;
    v21 = 7827308;
  }

  v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v11 != v20)
  {
LABEL_62:
    v22 = sub_23D80E4DC();
    goto LABEL_63;
  }

LABEL_60:
  if (v12 != v19)
  {
    goto LABEL_62;
  }

  v22 = 1;
LABEL_63:

  return v22 & 1;
}

uint64_t sub_23D7A248C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0xE800000000000000;
    v14 = 0x7265646165487369;
    if (a1 != 2)
    {
      v14 = 0x4C676E6964616568;
      v13 = 0xEC0000006C657665;
    }

    if (a1)
    {
      v12 = 1954047348;
      v11 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x7475626972747461;
    v4 = 0xEE00747865546465;
    v5 = 0x4574737269467369;
    v6 = 0xEE00746E656D656CLL;
    if (a1 != 7)
    {
      v5 = 0x6C457473614C7369;
      v6 = 0xED0000746E656D65;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6C457473694C7369;
    v8 = 0xED0000746E656D65;
    if (a1 != 4)
    {
      v7 = 0x6B6E694C7369;
      v8 = 0xE600000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x7265646165487369)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 0xEC0000006C657665;
        if (v9 != 0x4C676E6964616568)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a2)
    {
      v17 = 0xE400000000000000;
      if (v9 != 1954047348)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v17 = 0xE200000000000000;
      if (v9 != 25705)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0x7475626972747461;
        v16 = 0x747865546465;
LABEL_39:
        v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v9 != v15)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if (a2 == 7)
      {
        v15 = 0x4574737269467369;
        v16 = 0x746E656D656CLL;
        goto LABEL_39;
      }

      v18 = 1632400233;
LABEL_46:
      v17 = 0xED0000746E656D65;
      if (v9 != (v18 | 0x6C45747300000000))
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    if (a2 == 4)
    {
      v18 = 1766617961;
      goto LABEL_46;
    }

    v17 = 0xE600000000000000;
    if (v9 != 0x6B6E694C7369)
    {
LABEL_51:
      v19 = sub_23D80E4DC();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v10 != v17)
  {
    goto LABEL_51;
  }

  v19 = 1;
LABEL_52:

  return v19 & 1;
}

uint64_t sub_23D7A2770(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E696B61657073;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656C65636E6163;
    }

    else
    {
      v4 = 0x64656873696E6966;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x646573756170;
    }

    else
    {
      v4 = 0x676E696B61657073;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x64656C65636E6163;
  if (a2 != 2)
  {
    v7 = 0x64656873696E6966;
  }

  if (a2)
  {
    v2 = 0x646573756170;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23D80E4DC();
  }

  return v10 & 1;
}

uint64_t sub_23D7A28E0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_23D7A2970@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23D7A29F0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7A2A6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  return v1;
}

uint64_t sub_23D7A2AE8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t (*sub_23D7A2B58(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7A2BFC;
}

void sub_23D7A2BFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_23D7A2C64(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4630, &qword_23D810490);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4628, &qword_23D810488);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7A2E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4630, &qword_23D810490);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4628, &qword_23D810488);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7A2F3C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4630, &qword_23D810490);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__presets;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4628, &qword_23D810488);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void sub_23D7A30E8()
{
  swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    if (qword_27E2E4230 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_27E2E4230 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  swift_beginAccess();
  v1 = qword_27E2E4618;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_23D80DA0C(&v5);

  v3 = sub_23D80DD4C();

  v4 = sub_23D80DD4C();
  [v2 setObject:v3 forKey:v4];
}

uint64_t sub_23D7A343C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(a1);
}

void sub_23D7A34BC(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D80DA1C();
  sub_23D7A30E8();
}

void (*sub_23D7A3530(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = a1 + 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v2);

  return sub_23D7A35C8;
}

void sub_23D7A35C8(uint64_t *a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;

  sub_23D80DA1C();
  sub_23D7A30E8();
}

uint64_t sub_23D7A3648(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_23D80D9DC();
  return swift_endAccess();
}

uint64_t sub_23D7A36C4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7A3864(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_23D80D9DC();
  return swift_endAccess();
}

uint64_t sub_23D7A38DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7A3A14(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__selectedTheme;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7A3B84;
}

void sub_23D7A3B88(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_23D80D9EC();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_23D80D9EC();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_23D7A3CF0()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v14);

  v2 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v13);

  v3 = v13;
  if (*(v13 + 16))
  {
    v4 = sub_23D7AC71C(v2);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

LABEL_7:

      return v6;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v12);

  v7 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v7 + 16))
  {
    v8 = v12;

    v9 = sub_23D7AC71C(v8);
    if (v10)
    {
      v6 = *(*(v7 + 56) + 8 * v9);

      goto LABEL_7;
    }
  }

  type metadata accessor for AXRTextFormatterModel(0);
  swift_allocObject();
  return AXRTextFormatterModel.init()();
}

uint64_t AXRTextFormatterPresetsManager.__allocating_init()()
{
  v0 = swift_allocObject();
  AXRTextFormatterPresetsManager.init()(v0, v1);
  return v0;
}

uint64_t AXRTextFormatterPresetsManager.init()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_23D80D97C();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v60[2] = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60[0] = v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4628, &qword_23D810488);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v60 - v14;
  *(v2 + 16) = 0;
  v63 = v2 + 16;
  v16 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__presets;
  v17 = MEMORY[0x277D84F90];
  *v66 = sub_23D793E10(MEMORY[0x277D84F90]);
  v60[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4658, &qword_23D8104F0);
  sub_23D80D9CC();
  (*(v13 + 32))(v3 + v16, v15, v12);
  v18 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__selectedTheme;
  v66[0] = 3;
  sub_23D80D9CC();
  (*(v9 + 32))(v3 + v18, v11, v8);
  v19 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets;
  *(v3 + v19) = sub_23D793E10(v17);
  v20 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_presetsKey);
  *v20 = 0xD000000000000017;
  v20[1] = 0x800000023D815F70;
  v21 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedThemeKey);
  *v21 = 0xD000000000000010;
  v21[1] = 0x800000023D815F90;
  v22 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedDarkAppearanceThemeKey);
  *v22 = 0xD00000000000001ELL;
  v22[1] = 0x800000023D815FB0;
  v23 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_selectedLightAppearanceThemeKey);
  *v23 = 0xD00000000000001FLL;
  v23[1] = 0x800000023D815FD0;
  v24 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__legibilityWeight;
  *(v3 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4688, &qword_23D810528);
  swift_storeEnumTagMultiPayload();
  v25 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__systemDynamicTypeSize;
  *(v3 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4698, &qword_23D810560);
  swift_storeEnumTagMultiPayload();
  v26 = sub_23D793E10(v17);
  for (i = 0; i != 7; ++i)
  {
    v66[0] = byte_284FCDFA0[i + 32];
    v28 = v66[0];
    v29 = sub_23D7A4BC4(v66);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v66 = v26;
    v32 = sub_23D7AC71C(v28);
    v33 = v26[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v36 = v31;
    if (v26[3] >= v35)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = *v66;
        if (v31)
        {
          goto LABEL_2;
        }
      }

      else
      {
        sub_23D7ADA4C();
        v26 = *v66;
        if (v36)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      sub_23D7ACCC8(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_23D7AC71C(v28);
      if ((v36 & 1) != (v38 & 1))
      {
        result = sub_23D80E50C();
        __break(1u);
        return result;
      }

      v32 = v37;
      v26 = *v66;
      if (v36)
      {
LABEL_2:
        *(v26[7] + 8 * v32) = v29;

        continue;
      }
    }

    v26[(v32 >> 6) + 8] |= 1 << v32;
    *(v26[6] + v32) = v28;
    *(v26[7] + 8 * v32) = v29;
    v39 = v26[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_25;
    }

    v26[2] = v41;
  }

  *(v3 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets) = v26;

  if (qword_27E2E4230 == -1)
  {
    goto LABEL_16;
  }

LABEL_26:
  swift_once();
LABEL_16:
  swift_beginAccess();
  v42 = qword_27E2E4618;

  v43 = sub_23D80DD4C();

  v44 = [v42 dataForKey_];

  v45 = v61;
  if (v44)
  {
    v46 = sub_23D80D62C();
    v48 = v47;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7ADF78();
    sub_23D80D44C();

    v58 = v65;
    swift_getKeyPath();
    swift_getKeyPath();
    v65 = v58;

    sub_23D80DA1C();
    sub_23D7AE088(v46, v48);
  }

  else
  {
    v49 = v62;
    if (qword_27E2E4248 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v49, qword_27E2E5348);
    swift_beginAccess();
    v51 = v60[0];
    (*(v45 + 16))(v60[0], v50, v49);
    v52 = sub_23D80D95C();
    v53 = sub_23D80E06C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_23D78A000, v52, v53, "No saved presets found, using defaults", v54, 2u);
      v55 = v54;
      v51 = v60[0];
      MEMORY[0x23EEED790](v55, -1, -1);
    }

    (*(v45 + 8))(v51, v49);

    v57 = sub_23D7AE0DC(v56);

    swift_getKeyPath();
    swift_getKeyPath();
    v64 = v57;

    sub_23D80DA1C();
  }

  swift_beginAccess();
  sub_23D7A4884(*(v3 + 16));
  return v3;
}

void sub_23D7A4884(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  if (a1)
  {
    if (qword_27E2E4230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_27E2E4618;
    v4 = sub_23D80DD4C();
    v5 = [v3 stringForKey_];

    if (v5)
    {
      v6 = sub_23D80DD7C();
      v8 = v7;

      v9._countAndFlagsBits = v6;
      v9._object = v8;
      AXRFormatterTheme.init(rawValue:)(v9);
    }
  }

  else
  {
    if (qword_27E2E4230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = qword_27E2E4618;
    v11 = sub_23D80DD4C();
    v12 = [v10 stringForKey_];

    if (v12)
    {
      v13 = sub_23D80DD7C();
      v15 = v14;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      AXRFormatterTheme.init(rawValue:)(v16);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D80DA1C();
  sub_23D7A30E8();
}

uint64_t sub_23D7A4B04(unsigned __int8 *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v2 + 16))
  {
    v3 = *a1;

    v4 = sub_23D7AC71C(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      return v6;
    }
  }

  type metadata accessor for AXRTextFormatterModel(0);
  swift_allocObject();
  return AXRTextFormatterModel.init()();
}

uint64_t sub_23D7A4BC4(unsigned __int8 *a1)
{
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4698, &qword_23D810560);
  v2 = MEMORY[0x28223BE20](v148);
  v140 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v139 = &v133 - v4;
  v5 = sub_23D80DAAC();
  v156 = *(v5 - 8);
  v157 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v137 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v155 = &v133 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v158 = &v133 - v11;
  MEMORY[0x28223BE20](v10);
  v135 = &v133 - v12;
  v150 = sub_23D80DABC();
  v153 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v134 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4788, &qword_23D810C10);
  v14 = MEMORY[0x28223BE20](v144);
  v143 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v152 = &v133 - v16;
  v17 = sub_23D80DB1C();
  v146 = *(v17 - 8);
  v147 = v17;
  MEMORY[0x28223BE20](v17);
  v145 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4688, &qword_23D810528);
  v19 = MEMORY[0x28223BE20](v149);
  v138 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v151 = &v133 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4720, &unk_23D810BC0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v136 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v141 = &v133 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v142 = &v133 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v133 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v133 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v133 - v35;
  v37 = *a1;
  type metadata accessor for AXRTextFormatterModel(0);
  swift_allocObject();
  v38 = AXRTextFormatterModel.init()();
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
  swift_beginAccess();
  v159 = v39;
  *(v38 + v39) = 1;
  LOBYTE(v161) = v37;
  v40 = AXRFormatterTheme.description.getter();
  v42 = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  v161 = v40;
  v162 = v42;

  v43 = v38;
  sub_23D80DA1C();
  if (v37 <= 2)
  {
    v46 = v151;
    v142 = v34;
    v143 = v36;
    v141 = v31;
    v47 = v152;
    if (v37)
    {
      v48 = v159;
      if (v37 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 1;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        v160 = 1;
        v49 = AXRFormatterTheme.textColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v49;

        sub_23D80DA1C();
        v160 = 1;
        v50 = AXRFormatterTheme.color.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v50;

        sub_23D80DA1C();
        v160 = 1;
        v51 = AXRFormatterTheme.linkColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v51;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        sub_23D7E9DC8();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 2;

        sub_23D80DA1C();
        sub_23D7EA3E0();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        sub_23D7EAA94();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        sub_23D7EB0AC();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        LOBYTE(v161) = 1;
        v52 = AXRFormatterTheme.textColor.getter();
        v53 = v156;
        if (!v52)
        {
          v52 = sub_23D80DBFC();
        }

        v54 = v52;
        v55 = v157;
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v54;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = 0x6D6574737953;
        v162 = 0xE600000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = 0;
        v162 = 0xE000000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = 0x4037000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 1;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 1;

        sub_23D80DA1C();
        v56 = MEMORY[0x277CDFA10];
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 2;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        v160 = 2;
        v63 = AXRFormatterTheme.textColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v63;

        sub_23D80DA1C();
        v160 = 2;
        v64 = AXRFormatterTheme.color.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v64;

        sub_23D80DA1C();
        v160 = 2;
        v65 = AXRFormatterTheme.linkColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v65;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 1;

        sub_23D80DA1C();
        sub_23D7E9DC8();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 1;

        sub_23D80DA1C();
        sub_23D7EA3E0();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 1;

        sub_23D80DA1C();
        sub_23D7EAA94();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 1;

        sub_23D80DA1C();
        sub_23D7EB0AC();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        LOBYTE(v161) = 2;
        v66 = AXRFormatterTheme.textColor.getter();
        v53 = v156;
        if (!v66)
        {
          v66 = sub_23D80DBFC();
        }

        v67 = v66;
        v55 = v157;
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v67;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = 0x6D6574737953;
        v162 = 0xE600000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = 0;
        v162 = 0xE000000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = 0x4035000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 1;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 1;

        sub_23D80DA1C();
        v56 = MEMORY[0x277CDFA00];
      }

      goto LABEL_20;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v161) = 0;

    sub_23D80DA1C();
    sub_23D790648(v154 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__legibilityWeight, v46, &qword_27E2E4688, &qword_23D810528);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v62 = v143;
      sub_23D7AF7D0(v46, v143, &qword_27E2E4720, &unk_23D810BC0);
    }

    else
    {
      sub_23D80E08C();
      v78 = sub_23D80DB4C();
      sub_23D80D94C();

      v79 = v145;
      sub_23D80DB0C();
      v62 = v143;
      swift_getAtKeyPath();

      (*(v146 + 8))(v79, v147);
    }

    v80 = v144;
    v81 = v142;
    v82 = v153;
    v83 = v150;
    (*(v153 + 104))(v142, *MEMORY[0x277CDFB70], v150);
    (*(v82 + 56))(v81, 0, 1, v83);
    v84 = *(v80 + 48);
    sub_23D790648(v62, v47, &qword_27E2E4720, &unk_23D810BC0);
    sub_23D790648(v81, v47 + v84, &qword_27E2E4720, &unk_23D810BC0);
    v85 = *(v82 + 48);
    if (v85(v47, 1, v83) == 1)
    {
      sub_23D790730(v81, &qword_27E2E4720, &unk_23D810BC0);
      sub_23D790730(v62, &qword_27E2E4720, &unk_23D810BC0);
      v86 = v85(v47 + v84, 1, v83);
      v48 = v159;
      v87 = v157;
      if (v86 == 1)
      {
        sub_23D790730(v47, &qword_27E2E4720, &unk_23D810BC0);
        v88 = 1;
LABEL_31:
        v90 = v156;
        v91 = v135;
        v92 = v154;
LABEL_40:
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = v88 & 1;

        sub_23D80DA1C();
        v113 = v139;
        sub_23D790648(v92 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__systemDynamicTypeSize, v139, &qword_27E2E4698, &qword_23D810560);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*(v90 + 32))(v91, v113, v87);
        }

        else
        {
          sub_23D80E08C();
          v114 = sub_23D80DB4C();
          sub_23D80D94C();

          v115 = v145;
          sub_23D80DB0C();
          swift_getAtKeyPath();

          (*(v146 + 8))(v115, v147);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        (*(v90 + 16))(v158, v91, v87);

        sub_23D80DA1C();
        (*(v90 + 8))(v91, v87);
        v160 = 0;
        v116 = AXRFormatterTheme.textColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v116;

        sub_23D80DA1C();
        v160 = 0;
        v117 = AXRFormatterTheme.color.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v117;

        sub_23D80DA1C();
        v160 = 0;
        v118 = AXRFormatterTheme.linkColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v118;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        sub_23D7E9DC8();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        sub_23D7EA3E0();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        sub_23D7EAA94();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        sub_23D7EB0AC();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        LOBYTE(v161) = 0;
LABEL_49:
        v130 = AXRFormatterTheme.textColor.getter();
        if (!v130)
        {
          v130 = sub_23D80DBFC();
        }

        v131 = v130;
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v131;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = 0x6D6574737953;
        v162 = 0xE600000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = 0;
        v162 = 0xE000000000000000;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        v77 = 0x4031000000000000;
LABEL_52:
        v161 = v77;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 1;

        sub_23D80DA1C();
        goto LABEL_53;
      }
    }

    else
    {
      v89 = v141;
      sub_23D790648(v47, v141, &qword_27E2E4720, &unk_23D810BC0);
      if (v85(v47 + v84, 1, v83) != 1)
      {
        v110 = v153;
        v111 = v134;
        (*(v153 + 32))(v134, v47 + v84, v83);
        sub_23D7AE258(&qword_27E2E4790, MEMORY[0x277CDFB80], MEMORY[0x277CDFB88]);
        v88 = sub_23D80DD3C();
        v112 = *(v110 + 8);
        v112(v111, v83);
        sub_23D790730(v142, &qword_27E2E4720, &unk_23D810BC0);
        sub_23D790730(v143, &qword_27E2E4720, &unk_23D810BC0);
        v112(v89, v83);
        sub_23D790730(v47, &qword_27E2E4720, &unk_23D810BC0);
        v48 = v159;
        v90 = v156;
        v87 = v157;
        v91 = v135;
        v92 = v154;
        goto LABEL_40;
      }

      sub_23D790730(v142, &qword_27E2E4720, &unk_23D810BC0);
      sub_23D790730(v143, &qword_27E2E4720, &unk_23D810BC0);
      (*(v153 + 8))(v89, v83);
      v48 = v159;
      v87 = v157;
    }

    sub_23D790730(v47, &qword_27E2E4788, &qword_23D810C10);
    v88 = 0;
    goto LABEL_31;
  }

  if (v37 <= 4)
  {
    if (v37 != 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v161) = 4;

      sub_23D80DA1C();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v161) = 1;

      sub_23D80DA1C();
      v70 = v156;
      v69 = v157;
      v71 = v158;
      (*(v156 + 104))(v158, *MEMORY[0x277CDF988], v157);
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v70 + 16))(v155, v71, v69);

      sub_23D80DA1C();
      (*(v70 + 8))(v71, v69);
      v160 = 4;
      v72 = AXRFormatterTheme.textColor.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v161 = v72;

      sub_23D80DA1C();
      v160 = 4;
      v73 = AXRFormatterTheme.color.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v161 = v73;

      sub_23D80DA1C();
      v160 = 4;
      v74 = AXRFormatterTheme.linkColor.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v161 = v74;

      sub_23D80DA1C();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v161) = 2;

      sub_23D80DA1C();
      sub_23D7E9DC8();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v161) = 0;

      sub_23D80DA1C();
      sub_23D7EA3E0();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v161) = 0;

      sub_23D80DA1C();
      sub_23D7EAA94();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v161) = 0;

      sub_23D80DA1C();
      sub_23D7EB0AC();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v161) = 0;

      sub_23D80DA1C();
      LOBYTE(v161) = 4;
      v75 = AXRFormatterTheme.textColor.getter();
      if (!v75)
      {
        v75 = sub_23D80DBFC();
      }

      v76 = v75;
      v48 = v159;
      swift_getKeyPath();
      swift_getKeyPath();
      v161 = v76;

      sub_23D80DA1C();
      swift_getKeyPath();
      swift_getKeyPath();
      v161 = 0x6D6574737953;
      v162 = 0xE600000000000000;

      sub_23D80DA1C();
      swift_getKeyPath();
      swift_getKeyPath();
      v161 = 0xD00000000000001CLL;
      v162 = 0x800000023D815B30;

      sub_23D80DA1C();
      swift_getKeyPath();
      swift_getKeyPath();
      v77 = 0x403C000000000000;
      goto LABEL_52;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v161) = 3;

    sub_23D80DA1C();
    v44 = v138;
    sub_23D790648(v154 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__legibilityWeight, v138, &qword_27E2E4688, &qword_23D810528);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v45 = v142;
      sub_23D7AF7D0(v44, v142, &qword_27E2E4720, &unk_23D810BC0);
    }

    else
    {
      sub_23D80E08C();
      v93 = sub_23D80DB4C();
      sub_23D80D94C();

      v94 = v145;
      sub_23D80DB0C();
      v45 = v142;
      swift_getAtKeyPath();

      (*(v146 + 8))(v94, v147);
    }

    v95 = v144;
    v96 = v136;
    v97 = v141;
    v98 = v153;
    v99 = v150;
    (*(v153 + 104))(v141, *MEMORY[0x277CDFB70], v150);
    (*(v98 + 56))(v97, 0, 1, v99);
    v100 = *(v95 + 48);
    v101 = v143;
    sub_23D790648(v45, v143, &qword_27E2E4720, &unk_23D810BC0);
    v102 = v101;
    sub_23D790648(v97, v101 + v100, &qword_27E2E4720, &unk_23D810BC0);
    v103 = *(v98 + 48);
    if (v103(v102, 1, v99) == 1)
    {
      sub_23D790730(v97, &qword_27E2E4720, &unk_23D810BC0);
      v104 = v143;
      sub_23D790730(v45, &qword_27E2E4720, &unk_23D810BC0);
      v105 = v103(v104 + v100, 1, v99);
      v48 = v159;
      v107 = v156;
      v106 = v157;
      if (v105 == 1)
      {
        sub_23D790730(v104, &qword_27E2E4720, &unk_23D810BC0);
        v108 = 1;
LABEL_45:
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = v108 & 1;

        sub_23D80DA1C();
        v123 = v140;
        sub_23D790648(v154 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__systemDynamicTypeSize, v140, &qword_27E2E4698, &qword_23D810560);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v124 = v137;
          (*(v107 + 32))(v137, v123, v106);
        }

        else
        {
          sub_23D80E08C();
          v125 = sub_23D80DB4C();
          sub_23D80D94C();

          v126 = v145;
          sub_23D80DB0C();
          v124 = v137;
          swift_getAtKeyPath();

          (*(v146 + 8))(v126, v147);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        (*(v107 + 16))(v158, v124, v106);

        sub_23D80DA1C();
        (*(v107 + 8))(v124, v106);
        v160 = 3;
        v127 = AXRFormatterTheme.textColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v127;

        sub_23D80DA1C();
        v160 = 3;
        v128 = AXRFormatterTheme.color.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v128;

        sub_23D80DA1C();
        v160 = 3;
        v129 = AXRFormatterTheme.linkColor.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        v161 = v129;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        sub_23D7E9DC8();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        sub_23D7EA3E0();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        sub_23D7EAA94();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        sub_23D7EB0AC();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v161) = 0;

        sub_23D80DA1C();
        LOBYTE(v161) = 3;
        goto LABEL_49;
      }
    }

    else
    {
      sub_23D790648(v102, v96, &qword_27E2E4720, &unk_23D810BC0);
      v109 = v103(v102 + v100, 1, v99);
      v107 = v156;
      if (v109 != 1)
      {
        v119 = v153;
        v120 = v134;
        (*(v153 + 32))(v134, v102 + v100, v99);
        sub_23D7AE258(&qword_27E2E4790, MEMORY[0x277CDFB80], MEMORY[0x277CDFB88]);
        v121 = v102;
        v108 = sub_23D80DD3C();
        v122 = *(v119 + 8);
        v122(v120, v99);
        sub_23D790730(v141, &qword_27E2E4720, &unk_23D810BC0);
        sub_23D790730(v142, &qword_27E2E4720, &unk_23D810BC0);
        v122(v96, v99);
        sub_23D790730(v121, &qword_27E2E4720, &unk_23D810BC0);
        v48 = v159;
        v106 = v157;
        goto LABEL_45;
      }

      sub_23D790730(v141, &qword_27E2E4720, &unk_23D810BC0);
      v104 = v143;
      sub_23D790730(v142, &qword_27E2E4720, &unk_23D810BC0);
      (*(v153 + 8))(v96, v99);
      v48 = v159;
      v106 = v157;
    }

    sub_23D790730(v104, &qword_27E2E4788, &qword_23D810C10);
    v108 = 0;
    goto LABEL_45;
  }

  v48 = v159;
  if (v37 == 5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v161) = 5;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v161) = 0;

    sub_23D80DA1C();
    v160 = 5;
    v57 = AXRFormatterTheme.textColor.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v161 = v57;

    sub_23D80DA1C();
    v160 = 5;
    v58 = AXRFormatterTheme.color.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v161 = v58;

    sub_23D80DA1C();
    v160 = 5;
    v59 = AXRFormatterTheme.linkColor.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v161 = v59;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v161) = 0;

    sub_23D80DA1C();
    sub_23D7E9DC8();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v161) = 2;

    sub_23D80DA1C();
    sub_23D7EA3E0();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v161) = 0;

    sub_23D80DA1C();
    sub_23D7EAA94();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v161) = 0;

    sub_23D80DA1C();
    sub_23D7EB0AC();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v161) = 0;

    sub_23D80DA1C();
    LOBYTE(v161) = 5;
    v60 = AXRFormatterTheme.textColor.getter();
    v53 = v156;
    if (!v60)
    {
      v60 = sub_23D80DBFC();
    }

    v61 = v60;
    v55 = v157;
    swift_getKeyPath();
    swift_getKeyPath();
    v161 = v61;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    v161 = 0x6B726F592077654ELL;
    v162 = 0xE800000000000000;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    v161 = 0;
    v162 = 0xE000000000000000;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    v161 = 0x4031000000000000;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v161) = 0;

    sub_23D80DA1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v161) = 1;

    sub_23D80DA1C();
    v56 = MEMORY[0x277CDF9D8];
LABEL_20:
    v68 = v158;
    (*(v53 + 104))(v158, *v56, v55);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v53 + 16))(v155, v68, v55);

    sub_23D80DA1C();
    (*(v53 + 8))(v68, v55);
  }

LABEL_53:
  *(v43 + v48) = 0;
  return v43;
}

uint64_t sub_23D7A76CC(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v10);

  v4 = v10;
  if (*(v10 + 16))
  {
    v5 = sub_23D7AC71C(v3);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v4 = *(v2 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v4 + 16))
  {

    v5 = sub_23D7AC71C(v3);
    if (v7)
    {
LABEL_5:
      v8 = *(*(v4 + 56) + 8 * v5);

      return v8;
    }
  }

  type metadata accessor for AXRTextFormatterModel(0);
  swift_allocObject();
  return AXRTextFormatterModel.init()();
}

uint64_t sub_23D7A77D0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = sub_23D80D9FC();
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v6;
  *v6 = 0x8000000000000000;
  sub_23D7AD57C(a2, v3, isUniquelyReferenced_nonNull_native);
  *v6 = v11;
  v4(v12, 0);

  return sub_23D7A927C(v8, v9);
}

uint64_t sub_23D7A78C8()
{

  sub_23D7AE0DC(v0);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

unsigned __int8 *sub_23D7A796C(unsigned __int8 *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v2 + 16))
  {
    v3 = *result;

    v4 = sub_23D7AC71C(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      swift_retain_n();

      v7 = _s23AccessibilityReaderData21AXRTextFormatterModelC5modelA2C_tcfC_0(v6);
      swift_getKeyPath();
      swift_getKeyPath();
      v8 = sub_23D80D9FC();
      v10 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v10;
      *v10 = 0x8000000000000000;
      sub_23D7AD57C(v7, v3, isUniquelyReferenced_nonNull_native);
      *v10 = v12;
      v8(v13, 0);
    }

    else
    {
    }
  }

  return result;
}

unsigned __int8 *sub_23D7A7ADC(unsigned __int8 *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v2 + 16))
  {
    v3 = *result;

    v4 = sub_23D7AC71C(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C(&v18);

      v7 = v18;
      if (*(v18 + 16) && (v8 = sub_23D7AC71C(v3), (v9 & 1) != 0))
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        sub_23D7F4C40(v6);
        swift_getKeyPath();
        swift_getKeyPath();
        v18 = 0;
        v19 = 1;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();

        v11 = sub_23D80D9FC();
        v13 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v13;
        *v13 = 0x8000000000000000;
        sub_23D7AD57C(v10, v3, isUniquelyReferenced_nonNull_native);
        *v13 = v17;
        v11(&v18, 0);

        sub_23D7A927C(v15, v16);
        type metadata accessor for AXRTextFormatterPresetsManager(0);
        sub_23D7AE258(&qword_27E2E46B8, type metadata accessor for AXRTextFormatterPresetsManager, &protocol conformance descriptor for AXRTextFormatterPresetsManager);
        sub_23D80D9AC();
        sub_23D80D9BC();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23D7A7D8C(unsigned __int8 *a1, uint64_t a2)
{
  v5 = sub_23D80DAAC();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v64 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &KeyPath - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  MEMORY[0x28223BE20](v65);
  v10 = &KeyPath - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C8, &qword_23D8105B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &KeyPath - v12;
  v14 = type metadata accessor for AXRTextCustomizationData(0);
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_23D790648(a2, v13, &qword_27E2E46C8, &qword_23D8105B8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_23D790730(v13, &qword_27E2E46C8, &qword_23D8105B8);
  }

  sub_23D7AE2F8(v13, v17);
  v20 = *(v2 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets);
  if (*(v20 + 16))
  {
    v62 = v2;

    v21 = sub_23D7AC71C(v18);
    if (v22)
    {
      v23 = *(*(v20 + 56) + 8 * v21);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C(&v70);

      v24 = v70;
      if (*(*&v70 + 16) && (v25 = sub_23D7AC71C(v18), (v26 & 1) != 0))
      {
        v27 = *(*(*&v24 + 56) + 8 * v25);

        v28 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
        swift_beginAccess();
        v60 = v28;
        *(v27 + v28) = 1;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(&v70);

        v29 = LOBYTE(v70);
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v70) = v29;

        sub_23D80DA1C();
        if (v17[v14[5] + 16] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v30 = v70;
          swift_getKeyPath();
          swift_getKeyPath();
          v70 = v30;

          sub_23D80DA1C();
        }

        if (v17[v14[6] + 16] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v31 = v70;
          swift_getKeyPath();
          swift_getKeyPath();
          v70 = v31;

          sub_23D80DA1C();
        }

        if (v17[v14[8] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v32 = LOBYTE(v70);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v68) = v32;

          sub_23D80DA1C();
          sub_23D7E9DC8();
        }

        if (v17[v14[10] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v33 = LOBYTE(v70);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v68) = v33;

          sub_23D80DA1C();
          sub_23D7EA3E0();
        }

        if (v17[v14[9] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v34 = LOBYTE(v70);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v68) = v34;

          sub_23D80DA1C();
          sub_23D7EAA94();
        }

        if (v17[v14[11] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v35 = LOBYTE(v70);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v68) = v35;

          sub_23D80DA1C();
          sub_23D7EB0AC();
        }

        if (v17[v14[12] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v36 = LOBYTE(v70);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v70) = v36;

          sub_23D80DA1C();
        }

        if (v17[v14[13] + 16] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v37 = v70;
          swift_getKeyPath();
          swift_getKeyPath();
          v70 = v37;

          sub_23D80DA1C();
        }

        v61 = v23;
        if (v17[v14[7] + 32] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v38 = v70;
          v39 = v71;
          swift_getKeyPath();
          swift_getKeyPath();
          v68 = v38;
          v69 = v39;

          sub_23D80DA1C();
        }

        sub_23D790648(v17, v10, &qword_27E2E46C0, &qword_23D8105B0);
        v40 = v66;
        v41 = v10[*(v65 + 64)];
        v42 = *(v66 + 8);
        v43 = v67;
        v42(&v10[*(v65 + 48)], v67);
        v42(v10, v43);
        if (v41 == 1)
        {
          swift_getKeyPath();
          LODWORD(v65) = v18;
          swift_getKeyPath();
          v44 = v63;
          sub_23D80DA0C(v63);

          KeyPath = swift_getKeyPath();
          swift_getKeyPath();
          (*(v40 + 16))(v64, v44, v43);

          sub_23D80DA1C();
          v18 = v65;
          v42(v44, v43);
        }

        if (v17[v14[14] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v45 = LOBYTE(v70);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v70) = v45;

          sub_23D80DA1C();
        }

        if (v17[v14[15] + 16] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v46 = v70;
          swift_getKeyPath();
          swift_getKeyPath();
          v70 = v46;

          sub_23D80DA1C();
        }

        if (v17[v14[16] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v47 = LOBYTE(v70);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v68) = v47;

          sub_23D80DA1C();
        }

        if (v17[v14[17] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v48 = LOBYTE(v70);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v70) = v48;

          sub_23D80DA1C();
        }

        if (v17[v14[18] + 2] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v49 = LOBYTE(v70);
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v70) = v49;

          sub_23D80DA1C();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(&v70);

        v50 = v70;
        if (v71)
        {
          v50 = 12.0;
        }

        sub_23D7EDEC0(v50);
        if (v17[v14[19] + 32] == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v70);

          v51 = v70;
          v52 = v71;
          swift_getKeyPath();
          swift_getKeyPath();
          v70 = v51;
          v71 = v52;

          sub_23D80DA1C();
        }

        swift_getKeyPath();
        swift_getKeyPath();

        v53 = sub_23D80D9FC();
        v55 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = *v55;
        *v55 = -0.0;
        sub_23D7AD57C(v27, v18, isUniquelyReferenced_nonNull_native);
        *v55 = v68;
        v53(&v70, 0);

        sub_23D7A927C(v57, v58);
        type metadata accessor for AXRTextFormatterPresetsManager(0);
        sub_23D7AE258(&qword_27E2E46B8, type metadata accessor for AXRTextFormatterPresetsManager, &protocol conformance descriptor for AXRTextFormatterPresetsManager);
        sub_23D80D9AC();
        sub_23D80D9BC();

        *(v27 + v60) = 0;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return sub_23D7AE35C(v17);
}

unsigned __int8 *sub_23D7A8D8C(unsigned __int8 *result)
{
  if (*(*(v1 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager_defaultPresets) + 16))
  {
    v2 = *result;

    sub_23D7AC71C(v2);
    if (v3)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C(v19);

      v4 = v19[0];
      if (*(v19[0] + 16) && (v5 = sub_23D7AC71C(v2), (v6 & 1) != 0))
      {
        v7 = *(*(v4 + 56) + 8 * v5);

        v8 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
        v17 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
        swift_beginAccess();
        *(v7 + v8) = 1;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(v19);

        swift_getKeyPath();
        swift_getKeyPath();

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(v19);

        v9 = v19[0];
        swift_getKeyPath();
        swift_getKeyPath();
        v19[0] = v9;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v19[0]) = 1;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(v19);

        v10 = v19[0];
        swift_getKeyPath();
        swift_getKeyPath();
        v19[0] = v10;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(v19);

        LOBYTE(v10) = v19[0];
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v19[0]) = v10;

        sub_23D80DA1C();
        swift_getKeyPath();
        swift_getKeyPath();

        v11 = sub_23D80D9FC();
        v13 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v13;
        *v13 = 0x8000000000000000;
        sub_23D7AD57C(v7, v2, isUniquelyReferenced_nonNull_native);
        *v13 = v18;
        v11(v19, 0);

        sub_23D7A927C(v15, v16);
        type metadata accessor for AXRTextFormatterPresetsManager(0);
        sub_23D7AE258(&qword_27E2E46B8, type metadata accessor for AXRTextFormatterPresetsManager, &protocol conformance descriptor for AXRTextFormatterPresetsManager);
        sub_23D80D9AC();
        sub_23D80D9BC();

        *(v7 + v17) = 0;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23D7A927C(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D80D97C();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v2;
  sub_23D80DA0C(&v50);

  v5 = 0;
  v7 = v50 + 8;
  v6 = v50[8];
  v49 = v50;
  v8 = 1 << *(v50 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v12 = MEMORY[0x277D84F98];
  if ((v9 & v6) != 0)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v13 >= v11)
    {

      sub_23D80D49C();
      swift_allocObject();
      sub_23D80D48C();
      v50 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4658, &qword_23D8104F0);
      sub_23D7AE814();
      v29 = sub_23D80D47C();
      v38 = v37;
      v39 = v29;

      if (qword_27E2E4230 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v40 = qword_27E2E4618;
      v41 = sub_23D80D61C();
      v42 = sub_23D80DD4C();
      [v40 setObject:v41 forKey:v42];

      type metadata accessor for AXRTextFormatterPresetsManager(0);
      sub_23D7AE258(&qword_27E2E46B8, type metadata accessor for AXRTextFormatterPresetsManager, &protocol conformance descriptor for AXRTextFormatterPresetsManager);
      sub_23D80D9AC();
      sub_23D80D9BC();

      return sub_23D7AE088(v39, v38);
    }

    v10 = v7[v13];
    ++v5;
  }

  while (!v10);
  while (1)
  {
    v14 = __clz(__rbit64(v10)) | (v13 << 6);
    v15 = *(v49[6] + v14);
    v16 = *(v49[7] + 8 * v14);
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v12;
    v18 = sub_23D7AC71C(v15);
    v20 = v12[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v12[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v18;
        sub_23D7ADA4C();
        v18 = v28;
      }
    }

    else
    {
      sub_23D7ACCC8(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_23D7AC71C(v15);
      if ((v24 & 1) != (v25 & 1))
      {
        result = sub_23D80E50C();
        __break(1u);
        return result;
      }
    }

    v10 &= v10 - 1;
    v12 = v50;
    if (v24)
    {
      *(v50[7] + 8 * v18) = v16;

      v5 = v13;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v50[(v18 >> 6) + 8] |= 1 << v18;
      *(v12[6] + v18) = v15;
      *(v12[7] + 8 * v18) = v16;

      v26 = v12[2];
      v22 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v22)
      {
        goto LABEL_29;
      }

      v12[2] = v27;
      v5 = v13;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v13 = v5;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  swift_once();
  v30 = v48;
  v31 = __swift_project_value_buffer(v48, qword_27E2E5348);
  swift_beginAccess();
  v33 = v46;
  v32 = v47;
  (*(v47 + 16))(v46, v31, v30);
  v34 = sub_23D80D95C();
  v35 = sub_23D80E06C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_23D78A000, v34, v35, "Error encoding presets for UserDefaults", v36, 2u);
    MEMORY[0x23EEED790](v36, -1, -1);
  }

  return (*(v32 + 8))(v33, v30);
}

void sub_23D7A9808(unsigned __int8 *a1, void *a2)
{
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27E2E4618;
  v4 = sub_23D80DD4C();

  v5 = sub_23D80DD4C();
  [v3 setObject:v4 forKey:v5];

  swift_beginAccess();
  sub_23D7A4884(*(v2 + 16));
}

void sub_23D7A99D8(char a2@<W1>, _BYTE *a3@<X8>)
{
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27E2E4618;
  v6 = sub_23D80DD4C();
  v7 = [v5 stringForKey_];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = sub_23D80DD7C();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  AXRFormatterTheme.init(rawValue:)(v11);
  a2 = v12;
  if (v12 != 7)
  {

LABEL_6:
    *a3 = a2;
    return;
  }

  __break(1u);
}

uint64_t sub_23D7A9B00(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27E2E4618;
  v3 = sub_23D80DD4C();
  v4 = [v2 stringForKey_];

  if (v4)
  {
    v5 = sub_23D80DD7C();
    v7 = v6;

    if (v1 <= 2)
    {
      if (v1)
      {
        if (v1 == 1)
        {
          v8 = 0xE800000000000000;
          v9 = 0x6465636E616C6162;
        }

        else
        {
          v8 = 0xE500000000000000;
          v9 = 0x65736F6F6CLL;
        }
      }

      else
      {
        v9 = 1802658148;
        v8 = 0xE400000000000000;
      }
    }

    else if (v1 > 4)
    {
      if (v1 == 5)
      {
        v9 = 1802465122;
      }

      else
      {
        v9 = 0x6D6F74737563;
      }

      if (v1 == 5)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE600000000000000;
      }
    }

    else if (v1 == 3)
    {
      v8 = 0xE500000000000000;
      v9 = 0x746867696CLL;
    }

    else
    {
      v8 = 0xE400000000000000;
      v9 = 1684828002;
    }

    if (v5 != v9 || v7 != v8)
    {
      v10 = sub_23D80E4DC();

      goto LABEL_29;
    }

LABEL_31:

    v10 = 1;
    return v10 & 1;
  }

  if (v1 <= 2 && !v1)
  {
    goto LABEL_31;
  }

  v10 = sub_23D80E4DC();
LABEL_29:

  return v10 & 1;
}

uint64_t sub_23D7A9DB0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  v2 = 1802658148;
  swift_beginAccess();
  v3 = qword_27E2E4618;
  v4 = sub_23D80DD4C();
  v5 = [v3 stringForKey_];

  if (v5)
  {
    v6 = sub_23D80DD7C();
    v8 = v7;

    if (v1 <= 2)
    {
      if (v1)
      {
        if (v1 == 1)
        {
          v9 = 0xE800000000000000;
          v2 = 0x6465636E616C6162;
        }

        else
        {
          v9 = 0xE500000000000000;
          v2 = 0x65736F6F6CLL;
        }
      }

      else
      {
        v9 = 0xE400000000000000;
      }
    }

    else if (v1 > 4)
    {
      if (v1 == 5)
      {
        v2 = 1802465122;
      }

      else
      {
        v2 = 0x6D6F74737563;
      }

      if (v1 == 5)
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE600000000000000;
      }
    }

    else if (v1 == 3)
    {
      v9 = 0xE500000000000000;
      v2 = 0x746867696CLL;
    }

    else
    {
      v9 = 0xE400000000000000;
      v2 = 1684828002;
    }

    if (v6 != v2 || v8 != v9)
    {
      v11 = sub_23D80E4DC();

      goto LABEL_30;
    }
  }

  else if (v1 != 3)
  {
    v11 = sub_23D80E4DC();
LABEL_30:

    return v11 & 1;
  }

  v11 = 1;
  return v11 & 1;
}

uint64_t AXRTextFormatterPresetsManager.deinit()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__presets;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4628, &qword_23D810488);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__selectedTheme;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__legibilityWeight, &qword_27E2E46E8, &qword_23D810A88);
  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData30AXRTextFormatterPresetsManager__systemDynamicTypeSize, &qword_27E2E46F0, &qword_23D810A90);
  return v0;
}

uint64_t AXRTextFormatterPresetsManager.__deallocating_deinit()
{
  AXRTextFormatterPresetsManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23D7AA210@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AXRTextFormatterPresetsManager(0);
  result = sub_23D80D9AC();
  *a2 = result;
  return result;
}

uint64_t AXRTextCustomizationData.dynamicSize.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_23D790648(v2, &v14 - v7, &qword_27E2E46C0, &qword_23D8105B0);
  v9 = *(v6 + 56);
  v10 = v8[*(v6 + 72)];
  v11 = sub_23D80DAAC();
  v12 = *(*(v11 - 8) + 32);
  v12(a1, v8, v11);
  v12(a2, &v8[v9], v11);
  return v10;
}

uint64_t AXRTextCustomizationData.dynamicSize.setter(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-v11];
  v13 = sub_23D80DAAC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 32);
  v15(v12, a1, v13);
  v15(&v12[*(v7 + 56)], a2, v13);
  v12[*(v7 + 72)] = v21;
  sub_23D7AF7D0(v12, v10, &qword_27E2E46C0, &qword_23D8105B0);
  v16 = *(v7 + 56);
  v17 = v10[*(v7 + 72)];
  v18 = *(v14 + 40);
  v18(v3, v10, v13);
  result = (v18)(v3 + *(v7 + 56), &v10[v16], v13);
  *(v3 + *(v7 + 72)) = v17;
  return result;
}

uint64_t AXRTextCustomizationData.customSelectedTextColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 20));

  return v1;
}

uint64_t AXRTextCustomizationData.customSelectedTextColor.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for AXRTextCustomizationData(0) + 20);

  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t AXRTextCustomizationData.customSelectedBackgroundColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 24));

  return v1;
}

uint64_t AXRTextCustomizationData.customSelectedBackgroundColor.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for AXRTextCustomizationData(0) + 24);

  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t AXRTextCustomizationData.fontName.getter(void *a1, void *a2)
{
  v5 = v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 28);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  *a1 = *v5;
  a1[1] = v6;
  *a2 = v7;
  a2[1] = v8;

  return v9;
}

uint64_t AXRTextCustomizationData.fontName.setter(uint64_t *a1, uint64_t *a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];
  v9 = v3 + *(type metadata accessor for AXRTextCustomizationData(0) + 28);

  *v9 = v5;
  *(v9 + 8) = v6;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = a3;
  return result;
}

uint64_t AXRTextCustomizationData.lineSpacing.getter(_BYTE *a1, _BYTE *a2)
{
  v5 = (v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 32));
  v6 = v5[1];
  result = v5[2];
  *a1 = *v5;
  *a2 = v6;
  return result;
}

uint64_t AXRTextCustomizationData.lineSpacing.setter(char *a1, char *a2, char a3)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 32));
  *v8 = v5;
  v8[1] = v6;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.wordSpacing.getter(_BYTE *a1, _BYTE *a2)
{
  v5 = (v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 36));
  v6 = v5[1];
  result = v5[2];
  *a1 = *v5;
  *a2 = v6;
  return result;
}

uint64_t AXRTextCustomizationData.wordSpacing.setter(char *a1, char *a2, char a3)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 36));
  *v8 = v5;
  v8[1] = v6;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.charSpacing.getter(_BYTE *a1, _BYTE *a2)
{
  v5 = (v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 40));
  v6 = v5[1];
  result = v5[2];
  *a1 = *v5;
  *a2 = v6;
  return result;
}

uint64_t AXRTextCustomizationData.charSpacing.setter(char *a1, char *a2, char a3)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 40));
  *v8 = v5;
  v8[1] = v6;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.marginSpacing.getter(_BYTE *a1, _BYTE *a2)
{
  v5 = (v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 44));
  v6 = v5[1];
  result = v5[2];
  *a1 = *v5;
  *a2 = v6;
  return result;
}

uint64_t AXRTextCustomizationData.marginSpacing.setter(char *a1, char *a2, char a3)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 44));
  *v8 = v5;
  v8[1] = v6;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.showLinks.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 48));
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v2 | v4;
}

uint64_t AXRTextCustomizationData.showLinks.setter(char a1, char a2, char a3)
{
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 48));
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.linkColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 52));

  return v1;
}

uint64_t AXRTextCustomizationData.linkColor.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for AXRTextCustomizationData(0) + 52);

  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t AXRTextCustomizationData.highlightEnabled.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 56));
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v2 | v4;
}

uint64_t AXRTextCustomizationData.highlightEnabled.setter(char a1, char a2, char a3)
{
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 56));
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.highlightColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 60));

  return v1;
}

uint64_t AXRTextCustomizationData.highlightColor.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for AXRTextCustomizationData(0) + 60);

  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t AXRTextCustomizationData.highlightStyle.getter(_BYTE *a1, _BYTE *a2)
{
  v5 = (v2 + *(type metadata accessor for AXRTextCustomizationData(0) + 64));
  v6 = v5[1];
  result = v5[2];
  *a1 = *v5;
  *a2 = v6;
  return result;
}

uint64_t AXRTextCustomizationData.highlightStyle.setter(char *a1, char *a2, char a3)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 64));
  *v8 = v5;
  v8[1] = v6;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.highLegibilityEnabled.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 68));
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v2 | v4;
}

uint64_t AXRTextCustomizationData.highLegibilityEnabled.setter(char a1, char a2, char a3)
{
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 68));
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  return result;
}

uint64_t AXRTextCustomizationData.textBold.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextCustomizationData(0) + 72));
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v2 | v4;
}

uint64_t AXRTextCustomizationData.textBold.setter(char a1, char a2, char a3)
{
  result = type metadata accessor for AXRTextCustomizationData(0);
  v8 = (v3 + *(result + 72));
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  return result;
}

double AXRTextCustomizationData.themeName.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AXRTextCustomizationData(0) + 76));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return result;
}

uint64_t AXRTextCustomizationData.themeName.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = v5 + *(type metadata accessor for AXRTextCustomizationData(0) + 76);

  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  return result;
}

double AXRTextCustomizationData.init(dynamicSize:customSelectedTextColor:customSelectedBackgroundColor:fontName:lineSpacing:wordSpacing:charSpacing:marginSpacing:showLinks:linkColor:highlightEnabled:highlightColor:highlightStyle:highLegibilityEnabled:textBold:themeName:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int8 a10, uint64_t *a11, uint64_t *a12, unsigned __int8 a13, unsigned __int8 *a14, unsigned __int8 *a15, unsigned __int8 a16, unsigned __int8 *a17, unsigned __int8 *a18, unsigned __int8 a19, unsigned __int8 *a20, unsigned __int8 *a21, unsigned __int8 a22, unsigned __int8 *a23, unsigned __int8 *a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27, unsigned __int8 a28, uint64_t a29, uint64_t a30, unsigned __int8 a31, unsigned __int8 a32, unsigned __int8 a33, unsigned __int8 a34, uint64_t a35, uint64_t a36, unsigned __int8 a37, unsigned __int8 *a38, unsigned __int8 *a39, unsigned __int8 a40, unsigned __int8 a41, unsigned __int8 a42, unsigned __int8 a43, unsigned __int8 a44, unsigned __int8 a45, unsigned __int8 a46, __int128 a47, uint64_t a48, uint64_t a49, unsigned __int8 a50)
{
  v114 = a8;
  v112 = a7;
  v110 = a6;
  v109 = a5;
  v108 = a4;
  v102 = a2;
  v101 = a1;
  v136 = a50;
  v134 = a48;
  v135 = a49;
  v133 = a47;
  v131 = a45;
  v132 = a46;
  v129 = a43;
  v130 = a44;
  v127 = a41;
  v128 = a42;
  v125 = a37;
  v126 = a40;
  v123 = a35;
  v124 = a36;
  v121 = a33;
  v122 = a34;
  v119 = a31;
  v120 = a32;
  v117 = a29;
  v118 = a30;
  v115 = a27;
  v116 = a28;
  v113 = a26;
  v111 = a25;
  v107 = a22;
  v106 = a19;
  v105 = a16;
  v104 = a13;
  v103 = a10;
  v100 = a39;
  v99 = a38;
  v98 = a24;
  v97 = a23;
  v96 = a21;
  v95 = a20;
  v94 = a18;
  v93 = a17;
  v92 = a15;
  v91 = a14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  v53 = v52 - 8;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v89 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v89 - v57;
  v59 = sub_23D80DAAC();
  v60 = *(*(v59 - 8) + 32);
  v60(v58, v101, v59);
  v60(&v58[*(v53 + 56)], v102, v59);
  v58[*(v53 + 72)] = a3;
  v62 = *a11;
  v61 = a11[1];
  v63 = a12[1];
  v90 = *a12;
  v89 = v63;
  LODWORD(v91) = *v91;
  LODWORD(v92) = *v92;
  LODWORD(v93) = *v93;
  LODWORD(v94) = *v94;
  LODWORD(v95) = *v95;
  LODWORD(v96) = *v96;
  LODWORD(v97) = *v97;
  LODWORD(v98) = *v98;
  LODWORD(v102) = *v99;
  LODWORD(v101) = *v100;
  sub_23D7AF7D0(v58, v56, &qword_27E2E46C0, &qword_23D8105B0);
  v64 = *(v53 + 56);
  v65 = v56[*(v53 + 72)];
  v60(a9, v56, v59);
  v60(&a9[*(v53 + 56)], &v56[v64], v59);
  a9[*(v53 + 72)] = v65;
  v66 = type metadata accessor for AXRTextCustomizationData(0);
  v67 = &a9[v66[5]];
  v68 = v109;
  *v67 = v108;
  *(v67 + 1) = v68;
  v67[16] = v110;
  v69 = &a9[v66[6]];
  v70 = v114;
  *v69 = v112;
  *(v69 + 1) = v70;
  v69[16] = v103;
  v71 = &a9[v66[7]];
  *v71 = v62;
  *(v71 + 1) = v61;
  v72 = v89;
  *(v71 + 2) = v90;
  *(v71 + 3) = v72;
  v71[32] = v104;
  v73 = &a9[v66[8]];
  *v73 = v91;
  v73[1] = v92;
  v73[2] = v105;
  v74 = &a9[v66[9]];
  *v74 = v93;
  v74[1] = v94;
  v74[2] = v106;
  v75 = &a9[v66[10]];
  *v75 = v95;
  v75[1] = v96;
  v75[2] = v107;
  v76 = &a9[v66[11]];
  *v76 = v97;
  v76[1] = v98;
  v76[2] = v111;
  v77 = &a9[v66[12]];
  *v77 = v113;
  LOBYTE(v72) = v116;
  v77[1] = v115;
  v77[2] = v72;
  v78 = &a9[v66[13]];
  v79 = v118;
  *v78 = v117;
  *(v78 + 1) = v79;
  LOBYTE(v79) = v120;
  v78[16] = v119;
  v80 = &a9[v66[14]];
  *v80 = v79;
  LOBYTE(v79) = v122;
  v80[1] = v121;
  v80[2] = v79;
  v81 = &a9[v66[15]];
  v82 = v124;
  *v81 = v123;
  *(v81 + 1) = v82;
  v81[16] = v125;
  v83 = &a9[v66[16]];
  *v83 = v102;
  v83[1] = v101;
  LOBYTE(v82) = v127;
  v83[2] = v126;
  v84 = &a9[v66[17]];
  *v84 = v82;
  LOBYTE(v82) = v129;
  v84[1] = v128;
  v84[2] = v82;
  v85 = &a9[v66[18]];
  LOBYTE(v82) = v131;
  *v85 = v130;
  v85[1] = v82;
  v85[2] = v132;
  v86 = &a9[v66[19]];
  result = *&v133;
  *v86 = v133;
  v88 = v135;
  *(v86 + 2) = v134;
  *(v86 + 3) = v88;
  v86[32] = v136;
  return result;
}

uint64_t sub_23D7AB97C@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v6);

  *a4 = v6;
  return result;
}

uint64_t sub_23D7ABA0C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7ABB9C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = sub_23D80DA1C();
  return a7(v8);
}

uint64_t sub_23D7ABC38@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v6);

  *a4 = v6;
  return result;
}

uint64_t sub_23D7ABCB4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7ABD28@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23D7ABDA8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7ABE4C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_23D7ABECC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7ABFA0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_23D7AC020(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7AC0CC(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7AC13C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(a2);
}

uint64_t sub_23D7AC1B8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23D80DAAC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10(v7, v9, v3);

  sub_23D80DA1C();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7AC328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4720, &unk_23D810BC0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D790648(a1, &v5 - v3, &qword_27E2E4720, &unk_23D810BC0);
  return sub_23D80DAFC();
}

uint64_t sub_23D7AC3D0(uint64_t a1)
{
  v2 = sub_23D80DAAC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D80DADC();
}

uint64_t sub_23D7AC498@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v5);

  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_23D7AC520(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

unint64_t sub_23D7AC5A4(uint64_t a1, uint64_t a2)
{
  sub_23D80E58C();
  sub_23D80DDAC();
  v4 = sub_23D80E5CC();

  return sub_23D7AC7A4(a1, a2, v4);
}

unint64_t sub_23D7AC620(uint64_t a1)
{
  sub_23D80DD7C();
  sub_23D80E58C();
  sub_23D80DDAC();
  v2 = sub_23D80E5CC();

  return sub_23D7ACBC4(a1, v2);
}

unint64_t sub_23D7AC6B0(uint64_t a1)
{
  v1 = a1;
  sub_23D80E58C();
  sub_23D80E5AC();
  v2 = sub_23D80E5CC();

  return sub_23D7AC85C(v1, v2);
}

unint64_t sub_23D7AC71C(uint64_t a1)
{
  v2 = a1;
  v3 = sub_23D7B2268(*(v1 + 40), a1);

  return sub_23D7AC8C8(v2, v3);
}

unint64_t sub_23D7AC760(uint64_t a1)
{
  v2 = sub_23D80E1FC();

  return sub_23D7ACAFC(a1, v2);
}

unint64_t sub_23D7AC7A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23D80E4DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23D7AC85C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23D7AC8C8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6465636E616C6162;
          }

          else
          {
            v8 = 0x65736F6F6CLL;
          }

          if (v7 == 1)
          {
            v9 = 0xE800000000000000;
          }

          else
          {
            v9 = 0xE500000000000000;
          }
        }

        else
        {
          v9 = 0xE400000000000000;
          v8 = 1802658148;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE400000000000000;
          v8 = 1802465122;
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x6D6F74737563;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x746867696CLL;
        }

        else
        {
          v8 = 1684828002;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      v10 = 0x6D6F74737563;
      if (v6 == 5)
      {
        v10 = 1802465122;
      }

      v11 = 0xE600000000000000;
      if (v6 == 5)
      {
        v11 = 0xE400000000000000;
      }

      v12 = 0x746867696CLL;
      if (v6 == 3)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v12 = 1684828002;
        v13 = 0xE400000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6465636E616C6162;
      if (v6 != 1)
      {
        v14 = 0x65736F6F6CLL;
      }

      v15 = 0xE800000000000000;
      if (v6 != 1)
      {
        v15 = 0xE500000000000000;
      }

      if (!v6)
      {
        v14 = 1802658148;
        v15 = 0xE400000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_23D80E4DC();

      if ((v18 & 1) == 0)
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

unint64_t sub_23D7ACAFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D7AF708(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEECB20](v9, a1);
      sub_23D7AF764(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23D7ACBC4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23D80DD7C();
      v8 = v7;
      if (v6 == sub_23D80DD7C() && v8 == v9)
      {
        break;
      }

      v11 = sub_23D80E4DC();

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

uint64_t sub_23D7ACCC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44B8, &qword_23D80FEF8);
  v30 = v4;
  result = sub_23D80E33C();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_23D80E58C();
      sub_23D80DDAC();

      result = sub_23D80E5CC();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23D7AD00C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44C8, &qword_23D80FF08);
  v33 = v4;
  result = sub_23D80E33C();
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
        sub_23D794258(v24, v34);
      }

      else
      {
        sub_23D793694(v24, v34);
      }

      sub_23D80E58C();
      sub_23D80DDAC();
      result = sub_23D80E5CC();
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
      result = sub_23D794258(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_23D7AD2C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44A8, &unk_23D810C00);
  result = sub_23D80E33C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_23D794258((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_23D7AF708(v23, &v36);
        sub_23D793694(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_23D80E1FC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_23D794258(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_23D7AD57C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23D7AC71C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23D7ACCC8(v14, a3 & 1);
      result = sub_23D7AC71C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_23D80E50C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23D7ADA4C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_23D7AD6C8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23D7AC5A4(a2, a3);
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
      sub_23D7ADBA8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23D7AD00C(v16, a4 & 1);
    v11 = sub_23D7AC5A4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_23D80E50C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_23D794258(a1, v22);
  }

  else
  {
    sub_23D7AD964(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_23D7AD818(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23D7AC760(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23D7ADD4C();
      goto LABEL_7;
    }

    sub_23D7AD2C4(v13, a3 & 1);
    v19 = sub_23D7AC760(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_23D7AF708(a2, v21);
      return sub_23D7AD9D0(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_23D80E50C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_23D794258(a1, v17);
}

_OWORD *sub_23D7AD964(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23D794258(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_23D7AD9D0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_23D794258(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_23D7ADA4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44B8, &qword_23D80FEF8);
  v2 = *v0;
  v3 = sub_23D80E32C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_23D7ADBA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44C8, &qword_23D80FF08);
  v2 = *v0;
  v3 = sub_23D80E32C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_23D793694(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23D794258(v25, (*(v4 + 56) + v22));
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
}

void *sub_23D7ADD4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44A8, &unk_23D810C00);
  v2 = *v0;
  v3 = sub_23D80E32C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = 40 * v17;
        sub_23D7AF708(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_23D793694(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_23D794258(v22, (*(v4 + 56) + v17));
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

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

unint64_t sub_23D7ADF78()
{
  result = qword_27E2E46A0;
  if (!qword_27E2E46A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4658, &qword_23D8104F0);
    sub_23D7AE034();
    sub_23D7AE258(&qword_27E2E46B0, type metadata accessor for AXRTextFormatterModel, &protocol conformance descriptor for AXRTextFormatterModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E46A0);
  }

  return result;
}

unint64_t sub_23D7AE034()
{
  result = qword_27E2E46A8;
  if (!qword_27E2E46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E46A8);
  }

  return result;
}

uint64_t sub_23D7AE088(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_23D7AE0DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E44B8, &qword_23D80FEF8);
  result = sub_23D80E32C();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 8;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(a1 + 48) + v13);

      result = _s23AccessibilityReaderData21AXRTextFormatterModelC5modelA2C_tcfC_0(v15);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v3[6] + v13) = v14;
      *(v3[7] + 8 * v13) = result;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        break;
      }

      v3[2] = v18;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23D7AE258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D7AE2C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D7AE2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextCustomizationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7AE35C(uint64_t a1)
{
  v2 = type metadata accessor for AXRTextCustomizationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D7AE814()
{
  result = qword_27E2E46D0;
  if (!qword_27E2E46D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4658, &qword_23D8104F0);
    sub_23D7AE8D0();
    sub_23D7AE258(&qword_27E2E46E0, type metadata accessor for AXRTextFormatterModel, &protocol conformance descriptor for AXRTextFormatterModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E46D0);
  }

  return result;
}

unint64_t sub_23D7AE8D0()
{
  result = qword_27E2E46D8;
  if (!qword_27E2E46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E46D8);
  }

  return result;
}

uint64_t sub_23D7AE930@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_23D7AE978(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

void sub_23D7AEA2C(uint64_t a1)
{
  sub_23D7AF1B4(319, &qword_27E2E4708, &qword_27E2E4658, &qword_23D8104F0, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_23D7AF164();
    if (v2 <= 0x3F)
    {
      sub_23D7AF1B4(319, &qword_27E2E4718, &qword_27E2E4720, &unk_23D810BC0, MEMORY[0x277CDF458]);
      if (v3 <= 0x3F)
      {
        sub_23D7AF218(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_23D7AF164()
{
  if (!qword_27E2E4710)
  {
    v0 = sub_23D80DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E4710);
    }
  }
}

void sub_23D7AF1B4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23D7AF218(uint64_t a1)
{
  if (!qword_27E2E4728)
  {
    sub_23D80DAAC();
    v1 = sub_23D80DA4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2E4728);
    }
  }
}

uint64_t sub_23D7AF284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D7AF364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E46C0, &qword_23D8105B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23D7AF42C(uint64_t a1)
{
  sub_23D7AF5BC(319);
  if (v1 <= 0x3F)
  {
    sub_23D7AF62C(319);
    if (v2 <= 0x3F)
    {
      sub_23D7AF6A8(319, &qword_27E2E4758, &type metadata for AXRFont);
      if (v3 <= 0x3F)
      {
        sub_23D7AF6A8(319, &qword_27E2E4760, &type metadata for AXRTextSpacingOption);
        if (v4 <= 0x3F)
        {
          sub_23D7AF6A8(319, &qword_27E2E4768, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_23D7AF6A8(319, &qword_27E2E4770, MEMORY[0x277CE0F78]);
            if (v6 <= 0x3F)
            {
              sub_23D7AF6A8(319, &qword_27E2E4778, &type metadata for AXRHighlightStyle);
              if (v7 <= 0x3F)
              {
                sub_23D7AF6A8(319, &qword_27E2E4780, MEMORY[0x277D837D0]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D7AF5BC(uint64_t a1)
{
  if (!qword_27E2E4740)
  {
    sub_23D80DAAC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E2E4740);
    }
  }
}

void sub_23D7AF62C(uint64_t a1)
{
  if (!qword_27E2E4748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4750, "@~");
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E2E4748);
    }
  }
}

void sub_23D7AF6A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_23D7AF7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D7AF844()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6574696877;
    v8 = 0x776F6C6C6579;
    v9 = 0x6E65657267;
    if (v1 != 3)
    {
      v9 = 1802398064;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 1702194274;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x657247746867696CLL;
    v3 = 0x6E6950746867696CLL;
    if (v1 != 9)
    {
      v3 = 0x727550746867696CLL;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x656C70727570;
    v5 = 0x756C42746867696CLL;
    if (v1 != 6)
    {
      v5 = 0x6C6559746867696CLL;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t AXRHighlightColor.color.getter(uint64_t a1)
{
  v2 = *v1;
  if (v2 <= 4)
  {
    if (*v1 <= 1u)
    {
      if (*v1)
      {

        return MEMORY[0x2821333F8](a1);
      }

      else
      {

        return sub_23D80DC1C();
      }
    }

    else if (v2 == 2)
    {

      return MEMORY[0x2821334B0](a1);
    }

    else if (v2 == 3)
    {

      return MEMORY[0x282133478](a1);
    }

    else
    {

      return MEMORY[0x282133430](a1);
    }
  }

  else
  {
    if (*v1 > 7u)
    {
      if (v2 == 8)
      {
        v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.752941176 green:0.929411765 blue:0.447058824 alpha:1.0];
      }

      else
      {
        if (v2 != 9)
        {
          v3 = objc_allocWithZone(MEMORY[0x277D75348]);
          v4 = 0.850980392;
          v5 = 0.698039216;
          goto LABEL_34;
        }

        v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.690196078 blue:0.792156863 alpha:1.0];
      }

LABEL_35:

      return MEMORY[0x28212FFA8](v6);
    }

    if (v2 != 5)
    {
      if (v2 == 6)
      {
        v3 = objc_allocWithZone(MEMORY[0x277D75348]);
        v4 = 0.678431373;
        v5 = 0.847058824;
LABEL_34:
        v6 = [v3 initWithRed:v4 green:v5 blue:1.0 alpha:1.0];
        goto LABEL_35;
      }

      v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.921568627 blue:0.419607843 alpha:1.0];
      goto LABEL_35;
    }

    return MEMORY[0x2821334A8](a1);
  }
}

uint64_t AXRHighlightColor.description.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    if (*v0 <= 7u)
    {
      if (v1 != 6)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

    if (v1 != 8)
    {
      if (v1 != 9)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

LABEL_15:
    if (qword_27E2E4228 != -1)
    {
      swift_once();
    }

    v3 = 0x69682E6E65657267;
    goto LABEL_30;
  }

  if (*v0 <= 1u)
  {
    if (*v0)
    {
LABEL_26:
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v2 = 1702194274;
LABEL_29:
      v3 = v2 | 0x6769682E00000000;
      goto LABEL_30;
    }

    if (qword_27E2E4228 != -1)
    {
      swift_once();
    }

    v3 = 0x69682E6574696877;
LABEL_30:
    v4 = qword_27E2E4610;
    if (!qword_27E2E4610)
    {
      return v3;
    }

LABEL_31:
    v5 = v4;
    v6 = sub_23D80DD4C();
    v7 = sub_23D80DD4C();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v3 = sub_23D80DD7C();
    return v3;
  }

  if (v1 != 2)
  {
    if (v1 != 3)
    {
LABEL_11:
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v2 = 1802398064;
      goto LABEL_29;
    }

    goto LABEL_15;
  }

LABEL_18:
  if (qword_27E2E4228 != -1)
  {
    swift_once();
  }

  v4 = qword_27E2E4610;
  v3 = 0xD000000000000010;
  if (qword_27E2E4610)
  {
    goto LABEL_31;
  }

  return v3;
}

AccessibilityReaderData::AXRHighlightColor_optional __swiftcall AXRHighlightColor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D80E36C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23D7AFED0()
{
  result = qword_27E2E4798;
  if (!qword_27E2E4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4798);
  }

  return result;
}

uint64_t sub_23D7AFF24()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D8004B8(v3, v1);
  return sub_23D80E5CC();
}

uint64_t sub_23D7AFF74(uint64_t a1)
{
  v2 = *v1;
  sub_23D80E58C();
  sub_23D8004B8(v4, v2);
  return sub_23D80E5CC();
}

uint64_t sub_23D7AFFC4@<X0>(uint64_t *a1@<X8>)
{
  result = AXRHighlightColor.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23D7AFFF0()
{
  result = qword_27E2E47A0;
  if (!qword_27E2E47A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E47A8, &qword_23D810DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXRHighlightColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXRHighlightColor(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D7B0270()
{
  result = qword_27E2E47B0;
  if (!qword_27E2E47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47B0);
  }

  return result;
}

Swift::Double __swiftcall DynamicTypeSize.scalingFactor(forTextStyle:)(UIFontTextStyle forTextStyle)
{
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 pointSize];
  v4 = v3;

  return DynamicTypeSize.numerator(forTextStyle:)(forTextStyle) / v4;
}

id DynamicTypeSize.uiKitContentSize.getter()
{
  v1 = v0;
  v2 = sub_23D80DAAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CDF9F8])
  {
    v7 = MEMORY[0x277D76830];
  }

  else if (v6 == *MEMORY[0x277CDF9E0])
  {
    v7 = MEMORY[0x277D76858];
  }

  else if (v6 == *MEMORY[0x277CDF9E8])
  {
    v7 = MEMORY[0x277D76840];
  }

  else if (v6 == *MEMORY[0x277CDF9D8])
  {
    v7 = MEMORY[0x277D76838];
  }

  else if (v6 == *MEMORY[0x277CDF9F0])
  {
    v7 = MEMORY[0x277D76828];
  }

  else if (v6 == *MEMORY[0x277CDFA00])
  {
    v7 = MEMORY[0x277D76820];
  }

  else if (v6 == *MEMORY[0x277CDFA10])
  {
    v7 = MEMORY[0x277D76818];
  }

  else if (v6 == *MEMORY[0x277CDF988])
  {
    v7 = MEMORY[0x277D76808];
  }

  else if (v6 == *MEMORY[0x277CDF998])
  {
    v7 = MEMORY[0x277D76800];
  }

  else if (v6 == *MEMORY[0x277CDF9A8])
  {
    v7 = MEMORY[0x277D767F8];
  }

  else if (v6 == *MEMORY[0x277CDF9B8])
  {
    v7 = MEMORY[0x277D767F0];
  }

  else
  {
    if (v6 != *MEMORY[0x277CDF9D0])
    {
      v10 = *(v3 + 8);
      v11 = *MEMORY[0x277D76840];
      v10(v5, v2);
      return v11;
    }

    v7 = MEMORY[0x277D767E8];
  }

  v8 = *v7;

  return v8;
}

uint64_t UIContentSizeCategory.dynamicTypeSize.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23D80DD7C();
  v5 = v4;
  if (v3 == sub_23D80DD7C() && v5 == v6)
  {
    v9 = MEMORY[0x277CDF9F8];
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_23D80E4DC();

  if (v8)
  {
    v9 = MEMORY[0x277CDF9F8];
    goto LABEL_9;
  }

  v14 = sub_23D80DD7C();
  v16 = v15;
  if (v14 == sub_23D80DD7C() && v16 == v17)
  {
    v9 = MEMORY[0x277CDF9E0];
    goto LABEL_8;
  }

  v19 = sub_23D80E4DC();

  if (v19)
  {
    v9 = MEMORY[0x277CDF9E0];
    goto LABEL_9;
  }

  v20 = sub_23D80DD7C();
  v22 = v21;
  if (v20 == sub_23D80DD7C() && v22 == v23)
  {
    v9 = MEMORY[0x277CDF9E8];
    goto LABEL_8;
  }

  v24 = sub_23D80E4DC();

  v25 = MEMORY[0x277CDF9E8];
  v9 = MEMORY[0x277CDF9E8];
  if ((v24 & 1) == 0)
  {
    v26 = sub_23D80DD7C();
    v28 = v27;
    if (v26 == sub_23D80DD7C() && v28 == v29)
    {
      v9 = MEMORY[0x277CDF9D8];
      goto LABEL_8;
    }

    v30 = sub_23D80E4DC();

    if (v30)
    {
      v9 = MEMORY[0x277CDF9D8];
    }

    else
    {
      v31 = sub_23D80DD7C();
      v33 = v32;
      if (v31 == sub_23D80DD7C() && v33 == v34)
      {
        v9 = MEMORY[0x277CDF9F0];
        goto LABEL_8;
      }

      v35 = sub_23D80E4DC();

      if (v35)
      {
        v9 = MEMORY[0x277CDF9F0];
      }

      else
      {
        v36 = sub_23D80DD7C();
        v38 = v37;
        if (v36 == sub_23D80DD7C() && v38 == v39)
        {
          v9 = MEMORY[0x277CDFA00];
          goto LABEL_8;
        }

        v40 = sub_23D80E4DC();

        if (v40)
        {
          v9 = MEMORY[0x277CDFA00];
        }

        else
        {
          v41 = sub_23D80DD7C();
          v43 = v42;
          if (v41 == sub_23D80DD7C() && v43 == v44)
          {
            v9 = MEMORY[0x277CDFA10];
            goto LABEL_8;
          }

          v45 = sub_23D80E4DC();

          if (v45)
          {
            v9 = MEMORY[0x277CDFA10];
          }

          else
          {
            v46 = sub_23D80DD7C();
            v48 = v47;
            if (v46 == sub_23D80DD7C() && v48 == v49)
            {
              v9 = MEMORY[0x277CDF988];
              goto LABEL_8;
            }

            v50 = sub_23D80E4DC();

            if (v50)
            {
              v9 = MEMORY[0x277CDF988];
            }

            else
            {
              v51 = sub_23D80DD7C();
              v53 = v52;
              if (v51 == sub_23D80DD7C() && v53 == v54)
              {
                v9 = MEMORY[0x277CDF998];
                goto LABEL_8;
              }

              v55 = sub_23D80E4DC();

              if (v55)
              {
                v9 = MEMORY[0x277CDF998];
              }

              else
              {
                v56 = sub_23D80DD7C();
                v58 = v57;
                if (v56 == sub_23D80DD7C() && v58 == v59)
                {
                  v9 = MEMORY[0x277CDF9A8];
                  goto LABEL_8;
                }

                v60 = sub_23D80E4DC();

                if (v60)
                {
                  v9 = MEMORY[0x277CDF9A8];
                }

                else
                {
                  v61 = sub_23D80DD7C();
                  v63 = v62;
                  if (v61 == sub_23D80DD7C() && v63 == v64)
                  {
                    v9 = MEMORY[0x277CDF9B8];
                    goto LABEL_8;
                  }

                  v65 = sub_23D80E4DC();

                  if (v65)
                  {
                    v9 = MEMORY[0x277CDF9B8];
                  }

                  else
                  {
                    v66 = sub_23D80DD7C();
                    v68 = v67;
                    v69 = sub_23D80DD7C();
                    v9 = MEMORY[0x277CDF9D0];
                    if (v66 == v69 && v68 == v70)
                    {
                      goto LABEL_8;
                    }

                    v71 = sub_23D80E4DC();

                    if ((v71 & 1) == 0)
                    {
                      v9 = v25;
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

LABEL_9:
  v10 = *v9;
  v11 = sub_23D80DAAC();
  v12 = *(*(v11 - 8) + 104);

  return v12(a2, v10, v11);
}

uint64_t sub_23D7B0C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23D80E4DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23D7B0D0C(uint64_t a1)
{
  v2 = sub_23D7B1F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7B0D48(uint64_t a1)
{
  v2 = sub_23D7B1F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7B0D88()
{
  sub_23D80E58C();
  MEMORY[0x23EEECEB0](0);
  return sub_23D80E5CC();
}

uint64_t sub_23D7B0DF8(uint64_t a1)
{
  sub_23D80E58C();
  MEMORY[0x23EEECEB0](0);
  return sub_23D80E5CC();
}

uint64_t DynamicTypeSize.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E47B8, &qword_23D810EE0);
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = sub_23D80DAAC();
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D7B1F4C();
  sub_23D80E5DC();
  if (!v2)
  {
    v10 = v16;
    v11 = sub_23D80E3FC();
    v12 = v17;
    if (v11 >= 0xC)
    {
      sub_23D7B1FA0();
      swift_allocError();
      swift_willThrow();
      (*(v12 + 8))(v6, v4);
    }

    else
    {
      v13 = qword_278BEA998[v11];
      (*(v17 + 8))(v6, v4);
      (*(v10 + 104))(v9, *v13, v7);
      (*(v10 + 32))(v15, v9, v7);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DynamicTypeSize.encode(to:)(void *a1)
{
  v2 = sub_23D80DAAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E47D0, &unk_23D810EE8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D7B1F4C();
  sub_23D80E5EC();
  (*(v3 + 16))(v5, v12[1], v2);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == *MEMORY[0x277CDF9F8] || v10 == *MEMORY[0x277CDF9E0] || v10 == *MEMORY[0x277CDF9E8] || v10 == *MEMORY[0x277CDF9D8] || v10 == *MEMORY[0x277CDF9F0] || v10 == *MEMORY[0x277CDFA00] || v10 == *MEMORY[0x277CDFA10] || v10 == *MEMORY[0x277CDF988] || v10 == *MEMORY[0x277CDF998] || v10 == *MEMORY[0x277CDF9A8] || v10 == *MEMORY[0x277CDF9B8] || v10 == *MEMORY[0x277CDF9D0])
  {
    sub_23D80E48C();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_23D7B1FA0();
    swift_allocError();
    swift_willThrow();
    (*(v7 + 8))(v9, v6);
    return (*(v3 + 8))(v5, v2);
  }
}

Swift::Double __swiftcall DynamicTypeSize.numerator(forTextStyle:)(UIFontTextStyle forTextStyle)
{
  v2 = v1;
  v3 = sub_23D80DAAC();
  v43 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = sub_23D80DD7C();
  v17 = v16;
  if (v15 == sub_23D80DD7C() && v17 == v18)
  {

    goto LABEL_15;
  }

  v20 = sub_23D80E4DC();

  if (v20)
  {
LABEL_15:
    v31 = v43;
    (*(v43 + 16))(v14, v2, v3);
    v32 = (*(v31 + 88))(v14, v3);
    v33.n128_u64[0] = 19.0;
    if (v32 == *MEMORY[0x277CDF9F8])
    {
      return v33.n128_f64[0];
    }

    v33.n128_u64[0] = 20.0;
    if (v32 == *MEMORY[0x277CDF9E0])
    {
      return v33.n128_f64[0];
    }

    v33.n128_u64[0] = 21.0;
    if (v32 == *MEMORY[0x277CDF9E8])
    {
      return v33.n128_f64[0];
    }

    v33.n128_u64[0] = 22.0;
    if (v32 == *MEMORY[0x277CDF9D8])
    {
      return v33.n128_f64[0];
    }

    v33.n128_u64[0] = 24.0;
    if (v32 == *MEMORY[0x277CDF9F0])
    {
      return v33.n128_f64[0];
    }

    v33.n128_u64[0] = 26.0;
    if (v32 == *MEMORY[0x277CDFA00])
    {
      return v33.n128_f64[0];
    }

    v33.n128_u64[0] = 28.0;
    if (v32 == *MEMORY[0x277CDFA10])
    {
      return v33.n128_f64[0];
    }

    if (v32 == *MEMORY[0x277CDF988])
    {
      goto LABEL_45;
    }

    if (v32 == *MEMORY[0x277CDF998])
    {
      v34 = 0x4043800000000000;
LABEL_69:
      v33.n128_u64[0] = v34;
      return v33.n128_f64[0];
    }

    if (v32 == *MEMORY[0x277CDF9A8])
    {
      goto LABEL_68;
    }

    if (v32 == *MEMORY[0x277CDF9B8])
    {
      v34 = 0x4049000000000000;
      goto LABEL_69;
    }

    if (v32 == *MEMORY[0x277CDF9D0])
    {
      goto LABEL_78;
    }

    goto LABEL_74;
  }

  v21 = sub_23D80DD7C();
  v23 = v22;
  if (v21 == sub_23D80DD7C() && v23 == v24)
  {

    goto LABEL_26;
  }

  v26 = sub_23D80E4DC();

  if (v26)
  {
LABEL_26:
    v31 = v43;
    (*(v43 + 16))(v12, v2, v3);
    v35 = (*(v31 + 88))(v12, v3);
    v33.n128_u64[0] = 31.0;
    if (v35 == *MEMORY[0x277CDF9F8])
    {
      return v33.n128_f64[0];
    }

    if (v35 == *MEMORY[0x277CDF9E0])
    {
      v34 = 0x4040000000000000;
      goto LABEL_69;
    }

    if (v35 == *MEMORY[0x277CDF9E8])
    {
LABEL_30:
      v34 = 0x4040800000000000;
      goto LABEL_69;
    }

    if (v35 == *MEMORY[0x277CDF9D8])
    {
LABEL_45:
      v34 = 0x4041000000000000;
      goto LABEL_69;
    }

    if (v35 == *MEMORY[0x277CDF9F0])
    {
      v34 = 0x4042000000000000;
      goto LABEL_69;
    }

    if (v35 == *MEMORY[0x277CDFA00])
    {
      v34 = 0x4043000000000000;
      goto LABEL_69;
    }

    if (v35 == *MEMORY[0x277CDFA10])
    {
      goto LABEL_63;
    }

    if (v35 == *MEMORY[0x277CDF988])
    {
LABEL_68:
      v34 = 0x4046000000000000;
      goto LABEL_69;
    }

    if (v35 == *MEMORY[0x277CDF998])
    {
      v34 = 0x4048000000000000;
      goto LABEL_69;
    }

    if (v35 == *MEMORY[0x277CDF9A8])
    {
      v34 = 0x404A000000000000;
      goto LABEL_69;
    }

    if (v35 == *MEMORY[0x277CDF9B8])
    {
LABEL_78:
      v34 = 0x404C000000000000;
      goto LABEL_69;
    }

    v14 = v12;
    if (v35 == *MEMORY[0x277CDF9D0])
    {
      v34 = 0x404E000000000000;
      goto LABEL_69;
    }

LABEL_74:
    (*(v31 + 8))(v14, v3, v33);
    v33.n128_u64[0] = 1.0;
    return v33.n128_f64[0];
  }

  v27 = sub_23D80DD7C();
  v29 = v28;
  if (v27 == sub_23D80DD7C() && v29 == v30)
  {
  }

  else
  {
    v36 = sub_23D80E4DC();

    if ((v36 & 1) == 0)
    {
      v40 = v43;
      (*(v43 + 16))(v6, v2, v3);
      v38 = (*(v40 + 88))(v6, v3);
      v33.n128_u64[0] = 14.0;
      if (v38 != *MEMORY[0x277CDF9F8])
      {
        v33.n128_u64[0] = 15.0;
        if (v38 != *MEMORY[0x277CDF9E0])
        {
          v33.n128_u64[0] = 16.0;
          if (v38 != *MEMORY[0x277CDF9E8])
          {
            v33.n128_u64[0] = 17.0;
            if (v38 != *MEMORY[0x277CDF9D8])
            {
              v33.n128_u64[0] = 19.0;
              if (v38 != *MEMORY[0x277CDF9F0])
              {
                v33.n128_u64[0] = 21.0;
                if (v38 != *MEMORY[0x277CDFA00])
                {
                  v33.n128_u64[0] = 23.0;
                  if (v38 != *MEMORY[0x277CDFA10])
                  {
                    v33.n128_u64[0] = 28.0;
                    if (v38 != *MEMORY[0x277CDF988])
                    {
                      if (v38 != *MEMORY[0x277CDF998])
                      {
                        if (v38 != *MEMORY[0x277CDF9A8])
                        {
                          if (v38 != *MEMORY[0x277CDF9B8])
                          {
                            v39 = *MEMORY[0x277CDF9D0];
                            v14 = v6;
LABEL_82:
                            v31 = v43;
                            if (v38 == v39)
                            {
                              v34 = 0x404A800000000000;
                              goto LABEL_69;
                            }

                            goto LABEL_74;
                          }

                          goto LABEL_57;
                        }

LABEL_63:
                        v34 = 0x4044000000000000;
                        goto LABEL_69;
                      }

                      goto LABEL_30;
                    }
                  }
                }
              }
            }
          }
        }
      }

      return v33.n128_f64[0];
    }
  }

  v37 = v43;
  (*(v43 + 16))(v9, v2, v3);
  v38 = (*(v37 + 88))(v9, v3);
  v33.n128_u64[0] = 14.0;
  if (v38 != *MEMORY[0x277CDF9F8])
  {
    v33.n128_u64[0] = 15.0;
    if (v38 != *MEMORY[0x277CDF9E0])
    {
      v33.n128_u64[0] = 16.0;
      if (v38 != *MEMORY[0x277CDF9E8])
      {
        v33.n128_u64[0] = 17.0;
        if (v38 != *MEMORY[0x277CDF9D8])
        {
          v33.n128_u64[0] = 19.0;
          if (v38 != *MEMORY[0x277CDF9F0])
          {
            v33.n128_u64[0] = 21.0;
            if (v38 != *MEMORY[0x277CDFA00])
            {
              v33.n128_u64[0] = 23.0;
              if (v38 != *MEMORY[0x277CDFA10])
              {
                v33.n128_u64[0] = 28.0;
                if (v38 != *MEMORY[0x277CDF988])
                {
                  if (v38 != *MEMORY[0x277CDF998])
                  {
                    if (v38 != *MEMORY[0x277CDF9A8])
                    {
                      if (v38 != *MEMORY[0x277CDF9B8])
                      {
                        v39 = *MEMORY[0x277CDF9D0];
                        v14 = v9;
                        goto LABEL_82;
                      }

LABEL_57:
                      v34 = 0x4047800000000000;
                      goto LABEL_69;
                    }

                    goto LABEL_63;
                  }

                  goto LABEL_30;
                }
              }
            }
          }
        }
      }
    }
  }

  return v33.n128_f64[0];
}

double DynamicTypeSize.scaledSpacing(_:)(double a1)
{
  v2 = v1;
  v4 = sub_23D80DAAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != *MEMORY[0x277CDF9F8] && v8 != *MEMORY[0x277CDF9E0] && v8 != *MEMORY[0x277CDF9E8] && v8 != *MEMORY[0x277CDF9D8])
  {
    if (v8 == *MEMORY[0x277CDF9F0] || v8 == *MEMORY[0x277CDFA00])
    {
      v13 = 1.3;
    }

    else if (v8 == *MEMORY[0x277CDFA10])
    {
      v13 = 1.5;
    }

    else
    {
      if (v8 == *MEMORY[0x277CDF988])
      {
        v14 = 0x3FFB333333333333;
      }

      else if (v8 == *MEMORY[0x277CDF998])
      {
        v14 = 0x3FFE666666666666;
      }

      else
      {
        if (v8 == *MEMORY[0x277CDF9A8])
        {
          v13 = 2.1;
          return a1 * v13;
        }

        if (v8 != *MEMORY[0x277CDF9B8])
        {
          if (v8 != *MEMORY[0x277CDF9D0])
          {
            a1 = a1 + a1;
            (*(v5 + 8))(v7, v4);
            return a1;
          }

          v13 = 2.7;
          return a1 * v13;
        }

        v14 = 0x4003333333333333;
      }

      v13 = *&v14;
    }

    return a1 * v13;
  }

  return a1;
}

unint64_t sub_23D7B1F4C()
{
  result = qword_27E2E47C0;
  if (!qword_27E2E47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47C0);
  }

  return result;
}

unint64_t sub_23D7B1FA0()
{
  result = qword_27E2E47C8;
  if (!qword_27E2E47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXRPlaybackSpeed.CustomCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AXRPlaybackSpeed.CustomCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_23D7B20F8()
{
  result = qword_27E2E47D8;
  if (!qword_27E2E47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47D8);
  }

  return result;
}

unint64_t sub_23D7B2150()
{
  result = qword_27E2E47E0;
  if (!qword_27E2E47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47E0);
  }

  return result;
}

unint64_t sub_23D7B21A8()
{
  result = qword_27E2E47E8;
  if (!qword_27E2E47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47E8);
  }

  return result;
}

unint64_t sub_23D7B2200()
{
  result = qword_27E2E47F0;
  if (!qword_27E2E47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47F0);
  }

  return result;
}

uint64_t sub_23D7B2268(uint64_t a1, unsigned __int8 a2)
{
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

AccessibilityReaderData::AXRFormatterTheme_optional __swiftcall AXRFormatterTheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D80E36C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AXRFormatterTheme.description.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v3 = 1802658148;
      goto LABEL_25;
    }

    if (v1 == 1)
    {
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v2 = 0x6465636E616C6162;
    }

    else
    {
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v2 = 0x68742E65736F6F6CLL;
    }
  }

  else
  {
    if (*v0 <= 4u)
    {
      if (v1 == 3)
      {
        if (qword_27E2E4228 != -1)
        {
          swift_once();
        }

        v2 = 0x68742E746867696CLL;
        goto LABEL_30;
      }

      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v3 = 1684828002;
LABEL_25:
      v2 = v3 | 0x6568742E00000000;
      if (qword_27E2E4610)
      {
        goto LABEL_31;
      }

      return v2;
    }

    if (v1 == 5)
    {
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v3 = 1802465122;
      goto LABEL_25;
    }

    if (qword_27E2E4228 != -1)
    {
      swift_once();
    }

    v2 = 0x742E6D6F74737563;
  }

LABEL_30:
  if (qword_27E2E4610)
  {
LABEL_31:
    v4 = qword_27E2E4610;
    v5 = sub_23D80DD4C();
    v6 = sub_23D80DD4C();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v2 = sub_23D80DD7C();
  }

  return v2;
}

uint64_t AXRFormatterTheme.textColor.getter()
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = sub_23D80DBBC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D80D4CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      return sub_23D80DC1C();
    }

    v11 = 0x384535463846;
  }

  else if (*v0 > 4u)
  {
    result = 0;
    if (v9 != 5)
    {
      return result;
    }

    v11 = 0x313342333134;
  }

  else
  {
    if (v9 == 3)
    {
      return sub_23D80DBFC();
    }

    v11 = 0x453243324332;
  }

  v19 = v11;
  v20 = 0xE600000000000000;
  sub_23D80D4AC();
  sub_23D7904FC();
  v12 = sub_23D80E1AC();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v19 = v12;
  v20 = v14;
  v18[3] = 35;
  v18[4] = 0xE100000000000000;
  v18[1] = 0;
  v18[2] = 0xE000000000000000;
  sub_23D80E1BC();

  v19 = 0;
  v15 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v16 = sub_23D80DD4C();

  v17 = [v15 initWithString_];

  [v17 scanHexLongLong_];
  (*(v2 + 104))(v4, *MEMORY[0x277CE0EE0], v1);
  return sub_23D80DC4C();
}

uint64_t AXRFormatterTheme.color.getter()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = sub_23D80DBBC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D80D4CC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  if (v10 <= 2)
  {
    if (v10 != 1)
    {
      return sub_23D80DBFC();
    }

    v12 = 0x453243324332;
LABEL_9:
    v23 = v12;
    v24 = 0xE600000000000000;
    v14 = v7;
    sub_23D80D4AC();
    sub_23D7904FC();
    v15 = sub_23D80E1AC();
    v17 = v16;
    (*(v6 + 8))(v9, v14);
    v23 = v15;
    v24 = v17;
    v22[3] = 35;
    v22[4] = 0xE100000000000000;
    v22[1] = 0;
    v22[2] = 0xE000000000000000;
    sub_23D80E1BC();

    v23 = 0;
    v18 = objc_allocWithZone(MEMORY[0x277CCAC80]);
    v19 = sub_23D80DD4C();

    v20 = [v18 initWithString_];

    [v20 scanHexLongLong_];
    (*(v2 + 104))(v4, *MEMORY[0x277CE0EE0], v1);
    return sub_23D80DC4C();
  }

  if (*v0 <= 4u)
  {
    return sub_23D80DC1C();
  }

  v13 = 0;
  if (v10 == 5)
  {
    v12 = 0x384535463846;
    goto LABEL_9;
  }

  return v13;
}

uint64_t AXRFormatterTheme.linkColor.getter()
{
  v0 = [objc_opt_self() systemBlueColor];

  return MEMORY[0x28212FFA8](v0);
}

uint64_t AXRFormatterTheme.id.getter()
{
  v1 = *v0;
  v2 = 1802658148;
  v3 = 1802465122;
  if (v1 != 5)
  {
    v3 = 0x6D6F74737563;
  }

  v4 = 0x746867696CLL;
  if (v1 != 3)
  {
    v4 = 1684828002;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6465636E616C6162;
  if (v1 != 1)
  {
    v5 = 0x65736F6F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23D7B2EA4()
{
  result = qword_27E2E47F8;
  if (!qword_27E2E47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E47F8);
  }

  return result;
}

uint64_t sub_23D7B2F04(uint64_t a1)
{
  sub_23D80DDAC();
}

unint64_t sub_23D7B300C()
{
  result = qword_27E2E4800;
  if (!qword_27E2E4800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4808, &qword_23D8111D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4800);
  }

  return result;
}

void sub_23D7B3080(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1802658148;
  v5 = 0xE400000000000000;
  v6 = 1802465122;
  if (v2 != 5)
  {
    v6 = 0x6D6F74737563;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (v2 != 3)
  {
    v8 = 1684828002;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6465636E616C6162;
  if (v2 != 1)
  {
    v10 = 0x65736F6F6CLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for AXRFormatterTheme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXRFormatterTheme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D7B333C()
{
  result = qword_27E2E4810;
  if (!qword_27E2E4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4810);
  }

  return result;
}

uint64_t AXRArticle.init(appName:bundleID:content:title:date:isLandingPage:isLoading:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11)
{
  sub_23D80D66C();
  v19 = type metadata accessor for AXRArticle(0);
  v20 = (a9 + v19[5]);
  *v20 = a1;
  v20[1] = a2;
  v21 = (a9 + v19[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + v19[7]);
  *v22 = a6;
  v22[1] = a7;
  *(a9 + v19[8]) = a5;
  result = sub_23D7B34BC(a8, a9 + v19[9]);
  *(a9 + v19[10]) = a10;
  *(a9 + v19[11]) = a11;
  return result;
}

uint64_t type metadata accessor for AXRArticle(uint64_t a1)
{
  result = qword_27E2E4888;
  if (!qword_27E2E4888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D7B34BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AXRArticle.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D80D67C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AXRArticle.appName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXRArticle(0) + 20));

  return v1;
}

uint64_t AXRArticle.bundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXRArticle(0) + 24));

  return v1;
}

uint64_t AXRArticle.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXRArticle(0) + 28));

  return v1;
}

double AXRArticle.content.getter()
{
  type metadata accessor for AXRArticle(0);

  return result;
}

uint64_t AXRArticle.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AXRArticle(0) + 36);

  return sub_23D7B36CC(v3, a1);
}

uint64_t sub_23D7B36CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AXRArticle.hash(into:)(uint64_t a1)
{
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4820, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_23D80DD0C();
}

uint64_t sub_23D7B380C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E69646E614C7369;
  if (v1 != 6)
  {
    v3 = 0x6E6964616F4C7369;
  }

  v4 = 0x746E65746E6F63;
  if (v1 != 4)
  {
    v4 = 1702125924;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4449656C646E7562;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 0x656D614E707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23D7B3900@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23D7B4EA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23D7B3934(uint64_t a1)
{
  v2 = sub_23D7B3D28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7B3970(uint64_t a1)
{
  v2 = sub_23D7B3D28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AXRArticle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4828, &qword_23D8112E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D7B3D28();
  sub_23D80E5EC();
  LOBYTE(v12) = 0;
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4838, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_23D80E49C();
  if (!v2)
  {
    v9 = type metadata accessor for AXRArticle(0);
    LOBYTE(v12) = 1;
    sub_23D80E44C();
    LOBYTE(v12) = 2;
    sub_23D80E44C();
    LOBYTE(v12) = 3;
    sub_23D80E44C();
    v12 = *(v3 + *(v9 + 32));
    v11[7] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4558, &qword_23D8112F0);
    sub_23D7B4744(&qword_27E2E4840, &qword_27E2E4848, &protocol conformance descriptor for AXRTextContent, MEMORY[0x277D83948]);
    sub_23D80E49C();
    LOBYTE(v12) = 5;
    sub_23D80D63C();
    sub_23D7B4930(&qword_27E2E4850, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_23D80E43C();
    LOBYTE(v12) = 6;
    sub_23D80E45C();
    LOBYTE(v12) = 7;
    sub_23D80E45C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23D7B3D28()
{
  result = qword_27E2E4830;
  if (!qword_27E2E4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4830);
  }

  return result;
}

uint64_t AXRArticle.hashValue.getter()
{
  sub_23D80E58C();
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4820, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t AXRArticle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_23D80D67C();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4858, &qword_23D8112F8);
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v32 - v8;
  v10 = type metadata accessor for AXRArticle(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D7B3D28();
  v38 = v9;
  v13 = v40;
  sub_23D80E5DC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v5;
  v14 = v36;
  v40 = v12;
  LOBYTE(v42) = 0;
  sub_23D7B4930(&qword_27E2E4860, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v15 = v37;
  sub_23D80E40C();
  v16 = v40;
  (*(v35 + 32))(v40, v15, v6);
  LOBYTE(v42) = 1;
  v17 = sub_23D80E3BC();
  v32 = v6;
  v18 = &v16[v10[5]];
  *v18 = v17;
  v18[1] = v19;
  LOBYTE(v42) = 2;
  v37 = 0;
  v20 = sub_23D80E3BC();
  v21 = v14;
  v22 = &v16[v10[6]];
  *v22 = v20;
  v22[1] = v23;
  LOBYTE(v42) = 3;
  v24 = sub_23D80E3BC();
  v25 = &v16[v10[7]];
  *v25 = v24;
  v25[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4558, &qword_23D8112F0);
  v41 = 4;
  sub_23D7B4744(&qword_27E2E4868, &qword_27E2E4870, &protocol conformance descriptor for AXRTextContent, MEMORY[0x277D83978]);
  sub_23D80E40C();
  *&v16[v10[8]] = v42;
  sub_23D80D63C();
  LOBYTE(v42) = 5;
  sub_23D7B4930(&qword_27E2E4878, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v27 = v33;
  sub_23D80E3AC();
  sub_23D7B34BC(v27, &v16[v10[9]]);
  LOBYTE(v42) = 6;
  v16[v10[10]] = sub_23D80E3CC() & 1;
  LOBYTE(v42) = 7;
  v28 = sub_23D80E3CC();
  (*(v21 + 8))(v38, v39);
  v29 = v28 & 1;
  v30 = v40;
  v40[v10[11]] = v29;
  sub_23D7B47E0(v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23D7B4844(v30);
}

uint64_t sub_23D7B44B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D80D67C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23D7B454C()
{
  sub_23D80E58C();
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4820, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D7B45D4(uint64_t a1)
{
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4820, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_23D80DD0C();
}

uint64_t sub_23D7B4658(uint64_t a1)
{
  sub_23D80E58C();
  sub_23D80D67C();
  sub_23D7B4930(&qword_27E2E4820, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D7B46DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D7B4744(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4558, &qword_23D8112F0);
    sub_23D7B4930(a2, type metadata accessor for AXRTextContent, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D7B47E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRArticle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7B4844(uint64_t a1)
{
  v2 = type metadata accessor for AXRArticle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D7B4930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D7B4990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D80D67C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23D7B4AD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23D80D67C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4818, &qword_23D8112E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_23D7B4C0C(uint64_t a1)
{
  sub_23D80D67C();
  if (v1 <= 0x3F)
  {
    sub_23D7B4D24(319, &qword_27E2E4898, type metadata accessor for AXRTextContent, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23D7B4D24(319, &qword_27E2E48A0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D7B4D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_23D7B4D9C()
{
  result = qword_27E2E48A8;
  if (!qword_27E2E48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48A8);
  }

  return result;
}

unint64_t sub_23D7B4DF4()
{
  result = qword_27E2E48B0;
  if (!qword_27E2E48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48B0);
  }

  return result;
}

unint64_t sub_23D7B4E4C()
{
  result = qword_27E2E48B8;
  if (!qword_27E2E48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48B8);
  }

  return result;
}

uint64_t sub_23D7B4EA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23D80E4DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E69646E614C7369 && a2 == 0xED00006567615067 || (sub_23D80E4DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6964616F4C7369 && a2 == 0xE900000000000067)
  {

    return 7;
  }

  else
  {
    v6 = sub_23D80E4DC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t EnvironmentValues.axRuntimeClient.getter()
{
  sub_23D7B5174();
  sub_23D80DB2C();
  return v1;
}

unint64_t sub_23D7B5174()
{
  result = qword_27E2E48C0;
  if (!qword_27E2E48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48C0);
  }

  return result;
}

uint64_t sub_23D7B51C8(id *a1)
{
  v1 = *a1;
  sub_23D7B5174();
  v2 = v1;
  return sub_23D80DB3C();
}

void (*EnvironmentValues.axRuntimeClient.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_23D7B5174();
  sub_23D80DB2C();
  return sub_23D7B52C0;
}

void sub_23D7B52C0(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_23D80DB3C();
    v5 = *a1;
  }

  else
  {
    sub_23D80DB3C();
  }
}

void *sub_23D7B5354@<X0>(void *a1@<X8>)
{
  sub_23D7B5174();
  result = sub_23D80DB2C();
  *a1 = v3;
  return result;
}

uint64_t sub_23D7B53C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23D7B5424();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_23D7B5424()
{
  result = qword_27E2E48C8;
  if (!qword_27E2E48C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E48D0, &unk_23D8115C0);
    sub_23D7B54A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48C8);
  }

  return result;
}

unint64_t sub_23D7B54A8()
{
  result = qword_27E2E48D8;
  if (!qword_27E2E48D8)
  {
    type metadata accessor for AXRuntimeClient(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E48D8);
  }

  return result;
}

AccessibilityReaderData::AXRSpeechState_optional __swiftcall AXRSpeechState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D80E36C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AXRSpeechState.rawValue.getter()
{
  v1 = 0x676E696B61657073;
  v2 = 0x64656C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x64656873696E6966;
  }

  if (*v0)
  {
    v1 = 0x646573756170;
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

uint64_t sub_23D7B55E0()
{
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D7B56A0(uint64_t a1)
{
  sub_23D80DDAC();
}

uint64_t sub_23D7B574C(uint64_t a1)
{
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

void sub_23D7B5814(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x676E696B61657073;
  v4 = 0x64656C65636E6163;
  if (*v1 != 2)
  {
    v4 = 0x64656873696E6966;
  }

  if (*v1)
  {
    v3 = 0x646573756170;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

AccessibilityReaderData::AXRIndexPathIndex_optional __swiftcall AXRIndexPathIndex.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}