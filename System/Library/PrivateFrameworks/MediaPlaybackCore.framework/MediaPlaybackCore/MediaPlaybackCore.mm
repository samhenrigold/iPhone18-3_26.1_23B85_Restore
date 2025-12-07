uint64_t sub_1C5C645B8()
{
  if (![objc_opt_self() isSystemMusic])
  {
    return 0;
  }

  if (qword_1EC1A8B40 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC1BE368;
  v1 = qword_1EC1BE368;
  return v0;
}

void OUTLINED_FUNCTION_19_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_log_t log)
{

  _os_log_impl(a1, log, v14, a4, v15, 0x3Eu);
}

double OUTLINED_FUNCTION_19_1(uint64_t a1)
{

  return sub_1C5CFF1CC(v1, (v2 - 160));
}

unint64_t OUTLINED_FUNCTION_19_12()
{
  v3 = *(v0 + 136);

  return sub_1C5CE2084(v1, v3);
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_19_17()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_21@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t result)
{
  *(v1 + 288) = result;
  *v2 = 258;
  *(v2 + 2) = 34;
  return result;
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x1C6956920);
}

void OUTLINED_FUNCTION_34_5(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

BOOL OUTLINED_FUNCTION_67()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_34_8()
{

  return sub_1C6017650();
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_34_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_14(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_1C5C64D74(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t type metadata accessor for _MediaRemotePublisher(uint64_t a1)
{
  result = qword_1EC1A96E0;
  if (!qword_1EC1A96E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5C64E58(uint64_t a1)
{
  sub_1C5C8F9EC(319, &qword_1EC1A9700, MEMORY[0x1E69D3918], MEMORY[0x1E69D38E8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void _MediaRemotePublisher.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  OUTLINED_FUNCTION_206();
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69D3918];
  v5 = OUTLINED_FUNCTION_4_46();
  sub_1C5C8F9EC(v5, v6, v4, v7);
  v9 = v8;
  OUTLINED_FUNCTION_25();
  v11 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____MPCMediaRemotePublisher_Swift__migrationRequirements;
  sub_1C6015360();
  (*(v11 + 32))(&v2[v15], v14, v9);
  swift_unknownObjectRetain();
  objc_opt_self();
  OUTLINED_FUNCTION_10_1();
  v16 = swift_dynamicCastObjCClassUnconditional();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v18 = Strong;
  v19 = [Strong playbackEngine];

  if (!v19)
  {
    goto LABEL_6;
  }

  if (![v19 isSystemPodcastsApplication])
  {

LABEL_6:
    v28 = sub_1C5C64D74(0, &qword_1EC1A9388, off_1E822D8E8);
    *&v27 = v16;
    v23 = type metadata accessor for MPCMusicDialogHandler();
    swift_allocObject();
    v24 = v16;
    v22 = sub_1C5C71DB4(&v27);
    v28 = v23;
    v29 = &off_1F4546A40;

    goto LABEL_7;
  }

  v28 = sub_1C5C64D74(0, &qword_1EC1A9388, off_1E822D8E8);
  *&v27 = v16;
  v20 = type metadata accessor for MPCPodcastsDialogHandler(0);
  swift_allocObject();
  v21 = v16;
  v22 = sub_1C5C6B40C(&v27);
  v28 = v20;
  v29 = &off_1F4546F50;

LABEL_7:
  *&v27 = v22;
  sub_1C5C6BEFC(&v27, &v2[OBJC_IVAR____MPCMediaRemotePublisher_Swift_dialogHandler]);
  v26.receiver = v2;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_init);
  OUTLINED_FUNCTION_73();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_237();
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_33_3()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_33_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return DefaultStringInterpolation.appendInterpolation(describing:default:)(va, 7104878, 0xE300000000000000);
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return swift_unknownObjectRetain();
}

void *OUTLINED_FUNCTION_33_7()
{
  v2 = *(v0 + 352);

  return __swift_project_boxed_opaque_existential_0((v0 + 328), v2);
}

uint64_t OUTLINED_FUNCTION_33_8()
{

  return swift_slowAlloc();
}

uint64_t sub_1C5C653C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_344()
{
}

void OUTLINED_FUNCTION_4()
{

  JUMPOUT(0x1C6956920);
}

void OUTLINED_FUNCTION_13_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_13_2@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_28()
{

  JUMPOUT(0x1C6956920);
}

uint64_t OUTLINED_FUNCTION_13_4(uint64_t a1)
{

  return sub_1C6016880();
}

void OUTLINED_FUNCTION_3(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

void OUTLINED_FUNCTION_13_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_13_8(uint64_t a1@<X8>)
{
  v6 = (a1 + 16 * v4);
  *v6 = v5;
  v6[1] = v3;
  *(*(v2 + 56) + 8 * v4) = v1;
}

id OUTLINED_FUNCTION_13_10()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_13_11@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = v4;

  return sub_1C6016960();
}

void OUTLINED_FUNCTION_13_13()
{

  JUMPOUT(0x1C69534E0);
}

id OUTLINED_FUNCTION_13_14()
{

  return [v0 (v1 + 120)];
}

uint64_t OUTLINED_FUNCTION_13_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  return sub_1C5D7E40C(v37 + 48, va);
}

void OUTLINED_FUNCTION_13_16()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_13_17()
{
  *(v1 - 256) = v0;

  return sub_1C5D8672C(v1 - 256);
}

void *OUTLINED_FUNCTION_13_18(void *a1)
{
  v3 = (*(v1 + 72) + 88);

  return memcpy(a1, v3, 0x48uLL);
}

__n128 OUTLINED_FUNCTION_13_21(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  result = a14;
  a1[1] = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_28(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return sub_1C5DE294C(va, v2, v2, va1);
}

void OUTLINED_FUNCTION_13_29(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E62F8];

  sub_1C5E20BCC(0, a2, v3);
}

void OUTLINED_FUNCTION_13_30()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1C6956920);
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_35_1()
{

  JUMPOUT(0x1C6956920);
}

void OUTLINED_FUNCTION_11_5()
{

  sub_1C5D0DC20();
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_11_8()
{

  JUMPOUT(0x1C6956920);
}

void OUTLINED_FUNCTION_11_9()
{

  JUMPOUT(0x1C69534E0);
}

void *OUTLINED_FUNCTION_11_14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t __src, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);

  return memcpy(va, &__src, 0xD9uLL);
}

void OUTLINED_FUNCTION_11_17()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136) | (*(v0 + 138) << 16);

  sub_1C5D93688(v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_11_19()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_11_20()
{
  STACK[0x280] = 0;
  STACK[0x288] = 0xE000000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_343(uint64_t a1)
{

  return sub_1C60172D0();
}

id OUTLINED_FUNCTION_2_1()
{

  return [v0 (v3 + 150)];
}

void OUTLINED_FUNCTION_5_3()
{
  v1[20] = sub_1C5DF56F0;
  v1[21] = v0;
  v1[22] = v2;
}

void OUTLINED_FUNCTION_5_6(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E85F0];

  sub_1C5C67D5C(0, a2, v3);
}

void OUTLINED_FUNCTION_5_17(uint64_t a1, unsigned int a2)
{
  v4 = a2 | 0x6D69547400000000;

  sub_1C5D3B0C8(v2 - 128, v4, 0xE900000000000065);
}

void *OUTLINED_FUNCTION_5_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v11 = 0;
  v11[1] = 0;
  v10[200] = a9;
  v10[201] = a10;
  sub_1C5D3DD34(v11);

  return memcpy(v10 + 86, v11, 0xD9uLL);
}

uint64_t OUTLINED_FUNCTION_5_27(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_28()
{
  *(v2 + 160) = v0;
  *(v2 + 168) = v5;
  *(v2 + 176) = v4;
  *(v2 + 184) = v3;
  *(v2 + 192) = v1;
  *(v2 + 194) = BYTE2(v1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_5_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22)
{

  return sub_1C5D380F8(v22, v23, a22 & 1);
}

void OUTLINED_FUNCTION_5_35(uint64_t a1)
{
  *(v7 + 56) = a1;
  *(v7 + 32) = v2;

  sub_1C5DC9604(v5, v3, v4, v6, 0, v7, 0, v1);
}

uint64_t OUTLINED_FUNCTION_5_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_37(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_41()
{

  return sub_1C6016900();
}

uint64_t sub_1C5C660B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5C660F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5C66140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5C66188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5C661D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5C66218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5C66260(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_34_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5C662A4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_34_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5C662E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C5C66414(uint64_t a1)
{
  if (!qword_1EC1A8E90)
  {
    sub_1C5C67224(255);
    sub_1C5C66260(&qword_1EC1A8E88, sub_1C5C67224);
    v1 = sub_1C6016340();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1A8E90);
    }
  }
}

uint64_t _s8_ContextCMa(uint64_t a1)
{
  result = qword_1EC1A8AE0;
  if (!qword_1EC1A8AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5C664FC(uint64_t a1)
{
  sub_1C5C665D4(319, &qword_1EC1A91B0, &unk_1EC1A93A8, off_1E822D750, MEMORY[0x1E69D3908]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C5C665D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_103();
    v11 = sub_1C5C64D74(v8, v9, v10);
    v12 = a5(a1, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_1C5C666A0()
{
  sub_1C5C665D4(0, &qword_1EC1A91B0, &unk_1EC1A93A8, off_1E822D750, MEMORY[0x1E69D3908]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context__engines;
  sub_1C5C64D74(0, &unk_1EC1A93A8, off_1E822D750);
  v7 = MEMORY[0x1E69E7CC0];
  sub_1C6015410();
  (*(v3 + 32))(v0 + v6, v5, v2);
  *(v0 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_notifications) = v7;
  *(v0 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_isAppActive) = 1;
  *(v0 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_hasPrewarmedPastis) = 0;
  v8 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_accountPrewarm;
  sub_1C5C66828(0);
  *(v0 + v8) = sub_1C6016880();
  return v0;
}

void sub_1C5C66828(uint64_t a1)
{
  if (!qword_1EC1A8CF8)
  {
    sub_1C5C66884();
    v1 = sub_1C6016DA0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1A8CF8);
    }
  }
}

unint64_t sub_1C5C66884()
{
  result = qword_1EC1A8B10;
  if (!qword_1EC1A8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A8B10);
  }

  return result;
}

unint64_t sub_1C5C668DC()
{
  result = qword_1EC1A8B00;
  if (!qword_1EC1A8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A8B00);
  }

  return result;
}

char *sub_1C5C66A1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C5C66A3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5C66A3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C5D1203C(0, &qword_1ED7DCB60, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1C5C66B5C()
{
  result = [objc_allocWithZone(MPCFairPlayPerformanceController) init];
  qword_1EC1BE368 = result;
  return result;
}

char *sub_1C5C66B90()
{
  sub_1C5C671CC(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_146();
  v34 = v3 - v2;
  v4 = sub_1C6017080();
  v5 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C5C67224(0);
  OUTLINED_FUNCTION_25();
  v30 = v7;
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v10 = v9 - v8;
  sub_1C5C66414(0);
  OUTLINED_FUNCTION_25();
  v32 = v12;
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_146();
  v15 = v14 - v13;
  v16 = OBJC_IVAR___MPCFairPlayPerformanceController_context;
  _s8_ContextCMa(0);
  swift_allocObject();
  *&v0[v16] = sub_1C5C666A0();
  v35.receiver = v0;
  v35.super_class = MPCFairPlayPerformanceController;
  v17 = objc_msgSendSuper2(&v35, sel_init);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 sharedManager];
  [v20 registerObserver_];

  v21 = [objc_opt_self() sharedServerObjectDatabase];
  [v21 registerObserver_];

  v22 = [objc_opt_self() defaultCenter];
  v23 = *&v19[OBJC_IVAR___MPCFairPlayPerformanceController_context];
  sub_1C5C67580(0, &qword_1ED7DCAF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C60311F0;
  v25 = qword_1EC1A9040;

  if (v25 != -1)
  {
    swift_once();
  }

  sub_1C6017090();
  if (qword_1EC1A9038 != -1)
  {
    swift_once();
  }

  sub_1C6017090();
  sub_1C5C66260(&qword_1ED7DCDF8, MEMORY[0x1E6969F20]);
  sub_1C6016360();
  sub_1C5C66260(&qword_1EC1A8E88, sub_1C5C67224);
  sub_1C6016520();
  (*(v30 + 8))(v10, v31);
  OUTLINED_FUNCTION_7_3();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1C5C66260(&qword_1EC1A8E98, sub_1C5C66414);
  v26 = sub_1C6016600();

  (*(v32 + 8))(v15, v33);
  *(v24 + 32) = v26;
  *(v23 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_notifications) = v24;

  v27 = sub_1C6016C30();
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  OUTLINED_FUNCTION_62();
  sub_1C5E1161C();

  return v19;
}

uint64_t sub_1C5C6713C()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C67170()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C5C671CC(uint64_t a1)
{
  if (!qword_1ED7DCEC0)
  {
    sub_1C6016C30();
    v1 = sub_1C6017350();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7DCEC0);
    }
  }
}

void sub_1C5C67224(uint64_t a1)
{
  if (!qword_1EC1A8E80)
  {
    sub_1C6017080();
    sub_1C5C66260(&qword_1ED7DCDF8, MEMORY[0x1E6969F20]);
    v1 = sub_1C6016350();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1A8E80);
    }
  }
}

uint64_t OUTLINED_FUNCTION_112()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1)
{
  *(v2 - 120) = v1;

  return sub_1C6017830();
}

uint64_t OUTLINED_FUNCTION_31_6@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t x3_0@<X3>, void (*x4_0)(void)@<X4>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1C5D67A20(va, a1, a2 + 8, x3_0, x4_0);
}

void OUTLINED_FUNCTION_31_8()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1C6956920);
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_31_10()
{
  v2 = *v0;

  return MEMORY[0x1EEE6A2F8](v2);
}

void sub_1C5C67444(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C6017350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5C67490(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5C674E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5C67530(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5C67580(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5C675D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5C67620(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5C67670(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5C676C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_30_1()
{
}

uint64_t OUTLINED_FUNCTION_30_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_1C6017280();
}

void OUTLINED_FUNCTION_30_8()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_87()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_30_11(uint64_t a1)
{
  *(v2 - 120) = v1;

  return sub_1C6017830();
}

void OUTLINED_FUNCTION_6_6(uint64_t a1, unint64_t *a2)
{

  sub_1C5C67D5C(0, a2, type metadata accessor for PodcastAVItem);
}

void OUTLINED_FUNCTION_6_8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E6720];

  sub_1C5CFA3B0(0, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_6_9()
{
}

void OUTLINED_FUNCTION_6_14(uint64_t a1, unsigned int a2)
{
  v4 = a2 | 0x6D69547400000000;

  sub_1C5D3B0C8(v2 - 112, v4, 0xE900000000000065);
}

void *OUTLINED_FUNCTION_6_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v11 = 0;
  v11[1] = 0;
  v10[172] = a9;
  v10[173] = a10;
  sub_1C5D3DD34(v11);

  return memcpy(v10 + 58, v11, 0xD9uLL);
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1)
{

  return DefaultStringInterpolation.appendInterpolation(describing:default:)(a1, 7104878, 0xE300000000000000);
}

void *OUTLINED_FUNCTION_6_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t __src)
{

  return memcpy(&STACK[0x3B0], &__src, 0xD9uLL);
}

uint64_t OUTLINED_FUNCTION_6_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_1C6017650();
}

void OUTLINED_FUNCTION_6_33(unint64_t a1@<X8>)
{
  *(v3 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  *(*(v1 + 48) + 8 * a1) = v2;
  ++*(v1 + 16);
}

id OUTLINED_FUNCTION_6_35()
{

  return [v0 (v2 + 2606)];
}

uint64_t sub_1C5C67CF4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_66_9();
  sub_1C5C67EBC(v2, v3, v4, v5);
  OUTLINED_FUNCTION_50_0();
  (*(v6 + 8))(a1);
  return a1;
}

void sub_1C5C67D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6017350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5C67DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6017350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5C67E04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C5C67E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6017350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5C67EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C5C67F88(void *a1)
{
  OUTLINED_FUNCTION_24_7(*(v1 + OBJC_IVAR___MPCFairPlayPerformanceController_context) + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context__engines, v8);
  OUTLINED_FUNCTION_3_15(a1, &qword_1EC1A91B0, &unk_1EC1A93A8, off_1E822D750);
  v3 = sub_1C6015420();
  v5 = v4;
  MEMORY[0x1C69535C0]();
  sub_1C5C68934(*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1C6016B70();
  v3(v7, 0);
  return swift_endAccess();
}

void OUTLINED_FUNCTION_24_4()
{
  v2 = *(v0 + 200);
}

uint64_t OUTLINED_FUNCTION_24_6(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_24_7(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_11()
{
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  v4 = *(v0 + 272);
  *(v0 + 272) = 3;

  return sub_1C5D5CE30(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_24_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
}

uint64_t OUTLINED_FUNCTION_24_14(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_24_15(unint64_t result)
{
  STACK[0x288] = result;
  STACK[0x290] = v2;
  STACK[0x298] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_20(uint64_t a1, uint64_t a2)
{
}

uint64_t sub_1C5C68294()
{
  OUTLINED_FUNCTION_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_61_2(v1);

  return sub_1C5C685D4();
}

id OUTLINED_FUNCTION_28_1(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return sub_1C6016BA0();
}

uint64_t OUTLINED_FUNCTION_28_6()
{

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_28_10()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_28_11(uint64_t a1, uint64_t a2, ...)
{

  return sub_1C60178A0();
}

void OUTLINED_FUNCTION_61_0()
{
  v2 = *(v0 + 200);
}

void OUTLINED_FUNCTION_61_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6F90];

  sub_1C5CFB11C(0, a2, a3, v4);
}

void OUTLINED_FUNCTION_61_3()
{
  *(v1 - 280) = *(v1 - 352);
  *(v1 - 276) = *(v1 - 360);
  *(v1 - 272) = v0;
}

uint64_t OUTLINED_FUNCTION_61_5()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t sub_1C5C685D4()
{
  v1 = sub_1C6017630();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5C68690, 0, 0);
}

uint64_t sub_1C5C68690()
{
  OUTLINED_FUNCTION_35();
  v17 = v0;
  if (qword_1ED7DD2B0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v1 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v1, qword_1ED7E1690);
  v2 = sub_1C60162B0();
  v3 = sub_1C6016F30();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_112();
    v5 = OUTLINED_FUNCTION_21();
    v16 = v5;
    *v4 = 136315138;
    v6 = sub_1C6017AA0();
    v8 = sub_1C5C6AB10(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C5C61000, v2, v3, "[FPPC] init | taking app launch critical section [] duration=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_8();
  }

  v9 = [objc_opt_self() shared];
  v10 = sub_1C6016900();
  *(v0 + 40) = [v9 takeAssertion_];

  sub_1C6017900();
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = sub_1C5D302E4;
  OUTLINED_FUNCTION_235();

  return sub_1C5C72A9C(v12, v13, v14, 0, 1);
}

void OUTLINED_FUNCTION_161_0()
{
}

uint64_t OUTLINED_FUNCTION_161_1()
{
}

__n128 OUTLINED_FUNCTION_79(__n128 *a1)
{
  result = *(v1 - 256);
  a1[1] = result;
  return result;
}

double OUTLINED_FUNCTION_79_0()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

unint64_t OUTLINED_FUNCTION_79_1@<X0>(unint64_t result@<X0>, unint64_t a2@<X8>)
{
  STACK[0x628] = a2;
  STACK[0x640] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_2()
{
}

void OUTLINED_FUNCTION_79_3(unint64_t a1@<X8>)
{
  STACK[0x3B0] = a1;

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_79_4()
{
}

uint64_t OUTLINED_FUNCTION_69_0(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1C6016C10();
}

uint64_t OUTLINED_FUNCTION_69_5(float a1)
{
  *v1 = a1;
}

void OUTLINED_FUNCTION_69_6()
{
  STACK[0x280] = v1;
  STACK[0x288] = v2;
  STACK[0x290] = v0;
}

uint64_t sub_1C5C68B10(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C5C68B5C(a1, a2);
  sub_1C5C68CFC(&unk_1F453BD00);
  return v3;
}

uint64_t sub_1C5C68B5C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1C6016A10())
  {
    result = sub_1C5C68C74(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C6017530();
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
          result = sub_1C60175C0();
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

void *sub_1C5C68C74(uint64_t a1, uint64_t a2)
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

  sub_1C5C674E0(0, &unk_1ED7DCB10, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1C5C68CFC(uint64_t result)
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

    result = sub_1C5D0EE48(result, v7, 1, v3);
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

void OUTLINED_FUNCTION_26_0()
{
  *(v0 + 34) = v1;
  *v2 = v1;
  *(v0 + 42) = 2050;
}

uint64_t OUTLINED_FUNCTION_26_1()
{
}

_OWORD *OUTLINED_FUNCTION_26_3(uint64_t a1)
{
  *(v2 - 240) = v1;

  return sub_1C5E3648C(v2 - 232, v2 - 144, a1);
}

void OUTLINED_FUNCTION_26_4()
{
}

uint64_t OUTLINED_FUNCTION_26_5(uint64_t a1)
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return swift_allocObject();
}

_OWORD *OUTLINED_FUNCTION_26_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return sub_1C5C70758(&v11, &v10);
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return type metadata accessor for EventTime();
}

uint64_t OUTLINED_FUNCTION_26_12()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_26_13()
{

  JUMPOUT(0x1C69534E0);
}

void *OUTLINED_FUNCTION_26_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t __src)
{

  return memcpy(&STACK[0x280], &__src, 0xD9uLL);
}

uint64_t OUTLINED_FUNCTION_26_16()
{

  return sub_1C60179F0();
}

uint64_t OUTLINED_FUNCTION_26_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_18()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_41_2()
{
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;

  return sub_1C6017540();
}

void *OUTLINED_FUNCTION_41_3()
{
  v2 = *(v0 + 80);

  return __swift_project_boxed_opaque_existential_0((v0 + 56), v2);
}

uint64_t OUTLINED_FUNCTION_41_7()
{

  return sub_1C6016900();
}

void *OUTLINED_FUNCTION_41_9@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t OUTLINED_FUNCTION_41_10(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

id sub_1C5C691BC(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  objc_allocWithZone(type metadata accessor for _CriticalSectionAssertion());

  v6 = v2;
  v7 = sub_1C5C693F8(a1, a2, sub_1C5E41A2C, v5);
  if (qword_1EC1A9590 != -1)
  {
    OUTLINED_FUNCTION_2_52(&qword_1EC1A9590);
  }

  v8 = sub_1C60162D0();
  __swift_project_value_buffer(v8, qword_1EC1BE438);

  v9 = v7;
  v10 = sub_1C60162B0();
  v11 = sub_1C6016F30();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_68_0();
    v18[0] = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_1C5C6AB10(a1, a2, v18);
    *(v12 + 12) = 2082;
    v13 = sub_1C60168E0();
    v15 = sub_1C5C6AB10(v13, v14, v18);

    *(v12 + 14) = v15;
    _os_log_impl(&dword_1C5C61000, v10, v11, "[CRIT] takeAssertion(%{public}s) | start [] %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  v16 = &v6[OBJC_IVAR___MPCCriticalSectionManager__context];
  os_unfair_lock_lock(v16);
  sub_1C5C71F90(v16 + 1, v9);
  os_unfair_lock_unlock(v16);
  return v9;
}

uint64_t sub_1C5C693C8()
{
  v1 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

id sub_1C5C693F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion__invalid] = 0;
  v10 = &v4[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion_name];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v4[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759625_CriticalSectionAssertion_onInvalidate];
  *v11 = a3;
  v11[1] = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

void OUTLINED_FUNCTION_7_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 32) = 2114;
  return result;
}

void *OUTLINED_FUNCTION_7_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v11 = 0;
  v11[1] = 0;
  v10[144] = a9;
  v10[145] = a10;
  sub_1C5D3DD34(v11);

  return memcpy(v10 + 30, v11, 0xD9uLL);
}

uint64_t OUTLINED_FUNCTION_7_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_20(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_25()
{
  *(v2 + 304) = v0;
  *(v2 + 312) = v5;
  *(v2 + 320) = v4;
  *(v2 + 328) = v3;
  *(v2 + 336) = v1;
  *(v2 + 338) = BYTE2(v1);
  return 0;
}

void OUTLINED_FUNCTION_7_26()
{
  *(v0 + 1168) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1175) = 0;
}

uint64_t OUTLINED_FUNCTION_7_27(uint64_t a1)
{
  *(v1 - 136) = 0;
  *(v1 - 128) = 0;
  *(v1 - 121) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_29@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = v3;
  return 0x7366322E25;
}

uint64_t OUTLINED_FUNCTION_7_31(uint64_t a1)
{

  return sub_1C60173B0();
}

uint64_t OUTLINED_FUNCTION_7_34(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_7_36()
{
  *(v0 - 128) = 6001;
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;
}

void OUTLINED_FUNCTION_88_1()
{
}

void OUTLINED_FUNCTION_12_0(uint64_t a1@<X8>)
{
  *(v2 - 72) = a1;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0xE000000000000000;
}

unint64_t OUTLINED_FUNCTION_12_2(float a1)
{
  *v1 = a1;

  return sub_1C5C6AB10(v3, v2, (v4 - 160));
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_1C6016860();
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return sub_1C6017440();
}

uint64_t OUTLINED_FUNCTION_12_7@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 504) = a1;
  *(v2 + 480) = -a2;
  sub_1C5C70758((v2 + 480), (v2 + 512));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_12_9(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E62F8];

  sub_1C5D11654(0, a2, a3, a4, v5);
}

BOOL OUTLINED_FUNCTION_12_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_12_12()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1C6956920);
}

void OUTLINED_FUNCTION_12_14()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_12_15()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_12_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C6017860();
}

void OUTLINED_FUNCTION_12_18(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[3] = a3;
  a1[4] = a4;
  a1[2] = a2;
}

void OUTLINED_FUNCTION_12_20()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_12_21(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1C5D8B884(0, 0, 1, 0, a6, a1);
}

void *OUTLINED_FUNCTION_12_22()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[12];
  v11 = v0[13];

  return sub_1C5D8AE28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t OUTLINED_FUNCTION_12_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return sub_1C5D5D5AC(va, &a15);
}

void OUTLINED_FUNCTION_12_29(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  STACK[0x298] = a3;
  STACK[0x280] = a1;
  STACK[0x288] = a2;
}

uint64_t OUTLINED_FUNCTION_12_32()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_12_34(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
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

BOOL OUTLINED_FUNCTION_29_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_29_6(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_29_7()
{

  return [v1 (v0 + 334)];
}

void OUTLINED_FUNCTION_29_10()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_29_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  STACK[0x2B0] = a15;
  STACK[0x2B8] = v15;
  STACK[0x2C0] = v16;
  LOBYTE(STACK[0x2C8]) = 1;
}

uint64_t OUTLINED_FUNCTION_29_15(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 128);

  return MEMORY[0x1EEE6AD70](a1, a2, v4, a1);
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return sub_1C5C6AB10(a14, v17, va);
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_3_11()
{
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t result, float a2)
{
  *v2 = a2;
  *(v4 - 120) = v3;
  *(v4 - 112) = 0;
  *(v4 - 104) = 0xE000000000000000;
  *(v4 - 96) = result;
  return result;
}

void OUTLINED_FUNCTION_3_15(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69D3908];

  sub_1C5C665D4(0, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_3_16(uint64_t result, uint64_t a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_18(uint64_t a1)
{

  return sub_1C6017660();
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_23(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_25()
{

  JUMPOUT(0x1C69534E0);
}

__n128 OUTLINED_FUNCTION_3_28(uint64_t a1)
{
  result = *(v2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = v1;
  *(a1 + 48) = v3;
  v5 = *(v2 + 56);
  *(a1 + 58) = *(v2 + 58);
  *(a1 + 56) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_29(void *a1)
{
  v3 = a1[30];
  v4 = a1[31];
  v5 = a1[32];
  v6 = a1[33];

  return sub_1C5C8C748(v3, v4, v5, v6);
}

void *OUTLINED_FUNCTION_3_30()
{
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[24];
  v11 = v0[25];

  return sub_1C5D8AE28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

void OUTLINED_FUNCTION_3_32()
{
  *(v3 - 104) = v0 & 1;
  *(v3 - 103) = v2 & 1;
  *(v3 - 102) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_3_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C6017280();
}

uint64_t OUTLINED_FUNCTION_3_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return DefaultStringInterpolation.appendInterpolation(describing:default:)(va, 7104878, 0xE300000000000000);
}

void *OUTLINED_FUNCTION_3_43(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);

  return memcpy(va, &a9, 0xD9uLL);
}

void OUTLINED_FUNCTION_3_44()
{
  v1 = STACK[0x240];
  STACK[0x238] = STACK[0x238];
  STACK[0x240] = v1;

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_3_45(uint64_t a1)
{
  *(v2 - 96) = a1;
  *(v2 - 128) = v1;

  return sub_1C6016420();
}

void OUTLINED_FUNCTION_3_48(uint64_t a1)
{
  *(v2 - 96) = v1;

  sub_1C5E36D50();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_202()
{

  return [v0 (v1 + 2903)];
}

uint64_t OUTLINED_FUNCTION_4_3()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_1C5CCA2F4;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_4_7()
{
}

void OUTLINED_FUNCTION_4_21(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E85F0];

  sub_1C5C67E68(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_4_29(uint64_t a1)
{
  *(a1 + 48) = *(v1 + 48);
  *(a1 + 50) = *(v1 + 50);

  return swift_unknownObjectRetain();
}

void *OUTLINED_FUNCTION_4_31()
{
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[15];
  v11 = v0[16];

  return sub_1C5D8AE28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t OUTLINED_FUNCTION_4_36@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_4_43(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_48@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t type metadata accessor for QueueControllerBehaviorPodcasts(uint64_t a1)
{
  result = qword_1ED7DD850;
  if (!qword_1ED7DD850)
  {
    return swift_getSingletonMetadata();
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

unint64_t sub_1C5C6AACC()
{
  result = qword_1ED7DCBE0;
  if (!qword_1ED7DCBE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7DCBE0);
  }

  return result;
}

unint64_t sub_1C5C6AB10(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C5C6ABD4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1C5C653C8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C5C6ABD4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C5C68B10(a5, a6);
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
    result = sub_1C60175C0();
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

id sub_1C5C6ACFC()
{
  result = [objc_allocWithZone(MPCCriticalSectionManager) init];
  qword_1EC1BE418 = result;
  return result;
}

id MPCCriticalSectionManager.init()()
{
  v1 = &v0[OBJC_IVAR___MPCCriticalSectionManager__context];
  _s8_ContextCMa_0(0);
  swift_allocObject();
  v2 = sub_1C5C6B18C();
  *v1 = 0;
  *(v1 + 1) = v2;
  v4.receiver = v0;
  v4.super_class = MPCCriticalSectionManager;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t _s8_ContextCMa_0(uint64_t a1)
{
  result = qword_1EC1A9348;
  if (!qword_1EC1A9348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5C6AE1C()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1C5C6B024(0, &qword_1EC1AC270, sub_1C5E4178C, MEMORY[0x1E69E8300]);
  }
}

void sub_1C5C6AE88()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1C5E418A4(0, &unk_1EC1AC290, MEMORY[0x1E69E6370], MEMORY[0x1E69E8328]);
  }
}

void sub_1C5C6AEDC()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1C5E418A4(0, &qword_1EC1AB840, MEMORY[0x1E69E6530], MEMORY[0x1E69E8330]);
  }
}

void sub_1C5C6AF30()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1C5E418FC();
  }
}

void sub_1C5C6AF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C60177E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5C6AFC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C5C6B024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C5C6B088(uint64_t a1)
{
  sub_1C5C6B024(319, &qword_1EC1A96F8, type metadata accessor for _CriticalSectionAssertion, MEMORY[0x1E69D3908]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C5C6B18C()
{
  sub_1C5C6B024(0, &qword_1EC1A96F8, type metadata accessor for _CriticalSectionAssertion, MEMORY[0x1E69D3908]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context__assertions;
  type metadata accessor for _CriticalSectionAssertion();
  v7 = MEMORY[0x1E69E7CC0];
  sub_1C6015410();
  (*(v3 + 32))(v0 + v6, v5, v2);
  *(v0 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_continuations) = v7;
  *(v0 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_mediaRemoteCriticalSection) = 0;
  *(v0 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_inCriticalSection) = 0;
  return v0;
}

uint64_t type metadata accessor for MPCPodcastsDialogHandler(uint64_t a1)
{
  result = qword_1EC1A9060;
  if (!qword_1EC1A9060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5C6B370(uint64_t a1)
{
  result = sub_1C6015F10();
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

uint64_t sub_1C5C6B40C(void *a1)
{
  v2 = v1;
  v4 = sub_1C6015F10();
  OUTLINED_FUNCTION_5_18();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5C653C8(a1, v13);
  sub_1C5C64D74(0, &qword_1EC1A9388, off_1E822D8E8);
  swift_dynamicCast();
  v10 = v12[1];
  swift_unknownObjectUnownedInit();

  sub_1C6015B10();
  swift_allocObject();
  sub_1C6015B00();
  sub_1C6016B40();

  sub_1C6015F00();
  __swift_destroy_boxed_opaque_existential_0(a1);
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC17MediaPlaybackCore24MPCPodcastsDialogHandler_errorTransformer, v9, v4);
  return v2;
}

void OUTLINED_FUNCTION_1_3(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v5 = MEMORY[0x1E69E6720];

  sub_1C5CCB648(0, a2, a3, a4, v5);
}

void OUTLINED_FUNCTION_1_4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_1C5C67490(0, a2, a3, v4);
}

void OUTLINED_FUNCTION_1_6(uint64_t a1, unint64_t *a2)
{

  sub_1C5C6AF6C(0, a2, sub_1C5CC540C);
}

void OUTLINED_FUNCTION_1_8(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E85F0];

  sub_1C5C67DB0(0, a2, v3);
}

void OUTLINED_FUNCTION_1_9(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E87C8];

  sub_1C5CE4634(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_18()
{
}

void OUTLINED_FUNCTION_1_25()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_1_28(uint64_t a1, uint64_t a2)
{

  return sub_1C6016940();
}

void OUTLINED_FUNCTION_1_30(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6F90];

  sub_1C5C675D0(0, a2, a3, v4);
}

void OUTLINED_FUNCTION_1_32()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 88);
  v10 = *(v0 + 80);

  sub_1C5D86740(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

__n128 OUTLINED_FUNCTION_1_39()
{
  result = *(v0 + 48);
  *(v1 - 112) = *(v0 + 32);
  return result;
}

void OUTLINED_FUNCTION_1_41()
{
  *(v1 - 135) = v0;
  *(v1 - 129) = BYTE6(v0);
  *(v1 - 131) = WORD2(v0);
}

double *OUTLINED_FUNCTION_1_43(__n128 a1, __n128 a2)
{

  return sub_1C5C8A6E0(0, 0, 0, 1, v3, v3);
}

uint64_t OUTLINED_FUNCTION_1_44(uint64_t result)
{
  *(v6 - 128) = v3;
  *(v6 - 120) = v2;
  *(v6 - 112) = v1;
  *(v6 - 104) = v5 & 1;
  *(v6 - 103) = result & 1;
  *(v6 - 102) = v4 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_46()
{
  v4 = (*(v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = v4[1];
  *v1 = *v4;
  v1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_1_49()
{

  sub_1C5D0E900();
}

uint64_t OUTLINED_FUNCTION_1_64()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_25_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

unint64_t OUTLINED_FUNCTION_25_4()
{

  return sub_1C5D04C60();
}

uint64_t OUTLINED_FUNCTION_25_5@<X0>(uint64_t a1@<X8>, uint64_t (*a2)(void)@<X3>)
{

  return sub_1C5D0ECFC(v2 + a1, v3, v4 + a1, a2);
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25_6(uint64_t result, float a2)
{
  *v2 = a2;
  *(v4 - 112) = v3;
  *(v4 - 104) = 0;
  *(v4 - 96) = 0xE000000000000000;
  *(v4 - 88) = result;
  return result;
}

void OUTLINED_FUNCTION_25_8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2376);
  v3 = *(v2 + 112);
  *(v2 + 112) = a1;
  *(v2 + 120) = 0;
  sub_1C5D4A7DC(v3);
}

uint64_t OUTLINED_FUNCTION_25_10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return sub_1C5D81678(va, a2, v20 + 8);
}

uint64_t OUTLINED_FUNCTION_25_11(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_25_12(uint64_t a1)
{

  sub_1C5DE4A20();
}

uint64_t OUTLINED_FUNCTION_25_14(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1C60169F0();
}

uint64_t sub_1C5C6BEFC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1C5C6BF64(void *a1)
{
  sub_1C5C653C8(a1, v8);
  sub_1C5C64D74(0, &qword_1EC1A9388, off_1E822D8E8);
  swift_dynamicCast();
  swift_unknownObjectUnownedInit();

  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong playbackEngine];

  if (v4)
  {
    v5 = [v4 eventStream];

    swift_unknownObjectUnownedInit();
    v6.receiver = v1;
    v6.super_class = _MPCMediaRemoteDetective;
    objc_msgSendSuper2(&v6, sel_init);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __break(1u);
  }
}

id sub_1C5C6C0D8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

id sub_1C5C6C124()
{
  result = [objc_allocWithZone(type metadata accessor for PodcastsDefaultsHelper()) init];
  qword_1EC1A9078 = result;
  return result;
}

id sub_1C5C6C19C()
{
  v1 = OBJC_IVAR___MPCPodcastsDefaultsHelper__defaults;
  [*(v0 + OBJC_IVAR___MPCPodcastsDefaultsHelper__defaults) addObserver:v0 forKeyPath:*MEMORY[0x1E69C4E98] options:1 context:0];
  v2 = *(v0 + v1);
  v3 = *MEMORY[0x1E69C4E90];

  return [v2 addObserver:v0 forKeyPath:v3 options:1 context:0];
}

id sub_1C5C6C220()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___MPCPodcastsDefaultsHelper__defaults;
  *&v0[v2] = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1C5C6C19C();

  return v3;
}

void sub_1C5C6C504(uint64_t a1)
{
  sub_1C5C6C678(319, &qword_1ED7DD2C8, MEMORY[0x1E69C4C60], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C5C6C678(319, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C5C6C678(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_120();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void OUTLINED_FUNCTION_14_1(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return DefaultStringInterpolation.appendInterpolation(describing:default:)(va, 7104878, 0xE300000000000000);
}

void *OUTLINED_FUNCTION_32_5(uint64_t a1, uint64_t a2, ...)
{

  return sub_1C6017390();
}

void OUTLINED_FUNCTION_32_6()
{

  JUMPOUT(0x1C69534E0);
}

id static QueueControllerBehaviorPodcasts.makeExtension(with:)()
{
  v0 = objc_allocWithZone(type metadata accessor for QueueControllerBehaviorPodcastsTransportableExtension());

  return [v0 init];
}

id QueueControllerBehaviorPodcastsTransportableExtension.init()()
{
  *&v0[OBJC_IVAR____MPCQueueControllerBehaviorPodcastsTransportableExtension_sessionTypesInvalidatable] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueueControllerBehaviorPodcastsTransportableExtension();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1C5C6C980()
{
  if (qword_1EC1A9380 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC1BE418;

  return v1;
}

uint64_t *sub_1C5C6CAEC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void))
{
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  v13 = a5 + OBJC_IVAR___MPCCriticalSectionManager__context;
  _Block_copy(a6);
  os_unfair_lock_lock(v13);
  sub_1C5C6CD74((v13 + 8), a1, a2, sub_1C5E4252C, v12, a3, a4, &v22);
  os_unfair_lock_unlock(v13);
  v14 = v22;
  if (!v22)
  {
    if (qword_1EC1A9590 != -1)
    {
      swift_once();
    }

    v15 = sub_1C60162D0();
    __swift_project_value_buffer(v15, qword_1EC1BE438);

    v16 = sub_1C60162B0();
    v17 = sub_1C6016F30();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1C5C6AB10(a1, a2, &v22);
      _os_log_impl(&dword_1C5C61000, v16, v17, "[CRIT] perform(uniqueTaskNamed: %{public}s) | running [immediate]", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1C6956920](v19, -1, -1);
      MEMORY[0x1C6956920](v18, -1, -1);
    }

    a6[2](a6);
    v20 = objc_allocWithZone(type metadata accessor for _CriticalSectionContinuation());

    v14 = sub_1C5C74A9C(a1, a2, 0, 0, 0, 0);
  }

  _Block_release(a6);
  return v14;
}

uint64_t sub_1C5C6CD40()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1C5C6CD74(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t i@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t **a8@<X8>)
{
  if (qword_1EC1A9590 != -1)
  {
LABEL_33:
    swift_once();
  }

  v14 = sub_1C60162D0();
  __swift_project_value_buffer(v14, qword_1EC1BE438);

  v15 = sub_1C60162B0();
  v16 = sub_1C6016F30();

  v41 = i;
  v42 = a5;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v46[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1C5C6AB10(a2, a3, v46);
    _os_log_impl(&dword_1C5C61000, v15, v16, "[CRIT] perform(uniqueTaskNamed: %{public}s) | checking", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1C6956920](v18, -1, -1);
    MEMORY[0x1C6956920](v17, -1, -1);
  }

  v19 = *a1;
  swift_beginAccess();
  sub_1C5C6B024(0, &qword_1EC1A96F8, type metadata accessor for _CriticalSectionAssertion, MEMORY[0x1E69D3908]);
  sub_1C6015430();
  swift_endAccess();
  v20 = sub_1C5C6AA20();

  if (v20)
  {
    v40 = a6;
    v21 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_continuations;
    swift_beginAccess();
    v38 = v19;
    v39 = v21;
    v22 = *(v19 + v21);
    v23 = sub_1C5C6AA20();
    a6 = v22 & 0xC000000000000001;
    a5 = v22 & 0xFFFFFFFFFFFFFF8;

    for (i = 0; v23 != i; ++i)
    {
      if (a6)
      {
        v24 = MEMORY[0x1C6954040](i, v22);
      }

      else
      {
        if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v24 = *(v22 + 8 * i + 32);
      }

      a1 = v24;
      if (__OFADD__(i, 1))
      {
        goto LABEL_31;
      }

      v25 = *(v24 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name) == a2 && *(v24 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name + 8) == a3;
      if (v25 || (sub_1C6017860() & 1) != 0)
      {

        v26 = sub_1C60162B0();
        v27 = sub_1C6016F30();

        if (os_log_type_enabled(v26, v27))
        {
          a5 = swift_slowAlloc();
          i = swift_slowAlloc();
          v45[0] = i;
          *a5 = 136446210;
          *(a5 + 4) = sub_1C5C6AB10(a2, a3, v45);
          _os_log_impl(&dword_1C5C61000, v26, v27, "[CRIT] perform(uniqueTaskNamed: %{public}s) | already staged", a5, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(i);
          MEMORY[0x1C6956920](i, -1, -1);
          MEMORY[0x1C6956920](a5, -1, -1);
        }

        v28 = *(a1 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_counter);
        v29 = (a1 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_counter);
        while (!__OFADD__(v28, 1))
        {
          v30 = v28;
          atomic_compare_exchange_strong_explicit(v29, &v30, v28 + 1, memory_order_relaxed, memory_order_relaxed);
          v25 = v30 == v28;
          v28 = v30;
          if (v25)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v31 = sub_1C60162B0();
    v32 = sub_1C6016F30();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_1C5C6AB10(a2, a3, v45);
      _os_log_impl(&dword_1C5C61000, v31, v32, "[CRIT] perform(uniqueTaskNamed: %{public}s) | staging", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1C6956920](v34, -1, -1);
      MEMORY[0x1C6956920](v33, -1, -1);
    }

    v35 = swift_allocObject();
    *(v35 + 16) = v41;
    *(v35 + 24) = v42;
    v36 = objc_allocWithZone(type metadata accessor for _CriticalSectionContinuation());

    sub_1C5C74C28(v40, a7);
    v37 = sub_1C5C74A9C(a2, a3, &unk_1C6044EB8, v35, v40, a7);
    swift_beginAccess();
    a1 = v37;
    MEMORY[0x1C69535C0]();
    sub_1C5C68934(*((*(v38 + v39) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C6016B70();
    swift_endAccess();
  }

  else
  {
    a1 = 0;
  }

LABEL_29:
  *a8 = a1;
}

id sub_1C5C6D360()
{
  v0 = static NSNotification.podcastsSkipForwardIntervalDefaultDidChange.getter();

  return v0;
}

id sub_1C5C6D388(uint64_t a1, void *a2, void **a3, void **a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = *a3;
  *a4 = *a3;

  return v7;
}

uint64_t sub_1C5C6D3E0()
{
  result = sub_1C6016900();
  qword_1EC1A8BA0 = result;
  return result;
}

id sub_1C5C6D43C()
{
  v0 = static NSNotification.podcastsSkipBackwardIntervalDefaultDidChange.getter();

  return v0;
}

uint64_t sub_1C5C6D490()
{
  result = sub_1C6016900();
  qword_1EC1A8B88 = result;
  return result;
}

uint64_t sub_1C5C6EEB8()
{
  sub_1C5C6EF98(0, &qword_1ED7DCB48, type metadata accessor for MPPlaybackSessionType, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C6035C00;
  *(v0 + 32) = sub_1C6016900();
  *(v0 + 40) = sub_1C6016900();
  return v0;
}

void sub_1C5C6EF98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C5C6EFFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

BOOL sub_1C5C6F42C(uint64_t a1, void *a2)
{
  v4 = sub_1C5C6EEB8();
  v8 = a1;
  v7[2] = &v8;
  v5 = sub_1C5C6F578(sub_1C5C6F658, v7, v4);

  if (!v5 && a2)
  {
    sub_1C5C64D74(0, &qword_1EC1A92B0, 0x1E696AEC0);
    *a2 = sub_1C60172F0();
  }

  return v5;
}

BOOL sub_1C5C6F578(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_1C5C6F69C(uint64_t a1, uint64_t a2)
{
  sub_1C6016940();
  OUTLINED_FUNCTION_75_3();
  if (v3 == sub_1C6016940() && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1C6017860();
  }

  return v6 & 1;
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_119_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C6017280();
}

Swift::Void __swiftcall MPCPlaybackEngine.initializeSwiftStack()()
{
  type metadata accessor for EngineComponents();
  OUTLINED_FUNCTION_58();
  v1 = swift_allocObject();
  v2 = v0;
  sub_1C5C74DC4(v2);
  [v2 setSwiftStorage_];

  v3 = objc_allocWithZone(type metadata accessor for BookmarkingConsumer());
  v4 = v2;
  v5 = sub_1C5C6FE18(v4);
  v6 = [v4 eventStream];
  [v6 addConsumer_];

  v7 = sub_1C5C75008();
  *&v76 = v5;
  OUTLINED_FUNCTION_12_34(v7, v8);
  v9 = v5;
  sub_1C5D293E0();
  v10 = *(*(v7 + 24) + 16);
  sub_1C5D294E0(v10);
  v11 = *(v7 + 24);
  *(v11 + 16) = v10 + 1;
  OUTLINED_FUNCTION_36_12(v11 + 32 * v10, v56, v61, v66, v71, v76);
  *(v7 + 24) = v11;
  swift_endAccess();

  v12 = objc_allocWithZone(type metadata accessor for PlaybackHistoryConsumer());
  v13 = v4;
  v14 = sub_1C5C70528(v13);
  v15 = [v13 eventStream];
  OUTLINED_FUNCTION_40_11();
  [v16 v17];

  v18 = sub_1C5C75008();
  *&v77 = v14;
  OUTLINED_FUNCTION_12_34(v18, v19);
  v20 = v14;
  sub_1C5D293E0();
  v21 = *(*(v18 + 24) + 16);
  sub_1C5D294E0(v21);
  v22 = *(v18 + 24);
  *(v22 + 16) = v21 + 1;
  OUTLINED_FUNCTION_36_12(v22 + 32 * v21, v57, v62, v67, v72, v77);
  *(v18 + 24) = v22;
  swift_endAccess();

  v23 = objc_allocWithZone(type metadata accessor for PlaybackStatisticsConsumer());
  v24 = v13;
  v25 = sub_1C5C705A8(v24);
  v26 = [v24 eventStream];
  OUTLINED_FUNCTION_40_11();
  [v27 v28];

  v29 = sub_1C5C75008();
  *&v78 = v25;
  OUTLINED_FUNCTION_12_34(v29, v30);
  v31 = v25;
  sub_1C5D293E0();
  v32 = *(*(v29 + 24) + 16);
  sub_1C5D294E0(v32);
  v33 = *(v29 + 24);
  *(v33 + 16) = v32 + 1;
  OUTLINED_FUNCTION_36_12(v33 + 32 * v32, v58, v63, v68, v73, v78);
  *(v29 + 24) = v33;
  swift_endAccess();

  if ([v24 isSystemPodcastsApplication])
  {
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = objc_allocWithZone(type metadata accessor for PodcastsUPPConsumer());
    v36 = v24;
    v37 = sub_1C5C7565C(v36, sub_1C5E41580, v34);
    v38 = [v36 eventStream];
    OUTLINED_FUNCTION_40_11();
    [v39 v40];

    v41 = sub_1C5C75008();
    *&v79 = v37;
    OUTLINED_FUNCTION_12_34(v41, v42);
    v43 = v37;
    sub_1C5D293E0();
    v44 = *(*(v41 + 24) + 16);
    sub_1C5D294E0(v44);
    v45 = *(v41 + 24);
    *(v45 + 16) = v44 + 1;
    OUTLINED_FUNCTION_36_12(v45 + 32 * v44, v59, v64, v69, v74, v79);
    *(v41 + 24) = v45;
    swift_endAccess();

    v46 = objc_allocWithZone(type metadata accessor for PodcastsPlayActivityFeedConsumer());
    v47 = v36;
    v48 = sub_1C5C75798(v47);
    v49 = [v47 eventStream];
    OUTLINED_FUNCTION_40_11();
    [v50 v51];

    v52 = sub_1C5C75008();
    *&v80 = v48;
    OUTLINED_FUNCTION_12_34(v52, v53);
    sub_1C5D293E0();
    v54 = *(*(v52 + 24) + 16);
    sub_1C5D294E0(v54);
    v55 = *(v52 + 24);
    *(v55 + 16) = v54 + 1;
    OUTLINED_FUNCTION_36_12(v55 + 32 * v54, v60, v65, v70, v75, v80);
    *(v52 + 24) = v55;
    swift_endAccess();
  }
}

uint64_t sub_1C5C6FD58()
{
  MEMORY[0x1C6956A70](v0 + 16);
  v1 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t PlaybackEngineSessionManager.init(playbackEngine:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC17MediaPlaybackCore28PlaybackEngineSessionManager____lazy_storage___playbackSessionsURL;
  v4 = sub_1C6014F20();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  swift_unknownObjectWeakAssign();

  return v1;
}

id sub_1C5C6FE18(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore19BookmarkingConsumer_subscription] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BookmarkingConsumer();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1)
{

  return sub_1C6016AC0();
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_10_14()
{

  _s3__C4CodeOMa_2();
}

void OUTLINED_FUNCTION_10_15()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_10_18(uint64_t a1)
{

  return swift_getWitnessTable();
}

double OUTLINED_FUNCTION_10_21()
{
  result = 0.0;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_24()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return sub_1C60179F0();
}

id OUTLINED_FUNCTION_10_34()
{

  return [v0 (v2 + 1784)];
}

void OUTLINED_FUNCTION_17_2()
{

  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_17_8()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_17_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return sub_1C6017830();
}

void OUTLINED_FUNCTION_17_13()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_17_15@<X0>(int a1@<W8>)
{
  *(v4 - 120) = v3;
  *(v4 - 112) = v2;
  *(v4 - 102) = BYTE2(a1);
  *(v4 - 104) = v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_17_16()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_17_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
}

void OUTLINED_FUNCTION_17_27()
{

  objc_setAssociatedObject(v0, v1, v2, 1);
}

uint64_t OUTLINED_FUNCTION_59_1(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_59_2()
{
  v3 = *(*(v1 - 232) + 48) + 40 * v0;

  return sub_1C5CE3504(v3);
}

void OUTLINED_FUNCTION_59_4()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_59_6()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_59_7(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_dynamicCast();
}

id sub_1C5C70528(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore23PlaybackHistoryConsumer_subscription] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaybackHistoryConsumer();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id sub_1C5C705A8(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore26PlaybackStatisticsConsumer_subscription] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaybackStatisticsConsumer();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

_OWORD *sub_1C5C70758(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1C5C70830()
{
  OUTLINED_FUNCTION_8_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  OUTLINED_FUNCTION_4_15();
  v7 = MEMORY[0x1E69E7CA0];
  if (v3)
  {
    OUTLINED_FUNCTION_0_22();
    sub_1C5D1203C(0, v8, v7 + 8, v9);
    v10 = OUTLINED_FUNCTION_26_6();
    OUTLINED_FUNCTION_17_5(v10);
    *(v10 + 2) = v2;
    *(v10 + 3) = 2 * (v11 / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[32 * v2] <= v12)
    {
      memmove(v12, v13, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_7(uint64_t a1, unint64_t *a2)
{

  sub_1C5C6AF6C(0, a2, type metadata accessor for MPCPlaybackEngineEventType);
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_2_20()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_2_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C5D8B884(0, 0, 1, 4, &a9, 0.0);
}

uint64_t OUTLINED_FUNCTION_2_28()
{
  sub_1C5D869C0(v0);
}

uint64_t OUTLINED_FUNCTION_2_29()
{

  return sub_1C5D94864();
}

double *OUTLINED_FUNCTION_2_42(__n128 a1, __n128 a2)
{

  return sub_1C5C8A6E0(0, 0, 0, 1, v3, v3);
}

uint64_t OUTLINED_FUNCTION_2_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1C60176A0();
}

uint64_t OUTLINED_FUNCTION_2_52(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_12(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E87B8];

  sub_1C5CE4634(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return sub_1C60168F0();
}

uint64_t OUTLINED_FUNCTION_0_24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = a1;
  v4[1] = a2;
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1)
{

  return sub_1C6017280();
}

uint64_t OUTLINED_FUNCTION_0_34(uint64_t a1)
{

  return sub_1C6017860();
}

double OUTLINED_FUNCTION_0_37@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 2;
  return result;
}

void *OUTLINED_FUNCTION_0_41()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v11 = v0[10];

  return sub_1C5D5D350(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t OUTLINED_FUNCTION_0_44()
{

  return sub_1C5D8EE9C();
}

uint64_t OUTLINED_FUNCTION_0_48()
{

  return sub_1C6017860();
}

void OUTLINED_FUNCTION_0_53()
{
  *(v1 - 135) = v0;
  *(v1 - 129) = BYTE6(v0);
  *(v1 - 131) = WORD2(v0);
}

uint64_t OUTLINED_FUNCTION_0_59()
{

  return sub_1C5DB2848(v0 - 112, sub_1C5CBCFA8);
}

void *OUTLINED_FUNCTION_0_64(void *a1)
{

  return memcpy(a1, v1, 0xD9uLL);
}

void OUTLINED_FUNCTION_0_65(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E6F90];

  sub_1C5C72C04(0, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_0_68(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return DefaultStringInterpolation.appendInterpolation(describing:default:)(va, 7104878, 0xE300000000000000);
}

void OUTLINED_FUNCTION_9_9()
{

  type metadata accessor for MPCPlaybackEngineEventItemAssetTypeSelectionMetadataKey();
}

void OUTLINED_FUNCTION_9_10()
{
}

void OUTLINED_FUNCTION_9_12()
{

  JUMPOUT(0x1C6956920);
}

void OUTLINED_FUNCTION_9_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_9_14()
{

  sub_1C5D0DB30();
}

void *OUTLINED_FUNCTION_9_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 1808) = 0u;
  *(v10 + 1824) = a9;
  *(v10 + 1832) = a10;
  sub_1C5D3DD34(v10 + 1808);

  return memcpy((v10 + 912), (v10 + 1808), 0xD9uLL);
}

uint64_t OUTLINED_FUNCTION_9_16()
{
  result = 0;
  STACK[0x638] = 0;
  STACK[0x630] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_9_20()
{

  JUMPOUT(0x1C69534E0);
}

void *OUTLINED_FUNCTION_9_21()
{
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[18];
  v11 = v0[19];

  return sub_1C5D8AE28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t OUTLINED_FUNCTION_9_25()
{
  v4 = v0[22];
  v3 = v0[23];
  *(v1 - 136) = v0[24];
  *(v1 - 128) = v3;
  v6 = v0[19];
  v5 = v0[20];
  *(v1 - 120) = v4;
  *(v1 - 112) = v5;
  v7 = v0[16];
  *(v1 - 104) = v6;
  *(v1 - 96) = v7;
}

void OUTLINED_FUNCTION_9_27()
{

  JUMPOUT(0x1C6953AC0);
}

void *OUTLINED_FUNCTION_9_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t __src)
{

  return memcpy(&STACK[0x218], &__src, 0xD9uLL);
}

void OUTLINED_FUNCTION_9_29()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_9_34(uint64_t a1, uint64_t a2)
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return sub_1C6016C00();
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t a1)
{

  return swift_weakInit();
}

id OUTLINED_FUNCTION_89_2()
{

  return sub_1C5E2067C(v1, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_89_3()
{

  return swift_slowAlloc();
}

uint64_t sub_1C5C71DB4(void *a1)
{
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  sub_1C5C653C8(a1, v7);
  sub_1C5C64D74(0, &qword_1EC1A9388, off_1E822D8E8);
  swift_dynamicCast();
  swift_unknownObjectUnownedInit();

  v3 = objc_allocWithZone(sub_1C60151F0());
  OUTLINED_FUNCTION_235();
  v4 = sub_1C60151E0();
  sub_1C60151A0();
  swift_allocObject();
  swift_weakInit();

  sub_1C6015190();
  sub_1C6015180();

  __swift_destroy_boxed_opaque_existential_0(a1);

  swift_beginAccess();
  sub_1C5C727B4(v7, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C5C71F58()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C71F90(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  sub_1C5C6B024(0, &qword_1EC1A96F8, type metadata accessor for _CriticalSectionAssertion, MEMORY[0x1E69D3908]);
  v3 = a2;
  v4 = sub_1C6015430();
  v5 = swift_endAccess();
  MEMORY[0x1C69535C0](v5);
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C6016B30();
  }

  sub_1C6016B70();
  swift_beginAccess();
  sub_1C6015440();
  swift_endAccess();
  return sub_1C5C72280();
}

unint64_t OUTLINED_FUNCTION_48_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1C5C6AB10(v4, v5, va);
}

BOOL OUTLINED_FUNCTION_48_3()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_48_4()
{

  JUMPOUT(0x1C69534E0);
}

void *OUTLINED_FUNCTION_48_5()
{
  sub_1C5D5CEC8(v0 + 200);

  return memcpy((v0 + 832), (v0 + 200), 0xD9uLL);
}

void OUTLINED_FUNCTION_48_6()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1C6956920);
}

uint64_t OUTLINED_FUNCTION_48_8()
{

  return type metadata accessor for EventTime();
}

uint64_t OUTLINED_FUNCTION_48_9()
{

  return sub_1C60179F0();
}

id OUTLINED_FUNCTION_48_10(void *a1)
{

  return sub_1C5DFE520(a1);
}

id OUTLINED_FUNCTION_48_11()
{

  return sub_1C5E1182C(1004, v0);
}

uint64_t sub_1C5C72280()
{
  swift_beginAccess();
  sub_1C5C6B024(0, &qword_1EC1A96F8, type metadata accessor for _CriticalSectionAssertion, MEMORY[0x1E69D3908]);
  sub_1C6015430();
  swift_endAccess();
  v1 = sub_1C5C6AA20();

  *(v0 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_inCriticalSection) = v1 != 0;
  return sub_1C5C72348();
}

uint64_t sub_1C5C72348()
{
  if (*(v0 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_inCriticalSection) == 1)
  {
    v1 = sub_1C5C723F4();
    v2 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_mediaRemoteCriticalSection;
    swift_beginAccess();
    v3 = *(v0 + v2);
    if (v3)
    {
      sub_1C5E3CBE0(v3);
    }

    *(v0 + v2) = v1;
  }

  else
  {
    v4 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_mediaRemoteCriticalSection;
    swift_beginAccess();
    v5 = *(v0 + v4);
    if (v5)
    {
      sub_1C5E3CBE0(v5);
    }

    *(v0 + v4) = 0;
  }

  return swift_endAccess();
}

id sub_1C5C723F4()
{
  if (qword_1EC1A9338 != -1)
  {
    swift_once();
  }

  if (byte_1EC1A9340 != 1)
  {
    return 0;
  }

  if (qword_1EC1A9590 != -1)
  {
    swift_once();
  }

  v0 = sub_1C60162D0();
  __swift_project_value_buffer(v0, qword_1EC1BE438);
  v1 = sub_1C60162B0();
  v2 = sub_1C6016F30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C5C61000, v1, v2, "[CRIT] MRCriticalSectionAssertion | enter []", v3, 2u);
    MEMORY[0x1C6956920](v3, -1, -1);
  }

  v4 = [objc_opt_self() enterCriticalSection];
  v5 = sub_1C60162B0();
  v6 = sub_1C6016F30();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_1C5C61000, v5, v6, "[CRIT] MRCriticalSectionAssertion | started [] | token=%{public}@", v7, 0xCu);
    sub_1C5C75594(v8, sub_1C5CC55A0);
    MEMORY[0x1C6956920](v8, -1, -1);
    MEMORY[0x1C6956920](v7, -1, -1);
  }

  return v4;
}

uint64_t sub_1C5C72608()
{
  result = MSVDeviceIsAudioAccessory();
  byte_1EC1A9340 = result;
  return result;
}

uint64_t sub_1C5C72628()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1C6017630();
  v5 = sub_1C5C66260(&qword_1EC1A8990, MEMORY[0x1E69E8820]);
  OUTLINED_FUNCTION_252();
  sub_1C60178E0();
  sub_1C5C66260(&qword_1EC1A8998, MEMORY[0x1E69E87E8]);
  sub_1C6017640();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C5D37AC8;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1C5C727B4(uint64_t a1, uint64_t a2)
{
  sub_1C5C72C04(0, &qword_1EC1A9708, &unk_1EC1A9710, MEMORY[0x1E69C66E8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5C72A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C6017620();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5C72628, 0, 0);
}

void sub_1C5C72B9C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C5C74680(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C5C72C04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_43();
    v11 = sub_1C5C74680(v8, v9, v10);
    v12 = a5(a1, v11);
    if (!v13)
    {
      atomic_store(v12, v5);
    }
  }
}

void sub_1C5C72C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C60177E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void OUTLINED_FUNCTION_65_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_65_3()
{
}

uint64_t OUTLINED_FUNCTION_65_4()
{

  return sub_1C5D3F100();
}

void OUTLINED_FUNCTION_65_6()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t sub_1C5C74680(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_1()
{
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17)
{
  a17 = 0;
  a15 = 0u;
  a16 = 0u;

  return MEMORY[0x1EEE2E508](v18, v19, v17, v20, v21, &a15);
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return sub_1C6016AC0();
}

id OUTLINED_FUNCTION_22_7(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_22_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C6017650();
}

uint64_t *OUTLINED_FUNCTION_22_15()
{

  return sub_1C5D86C6C(v0, 0, 0, 1);
}

void OUTLINED_FUNCTION_22_20(uint64_t a1@<X8>)
{
  *(a1 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v4 << v1;
  *(*(v2 + 48) + 8 * v1) = v3;
  ++*(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_22_22(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  return result;
}

id sub_1C5C74A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v7[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_ready] = 1;
  *&v7[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_counter] = 0;
  v15 = &v7[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name];
  *v15 = a1;
  v15[1] = a2;
  if (!a3)
  {
    v17 = 0;
    v16 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    v18 = 0;
    goto LABEL_6;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = &unk_1C6044EA8;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v19 = sub_1C5E4253C;
LABEL_6:
  sub_1C5C74C28(a3, a4);
  sub_1C5C74C28(a5, a6);
  v20 = &v7[OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_actions];
  *v20 = 0;
  *(v20 + 1) = v17;
  *(v20 + 2) = v16;
  *(v20 + 3) = v19;
  *(v20 + 4) = v18;
  v23.receiver = v7;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_1C5C74C18(a5, a6);
  sub_1C5C74C18(a3, a4);
  return v21;
}

uint64_t sub_1C5C74C18(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C5C74C28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C5C74C38()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C74DC4(void *a1)
{
  v2 = v1;
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  type metadata accessor for PlaybackEngineSessionManager(0);
  swift_allocObject();
  *(v2 + 16) = PlaybackEngineSessionManager.init(playbackEngine:)(a1);
  return v2;
}

uint64_t type metadata accessor for PlaybackEngineSessionManager(uint64_t a1)
{
  result = qword_1ED7DFEF8;
  if (!qword_1ED7DFEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5C74E6C(uint64_t a1)
{
  sub_1C5E37504(319, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t OUTLINED_FUNCTION_62_1()
{
  *(v0 + 24) = *(v0 + 224);

  return sub_1C5CB5808();
}

void OUTLINED_FUNCTION_62_4()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_62_5()
{

  return sub_1C5DBBF0C();
}

uint64_t OUTLINED_FUNCTION_62_8()
{
}

uint64_t sub_1C5C75008()
{
  v1 = [v0 swiftStorage];
  sub_1C6017390();
  swift_unknownObjectRelease();
  type metadata accessor for EngineComponents();
  swift_dynamicCast();
  return v3;
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return sub_1C6017540();
}

void OUTLINED_FUNCTION_39_4()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_39_7(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_39_9(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

void sub_1C5C7549C(uint64_t a1)
{
  if (!qword_1EC1A9200)
  {
    sub_1C5C6B024(255, &unk_1EC1A91F0, sub_1C5C755F0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A9200);
    }
  }
}

uint64_t sub_1C5C75534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C5C75594(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_50_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C5C755F0()
{
  result = qword_1ED7DCA90;
  if (!qword_1ED7DCA90)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED7DCA90);
  }

  return result;
}

id sub_1C5C7565C(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC17MediaPlaybackCore19PodcastsUPPConsumer_subscription] = 0;
  v7 = OBJC_IVAR____TtC17MediaPlaybackCore19PodcastsUPPConsumer_playbackPositionController;
  *&v3[v7] = [objc_allocWithZone(sub_1C6015FE0()) init];
  v8 = &v3[OBJC_IVAR____TtC17MediaPlaybackCore19PodcastsUPPConsumer_playbackPositionHandler];
  *v8 = 0;
  v8[1] = 0;
  v9 = [a1 engineID];
  v10 = sub_1C6016940();
  v12 = v11;

  v13 = &v3[OBJC_IVAR____TtC17MediaPlaybackCore19PodcastsUPPConsumer_engineID];
  *v13 = v10;
  v13[1] = v12;
  v14 = *v8;
  v15 = v8[1];
  *v8 = a2;
  v8[1] = a3;
  sub_1C5C74C28(a2, a3);
  sub_1C5C74C18(v14, v15);
  v18.receiver = v3;
  v18.super_class = type metadata accessor for PodcastsUPPConsumer();
  v16 = objc_msgSendSuper2(&v18, sel_init);
  sub_1C5C74C18(a2, a3);

  return v16;
}

id sub_1C5C75798(void *a1)
{
  ObjectType = swift_getObjectType();
  v12 = sub_1C6016FC0();
  v2 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146();
  v5 = v4 - v3;
  v6 = sub_1C6016F90();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v7 = sub_1C6016690();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_146();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore32PodcastsPlayActivityFeedConsumer_subscription] = 0;
  v11 = OBJC_IVAR____TtC17MediaPlaybackCore32PodcastsPlayActivityFeedConsumer_workQueue;
  sub_1C5C64D74(0, &qword_1ED7DCE50, 0x1E69E9610);
  sub_1C6016660();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1C5C660B0(&qword_1EC1A93A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v8 = MEMORY[0x1E69E8030];
  sub_1C5CC53A8(0, &unk_1EC1A9448, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1C5CC5A78(qword_1EC1A9430, &unk_1EC1A9448, v8);
  sub_1C60173B0();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v12);
  *&v1[v11] = sub_1C6016FF0();
  swift_unknownObjectWeakAssign();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v15, sel_init);

  return v9;
}

void SleepTimerController.init(playbackEngine:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____MPCSleepTimerController_fadeOutDuration] = 0x4000000000000000;
  *&v1[OBJC_IVAR____MPCSleepTimerController_timer] = 0;
  v3 = &v1[OBJC_IVAR____MPCSleepTimerController_identifier];
  *v3 = 0x6D69547065656C73;
  *(v3 + 1) = 0xEF64657269467265;
  OUTLINED_FUNCTION_3(OBJC_IVAR____MPCSleepTimerController_mode);
  *&v1[OBJC_IVAR____MPCSleepTimerController_engineObserver] = 0;
  *&v1[OBJC_IVAR____MPCSleepTimerController_observedChapter] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SleepTimerController();
  v4 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectWeakAssign();
  v5 = objc_allocWithZone(MPCSleepTimerEngineObserver);
  v6 = v4;
  v7 = [v5 initWithDelegate_];
  v8 = *&v6[OBJC_IVAR____MPCSleepTimerController_engineObserver];
  *&v6[OBJC_IVAR____MPCSleepTimerController_engineObserver] = v7;
  v9 = v7;

  if (v9)
  {
    [a1 addEngineObserver_];
  }

  else
  {
    __break(1u);
  }
}

id TranscriptAlignmentController.init(playbackEngine:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(type metadata accessor for AssetReaderImplementation());
  v4 = a1;
  v5 = sub_1C5C75EC4(v4);
  v6 = &v2[OBJC_IVAR____MPCTranscriptAlignmentController_platformImplementation];
  *v6 = v5;
  v6[1] = &off_1F4540478;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for TranscriptAlignmentController();
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

void sub_1C5C75DE4(uint64_t a1)
{
  if (!qword_1EC1A89A0)
  {
    sub_1C5C7616C(255, &qword_1EC1A8DF8, MEMORY[0x1E69E5E28]);
    type metadata accessor for os_unfair_lock_s();
    v1 = sub_1C60175B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1A89A0);
    }
  }
}

char *sub_1C5C75EC4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1C6017080();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation____lazy_storage___fullAlignmentTask] = 0;
  v6 = OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_scoutingTasks;
  sub_1C5C7610C();
  v7 = sub_1C6016880();
  sub_1C5C75DE4(0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *&v2[v6] = v8;
  v9 = &v2[OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_sessionID];
  *v9 = 0;
  v9[1] = 0;
  *&v2[OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_currentItem] = 0;
  *(v8 + 16) = v7;
  v2[OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_isEnabled] = 1;
  *&v2[OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_subscription] = 0;
  v10 = [objc_opt_self() defaultCenter];
  sub_1C6017090();

  sub_1C5C761DC(0);
  swift_allocObject();
  sub_1C5C7626C(&qword_1ED7DCDF8, 255, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  *&v2[OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_alignmentCache] = sub_1C6015D10();
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  swift_unknownObjectWeakAssign();
  v12 = v11;
  [a1 addEngineObserver_];

  return v12;
}

void sub_1C5C7610C()
{
  if (!qword_1EC1A8D58)
  {
    v0 = sub_1C6016C80();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8D58);
    }
  }
}

void sub_1C5C7616C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1C5C7610C();
    v7 = a3(a1, MEMORY[0x1E69E63B0], v6, MEMORY[0x1E69E63D0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C5C761DC(uint64_t a1)
{
  if (!qword_1EC1A8F30)
  {
    sub_1C6015C20();
    sub_1C60160A0();
    v1 = sub_1C6015D20();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1A8F30);
    }
  }
}

uint64_t sub_1C5C7626C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *_MSV_XXH_XXH64_update(char *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    *result += __n;
    v6 = *(result + 18);
    if (v6 + __n <= 0x1F)
    {
      result = memcpy(&result[v6 + 40], __src, __n);
      LODWORD(v7) = *(v5 + 18) + v3;
LABEL_12:
      *(v5 + 18) = v7;
      return result;
    }

    v8 = &__src[__n];
    if (v6)
    {
      result = memcpy(&result[v6 + 40], __src, (32 - v6));
      v9 = __ROR8__(*(v5 + 2) - 0x3D4D51C2D82B14B1 * *(v5 + 6), 33);
      *(v5 + 1) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 1) - 0x3D4D51C2D82B14B1 * *(v5 + 5), 33);
      *(v5 + 2) = 0x9E3779B185EBCA87 * v9;
      v10 = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 4) - 0x3D4D51C2D82B14B1 * *(v5 + 8), 33);
      *(v5 + 3) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 3) - 0x3D4D51C2D82B14B1 * *(v5 + 7), 33);
      *(v5 + 4) = v10;
      v4 += (32 - *(v5 + 18));
      *(v5 + 18) = 0;
    }

    if (v4 + 32 <= v8)
    {
      v11 = *(v5 + 1);
      v12 = *(v5 + 2);
      v14 = *(v5 + 3);
      v13 = *(v5 + 4);
      do
      {
        v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *v4, 33);
        v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
        v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
        v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
        v4 += 32;
      }

      while (v4 <= v8 - 32);
      *(v5 + 1) = v11;
      *(v5 + 2) = v12;
      *(v5 + 3) = v14;
      *(v5 + 4) = v13;
    }

    if (v4 < v8)
    {
      v7 = v8 - v4;
      result = memcpy(v5 + 40, v4, v7);
      goto LABEL_12;
    }
  }

  return result;
}

unint64_t _MSV_XXH_XXH64_digest(void *a1)
{
  if (*a1 < 0x20uLL)
  {
    v1 = a1[3] + 0x27D4EB2F165667C5;
  }

  else
  {
    v1 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(a1[2], 57) + __ROR8__(a1[1], 63) + __ROR8__(a1[3], 52) + __ROR8__(a1[4], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[2], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[3], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[4], 33))) - 0x7A1435883D4D519DLL;
  }

  v2 = v1 + *a1;
  v3 = a1 + 5;
  v4 = *a1 & 0x1FLL;
  if (v4 >= 8)
  {
    do
    {
      v5 = *v3++;
      v2 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v5, 33)) ^ v2, 37);
      v4 -= 8;
    }

    while (v4 > 7);
  }

  if (v4 >= 4)
  {
    v6 = *v3;
    v3 = (v3 + 4);
    v2 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v6) ^ v2, 41);
    v4 -= 4;
  }

  for (; v4; --v4)
  {
    v7 = *v3;
    v3 = (v3 + 1);
    v2 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v7) ^ v2, 53);
  }

  v8 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) >> 29));
  return v8 ^ HIDWORD(v8);
}

void sub_1C5C79F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5C7A800(_BYTE *a1@<X8>)
{
  v2 = sub_1C6014C40();
  if (qword_1EC1A9040 != -1)
  {
    swift_once();
  }

  v3 = sub_1C6016940();
  v5 = v4;
  if (v3 == sub_1C6016940() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6017860();
  }

  *a1 = v8 & 1;
}

uint64_t sub_1C5C7A8DC(char *a1, uint64_t a2)
{
  sub_1C5C671CC(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = sub_1C6016C30();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
  sub_1C6016C10();

  v9 = sub_1C6016C00();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = v7;
  sub_1C5CDC270();
}

uint64_t sub_1C5C7A9E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1C5C7ACE0(uint64_t a1)
{
  sub_1C5C67DB0(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_47_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1C5CE2ACC(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return sub_1C5DBBF0C();
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t result, uint64_t a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  return result;
}

char *OUTLINED_FUNCTION_47_3(uint64_t a1, uint64_t a2)
{

  return sub_1C5D0F238(0, a2, 0);
}

uint64_t OUTLINED_FUNCTION_47_6(uint64_t a1)
{

  return sub_1C6016880();
}

id MPCHashedDSIDFromDSID(void *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = a1;
  memset(v55, 0, sizeof(v55));
  CC_SHA1_Init(v55);
  v2 = v1;
  CC_SHA1_Update(v55, [v2 UTF8String], objc_msgSend(v2, "length"));

  memset(&v56[8], 0, 64);
  *v56 = 4001;
  CC_SHA1_Final(&v56[8], v55);
  v57[0] = *v56;
  v57[1] = *&v56[16];
  v57[2] = *&v56[32];
  v57[3] = *&v56[48];
  v58 = *&v56[64];
  if (*v56 > 3999)
  {
    if (*v56 > 4255)
    {
      if (*v56 == 4256)
      {
        v44 = v57 + 8;
        v45 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v46 = v45;
        for (i = 0; i != 64; i += 2)
        {
          v48 = *v44++;
          v49 = &v45[i];
          *v49 = MSVFastHexStringFromBytes_hexCharacters_30108[v48 >> 4];
          v49[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v48 & 0xF];
        }

        v15 = objc_alloc(MEMORY[0x1E696AEC0]);
        v16 = v46;
        v17 = 64;
      }

      else
      {
        if (*v56 != 4512)
        {
          goto LABEL_52;
        }

        v22 = v57 + 8;
        v23 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v24 = v23;
        for (j = 0; j != 128; j += 2)
        {
          v26 = *v22++;
          v27 = &v23[j];
          *v27 = MSVFastHexStringFromBytes_hexCharacters_30108[v26 >> 4];
          v27[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v26 & 0xF];
        }

        v15 = objc_alloc(MEMORY[0x1E696AEC0]);
        v16 = v24;
        v17 = 128;
      }
    }

    else if (*v56 == 4000)
    {
      v34 = v57 + 8;
      v35 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v36 = v35;
      for (k = 0; k != 32; k += 2)
      {
        v38 = *v34++;
        v39 = &v35[k];
        *v39 = MSVFastHexStringFromBytes_hexCharacters_30108[v38 >> 4];
        v39[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v38 & 0xF];
      }

      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = v36;
      v17 = 32;
    }

    else
    {
      if (*v56 != 4001)
      {
        goto LABEL_52;
      }

      v9 = v57 + 8;
      v10 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v11 = v10;
      for (m = 0; m != 40; m += 2)
      {
        v13 = *v9++;
        v14 = &v10[m];
        *v14 = MSVFastHexStringFromBytes_hexCharacters_30108[v13 >> 4];
        v14[1] = MSVFastHexStringFromBytes_hexCharacters_30108[v13 & 0xF];
      }

      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = v11;
      v17 = 40;
    }

LABEL_47:
    v33 = [v15 initWithBytesNoCopy:v16 length:v17 encoding:4 freeWhenDone:{1, 4001, *v55}];
    goto LABEL_48;
  }

  if (*v56 > 2999)
  {
    if (*v56 == 3000)
    {
      LODWORD(v59[0]) = bswap32(DWORD2(v57[0]));
      v40 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v41 = 0;
      v42 = v40 + 1;
      do
      {
        v43 = *(v59 + v41);
        *(v42 - 1) = MSVFastHexStringFromBytes_hexCharacters_30108[v43 >> 4];
        *v42 = MSVFastHexStringFromBytes_hexCharacters_30108[v43 & 0xF];
        v42 += 2;
        ++v41;
      }

      while (v41 != 4);
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = v40;
      v17 = 8;
    }

    else
    {
      if (*v56 != 3001)
      {
        goto LABEL_52;
      }

      v59[0] = bswap64(*(&v57[0] + 1));
      v18 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v19 = 0;
      v20 = v18 + 1;
      do
      {
        v21 = *(v59 + v19);
        *(v20 - 1) = MSVFastHexStringFromBytes_hexCharacters_30108[v21 >> 4];
        *v20 = MSVFastHexStringFromBytes_hexCharacters_30108[v21 & 0xF];
        v20 += 2;
        ++v19;
      }

      while (v19 != 8);
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = v18;
      v17 = 16;
    }

    goto LABEL_47;
  }

  if (*v56 == 1000)
  {
    v28 = *(&v57[0] + 1);
    if (*(&v57[0] + 1))
    {
      v29 = &v60 + 1;
      quot = *(&v57[0] + 1);
      do
      {
        v31 = lldiv(quot, 10);
        quot = v31.quot;
        if (v31.rem >= 0)
        {
          LOBYTE(v32) = v31.rem;
        }

        else
        {
          v32 = -v31.rem;
        }

        *(v29 - 2) = v32 + 48;
        v8 = (v29 - 2);
        --v29;
      }

      while (v31.quot);
      if (v28 < 0)
      {
        *(v29 - 2) = 45;
        v8 = (v29 - 2);
      }

      v7 = (&v60 - v8);
      goto LABEL_37;
    }

    goto LABEL_53;
  }

  if (*v56 != 2000)
  {
LABEL_52:
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [v53 handleFailureInFunction:v54 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v50 = &stru_1F454A698;
    goto LABEL_49;
  }

  v3 = DWORD2(v57[0]);
  if (DWORD2(v57[0]))
  {
    v4 = &v60;
    do
    {
      v5 = ldiv(v3, 10);
      v3 = v5.quot;
      if (v5.rem >= 0)
      {
        LOBYTE(v6) = v5.rem;
      }

      else
      {
        v6 = -v5.rem;
      }

      *(v4 - 1) = v6 + 48;
      v4 = (v4 - 1);
    }

    while (v5.quot);
    v7 = (&v60 - v4);
    v8 = v4;
LABEL_37:
    v33 = CFStringCreateWithBytes(0, v8, v7, 0x8000100u, 0);
LABEL_48:
    v50 = v33;
    goto LABEL_49;
  }

LABEL_53:
  v50 = @"0";
LABEL_49:

  v51 = [(__CFString *)v50 substringToIndex:7];

  return v51;
}

_OWORD *sub_1C5C7DACC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v3 userIdentity];
  v7 = [v6 DSID];

  if (v7)
  {
    [v7 unsignedLongLongValue];

    if (!a1)
    {
      goto LABEL_8;
    }
  }

  else if (!a1)
  {
    goto LABEL_8;
  }

  v8 = a1;
  if ([v8 _whaStreamerStorage])
  {
    sub_1C6017390();

    swift_unknownObjectRelease();
    return sub_1C5C70758(&v11, a2);
  }

LABEL_8:
  v10 = sub_1C6016790();
  result = sub_1C6016780();
  *(a2 + 24) = v10;
  *a2 = result;
  return result;
}

void *MPCPlaybackEngineEventGetMonotonicTime@<X0>(void *a1@<X8>)
{
  *a1 = 3;
  a1[1] = mach_absolute_time();
  a1[2] = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  MSVGetKernelBootTime();
  a1[3] = (v2 * 1000000000.0);
  result = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  a1[4] = v4;
  return result;
}

void _MPCPlaybackEngineEventStreamValidateSystemTime(void *a1, unint64_t a2)
{
  v11 = a1;
  v3 = _MPCPlaybackEngineEventStreamValidateSystemTime_minimumEventTime;
  if (_MPCPlaybackEngineEventStreamValidateSystemTime_minimumEventTime)
  {
    v4 = _MPCPlaybackEngineEventStreamValidateSystemTime_maximumEventTime;
  }

  else
  {
    MSVGetKernelBootTime();
    v3 = (v5 * 1000000000.0);
    _MPCPlaybackEngineEventStreamValidateSystemTime_minimumEventTime = v3;
    v4 = v3 + 31536000000000000;
    _MPCPlaybackEngineEventStreamValidateSystemTime_maximumEventTime = v3 + 31536000000000000;
  }

  if (v3 >= a2 || v4 <= a2)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MPCPlaybackEngineEventStreamValidateSystemTime(MPCPlaybackEngineEventType  _Nonnull __strong, uint64_t)"}];
    [v9 handleFailureInFunction:v10 file:@"MPCPlaybackEngineEventStream.m" lineNumber:118 description:{@"Event %@ time out of bounds: %llu < %llu < %llu", v11, _MPCPlaybackEngineEventStreamValidateSystemTime_minimumEventTime, a2, _MPCPlaybackEngineEventStreamValidateSystemTime_maximumEventTime}];
  }

  if (a2 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MPCPlaybackEngineEventStreamValidateSystemTime(MPCPlaybackEngineEventType  _Nonnull __strong, uint64_t)"}];
    [v7 handleFailureInFunction:v8 file:@"MPCPlaybackEngineEventStream.m" lineNumber:119 description:{@"Event %@ time overflows int64 size: %llu < %lld", v11, a2, 0x7FFFFFFFFFFFFFFFLL}];
  }
}

void sub_1C5C7E3E4(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore19BookmarkingConsumer_subscription] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_7_3();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v16 = sub_1C5CC7DC4;
  v17 = v2;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v14 = sub_1C5CDC1F0;
  v15 = &block_descriptor_2;
  v3 = _Block_copy(v13);
  v4 = v1;

  OUTLINED_FUNCTION_2_1();
  _Block_release(v3);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v16 = sub_1C5CC7DD4;
  v17 = v5;
  v13[0] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_2();
  v14 = v6;
  v15 = &block_descriptor_14;
  v7 = _Block_copy(v13);
  v8 = v4;

  OUTLINED_FUNCTION_2_1();
  _Block_release(v7);
  OUTLINED_FUNCTION_7_3();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = sub_1C5CC7E4C;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_1_2();
  v14 = v10;
  v15 = &block_descriptor_20;
  v11 = _Block_copy(v13);
  v12 = v8;

  OUTLINED_FUNCTION_2_1();
  _Block_release(v11);
}

uint64_t sub_1C5C7E5FC()
{
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  return sub_1C5C653C8(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1C5C653C8(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C5C7E940(void *a1)
{
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore23PlaybackHistoryConsumer_subscription] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v6[4] = sub_1C5CCB4CC;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C5CDC1F0;
  v6[3] = &block_descriptor_12;
  v4 = _Block_copy(v6);
  v5 = v1;

  [a1 subscribeToEventType:@"item-end" handler:v4];
  _Block_release(v4);
}

uint64_t sub_1C5C7EA4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper_10_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C5C7EB7C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore26PlaybackStatisticsConsumer_subscription] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v12 = sub_1C5CD0FD4;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1C5CDC1F0;
  v11 = &block_descriptor_12_0;
  v3 = _Block_copy(&v8);
  v4 = v1;

  OUTLINED_FUNCTION_2_1();
  _Block_release(v3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_1C5CD0FE4;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1C5CDC1F0;
  v11 = &block_descriptor_18;
  v6 = _Block_copy(&v8);
  v7 = v4;

  OUTLINED_FUNCTION_2_1();
  _Block_release(v6);
}

uint64_t sub_1C5C7ED20()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1C5C7EE38(void *a1)
{
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore19PodcastsUPPConsumer_subscription] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1C5C7F220(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035CF0;
  *(inited + 32) = @"item-end";
  *(inited + 40) = @"item-pause";
  *(inited + 48) = @"item-update";
  *(inited + 56) = @"item-position-tick";
  v4 = *&v1[OBJC_IVAR____TtC17MediaPlaybackCore19PodcastsUPPConsumer_engineID];
  v3 = *&v1[OBJC_IVAR____TtC17MediaPlaybackCore19PodcastsUPPConsumer_engineID + 8];
  v24 = v4;
  OUTLINED_FUNCTION_15();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = @"item-end";
  v30 = sub_1C5CD44B8;
  v31 = v5;
  aBlock[1] = 1107296256;
  aBlock[0] = MEMORY[0x1E69E9820];
  v28 = sub_1C5CDC1F0;
  v29 = &block_descriptor_5;
  v6 = _Block_copy(aBlock);
  v7 = @"item-end";
  v8 = @"item-pause";
  v9 = @"item-update";
  v26 = @"item-position-tick";

  v10 = v1;

  [a1 subscribeToEventType:v7 handler:v6];
  _Block_release(v6);

  OUTLINED_FUNCTION_15();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v24;
  v11[4] = v3;
  v11[5] = v8;
  OUTLINED_FUNCTION_1_5();
  v28 = sub_1C5CDC1F0;
  v29 = &block_descriptor_18_0;
  v12 = _Block_copy(aBlock);
  v13 = v8;

  v14 = v10;

  [a1 subscribeToEventType:v13 handler:v12];
  _Block_release(v12);

  OUTLINED_FUNCTION_15();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v24;
  v15[4] = v3;
  v15[5] = v9;
  OUTLINED_FUNCTION_1_5();
  v28 = sub_1C5CDC1F0;
  v29 = &block_descriptor_25;
  v16 = _Block_copy(aBlock);
  v17 = v9;

  v18 = v14;

  [a1 subscribeToEventType:v17 handler:v16];
  _Block_release(v16);

  swift_setDeallocating();
  v19 = v26;
  sub_1C5C7F738();
  OUTLINED_FUNCTION_15();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v24;
  v20[4] = v3;
  v20[5] = v19;
  OUTLINED_FUNCTION_1_5();
  v28 = sub_1C5CDC1F0;
  v29 = &block_descriptor_32_0;
  v21 = _Block_copy(aBlock);
  v22 = v19;

  v23 = v18;

  [a1 subscribeToEventType:v22 handler:v21];
  _Block_release(v21);
}

void sub_1C5C7F220(uint64_t a1)
{
  if (!qword_1ED7DCB30[0])
  {
    type metadata accessor for MPCPlaybackEngineEventType();
    v1 = sub_1C60177E0();
    if (!v2)
    {
      atomic_store(v1, qword_1ED7DCB30);
    }
  }
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_7()
{
}

void OUTLINED_FUNCTION_15_12()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_15_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_beginAccess();
}

uint64_t *OUTLINED_FUNCTION_15_17()
{

  return sub_1C5D86C6C(v1, 0, 0, v0);
}

uint64_t OUTLINED_FUNCTION_15_19()
{
}

uint64_t OUTLINED_FUNCTION_15_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C5D7E40C(v9 + 24, &a9);
}

uint64_t OUTLINED_FUNCTION_15_21()
{

  return sub_1C6016900();
}

uint64_t OUTLINED_FUNCTION_15_24()
{

  return sub_1C60174F0();
}

void OUTLINED_FUNCTION_15_26(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E6720];

  sub_1C5E38184(0, a2, a3, a4, v5);
}

uint64_t sub_1C5C7F590()
{
  v0 = qword_1EC1AA790;

  return v0;
}

void sub_1C5C7F700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1C5C7F7C4(uint64_t a1)
{
  v2 = v1;
  if (qword_1EC1A9580 != -1)
  {
    OUTLINED_FUNCTION_2_4(&qword_1EC1A9580);
  }

  v4 = sub_1C60162D0();
  __swift_project_value_buffer(v4, qword_1EC1BE420);
  v5 = sub_1C60162B0();
  v6 = sub_1C6016F10();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    OUTLINED_FUNCTION_7_2(&dword_1C5C61000, v8, v9, "Podcasts/subscribeToEventStream");
    MEMORY[0x1C6956920](v7, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC17MediaPlaybackCore32PodcastsPlayActivityFeedConsumer_subscription) = a1;
  swift_unknownObjectRelease();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = sub_1C5CC5398;
  v31 = v10;
  OUTLINED_FUNCTION_0_7();
  v27[1] = 1107296256;
  v28 = sub_1C5CDC1F0;
  v29 = &block_descriptor_1;
  v11 = _Block_copy(v27);
  swift_unknownObjectRetain();

  v12 = OUTLINED_FUNCTION_4_2();
  [v12 v13];
  _Block_release(v11);
  v30 = sub_1C5CC5398;
  v31 = v10;
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_1();
  v28 = v14;
  v29 = &block_descriptor_5;
  v15 = _Block_copy(v27);

  v16 = OUTLINED_FUNCTION_4_2();
  [v16 v17];
  _Block_release(v15);
  v30 = sub_1C5CC5398;
  v31 = v10;
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_1();
  v28 = v18;
  v29 = &block_descriptor_8;
  v19 = _Block_copy(v27);

  v20 = OUTLINED_FUNCTION_4_2();
  [v20 v21];
  _Block_release(v19);
  v30 = sub_1C5CC5398;
  v31 = v10;
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_1();
  v28 = v22;
  v29 = &block_descriptor_11;
  v23 = _Block_copy(v27);

  v24 = OUTLINED_FUNCTION_4_2();
  [v24 v25];
  _Block_release(v23);
}

uint64_t sub_1C5C7FA88()
{
  MEMORY[0x1C6956A70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C7FB54()
{
  v0 = qword_1EC1AA660;

  return v0;
}

uint64_t sub_1C5C7FC08(void *a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1C5CE360C;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C5CDC1F0;
  v6[3] = &block_descriptor_7;
  v4 = _Block_copy(v6);

  [a1 subscribeToEventType:@"item-position-jump" handler:v4];
  _Block_release(v4);
  *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_subscription) = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C5C7FD10()
{
  MEMORY[0x1C6956A70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_144_0()
{

  return swift_beginAccess();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id _MPCSessionTypeIdentifierFromHashedDSID(void *a1, void *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v9[1] = @"subscription";
  v9[2] = @"cloudLibrary";
  v9[3] = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 arrayWithObjects:v9 count:4];

  v7 = [v6 componentsJoinedByString:@":"];

  return v7;
}

id _MPCSessionTypeIdentifierForStorefront(void *a1, void *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v9[1] = @"subscription";
  v9[2] = @"storeFront";
  v9[3] = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 arrayWithObjects:v9 count:4];

  v7 = [v6 componentsJoinedByString:@":"];

  return v7;
}

uint64_t sub_1C5C8250C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

uint64_t sub_1C5C8259C()
{
  OUTLINED_FUNCTION_13();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_0(v3);
  *v4 = v5;
  v4[1] = sub_1C5C834C8;

  return v7(v1);
}

uint64_t sub_1C5C82688()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_27_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_61_2(v5);

  return sub_1C5C829CC(v7, v8, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return swift_arrayDestroy();
}

BOOL OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C5C6F540(v9, &a9, v10);
}

void OUTLINED_FUNCTION_21_4(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E5E18];

  sub_1C5C7616C(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_21_7()
{
}

uint64_t OUTLINED_FUNCTION_21_16()
{

  return sub_1C5C74C28(v1, v0);
}

uint64_t OUTLINED_FUNCTION_21_17()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_21_21(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  STACK[0x370] = a3;
  STACK[0x358] = a1;
  STACK[0x360] = a2;
}

unint64_t OUTLINED_FUNCTION_21_23(unint64_t result)
{
  *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v1 + 48) + 8 * result) = v3;
  ++*(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_26()
{

  return swift_slowAlloc();
}

uint64_t sub_1C5C829CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_1C6016C10();
  *(v5 + 24) = sub_1C6016C00();
  v7 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5C82B14, v7, v6);
}

void _MPCProcessAudioTapRegister(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", a1];
  os_unfair_lock_lock(&_activeTapsLock);
  if (_activeTaps)
  {
    [_activeTaps addObject:v3];
  }

  else
  {
    v1 = [MEMORY[0x1E695DFA8] setWithObject:v3];
    v2 = _activeTaps;
    _activeTaps = v1;
  }

  os_unfair_lock_unlock(&_activeTapsLock);
}

uint64_t sub_1C5C82B14()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 32);

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR___MPCFairPlayPerformanceController_context];

  *(v3 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_isAppActive) = v1;

  if (v1 == 1)
  {
    v4 = swift_unknownObjectUnownedLoadStrong();
    sub_1C5C82BD0();
  }

  OUTLINED_FUNCTION_172();

  return v5();
}

uint64_t sub_1C5C82BD0()
{
  v1 = [objc_opt_self() shared];
  OUTLINED_FUNCTION_7_3();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = v0;
  sub_1C5C82CC8(0xD000000000000023, 0x80000001C604B060, &unk_1C60371F0, v2, 0, 0);
  swift_unknownObjectRelease();
}

uint64_t sub_1C5C82C90()
{
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

id sub_1C5C82CC8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_6_36();
  sub_1C5C6B024(0, v13, v14, MEMORY[0x1E69E6720]);
  v16 = OUTLINED_FUNCTION_13_3(v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = v6 + OBJC_IVAR___MPCCriticalSectionManager__context;
  os_unfair_lock_lock(v19);
  sub_1C5C82F68((v19 + 8), a1, a2, a3, a4, a5, a6, &v30);
  os_unfair_lock_unlock(v19);
  result = v30;
  if (!v30)
  {
    if (qword_1EC1A9590 != -1)
    {
      OUTLINED_FUNCTION_2_52(&qword_1EC1A9590);
    }

    v21 = sub_1C60162D0();
    __swift_project_value_buffer(v21, qword_1EC1BE438);
    OUTLINED_FUNCTION_73();

    v22 = sub_1C60162B0();
    v23 = sub_1C6016F30();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1C5C6AB10(a1, a2, &v30);
      _os_log_impl(&dword_1C5C61000, v22, v23, "[CRIT] perform(uniqueTaskNamed: %{public}s) | running [immediate]", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    v26 = sub_1C6016C30();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v26);
    OUTLINED_FUNCTION_15();
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = a3;
    v27[5] = a4;

    sub_1C5E3F6EC(0, 0, v18, 0, 0, &unk_1C6044F50, v27);

    sub_1C5C7ACE0(v18);
    v28 = objc_allocWithZone(type metadata accessor for _CriticalSectionContinuation());
    OUTLINED_FUNCTION_73();

    return sub_1C5C74A9C(a1, a2, 0, 0, 0, 0);
  }

  return result;
}

void sub_1C5C82F68(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t i@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  if (qword_1EC1A9590 != -1)
  {
LABEL_33:
    swift_once();
  }

  v14 = sub_1C60162D0();
  __swift_project_value_buffer(v14, qword_1EC1BE438);

  v15 = sub_1C60162B0();
  v16 = sub_1C6016F30();

  v39 = i;
  v40 = a5;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v44[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1C5C6AB10(a2, a3, v44);
    _os_log_impl(&dword_1C5C61000, v15, v16, "[CRIT] perform(uniqueTaskNamed: %{public}s) | checking", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1C6956920](v18, -1, -1);
    MEMORY[0x1C6956920](v17, -1, -1);
  }

  v19 = *a1;
  swift_beginAccess();
  sub_1C5C6B024(0, &qword_1EC1A96F8, type metadata accessor for _CriticalSectionAssertion, MEMORY[0x1E69D3908]);
  sub_1C6015430();
  swift_endAccess();
  v20 = sub_1C5C6AA20();

  if (v20)
  {
    v38 = a6;
    a1 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo25MPCCriticalSectionManagerP33_D1952812ADC71DAE08E6CF49EC2275968_Context_continuations;
    swift_beginAccess();
    v36 = a1;
    v37 = v19;
    v21 = *(a1 + v19);
    v22 = sub_1C5C6AA20();
    a5 = v21 & 0xC000000000000001;
    a6 = v21 & 0xFFFFFFFFFFFFFF8;

    for (i = 0; v22 != i; ++i)
    {
      if (a5)
      {
        v23 = MEMORY[0x1C6954040](i, v21);
      }

      else
      {
        if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v23 = *(v21 + 8 * i + 32);
      }

      a1 = v23;
      if (__OFADD__(i, 1))
      {
        goto LABEL_31;
      }

      v24 = *(v23 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name) == a2 && *(v23 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_name + 8) == a3;
      if (v24 || (sub_1C6017860() & 1) != 0)
      {

        v25 = sub_1C60162B0();
        v26 = sub_1C6016F30();

        if (os_log_type_enabled(v25, v26))
        {
          a5 = swift_slowAlloc();
          i = swift_slowAlloc();
          v43[0] = i;
          *a5 = 136446210;
          *(a5 + 4) = sub_1C5C6AB10(a2, a3, v43);
          _os_log_impl(&dword_1C5C61000, v25, v26, "[CRIT] perform(uniqueTaskNamed: %{public}s) | already staged", a5, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(i);
          MEMORY[0x1C6956920](i, -1, -1);
          MEMORY[0x1C6956920](a5, -1, -1);
        }

        v27 = *(a1 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_counter);
        v28 = (a1 + OBJC_IVAR____TtC17MediaPlaybackCoreP33_D1952812ADC71DAE08E6CF49EC22759628_CriticalSectionContinuation_counter);
        while (!__OFADD__(v27, 1))
        {
          v29 = v27;
          atomic_compare_exchange_strong_explicit(v28, &v29, v27 + 1, memory_order_relaxed, memory_order_relaxed);
          v24 = v29 == v27;
          v27 = v29;
          if (v24)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v30 = sub_1C60162B0();
    v31 = sub_1C6016F30();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_1C5C6AB10(a2, a3, v43);
      _os_log_impl(&dword_1C5C61000, v30, v31, "[CRIT] perform(uniqueTaskNamed: %{public}s) | staging", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1C6956920](v33, -1, -1);
      MEMORY[0x1C6956920](v32, -1, -1);
    }

    v34 = objc_allocWithZone(type metadata accessor for _CriticalSectionContinuation());

    sub_1C5C74C28(v38, a7);
    v35 = sub_1C5C74A9C(a2, a3, v39, v40, v38, a7);
    swift_beginAccess();
    a1 = v35;
    MEMORY[0x1C69535C0]();
    sub_1C5C68934(*((*(v36 + v37) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C6016B70();
    swift_endAccess();
  }

  else
  {
    a1 = 0;
  }

LABEL_29:
  *a8 = a1;
}

uint64_t sub_1C5C834C8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  OUTLINED_FUNCTION_172();

  return v3();
}

id MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    v5 = 0;
    goto LABEL_21;
  }

  if (![v1 hasPrefix:@"PLACEHOLDER"])
  {
    v6 = [v1 componentsSeparatedByString:@"∆"];
    if ([v6 count] == 2)
    {
      v7 = [MPCQueueControllerBehaviorMusicIdentifierComponents alloc];
      v3 = [v6 objectAtIndexedSubscript:0];
      v8 = [v6 objectAtIndexedSubscript:1];
      v5 = [(MPCQueueControllerBehaviorMusicIdentifierComponents *)v7 _initWithContentItemID:v1 sectionID:v3 itemID:v8 repeatIteration:0 type:0 loadingSectionID:0 itemSpecificContentItemID:0 deferredNextContentItemID:0];
LABEL_17:

      goto LABEL_19;
    }

    v3 = [v1 componentsSeparatedByString:@":"];
    if ([v3 count] != 3)
    {
      v5 = 0;
      goto LABEL_19;
    }

    v9 = [MPCQueueControllerBehaviorMusicIdentifierComponents alloc];
    v8 = [v3 objectAtIndexedSubscript:0];
    v10 = [v3 objectAtIndexedSubscript:2];
    v11 = [v3 objectAtIndexedSubscript:1];
    v12 = -[MPCQueueControllerBehaviorMusicIdentifierComponents _initWithContentItemID:sectionID:itemID:repeatIteration:type:loadingSectionID:itemSpecificContentItemID:deferredNextContentItemID:](v9, "_initWithContentItemID:sectionID:itemID:repeatIteration:type:loadingSectionID:itemSpecificContentItemID:deferredNextContentItemID:", v1, v8, v10, [v11 longLongValue], 0, 0, 0, 0);
LABEL_13:
    v5 = v12;

    goto LABEL_17;
  }

  v2 = [v1 componentsSeparatedByString:@"@"];
  if ([v2 count] != 3)
  {
    if ([v2 count] == 2)
    {
      v3 = [v2 objectAtIndexedSubscript:1];
      v5 = [[MPCQueueControllerBehaviorMusicIdentifierComponents alloc] _initWithContentItemID:v1 sectionID:v3 itemID:@"PLACEHOLDER_HEAD" repeatIteration:0 type:2 loadingSectionID:v3 itemSpecificContentItemID:0 deferredNextContentItemID:0];
      goto LABEL_10;
    }

    v6 = [v1 componentsSeparatedByString:@"="];

    if ([v6 count] != 2)
    {
      v5 = 0;
      goto LABEL_20;
    }

    v3 = [v6 objectAtIndexedSubscript:1];
    v8 = MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(v3);
    if ([v8 type])
    {
      v5 = 0;
      goto LABEL_17;
    }

    v14 = [MPCQueueControllerBehaviorMusicIdentifierComponents alloc];
    v10 = [v8 sectionID];
    v11 = [v8 itemID];
    v12 = -[MPCQueueControllerBehaviorMusicIdentifierComponents _initWithContentItemID:sectionID:itemID:repeatIteration:type:loadingSectionID:itemSpecificContentItemID:deferredNextContentItemID:](v14, "_initWithContentItemID:sectionID:itemID:repeatIteration:type:loadingSectionID:itemSpecificContentItemID:deferredNextContentItemID:", v1, v10, v11, [v8 repeatIteration], 1, 0, v3, 0);
    goto LABEL_13;
  }

  v3 = [v2 objectAtIndexedSubscript:1];
  v4 = [v2 objectAtIndexedSubscript:2];
  v5 = [[MPCQueueControllerBehaviorMusicIdentifierComponents alloc] _initWithContentItemID:v1 sectionID:v3 itemID:@"PLACEHOLDER_DEFERRED_NEXT_ITEM" repeatIteration:0 type:3 loadingSectionID:v3 itemSpecificContentItemID:0 deferredNextContentItemID:v4];

LABEL_10:
  v6 = v2;
LABEL_19:

LABEL_20:
LABEL_21:

  return v5;
}

uint64_t _MPCPlaybackEngineEventTypeIsCacheable(void *a1)
{
  v1 = _MPCPlaybackEngineEventTypeIsCacheable_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_MPCPlaybackEngineEventTypeIsCacheable_onceToken, &__block_literal_global_559);
  }

  v3 = [_MPCPlaybackEngineEventTypeIsCacheable_cacheableTypes containsObject:v2];

  return v3;
}

void OUTLINED_FUNCTION_55_4()
{
  *(v0 + 2344) = v1;

  sub_1C5D4A7EC(0);
}

void *OUTLINED_FUNCTION_55_6()
{

  return memcpy(&STACK[0x358], &STACK[0x278], 0xD9uLL);
}

unint64_t OUTLINED_FUNCTION_55_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1C5C6AB10(v6, v7, va);
}

uint64_t sub_1C5C83F2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

void sub_1C5C83FA8(unint64_t result)
{
  if (*(v1 + 64))
  {
    objc_opt_self();
    OUTLINED_FUNCTION_34_4();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      if (result >= 3)
      {
        swift_unknownObjectRetain();
        sub_1C60178A0();
        __break(1u);
      }

      else
      {
        v4 = v3;
        v5 = sub_1C6016940();

        sub_1C5C84138(v5, v6, v4);
      }
    }
  }
}

id OUTLINED_FUNCTION_50_3(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_50_5()
{
}

uint64_t OUTLINED_FUNCTION_50_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1C5C8C7F4(a1);
}

void sub_1C5C84138(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C6016900();

  [a3 setMultichannelAudioStrategy_];
}

void sub_1C5C84230(uint64_t *a1@<X8>)
{
  sub_1C6014C50();
  if (!v29)
  {
    v17 = v28;
LABEL_25:
    sub_1C5CBCF4C(v17);
    goto LABEL_29;
  }

  sub_1C5C64D74(0, &qword_1EC1A93C0, 0x1E6958460);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    *a1 = 0;
    a1[1] = 0;
    v18 = 0xF000000000000007;
    a1[2] = 0;
LABEL_30:
    a1[3] = v18;
    return;
  }

  v2 = v30;
  v3 = sub_1C6014C60();
  if (!v3)
  {
LABEL_28:

    goto LABEL_29;
  }

  v4 = v3;
  v26 = sub_1C6016940();
  sub_1C60174C0();
  sub_1C5CFF234(v28, v4, &v30);
  sub_1C5CE3504(v28);
  if (!v31)
  {

    v17 = &v30;
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  if (v26 != 2)
  {

    goto LABEL_34;
  }

  v27 = sub_1C6016940();
  sub_1C60174C0();
  sub_1C5CFF234(v28, v4, &v30);

  sub_1C5CE3504(v28);
  if (!v31)
  {
    sub_1C5CBCF4C(&v30);
LABEL_34:
    v24 = 0;
LABEL_35:
    v19 = [v2 currentRoute];
    type metadata accessor for RouteMetadata();
    swift_allocObject();
    v20 = sub_1C5C84844(v19);
    sub_1C6014F90();
    v22 = v21;
    type metadata accessor for EventTime();
    swift_allocObject();
    v23 = sub_1C5C8A6E0(0, 0, 0, 1, v22, v22);

    *a1 = v24;
    a1[1] = v20;
    v18 = 0x6000000000000000;
    a1[2] = v23;
    goto LABEL_30;
  }

  sub_1C5C64D74(0, &qword_1EC1AB688, 0x1E6958488);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = [v27 outputs];
  sub_1C5C64D74(0, &qword_1EC1A9330, 0x1E6958478);
  v6 = sub_1C6016B10();

  v7 = 0;
  v25 = sub_1C5C6AA20();
  while (1)
  {
    if (v25 == v7)
    {

      goto LABEL_34;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C6954040](v7, v6);
    }

    else
    {
      if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v8 = *(v6 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v10 = [v8 portType];
    v11 = sub_1C6016940();
    v13 = v12;
    if (v11 == sub_1C6016940() && v13 == v14)
    {
    }

    else
    {
      v16 = sub_1C6017860();

      if ((v16 & 1) == 0)
      {

        v24 = 1;
        goto LABEL_35;
      }
    }

    ++v7;
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void _MPCPlaybackEngineEventFlattenPayload(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___MPCPlaybackEngineEventFlattenPayload_block_invoke;
  v9[3] = &unk_1E82325A8;
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  [a1 enumerateKeysAndObjectsUsingBlock:v9];
}

uint64_t sub_1C5C84844(void *a1)
{
  v2 = v1;
  *(v2 + 16) = sub_1C5C848E0() & 1;
  v4 = [a1 description];
  v5 = sub_1C6016940();
  v7 = v6;

  *(v2 + 24) = v5;
  *(v2 + 32) = v7;
  return v2;
}

char *sub_1C5C848E0()
{
  v1 = [v0 outputs];
  sub_1C5C84A80();
  v2 = sub_1C6016B10();

  result = sub_1C5C6AA20();
  v14 = result;
  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v14 == v4)
    {
      goto LABEL_15;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1C6954040](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      result = *(v2 + 8 * v4 + 32);
    }

    v6 = result;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v7 = [result portType];
    v8 = sub_1C6016940();
    v10 = v9;
    if (v8 == sub_1C6016940() && v10 == v11)
    {

LABEL_15:

      return (v14 != v5);
    }

    v13 = sub_1C6017860();

    v4 = v5 + 1;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1C5C84A80()
{
  result = qword_1EC1A9330;
  if (!qword_1EC1A9330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1A9330);
  }

  return result;
}

uint64_t sub_1C5C84ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_7_17(a1, a2, a3, a4, a5, a6, a7, a8, v29);
  OUTLINED_FUNCTION_0_31();
  result = OUTLINED_FUNCTION_64_5(v8, v9, v10, v11, v12, v13);
  if (v31)
  {
    OUTLINED_FUNCTION_17_9(v30, v31);
    sub_1C5D3F6F8();
    v16 = v15;
    v18 = v17;
    swift_unknownObjectRelease();

    v19 = sub_1C5DDBB38(1, v16);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0(v30);
    if (v25)
    {
      sub_1C6017880();
      swift_unknownObjectRetain_n();
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
        swift_unknownObjectRelease();
        v27 = MEMORY[0x1E69E7CC0];
      }

      v28 = *(v27 + 16);

      if (__OFSUB__(v25 >> 1, v23))
      {
        __break(1u);
      }

      else if (v28 == (v25 >> 1) - v23)
      {
        swift_dynamicCastClass();
        OUTLINED_FUNCTION_73();
        swift_unknownObjectRelease_n();
        if (v21)
        {
          return v21;
        }

        v21 = MEMORY[0x1E69E7CC0];
LABEL_10:
        swift_unknownObjectRelease();
        return v21;
      }

      swift_unknownObjectRelease_n();
    }

    sub_1C5D0FE6C(v19, v21, v23, v25);
    v21 = v26;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t a1)
{
  *(v1 + 264) = v2;
  *(a1 + 16) = v2;
  *(v1 + 248) = v3;
  *(a1 + 24) = v3 & 1;

  return sub_1C60162B0();
}

BOOL OUTLINED_FUNCTION_52_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_52_4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_52_5()
{
  *(v1 + 2328) = v0;

  return v0;
}

void *OUTLINED_FUNCTION_52_6(uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_1C60174C0();
}

uint64_t OUTLINED_FUNCTION_52_8()
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_52_9()
{

  return swift_slowAlloc();
}

uint64_t sub_1C5C84D20(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1C5D45EB0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1C5C84D90(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_107();
  v5(v4);
  OUTLINED_FUNCTION_105();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C5C89C70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 32))
    {
      v2 = *a1 + 120;
    }

    else
    {
      v2 = (((*(a1 + 24) >> 57) >> 4) | (8 * ((*(a1 + 24) >> 57) & 8 | *(a1 + 24) & 7))) ^ 0x7F;
      if (v2 >= 0x78)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t *sub_1C5C89CDC@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v6, __src, 0xD9uLL);
  result = sub_1C5C89D54(v6);
  v4 = result;
  if (result == 32)
  {
    result = sub_1C5D85594(v6);
    v5 = *result;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 != 32;
  return result;
}

void sub_1C5C89DB4(_BYTE *a1)
{
  if (a1[72] != 3)
  {
    goto LABEL_52;
  }

  if (*(a1 + 3) >> 61 != 4)
  {
    goto LABEL_52;
  }

  v2 = *a1;
  a1 = [objc_opt_self() supportsVideoViewController];
  if (!a1)
  {
    goto LABEL_52;
  }

  v3 = sub_1C5DE4738(sub_1C5D54840);
  v4 = *(v1 + 128);
  if ((v3 & 1) == 0)
  {
    if ((v2 & 1) == 0)
    {
      if (v4)
      {
        a1 = [v4 contentOverlayView];
        if (!a1)
        {
          goto LABEL_52;
        }

        v25 = a1;
        v26 = [a1 subviews];

        sub_1C5C64D74(0, &qword_1EC1AB9B8, 0x1E69DD250);
        v27 = sub_1C6016B10();

        v28 = sub_1C5C6AA20();
        for (i = 0; ; ++i)
        {
          if (v28 == i)
          {

            goto LABEL_52;
          }

          if ((v27 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x1C6954040](i, v27);
          }

          else
          {
            if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v30 = *(v27 + 8 * i + 32);
          }

          v31 = v30;
          if (__OFADD__(i, 1))
          {
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if ([v30 tag] == 1000)
          {
            break;
          }
        }

        v35 = *(v1 + 128);
        if (!v35)
        {
          goto LABEL_66;
        }

        v36 = [v35 contentOverlayView];
        [v36 willRemoveSubview_];

        [v31 removeFromSuperview];
        v37 = *(v1 + 128);
        if (v37)
        {
          v38 = [v37 playerController];
          if (v38)
          {
            v39 = v38;
            if ([v38 respondsToSelector_])
            {
              [v39 setAllowsAudioPlayback_];
            }
          }

          goto LABEL_51;
        }

LABEL_67:
        __break(1u);
        return;
      }

      goto LABEL_62;
    }

    if (v4)
    {
      a1 = [v4 contentOverlayView];
      if (!a1)
      {
        goto LABEL_52;
      }

      v13 = a1;
      [a1 bounds];
      v18 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
      [v18 setAutoresizingMask_];
      [v18 setTag_];
      v19 = [objc_opt_self() blackColor];
      [v18 setBackgroundColor_];

      v20 = *(v1 + 128);
      if (v20)
      {
        v21 = [v20 contentOverlayView];
        [v21 addSubview_];

        v22 = *(v1 + 128);
        if (v22)
        {
          v23 = [v22 playerController];
          if (v23)
          {
            v24 = v23;
            if ([v23 respondsToSelector_])
            {
              [v24 setAllowsAudioPlayback_];
            }
          }

          goto LABEL_52;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (!v4)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v5 = [v4 contentOverlayView];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 subviews];

    sub_1C5C64D74(0, &qword_1EC1AB9B8, 0x1E69DD250);
    OUTLINED_FUNCTION_37_7();
    v8 = sub_1C6016B10();

    v9 = sub_1C5C6AA20();
    for (j = 0; ; ++j)
    {
      if (v9 == j)
      {

        goto LABEL_40;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6954040](j, v8);
      }

      else
      {
        if (j >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * j + 32);
      }

      v12 = v11;
      if (__OFADD__(j, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if ([v11 tag] == 1000)
      {
        break;
      }
    }

    v32 = *(v1 + 128);
    if (!v32)
    {
      goto LABEL_65;
    }

    v33 = [v32 contentOverlayView];
    [v33 willRemoveSubview_];

    [v12 removeFromSuperview];
  }

LABEL_40:
  v34 = *(v1 + 128);
  if (!v34)
  {
    goto LABEL_60;
  }

  a1 = [v34 playerController];
  if (!a1)
  {
    goto LABEL_52;
  }

  v31 = a1;
  if ([a1 respondsToSelector_])
  {
    [v31 setAllowsAudioPlayback_];
  }

LABEL_51:

LABEL_52:
  OUTLINED_FUNCTION_5_37(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = OUTLINED_FUNCTION_73();
    sub_1C5C8AE5C(v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    swift_unknownObjectRelease();
  }
}

void sub_1C5C8A32C()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (v1 >> 61 == 4)
  {
    if (swift_unknownObjectWeakLoadStrong() && (v10 = sub_1C5DE45D0(), swift_unknownObjectRelease(), (v10 & 1) != 0))
    {
      if (*(v0 + 72))
      {
        v11 = *(v0 + 80);
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 128);
        swift_unknownObjectRetain();
        v13(0, ObjectType, v11);
        swift_unknownObjectRelease();
      }

      sub_1C5CDAF64(v0 + 88, v27);
      __swift_project_boxed_opaque_existential_0(v27, v28);
      OUTLINED_FUNCTION_67_5();
      sub_1C6017540();
      v25 = __dst[0];
      v26 = __dst[1];
      OUTLINED_FUNCTION_5_24();
      v15 = 0xD000000000000055;
    }

    else
    {
      if (*(v0 + 72))
      {
        v16 = *(v0 + 80);
        v17 = swift_getObjectType();
        v18 = *(v16 + 128);
        swift_unknownObjectRetain();
        v18(v8 & 1, v17, v16);
        swift_unknownObjectRelease();
      }

      sub_1C5CDAF64(v0 + 88, v27);
      __swift_project_boxed_opaque_existential_0(v27, v28);
      OUTLINED_FUNCTION_67_5();
      sub_1C6017540();
      v25 = __dst[0];
      v26 = __dst[1];
      v15 = 0xD000000000000059;
      v14 = 0x80000001C6052F80;
    }

    MEMORY[0x1C69534E0](v15, v14);
    if (*(v0 + 72))
    {
      v19 = *(v0 + 80);
      v20 = swift_getObjectType();
      v21 = *(v19 + 120);
      swift_unknownObjectRetain();
      LOBYTE(v19) = v21(v20, v19);
      swift_unknownObjectRelease();
      LOBYTE(v24[0]) = v19 & 1;
      v22 = MEMORY[0x1E69E6370];
    }

    else
    {
      v22 = 0;
      memset(v24, 0, 24);
    }

    v24[3] = v22;
    OUTLINED_FUNCTION_10_0(v24);
    sub_1C5DC9938(v24, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    __src[0] = v25;
    __src[1] = v26;
    sub_1C5DC95A4(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v27);
    if (swift_unknownObjectWeakLoadStrong())
    {
      __src[0] = v8;
      __src[1] = v6;
      __src[2] = v4;
      __src[3] = v2;
      LOBYTE(__src[9]) = 3;
      sub_1C5C89DB4(__src);
      swift_unknownObjectRelease();
    }

    goto LABEL_19;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_19:
    OUTLINED_FUNCTION_237();
    return;
  }

  __dst[0] = v8;
  __dst[1] = v6;
  __dst[2] = v4;
  __dst[3] = v2;
  LOBYTE(__dst[9]) = 3;
  sub_1C5C89DB4(__dst);
  OUTLINED_FUNCTION_237();

  swift_unknownObjectRelease();
}

uint64_t sub_1C5C8A688()
{
  OUTLINED_FUNCTION_27(v0 + 40, v4);

  v2 = sub_1C5C8CEE4(v1);

  if (v2)
  {
    return v2;
  }

  __break(1u);
  return result;
}

double *sub_1C5C8A6E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  v7 = v6;
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  sub_1C6014F90();
  *(v6 + 32) = v12;
  type metadata accessor for CMClock();
  v13 = sub_1C6016E20();
  v14 = sub_1C6016E30();
  v16 = v15;
  v18 = v17;

  if (a4)
  {
    v19 = 0;
  }

  else if (sub_1C60171D0())
  {
    v14 = a1;
    v16 = a2;
    v18 = a3;
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  *(v7 + 40) = v14;
  *(v7 + 48) = v16;
  *(v7 + 56) = v18;
  *(v7 + 64) = v19;
  return v7;
}

void sub_1C5C8A7E4()
{
  OUTLINED_FUNCTION_13_20();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_36_7();
  v8 = *(v0 + 56);
  v9 = *(v8 + 8);
  swift_unknownObjectRetain();
  v9(v2, v1, v6, v4, v7, v8);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12_24();
}

void sub_1C5C8A868()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  *(v130 + 9) = *(v1 + 57);
  v129 = v7;
  v130[0] = v8;
  v9 = sub_1C5C8A688();
  switch(*(v2 + 72))
  {
    case 1:
      v89 = v9;
      v114 = v4;
      v115 = v3;
      v116 = v5;
      v117 = v6;
      v62 = *(v2 + 48);
      *v118 = *(v2 + 32);
      *v119 = v62;
      *&v119[16] = *(v2 + 64);
      *v120 = *v118;
      v121 = v62;
      v122 = *&v119[16];
      v63 = sub_1C5C8A688();
      OUTLINED_FUNCTION_24_15(v63);
      *&__dst[24] = v5;
      *&__dst[40] = *v118;
      *&__dst[56] = v121;
      *&__dst[32] = v6;
      *&__dst[72] = *&v119[16];
      sub_1C5D95DF4(__dst);
      OUTLINED_FUNCTION_18_19();
      *__src = v4;
      *&__src[8] = v3;
      *&__src[16] = v5;
      *&__src[24] = v6;
      *&__src[32] = v129;
      *&__src[48] = v130[0];
      *&__src[57] = *(v130 + 9);
      sub_1C5D5D5AC(__src, v128);
      sub_1C5C8AD44();

      sub_1C5C89D60(v2);
      sub_1C5C8A688();
      OUTLINED_FUNCTION_2_33();
      v65 = (*(v64 + 128))(&v114, v0);

      OUTLINED_FUNCTION_7_28(v66, v67, v68, v69, v70, v71, v72, v73, v83, v89, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, v108, v109, v110, *(&v110 + 1), *v111, *&v111[8], *&v111[16], v112, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], v114, v115, v116, v117, v118[0], v118[1], *v119, *&v119[8], *&v119[16], *&v119[24], *v120);
      if (v65)
      {
        v75 = sub_1C5D8981C(v74);
      }

      else
      {
        v75 = sub_1C5D95E08(v74);
      }

      OUTLINED_FUNCTION_6_26(v75, v76, v77, v78, v79, v80, v81, v82, v85, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, v108, v109, v110, *(&v110 + 1), *v111, *&v111[8], *&v111[16], v112, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], v114, v115, v116, v117, v118[0], v118[1], *v119, *&v119[8], *&v119[16], *&v119[24], v120[0], v120[1], v121, *(&v121 + 1), v122, v123[0]);
      v61 = &v101;
      goto LABEL_18;
    case 2:
      v29 = OUTLINED_FUNCTION_15_1();
      sub_1C5D95E1C(v29, v30, v5);
      v31 = sub_1C5C8A688();
      OUTLINED_FUNCTION_24_15(v31);
      __dst[24] = v5;
      sub_1C5D95E38(__dst);
      OUTLINED_FUNCTION_18_19();
      v32 = OUTLINED_FUNCTION_15_1();
      sub_1C5D95E1C(v32, v33, v5);
      sub_1C5C8AD44();

      sub_1C5C89D60(v2);
      sub_1C5C8A688();
      OUTLINED_FUNCTION_2_33();
      v34 = OUTLINED_FUNCTION_15_1();
      v36 = v35(v34);

      OUTLINED_FUNCTION_31_7();
      if (v36)
      {
        v38 = sub_1C5D95E60(v37);
      }

      else
      {
        v38 = sub_1C5D95E4C(v37);
      }

      OUTLINED_FUNCTION_6_26(v38, v39, v40, v41, v42, v43, v44, v45, v83, v86, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, v108, v109, v110, *(&v110 + 1), *v111, *&v111[8], *&v111[16], v112, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], v114, v115, v116, v117, v118[0], v118[1], *v119, *&v119[8], *&v119[16], *&v119[24], v120[0], v120[1], v121, *(&v121 + 1), v122, v123[0]);

      OUTLINED_FUNCTION_27_13();
      goto LABEL_19;
    case 3:
      v46 = sub_1C5C8A688();
      OUTLINED_FUNCTION_24_15(v46);
      *&__dst[24] = v5;
      *&__dst[32] = v6;
      sub_1C5D95DB8(__dst);
      OUTLINED_FUNCTION_18_19();
      v47 = OUTLINED_FUNCTION_15_1();
      sub_1C5C8CF74(v47, v48, v5, v6);
      sub_1C5C8AD44();

      sub_1C5C89D60(v2);
      sub_1C5C8A688();
      OUTLINED_FUNCTION_2_33();
      v49 = OUTLINED_FUNCTION_15_1();
      v51 = v50(v49);

      OUTLINED_FUNCTION_30_12();
      if (v51)
      {
        v53 = sub_1C5D95DE0(v52);
      }

      else
      {
        v53 = sub_1C5D95DCC(v52);
      }

      OUTLINED_FUNCTION_6_26(v53, v54, v55, v56, v57, v58, v59, v60, v83, v86, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, v108, v109, v110, *(&v110 + 1), *v111, *&v111[8], *&v111[16], v112, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], v114, v115, v116, v117, v118[0], v118[1], *v119, *&v119[8], *&v119[16], *&v119[24], v120[0], v120[1], v121, *(&v121 + 1), v122, v123[0]);
      v61 = __src;
LABEL_18:
      sub_1C5D86964(v2, v61);

      OUTLINED_FUNCTION_27_13();
LABEL_19:

      sub_1C5C89D60(v2);
      break;
    default:
      v87 = v9;
      v125[0] = v4;
      v125[1] = v3;
      v125[2] = v5;
      v125[3] = v6;
      v10 = *(v2 + 48);
      v126 = *(v2 + 32);
      *v127 = v10;
      *&v127[15] = *(v2 + 63);
      v110 = v126;
      *v111 = v10;
      *&v111[15] = *&v127[15];
      *__src = sub_1C5C8A688();
      *&__src[8] = v4;
      *&__src[16] = v3;
      *&__src[24] = v5;
      *&__src[32] = v6;
      *&__src[40] = v110;
      *&__src[56] = *v111;
      *&__src[71] = *&v111[15];
      memcpy(__dst, __src, 0x4BuLL);
      sub_1C5C96E18(__dst);
      OUTLINED_FUNCTION_18_19();
      v114 = v4;
      v115 = v3;
      v116 = v5;
      v117 = v6;
      *v118 = v129;
      *v119 = v130[0];
      *&v119[9] = *(v130 + 9);
      sub_1C5D95E74(&v114, v128);
      sub_1C5C8AD44();
      sub_1C5D95ED0(__src);
      sub_1C5C8A688();
      OUTLINED_FUNCTION_2_33();
      v12 = (*(v11 + 112))(v125, v0);

      OUTLINED_FUNCTION_8_25(v13, v14, v15, v16, v17, v18, v19, v20, v83, v87, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *v111, *&v111[16], v112, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], v114, v115, v116, v117, v118[0], v118[1], *v119, *&v119[8], *&v119[16], *&v119[24], v120[0], v120[1], v121, *(&v121 + 1), v122);
      if (v12)
      {
        v21 = sub_1C5D95FAC(v123);
      }

      else
      {
        v21 = sub_1C5D95F98(v123);
      }

      OUTLINED_FUNCTION_6_26(v21, v22, v23, v24, v25, v26, v27, v28, v84, v88, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, v108, v109, v110, *(&v110 + 1), *v111, *&v111[8], *&v111[16], v112, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], v114, v115, v116, v117, v118[0], v118[1], *v119, *&v119[8], *&v119[16], *&v119[24], v120[0], v120[1], v121, *(&v121 + 1), v122, v123[0]);
      sub_1C5D86964(v2, &v91);

      OUTLINED_FUNCTION_27_13();

      sub_1C5D95ED0(&v101);
      break;
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5C8AD44()
{
  OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_21_17();
  v1 = *(*(v0 + 48) + 8);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_3_33();
  v1(v2);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_16_18();
}

void OUTLINED_FUNCTION_78_1()
{
  v5 = *(v0 + 64);
  *(v5 + 16) = v4;
  v6 = v5 + 16 * v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
}

void OUTLINED_FUNCTION_78_3()
{

  JUMPOUT(0x1C69534E0);
}

void sub_1C5C8AE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_247();
  v19 = *v13;
  v20 = *(v13 + 8);
  v21 = *(v13 + 16);
  v22 = *(v13 + 24);
  switch(*(v13 + 72))
  {
    case 1:
      switch((*(v13 + 64) >> 58) & 0x3C | (*(v13 + 64) >> 1) & 3)
      {
        case 1:
          if (sub_1C5D4AFF0(v13, v14, v21, v22, v15, v16, v17, v18))
          {
            goto LABEL_15;
          }

          goto LABEL_16;
        case 2:
          sub_1C5DABD28();
          if ((v53 & 1) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_48;
        case 3:
          v58 = *(v12 + 32);
          if (v58)
          {
            goto LABEL_63;
          }

          goto LABEL_74;
        case 4:
          v48 = OUTLINED_FUNCTION_11_0();
          sub_1C5D50518(v48, v49);
          goto LABEL_16;
        case 5:
          v44 = OUTLINED_FUNCTION_11_0();
          sub_1C5D5062C(v44, v45);
          goto LABEL_16;
        case 6:
          OUTLINED_FUNCTION_31_2();
          swift_beginAccess();
          OUTLINED_FUNCTION_0_31();
          sub_1C5C84D90(v12 + 144, __dst);
          if (!v145)
          {
            __break(1u);
            JUMPOUT(0x1C5C8B638);
          }

          OUTLINED_FUNCTION_45(__dst, v145);
          v50 = [v19 contentItemID];
          sub_1C6016940();
          OUTLINED_FUNCTION_80_3();

          OUTLINED_FUNCTION_18();
          sub_1C5D42FE0();

          __swift_destroy_boxed_opaque_existential_0(__dst);
          goto LABEL_74;
        case 7:
          v51 = OUTLINED_FUNCTION_83_0();
          sub_1C5D50740(v51);
          goto LABEL_16;
        case 8:
          v73 = OUTLINED_FUNCTION_83_0();
          sub_1C5D50EE8(v73);
          v74 = swift_unknownObjectRetain();
          sub_1C5D4C924(v74);
          v58 = *(v12 + 32);
          if (v58)
          {
LABEL_63:
            OUTLINED_FUNCTION_16_11((v12 + 80), *(v12 + 104));
            *__dst = 0;
            v144 = v75;
            swift_unknownObjectRetain();
            sub_1C6017540();
            OUTLINED_FUNCTION_86_0();
            OUTLINED_FUNCTION_23_8();
            OUTLINED_FUNCTION_74_1();
            MEMORY[0x1C69534E0]();
            swift_getObjectType();
            sub_1C6017830();
            OUTLINED_FUNCTION_74_1();
            MEMORY[0x1C69534E0](0xD000000000000029);
            *__src = 0;
            v116 = v144;
            v76 = sub_1C5D5CCE4(__src);
            OUTLINED_FUNCTION_40_5(v76, v77, v78, v79, v80, v81, v82, v83, v108, v110, v111, v112, v113, v114, *__src, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
            sub_1C5DBBF0C();

            [*(v12 + 72) configureExternalPlaybackForPlayer:*(*(v12 + 40) + 64) queueItem:v58];
            swift_unknownObjectRelease();
          }

          goto LABEL_74;
        case 9:
          if (swift_unknownObjectWeakLoadStrong())
          {
            v70 = OUTLINED_FUNCTION_73();
            sub_1C5DCEC3C(v70);
            swift_unknownObjectRelease();
          }

          OUTLINED_FUNCTION_237();

          sub_1C5D4C924(v71);
          return;
        case 0xALL:
        case 0xBLL:
          goto LABEL_76;
        case 0xCLL:
          OUTLINED_FUNCTION_237();

          sub_1C5D51CD8(v46);
          return;
        case 0xDLL:
          sub_1C5D525C8(v13);
          goto LABEL_16;
        case 0xELL:
          sub_1C5D52520(v13);
          goto LABEL_16;
        case 0x10:
          sub_1C5DAC2E4();
          if ((v36 & 1) == 0)
          {
            goto LABEL_76;
          }

LABEL_48:
          OUTLINED_FUNCTION_237();

          sub_1C5D4F87C(v54, v55, v56, v57);
          return;
        case 0x11:
          OUTLINED_FUNCTION_16_11((v12 + 80), *(v12 + 104));
          *__dst = 0;
          v144 = v84;
          sub_1C6017540();
          OUTLINED_FUNCTION_86_0();
          OUTLINED_FUNCTION_23_8();
          OUTLINED_FUNCTION_74_1();
          MEMORY[0x1C69534E0]();
          swift_getObjectType();
          sub_1C6017830();
          *__src = 0;
          v116 = v144;
          v85 = sub_1C5D5CCE4(__src);
          OUTLINED_FUNCTION_40_5(v85, v86, v87, v88, v89, v90, v91, v92, v108, v19, v111, v112, v113, v114, *__src, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
          sub_1C5DBBF0C();

          sub_1C5DABCEC(&v110);
          if (v113)
          {
            sub_1C5C74680(0, qword_1ED7DE920, &protocol descriptor for PlayerItemTransition);
            v93 = OUTLINED_FUNCTION_297();
            type metadata accessor for SmartPlayerItemTransition(v93);
            if (swift_dynamicCast())
            {
              v94 = [v19 avPlayerItem];
              if (v94)
              {
                v95 = v94;
                v96 = *(v109 + 56);

                if (v95 == v96)
                {
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    swift_unknownObjectRetain();
                    sub_1C5DAC724();
                    swift_unknownObjectRelease();
                  }
                }
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_1_24();
            sub_1C5D5D294();
          }

          goto LABEL_74;
        case 0x12:
          OUTLINED_FUNCTION_58_5();
          OUTLINED_FUNCTION_85_3();
          *__dst = 0;
          v144 = v59;
          sub_1C6017540();
          OUTLINED_FUNCTION_86_0();
          OUTLINED_FUNCTION_23_8();
          OUTLINED_FUNCTION_74_1();
          MEMORY[0x1C69534E0]();
          swift_getObjectType();
          sub_1C6017830();
          *__src = 0;
          v116 = v144;
          v60 = sub_1C5D5CCE4(__src);
          OUTLINED_FUNCTION_40_5(v60, v61, v62, v63, v64, v65, v66, v67, v108, v20, v111, v112, v113, v114, *__src, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
          sub_1C5DBBF0C();

          v68 = [v20 avPlayerItem];
          if (v68)
          {
            v69 = v68;
            sub_1C5DACA28();
          }

LABEL_74:
          if (swift_unknownObjectWeakLoadStrong())
          {
            v106 = OUTLINED_FUNCTION_73();
            sub_1C5DCEC3C(v106);
            swift_unknownObjectRelease();
          }

          goto LABEL_76;
        case 0x13:
          goto LABEL_11;
        case 0x15:
          sub_1C5D51C4C();
          sub_1C5D52114(v19);
          if (*(v12 + 272) == 2)
          {
            *(v12 + 272) = 1;
          }

          goto LABEL_16;
        case 0x16:
          v52 = OUTLINED_FUNCTION_83_0();
          sub_1C5D522B4(v52);
          sub_1C5D51C4C();
          goto LABEL_16;
        case 0x17:
          sub_1C5D51C4C();
          sub_1C5D50EE8(0);
          goto LABEL_16;
        case 0x22:
          [*v13 contentItemID];
          sub_1C6016940();
          OUTLINED_FUNCTION_88_1();
          v37 = *(v12 + 32);
          if (!v37)
          {

            goto LABEL_72;
          }

          v38 = [v37 contentItemID];
          v39 = sub_1C6016940();
          v41 = v40;

          if (v20 != v39 || v12 != v41)
          {
            v43 = sub_1C6017860();

            if (v43)
            {
              goto LABEL_78;
            }

LABEL_72:
            OUTLINED_FUNCTION_58_5();
            OUTLINED_FUNCTION_89();
            *__src = 0xD000000000000032;
            v116 = v97;
            v98 = sub_1C5D45B74(__src);
            OUTLINED_FUNCTION_40_5(v98, v99, v100, v101, v102, v103, v104, v105, v108, v110, v111, v112, v113, v114, *__src, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
            sub_1C5DBBF0C();
            goto LABEL_76;
          }

LABEL_78:
          v107 = OUTLINED_FUNCTION_83_0();
          sub_1C5D51E8C(v107);
LABEL_16:
          if (swift_unknownObjectWeakLoadStrong())
          {
            v24 = OUTLINED_FUNCTION_73();
            sub_1C5DCEC3C(v24);
            OUTLINED_FUNCTION_237();

            swift_unknownObjectRelease();
          }

          else
          {
LABEL_76:
            OUTLINED_FUNCTION_237();
          }

          return;
        default:
          goto LABEL_16;
      }

    case 2:
      v23 = *(v13 + 16) == 3 && (v20 | v19) == 0;
      if (v23 && sub_1C5DDBEF8(v13) == 32769)
      {
LABEL_11:
        sub_1C5D5202C();
      }

      goto LABEL_16;
    case 3:
      switch(v22 >> 61)
      {
        case 3uLL:
          if (*(v12 + 32))
          {
            [*(v12 + 72) configureExternalPlaybackForPlayer:*(*(v12 + 40) + 64) queueItem:?];
          }

          goto LABEL_16;
        case 5uLL:
          OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_237();

          sub_1C5D52670(v26, v27, v28, v29);
          break;
        case 6uLL:
          OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_237();

          sub_1C5D529E4(v31, v32, v33, v34);
          break;
        case 7uLL:
LABEL_15:
          sub_1C5D4FFA4();
          sub_1C5DDC6D4();
          goto LABEL_16;
        default:
          goto LABEL_16;
      }

      return;
    default:
      goto LABEL_76;
  }
}

void *sub_1C5C8B6FC(uint64_t *a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_27(v3 + 40, v26);
  v5 = *(v3 + 40);
  if ((v5 & 0xC000000000000001) != 0)
  {

    sub_1C6017400();
    OUTLINED_FUNCTION_68();
    type metadata accessor for UserEventCompletionMonitor();
    OUTLINED_FUNCTION_0_72();
    sub_1C5DF5240(v6, v7, &unk_1C6043B28);
    result = sub_1C6016D90();
    v5 = v27;
    v9 = v28;
    v10 = v29;
    v11 = v30;
    v12 = v31;
  }

  else
  {
    OUTLINED_FUNCTION_20_25();
    v9 = v5 + 56;
    v10 = ~v13;
    OUTLINED_FUNCTION_12_27();
    v12 = v14 & v15;

    v11 = 0;
  }

  v22 = 0;
  v16 = (v10 + 64) >> 6;
  while (v5 < 0)
  {
    if (!sub_1C6017470() || (type metadata accessor for UserEventCompletionMonitor(), OUTLINED_FUNCTION_42_11(), (v21 = v25) == 0))
    {
LABEL_17:
      sub_1C5C8C7F4(v5);
      return (v22 & 1);
    }

LABEL_14:
    if (sub_1C5C8BB1C(a1, a2, a3))
    {
      swift_beginAccess();
      sub_1C5DF3CF0(v21);
      swift_endAccess();

      v22 = 1;
    }

    else
    {
    }
  }

  v17 = v11;
  if (v12)
  {
LABEL_10:
    OUTLINED_FUNCTION_9_2();
    v12 = v19 & v18;
    v21 = *(*(v5 + 48) + ((v11 << 9) | (8 * v20)));

    if (!v21)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_17;
    }

    ++v17;
    if (*(v9 + 8 * v11))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5C8B948(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, unint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v15 = *(a2 + 368);

  sub_1C5C8CF74(a4, a5, a6, a7);
  if (v15)
  {
    v16 = sub_1C5DE38E8(a1);
    if (v16)
    {
      v18 = v16;
      v19 = v17;
      if (sub_1C5DE3E80(a1))
      {
        v18();
        swift_unknownObjectRelease();
        sub_1C5C74C18(v18, v19);
        goto LABEL_7;
      }

      sub_1C5C74C18(v18, v19);
    }
  }

  sub_1C5DE3700(a3, a4, a5, a6, a7);
LABEL_7:

  return sub_1C5C8C748(a4, a5, a6, a7);
}

void sub_1C5C8BA9C()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1C5DB6E84();
  }
}

uint64_t sub_1C5C8BAD8()
{

  sub_1C5C8C748(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C8BB1C(uint64_t *__src, uint64_t a2, int a3)
{
  v4 = *__src;
  v5 = __src[1];
  v7 = __src[2];
  v6 = __src[3];
  v8 = __src[4];
  v9 = __src[5];
  v10 = __src[6];
  switch(*(__src + 72))
  {
    case 0:
      v36 = __src[2];
      v37 = __src[8];
      v38 = __src[3];
      v39 = __src[7];
      v12 = *__src;
      v13 = __src[1];
      v40 = a3;
      memcpy(__dst, __src, 0x43uLL);
      memcpy(__srca, __src, sizeof(__srca));
      v14 = (BYTE2(__dst[8]) << 16) & 0xF00000;
      if (v14 == 3145728)
      {
        v34 = __dst[6];
        v25 = __dst[3];
        v35 = __dst[7];
        v43 = v12;
        v44 = v13;
        v45 = v36;
        v46 = v38;
        v47 = v8;
        v48 = v9;
        v49 = v10;
        v50 = v39;
        v51 = v37;
        v52 = 0;
        v58[0] = v12;
        v58[1] = v13;
        v58[2] = v36;
        v58[3] = v38;
        v58[4] = v8;
        v58[5] = v9;
        v58[6] = v10;
        v58[7] = v39;
        v58[8] = v37;
        v59 = 0;
        sub_1C5D95E74(v58, v54);
        sub_1C5D95E74(&v43, v54);

        sub_1C5C74C18(v34, v35);
        swift_unknownObjectRelease();
        if (v25 >= 0xC)
        {
          v27 = v25;
          v17 = sub_1C5DF0CFC(__dst, a2, v25);
          sub_1C5D5D584(v25);
          sub_1C5D5D584(v25);
          goto LABEL_16;
        }

        sub_1C5D5D584(v25);
        v15 = sub_1C5DF09CC(v54);
        v26 = v55 | (v56 << 16);
        if ((~v26 & 0xFEFEFE) != 0)
        {
          if ((v26 & 0xF00000) == 0x200000)
          {
            sub_1C5DF47C8();
            memcpy(v58, __srca, 0x43uLL);
            v59 = 0;
            v43 = v12;
            v44 = v13;
            v45 = v36;
            v46 = v38;
            v47 = v8;
            v48 = v9;
            v49 = v10;
            v50 = v39;
            v51 = v37;
            v52 = 0;
            sub_1C5D95E74(&v43, v42);
            sub_1C5DF0A74(0, v58);
            sub_1C5C89D60(__src);
LABEL_35:
            sub_1C5C89D60(__src);
            goto LABEL_38;
          }

          v15 = sub_1C5DF47C8();
        }
      }

      else
      {
        v15 = sub_1C5D86964(__src, v58);
      }

      v16 = sub_1C5DEF878(v15);
      if (v14 == 3145728 && v16 && v40 == 32769)
      {
        memcpy(v58, __srca, 0x43uLL);
        v59 = 0;
        v43 = v12;
        v44 = v13;
        v45 = v36;
        v46 = v38;
        v47 = v8;
        v48 = v9;
        v49 = v10;
        v50 = v39;
        v51 = v37;
        v52 = 0;
        sub_1C5D95E74(&v43, v42);
        sub_1C5DF0A74(0, v58);
        sub_1C5C89D60(__src);
        sub_1C5C89D60(__src);
        v17 = 1;
        return v17 & 1;
      }

      sub_1C5DF0E34(__dst);
      goto LABEL_35;
    case 1:
      v23 = __src[7];
      v24 = __src[8];
      memcpy(v58, __src, sizeof(v58));
      sub_1C5D8F33C(v4, v5, v7, v6, v8, v9, v10, v23, v24);
      v17 = sub_1C5DF1850(v58, a3);
LABEL_16:
      sub_1C5C89D60(__src);
      return v17 & 1;
    case 2:
      v18 = *__src;

      return sub_1C5DF2928(v18, v5, v7);
    case 3:
      v20 = a3;
      sub_1C5C8CF74(*__src, v5, v7, v6);
      sub_1C5C8C0F8(v4, v5, v7, v6);
      switch(v6 >> 61)
      {
        case 2uLL:
          if (v20 >> 14 && v20 >> 14 != 1)
          {
            switch(v20)
            {
              case 0x8002u:
              case 0x8005u:

                v21 = sub_1C5DBB610(v4, v5);

                goto LABEL_25;
              default:
                goto LABEL_35;
            }
          }

          goto LABEL_35;
        case 3uLL:
          if ((v4 & 1) == 0)
          {
            goto LABEL_35;
          }

          v21 = 0;
          break;
        case 5uLL:
        case 7uLL:
          if (qword_1EC1A9680 != -1)
          {
            swift_once();
          }

          v21 = qword_1EC1BE470;
          v22 = qword_1EC1BE470;
          break;
        default:
          goto LABEL_35;
      }

LABEL_25:
      sub_1C5DF09CC(&v43);
      v28 = v51 | (BYTE2(v51) << 16);
      if ((~v28 & 0xFEFEFE) != 0)
      {
        v29 = v28 & 0xF00000;
        sub_1C5DF47C8();
        if (v29 == 0x200000)
        {
          sub_1C5DF0A74(v21, __src);
        }
      }

      sub_1C5DF09CC(v58);
      v30 = LOWORD(v58[8]) | (BYTE2(v58[8]) << 16);
      if ((~v30 & 0xFEFEFE) != 0)
      {
        if ((v30 & 0xF00000) == 0x100000)
        {
          v31 = v58[1];
          v32 = v58[4];
          v33 = v58[5];

          sub_1C5C74C18(v32, v33);
          swift_unknownObjectRelease();
          if (v31)
          {
            sub_1C5DF0A74(v21, __src);
          }
        }

        else
        {
          sub_1C5DF47C8();
        }
      }

      sub_1C5C89D60(__src);

      goto LABEL_38;
    default:
LABEL_38:
      v17 = 0;
      return v17 & 1;
  }
}

void *sub_1C5C8C0F8(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  result = memcpy(__dst, (v4 + 32), 0x43uLL);
  v11 = LOWORD(__dst[8]) | (BYTE2(__dst[8]) << 16);
  if ((~v11 & 0xFEFEFE) != 0)
  {
    v43 = a1;
    v44 = a2;
    v12 = __dst[0];
    v13 = __dst[1];
    v14 = __dst[3];
    v16 = __dst[4];
    v15 = __dst[5];
    v41 = *(&__dst[1] + 1) | ((*(&__dst[1] + 5) | (HIBYTE(__dst[1]) << 16)) << 32);
    v42 = __dst[7];
    if ((v11 & 0xF00000) == 0x100000)
    {
      if ((__dst[1] & 1) != 0 && !(a4 >> 61))
      {
        v48[0] = __dst[0];
        LOBYTE(v48[1]) = 0;
        v48[2] = __dst[2];
        v33 = __dst[4];
        v34 = __dst[3];
        v48[3] = __dst[3];
        v48[4] = __dst[4];
        v17 = __dst[5];
        v48[5] = __dst[5];
        v18 = __dst[2];
        LOWORD(v48[6]) = __dst[6] & 0x101;
        BYTE2(v48[6]) = BYTE2(__dst[6]) & 1;
        v39 = v48[1];
        v36 = __dst[6] & 0x101 | ((BYTE2(__dst[6]) & 1) << 16);
        v19 = __dst[6];
        __swift_project_boxed_opaque_existential_0((v5 + 192), *(v5 + 216));
        __src[0] = v12;
        LOBYTE(__src[1]) = v13;
        HIBYTE(__src[1]) = BYTE6(v41);
        *(&__src[1] + 5) = WORD2(v41);
        *(&__src[1] + 1) = v41;
        __src[2] = v18;
        __src[3] = v34;
        __src[4] = v33;
        __src[5] = v17;
        __src[6] = v19;
        __src[7] = v42;
        BYTE2(__src[8]) = BYTE2(v11);
        LOWORD(__src[8]) = v11;
        __src[9] = v12;
        __src[10] = v48[1];
        __src[11] = v18;
        __src[12] = v34;
        __src[13] = v33;
        __src[14] = v17;
        __src[15] = v36;
        BYTE2(__src[17]) = 16;
        LOWORD(__src[17]) = 0;
        __src[18] = v43;
        __src[19] = v44;
        __src[20] = a3;
        __src[21] = a4;
        LOBYTE(__src[27]) = 3;
        memcpy(v46, __src, 0xD9uLL);
        sub_1C5DF43D0(v46);
        memcpy(v50, v46, 0xD9uLL);
        sub_1C5D936A8(__dst, v49);
        sub_1C5D936A8(__dst, v49);
        sub_1C5D936A8(__dst, v49);
        sub_1C5DF444C(v48, v49);
        sub_1C5C8CF74(v43, v44, a3, a4);
        sub_1C5DBBF0C();
        sub_1C5DF47C8();
        sub_1C5DF4518();
        memcpy(v49, (v5 + 104), 0x43uLL);
        *(v5 + 104) = v12;
        *(v5 + 112) = v39;
        *(v5 + 120) = v18;
        *(v5 + 128) = v34;
        *(v5 + 136) = v33;
        *(v5 + 144) = v17;
        *(v5 + 152) = v36;
        *(v5 + 170) = 16;
        *(v5 + 168) = 0;
        return sub_1C5DF47C8();
      }

      v38 = a3;
      v40 = a4 >> 61;
      v35 = __dst[6];
      v37 = __dst[2];
      memcpy(v50, (v5 + 32), 0x43uLL);
      sub_1C5D936A8(__dst, v46);
      sub_1C5D95E74(v50, v46);

      sub_1C5C74C18(v16, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = a3;
      v40 = a4 >> 61;
      v35 = __dst[6];
      v37 = __dst[2];
      memcpy(v50, (v5 + 32), 0x43uLL);
      sub_1C5D95E74(v50, v46);
    }

    memcpy(v49, (v5 + 104), 0x43uLL);
    v20 = LOWORD(v49[8]) | (BYTE2(v49[8]) << 16);
    if ((~v20 & 0xFEFEFE) != 0 && (v11 & 0xF00000) == 0x100000)
    {
      v21 = v49[1];
      v22 = *(&v49[1] + 5);
      v23 = HIBYTE(v49[1]);
      v24 = *(&v49[1] + 1);
      v28 = v49[2];
      v29 = v49[0];
      v31 = v49[4];
      v32 = v49[3];
      v30 = v49[5];
      v26 = v49[7];
      v27 = v49[6];
      sub_1C5D936A8(__dst, v50);
      sub_1C5D936A8(v49, v50);

      sub_1C5C74C18(v16, v15);
      swift_unknownObjectRelease();
      if ((v13 & 1) != 0 && (v20 & 0xF00000) == 0x100000 && (memcpy(v48, v49, 0x43uLL), sub_1C5D95E74(v48, v50), , sub_1C5C74C18(v31, v30), swift_unknownObjectRelease(), (v21 & 1) == 0) && v40 == 1)
      {
        v25 = v24 | ((v22 | (v23 << 16)) << 32);
        __swift_project_boxed_opaque_existential_0((v5 + 192), *(v5 + 216));
        __src[0] = v29;
        LOBYTE(__src[1]) = v21;
        HIBYTE(__src[1]) = BYTE6(v25);
        *(&__src[1] + 5) = WORD2(v25);
        *(&__src[1] + 1) = v25;
        __src[2] = v28;
        __src[3] = v32;
        __src[4] = v31;
        __src[5] = v30;
        __src[6] = v27;
        __src[7] = v26;
        BYTE2(__src[8]) = BYTE2(v20);
        LOWORD(__src[8]) = v20;
        __src[9] = v12;
        LOBYTE(__src[10]) = v13;
        HIBYTE(__src[10]) = BYTE6(v41);
        *(&__src[10] + 5) = WORD2(v41);
        *(&__src[10] + 1) = v41;
        __src[11] = v37;
        __src[12] = v14;
        __src[13] = v16;
        __src[14] = v15;
        __src[15] = v35;
        __src[16] = v42;
        BYTE2(__src[17]) = BYTE2(v11);
        LOWORD(__src[17]) = v11;
        __src[18] = v43;
        __src[19] = v44;
        __src[20] = v38;
        __src[21] = a4;
        LOBYTE(__src[27]) = 3;
        memcpy(v46, __src, 0xD9uLL);
        sub_1C5DF43D0(v46);
        memcpy(v50, v46, 0xD9uLL);
        sub_1C5D936A8(__dst, v47);
        sub_1C5C8CF74(v43, v44, v38, a4);
        sub_1C5D936A8(v49, v47);
        sub_1C5DBBF0C();
        sub_1C5DF47C8();
        sub_1C5DF47C8();
        sub_1C5DF4518();
        memcpy(v47, (v5 + 104), 0x43uLL);
        *(v5 + 104) = 0u;
        *(v5 + 120) = 0u;
        *(v5 + 136) = 0u;
        *(v5 + 152) = 0u;
        *(v5 + 170) = -2;
        *(v5 + 168) = -258;
      }

      else
      {
        sub_1C5DF47C8();
      }
    }

    return sub_1C5DF47C8();
  }

  return result;
}

uint64_t sub_1C5C8C748(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  switch(a4 >> 61)
  {
    case 3uLL:

      break;
    case 4uLL:
    case 6uLL:
    case 7uLL:
      break;
    case 5uLL:
      sub_1C5D5D118(a1, a2, a3);
      break;
    default:

      break;
  }
}

uint64_t sub_1C5C8C7FC()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id _coerceJSONValueFromValue(void *a1, _BYTE *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (v4 == v3)
  {
    v8 = 0;
  }

  else if ([v3 conformsToProtocol:&unk_1F45D7BA8])
  {
    if (_NSIsNSDictionary())
    {
      v5 = MEMORY[0x1E695DF90];
      v6 = v3;
      v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = ___coerceJSONValueFromValue_block_invoke;
      v26[3] = &unk_1E82323A0;
      v8 = v7;
      v27 = v8;
      [v6 enumerateKeysAndObjectsUsingBlock:v26];
    }

    else
    {
      v10 = _NSIsNSArray();
      v11 = v3;
      v12 = v11;
      if (v10)
      {
        v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v22 + 1) + 8 * i);
              v19 = [MEMORY[0x1E695DFB0] null];

              if (v18 != v19)
              {
                v20 = _coerceJSONValueFromValue(v18, a2);
                if (v20)
                {
                  [v8 addObject:v20];
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
          }

          while (v15);
        }
      }

      else
      {
        v8 = v11;
      }
    }
  }

  else
  {
    if ([v3 conformsToProtocol:&unk_1F45BDE20])
    {
      v9 = [v3 mpc_jsonValue];
    }

    else
    {
      if (a2)
      {
        *a2 = 1;
      }

      v9 = [v3 description];
    }

    v8 = v9;
  }

  return v8;
}

void ___coerceJSONValueFromValue_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFB0] null];

  if (v7 != v6)
  {
    v8 = _MPCClassForPlaybackEngineEventPayloadKey(v5, 0);
    if (v8)
    {
      v9 = v8;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<MPCPlaybackEngineEventPayloadJSONValue>  _Nullable _coerceJSONValueFromValue(__strong id<MPCPlaybackEngineEventPayloadValue> _Nonnull, BOOL * _Nullable)_block_invoke"}];
        [v12 handleFailureInFunction:v13 file:@"MPCPlaybackEngineEventPayload.m" lineNumber:131 description:{@"Unexpected type for key: %@ actual=%@ expected=%@", v5, objc_opt_class(), v9}];
      }
    }

    v14 = 0;
    v10 = _coerceJSONValueFromValue(v6, &v14);
    if (v14 == 1)
    {
      v11 = [v5 stringByAppendingString:@"_description"];
      [*(a1 + 32) setObject:v10 forKeyedSubscript:v11];
    }

    else
    {
      [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
    }
  }
}

void __MPCPlaybackEngineEventPayloadJSONFromPayload_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = _coerceJSONValueFromValue(a3, 0);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

uint64_t sub_1C5C8CCE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = a1;
  switch(a4 >> 61)
  {
    case 1uLL:
    case 2uLL:
    case 4uLL:
      OUTLINED_FUNCTION_0_51();
      goto LABEL_7;
    case 3uLL:
      OUTLINED_FUNCTION_0_51();
      sub_1C5C8A7E4();
      if ((v9 & 1) == 0)
      {
        return 1;
      }

      type metadata accessor for PausedState();
      memset(v29, 0, 35);
      swift_allocObject();
      sub_1C5D8B884(0, 0, 0, 4, v29, 0.0);
LABEL_10:
      sub_1C5D94070();

      return 1;
    case 5uLL:
      v18 = sub_1C5D94864();
      type metadata accessor for MediaServicesInterruptedState();
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_0_51();
      sub_1C5C8CF74(v19, v20, v21, v22);

      v23 = OUTLINED_FUNCTION_0_51();
      sub_1C5D8AF44(v23, v24, v25, v26, v5, v18);
      goto LABEL_10;
    case 6uLL:
      type metadata accessor for MediaServicesResumingState();
      swift_allocObject();

      sub_1C5D8B450(v27, a2, a3, a4);
      goto LABEL_10;
    case 7uLL:
      type metadata accessor for IdleState();
      swift_allocObject();
      sub_1C5D94070();

      OUTLINED_FUNCTION_0_51();
LABEL_7:
      sub_1C5C8A7E4();
      return 1;
    default:
      type metadata accessor for InterruptedState();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_51();
      sub_1C5C8CF74(v10, v11, v12, v13);

      v14 = OUTLINED_FUNCTION_0_51();
      sub_1C5D88FA8(v14, v15, v16, v17, v4);
      goto LABEL_10;
  }
}

uint64_t sub_1C5C8CEE4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1C5C8CEE0();
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    v3 = OUTLINED_FUNCTION_108();
    return MEMORY[0x1C6954040](v3);
  }

  result = OUTLINED_FUNCTION_12_6();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1C5C8CF74(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  switch(a4 >> 61)
  {
    case 3uLL:

      break;
    case 4uLL:
    case 6uLL:
    case 7uLL:
      break;
    case 5uLL:
      sub_1C5D5D0D8(a1, a2, a3);
      break;
    default:

      break;
  }
}

id MPCPlaybackEngineEventPayloadFromPayloadJSON(void *a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = [v1 dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MPCPlaybackEngineEventPayloadFromPayloadJSON_block_invoke;
  v6[3] = &unk_1E8232378;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void __MPCPlaybackEngineEventPayloadFromPayloadJSON_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = _coercePayloadFromJSONValue(a3, v5);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

id _coercePayloadFromJSONValue(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = _MPCClassForPlaybackEngineEventPayloadKey(v4, 0);
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = v5;
  v7 = [v5 conformsToProtocol:&unk_1F45BDE20];
  if ((objc_opt_isKindOfClass() & 1) == 0 && (v7 & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<MPCPlaybackEngineEventPayloadValue>  _Nullable _coercePayloadFromJSONValue(__strong id<MPCPlaybackEngineEventPayloadJSONValue> _Nonnull, NSString *__strong _Nonnull)"}];
    [v25 handleFailureInFunction:v26 file:@"MPCPlaybackEngineEventPayload.m" lineNumber:73 description:{@"Unexpected type for key %@ actual=%@ expected=%@", v4, objc_opt_class(), v6}];
  }

  if (_NSIsNSDictionary())
  {
    v8 = v3;
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = ___coercePayloadFromJSONValue_block_invoke;
    v33[3] = &unk_1E8238460;
    v10 = v9;
    v34 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v33];
    if (v7)
    {
      v11 = [v6 payloadValueFromJSONValue:v10];
    }

    else
    {
      v11 = v10;
    }

    v13 = v11;

    goto LABEL_30;
  }

  if (!_NSIsNSArray())
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = [v6 payloadValueFromJSONValue:v3];
      goto LABEL_29;
    }

LABEL_28:
    v23 = v3;
LABEL_29:
    v13 = v23;
    goto LABEL_30;
  }

  v12 = v3;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        v20 = _MPCClassForPlaybackEngineEventPayloadKey(v4, 1);
        if (v20 && (v21 = v20, (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (([v21 conformsToProtocol:&unk_1F45BDE20] & 1) == 0)
          {
            v28 = [MEMORY[0x1E696AAA8] currentHandler];
            v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<MPCPlaybackEngineEventPayloadValue>  _Nullable _coercePayloadFromJSONValue(__strong id<MPCPlaybackEngineEventPayloadJSONValue> _Nonnull, NSString *__strong _Nonnull)"}];
            [v28 handleFailureInFunction:v27 file:@"MPCPlaybackEngineEventPayload.m" lineNumber:99 description:{@"Unexpected type for element in array for key %@ actual=%@ expected=%@", v4, objc_opt_class(), v21}];
          }

          v22 = [v21 payloadValueFromJSONValue:v19];
          if (v22)
          {
            [v13 addObject:v22];
          }
        }

        else
        {
          [v13 addObject:v19];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v16);
  }

LABEL_30:

  return v13;
}

id _MPCClassForPlaybackEngineEventPayloadKey(void *a1, uint64_t a2)
{
  v3 = _MPCClassForPlaybackEngineEventPayloadKey_onceToken;
  v4 = a1;
  if (v3 != -1)
  {
    dispatch_once(&_MPCClassForPlaybackEngineEventPayloadKey_onceToken, &__block_literal_global_6516);
  }

  v5 = [_MPCClassForPlaybackEngineEventPayloadKey___keyClassMap objectForKeyedSubscript:v4];

  v6 = [v5 objectAtIndexedSubscript:a2];

  return v6;
}

void ___coercePayloadFromJSONValue_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = _coercePayloadFromJSONValue(a3, v5);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_1C5C8D72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_29_14();
  OUTLINED_FUNCTION_5_38();
  sub_1C5C8FF08();
  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_35_15();
  if (!v34)
  {
LABEL_28:

    *v30 = v32;
    OUTLINED_FUNCTION_30_14();
    return;
  }

  v35 = 0;
  OUTLINED_FUNCTION_4_45();
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & v36;
  v40 = (v37 + 63) >> 6;
  v30 = (v32 + 56);
  if ((v38 & v36) == 0)
  {
LABEL_7:
    v42 = v35;
    while (1)
    {
      v35 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v35 >= v40)
      {
        break;
      }

      ++v42;
      if (*(v33 + 8 * v35))
      {
        OUTLINED_FUNCTION_9_2();
        v39 = v44 & v43;
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_10_30();
    if (v55 >= 64)
    {
      OUTLINED_FUNCTION_18_23(v55);
    }

    else
    {
      OUTLINED_FUNCTION_17_24(v55);
    }

    OUTLINED_FUNCTION_44_12();
    goto LABEL_28;
  }

  while (1)
  {
    v41 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
LABEL_12:
    v45 = (*(v31 + 48) + 16 * (v41 | (v35 << 6)));
    v46 = *v45;
    v47 = v45[1];
    sub_1C60179F0();
    sub_1C60169F0();
    v48 = sub_1C6017A20() & ~(-1 << *(v32 + 32));
    if (((-1 << v48) & ~v30[v48 >> 6]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_7();
LABEL_22:
    *(v30 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v54 = (*(v32 + 48) + 16 * v49);
    *v54 = v46;
    v54[1] = v47;
    ++*(v32 + 16);
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_26_2();
    if (v53)
    {
      if (v51)
      {
        break;
      }
    }

    if (v50 == v52)
    {
      v50 = 0;
    }

    if (v30[v50] != -1)
    {
      OUTLINED_FUNCTION_5();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1C5C8DA40()
{
  v1 = OUTLINED_FUNCTION_4_46();
  sub_1C5C8F9EC(v1, v2, v3, v4);
  v6 = v5;
  OUTLINED_FUNCTION_25();
  v8 = v7;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10 - 8];
  v12 = OBJC_IVAR____MPCMediaRemotePublisher_Swift__migrationRequirements;
  OUTLINED_FUNCTION_27(v0 + OBJC_IVAR____MPCMediaRemotePublisher_Swift__migrationRequirements, v17);
  (*(v8 + 16))(v11, v0 + v12, v6);
  sub_1C6015380();
  v13 = OUTLINED_FUNCTION_303();
  return v14(v13);
}

void _MediaRemotePublisher.getMigrationRequirementsFilterData(for:features:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_247();
  v46 = v12;
  v14 = v13;
  v15 = OUTLINED_FUNCTION_4_46();
  sub_1C5C8F9EC(v15, v16, v17, v18);
  v20 = v19;
  OUTLINED_FUNCTION_25();
  v22 = v21;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  if (v14 >> 62)
  {
    sub_1C5C64D74(0, &unk_1EC1A8BB0, off_1E822D740);
    OUTLINED_FUNCTION_127_2();

    sub_1C60176B0();
    OUTLINED_FUNCTION_127_2();
  }

  else
  {

    if (sub_1C5E1F39C(v14 & 0xFFFFFFFFFFFFFF8))
    {
      v11 = v14;
    }

    else
    {
      v11 = v14 & 0xFFFFFFFFFFFFFF8 | 1;
    }
  }

  v56 = MEMORY[0x1E69E7CD0];
  v26 = sub_1C5C6AA20();
  v49 = v10;
  v50 = v20;
  v47 = v25;
  v48 = v22;
  if (!v26)
  {
    v28 = 0;
    goto LABEL_23;
  }

  v27 = v26;
  if (v26 >= 1)
  {
    v28 = 0;
    for (i = 0; i != v27; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1C6954040](i, v11);
      }

      else
      {
        v30 = *(v11 + 8 * i + 32);
      }

      v31 = v30;
      if ([v30 isFallbackAccount])
      {

        v32 = v31;
        v28 = v31;
      }

      if ([v31 isDelegated])
      {
        v33 = OUTLINED_FUNCTION_162_0();
        v14 = sub_1C6016940();
        v35 = v34;

        v53 = v14;
        v54 = v35;
        v36 = 0x544147454C45442DLL;
        v37 = 0xE900000000000045;
      }

      else if ([v31 hasCatalogPlaybackCapability])
      {
        if ([v31 hasCloudLibraryEnabled])
        {
          v38 = OUTLINED_FUNCTION_162_0();
          sub_1C6016940();
          OUTLINED_FUNCTION_45_10();

          v53 = v10;
          v54 = v14;
          v36 = 0x44554F4C432DLL;
          v37 = 0xE600000000000000;
        }

        else
        {
          v40 = OUTLINED_FUNCTION_162_0();
          sub_1C6016940();
          OUTLINED_FUNCTION_45_10();

          v53 = v10;
          v54 = v14;
          v36 = 1112888109;
          v37 = 0xE400000000000000;
        }
      }

      else
      {
        v39 = OUTLINED_FUNCTION_162_0();
        sub_1C6016940();
        OUTLINED_FUNCTION_45_10();

        v53 = v10;
        v54 = v14;
        v36 = 0x4255534E4F4E2DLL;
        v37 = 0xE700000000000000;
      }

      MEMORY[0x1C69534E0](v36, v37);
      v10 = &v56;
      sub_1C5C8F0A4(&v53, v53, v54);
    }

LABEL_23:

    v41 = v47;
    if ((v46 & 1) != 0 || !v28)
    {
      goto LABEL_30;
    }

    v42 = v28;
    if ([v42 hasCatalogPlaybackCapability])
    {
      v43 = [v42 storeFrontIdentifier];
      sub_1C6016940();
      OUTLINED_FUNCTION_45_10();

      v53 = v10;
      v54 = v14;
      v51 = 45;
      v52 = 0xE100000000000000;
      sub_1C5C8FDB0();
      sub_1C6017370();
      OUTLINED_FUNCTION_312();

      if (v55)
      {

        v53 = 0x2D5953534F4CLL;
        v54 = 0xE600000000000000;
        MEMORY[0x1C69534E0](a9, a10);

        sub_1C5C8F0A4(&v53, v53, v54);

LABEL_30:
        swift_beginAccess();
        v44 = v50;
        sub_1C6015370();
        swift_endAccess();
        sub_1C5C8DA40();
        sub_1C6015350();
        OUTLINED_FUNCTION_318();

        (*(v48 + 8))(v41, v44);
        OUTLINED_FUNCTION_255();
        OUTLINED_FUNCTION_237();
        return;
      }
    }

    goto LABEL_30;
  }

  __break(1u);
}