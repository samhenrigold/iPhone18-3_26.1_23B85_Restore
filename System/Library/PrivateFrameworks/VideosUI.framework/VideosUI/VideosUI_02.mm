uint64_t *sub_1E32737D4()
{
  if (qword_1EE2992F0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AAC60;
}

uint64_t sub_1E3273824()
{
  type metadata accessor for BarItemSelectionManager();
  result = swift_initStaticObject();
  qword_1EE2AAC60 = result;
  return result;
}

uint64_t *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0()
{
  if (qword_1EE298520 != -1)
  {
    OUTLINED_FUNCTION_14_100(&qword_1EE298520);
  }

  return &qword_1EE2AAC20;
}

id sub_1E3273AE4()
{
  result = [objc_allocWithZone(type metadata accessor for UnifiedMessagingManager(0)) init];
  qword_1EE2AAC20 = result;
  return result;
}

uint64_t type metadata accessor for UnifiedMessagingManager(uint64_t a1)
{
  result = qword_1EE298510;
  if (!qword_1EE298510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3273B64(uint64_t a1)
{
  sub_1E3273C28(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3273C28(uint64_t a1)
{
  if (!qword_1EE28A450)
  {
    sub_1E41FE5D4();
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE28A450);
    }
  }
}

void sub_1E3273CA4()
{
  OUTLINED_FUNCTION_31_1();
  ObjectType = swift_getObjectType();
  sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v60 = v3;
  v61 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v59 = v5 - v4;
  OUTLINED_FUNCTION_138();
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_138();
  v7 = sub_1E4203FF4();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v56 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  v11 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v15 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_engagement;
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_engagement] = 0;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_amsURLParser] = 0;
  v20 = &v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_lastTabIdentifier];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_placementIdMessageMap] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_requestIdMessageMap] = v21;
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController] = 0;
  v22 = sub_1E4206BA4();
  v23 = VUISignpostLogObject(v22);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v58 = *(v13 + 8);
  v58(v1, v11);
  v57 = objc_opt_self();
  v24 = [v57 vui_defaultBag];
  if (v24)
  {
    v25 = v24;
    v26 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];

    v27 = *&v0[v15];
    *&v0[v15] = v26;
  }

  else
  {
    sub_1E324FBDC();
    v28 = OUTLINED_FUNCTION_101();
    v29(v28);
    v30 = sub_1E41FFC94();
    v31 = sub_1E42067F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_125_0();
      *v32 = 0;
      _os_log_impl(&dword_1E323F000, v30, v31, "UnifiedMessagingManager::Failed to load AMS bag", v32, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v33 = OUTLINED_FUNCTION_16_0();
    v34(v33);
  }

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  sub_1E4203FE4();
  v64 = MEMORY[0x1E69E7CC0];
  sub_1E3274B40(&qword_1EE23B1F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v35 = OUTLINED_FUNCTION_97_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v37, v38, &qword_1E429D100, v39);
  sub_1E42072E4();
  (*(v60 + 104))(v59, *MEMORY[0x1E69E8090], v61);
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_accessQueue] = sub_1E4206A44();
  v63.receiver = v0;
  v63.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v63, sel_init);
  v41 = objc_opt_self();
  v42 = v40;
  if (([v41 isRunningInTVExtension] & 1) == 0)
  {
    sub_1E32753D0();
  }

  v43 = [v57 vui_defaultBag];
  if (v43)
  {
    v44 = v43;
    v45 = [objc_allocWithZone(MEMORY[0x1E698CB70]) &selRef:v43 initWithCanonicalID:?];

    v46 = *&v42[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_amsURLParser];
    *&v42[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_amsURLParser] = v45;
  }

  sub_1E32737D4();

  v47 = sub_1E32774E4();
  v49 = v48;

  v50 = &v42[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_lastTabIdentifier];
  *v50 = v47;
  v50[1] = v49;

  v51 = objc_opt_self();
  v52 = [v51 defaultCenter];
  [v52 addObserver:v42 selector:sel_handleDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

  v53 = [v51 defaultCenter];
  [v53 addObserver:v42 selector:sel_handleTabBarChange_ name:@"TVAppRootViewControllerCurrentNavigationControllerDidChangeNotification" object:0];

  v54 = sub_1E4206B94();
  v55 = VUISignpostLogObject(v54);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v58(v1, v11);
  OUTLINED_FUNCTION_25_2();
}

BOOL OUTLINED_FUNCTION_56_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_136_1()
{

  return sub_1E3F9F164((v2 - 168), v1, v0 + 8);
}

uint64_t OUTLINED_FUNCTION_136_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4148C68(v3, a3, v4 - 208);
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t a1)
{

  return sub_1E325F69C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_52_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_52_8()
{
  *(v0 + 32) = **(v1 - 288);

  return sub_1E37DFBC0(v1 - 96);
}

uint64_t OUTLINED_FUNCTION_52_13()
{
  *(v1 - 400) = *(v1 - 248);
  *(v1 - 396) = *(v1 - 256);
  *(v1 - 392) = *(v1 - 264);
  return v0;
}

uint64_t OUTLINED_FUNCTION_52_16()
{

  return sub_1E37E94CC(v1, v0 + 112);
}

uint64_t OUTLINED_FUNCTION_52_17(void *a1)
{

  return sub_1E3F9F164(a1, v1, v2 + 8);
}

void OUTLINED_FUNCTION_48_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_52_18(uint64_t a1)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_52_19()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_52_20()
{

  return sub_1E4207384();
}

uint64_t OUTLINED_FUNCTION_42_8()
{

  return sub_1E4203FF4();
}

uint64_t OUTLINED_FUNCTION_52_22()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

BOOL OUTLINED_FUNCTION_20_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_23(uint64_t a1)
{

  return sub_1E325F69C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_52_24(uint64_t a1)
{

  return swift_weakInit();
}

BOOL OUTLINED_FUNCTION_52_25(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_26(uint64_t a1)
{

  return sub_1E4207644();
}

void OUTLINED_FUNCTION_52_32()
{
  v0 = STACK[0x288];
  STACK[0x250] = STACK[0x280];
  LOBYTE(STACK[0x258]) = v0;
}

uint64_t OUTLINED_FUNCTION_52_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{

  return sub_1E38DCD14(a7, a13);
}

uint64_t OUTLINED_FUNCTION_52_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_52_42@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  *(v3 - 124) = a2;
  *(v3 - 152) = a1;
  *(v3 - 120) = a3;

  return sub_1E4200C74();
}

uint64_t OUTLINED_FUNCTION_52_46(uint64_t a1)
{

  return sub_1E4202D94();
}

uint64_t OUTLINED_FUNCTION_52_49()
{
  *(v1 - 40) = *(v0 + 248);
}

uint64_t OUTLINED_FUNCTION_52_53()
{

  return sub_1E4206734();
}

uint64_t sub_1E3274998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E32749E0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3274A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3274A6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3274AB4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3274AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3274B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3274B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3274BD0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3274C14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3274C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3274CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3274CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_54_2(uint64_t a1, uint64_t a2)
{

  return sub_1E4202C44();
}

double OUTLINED_FUNCTION_54_3@<D0>(const void *a4@<X2>, _OWORD *a6@<X4>, uint64_t x7_0@<X7>, uint64_t x8_0@<X8>)
{

  *&result = sub_1E383C8FC(v10, v9, a4, v8, a6, 0, 1, x7_0, x8_0, v12).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1E41FFB84();
}

uint64_t OUTLINED_FUNCTION_54_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;
  return a1 + v3;
}

id OUTLINED_FUNCTION_54_7(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_54_9()
{

  return sub_1E4200744();
}

uint64_t OUTLINED_FUNCTION_54_10()
{

  return sub_1E3C3DE00();
}

void OUTLINED_FUNCTION_44_9(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_54_11()
{
  *(v0 - 352) = *(v0 - 128);

  return sub_1E42038F4();
}

id OUTLINED_FUNCTION_54_15()
{
  v3 = *(v1 + 2336);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_183(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_54_18()
{
}

uint64_t OUTLINED_FUNCTION_54_19()
{

  return sub_1E4149AF0(v1, v0 + 472);
}

unint64_t OUTLINED_FUNCTION_54_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1E3270FC8(v9, v8, va);
}

uint64_t OUTLINED_FUNCTION_54_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
}

uint64_t OUTLINED_FUNCTION_54_26(uint64_t a1)
{

  return sub_1E4207644();
}

void OUTLINED_FUNCTION_54_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_54_28(double a1, double a2, double a3, double a4)
{
  *&STACK[0x370] = a1;
  *&STACK[0x378] = a2;
  *&STACK[0x380] = a3;
  *&STACK[0x388] = a4;
  LOBYTE(STACK[0x390]) = 0;
}

uint64_t OUTLINED_FUNCTION_54_29()
{

  return sub_1E3743538(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_54_32()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_54_33()
{
}

void OUTLINED_FUNCTION_54_37()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_54_38(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4205CB4();
}

unint64_t OUTLINED_FUNCTION_54_40(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 136));
}

uint64_t OUTLINED_FUNCTION_54_45(uint64_t a1)
{

  return sub_1E4200634();
}

uint64_t OUTLINED_FUNCTION_54_46(uint64_t a1, uint64_t a2)
{

  return sub_1E4206124();
}

uint64_t OUTLINED_FUNCTION_54_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_54_58@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 216) = &a2 - a1;

  return sub_1E4201044();
}

uint64_t sub_1E32752B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E32753D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_engagement);
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_60_17();
    v3 = sub_1E4205ED4();
    [v2 addObserver:v0 placement:0 serviceType:v3];
  }
}

uint64_t type metadata accessor for MetricsJetEngine(uint64_t a1)
{
  result = qword_1EE2A2CC0;
  if (!qword_1EE2A2CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3275590(uint64_t a1)
{
  result = sub_1E42045D4();
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

id sub_1E3275720()
{
  result = [objc_allocWithZone(type metadata accessor for MetricsJetEngine(0)) init];
  static MetricsJetEngine.shared = result;
  return result;
}

void sub_1E3275778()
{
  OUTLINED_FUNCTION_31_1();
  v73 = v0;
  v75 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v72 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v4 - v3);
  v67 = sub_1E42045D4();
  OUTLINED_FUNCTION_0_10();
  v66 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v8 - v7);
  v68 = sub_1E42045A4();
  OUTLINED_FUNCTION_0_10();
  v62 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v61 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20(&v60 - v14);
  v15 = sub_1E4204C64();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v25 = [objc_opt_self() vui_defaultBag];
  if (v25)
  {
    v63 = v25;
    sub_1E4204C54();
    v26 = sub_1E4204924();
    v71 = v17;
    v27 = *(v17 + 16);
    v27(v21, v24, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
    inited = swift_initStackObject();
    v60 = xmmword_1E4297BE0;
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v29;
    v30 = sub_1E32772D8(inited);
    v31 = MEMORY[0x1E690F260](v21, 0, 0xE000000000000000, v30);
    v32 = OBJC_IVAR___VUIMetricsJetEngine_recorder;
    v33 = v73;
    *&v73[OBJC_IVAR___VUIMetricsJetEngine_recorder] = v31;
    v69 = v24;
    v74 = v15;
    v34 = (v27)(v21, v24, v15);
    v78 = &type metadata for VUIMetricsEventLinter;
    v79 = sub_1E32776F8(v34, v35, v36);
    v37 = swift_initStackObject();
    *(v37 + 16) = v60;
    *(v37 + 32) = sub_1E4205F14();
    *(v37 + 40) = v38;
    sub_1E32772D8(v37);
    v39 = v61;
    sub_1E4204594();
    v40 = *&v33[v32];
    v78 = v26;
    v79 = MEMORY[0x1E69AB370];
    v77[0] = v40;

    v41 = v65;
    sub_1E4204584();
    v42 = v62;
    v43 = v68;
    *&v60 = *(v62 + 8);
    (v60)(v39, v68);
    __swift_destroy_boxed_opaque_existential_1(v77);
    (*(v42 + 16))(v39, v41, v43);
    v44 = v64;
    sub_1E42045B4();
    v45 = OBJC_IVAR___VUIMetricsJetEngine_sharedPipeline;
    v46 = v66;
    v47 = v67;
    (*(v66 + 32))(&v33[OBJC_IVAR___VUIMetricsJetEngine_sharedPipeline], v44, v67);
    swift_beginAccess();
    (*(v46 + 16))(v44, &v33[v45], v47);
    v48 = sub_1E4204574();
    (*(v46 + 8))(v44, v47);
    *&v33[OBJC_IVAR___VUIMetricsJetEngine_wrappedPipeline] = v48;
    v49 = sub_1E324FBDC();
    v50 = v72;
    v51 = v70;
    v52 = v75;
    (*(v72 + 16))(v70, v49, v75);
    v53 = sub_1E41FFC94();
    v54 = sub_1E42067E4();
    v55 = v41;
    if (os_log_type_enabled(v53, v54))
    {
      v56 = v43;
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1E323F000, v53, v54, "MetricsJetEngine: created Jet pipeline", v57, 2u);
      v58 = v57;
      v43 = v56;
      MEMORY[0x1E69143B0](v58, -1, -1);
    }

    (*(v50 + 8))(v51, v52);
    v59 = type metadata accessor for MetricsJetEngine(0);
    v76.receiver = v33;
    v76.super_class = v59;
    objc_msgSendSuper2(&v76, sel_init);

    (v60)(v55, v43);
    (*(v71 + 8))(v69, v74);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E42076B4();
    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_19_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  a9 = a1;

  return sub_1E41E1A64(&a9, v10, v9, va);
}

uint64_t OUTLINED_FUNCTION_19_12()
{

  return sub_1E3294EE4(v0 + 1232, v0 + 2240, v1, v2);
}

uint64_t OUTLINED_FUNCTION_19_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 56) + 32 * a1;

  return sub_1E328438C(v11, &a9);
}

char *OUTLINED_FUNCTION_19_16@<X0>(unint64_t a1@<X8>)
{

  return sub_1E3793B98((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_19_18()
{
  *(v0 + v2) = v1;
}

uint64_t OUTLINED_FUNCTION_19_19(uint64_t a1, ...)
{

  return sub_1E4200684();
}

uint64_t OUTLINED_FUNCTION_32_11(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_44_10(uint64_t a1)
{

  return sub_1E42079A4();
}

id OUTLINED_FUNCTION_19_23()
{

  return [v0 (v1 + 2808)];
}

unint64_t OUTLINED_FUNCTION_19_24()
{

  return sub_1E34AF4E4(v0, (v1 & 0xC000000000000001) == 0, v1);
}

char *OUTLINED_FUNCTION_19_27(char *a1)
{

  return sub_1E3887DC4(a1, v1, 1);
}

void OUTLINED_FUNCTION_19_30(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 0xCu);
}

uint64_t OUTLINED_FUNCTION_19_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_19_33()
{
}

id OUTLINED_FUNCTION_19_35()
{

  return v0;
}

id OUTLINED_FUNCTION_19_36(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_19_37()
{

  return sub_1E42076B4();
}

uint64_t OUTLINED_FUNCTION_19_38()
{
  v2 = STACK[0x2E0];
  v3 = v1[37];
  v1[33] = v1[36];
  v1[34] = v3;
  LOBYTE(STACK[0x2B0]) = v2;
  return v0;
}

id OUTLINED_FUNCTION_19_45()
{

  return [v1 (v0 + 3941)];
}

char *OUTLINED_FUNCTION_19_47()
{
  v2 = *(v0 + 16) + 1;

  return sub_1E3997AA8(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_19_48(uint64_t a1, uint64_t a2)
{

  return sub_1E42062F4();
}

uint64_t OUTLINED_FUNCTION_19_55(uint64_t result, __n128 a2)
{
  *(result + 72) = a2;
  *(result + 88) = v2;
  *(result + 96) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_57(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 + 320);

  return sub_1E3294EE4(v6, v4 + 792, a3, a4);
}

uint64_t OUTLINED_FUNCTION_19_58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695C018];

  return sub_1E32752B0(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_19_59()
{

  sub_1E3A9CE94(v1, v2, v0);
}

CGFloat OUTLINED_FUNCTION_19_63()
{
  v5 = v3;
  v6 = v1;
  v7 = v4;
  v8 = v2;

  return CGRectGetMinY(*&v5);
}

double OUTLINED_FUNCTION_19_64()
{
  *&STACK[0x200] = 0u;
  LOBYTE(STACK[0x210]) = v0;

  return j__OUTLINED_FUNCTION_7_78(COERCE_UNSIGNED_INT64(6.0));
}

double OUTLINED_FUNCTION_19_65()
{
  v4 = v0[2];
  v5 = v0[6];
  v6 = v0[5];

  return sub_1E3908FA0(v4, v2, v5, v6, v1);
}

void OUTLINED_FUNCTION_19_66(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E6981948];

  sub_1E3B17A3C(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_19_67(uint64_t a1)
{

  return sub_1E4205DF4();
}

uint64_t OUTLINED_FUNCTION_19_72(uint64_t result)
{
  *(v2 + v3) = result;
  *(v2 + v1[1]) = 0;
  *(v2 + v1[2]) = 0;
  *(v2 + v1[3]) = 0;
  *(v2 + v1[4]) = 0;
  return result;
}

void OUTLINED_FUNCTION_19_74()
{

  sub_1E3BAB4FC(0, 0);
}

uint64_t OUTLINED_FUNCTION_19_77(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

id OUTLINED_FUNCTION_19_81(id a1, SEL a2)
{

  return [a1 a2];
}

_OWORD *OUTLINED_FUNCTION_19_85(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_1E32A87C0(a1, v4, v5, a4);
}

void OUTLINED_FUNCTION_19_86(uint64_t a1@<X8>)
{
  v3 = *(v2 - 336);
  *(a1 - 32) = *(v2 - 328);
  *(a1 - 24) = v3;
  *(a1 - 16) = v1;
}

uint64_t OUTLINED_FUNCTION_19_87()
{

  return sub_1E4205F14();
}

void OUTLINED_FUNCTION_19_89()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_19_91(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return TVAppFeature.isEnabled.getter(10, a2, a3);
}

void OUTLINED_FUNCTION_19_93()
{
  v0 = STACK[0x408];
  STACK[0x2E0] = STACK[0x400];
  LOBYTE(STACK[0x2E8]) = v0;
}

id OUTLINED_FUNCTION_19_94()
{

  return LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(v0, v1, 0, v2, v3);
}

void OUTLINED_FUNCTION_19_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  sub_1E3C2FCB8(&STACK[0x230], &a37, &a17, &a65, &a63, &a55, v65, v66 - 248);
}

double OUTLINED_FUNCTION_19_97(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{

  return sub_1E3277E60(a1, a2, v19, &a19);
}

void OUTLINED_FUNCTION_25_12(uint64_t a1@<X0>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);

  sub_1E3C2FCB8(a1, &a19, &a13, va, &a43, &a41, v45, x8_0);
}

uint64_t OUTLINED_FUNCTION_19_100(char a1)
{

  return sub_1E39C29F0((v1 - 168), a1 & 1);
}

__n128 OUTLINED_FUNCTION_19_101(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  *(a1 + 64) = *(v1 + 48);
  return result;
}

void OUTLINED_FUNCTION_19_102()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_19_104()
{

  return sub_1E4200D94();
}

void OUTLINED_FUNCTION_19_105(double a1, double a2, double a3, double a4)
{
  *&STACK[0x210] = a1;
  *&STACK[0x218] = a2;
  *&STACK[0x220] = a3;
  *&STACK[0x228] = a4;
  LOBYTE(STACK[0x230]) = 0;
}

uint64_t OUTLINED_FUNCTION_19_108(uint64_t a1)
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_19_110@<D0>(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[1]) = 0;
  v2 = v1 + a1[2];
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  return 0.0;
}

void OUTLINED_FUNCTION_19_113()
{
  LOBYTE(STACK[0x308]) = v0;
  STACK[0x2D0] = 0;
  LOBYTE(STACK[0x2D8]) = v0;
}

char *OUTLINED_FUNCTION_19_114()
{
  v2 = *(v0 + 16) + 1;

  return sub_1E3E087E8(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_19_115()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_19_116()
{
}

uint64_t OUTLINED_FUNCTION_19_119()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_19_120(uint64_t result, uint64_t a2)
{
  *(v2 - 120) = result;
  *(v2 - 112) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_121(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E697C7C8];

  return sub_1E32752B0(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_19_123()
{
  v7 = v1 + *(v0 + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_19_124()
{
}

__n128 OUTLINED_FUNCTION_19_126@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 33) = *(a2 + 17);
  *(a1 + 49) = *(a2 + 33);
  *(a1 + 65) = *(a2 + 49);
  result = *(a2 + 64);
  *(a1 + 80) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  return sub_1E325F748(va, v40, v41);
}

uint64_t OUTLINED_FUNCTION_19_129(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_19_133(uint64_t a1)
{

  return sub_1E42072E4();
}

uint64_t OUTLINED_FUNCTION_19_134()
{
}

uint64_t OUTLINED_FUNCTION_19_135()
{
  v1 = STACK[0x2E8];
  STACK[0x2B0] = STACK[0x2E0];
  LOBYTE(STACK[0x2B8]) = v1;

  return sub_1E3C3DE00();
}

void *OUTLINED_FUNCTION_19_136(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return memcpy(va, &STACK[0x220], 0xE9uLL);
}

uint64_t OUTLINED_FUNCTION_19_137(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1E41FFBA4();
}

double OUTLINED_FUNCTION_19_138(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{

  return sub_1E3952BD8(v6, v7, v5);
}

double OUTLINED_FUNCTION_19_140()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_143()
{

  return sub_1E3C3DE00();
}

void OUTLINED_FUNCTION_19_146(char a1@<W8>)
{
  v8 = *(v1 - 256);
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 41) = a1;
}

uint64_t OUTLINED_FUNCTION_19_150()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_19_153()
{
}

uint64_t OUTLINED_FUNCTION_19_154()
{

  return sub_1E42066B4();
}

void *OUTLINED_FUNCTION_19_157(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(a1, &__src, 0x59uLL);
}

void *OUTLINED_FUNCTION_19_160()
{

  return memcpy(&STACK[0x350], &STACK[0x530], 0xE9uLL);
}

id OUTLINED_FUNCTION_19_161()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_19_162(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_19_164()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E32772D8(uint64_t a1)
{
  result = MEMORY[0x1E6910FA0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1E3277398(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_1E3277398(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1E4207B44();
  sub_1E4206014();
  v8 = sub_1E4207BA4();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1E42079A4() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1E3277590(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_1E32774E4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = OUTLINED_FUNCTION_8_216();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

unint64_t sub_1E3277590(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1E377E494(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1E377EDD0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1E4207B44();
      sub_1E4206014();
      result = sub_1E4207BA4();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1E42079A4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1E377EB28();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_1E32776F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE263F28[0];
  if (!qword_1EE263F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE263F28);
  }

  return result;
}

void sub_1E3277B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E3277DA4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = OUTLINED_FUNCTION_0_367();
  v2 = [v0 dictionaryForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

double sub_1E3277E60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1E327D33C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1E328438C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void OUTLINED_FUNCTION_90_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, void *a24, void *a25, uint64_t a26, char a27, void *a28, char a29, void *a30)
{
  v33 = *(v31 - 264);
  v34 = *(v31 - 240);
  v35 = *(v31 - 232);
  v36 = *(v31 - 224);

  sub_1E3A38918(a1, a2, v34, a4, v33, v30, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t OUTLINED_FUNCTION_90_7(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000010;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_90_9()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

id OUTLINED_FUNCTION_90_10(void *a1)
{

  return sub_1E3E5F2F8(v1, a1);
}

id OUTLINED_FUNCTION_90_11()
{

  return [v0 (v1 + 2867)];
}

void OUTLINED_FUNCTION_90_12(double a1, double a2, double a3, double a4)
{
  *&STACK[0x4B8] = a1;
  *&STACK[0x4C0] = a2;
  *&STACK[0x4C8] = a3;
  *&STACK[0x4D0] = a4;
  LOBYTE(STACK[0x4D8]) = 0;
}

uint64_t OUTLINED_FUNCTION_90_14(uint64_t a1)
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_90_16()
{

  return sub_1E41FDEE4();
}

void OUTLINED_FUNCTION_90_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_90_21()
{

  JUMPOUT(0x1E6911E60);
}

__n128 OUTLINED_FUNCTION_90_25@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 - 160) = *a1;
  *(v1 - 144) = v2;
  *(v1 - 128) = *(a1 + 32);
  return *(a1 + 42);
}

uint64_t OUTLINED_FUNCTION_87_4()
{

  return sub_1E41FFCB4();
}

uint64_t OUTLINED_FUNCTION_87_5()
{

  return sub_1E3743538(v3 - 208, v0 + 72, v1, v2);
}

void OUTLINED_FUNCTION_99_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_119_1()
{

  return sub_1E4207384();
}

uint64_t OUTLINED_FUNCTION_87_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_32_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_72_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_87_7(uint64_t a1)
{

  return sub_1E325F748(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_87_8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E696B2E8];

  return sub_1E32752B0(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_87_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return sub_1E3294F34(va1, va);
}

uint64_t OUTLINED_FUNCTION_87_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_87_14(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_87_17()
{

  return sub_1E379D7E4(v3, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_87_19(uint64_t a1)
{

  return swift_weakInit();
}

void OUTLINED_FUNCTION_99_3()
{
}

uint64_t OUTLINED_FUNCTION_99_4(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_42_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_99_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_99_11@<X0>(uint64_t a1@<X8>, uint64_t (*a2)(void)@<X2>)
{

  return sub_1E3E499A8(0xD000000000000026, a1 | 0x8000000000000000, a2);
}

uint64_t OUTLINED_FUNCTION_99_13@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = *(a2 - 256);
  *(result + 56) = *(v2 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_99_15()
{

  return sub_1E42006B4();
}

uint64_t OUTLINED_FUNCTION_99_16(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_99_17()
{

  return sub_1E4205CB4();
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_78_3()
{

  return sub_1E42064D4();
}

unint64_t OUTLINED_FUNCTION_78_4()
{

  return sub_1E3270FC8(v1, v2, (v0 + 368));
}

uint64_t OUTLINED_FUNCTION_78_5()
{
  v2 = *(v0 - 216);
  v3 = *(v0 - 208);

  return sub_1E3837DC8(v2, v3);
}

uint64_t OUTLINED_FUNCTION_78_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = *(v2 + a1);
}

uint64_t OUTLINED_FUNCTION_78_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_78_10(uint64_t a1)
{

  return [v1 (v2 + 1273)];
}

void OUTLINED_FUNCTION_78_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{

  sub_1E32AAD78(a1, v5, 0xD000000000000036, v6 | 0x8000000000000000, a5);
}

uint64_t OUTLINED_FUNCTION_78_13(__n128 a1)
{
  *(v1 + 184) = a1;
  *(v1 + 216) = vextq_s8(*(v1 + 16), *(v1 + 16), 8uLL);

  return sub_1E4206434();
}

uint64_t OUTLINED_FUNCTION_78_14()
{

  return type metadata accessor for ViewLayout();
}

void *OUTLINED_FUNCTION_78_18(void *a1)
{

  return memcpy(a1, (v1 + 352), 0xC3uLL);
}

uint64_t OUTLINED_FUNCTION_175(double a1, double a2, __n128 a3)
{
  *(v3 - 320) = a3;

  return sub_1E3251BE8(((v3 - 192) | 8), v3 - 240);
}

uint64_t OUTLINED_FUNCTION_78_19(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return swift_allocObject();
}

void OUTLINED_FUNCTION_78_20(uint64_t a1)
{
  *(v3 - 96) = a1;
  *v1 = *(v3 - 192);

  sub_1E384EE08(v2);
}

uint64_t OUTLINED_FUNCTION_78_23()
{
  *(v1 + 280) = v0;
  *(v1 + 288) = v2;

  return sub_1E324FBDC();
}

uint64_t OUTLINED_FUNCTION_78_24()
{
  v2 = *(v0 + 1016);

  return sub_1E375C1CC(v2, v0 + 2784);
}

uint64_t sub_1E3278744(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1E42060B4())
  {
    result = sub_1E327885C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1E4207474();
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
          result = sub_1E4207524();
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

  return MEMORY[0x1E69E7CC0];
}

void *sub_1E327885C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C4E0, &qword_1E4297EC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void OUTLINED_FUNCTION_92_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  sub_1E3C3913C();
}

uint64_t OUTLINED_FUNCTION_92_8(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v3 & 1;
  *(result + 32) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_92_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1E34AF4DC(v10);
}

uint64_t OUTLINED_FUNCTION_92_11(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_1E3807164(a1, 0xD000000000000014, v4 | 0x8000000000000000, a4);
}

uint64_t OUTLINED_FUNCTION_92_12()
{
  *(v0 + *(v1 + 1472)) = v2;
}

uint64_t OUTLINED_FUNCTION_92_15()
{

  return sub_1E4207B64();
}

uint64_t OUTLINED_FUNCTION_92_17()
{
  v1 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v1;
  return v0 - 120;
}

id OUTLINED_FUNCTION_33_23(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_33_25(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1E37E93E8(v5, v4 + 96, a3, a4);
}

uint64_t OUTLINED_FUNCTION_33_26@<X0>(uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14)
{

  return sub_1E3DAF2DC(v15, a14, a13, a11, a10, x8_0);
}

__n128 OUTLINED_FUNCTION_7_33()
{
  v0 = STACK[0x260];
  result = *&STACK[0x240];
  v2 = *&STACK[0x250];
  *&STACK[0x210] = *&STACK[0x240];
  *&STACK[0x220] = v2;
  LOBYTE(STACK[0x230]) = v0;
  return result;
}

__n128 OUTLINED_FUNCTION_33_27()
{
  v0 = STACK[0x290];
  result = *&STACK[0x270];
  v2 = *&STACK[0x280];
  *&STACK[0x240] = *&STACK[0x270];
  *&STACK[0x250] = v2;
  LOBYTE(STACK[0x260]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_28(uint64_t a1)
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_33_30(void *a1)
{

  return sub_1E3F9F164(a1, v1, v2 + 8);
}

uint64_t OUTLINED_FUNCTION_33_34()
{
}

unint64_t OUTLINED_FUNCTION_33_37()
{
  v2 = *(v0 - 280);
  v3 = *v2;
  v4 = v2[1];

  return sub_1E3270FC8(v3, v4, (v0 - 120));
}

uint64_t OUTLINED_FUNCTION_33_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_33_42()
{

  return sub_1E4205CB4();
}

uint64_t OUTLINED_FUNCTION_33_43()
{
}

uint64_t OUTLINED_FUNCTION_33_48(uint64_t a1)
{

  return sub_1E4205DB4();
}

uint64_t OUTLINED_FUNCTION_33_49(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_51(uint64_t a1)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = a1;

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_33_52()
{
  v7 = v1 + *(v2 + 36);
  *v7 = v0;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
}

id OUTLINED_FUNCTION_33_55()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_33_56()
{

  return sub_1E4207594();
}

id OUTLINED_FUNCTION_33_62()
{
  v3 = *(v1 + 2336);

  return [v0 v3];
}

void OUTLINED_FUNCTION_33_66(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_1E3DF8F50(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_33_68()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_33_71(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_33_75()
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_33_77()
{

  return sub_1E4206254();
}

void *OUTLINED_FUNCTION_33_81(unint64_t a1)
{

  return sub_1E3FD6710(a1, sub_1E3EA98FC);
}

unint64_t OUTLINED_FUNCTION_33_82()
{

  return sub_1E327D33C(0x656C746974, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_33_88()
{

  return sub_1E3F9F164((v2 - 208), v1, v0 + 8);
}

uint64_t OUTLINED_FUNCTION_33_89()
{
}

uint64_t OUTLINED_FUNCTION_33_90@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + ((a1 << 9) | (8 * v1)));
  *(v3 + 184) = v5;

  return sub_1E32AE9B0(v5);
}

unint64_t OUTLINED_FUNCTION_33_91()
{

  return sub_1E327D33C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_33_96()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_33_97(uint64_t a1)
{

  return sub_1E4202B94();
}

id OUTLINED_FUNCTION_33_99(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

uint64_t sub_1E327923C()
{
  OUTLINED_FUNCTION_24();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_1E41FFCB4();
  v1[10] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FFBF4();
  v1[13] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[14] = v6;
  v1[15] = *(v7 + 64);
  v1[16] = OUTLINED_FUNCTION_127();
  v1[17] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3279340(uint64_t a1)
{
  v2 = v1[17];
  v3 = v1[8];
  v4 = VUISignpostLogObject(a1);
  sub_1E41FFBC4();
  v5 = sub_1E3279738(v3, v2);
  if (v5)
  {
    v6 = v5;
    v8 = v1[16];
    v7 = v1[17];
    v33 = v7;
    v9 = v1[14];
    v10 = v1[13];
    v11 = [objc_allocWithZone(MEMORY[0x1E69E1610]) initWithRequestProperties_];
    [v11 setQualityOfService_];
    OUTLINED_FUNCTION_4_0();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v8, v7, v10);
    v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v9 + 32))(v14 + v13, v8, v10);
    v1[6] = sub_1E3D20768;
    v1[7] = v14;
    v1[2] = MEMORY[0x1E69E9820];
    v1[3] = 1107296256;
    v1[4] = sub_1E329EEC4;
    v1[5] = &block_descriptor_98;
    v15 = _Block_copy(v1 + 2);
    v16 = v11;

    [v16 setCompletionBlock_];

    _Block_release(v15);
    (*(v9 + 8))(v33, v10);
  }

  else
  {
    v18 = v1[11];
    v17 = v1[12];
    v19 = v1[10];
    v20 = sub_1E324FBDC();
    (*(v18 + 16))(v17, v20, v19);
    v21 = sub_1E41FFC94();
    v22 = sub_1E42067F4();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v1[11];
    v24 = v1[12];
    v26 = v1[10];
    if (v23)
    {
      v27 = OUTLINED_FUNCTION_125_0();
      *v27 = 0;
      _os_log_impl(&dword_1E323F000, v21, v22, "JSNetworkProxy: prefetchSelectedTab: failure to create request properties", v27, 2u);
      OUTLINED_FUNCTION_7_7();
    }

    (*(v25 + 8))(v24, v26);
    v28 = OUTLINED_FUNCTION_16_0();
    v29(v28);
  }

  v30 = OUTLINED_FUNCTION_88_1();

  return v31(v30);
}

uint64_t sub_1E327964C()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E3279680()
{
  v1 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

id sub_1E3279738(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = sub_1E4206BA4();
  v12 = VUISignpostLogObject(v11);
  sub_1E41FFBA4();

  v13 = sub_1E324FBDC();
  v14 = *(v5 + 16);
  v14(v10, v13, v3);
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_125_0();
    v51 = v5;
    *v17 = 0;
    _os_log_impl(&dword_1E323F000, v15, v16, "JSNetworkProxy: prefetchSelectedTab: creating operation", v17, 2u);
    v5 = v51;
    OUTLINED_FUNCTION_6_0();
  }

  v18 = *(v5 + 8);
  v18(v10, v3);
  v19 = sub_1E4205F14();
  sub_1E3277E60(v19, v20, a1, &v55);

  if (v56)
  {
    if (OUTLINED_FUNCTION_52_37(v21, v22, v23, MEMORY[0x1E69E6158]))
    {
      v24 = v53;
      v25 = v54;
      v26 = sub_1E4206BA4();
      v27 = a1;
      v28 = VUISignpostLogObject(v26);
      sub_1E41FFBA4();

      v29 = sub_1E4205F14();
      sub_1E3277E60(v29, v30, a1, &v55);

      if (v56)
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        if (OUTLINED_FUNCTION_52_37(v31, v32, v33, v31))
        {
          v34 = v53;
        }

        else
        {
          v34 = 0;
        }
      }

      else
      {
        sub_1E325F748(&v55, &unk_1ECF296E0, &unk_1E4298030);
        v34 = 0;
      }

      v40 = sub_1E4205F14();
      sub_1E3277E60(v40, v41, v27, &v55);

      if (v56)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        if (OUTLINED_FUNCTION_52_37(v42, v43, v44, v42))
        {
          v45 = v53;
        }

        else
        {
          v45 = 0;
        }

        if (v34)
        {
LABEL_19:
          v46 = sub_1E3744600(v34);

          if (v45)
          {
LABEL_20:
            v47 = sub_1E3744600(v45);

LABEL_24:
            sub_1E3280A90(0, &unk_1EE23B028, 0x1E69E1600);
            v39 = sub_1E3279C2C(v24, v25, v46, 0, 0, v47, 0, 0, 0, 0, 0);
            goto LABEL_25;
          }

LABEL_23:
          v47 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        sub_1E325F748(&v55, &unk_1ECF296E0, &unk_1E4298030);
        v45 = 0;
        if (v34)
        {
          goto LABEL_19;
        }
      }

      v46 = 0;
      if (v45)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  else
  {
    sub_1E325F748(&v55, &unk_1ECF296E0, &unk_1E4298030);
  }

  v35 = v52;
  v14(v52, v13, v3);
  v36 = sub_1E41FFC94();
  v37 = sub_1E4206814();
  if (OUTLINED_FUNCTION_161(v37))
  {
    v38 = OUTLINED_FUNCTION_125_0();
    *v38 = 0;
    _os_log_impl(&dword_1E323F000, v36, v14, "JSNetworkProxy: prefetchSelectedTab: endpoint is nil, ignore", v38, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v18(v35, v3);
  v39 = 0;
LABEL_25:
  v48 = sub_1E4206B94();
  v49 = VUISignpostLogObject(v48);
  sub_1E41FFBA4();

  return v39;
}

id sub_1E3279C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11)
{
  v15 = sub_1E4205ED4();

  if (a3)
  {
    v16 = sub_1E4205C44();

    if (a5)
    {
LABEL_3:
      v17 = sub_1E4205ED4();

      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  if (a6)
  {
    v18 = sub_1E4205C44();
  }

  else
  {
    v18 = 0;
  }

  if (a8)
  {
    v19 = sub_1E4205ED4();
  }

  else
  {
    v19 = 0;
  }

  v20 = [swift_getObjCClassFromMetadata() requestPropertiesWithEndpoint:v15 queryParameters:v16 httpMethod:v17 headers:v18 caller:v19 timeout:a9 apiVersion:a10 options:a11];

  return v20;
}

uint64_t sub_1E3279DB8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v6 + 392) = v5;

  OUTLINED_FUNCTION_64_22();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void OUTLINED_FUNCTION_65_4()
{
  v2 = (v1 + v0);
  *v2 = 0;
  v2[1] = 0;
}

void *OUTLINED_FUNCTION_65_8(void *result, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E42007D4();
}

uint64_t OUTLINED_FUNCTION_65_11(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_65_12()
{

  return sub_1E42006B4();
}

void OUTLINED_FUNCTION_65_14(uint64_t a1@<X0>, const void *a3@<X2>, void *x8_0@<X8>)
{

  sub_1E3BD63E4(a1, 0, a3, 0, 0, 0, 0, 0, x8_0);
}

double OUTLINED_FUNCTION_65_18(__n128 a1, __n128 a2, double a3, double a4)
{
  *(v4 - 160) = a1.n128_u64[0];
  *(v4 - 152) = a2.n128_u64[0];
  *(v4 - 144) = a3;
  *(v4 - 136) = a4;
  *(v4 - 128) = 0;

  return sub_1E3952C64();
}

uint64_t OUTLINED_FUNCTION_65_20(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

void *OUTLINED_FUNCTION_65_24()
{
  *(v0 + 192) = 1;

  return memcpy((v1 + 89), (v0 + 302), 0x6AuLL);
}

uint64_t OUTLINED_FUNCTION_65_25(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_65_27()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_65_28(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

_OWORD *OUTLINED_FUNCTION_65_29(uint64_t a1, uint64_t a2)
{
  *(v2 + 1080) = v3;
  *(v2 + 1056) = a1;
  *(v2 + 1064) = a2;

  return sub_1E329504C((v2 + 1056), (v2 + 832));
}

uint64_t OUTLINED_FUNCTION_65_32()
{

  return sub_1E3F9F164((v2 - 288), v0, v1 + 8);
}

uint64_t OUTLINED_FUNCTION_65_33(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{

  return sub_1E3C69B60(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_65_36(uint64_t a1)
{

  return sub_1E325F6F0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_65_39()
{
}

void OUTLINED_FUNCTION_65_40(uint64_t a1@<X8>)
{
  *(v2 + a1) = 0;
  *(v2 + *(v1 + 16)) = 0;
  *(v2 + *(v1 + 24)) = 0;
}

uint64_t OUTLINED_FUNCTION_65_41(uint64_t a1)
{

  return sub_1E4206194();
}

uint64_t sub_1E327A274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_83_11();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26[49];
  v30 = v26[37];
  if (v29)
  {
    v31 = v26[14];

    v32 = *(v31 + 112);
    *(v31 + 112) = v29;
    v33 = v29;

    v34 = OUTLINED_FUNCTION_76_0();
    v30(v34);
    v35 = sub_1E41FFC94();
    v36 = sub_1E4206814();
    if (OUTLINED_FUNCTION_161(v36))
    {
      v37 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v37);
      OUTLINED_FUNCTION_38_44(&dword_1E323F000, v38, v39, "JSNetworkProxy: prefetchSelectedTab: enqueue operation");
      OUTLINED_FUNCTION_65_0();
    }

    v40 = v26[39];
    v41 = v26[24];
    v42 = v26[16];

    v40(v41, v42);
    v43 = [objc_opt_self() wlkDefaultConcurrentQueue];
    [v43 addOperation_];

    v44 = OUTLINED_FUNCTION_70_22();
    OUTLINED_FUNCTION_85_0(v44);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_5_10();
    v45 = swift_allocObject();
    OUTLINED_FUNCTION_27_59(v45);

    sub_1E325F748(v41, &unk_1ECF2C400, &qword_1E429ABE0);
    v46 = sub_1E4206B94();
    v47 = VUISignpostLogObject(v46);
    OUTLINED_FUNCTION_38_38();
    OUTLINED_FUNCTION_10_111();
    sub_1E41FFBA4();

    v48 = OUTLINED_FUNCTION_16_0();
    (v29)(v48);
  }

  else
  {
    v49 = OUTLINED_FUNCTION_76_0();
    v30(v49);

    v50 = sub_1E41FFC94();
    v51 = sub_1E4206814();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v26[44];
    if (v52)
    {
      v54 = v26[43];
      v78 = v26[39];
      v55 = OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_65_21();
      *v55 = 136315138;
      v56 = sub_1E3270FC8(v54, v53, &a15);

      *(v55 + 4) = v56;
      _os_log_impl(&dword_1E323F000, v50, v51, "JSNetworkProxy: prefetchSelectedTab: can't make prefetch request, tabId: %s", v55, 0xCu);
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_7_7();

      v57 = OUTLINED_FUNCTION_27_0();
      v78(v57);
    }

    else
    {
      v51 = v26[39];

      v58 = OUTLINED_FUNCTION_27_0();
      v51(v58);
    }

    v59 = v26[34];
    v60 = sub_1E4206B94();
    v61 = VUISignpostLogObject(v60);
    OUTLINED_FUNCTION_38_38();
    OUTLINED_FUNCTION_10_111();
    sub_1E41FFBA4();

    v62 = OUTLINED_FUNCTION_16_0();
    v59(v62);
  }

  OUTLINED_FUNCTION_14_120();
  v74 = v64;
  v75 = v63;
  v76 = v26[19];
  v77 = v26[18];
  v79 = v26[15];

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_41_12();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, v74, v75, v76, v77, v79, a15, a16, a17, a18);
}

uint64_t sub_1E327A640()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1E327A674()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_63_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_63_9()
{

  return sub_1E42005C4();
}

uint64_t OUTLINED_FUNCTION_63_10()
{

  return sub_1E393B640();
}

uint64_t OUTLINED_FUNCTION_63_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 120) = a3;
  *(result + 104) = a3;
  *(result + 88) = a3;
  *(result + 72) = a3;
  *(result + 56) = a3;
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

void OUTLINED_FUNCTION_7_34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_63_14(uint64_t a1)
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_63_15(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

unint64_t OUTLINED_FUNCTION_63_16(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 120));
}

void OUTLINED_FUNCTION_63_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_63_21(uint64_t a1)
{

  sub_1E3EC24F4(a1, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_32_14(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_63_25()
{

  return sub_1E4205CB4();
}

uint64_t OUTLINED_FUNCTION_63_26(uint64_t a1, uint64_t a2)
{

  return sub_1E3743538(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_63_27(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_63_29(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_63_30()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_63_32()
{
}

uint64_t OUTLINED_FUNCTION_63_35()
{

  return sub_1E38D2054(v0 - 168, v0 - 184);
}

uint64_t OUTLINED_FUNCTION_102_4(uint64_t a1)
{
  *(v1 - 112) = a1;

  return sub_1E42069A4();
}

__n128 *OUTLINED_FUNCTION_102_5(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 0;
  return result;
}

void OUTLINED_FUNCTION_102_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_102_7@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = 0;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_102_9(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_102_13(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, void _1B8, void _1C0, void _1C8, void _1D0)
{

  sub_1E3C2FCB8(a1, a2, a3, &a65, &STACK[0x250], &a29, v65, x8_0);
}

uint64_t OUTLINED_FUNCTION_102_15()
{
  *(v4 - 112) = v0;
  *(v4 - 104) = v1;
  *(v4 - 96) = v2;
  *(v4 - 88) = v3;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_102_16(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E42079A4();
}

unint64_t OUTLINED_FUNCTION_102_18(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v10 = a1;

  return sub_1E3270FC8(v9, v11, va);
}

uint64_t OUTLINED_FUNCTION_102_22()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_30_10(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_30_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4202FC4();
}

uint64_t OUTLINED_FUNCTION_30_17()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_30_19()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_30_21()
{
  v6 = *(v1 + 144);

  return sub_1E391561C(v3, v2, v0, v4, v6);
}

void OUTLINED_FUNCTION_30_22(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x1E69E6720];

  sub_1E3916AE8(319, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_30_24()
{
  v1 = STACK[0x278];
  STACK[0x240] = STACK[0x270];
  LOBYTE(STACK[0x248]) = v1;

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_30_25(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

id OUTLINED_FUNCTION_30_26()
{

  return [v0 (v2 + 3941)];
}

id OUTLINED_FUNCTION_30_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v5 (v6 + 2680)];
}

uint64_t OUTLINED_FUNCTION_30_29@<X0>(uint64_t a1@<X8>)
{
  if (v1 < 0)
  {
    return v1;
  }

  else
  {
    return a1;
  }
}

void OUTLINED_FUNCTION_30_30(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, double a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, double *a52)
{
  v52 = a40;
  if (a1 > a40)
  {
    v52 = a1;
  }

  *a52 = v52;
}

uint64_t OUTLINED_FUNCTION_30_33()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_30_34(unint64_t a1@<X8>)
{
  STACK[0x400] = a1;
  STACK[0x408] = 0;
  STACK[0x410] = 0;
  STACK[0x418] = 0;
  LOBYTE(STACK[0x420]) = 0;
}

uint64_t OUTLINED_FUNCTION_30_36()
{

  return sub_1E4201F44();
}

void OUTLINED_FUNCTION_30_40(uint64_t a1)
{

  sub_1E3F23370();
}

__n128 OUTLINED_FUNCTION_30_42()
{
  result = *(v0 + 144);
  v2 = *(v0 + 160);
  *(v0 + 96) = result;
  *(v0 + 112) = v2;
  return result;
}

void *OUTLINED_FUNCTION_30_43()
{

  return memcpy(&STACK[0x370], &STACK[0x5C0], 0xA2uLL);
}

uint64_t OUTLINED_FUNCTION_75_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_30_44(void *a1)
{

  return sub_1E3741090(v1, v2 | 0x8000000000000000, a1);
}

uint64_t OUTLINED_FUNCTION_30_45()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_30_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return sub_1E3277E60(a1, a2, v15, &a15);
}

uint64_t OUTLINED_FUNCTION_30_53()
{

  return sub_1E3743538(v3 - 256, v0 + 112, v1, v2);
}

uint64_t OUTLINED_FUNCTION_30_54(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_30_56()
{
  sub_1E3264CE0(*(v1 + *(v0 + 36)), *(v1 + *(v0 + 36) + 8));
}

void OUTLINED_FUNCTION_30_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{

  sub_1E37909A0(a16, 2u);
}

uint64_t OUTLINED_FUNCTION_30_59(uint64_t a1)
{
}

void OUTLINED_FUNCTION_30_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  sub_1E3C2FCB8(&a11, &a65, &a53, &a41, &STACK[0x248], &STACK[0x220], v65, &STACK[0x270]);
}

void *OUTLINED_FUNCTION_30_62()
{

  return memcpy((v0 + 128), (v0 + 752), 0xE9uLL);
}

void OUTLINED_FUNCTION_30_63()
{

  JUMPOUT(0x1E69109E0);
}

id OUTLINED_FUNCTION_30_65(void *a1)
{

  return [a1 (v1 + 376)];
}

void OUTLINED_FUNCTION_30_66(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1E3C2FDFC(a1, a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_30_69()
{
  v3 = *(v1 + 168);
  v4 = *(v0 + 384);
  *v4 = *(v1 + 152);
  v4[1] = v3;
  v4[2] = *(v1 + 184);
  *(v4 + 43) = *(v1 + 195);

  return swift_storeEnumTagMultiPayload();
}

__n128 OUTLINED_FUNCTION_30_80()
{
  v0 = STACK[0x320];
  result = *&STACK[0x300];
  v2 = *&STACK[0x310];
  *&STACK[0x2D0] = *&STACK[0x300];
  *&STACK[0x2E0] = v2;
  LOBYTE(STACK[0x2F0]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_82()
{

  return sub_1E42038E4();
}

void OUTLINED_FUNCTION_30_83(uint64_t a1@<X8>)
{
  v6 = *(v4 - 168);
  v5 = *(v4 - 160);
  *(a1 - 48) = v3;
  *(a1 - 40) = v6;
  *(a1 - 32) = v5;
  *(a1 - 24) = v2;
  *(a1 - 16) = v1;
}

uint64_t OUTLINED_FUNCTION_30_84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_30_85(uint64_t a1, uint64_t a2, uint64_t a3)
{
  strcpy((v5 - 128), "@@teamName@@");
  *(v5 - 115) = 0;
  *(v5 - 114) = -5120;
  *(v5 - 184) = v4;
  *(v5 - 176) = v3;

  return sub_1E32822E0(a1, a2, a3);
}

unsigned __int16 *OUTLINED_FUNCTION_30_89(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_1E393D92C(v16, v17, a3, 0, a16);
}

id OUTLINED_FUNCTION_61_11(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [v10 v12];
}

uint64_t OUTLINED_FUNCTION_113_1(uint64_t a1, uint64_t a2)
{

  return sub_1E3743538(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_61_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_61_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_61_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va1, a36);
  va_start(va, a36);
  a37 = va_arg(va1, void);
  v40 = va_arg(va1, void);

  sub_1E3C2FCB8(&a13, &a33, &a29, va, &a25, &a9, v36, va1);
}

void OUTLINED_FUNCTION_32_15(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_61_18(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_61_20()
{

  return sub_1E39C02B0();
}

uint64_t OUTLINED_FUNCTION_61_21()
{

  return sub_1E41FE7E4();
}

void OUTLINED_FUNCTION_61_22(unint64_t a1@<X8>)
{
  LOBYTE(STACK[0x258]) = 0;
  STACK[0x220] = a1;
  LOBYTE(STACK[0x228]) = 0;
}

BOOL OUTLINED_FUNCTION_61_24(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;

  return CGRectEqualToRect(*&a1, *&v5);
}

uint64_t OUTLINED_FUNCTION_61_27()
{
  *(v1 - 96) = v0;
}

BOOL OUTLINED_FUNCTION_61_30()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_61_31()
{

  return sub_1E4201F44();
}

void OUTLINED_FUNCTION_71_8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_71_9()
{

  return sub_1E4206474();
}

uint64_t OUTLINED_FUNCTION_71_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_71_14(uint64_t a1)
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_71_18()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_71_19(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_71_31()
{

  return sub_1E3C3DE00();
}

unint64_t OUTLINED_FUNCTION_71_33()
{

  return sub_1E327D33C(v0, v1);
}

id OUTLINED_FUNCTION_71_37()
{

  return [v1 (v0 + 3941)];
}

uint64_t OUTLINED_FUNCTION_105_5(uint64_t a1)
{

  return sub_1E42038F4();
}

id OUTLINED_FUNCTION_105_7()
{

  return [v1 (v0 + 1656)];
}

void OUTLINED_FUNCTION_105_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  a25 = a61;
  a26 = a62;

  sub_1E3C2FCB8(&a31, &a65, &a25, &STACK[0x490], &STACK[0x460], &STACK[0x230], v65, &STACK[0x370]);
}

uint64_t OUTLINED_FUNCTION_85_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_105_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_105_17()
{
  v7 = (v4 + *(v2 + 32));
  v8 = *(v5 - 144);
  *v7 = *(v5 - 160);
  v7[1] = v8;
  v7[2] = *(v5 - 128);
  *(v7 + 42) = *(v1 + 106);
  *(v4 + *(v2 + 36)) = v3;

  return sub_1E3FCC24C(v5 - 160, v0 + 128);
}

uint64_t OUTLINED_FUNCTION_49_8(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

id OUTLINED_FUNCTION_49_9()
{
  v3 = *(v1 + 3192);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_49_12(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void a6, void a7, void a8, uint64_t a3, uint64_t a4, char a5)
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_67_5()
{

  return os_log_type_enabled(v0, v1);
}

double OUTLINED_FUNCTION_49_14()
{
  result = 0.0;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  return result;
}

void OUTLINED_FUNCTION_49_16()
{
  *(v0 - 352) = *(v0 - 240);
  *(v0 - 360) = *(v0 - 224);
  *(v0 - 368) = *(v0 - 208);
  *(v0 - 376) = *(v0 - 200);
}

uint64_t OUTLINED_FUNCTION_49_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_49_21(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 200);

  return sub_1E3270FC8(v5, v1, (v3 - 168));
}

uint64_t OUTLINED_FUNCTION_49_22()
{
  STACK[0x460] = STACK[0x488];

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_49_23()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_49_28(uint64_t a1, uint64_t a2)
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_49_30(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_49_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return type metadata accessor for HorizontalPicker(0, &a9);
}

uint64_t OUTLINED_FUNCTION_49_37(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_49_39()
{
  v0 = STACK[0x258];
  STACK[0x220] = STACK[0x250];
  LOBYTE(STACK[0x228]) = v0;
}

uint64_t OUTLINED_FUNCTION_49_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_49_50(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_49_53()
{
  v5 = *(v3 - 152);

  return sub_1E3743538(v2, v5, v0, v1);
}

void OUTLINED_FUNCTION_49_54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);

  sub_1E3C2FCB8(a1, a2, a3, va, &a29, &a43, v59, x8_0);
}

id OUTLINED_FUNCTION_49_55()
{

  return [v0 (v1 + 2867)];
}

uint64_t OUTLINED_FUNCTION_49_56()
{

  return sub_1E4200C34();
}

void OUTLINED_FUNCTION_49_57(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  sub_1E3C2FCB8(a1, a2, a3, a4, &STACK[0x360], &STACK[0x4B0], v5, a5);
}

uint64_t OUTLINED_FUNCTION_49_62()
{

  return sub_1E40DEAB4(v1, v0 + 72);
}

uint64_t OUTLINED_FUNCTION_49_65()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_49_66(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{

  return VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
}

uint64_t sub_1E327C23C()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3(v4);
  *v5 = v8;
  v5[1] = sub_1E327C238;

  return sub_1E327C2D0(v2, v6, v7, v3);
}

uint64_t sub_1E327C2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E327C2E4()
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_56_1(v2);

    return sub_1E327DC3C();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_54();

    return v4();
  }
}

void static VUIJetPackController.controller(bagKey:defaults:urlOverrideDefaultKey:withCachePolicy:)()
{
  OUTLINED_FUNCTION_31_1();
  v43 = v0;
  v44 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D5C0, &unk_1E42E2650);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = sub_1E4204454();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  if (v3 == 1)
  {
    sub_1E325F6F0(v18, &qword_1ECF3D5C0, &unk_1E42E2650);
    (*(*(v19 - 8) + 104))(v18, *MEMORY[0x1E69AAEB0], v19);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  }

  static VUIJetPackController.deleteCustomBootUrlAfterMajorUpgrade(_:)();
  v26 = sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  if (v5)
  {
    v30 = v5;
    v31 = sub_1E4205ED4();
    v32 = [v30 stringForKey_];

    if (v32)
    {
      sub_1E4205F14();

      sub_1E41FE404();

      sub_1E325F6F0(v13, &unk_1ECF363C0, &unk_1E42A9420);
    }

    else
    {

      sub_1E325F6F0(v13, &unk_1ECF363C0, &unk_1E42A9420);
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v26);
    }

    sub_1E327D738(v10, v13);
  }

  OUTLINED_FUNCTION_59_1();
  sub_1E37E93E8(v36, v37, v38, &unk_1E42A9420);
  v39 = OUTLINED_FUNCTION_24_4();
  sub_1E37E93E8(v39, v40, &qword_1ECF3D5C0, &unk_1E42E2650);
  v41 = objc_allocWithZone(v43);
  v42 = v44;
  sub_1E3282410();
  sub_1E325F6F0(v13, &unk_1ECF363C0, &unk_1E42A9420);
  sub_1E325F6F0(v18, &qword_1ECF3D5C0, &unk_1E42E2650);
  OUTLINED_FUNCTION_25_2();
}

void static VUIJetPackController.deleteCustomBootUrlAfterMajorUpgrade(_:)()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v74 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v73 = v8 - v7;
  v9 = [objc_opt_self() systemVersion];
  if (!v9)
  {
    sub_1E4205F14();
    v9 = sub_1E4205ED4();
  }

  v75 = sub_1E4205F14();
  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 standardUserDefaults];
  v14 = sub_1E4205ED4();
  v15 = [v13 stringForKey_];

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = sub_1E4205F14();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

LABEL_10:

    goto LABEL_34;
  }

  v71 = v3;
  OUTLINED_FUNCTION_36_67();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32_83();
  v23 = sub_1E37D273C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E3756228, v21, v16, v18, v22);
  if (*(v23 + 2))
  {
    v25 = *(v23 + 4);
    v24 = *(v23 + 5);
  }

  else
  {

    v25 = sub_1E4207154();
    v24 = v26;
  }

  v72 = v1;
  if ((v24 ^ v25) >> 14)
  {
    v27 = OUTLINED_FUNCTION_29_96();
    v32 = sub_1E3282334(v27, v28, v29, v30, v31);
    if ((v33 & 0x100) != 0)
    {
      v34 = OUTLINED_FUNCTION_29_96();
      v32 = sub_1E3998104(v34, v35, v36, v37, v38);
    }

    v39 = v32;
    v40 = v33;

    if (v40)
    {
      v41 = 0;
    }

    else
    {
      v41 = v39;
    }
  }

  else
  {

    v41 = 0;
  }

  OUTLINED_FUNCTION_36_67();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_32_83();
  v45 = sub_1E37D273C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E39989B4, v43, v75, v11, v44);
  if (*(v45 + 2))
  {
    v46 = *(v45 + 4);
    v47 = *(v45 + 5);
    v48 = *(v45 + 7);
  }

  else
  {

    v46 = sub_1E4207154();
    v47 = v49;
    v48 = v50;
  }

  if (!((v47 ^ v46) >> 14))
  {
    goto LABEL_10;
  }

  v51 = OUTLINED_FUNCTION_5_12();
  v54 = sub_1E3282334(v51, v52, v53, v48, 10);
  if ((v55 & 0x100) != 0)
  {
    v56 = OUTLINED_FUNCTION_5_12();
    v54 = sub_1E3998104(v56, v57, v58, v48, 10);
  }

  v59 = v54;
  v60 = v55;

  if ((v60 & 1) == 0 && v41 >= 1 && v41 < v59)
  {
    v62 = sub_1E324FBDC();
    (*(v74 + 16))(v73, v62, v4);

    v63 = sub_1E41FFC94();
    v64 = sub_1E4206814();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v76 = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_1E3270FC8(v71, v72, &v76);
      _os_log_impl(&dword_1E323F000, v63, v64, "JetPackController:: osVersion is major upgrade from previous osVersion, deleting userDefault: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v74 + 8))(v73, v4);
    }

    else
    {

      (*(v74 + 8))(v73, v4);
    }

    v67 = [v12 standardUserDefaults];
    v68 = sub_1E4205ED4();
    [v67 removeObjectForKey_];
  }

LABEL_34:
  v69 = [v12 standardUserDefaults];
  v70 = sub_1E4205ED4();
  [v69 setObject:v9 forKey:v70];

  OUTLINED_FUNCTION_25_2();
}

void sub_1E327CD8C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t VUIJetPackController.getJetPackSource()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  sub_1E3283118(&unk_1E42E2678, v1, &qword_1ECF3D688, &qword_1E42E29C0, &unk_1F5D907B8, &unk_1E42E29D0);
  OUTLINED_FUNCTION_106();
  v4[3] = sub_1E4204744();
  v4[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E4204734();
  sub_1E4204CE4();
  OUTLINED_FUNCTION_12_1();

  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1;
}

uint64_t sub_1E327CEA4()
{

  return swift_deallocObject();
}

uint64_t sub_1E327CEE8()
{
  v1 = v0[8];
  sub_1E327DE44();
  sub_1E327F454(v1, (v0 + 2));
  swift_unknownObjectRetain();
  sub_1E4204394();
  if (getenv("SIMULATOR_ROOT"))
  {
    v2 = sub_1E4206094();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = v0[24];
  v22 = v0[25];
  v23 = v0[22];
  v6 = v0[21];
  v26 = v0[23];
  v27 = v0[20];
  v28 = v0[19];
  v7 = v0[15];
  v24 = v0[16];
  v25 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6A8, &qword_1E42E29E0);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6B0, &qword_1E42E29E8) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E4297BE0;
  *(v10 + v9) = 0;
  sub_1E42074B4();
  MEMORY[0x1E69109E0](v2, v4);

  MEMORY[0x1E69109E0](0xD00000000000003FLL, 0x80000001E428C250);
  sub_1E41FE344();

  sub_1E41FE414();
  sub_1E4205CB4();
  sub_1E4204404();
  sub_1E4204424();
  (*(v7 + 104))(v24, *MEMORY[0x1E69AAE88], v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6B8, &qword_1E42E29F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E4299720;
  v12 = MEMORY[0x1E69AAEA0];
  *(v11 + 56) = v26;
  *(v11 + 64) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  (*(v5 + 16))(boxed_opaque_existential_1, v22, v26);
  v14 = MEMORY[0x1E69AAEA8];
  *(v11 + 96) = v27;
  *(v11 + 104) = v14;
  v15 = __swift_allocate_boxed_opaque_existential_1((v11 + 72));
  (*(v6 + 16))(v15, v23, v27);
  sub_1E42042C4();
  v16 = swift_task_alloc();
  v0[29] = v16;
  *(v16 + 16) = v28;
  v17 = swift_task_alloc();
  v0[30] = v17;
  v18 = sub_1E4204304();
  *v17 = v0;
  v17[1] = sub_1E3FB7B9C;
  v19 = v0[13];
  v20 = MEMORY[0x1E69AAE48];

  return MEMORY[0x1EEE15D70](v19, &unk_1E42E2A00, v16, v18, v20);
}

uint64_t sub_1E327D284()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6C0, &qword_1E42E2A08);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_1ECF434E8 = result;
  return result;
}

id static MetricsJetEngine.shared.getter()
{
  if (qword_1EE2A2CE0 != -1)
  {
    OUTLINED_FUNCTION_5_133(&qword_1EE2A2CE0);
  }

  v1 = static MetricsJetEngine.shared;

  return v1;
}

unint64_t sub_1E327D33C(uint64_t a1, uint64_t a2)
{
  sub_1E4207B44();
  sub_1E4206014();
  v4 = sub_1E4207BA4();

  return sub_1E327D3B4(a1, a2, v4);
}

unint64_t sub_1E327D3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1E42079A4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1E327D738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E327D7A8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E327D88C()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E327D974()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E327DA5C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_15_12();

  return v3();
}

unint64_t sub_1E327DB3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E3286330(a5, a6);
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
    result = sub_1E4207524();
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

uint64_t sub_1E327DC3C()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  v1[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_127();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E327DD04()
{
  OUTLINED_FUNCTION_27_2();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 launchConfig];

  [v2 prefetchedTabExpirationDuration];
  v4 = v3;

  v6 = v4 * 1000000000.0;
  if (COERCE__INT64(fabs(v4 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA60](v5);
  }

  v7 = v6;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_56_1(v8);
  v5 = v7;

  return MEMORY[0x1EEE6DA60](v5);
}

uint64_t sub_1E327DE44()
{
  v0 = sub_1E42043C4();
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  if (_MergedGlobals_140 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECF434E8;

  os_unfair_lock_lock((v2 + 24));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    sub_1E42043B4();
    sub_1E42043E4();
    swift_allocObject();
    v3 = sub_1E42043D4();
    *(v2 + 16) = v3;
  }

  os_unfair_lock_unlock((v2 + 24));

  return v3;
}

void sub_1E327DF50()
{
  OUTLINED_FUNCTION_31_1();
  v65 = v1;
  v66 = v0;
  v63 = v2;
  v4 = v3;
  v6 = v5;
  v62 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v58 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v59 = v9;
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v64 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v60 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v23 = VUISignpostLogObject(v22);
  v24 = v21;
  sub_1E41FFBC4();
  v25 = sub_1E4206BA4();
  LODWORD(v56) = v25;
  v26 = VUISignpostLogObject(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E6370];
  *(v27 + 16) = xmmword_1E4299720;
  v29 = MEMORY[0x1E69E63A8];
  *(v27 + 56) = v28;
  *(v27 + 64) = v29;
  v67 = v4;
  *(v27 + 32) = v4;
  v30 = v6;
  sub_1E41FDDC4();
  v31 = sub_1E41FE414();
  if (__swift_getEnumTagSinglePayload(v13, 1, v31) == 1)
  {
    v32 = sub_1E325F7FC(v13, &unk_1ECF363C0, &unk_1E42A9420);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v35 = sub_1E41FE314();
    v36 = v37;
    OUTLINED_FUNCTION_37_1();
    v32 = (*(v38 + 8))(v13, v31);
  }

  *(v27 + 96) = MEMORY[0x1E69E6158];
  *(v27 + 104) = sub_1E3283528(v32, v33, v34);
  if (v36)
  {
    v39 = v35;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0xE000000000000000;
  if (v36)
  {
    v40 = v36;
  }

  *(v27 + 72) = v39;
  *(v27 + 80) = v40;
  v57 = v24;
  sub_1E41FFB94();

  v41 = v30;
  v56 = sub_1E41FDD94();
  v42 = v60;
  v43 = v64;
  (*(v60 + 16))(v18, v24, v64);
  v44 = v58;
  v45 = v61;
  v46 = v62;
  (*(v58 + 16))(v61, v41, v62);
  v47 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v48 = (v16 + *(v44 + 80) + v47) & ~*(v44 + 80);
  v49 = (v59 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  (*(v42 + 32))(v50 + v47, v18, v43);
  (*(v44 + 32))(v50 + v48, v45, v46);
  v51 = (v50 + v49);
  v52 = v65;
  *v51 = v63;
  v51[1] = v52;
  v68[4] = sub_1E39C8A74;
  v68[5] = v50;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 1107296256;
  v68[2] = sub_1E39C89AC;
  v68[3] = &block_descriptor_37;
  v53 = _Block_copy(v68);

  v54 = v56;
  v55 = [v66 dataTaskWithRequest:v56 completionHandler:v53];
  _Block_release(v53);

  [v55 set:v67 & 1 preconnect:?];
  [v55 resume];

  (*(v42 + 8))(v57, v43);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E327E458()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  OUTLINED_FUNCTION_25_2();

  return swift_deallocObject();
}

uint64_t sub_1E327E590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_43_65();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_3(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_15_155(v11);
  OUTLINED_FUNCTION_159_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t OUTLINED_FUNCTION_75_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{

  return sub_1E4205E84();
}

BOOL OUTLINED_FUNCTION_75_3()
{

  return os_log_type_enabled(v0, v1);
}

double OUTLINED_FUNCTION_75_7(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, double d4_0, double d5_0, double d6_0, double d7_0, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, double a42)
{

  return sub_1E3952BE0(v44, a42, v43, v45);
}

__n128 OUTLINED_FUNCTION_75_8(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

void OUTLINED_FUNCTION_75_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 168);

  _os_log_impl(a1, v8, v5, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_75_12()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_75_13()
{

  return sub_1E42074B4();
}

uint64_t OUTLINED_FUNCTION_75_17()
{

  return sub_1E4200BC4();
}

void OUTLINED_FUNCTION_75_18(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0x4024000000000000;
  *(v1 + v2[9]) = 0;
}

uint64_t OUTLINED_FUNCTION_75_20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 320);

  return sub_1E3741EA0(v4, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_75_24(uint64_t a1)
{
  v5 = *(v3 - 152);

  return sub_1E3743538(a1, v5, v1, v2);
}

void *OUTLINED_FUNCTION_75_26()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 136), v0);
}

id OUTLINED_FUNCTION_75_30()
{

  return [v0 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_75_32(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_41_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32)
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_41_20()
{

  return sub_1E4207414();
}

id OUTLINED_FUNCTION_41_21(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v7 + 2040)];
}

uint64_t OUTLINED_FUNCTION_41_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_41_26()
{
  STACK[0x438] = 0;
  STACK[0x440] = 0;
  STACK[0x448] = 0;
  LOBYTE(STACK[0x450]) = 0;
}

uint64_t OUTLINED_FUNCTION_41_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_41_30()
{

  return sub_1E42062F4();
}

uint64_t OUTLINED_FUNCTION_41_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_41_33(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_36()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_41_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_38(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E3883AF4(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_41_40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

unint64_t OUTLINED_FUNCTION_41_42()
{

  return sub_1E327D33C(v1, v0);
}

void OUTLINED_FUNCTION_41_45(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_41_48(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_41_50()
{

  return sub_1E38D2054(v0 + 256, v0 + 88);
}

void OUTLINED_FUNCTION_41_54()
{
  v1 = *(v0 - 88);
  *(v0 - 112) = *(v0 - 96);
  *(v0 - 104) = v1;
}

uint64_t OUTLINED_FUNCTION_41_58()
{

  return sub_1E41FDF74();
}

uint64_t OUTLINED_FUNCTION_41_63@<X0>(int a1@<W8>)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t OUTLINED_FUNCTION_41_64()
{
  v2 = *(v0 + 360);
  *(v0 + 304) = *(v0 + 352);
  *(v0 + 312) = v2;

  return sub_1E3C3DE00();
}

void OUTLINED_FUNCTION_41_70()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E69143B0);
}

void OUTLINED_FUNCTION_41_71()
{
  **(v0 + 360) = 0;
  v2 = *(v0 + 320);
}

uint64_t OUTLINED_FUNCTION_41_73()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_156_3(uint64_t a1)
{

  return sub_1E42062F4();
}

void OUTLINED_FUNCTION_156_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_156_6(double a1, double a2, double a3, double a4)
{
  *(v4 - 144) = a1;
  *(v4 - 136) = a2;
  *(v4 - 128) = a3;
  *(v4 - 120) = a4;
  *(v4 - 112) = 0;
}

uint64_t sub_1E327EFC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1E3FB915C;

  return v9(v6 + 16);
}

uint64_t sub_1E327F0BC()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_42_67(v1);

  return sub_1E327F144();
}

uint64_t sub_1E327F144()
{
  OUTLINED_FUNCTION_24();
  v0[4] = v1;
  v0[5] = v2;
  v3 = sub_1E4205F64();
  OUTLINED_FUNCTION_17_2(v3);
  v0[6] = OUTLINED_FUNCTION_86_0();
  v4 = sub_1E4204474();
  v0[7] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[8] = v5;
  v0[9] = OUTLINED_FUNCTION_86_0();
  v6 = sub_1E41FE414();
  v0[10] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[11] = v7;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v8 = sub_1E4204304();
  v0[14] = v8;
  OUTLINED_FUNCTION_8_0(v8);
  v0[15] = v9;
  v0[16] = OUTLINED_FUNCTION_86_0();
  v10 = sub_1E41FFBF4();
  v0[17] = v10;
  OUTLINED_FUNCTION_8_0(v10);
  v0[18] = v11;
  v0[19] = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1E327F304()
{
  OUTLINED_FUNCTION_134();
  v2 = VUISignpostLogObject(v1);
  sub_1E41FFBC4();
  v3 = sub_1E4206BA4();
  v4 = VUISignpostLogObject(v3);
  OUTLINED_FUNCTION_23_95(v3, &dword_1E323F000, v5, "JetPackController.loadJetPackSource");

  v6 = sub_1E4206BA4();
  v7 = VUISignpostLogObject(v6);
  sub_1E41FFBA4();

  *(v0 + 160) = OBJC_IVAR____TtC8VideosUI20VUIJetPackController_location;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 168) = v8;
  *v8 = v9;
  v8[1] = sub_1E3FB7F3C;

  return sub_1E3284440();
}

uint64_t sub_1E327F454(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1E327F518@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 launchConfig];

  sub_1E326D0D8(v7);
  if (!v8)
  {
    return sub_1E41FE404();
  }

  sub_1E41FE404();

  v9 = sub_1E41FE414();
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_1E325F748(v5, &unk_1ECF363C0, &unk_1E42A9420);
    return sub_1E41FE404();
  }

  (*(*(v9 - 8) + 32))(a1, v5, v9);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
}

void sub_1E327F868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_103_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_60_9()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_53_7()
{
}

uint64_t OUTLINED_FUNCTION_60_12()
{

  return sub_1E324FBDC();
}

id OUTLINED_FUNCTION_60_13(void *a1)
{

  return [a1 CGColor];
}

uint64_t OUTLINED_FUNCTION_60_18(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_60_19(uint64_t a1)
{

  return sub_1E325F748(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_60_24(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
}

uint64_t OUTLINED_FUNCTION_60_27()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_60_30(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_60_31(uint64_t a1)
{

  return sub_1E4203064();
}

void OUTLINED_FUNCTION_60_34()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_60_35()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_60_36(uint64_t a1)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_60_37()
{
  *(v0 - 256) = 2;
  v1 = v0 - 256;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 39) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_38()
{
}

uint64_t OUTLINED_FUNCTION_60_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 96) = a1;

  return sub_1E3B9E8EC(0, v4, v5 - 120, a4);
}

uint64_t OUTLINED_FUNCTION_21_20()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_21_22()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_21_24()
{

  return [v1 (v2 + 1272)];
}

uint64_t OUTLINED_FUNCTION_21_25()
{
  v2 = *(v0 - 228) & 1;
  v3 = *(v0 - 196) & 1;
  v5 = *(v0 - 184);
  v4 = *(v0 - 176);
  v6 = *(v0 - 192);
  v8 = *(v0 - 216);
  v7 = *(v0 - 208);
  v9 = *(v0 - 224);

  return MEMORY[0x1EEDDC6F0](v4, v5, v3, v6, v7, v8, v2, v9);
}

uint64_t OUTLINED_FUNCTION_21_26()
{
  *v2 = v0;
  v2[1] = v1;
}

uint64_t OUTLINED_FUNCTION_21_29()
{

  return sub_1E383F2A4(v0, v1 - 160);
}

uint64_t OUTLINED_FUNCTION_21_30()
{

  return sub_1E4205784();
}

uint64_t OUTLINED_FUNCTION_21_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_33(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_121_2(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_21_38(void (*a1)(uint64_t))
{

  return sub_1E4148DE0(a1);
}

uint64_t OUTLINED_FUNCTION_21_40(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{

  return VUIRectWithFlippedOriginRelativeToBoundingRect();
}

uint64_t OUTLINED_FUNCTION_21_43@<X0>(uint64_t a1@<X8>)
{
  if (v1 < 0)
  {
    return v1;
  }

  else
  {
    return a1;
  }
}

uint64_t OUTLINED_FUNCTION_21_45()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_21_50()
{

  return [v0 (v1 + 901)];
}

uint64_t OUTLINED_FUNCTION_7_35()
{

  return swift_getOpaqueTypeConformance2();
}

double OUTLINED_FUNCTION_21_56(__n128 a1)
{
  a1.n128_u64[0] = 8.0;

  return j__OUTLINED_FUNCTION_7_78(a1);
}

uint64_t OUTLINED_FUNCTION_21_59(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E42079A4();
}

__n128 OUTLINED_FUNCTION_21_60()
{
  v0 = STACK[0x410];
  result = *&STACK[0x3F0];
  v2 = *&STACK[0x400];
  *&STACK[0x3C0] = *&STACK[0x3F0];
  *&STACK[0x3D0] = v2;
  LOBYTE(STACK[0x3E0]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_21_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_21_68()
{
  v2 = *(v0 - 176);
  STACK[0x270] = *(v0 - 184);
  LOBYTE(STACK[0x278]) = v2;

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_21_72()
{

  return type metadata accessor for SportsBannerLogoView(0);
}

uint64_t OUTLINED_FUNCTION_21_75(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_76()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_21_80()
{

  return sub_1E3294F34(v0 - 128, v0 - 176);
}

uint64_t OUTLINED_FUNCTION_21_81()
{

  return sub_1E41FFBE4();
}

void OUTLINED_FUNCTION_21_82(double a1, double a2, double a3, double a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 64) = 0;
}

void OUTLINED_FUNCTION_21_84(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);

  sub_1E3D82108(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_21_85(uint64_t a1)
{

  return sub_1E42079A4();
}

void *OUTLINED_FUNCTION_21_86()
{

  return __swift_project_boxed_opaque_existential_1((v0 + 288), v1);
}

void OUTLINED_FUNCTION_21_87(double a1, double a2, double a3, double a4)
{
  *&STACK[0x238] = a1;
  *&STACK[0x240] = a2;
  *&STACK[0x248] = a3;
  *&STACK[0x250] = a4;
  LOBYTE(STACK[0x258]) = 0;
}

id OUTLINED_FUNCTION_21_88()
{

  return [v0 (v1 + 282)];
}

uint64_t OUTLINED_FUNCTION_21_90@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v11 = a1[8];
  v12 = a1[9];

  return sub_1E3DC14B4(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

void OUTLINED_FUNCTION_103_1()
{

  JUMPOUT(0x1E69109E0);
}

__n128 OUTLINED_FUNCTION_21_96(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22)
{
  result = a22;
  a1[1] = a22;
  return result;
}

void OUTLINED_FUNCTION_21_97(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);

  sub_1E3C2FCB8(a1, a2, a3, a4, va, &a23, v35, x8_0);
}

void OUTLINED_FUNCTION_21_98()
{
  *(v0 - 448) = 0;
  *(v0 - 432) = 0;
  *(v0 - 392) = 0;
  *(v0 - 456) = 0;
}

uint64_t OUTLINED_FUNCTION_21_100()
{
}

uint64_t OUTLINED_FUNCTION_21_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_21_106()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_21_107(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1E3F9F164(va, v2, v3 + 8);
}

id OUTLINED_FUNCTION_21_111(void *a1)
{

  return [a1 (v2 + 1656)];
}

id OUTLINED_FUNCTION_21_112()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_21_115(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return type metadata accessor for RoutingView(0, a4, a5, a4);
}

uint64_t OUTLINED_FUNCTION_21_117(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_118()
{

  return sub_1E3910324((v0 - 104), 3, v0 - 144);
}

id OUTLINED_FUNCTION_21_119(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_21_120(uint64_t a1)
{

  return sub_1E40C0A28();
}

void OUTLINED_FUNCTION_21_122(void *a1@<X8>)
{
  *(v2 + v1) = 0;
  *(v2 + a1[4]) = 0;
  *(v2 + a1[5]) = 0;
  *(v2 + a1[6]) = 0;
}

uint64_t OUTLINED_FUNCTION_21_123()
{
}

void OUTLINED_FUNCTION_21_126(uint64_t a1@<X0>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);

  sub_1E3C2FCB8(a1, va, &a39, &a35, &a19, &a31, v43, x8_0);
}

uint64_t OUTLINED_FUNCTION_21_128()
{

  return sub_1E3746E10(v0);
}

uint64_t OUTLINED_FUNCTION_21_129()
{
}

uint64_t sub_1E3280A90(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1E3280AD0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[4];
  v3 = VUISignpostLogObject(v2);
  sub_1E41FFBC4();
  v4 = sub_1E4206BA4();
  v5 = VUISignpostLogObject(v4);
  sub_1E41FFBA4();

  v6 = swift_task_alloc();
  v0[5] = v6;
  *(v6 + 16) = v1;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1E327247C;
  v8 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 7, 0, 0, 0xD000000000000019, 0x80000001E427E660, sub_1E3271440, v6, v8);
}

uint64_t OUTLINED_FUNCTION_66_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 160) = result;
  *(v3 - 152) = v2;
  *(v3 - 128) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_11(uint64_t a1)
{

  return sub_1E41FFC94();
}

void OUTLINED_FUNCTION_66_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_66_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E3925A34(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_66_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1E3B508D0();
}

uint64_t OUTLINED_FUNCTION_66_16()
{

  return sub_1E4201F44();
}

double OUTLINED_FUNCTION_66_18(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a1.n128_u64[0] = v5;
  a2.n128_u64[0] = v6;
  a3.n128_u64[0] = v7;
  a4.n128_u64[0] = v8;

  return j_nullsub_1(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_66_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_1E328438C(&a66, &a65);
}

id OUTLINED_FUNCTION_66_25(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

void *OUTLINED_FUNCTION_66_26(void *a1)
{

  return memcpy(a1, (v1 + 16), 0xC3uLL);
}

unint64_t OUTLINED_FUNCTION_66_27(uint64_t a1)
{

  return sub_1E3270FC8(a1, v2, (v1 + 232));
}

uint64_t OUTLINED_FUNCTION_66_28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1E3E499A8(0x20676E6973756170, 0xEF73636974706168, a3);
}

uint64_t OUTLINED_FUNCTION_66_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{

  return sub_1E34AF4DC(v31);
}

void OUTLINED_FUNCTION_66_31(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_66_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_66_33()
{
  v2 = *(v0 - 336);
}

uint64_t OUTLINED_FUNCTION_66_34()
{
  v5 = *(v3 - 128);

  return sub_1E3743538(v2, v5, v0, v1);
}

uint64_t OUTLINED_FUNCTION_66_36()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_66_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_66_38()
{

  return sub_1E4206724();
}

void OUTLINED_FUNCTION_12_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  a21 = a23;
  a22 = a24;

  sub_1E3C2FCB8(&a30, &a9, v35 - 176, &a26, &a21, &a34, v34, v35 - 160);
}

uint64_t OUTLINED_FUNCTION_42_11()
{

  return sub_1E4205C44();
}

uint64_t OUTLINED_FUNCTION_12_25(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_12_27()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_12_28()
{

  JUMPOUT(0x1E6910920);
}

uint64_t OUTLINED_FUNCTION_12_30()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_12_31@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;

  return sub_1E4202754();
}

void OUTLINED_FUNCTION_12_33(void *a1@<X8>)
{
  v3 = (v2 + v1);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v2 + a1[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v2 + a1[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + a1[8]);
  *v6 = 0;
  v6[1] = 0;
}

uint64_t OUTLINED_FUNCTION_12_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_12_36(uint64_t a1, ...)
{

  return sub_1E4207414();
}

uint64_t OUTLINED_FUNCTION_12_38()
{

  return sub_1E4205E84();
}

void OUTLINED_FUNCTION_12_42()
{

  JUMPOUT(0x1E6910BF0);
}

uint64_t OUTLINED_FUNCTION_12_46()
{

  return sub_1E4200BC4();
}

id OUTLINED_FUNCTION_12_47()
{

  return [v0 (v1 + 3960)];
}

uint64_t OUTLINED_FUNCTION_12_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_12_53(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_12_56(uint64_t a1)
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_12_62(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_65()
{
  v2 = STACK[0x2B0];
  v3 = v0[22];
  v0[18] = v0[21];
  v0[19] = v3;
  LOBYTE(STACK[0x280]) = v2;

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_12_70(void *a1)
{

  return sub_1E3F9F164(a1, v1, v2 + 8);
}

uint64_t OUTLINED_FUNCTION_12_74(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_12_76(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>, __n128 a8@<Q6>, __n128 a9@<Q7>)
{
  *(a1 + 8) = a2;
  *(a1 + 24) = a3;
  *(a1 + 40) = a4;
  *(a1 + 56) = a5;
  *(a1 + 72) = a6;
  *(a1 + 88) = a7;
  *(a1 + 104) = a8;
  *(a1 + 120) = a9;
  *(a1 + 136) = v9;
  *(a1 + 152) = v10;
  *(a1 + 168) = v11;
}

uint64_t OUTLINED_FUNCTION_12_78@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_12_81()
{
}

uint64_t OUTLINED_FUNCTION_13_27()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return v1;
}

void OUTLINED_FUNCTION_12_86(double a1, double a2, double a3, double a4)
{
  *&STACK[0x420] = a1;
  *&STACK[0x428] = a2;
  *&STACK[0x430] = a3;
  *&STACK[0x438] = a4;
  LOBYTE(STACK[0x440]) = 0;
}

uint64_t OUTLINED_FUNCTION_12_90(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4207414();
}

uint64_t OUTLINED_FUNCTION_12_91(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1E42038E4();
}

uint64_t OUTLINED_FUNCTION_12_92()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_12_93(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x78uLL);
}

id OUTLINED_FUNCTION_12_95()
{

  return [v0 (v1 + 3832)];
}

double OUTLINED_FUNCTION_12_97()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

id OUTLINED_FUNCTION_12_99()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_12_100()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_35_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1E41FFBA4();
}

__n128 OUTLINED_FUNCTION_12_103()
{
  v0 = STACK[0x270];
  result = *&STACK[0x250];
  v2 = *&STACK[0x260];
  *&STACK[0x220] = *&STACK[0x250];
  *&STACK[0x230] = v2;
  LOBYTE(STACK[0x240]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_104()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_105(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_106(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v4;
}

uint64_t OUTLINED_FUNCTION_12_108(unint64_t *a1)
{
  v4 = MEMORY[0x1E697FDF8];

  return sub_1E32752B0(a1, v1, v2, v4);
}

id OUTLINED_FUNCTION_12_109()
{
  v4 = *(v0 + v1);

  return [v4 (v2 + 2168)];
}

void OUTLINED_FUNCTION_12_112()
{
  STACK[0x290] = v0;
  STACK[0x298] = 0;
  STACK[0x2A0] = 0;
  STACK[0x2A8] = v0;
  LOBYTE(STACK[0x2B0]) = 0;
}

__n128 OUTLINED_FUNCTION_12_113(uint64_t a1)
{
  *(v2 - 272) = a1;
  result = *(v2 - 448);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_114()
{

  return sub_1E3F9F164((v2 - 152), v0, v1 + 8);
}

uint64_t OUTLINED_FUNCTION_12_120(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{

  return VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
}

void OUTLINED_FUNCTION_12_124(void *a1@<X8>)
{
  *(v1 + 64) = 0;
  *(v1 + 72) = v2;
  *(v1 + 80) = 0;
  *(v3 + a1[4]) = 0;
  *(v3 + a1[5]) = 0;
  *(v3 + a1[6]) = 0;
  *(v3 + a1[7]) = 0;
  v4 = v3 + a1[8];
  *v4 = 0;
  *(v4 + 8) = v2;
  *(v3 + a1[9]) = 0;
  *(v3 + a1[10]) = 0;
  *(v3 + a1[11]) = 0;
}

uint64_t OUTLINED_FUNCTION_12_125()
{

  return sub_1E3C3DE00();
}

void OUTLINED_FUNCTION_12_126(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void *OUTLINED_FUNCTION_12_128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x2C0], 0xE9uLL);
}

uint64_t OUTLINED_FUNCTION_12_130(unint64_t *a1, uint64_t a2, uint64_t a3)
{

  return sub_1E3E29A98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_12_131()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_12_132@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *v3;
  *(v2 + 96) = *v3;
  *(v2 + 104) = v3[1];
  return result;
}

__n128 OUTLINED_FUNCTION_12_133(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11, __int128 a12, uint64_t a13)
{
  result = a11;
  *v13 = a11;
  *(v13 + 16) = a12;
  *(v13 + 32) = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_136(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_140(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_145()
{

  return sub_1E42076B4();
}

uint64_t OUTLINED_FUNCTION_12_147()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_12_149()
{

  return sub_1E3F9F164((v2 - 176), v0, v1 + 8);
}

uint64_t OUTLINED_FUNCTION_12_150(double a1, double a2, double a3, double a4)
{
  *&STACK[0x310] = a1;
  *&STACK[0x318] = a2;
  *&STACK[0x320] = a3;
  *&STACK[0x328] = a4;
  LOBYTE(STACK[0x330]) = 0;
  return v4;
}

__n128 OUTLINED_FUNCTION_12_154()
{
  v0 = STACK[0x380];
  result = *&STACK[0x360];
  v2 = *&STACK[0x370];
  *&STACK[0x330] = *&STACK[0x360];
  *&STACK[0x340] = v2;
  LOBYTE(STACK[0x350]) = v0;
  return result;
}

void OUTLINED_FUNCTION_12_155(__n128 a1, __n128 a2, uint64_t a3)
{

  sub_1E3C8B764(a3, v4, 0.0);
}

uint64_t OUTLINED_FUNCTION_12_157()
{
}

uint64_t OUTLINED_FUNCTION_12_158(uint64_t a1)
{

  return sub_1E3AF46E0(a1, v1, v2, v3, 0, 1);
}

unint64_t OUTLINED_FUNCTION_12_159()
{

  return sub_1E374BD08(v0);
}

uint64_t OUTLINED_FUNCTION_12_167(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_174()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_12_175()
{

  return sub_1E42012F4();
}

uint64_t OUTLINED_FUNCTION_12_176(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, int a3, char a4, char a5, __int16 a6, char a7, uint64_t a8, uint64_t a9)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

double OUTLINED_FUNCTION_12_178()
{
  result = 0.0;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_12_179(void *a1)
{

  return memcpy(a1, (v1 + 3752), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_12_180(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695BFF8];

  return sub_1E32752B0(a1, a2, a3, v4);
}

unint64_t OUTLINED_FUNCTION_12_181(uint64_t a1)
{

  return sub_1E37518B8(v1, 31, a1);
}

uint64_t sub_1E3281FE4(void *a1)
{
  v1 = sub_1E42013A4();
  sub_1E3AEED14(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1E3282048(void *a1)
{
  v1 = sub_1E42013A4();
  sub_1E40AB7E4(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1E32820AC()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1E32821CC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t get_enum_tag_for_layout_string_SbIegy_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1E32822E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE23B650;
  if (!qword_1EE23B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B650);
  }

  return result;
}

uint64_t sub_1E3282334(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1E4207524();
  }

  result = sub_1E3294878(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

void sub_1E3282410()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v129 = v2;
  v130 = v3;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D5C0, &unk_1E42E2650);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v117 = &v109[-v8];
  sub_1E4204454();
  OUTLINED_FUNCTION_0_10();
  v125 = v10;
  v126 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v118 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v109[-v15];
  v16 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v119 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v109[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v24);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v109[-v26];
  v28 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v33);
  v116 = &v109[-v34];
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v123 = v36;
  v124 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  v41 = VUISignpostLogObject(v40);
  sub_1E41FFBC4();
  v42 = sub_1E4206BA4();
  v43 = VUISignpostLogObject(v42);
  v122 = v39;
  sub_1E41FFBA4();

  v44 = [objc_opt_self() vui_defaultBag];
  if (v44)
  {
    v45 = v44;
    *&v1[OBJC_IVAR____TtC8VideosUI20VUIJetPackController_bag] = v44;
    sub_1E37E93E8(v5, v27, &unk_1ECF363C0, &unk_1E42A9420);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v28);
    v47 = v1;
    v48 = v16;
    v128 = v5;
    v120 = v45;
    if (EnumTagSinglePayload == 1)
    {
      v49 = v45;
      sub_1E325F6F0(v27, &unk_1ECF363C0, &unk_1E42A9420);
      v50 = v119;
    }

    else
    {
      v112 = v1;
      v51 = v116;
      (*(v30 + 32))(v116, v27, v28);
      v52 = v45;
      v53 = sub_1E41FE314();
      v55 = v54;

      v56 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v56 = v53 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v119;
      if (v56)
      {
        v57 = sub_1E4205ED4();
        v58 = MGGetBoolAnswer();

        if (v58)
        {
          v59 = sub_1E324FBDC();
          v60 = v115;
          (*(v50 + 16))(v115, v59, v48);
          v61 = *(v30 + 16);
          v118 = v30 + 16;
          v117 = v61;
          (v61)(v113, v51, v28);
          v62 = v50;
          v63 = sub_1E41FFC94();
          v64 = sub_1E4206814();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            *&v133 = v111;
            *v65 = 136315138;
            sub_1E3283038(&qword_1EE28A470, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v110 = v64;
            v66 = sub_1E4207944();
            v68 = v67;
            v69 = OUTLINED_FUNCTION_19_142();
            v5(v69);
            v70 = sub_1E3270FC8(v66, v68, &v133);

            *(v65 + 4) = v70;
            _os_log_impl(&dword_1E323F000, v63, v110, "JetPackController:: use override URL: %s", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v111);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();

            (*(v62 + 8))(v115, v48);
          }

          else
          {

            v102 = OUTLINED_FUNCTION_19_142();
            v5(v102);
            (*(v62 + 8))(v60, v48);
          }

          v104 = v125;
          v103 = v126;
          v105 = v121;
          (*(v125 + 104))(v121, *MEMORY[0x1E69AAEB0], v126);
          *(swift_allocObject() + 16) = 1;
          v134 = sub_1E4204324();
          v135 = sub_1E3283038(&qword_1EE23B6B8, MEMORY[0x1E69AAE58], MEMORY[0x1E69AAE50]);
          __swift_allocate_boxed_opaque_existential_1(&v133);
          v106 = v116;
          (v117)(v114, v116, v28);
          v107 = OUTLINED_FUNCTION_24_4();
          v108(v107);
          sub_1E4204334();
          (*(v104 + 8))(v105, v103);
          (v5)(v106, v28);
          v47 = v112;
          sub_1E3251BE8(&v133, v112 + OBJC_IVAR____TtC8VideosUI20VUIJetPackController_location);
          v91 = v120;
          goto LABEL_19;
        }
      }

      (*(v30 + 8))(v51, v28);
      v47 = v112;
    }

    v71 = sub_1E324FBDC();
    (*(v50 + 16))(v21, v71, v48);
    v72 = v129;
    v73 = sub_1E41FFC94();
    v74 = sub_1E4206814();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v119 = v48;
      v77 = v47;
      v78 = v76;
      v131 = v76;
      *v75 = 136315138;
      type metadata accessor for AMSBagKey(0);
      v134 = v79;
      *&v133 = v72;
      v80 = v72;
      v81 = sub_1E3294FA4(&v133);
      v83 = sub_1E3270FC8(v81, v82, &v131);

      *(v75 + 4) = v83;
      _os_log_impl(&dword_1E323F000, v73, v74, "JetPackController:: fallback to bag key %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      v47 = v77;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v50 + 8))(v21, v119);
    }

    else
    {

      v84 = OUTLINED_FUNCTION_24_4();
      v86(v84, v85);
    }

    v88 = v125;
    v87 = v126;
    v89 = v118;
    v90 = v117;
    sub_1E37E93E8(v130, v117, &qword_1ECF3D5C0, &unk_1E42E2650);
    if (__swift_getEnumTagSinglePayload(v90, 1, v87) == 1)
    {
      v88[13](v89, *MEMORY[0x1E69AAEB8], v87);
      if (__swift_getEnumTagSinglePayload(v90, 1, v87) != 1)
      {
        sub_1E325F6F0(v90, &qword_1ECF3D5C0, &unk_1E42E2650);
      }
    }

    else
    {
      (v88)[4](v89, v90, v87);
    }

    *(swift_allocObject() + 16) = 0;
    v134 = sub_1E4204354();
    v135 = sub_1E3283038(&qword_1EE23B6B0, MEMORY[0x1E69AAE70], MEMORY[0x1E69AAE68]);
    __swift_allocate_boxed_opaque_existential_1(&v133);
    (v88)[2](v121, v89, v87);
    v91 = v120;
    v92 = v120;
    v93 = v72;
    sub_1E4204364();
    v94 = OUTLINED_FUNCTION_24_4();
    v95(v94);
    sub_1E3251BE8(&v133, v47 + OBJC_IVAR____TtC8VideosUI20VUIJetPackController_location);
LABEL_19:
    v96 = v128;
    v132.receiver = v47;
    v132.super_class = ObjectType;
    v97 = objc_msgSendSuper2(&v132, sel_init);

    v98 = v97;
    v99 = sub_1E4206B94();
    v100 = VUISignpostLogObject(v99);
    v101 = v122;
    sub_1E41FFBA4();

    sub_1E325F6F0(v130, &qword_1ECF3D5C0, &unk_1E42E2650);
    sub_1E325F6F0(v96, &unk_1ECF363C0, &unk_1E42A9420);
    (*(v123 + 8))(v101, v124);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3283038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3283080(uint64_t a1)
{
  result = sub_1E41FE414();
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

uint64_t sub_1E3283118(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1E4204CF4();
  OUTLINED_FUNCTION_106();
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = v15;

  sub_1E3836FEC(0, 0, v14, a6, v20);

  return v15;
}

uint64_t sub_1E3283248()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FE414();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_107_1();
  v0[7] = swift_task_alloc();
  v5 = sub_1E41FFCB4();
  v0[8] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_107_1();
  v0[11] = swift_task_alloc();
  v7 = sub_1E41FFBF4();
  v0[12] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_86_0();
  v9 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E328339C(uint64_t a1)
{
  v2 = VUISignpostLogObject(a1);
  sub_1E41FFBC4();
  v3 = sub_1E4206BA4();
  v4 = VUISignpostLogObject(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E4297BE0;
  v6 = sub_1E41FE314();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1E3283528(v6, v7, v9);
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_1E41FFB94();

  v10 = swift_task_alloc();
  *(v1 + 120) = v10;
  *v10 = v1;
  v10[1] = sub_1E3F73300;

  return sub_1E328357C();
}

unint64_t sub_1E3283528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE23B640;
  if (!qword_1EE23B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B640);
  }

  return result;
}

uint64_t sub_1E328357C()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 120) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_1E41FE414();
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_8_0(v4);
  *(v1 + 40) = v5;
  *(v1 + 48) = OUTLINED_FUNCTION_86_0();
  v6 = sub_1E41FDDF4();
  *(v1 + 56) = v6;
  OUTLINED_FUNCTION_8_0(v6);
  *(v1 + 64) = v7;
  *(v1 + 72) = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_168_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = 0;
}

void OUTLINED_FUNCTION_168_3()
{

  JUMPOUT(0x1E6911E60);
}

uint64_t sub_1E32836DC()
{
  OUTLINED_FUNCTION_24();
  (*(*(v0 + 40) + 16))(*(v0 + 48), *(v0 + 16), *(v0 + 32));
  sub_1E41FDDB4();
  sub_1E41FDD74();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1E39C8130;
  v2 = *(v0 + 72);
  v3 = *(v0 + 120);

  return sub_1E32837B8(v2, v3);
}

uint64_t sub_1E32837B8(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  OUTLINED_FUNCTION_169();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E32837E8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v2[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2[2].i8[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30060, &qword_1E42B0100);
  *v3 = v0;
  v3[1] = sub_1E39C7F78;
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DE38](v4, v5, v6, 0xD00000000000001ELL, v7, v8, v2, v9);
}

void sub_1E3283900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30070, &qword_1E42B0250);
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &a9 - v29;
  (*(v26 + 16))(&a9 - v29, v23, v24, v28);
  v31 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v32 = swift_allocObject();
  (*(v26 + 32))(v32 + v31, v30, v24);
  sub_1E327DF50();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3283A44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30070, &qword_1E42B0250);
  OUTLINED_FUNCTION_37_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E3283AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  v5 = OUTLINED_FUNCTION_11_1();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3283AFC()
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1E3D1EC5C;

    return sub_1E326CF34();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t OUTLINED_FUNCTION_36_10()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_36_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36_13(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695BC80];

  return sub_1E32752B0(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_36_15(unint64_t *a1)
{

  return sub_1E3827828(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_36_16(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

double OUTLINED_FUNCTION_36_18@<D0>(char a1@<W8>)
{
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_19()
{
}

unint64_t OUTLINED_FUNCTION_36_20@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1E3270FC8(0xD00000000000001FLL, a1 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_36_21(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_36_24(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{

  return VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
}

uint64_t OUTLINED_FUNCTION_36_25()
{
  v4 = *(v1 + 56) + 32 * v0;

  return sub_1E328438C(v4, v2 - 224);
}

unint64_t OUTLINED_FUNCTION_36_26(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E381F390(a1);
}

uint64_t OUTLINED_FUNCTION_36_28()
{
}

uint64_t OUTLINED_FUNCTION_36_31()
{

  return swift_arrayDestroy();
}

double OUTLINED_FUNCTION_36_32(__n128 a1)
{
  a1.n128_u64[0] = 5.0;

  return j__OUTLINED_FUNCTION_7_78(a1);
}

uint64_t OUTLINED_FUNCTION_36_33@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *OUTLINED_FUNCTION_36_34(void *a1)
{

  return memcpy(a1, v1, 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_36_36()
{
}

void OUTLINED_FUNCTION_36_37()
{
  v1 = *(v0 + 1488);
  if (*(v0 + 1512))
  {
    v1 = 0;
  }

  *(v0 + 32) = v1;
}

uint64_t OUTLINED_FUNCTION_36_38(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a9;
}

void OUTLINED_FUNCTION_36_40()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_48_8(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_36_42()
{
}

void OUTLINED_FUNCTION_36_43()
{
  *(v0 - 172) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
}

void OUTLINED_FUNCTION_36_44()
{
  STACK[0x2B0] = 0x406D000000000000;
  LOBYTE(STACK[0x2B8]) = 0;
  STACK[0x280] = 0x4070800000000000;
  LOBYTE(STACK[0x288]) = 0;
}

uint64_t OUTLINED_FUNCTION_36_45(uint64_t a1, uint64_t a2)
{
}

uint64_t OUTLINED_FUNCTION_36_46()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_36_47(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_36_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_36_51(__n128 a1, double a2, double a3, double a4)
{
  STACK[0x2E0] = a1.n128_u64[0];
  *&STACK[0x2E8] = a2;
  *&STACK[0x2F0] = a3;
  *&STACK[0x2F8] = a4;
  LOBYTE(STACK[0x300]) = 0;

  sub_1E3952C88();
}

uint64_t OUTLINED_FUNCTION_36_52(uint64_t a1)
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_36_54()
{

  return sub_1E325F6F0(v0 + 640, v1, v2);
}

uint64_t OUTLINED_FUNCTION_36_55()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_36_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a9 = v13;
  a10 = v14;
  a11 = v15;
  a12 = v12;

  return type metadata accessor for LazyHStickySection(0, &a9);
}

uint64_t OUTLINED_FUNCTION_36_59(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_36_63()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_36_66()
{
  v1 = STACK[0x2C0];
  v2 = *&STACK[0x2B0];
  *&STACK[0x270] = *&STACK[0x2A0];
  *&STACK[0x280] = v2;
  LOBYTE(STACK[0x290]) = v1;
  return v0;
}

void *OUTLINED_FUNCTION_36_68(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(__srca, a14);
  __src = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v15 = (a1 + 16);

  return memcpy(v15, __srca, 0x5AuLL);
}

void OUTLINED_FUNCTION_36_70()
{

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_36_72()
{

  return type metadata accessor for StateMachine(0, v0 - 144);
}

uint64_t OUTLINED_FUNCTION_36_73()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0xE000000000000000;

  return sub_1E42074B4();
}

uint64_t OUTLINED_FUNCTION_36_75()
{
}

uint64_t OUTLINED_FUNCTION_36_76(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

CATransform3D *OUTLINED_FUNCTION_36_77@<X0>(CATransform3D *a1@<X8>)
{

  return CATransform3DMakeTranslation(a1, v2, 0.0, 0.0);
}

uint64_t OUTLINED_FUNCTION_36_78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1E328FCF4(a1, a2, a3);
}

void OUTLINED_FUNCTION_36_80()
{
  v5 = *(v1 + *(v0 + 60));
  *(v4 - 248) = v2;
  v6 = (v3 + *(v2 + 52));
  *v6 = v5;
  v6[1] = 0;
  *(v4 - 224) = v6;
}

uint64_t sub_1E328438C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E3284408(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3284440()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  ObjectType = swift_getObjectType();
  v0[9] = v2;
  v0[10] = ObjectType;
  v0[7] = v6;
  v0[8] = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6A0, &qword_1E42E29D8);
  v0[11] = v8;
  OUTLINED_FUNCTION_8_0(v8);
  v0[12] = v9;
  v0[13] = OUTLINED_FUNCTION_86_0();
  v10 = sub_1E42043F4();
  v0[14] = v10;
  OUTLINED_FUNCTION_8_0(v10);
  v0[15] = v11;
  v0[16] = OUTLINED_FUNCTION_86_0();
  v12 = sub_1E42042E4();
  v0[17] = v12;
  OUTLINED_FUNCTION_8_0(v12);
  v0[18] = v13;
  v0[19] = OUTLINED_FUNCTION_86_0();
  v14 = sub_1E4204434();
  v0[20] = v14;
  OUTLINED_FUNCTION_8_0(v14);
  v0[21] = v15;
  v0[22] = OUTLINED_FUNCTION_86_0();
  v16 = sub_1E4204414();
  v0[23] = v16;
  OUTLINED_FUNCTION_8_0(v16);
  v0[24] = v17;
  v0[25] = OUTLINED_FUNCTION_86_0();
  v18 = sub_1E42043A4();
  v0[26] = v18;
  OUTLINED_FUNCTION_8_0(v18);
  v0[27] = v19;
  v0[28] = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1EE23B200)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B200);
    }
  }
}

uint64_t sub_1E3284744()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3284BA4()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_14_3(v6);
  *v7 = v8;
  v7[1] = sub_1E3286A7C;

  return sub_1E3284C48(v4, v2, v5);
}

uint64_t sub_1E3284C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3284D24()
{
  OUTLINED_FUNCTION_24();
  sub_1E4204484();
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 80) = v1;
  *v1 = v2;
  v1[1] = sub_1E3286958;
  v3 = *(v0 + 56);

  return MEMORY[0x1EEE15D10](v3, v0 + 16);
}

uint64_t *_s8VideosUIAAC19initializeUIFactoryyyFZ_0()
{
  if (qword_1EE28F150 != -1)
  {
    OUTLINED_FUNCTION_3_175(&qword_1EE28F150);
  }

  return &qword_1EE2AA7D8;
}

id sub_1E32850D0()
{
  result = [objc_allocWithZone(type metadata accessor for UIFactory()) init];
  qword_1EE2AA7D8 = result;
  return result;
}

void sub_1E3285124()
{
  OUTLINED_FUNCTION_31_1();
  ObjectType = swift_getObjectType();
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v6 = OBJC_IVAR____TtC8VideosUI9UIFactory_purgeCacheOnLoad;
  sub_1E32855D8();
  v0[v6] = v7 & 1;
  v37.receiver = v0;
  v37.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v37, sel_init);
  v9 = sub_1E4206BA4();
  v10 = VUISignpostLogObject(v9);
  OUTLINED_FUNCTION_21_81();
  OUTLINED_FUNCTION_35_11(v9, &dword_1E323F000, v1, "Launch.initUIFactory", 20);

  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_13_8();
  v11(v12);

  v13 = [objc_opt_self() sharedInterfaceFactory];
  [v13 setExtendedInterfaceCreator_];

  v14 = sub_1E4206BA4();
  v15 = VUISignpostLogObject(v14);
  OUTLINED_FUNCTION_21_81();
  OUTLINED_FUNCTION_35_11(v14, &dword_1E323F000, v1, "Launch.initUIFactory.setupSyndication", 37);

  v16 = OUTLINED_FUNCTION_13_8();
  v11(v16);
  if (([objc_opt_self() isRemoteApp] & 1) == 0)
  {
    v17 = sub_1E3285D14();
    v18 = *((*MEMORY[0x1E69E7D40] & **v17) + 0xE8);
    v1 = ((*MEMORY[0x1E69E7D40] & **v17) + 232);
    v19 = *v17;
    v18();
  }

  v20 = sub_1E4206B94();
  v21 = VUISignpostLogObject(v20);
  OUTLINED_FUNCTION_21_81();
  OUTLINED_FUNCTION_35_11(v20, &dword_1E323F000, v1, "Launch.initUIFactory.setupSyndication", 37);

  v22 = OUTLINED_FUNCTION_13_8();
  v11(v22);
  sub_1E3286464();
  v23 = objc_opt_self();
  v24 = [v23 sharedInstance];
  [v24 setDocumentCreator_];

  v25 = OUTLINED_FUNCTION_9_123();
  [v25 setOpenURLHandler_];

  v26 = OUTLINED_FUNCTION_9_123();
  [v26 setLanguageStringHandler_];

  v27 = OUTLINED_FUNCTION_9_123();
  [v27 setTimedMetadataManager_];

  v28 = OUTLINED_FUNCTION_9_123();
  [v28 setMusicManager_];

  v29 = OUTLINED_FUNCTION_9_123();
  [v29 setDownloadQueueManager_];

  v30 = OUTLINED_FUNCTION_9_123();
  [v30 setBackgroundTaskManager_];

  v31 = OUTLINED_FUNCTION_9_123();
  type metadata accessor for SeasonsDownloadViewControllerCreator();
  v32 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  [v31 setSeasonsControllerCreator_];

  v33 = OUTLINED_FUNCTION_9_123();
  [v33 setPlaybackMetricsQueueManager_];

  v34 = sub_1E4206B94();
  v35 = VUISignpostLogObject(v34);
  OUTLINED_FUNCTION_21_81();
  OUTLINED_FUNCTION_35_11(v34, &dword_1E323F000, v23, "Launch.initUIFactory", 20);

  v36 = OUTLINED_FUNCTION_13_8();
  v11(v36);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E32855D8()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v42 - v7;
  v9 = objc_opt_self();
  v10 = sub_1E32859C4(v9, &selRef_getOSVersion);
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  v14 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

LABEL_13:
    v24 = sub_1E324FBDC();
    (*(v2 + 16))(v5, v24, v0);
    v25 = sub_1E41FFC94();
    v26 = sub_1E42067F4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1E323F000, v25, v26, "VideosUI::initializing asset library failed to get osVersion.", v27, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v2 + 8))(v5, v0);
    goto LABEL_21;
  }

  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  v17 = sub_1E4205ED4();
  v18 = [v16 stringForKey_];

  if (v18)
  {
    v19 = sub_1E4205F14();
    v21 = v20;

    if (v19 == v12 && v13 == v21)
    {

LABEL_20:

      goto LABEL_21;
    }

    v23 = sub_1E42079A4();

    if (v23)
    {
      goto LABEL_20;
    }
  }

  v28 = sub_1E324FBDC();
  (*(v2 + 16))(v8, v28, v0);

  v29 = sub_1E41FFC94();
  v30 = sub_1E42067D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42[0] = "tory.initAssetLib";
    v42[1] = v32;
    v33 = v32;
    *v31 = 67109378;
    *(v31 + 4) = 1;
    *(v31 + 8) = 2080;
    v34 = OUTLINED_FUNCTION_74();
    *(v31 + 10) = sub_1E3270FC8(v34, v35, v36);
    _os_log_impl(&dword_1E323F000, v29, v30, "VideosUI::initializing asset library - purge on load %{BOOL}d for version %s", v31, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v37 = OUTLINED_FUNCTION_16_0();
  v38(v37);
  v39 = [v15 standardUserDefaults];
  OUTLINED_FUNCTION_74();
  v40 = sub_1E4205ED4();

  v41 = sub_1E4205ED4();
  [v39 setValue:v40 forKey:v41];

LABEL_21:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E32859C4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1E4205F14();

  return v4;
}

uint64_t *sub_1E3285D14()
{
  if (qword_1EE2A2330 != -1)
  {
    OUTLINED_FUNCTION_2_236(&qword_1EE2A2330);
  }

  return &qword_1EE2AB078;
}

id sub_1E3285D54()
{
  result = [objc_allocWithZone(type metadata accessor for HighlightsManager()) init];
  qword_1EE2AB078 = result;
  return result;
}

char *sub_1E3285DCC()
{
  v1 = OBJC_IVAR____TtC8VideosUI17HighlightsManager_highlightCenter;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69D3818]) init];
  *&v0[OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap] = 0;
  v2 = &v0[OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = OBJC_IVAR____TtC8VideosUI17HighlightsManager_cachedDSID;
  *&v0[v3] = [objc_opt_self() DSID];
  *&v0[OBJC_IVAR____TtC8VideosUI17HighlightsManager_internalHighlightsVersion] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for HighlightsManager();
  v4 = objc_msgSendSuper2(&v9, sel_init);
  v5 = *&v4[OBJC_IVAR____TtC8VideosUI17HighlightsManager_highlightCenter];
  v6 = v4;
  [v5 setDelegate_];
  [objc_opt_self() useNewDefaultBackgroundStyle];
  v7 = [objc_opt_self() defaultCenter];
  [v7 addObserver:v6 selector:sel_handleAccountStoreDidChange_ name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

  return v6;
}

void sub_1E328600C()
{
  OUTLINED_FUNCTION_31_1();
  v32 = v0;
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = sub_1E324FBDC();
  v34 = v3;
  v11 = *(v3 + 16);
  v11(v9, v10, v1);
  v12 = sub_1E41FFC94();
  v33 = sub_1E4206814();
  if (os_log_type_enabled(v12, v33))
  {
    v13 = OUTLINED_FUNCTION_6_21();
    v31 = v6;
    v14 = v13;
    v30 = OUTLINED_FUNCTION_100();
    v35 = v30;
    *v14 = 136315138;
    v15 = [objc_opt_self() isEnabled];
    v16 = v15 == 0;
    if (v15)
    {
      v17 = 0x44454C42414E45;
    }

    else
    {
      v17 = 0x44454C4241534944;
    }

    v18 = v11;
    v19 = v10;
    if (v16)
    {
      v20 = 0xE800000000000000;
    }

    else
    {
      v20 = 0xE700000000000000;
    }

    v21 = sub_1E3270FC8(v17, v20, &v35);
    v10 = v19;
    v11 = v18;

    v22 = v14;
    *(v14 + 4) = v21;
    v23 = v34;
    _os_log_impl(&dword_1E323F000, v12, v33, "Syndication::SocialLayer Global feature flag %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_6_0();
    v6 = v31;
    OUTLINED_FUNCTION_6_0();

    v24 = v23;
  }

  else
  {

    v24 = v34;
  }

  v25 = *(v24 + 8);
  v25(v9, v1);
  if ([objc_opt_self() isEnabled])
  {
    if ([objc_opt_self() userHasActiveAccount])
    {
      OUTLINED_FUNCTION_21();
      (*(v26 + 240))();
    }

    else
    {
      v11(v6, v10, v1);
      v27 = sub_1E41FFC94();
      v28 = sub_1E4206814();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = OUTLINED_FUNCTION_125_0();
        *v29 = 0;
        _os_log_impl(&dword_1E323F000, v27, v28, "Syndication::No active user account", v29, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v25(v6, v1);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3286330(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E3278744(a1, a2);
  sub_1E3286380(&unk_1F5D517F0);
  return v3;
}

uint64_t sub_1E3286380(uint64_t result)
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

    result = sub_1E37409F4(result, v7, 1, v3);
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

void sub_1E3286464()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v38 = v6 - v5;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v10 = sub_1E4206BA4();
  v11 = VUISignpostLogObject(v10);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_11(v10, &dword_1E323F000, v11, "Launch.initUIFactory.initAssetLib", 33);

  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_13_8();
  v12(v13);
  v14 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v15 = sub_1E42062B4();

  if (*(v15 + 16) && (v37 = v12, , , v16 = [objc_opt_self() mainBundle], sub_1E32868C0(v16, &selRef_bundleIdentifier), v17))
  {
    v18 = sub_1E4205ED4();

    v19 = sub_1E4205ED4();

    v20 = sub_1E4205ED4();
    v36 = v18;

    v21 = *(v0 + OBJC_IVAR____TtC8VideosUI9UIFactory_purgeCacheOnLoad);
    v22 = sub_1E324FBDC();
    (*(v3 + 16))(v38, v22, v1);
    v23 = sub_1E41FFC94();
    v24 = sub_1E4206814();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = v1;
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      v27 = sub_1E328692C(v21);
      v29 = v3;
      v30 = sub_1E3270FC8(v27, v28, &v39);

      *(v25 + 4) = v30;
      v31 = v21;
      _os_log_impl(&dword_1E323F000, v23, v24, "VideosUI::initializing asset library, purgeOnLoad: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v29 + 8))(v38, v35);
    }

    else
    {

      (*(v3 + 8))(v38, v1);
      v31 = v21;
    }

    v12 = v37;
    [objc_opt_self() initializeAssetLibraryWithCachePath:v36 purgeCacheOnLoad:v31];
  }

  else
  {
  }

  v32 = sub_1E4206B94();
  v33 = VUISignpostLogObject(v32);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_11(v32, &dword_1E323F000, v33, "Launch.initUIFactory.initAssetLib", 33);

  v34 = OUTLINED_FUNCTION_13_8();
  v12(v34);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E32868C0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1E4205F14();

  return v4;
}

uint64_t sub_1E328692C(char a1)
{
  if (a1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_1E3286958()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 88) = v0;

  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v9();
  }
}

uint64_t sub_1E3286A7C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t *sub_1E3286BF0()
{
  if (qword_1EE2A55E0 != -1)
  {
    OUTLINED_FUNCTION_138_4(&qword_1EE2A55E0);
  }

  return &qword_1EE2AB170;
}

uint64_t OUTLINED_FUNCTION_118_0(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(*(v2 + 128) + 16);
}

void OUTLINED_FUNCTION_118_2()
{

  JUMPOUT(0x1E6910BF0);
}

uint64_t OUTLINED_FUNCTION_118_4()
{
}

uint64_t OUTLINED_FUNCTION_118_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_118_6()
{
}

uint64_t OUTLINED_FUNCTION_118_14(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

id sub_1E3286D9C()
{
  result = [objc_allocWithZone(type metadata accessor for OpenURLHandler(0)) init];
  qword_1EE2AB170 = result;
  return result;
}

uint64_t type metadata accessor for OpenURLHandler(uint64_t a1)
{
  result = qword_1EE2A55C8;
  if (!qword_1EE2A55C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3286E1C(uint64_t a1)
{
  sub_1E3286EF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3286EF4(uint64_t a1)
{
  if (!qword_1EE28A468)
  {
    sub_1E41FE414();
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE28A468);
    }
  }
}

id sub_1E3286F4C()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_openedByDeeplink] = 0;
  v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_isMultiOffer] = 0;
  v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler__isFinished] = 1;
  v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler__isLoadingSharedWatchURL] = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredOpenURLCompletion);
  v5 = [objc_opt_self() vui_defaultBag];
  v6 = OBJC_IVAR____TtC8VideosUI14OpenURLHandler_amsURLParser;
  v7 = [objc_allocWithZone(MEMORY[0x1E698CB70]) initWithBag_];

  *&v0[v6] = v7;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredAMSDynamicURLCompletion);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_offerURLString);
  *&v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_contextData] = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelTitle);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI14OpenURLHandler_subscriptionChannelLink);
  *&v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_isFinishedLock] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI14OpenURLHandler_isLoadingSharedWatchURLLock] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for OpenURLHandler(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t *sub_1E32870AC()
{
  if (qword_1EE295930 != -1)
  {
    OUTLINED_FUNCTION_0_240(&qword_1EE295930);
  }

  return &qword_1EE2AAB58;
}

id sub_1E32870EC()
{
  result = [objc_allocWithZone(type metadata accessor for LanguageAwareStringHandler()) init];
  qword_1EE2AAB58 = result;
  return result;
}

id sub_1E3287140()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareStringHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t *sub_1E3287198()
{
  if (qword_1EE29C720 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_1EE29C720);
  }

  return &qword_1EE2AADD8;
}

id sub_1E32871D8()
{
  result = [objc_allocWithZone(type metadata accessor for TimedMetadataManager(0)) init];
  qword_1EE2AADD8 = result;
  return result;
}

uint64_t type metadata accessor for TimedMetadataManager(uint64_t a1)
{
  result = qword_1EE29C710;
  if (!qword_1EE29C710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3287258(uint64_t a1)
{
  result = sub_1E41FFCB4();
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

id sub_1E328731C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI20TimedMetadataManager_playbackInfos] = MEMORY[0x1E69E7CC0];
  sub_1E41FFCA4();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v7, sel_init);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedInstance];
  [v5 setTimedMetadataManager_];

  return v4;
}

uint64_t *sub_1E328740C()
{
  if (qword_1EE2A7888 != -1)
  {
    OUTLINED_FUNCTION_40_47(&qword_1EE2A7888);
  }

  return &qword_1EE2AB240;
}

id sub_1E328744C()
{
  result = [objc_allocWithZone(type metadata accessor for MusicManager(0)) init];
  qword_1EE2AB240 = result;
  return result;
}

uint64_t type metadata accessor for MusicManager(uint64_t a1)
{
  result = qword_1EE2A7870;
  if (!qword_1EE2A7870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E32874CC(uint64_t a1)
{
  result = sub_1E41FFCB4();
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

id sub_1E32875AC()
{
  v1 = sub_1E4204084();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E3287754(6);
  v8 = &v0[OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistId];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI12MusicManager_playlistListenerTask] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistSongsIDs] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI12MusicManager_pendingAddedSongs] = MEMORY[0x1E69E7CD0];
  v9 = &v0[OBJC_IVAR____TtC8VideosUI12MusicManager_defaultArtworkSymbol];
  strcpy(&v0[OBJC_IVAR____TtC8VideosUI12MusicManager_defaultArtworkSymbol], "music.app.fill");
  v9[15] = -18;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for MusicManager(0);
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 sharedInstance];
  [v13 setMusicManager_];

  (*(v3 + 104))(v7, *MEMORY[0x1E69B2930], v1);
  sub_1E4204094();
  sub_1E32879B8();

  return v12;
}

uint64_t sub_1E3287754(char a1)
{
  sub_1E32877AC(a1);

  return sub_1E41FFCA4();
}

unint64_t sub_1E32877AC(char a1)
{
  result = 0x746C7561666544;
  switch(a1)
  {
    case 1:
      result = 0x4265646F73697045;
      break;
    case 2:
      result = 0x74634170756F7247;
      break;
    case 3:
      result = 0x737261504C4D5448;
      break;
    case 4:
      result = 0x7972617262694CLL;
      break;
    case 5:
      result = 0x6B6E694C6576694CLL;
      break;
    case 6:
      result = 0x636973754DLL;
      break;
    case 7:
      result = 0x6C6C65737055;
      break;
    case 8:
      result = 0x72616365726F6353;
      break;
    case 9:
      result = 0x7374726F7053;
      break;
    case 10:
      result = 0x6F446E6F73616553;
      break;
    case 11:
      result = 0x756F72676B636142;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0x736E657478455654;
      break;
    case 14:
      result = 0x7669747369737341;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1E32879B8()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1EE28E720 != -1)
  {
    OUTLINED_FUNCTION_9_108(&qword_1EE28E720);
  }

  v1 = qword_1EE2AA7B0;
  v2 = [objc_opt_self() mainQueue];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1E3C9A290;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1E3A5EE04;
  v6[3] = &block_descriptor_85;
  v4 = _Block_copy(v6);

  v5 = [v0 addObserverForName:v1 object:0 queue:v2 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

uint64_t sub_1E3287B34()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E3287B6C()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  qword_1EE2AA7B0 = result;
  return result;
}

uint64_t *sub_1E3287BA0()
{
  if (qword_1EE29DC20 != -1)
  {
    OUTLINED_FUNCTION_35_80(&qword_1EE29DC20);
  }

  return &qword_1EE2AAE50;
}

uint64_t OUTLINED_FUNCTION_7_37()
{
  v1 = STACK[0x260];
  v2 = *&STACK[0x250];
  *&STACK[0x210] = *&STACK[0x240];
  *&STACK[0x220] = v2;
  LOBYTE(STACK[0x230]) = v1;

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_34_16(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695BDE0];

  return sub_1E32752B0(a1, a2, a3, v4);
}

double OUTLINED_FUNCTION_34_17()
{
  result = 0.0;
  *(v0 - 256) = 0u;
  *(v0 - 240) = 0u;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_20()
{

  return sub_1E4205CB4();
}

uint64_t OUTLINED_FUNCTION_34_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_34_25(uint64_t a1)
{
  v5 = *(v1 + 216);

  return sub_1E3743538(a1, v5, v2, v3);
}

uint64_t OUTLINED_FUNCTION_34_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return swift_getOpaqueTypeConformance2();
}

__n128 OUTLINED_FUNCTION_34_27()
{
  result = *(v0 + 144);
  v2 = *(v0 + 160);
  *(v0 + 96) = result;
  *(v0 + 112) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_28(uint64_t a1)
{

  return sub_1E4207644();
}

CGFloat OUTLINED_FUNCTION_34_30()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[3];
  v5 = v0[2];

  return CGRectGetMaxY(*&v2);
}

double OUTLINED_FUNCTION_34_32()
{
  *(v0 + 200) = 0;
  result = 0.0;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_35()
{

  return sub_1E42006B4();
}

uint64_t OUTLINED_FUNCTION_34_36@<X0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = 0;
  *(v2 + v1[2]) = 1;
  *(v2 + v1[3]) = 0;
  *(v2 + v1[4]) = 0;

  return _s12GradientViewCMa();
}

void *OUTLINED_FUNCTION_34_38(double a1)
{
  *(v1 + 8) = a1;

  return memcpy((v1 + 16), (v2 + 16), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_34_39()
{
}

id OUTLINED_FUNCTION_34_41()
{

  return [v0 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_34_45(uint64_t a1)
{

  return sub_1E3743538(a1, v1 + 1256, v2, v3);
}

void OUTLINED_FUNCTION_34_46(uint64_t a1)
{

  sub_1E3C2C6A0();
}

uint64_t OUTLINED_FUNCTION_34_48(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;
  return v2;
}

uint64_t OUTLINED_FUNCTION_34_49()
{

  return sub_1E4207C94();
}

uint64_t OUTLINED_FUNCTION_34_50()
{

  return sub_1E4207B64();
}

uint64_t OUTLINED_FUNCTION_34_56(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{

  return VUIRectWithFlippedOriginRelativeToBoundingRect();
}

uint64_t OUTLINED_FUNCTION_34_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1E42076B4();
}

id OUTLINED_FUNCTION_34_59(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v6 + 2040)];
}

uint64_t OUTLINED_FUNCTION_34_61(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_64()
{

  return sub_1E4200F34();
}

void OUTLINED_FUNCTION_34_67(double a1, double a2, double a3, double a4)
{
  *&STACK[0x3D0] = a1;
  *&STACK[0x3D8] = a2;
  *&STACK[0x3E0] = a3;
  *&STACK[0x3E8] = a4;
  LOBYTE(STACK[0x3F0]) = 0;
}

uint64_t OUTLINED_FUNCTION_34_68(uint64_t a1)
{

  return sub_1E325F6F0(a1, v1, v2);
}

void OUTLINED_FUNCTION_34_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va1, a26);
  va_start(va, a26);
  a27 = va_arg(va1, void);

  sub_1E3C2FCB8(&a21, &a19, &a17, &a15, &a13, va, v26, va1);
}

uint64_t OUTLINED_FUNCTION_34_70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 128) = a2;
  *(v3 - 120) = a1;
  *(v3 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_34_72(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_74(uint64_t a1, uint64_t a2)
{

  return sub_1E3743538(a1, a2, v2, v3);
}

unint64_t OUTLINED_FUNCTION_34_76(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_1E3928950(a18);
}

void *OUTLINED_FUNCTION_34_77()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 128), v0);
}

uint64_t OUTLINED_FUNCTION_34_80()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_34_81()
{

  return sub_1E4200D94();
}

uint64_t OUTLINED_FUNCTION_34_82(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1E328FCF4(a1, a2, a3);
}

id sub_1E3288338()
{
  result = [objc_allocWithZone(type metadata accessor for DownloadQueueManager()) init];
  qword_1EE2AAE50 = result;
  return result;
}

id sub_1E328838C()
{
  *&v0[OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_maxDownloadSize] = 3;
  v1 = OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_seasonDetailsMap;
  type metadata accessor for SeasonMetadata();
  OUTLINED_FUNCTION_27_0();
  *&v0[v1] = sub_1E4205CB4();
  v2 = OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_allSeasonDetailsFetchers;
  type metadata accessor for SeasonDetailsFetcher();
  OUTLINED_FUNCTION_27_0();
  *&v0[v2] = sub_1E4205CB4();
  *&v0[OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_enqueuedOrder] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for DownloadQueueManager();
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedInstance];
  [v6 addDelegate_];

  return v5;
}

void sub_1E3288C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3288F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1E3289CF0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1E3289D28()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_viewMetricsRecorder;
  type metadata accessor for ViewMetricsRecorder();
  OUTLINED_FUNCTION_5_10();
  v3 = swift_allocObject();
  sub_1E3289DE4();
  *&v1[v2] = v3;
  *&v1[OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_pageData] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MetricsRecorderObjC();
  return objc_msgSendSuper2(&v5, sel_init);
}

void *sub_1E3289DE4()
{
  v0[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  OUTLINED_FUNCTION_5_10();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E4298880;
  sub_1E4204964();
  *(v1 + 32) = sub_1E4204954();
  v0[3] = v1;
  v0[4] = 0;
  return v0;
}

void sub_1E328EC54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v5 + 48));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v7 + 40));
  objc_destroyWeak(&STACK[0x288]);
  objc_destroyWeak(&STACK[0x2B8]);
  objc_destroyWeak(&STACK[0x2E0]);
  objc_destroyWeak(&STACK[0x310]);
  objc_destroyWeak(&STACK[0x338]);
  objc_destroyWeak(&STACK[0x360]);
  objc_destroyWeak(&STACK[0x390]);
  objc_destroyWeak(&STACK[0x3C0]);
  objc_destroyWeak(&STACK[0x3E8]);
  objc_destroyWeak(&STACK[0x410]);
  objc_destroyWeak(&STACK[0x440]);
  objc_destroyWeak(&STACK[0x468]);
  objc_destroyWeak(&STACK[0x490]);
  objc_destroyWeak(&STACK[0x4D0]);
  objc_destroyWeak(&STACK[0x500]);
  objc_destroyWeak(&STACK[0x528]);
  objc_destroyWeak(&STACK[0x558]);
  objc_destroyWeak(&STACK[0x590]);
  objc_destroyWeak(&STACK[0x5C8]);
  objc_destroyWeak(&STACK[0x620]);
  objc_destroyWeak(&STACK[0x648]);
  objc_destroyWeak(&STACK[0x6A0]);
  objc_destroyWeak(&STACK[0x6C8]);
  objc_destroyWeak(&STACK[0x6F0]);
  objc_destroyWeak(&STACK[0x720]);
  objc_destroyWeak(&STACK[0x750]);
  objc_destroyWeak(&STACK[0x788]);
  objc_destroyWeak(&STACK[0x7B0]);
  objc_destroyWeak(&STACK[0x7F8]);
  objc_destroyWeak(&STACK[0x858]);
  objc_destroyWeak(&STACK[0x888]);
  objc_destroyWeak(&STACK[0x8B0]);
  objc_destroyWeak(&STACK[0x8E0]);
  objc_destroyWeak(&STACK[0x908]);
  objc_destroyWeak(&STACK[0x930]);
  objc_destroyWeak(&STACK[0x958]);
  objc_destroyWeak(&STACK[0x988]);
  objc_destroyWeak(&STACK[0x9B8]);
  objc_destroyWeak(&STACK[0xA10]);
  objc_destroyWeak(&STACK[0xA68]);
  objc_destroyWeak(&STACK[0xA90]);
  objc_destroyWeak(&STACK[0xAB8]);
  objc_destroyWeak(&STACK[0xB38]);
  objc_destroyWeak(&STACK[0xB68]);
  objc_destroyWeak(&STACK[0xB98]);
  objc_destroyWeak(&STACK[0xC10]);
  objc_destroyWeak(&STACK[0xC90]);
  objc_destroyWeak(&STACK[0xCC0]);
  objc_destroyWeak(&STACK[0xCF0]);
  objc_destroyWeak(&STACK[0xD20]);
  objc_destroyWeak(&STACK[0xD50]);
  objc_destroyWeak(&STACK[0xD78]);
  objc_destroyWeak(&STACK[0xDA0]);
  objc_destroyWeak(&STACK[0xDF8]);
  objc_destroyWeak(&STACK[0xE38]);
  objc_destroyWeak(&STACK[0xE68]);
  objc_destroyWeak(&STACK[0xE98]);
  objc_destroyWeak(&STACK[0xF20]);
  objc_destroyWeak(&STACK[0xF50]);
  objc_destroyWeak(&STACK[0xFA0]);
  objc_destroyWeak(&STACK[0xFD0]);
  objc_destroyWeak(&STACK[0x1020]);
  objc_destroyWeak(&STACK[0x1048]);
  objc_destroyWeak(&STACK[0x1078]);
  objc_destroyWeak(&STACK[0x10B0]);
  objc_destroyWeak(&STACK[0x10E0]);
  objc_destroyWeak(&STACK[0x1108]);
  objc_destroyWeak(&STACK[0x1130]);
  objc_destroyWeak(&STACK[0x1158]);
  objc_destroyWeak(&STACK[0x1180]);
  objc_destroyWeak(&STACK[0x11B8]);
  objc_destroyWeak(&STACK[0x11E8]);
  objc_destroyWeak(&STACK[0x1210]);
  objc_destroyWeak(&STACK[0x1238]);
  objc_destroyWeak(&STACK[0x1260]);
  objc_destroyWeak(&STACK[0x1290]);
  objc_destroyWeak(&STACK[0x12B8]);
  objc_destroyWeak(&STACK[0x12E8]);
  objc_destroyWeak(&STACK[0x1310]);
  objc_destroyWeak(&STACK[0x1340]);
  objc_destroyWeak(&STACK[0x13B8]);
  objc_destroyWeak(&STACK[0x13E0]);
  objc_destroyWeak(&STACK[0x13E8]);
  _Unwind_Resume(a1);
}

uint64_t *sub_1E328F920()
{
  if (qword_1EE29C580 != -1)
  {
    OUTLINED_FUNCTION_9_149(&qword_1EE29C580);
  }

  return &qword_1EE2AADD0;
}

id sub_1E328F960()
{
  result = [objc_allocWithZone(type metadata accessor for BackgroundTaskManager()) init];
  qword_1EE2AADD0 = result;
  return result;
}

void sub_1E328F9B4()
{
  OUTLINED_FUNCTION_31_1();
  ObjectType = swift_getObjectType();
  v13 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v8 = sub_1E4203FF4();
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = OBJC_IVAR____TtC8VideosUI21BackgroundTaskManager_taskQueue;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  sub_1E4203FE4();
  v16 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_6_179();
  sub_1E328FCAC(v10, v11, MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326B0, &qword_1E429D100);
  sub_1E328FD7C(&qword_1EE23B490, &unk_1ECF326B0, &qword_1E429D100);
  sub_1E42072E4();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v13);
  *&v0[v12] = sub_1E4206A44();
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_init);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E328FC1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E328FC64(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1E328FCAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E328FCF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E328FD38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_15_6();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E328FD7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1E328FDF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeasonsDownloadViewControllerCreator();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t *sub_1E328FE4C()
{
  if (qword_1EE2948E8 != -1)
  {
    OUTLINED_FUNCTION_0_281(&qword_1EE2948E8);
  }

  return &qword_1EE2AAB18;
}

id sub_1E328FE8C()
{
  result = [objc_allocWithZone(type metadata accessor for PlaybackMetricsQueueManager()) init];
  qword_1EE2AAB18 = result;
  return result;
}

id sub_1E328FF04()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI27PlaybackMetricsQueueManager_eventQueue] = MEMORY[0x1E69E7CC0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t static VUINetworkReachabilityMonitorObjCProxy.isNetworkReachable.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(12, a2, a3))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v3 = sub_1E41FF1E4();

    return v3 & 1;
  }

  else
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 isNetworkReachable];

    return v6;
  }
}

id sub_1E3290190(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

id sub_1E32901DC()
{
  result = [objc_allocWithZone(type metadata accessor for RemoteNetworkReachabilityMonitor()) init];
  static RemoteNetworkReachabilityMonitor.shared = result;
  return result;
}

id RemoteNetworkReachabilityMonitor.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC8VideosUI32RemoteNetworkReachabilityMonitor_status] = 0;
  v2 = OBJC_IVAR____TtC8VideosUI32RemoteNetworkReachabilityMonitor_networkActor;
  type metadata accessor for RemoteNetworkReachabilityActor();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *&v0[v2] = v3;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Bool __swiftcall RemoteNetworkReachabilityMonitor.isLikelyReachable()()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  v5 = OBJC_IVAR____TtC8VideosUI32RemoteNetworkReachabilityMonitor_status;
  OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI32RemoteNetworkReachabilityMonitor_status], &v22);
  if (v0[v5])
  {
    if (v0[v5] != 1)
    {
      v7 = 1;
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_15_59();
  }

  v6 = sub_1E42079A4();

  if (v6)
  {
    v7 = 1;
    goto LABEL_11;
  }

  if (v0[v5])
  {
    v7 = sub_1E42079A4();
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

LABEL_11:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v8();
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v20 = v1;
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_100();
    v21 = v13;
    *v12 = 136315394;
    v14 = 0x6863616552746F6ELL;
    v15 = 0xEC000000656C6261;
    if (v0[v5] != 1)
    {
      v14 = 0x6C62616863616572;
      v15 = 0xE900000000000065;
    }

    if (v0[v5])
    {
      v16 = v14;
    }

    else
    {
      v16 = 0x6E776F6E6B6E75;
    }

    if (v0[v5])
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    v18 = sub_1E3270FC8(v16, v17, &v21);

    *(v12 + 4) = v18;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v7 & 1;
    _os_log_impl(&dword_1E323F000, v10, v11, "RemoteNetworkReachability: isLikelyReachable status: %s, result: %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v3 + 8))(v0, v20);
  }

  else
  {

    (*(v3 + 8))(v0, v1);
  }

  OUTLINED_FUNCTION_25_2();
  return result;
}

uint64_t OUTLINED_FUNCTION_59_10()
{
}

BOOL OUTLINED_FUNCTION_262(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_59_11()
{

  return [v0 (v1 + 376)];
}

void *OUTLINED_FUNCTION_59_12(void *a1)
{

  return memcpy(a1, &STACK[0x410], 0xB0uLL);
}

void OUTLINED_FUNCTION_59_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_59_16()
{
}

uint64_t OUTLINED_FUNCTION_59_17(uint64_t a1)
{

  return sub_1E325F748(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_59_19(uint64_t a1)
{

  return sub_1E325F6F0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_59_22()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_59_23()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_59_25()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_59_26(uint64_t a1)
{

  return sub_1E4200624();
}

void OUTLINED_FUNCTION_59_27()
{
  v0 = STACK[0x2E8];
  STACK[0x2B0] = STACK[0x2E0];
  LOBYTE(STACK[0x2B8]) = v0;
}

uint64_t OUTLINED_FUNCTION_59_29()
{
}

id OUTLINED_FUNCTION_59_31(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_59_36()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_59_37()
{

  return sub_1E4207384();
}

uint64_t OUTLINED_FUNCTION_59_40(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_59_41()
{

  return objc_allocWithZone(v0);
}

void sub_1E3291BEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1E3291EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id static VUINetworkReachabilityMonitorObjCProxy.networkReachabilityDidChangeNotificationName.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(12, a2, a3))
  {

    return sub_1E4206AC4();
  }

  else
  {
    v4 = *MEMORY[0x1E69DF878];

    return v4;
  }
}

void sub_1E32924F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_1E3292C88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v5 - 128));
  _Unwind_Resume(a1);
}

id VUIVPAFLogObject(uint64_t a1)
{
  if (VUIVPAFLogObject_onceToken != -1)
  {
    VUIVPAFLogObject_cold_1();
  }

  v2 = VUIVPAFLogObject_logger;

  return v2;
}

void __VUIVPAFLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.VideosUI", "VPAF");
  v1 = VUIVPAFLogObject_logger;
  VUIVPAFLogObject_logger = v0;
}

id sub_1E3294204()
{
  v0 = static NSNotification.remoteNetworkReachabilityDidChange.getter();

  return v0;
}

uint64_t sub_1E329422C()
{
  result = sub_1E4205ED4();
  static NSNotification.remoteNetworkReachabilityDidChange = result;
  return result;
}

void sub_1E32947A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1E3294878(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1E3780B3C(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1E42060E4();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1E3780B3C(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1E3780B3C(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1E42060E4();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

id OUTLINED_FUNCTION_85_3()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_85_4()
{

  return sub_1E4205ED4();
}

BOOL OUTLINED_FUNCTION_85_5()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_85_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t __dst, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va1, a38);
  va_start(__srca, a38);
  __src = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_85_16(uint64_t result)
{
  *(v2 - 280) = result;
  *(v2 - 304) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_17()
{

  return sub_1E4200E64();
}

uint64_t OUTLINED_FUNCTION_85_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4205CB4();
}

uint64_t OUTLINED_FUNCTION_85_20()
{

  return sub_1E4201F44();
}

__n128 *OUTLINED_FUNCTION_85_21(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v4;
  result[2].n128_u64[1] = v2;
  result[3].n128_u64[0] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_22()
{

  return sub_1E379D7E4(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_85_24(uint64_t result, uint64_t a2)
{
  *v3 = result;
  v3[1] = a2;
  *(v2 + 112) = 0;
  *(v2 + 120) = v4;
  *(v2 + 128) = v2 + 112;
  return result;
}

uint64_t sub_1E3294EE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1E3294F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3294FA4(uint64_t a1)
{
  sub_1E3294F34(a1, &v4);
  if (v5)
  {
    sub_1E329504C(&v4, v6);
    sub_1E328438C(v6, &v4);
    v2 = sub_1E4205F84();
    sub_1E329505C(a1);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_1E329505C(&v4);
    sub_1E329505C(a1);
    return 0;
  }

  return v2;
}

_OWORD *sub_1E329504C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E329505C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VUIJetPackController.getJetPackURL()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  sub_1E3283118(&unk_1E42E26A0, v1, &qword_1ECF3D680, &qword_1E42E29A0, &unk_1F5D90790, &unk_1E42E29B0);
  OUTLINED_FUNCTION_106();
  v4[3] = sub_1E4204744();
  v4[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E4204734();
  sub_1E4204CE4();
  OUTLINED_FUNCTION_12_1();

  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1;
}

uint64_t sub_1E32951F4(uint64_t a1)
{
  result = sub_1E41FE414();
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

Swift::Void __swiftcall VUITVAppLauncher.prewarmPostAppDidFinishLaunching()()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - v4;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_115();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v13 = OUTLINED_FUNCTION_37_47();
  v14(v13);
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();
  if (OUTLINED_FUNCTION_45_42(v16))
  {
    v17 = OUTLINED_FUNCTION_125_0();
    v37 = v7;
    *v17 = 0;
    OUTLINED_FUNCTION_54_27(&dword_1E323F000, v18, v19, "Launcher: prewarmPostAppDidFinishLaunching");
    v1 = v0;
    v7 = v37;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v11 + 8))(v0, v9);
  v20 = sub_1E4206BA4();
  v21 = VUISignpostLogObject(v20);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_11(v20, &dword_1E323F000, v21, "Launch.prewarmPostAppDidFinishLaunching", 39);

  v22 = *(v7 + 8);
  v23 = OUTLINED_FUNCTION_13_8();
  v22(v23);
  OUTLINED_FUNCTION_28_54();
  sub_1E3295640();
  OUTLINED_FUNCTION_27_57();
  sub_1E3295640();
  OUTLINED_FUNCTION_26_71();
  sub_1E3295640();
  v24 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v24);
  sub_1E4206434();
  v25 = v1;
  v26 = sub_1E4206424();
  OUTLINED_FUNCTION_5_10();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v25;
  v29 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v29, v30, v5, v31, v32);

  v33 = sub_1E4206B94();
  v34 = VUISignpostLogObject(v33);
  OUTLINED_FUNCTION_56_26(v34);
  OUTLINED_FUNCTION_35_11(v33, &dword_1E323F000, v5, "Launch.prewarmPostAppDidFinishLaunching", 39);

  v35 = OUTLINED_FUNCTION_13_8();
  v22(v35);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E32955B4()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

void sub_1E3295640()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_115();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v13 = OUTLINED_FUNCTION_37_47();
  v14(v13);
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();
  if (OUTLINED_FUNCTION_45_42(v16))
  {
    v17 = OUTLINED_FUNCTION_125_0();
    *v17 = 0;
    _os_log_impl(&dword_1E323F000, v15, v2, v6, v17, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v11 + 8))(v0, v9);
  sub_1E4206454();
  v18 = sub_1E4206474();
  OUTLINED_FUNCTION_75_0(v18);
  OUTLINED_FUNCTION_2_4();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_33_49(v19);
  sub_1E3CC3FD0(0, 0, v1, v4, v20);

  sub_1E325A8C0(v1);
  OUTLINED_FUNCTION_25_2();
}

uint64_t OUTLINED_FUNCTION_20_16(__n128 *a1, __n128 a2, __n128 a3)
{
  a1[1] = a2;

  return sub_1E4201654();
}

void *OUTLINED_FUNCTION_32_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, &STACK[0x290], 0xE9uLL);
}

uint64_t OUTLINED_FUNCTION_20_17()
{
}

uint64_t OUTLINED_FUNCTION_20_19()
{
}

uint64_t OUTLINED_FUNCTION_20_20(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_20_22(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_20_23(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4203844();
}

uint64_t OUTLINED_FUNCTION_20_24()
{
}