uint64_t ReferenceResolutionClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

void sub_1DD27CAA8(uint64_t a1)
{
  if (sub_1DD27D638())
  {
    sub_1DD27CBB4(a1);
  }

  else
  {
    if (qword_1EE029290 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v2 = sub_1DD335CD0();
    OUTLINED_FUNCTION_14(v2, qword_1EE02A6A8);
    oslog = sub_1DD335CB0();
    v3 = sub_1DD336960();
    if (os_log_type_enabled(oslog, v3))
    {
      OUTLINED_FUNCTION_33_0();
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DD27A000, oslog, v3, "Failed to register request: SiriReferenceResolutionService initialization failed.", v4, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }
  }
}

void sub_1DD27CBB4(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD334890();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v80 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v80 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
  v91 = v16;
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = v17;
  v90 = v14;
  v19 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
  if (!v19)
  {
    v20 = v18;
LABEL_11:

LABEL_12:
    isa = v7[2].isa;
    isa(v11, v4, v5);
    sub_1DD335860();
    v66 = sub_1DD335CB0();
    v67 = sub_1DD336950();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_50_2();
      v90 = OUTLINED_FUNCTION_49_1();
      v93 = v90;
      *v68 = 136315394;
      LODWORD(v89) = v67;
      MEMORY[0x1E12AA6A0]();
      v87 = v7[1].isa;
      v88 = v66;
      v87(v11, v5);
      v69 = OUTLINED_FUNCTION_51_6();
      v72 = sub_1DD27DBF0(v69, v70, v71);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2080;
      v73 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
      OUTLINED_FUNCTION_106();
      swift_beginAccess();
      v74 = v91;
      isa(v91, (v2 + v73), v5);
      sub_1DD30B5E4(&qword_1ECCD6EF8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v75 = sub_1DD336DC0();
      v77 = v76;
      v87(v74, v5);
      v78 = sub_1DD27DBF0(v75, v77, &v93);

      *(v68 + 14) = v78;
      v79 = v88;
      _os_log_impl(&dword_1DD27A000, v88, v89, "Failed to initialize inRequest schema objects. requestId: %s, prev rrid: %s", v68, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_19_4();
    }

    else
    {

      (v7[1].isa)(v11, v5);
    }

    goto LABEL_17;
  }

  v20 = v19;
  v21 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
  if (!v21)
  {

    goto LABEL_11;
  }

  v22 = v4;
  v87 = v21;
  v88 = v4;
  v23 = v7 + 2;
  v86 = v7[2].isa;
  v86(v16, v22, v5);
  v24 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
  swift_beginAccess();
  v85 = v7;
  v89 = v20;
  v83 = v7[5].isa;
  v83(v2 + v24, v16, v5);
  swift_endAccess();
  v25 = objc_opt_self();
  v26 = v88;
  v27 = sub_1DD334860();
  v84 = v25;
  v28 = [v25 derivedIdentifierForComponent:15 fromSourceIdentifier:v27];

  sub_1DD334870();
  v29 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
  swift_beginAccess();
  v83(v2 + v29, v16, v5);
  swift_endAccess();
  sub_1DD27D80C(0, &qword_1EE027A58, 0x1E69CF640);
  v30 = v86;
  v86(v16, v26, v5);
  v31 = sub_1DD27D9B4(v16);
  v32 = v87;
  [v87 setUuid_];

  if (AFDeviceSupportsSAE())
  {
    v33 = 43;
  }

  else
  {
    v33 = 1;
  }

  [v32 setComponent_];
  v83 = v29;
  v30(v16, v2 + v29, v5);
  v34 = sub_1DD27D9B4(v16);
  [v89 setUuid_];

  v35 = v89;
  [v89 setComponent_];
  [v18 setSource_];
  [v18 setTarget_];
  v36 = v90;
  v37 = v88;
  v88 = v23;
  v30(v90, v37, v5);
  v38 = v18;
  sub_1DD335860();
  v39 = sub_1DD335CB0();
  v40 = sub_1DD336940();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_31_0();
    v82 = swift_slowAlloc();
    v92[0] = v82;
    *v41 = 136315650;
    v42 = v38;
    v81 = v40;
    v43 = v42;
    v44 = [v42 description];
    v80 = v39;
    v45 = v5;
    v46 = v44;
    sub_1DD3365D0();

    v47 = OUTLINED_FUNCTION_77();
    v50 = sub_1DD27DBF0(v47, v48, v49);

    *(v41 + 4) = v50;
    *(v41 + 12) = 2080;
    v52 = MEMORY[0x1E12AA6A0](v51);
    v54 = v53;
    v55 = v85[1].isa;
    v55(v36, v45);
    v56 = sub_1DD27DBF0(v52, v54, v92);

    *(v41 + 14) = v56;
    *(v41 + 22) = 2080;
    v57 = v87;
    v58 = (v86)(v91, v83 + v2, v45);
    v59 = MEMORY[0x1E12AA6A0](v58);
    v61 = v60;
    v62 = OUTLINED_FUNCTION_87_2();
    (v55)(v62);
    v35 = v89;
    v63 = sub_1DD27DBF0(v59, v61, v92);

    *(v41 + 24) = v63;
    v64 = v80;
    _os_log_impl(&dword_1DD27A000, v80, v81, "Emitting request link: %s with requestId: %s, rrid: %s", v41, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_39_7();
    OUTLINED_FUNCTION_25_3();
  }

  else
  {
    v57 = v32;

    (v85[1].isa)(v36, v5);
  }

  [objc_msgSend(v84 sharedStream)];

  swift_unknownObjectRelease();
LABEL_17:
  OUTLINED_FUNCTION_24_1();
}

uint64_t OUTLINED_FUNCTION_1_2(unint64_t *a1)
{

  return sub_1DD28092C(a1, &protocol conformance descriptor for ScopedReferenceResolutionDataProvider);
}

void OUTLINED_FUNCTION_54()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t OUTLINED_FUNCTION_1_5(unint64_t *a1)
{

  return sub_1DD2D86D4(a1, &protocol conformance descriptor for SalientEntitiesDataProvider);
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_16(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1DD27D638()
{
  if (!*(v0 + 16) && (*(v0 + 24) & 1) == 0)
  {
    OUTLINED_FUNCTION_52();
    *(v0 + 16) = (*(v1 + 160))();
  }

  return sub_1DD335860();
}

BOOL OUTLINED_FUNCTION_34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_1DD336830();
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 136) = &a9 - v9;

  return sub_1DD336620();
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_1DD336CC0();
}

void OUTLINED_FUNCTION_22_7()
{
  v8 = (*(v1 + 56) + 32 * v0);
  *v8 = v7;
  v8[1] = v6;
  v8[2] = v5;
  v8[3] = v4;
}

void OUTLINED_FUNCTION_22_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(v26, 32, 0xE100000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1DD27D80C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_33_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_33_8(void *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  *(v1 - 112) = *a1;
  *(v1 - 104) = v3;
  *(v1 - 96) = v4;
}

uint64_t OUTLINED_FUNCTION_33_9()
{
}

id sub_1DD27D9B4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD334860();
  v4 = [v2 initWithNSUUID_];

  sub_1DD334890();
  OUTLINED_FUNCTION_1();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t OUTLINED_FUNCTION_11()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_21_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

unint64_t sub_1DD27DBF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DD27DEDC(v11, 0, 0, 1, a1, a2);
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
    sub_1DD27E654(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void OUTLINED_FUNCTION_28_1()
{

  JUMPOUT(0x1E12ADA30);
}

void OUTLINED_FUNCTION_28_5()
{
  v2 = *(v0 - 456);
}

uint64_t OUTLINED_FUNCTION_28_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t ScopedReferenceResolutionDataProvider.__deallocating_deinit()
{
  ScopedReferenceResolutionDataProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t ScopedReferenceResolutionDataProvider.deinit()
{

  return v0;
}

void OUTLINED_FUNCTION_52_0()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t OUTLINED_FUNCTION_52_2()
{
}

id OUTLINED_FUNCTION_52_4()
{

  return [v1 (v0 + 1656)];
}

unint64_t sub_1DD27DEDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DD2A280C(a5, a6);
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
    result = sub_1DD336C30();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ReferenceResolutionClient.__allocating_init()()
{
  v1 = v0;
  if (qword_1EE029290 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_14(v2, qword_1EE02A6A8);
  v3 = sub_1DD335CB0();
  v4 = sub_1DD336940();
  if (OUTLINED_FUNCTION_21_0(v4))
  {
    OUTLINED_FUNCTION_33_0();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_122(v5);
    OUTLINED_FUNCTION_73();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    v11 = OUTLINED_FUNCTION_2_3();
    MEMORY[0x1E12ADA30](v11);
  }

  type metadata accessor for SiriReferenceResolutionService(0);
  v12 = sub_1DD27E988();
  v13 = *(v1 + 144);

  return v13(v12);
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1)
{

  return MEMORY[0x1EEE3DD78](a1, v1, 1, 1, 1);
}

void OUTLINED_FUNCTION_19_1()
{
  *(v1 + 16) = v0;
  v5 = v1 + 16 * v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

void OUTLINED_FUNCTION_19_4()
{

  JUMPOUT(0x1E12ADA30);
}

void OUTLINED_FUNCTION_19_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(v26, 32, 0xE100000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

double OUTLINED_FUNCTION_19_6()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_19_7()
{

  JUMPOUT(0x1E12AC540);
}

uint64_t OUTLINED_FUNCTION_76_3()
{

  return sub_1DD336AD0();
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_3_16()
{

  JUMPOUT(0x1E12AC540);
}

uint64_t sub_1DD27E654(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t OUTLINED_FUNCTION_35_0()
{

  return sub_1DD27DBF0(v0, v1, (v2 - 152));
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return MEMORY[0x1EEDC5E40](v2, 0, v1, v0);
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_71()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 64) = a2;
  *(a1 + 32) = v2;

  return MEMORY[0x1EEDC5E80](2016555045, 0xE400000000000000);
}

void OUTLINED_FUNCTION_23_6()
{
  *(v0 + 16) = v3;
  v6 = v0 + 16 * v1;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  *(v2 + 96) = v0;
}

void OUTLINED_FUNCTION_100_0()
{

  JUMPOUT(0x1E12AC640);
}

uint64_t OUTLINED_FUNCTION_100_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD336B10();
}

uint64_t sub_1DD27E988()
{
  if (qword_1EE029480 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE02A6E8;
  if (qword_1EE02A6E8)
  {
    v2 = 0;
    v3 = 0;
LABEL_9:
    sub_1DD335860();
    sub_1DD27EBC8(v2, v3);
    return v1;
  }

  if (qword_1EE027E78 != -1)
  {
    OUTLINED_FUNCTION_36_7(&qword_1EE027E78);
  }

  v4 = qword_1EE027E80;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DD3011E4;
  *(v5 + 24) = v3;
  v8[4] = sub_1DD3011EC;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DD301214;
  v8[3] = &block_descriptor_6;
  v6 = _Block_copy(v8);
  sub_1DD335860();

  dispatch_sync(v4, v6);
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    v1 = qword_1EE02A6E8;
    v2 = sub_1DD3011E4;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SiriReferenceResolutionService(uint64_t a1)
{
  result = qword_1EE029468;
  if (!qword_1EE029468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD27EBC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t ReferenceResolutionClient.__allocating_init(service:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(unint64_t *a1)
{

  return sub_1DD28092C(a1, &protocol conformance descriptor for ScopedReferenceResolutionDataProvider);
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_10(unint64_t *a1)
{

  return sub_1DD2D86D4(a1, &protocol conformance descriptor for SalientEntitiesDataProvider);
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1)
{

  return sub_1DD336560();
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

BOOL OUTLINED_FUNCTION_51(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_9_10(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_11()
{

  JUMPOUT(0x1E12ACD20);
}

double OUTLINED_FUNCTION_9_12()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_9_14()
{

  sub_1DD3131D4();
}

uint64_t OUTLINED_FUNCTION_73_1()
{
}

BOOL OUTLINED_FUNCTION_17_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void *OUTLINED_FUNCTION_73_4@<X0>(const void *a1@<X8>)
{

  return memcpy((v1 - 256), a1, 0xA8uLL);
}

uint64_t sub_1DD27F118(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_127(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_123();
  v6(v5);
  return v4;
}

uint64_t sub_1DD27F164(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_51_7(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_51_9()
{
}

uint64_t OUTLINED_FUNCTION_48_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD334C30();
}

uint64_t OUTLINED_FUNCTION_48_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD336AD0();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

uint64_t sub_1DD27F40C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD27F454(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DD27F4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = sub_1DD3363C0();
  v30 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DD336400();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DD335E70();
  MEMORY[0x1EEE9AC00](v14);
  (*(v16 + 104))(&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D2860]);
  sub_1DD335EC0();
  swift_allocObject();

  v26 = sub_1DD335EA0();
  v17 = (*(*a2 + 336))(v26, a3);
  v19 = v18;
  sub_1DD2846CC();
  v20 = sub_1DD3369D0();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  *(v21 + 32) = v17;
  LOBYTE(a4) = v19 & 1;
  *(v21 + 40) = v19 & 1;
  aBlock[4] = sub_1DD281824;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD2811BC;
  aBlock[3] = &block_descriptor_29;
  v22 = _Block_copy(aBlock);
  sub_1DD335860();
  sub_1DD283CAC(v17, a4);

  sub_1DD3363E0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DD27F40C(&qword_1EE027F38, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6710, &qword_1DD339620);
  sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
  v23 = v27;
  sub_1DD336B10();
  MEMORY[0x1E12AC840](0, v13, v10, v22);
  _Block_release(v22);

  sub_1DD283CB8(v17, a4);
  (*(v30 + 8))(v10, v23);
  return (*(v28 + 8))(v13, v29);
}

uint64_t sub_1DD27F8C8()
{

  sub_1DD283CB8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

void sub_1DD27F90C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_4();
  v132 = v2;
  v112 = v3;
  v123 = sub_1DD335CE0();
  OUTLINED_FUNCTION_1_0();
  v102 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_50_0(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v8);
  v130 = v97 - v9;
  OUTLINED_FUNCTION_31_1();
  v114 = sub_1DD336220();
  OUTLINED_FUNCTION_1_0();
  v113 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v97 - v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v16);
  v131 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v98 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v21 = v20 - v19;
  v97[4] = sub_1DD335CA0();
  OUTLINED_FUNCTION_1_0();
  v97[3] = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  v26 = v25 - v24;
  if (qword_1EE027610 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v27 = qword_1EE02A1D0;
    sub_1DD335C90();
    sub_1DD336A40();
    v28 = qword_1EE02A1D0;
    v96 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_113_1();
    v97[2] = v26;
    sub_1DD335C70();

    sub_1DD334820();
    v116 = sub_1DD335EB0();
    v26 = v114;
    v29 = v115;
    v110 = *(v116 + 16);
    if (!v110)
    {
      break;
    }

    v30 = 0;
    v129 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;
    v108 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_ranker;
    v107 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage;
    OUTLINED_FUNCTION_16_7();
    v106 = v116 + v31;
    v111 = v32 + 16;
    v128 = (v32 + 8);
    v127 = v98 + 16;
    v120 = *MEMORY[0x1E69D2900];
    v119 = *MEMORY[0x1E69D27E8];
    v118 = (v102 + 104);
    v105 = (v102 + 8);
    v100 = v102 + 32;
    *&v33 = 136315138;
    v99 = v33;
    *&v33 = 136315394;
    v101 = v33;
    v104 = xmmword_1DD339E80;
    v109 = v15;
    v121 = v21;
    while (v30 < *(v116 + 16))
    {
      v34 = *(v113 + 72);
      v124 = v30;
      v35 = *(v113 + 16);
      v35(v29, v106 + v34 * v30, v26);
      v103 = v35;
      v35(v15, v29, v26);
      v36 = sub_1DD335CB0();
      v37 = sub_1DD336930();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_50();
        v39 = OUTLINED_FUNCTION_31_0();
        v133[0] = v39;
        *v38 = v99;
        sub_1DD336200();
        v126 = *v128;
        v126(v15, v26);
        v40 = OUTLINED_FUNCTION_51_6();
        v43 = sub_1DD27DBF0(v40, v41, v42);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_1DD27A000, v36, v37, "Persisting mentioned entity %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        OUTLINED_FUNCTION_25_3();
        OUTLINED_FUNCTION_17_5();
      }

      else
      {

        v126 = *v128;
        v126(v15, v26);
      }

      v44 = sub_1DD336190();
      v45 = OUTLINED_FUNCTION_110_1();
      v125 = v46;
      v46(v45);
      OUTLINED_FUNCTION_66_0();
      __swift_storeEnumTagSinglePayload(v47, v48, v49, v26);
      sub_1DD335F40();
      v50 = sub_1DD3360A0();
      v51 = sub_1DD336130();
      OUTLINED_FUNCTION_1();
      v53 = v122;
      v117 = *(v52 + 104);
      v117(v122, v120, v51);
      v54 = *v118;
      v55 = v123;
      v56 = (*v118)(v53, v119, v123);
      v57 = v97;
      MEMORY[0x1EEE9AC00](v56);
      v96 = v53;
      v58 = sub_1DD2815F0(sub_1DD30AB90, &v95, v50);

      (*v105)(v53, v55);
      if (!v58)
      {
        v59 = v122;
        v117(v122, v120, v51);
        v57 = v123;
        v54(v59, v119, v123);
        v60 = sub_1DD336090();
        v62 = v61;
        sub_1DD2816FC();
        v63 = *(*v62 + 16);
        sub_1DD286680(v63);
        v64 = *v62;
        *(v64 + 16) = v63 + 1;
        (*(v102 + 32))(v64 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v63, v59, v57);
        v60(v133, 0);
      }

      sub_1DD28191C(v132 + v108, v133);
      v65 = v134;
      v66 = v135;
      __swift_project_boxed_opaque_existential_1(v133, v134);
      OUTLINED_FUNCTION_62_3();
      v21 = v121;
      (*(v67 + 8))(v44, v121, v65, v66);
      __swift_destroy_boxed_opaque_existential_1(v133);
      sub_1DD336060();
      v68 = OUTLINED_FUNCTION_110_1();
      v125(v68);
      OUTLINED_FUNCTION_66_0();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v57);
      sub_1DD335FA0();
      v72 = v44;
      v73 = sub_1DD335CB0();
      v74 = sub_1DD336940();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = OUTLINED_FUNCTION_50_2();
        v133[0] = OUTLINED_FUNCTION_49_1();
        *v75 = v101;
        v76 = sub_1DD336010();
        v78 = sub_1DD27DBF0(v76, v77, v133);

        *(v75 + 4) = v78;
        *(v75 + 12) = 2080;
        v79 = sub_1DD3368F0();
        v81 = sub_1DD27DBF0(v79, v80, v133);

        *(v75 + 14) = v81;
        v21 = v121;
        _os_log_impl(&dword_1DD27A000, v73, v74, "Entity %s is assigned new saliency score %s", v75, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_25_3();
        OUTLINED_FUNCTION_17_5();
      }

      sub_1DD28191C(v132 + v107, v133);
      v82 = v135;
      __swift_project_boxed_opaque_existential_1(v133, v134);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6930, &qword_1DD339930);
      OUTLINED_FUNCTION_83();
      v83 = swift_allocObject();
      *(v83 + 16) = v104;
      *(v83 + 32) = v72;
      v84 = *(v82 + 24);
      v85 = v72;
      v86 = OUTLINED_FUNCTION_111_1();
      v84(v86);
      v15 = v109;
      v30 = v124 + 1;
      v29 = v115;
      v26 = v114;
      v126(v115, v114);

      __swift_destroy_boxed_opaque_existential_1(v133);
      if (v110 == v30)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

LABEL_13:

  v87 = sub_1DD335CB0();
  sub_1DD336940();
  OUTLINED_FUNCTION_90_3();
  if (os_log_type_enabled(v87, v88))
  {
    *OUTLINED_FUNCTION_69() = 0;
    OUTLINED_FUNCTION_3(&dword_1DD27A000, v89, v90, "Exiting handleMentionedEvent.");
    OUTLINED_FUNCTION_28_1();
  }

  OUTLINED_FUNCTION_21();
  v91(v21, v131);
  sub_1DD336A30();
  v92 = qword_1EE02A1D0;
  sub_1DD335C80();

  OUTLINED_FUNCTION_21();
  v93 = OUTLINED_FUNCTION_41();
  v94(v93);
  OUTLINED_FUNCTION_9_0();
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t ScopedReferenceResolutionDataProvider.__allocating_init(storage:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ScopedReferenceResolutionDataProvider.init(storage:)(a1);
  return v2;
}

uint64_t ScopedReferenceResolutionDataProvider.init(storage:)(uint64_t a1)
{

  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F0, &qword_1DD339470);
  swift_allocObject();
  *(v1 + 24) = sub_1DD3357F0();
  sub_1DD2807F0(0, 0xF000000000000000);
  return v1;
}

uint64_t sub_1DD2807F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F0, &qword_1DD339470);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_2(&qword_1EE0279F8);
  sub_1DD335860();
  return sub_1DD335840();
}

uint64_t sub_1DD28089C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD2A84C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD2808F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ScopedReferenceResolutionDataProvider();
  result = sub_1DD336260();
  *a2 = result;
  return result;
}

uint64_t sub_1DD28092C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScopedReferenceResolutionDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SiriEnvironment.scopedReferenceResolutionData.getter()
{
  type metadata accessor for ScopedReferenceResolutionDataProvider();
  OUTLINED_FUNCTION_0_1(&qword_1EE0279F0);

  return sub_1DD335760();
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t a1)
{
  *(v3 - 144) = v1;

  return MEMORY[0x1EEDBFC90](v2, a1);
}

void OUTLINED_FUNCTION_17_5()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return sub_1DD28C87C(v2 - 160, v0, v1);
}

__n128 OUTLINED_FUNCTION_12_2(uint64_t a1)
{
  *(v2 - 152) = a1;
  result = *(v2 - 272);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_1DD3356D0();
}

uint64_t OUTLINED_FUNCTION_12_8(uint64_t a1)
{

  return swift_once();
}

void sub_1DD280C2C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v7 = sub_1DD3363C0();
  OUTLINED_FUNCTION_1_0();
  v46 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v12 = v11 - v10;
  sub_1DD336400();
  OUTLINED_FUNCTION_1_0();
  v44 = v14;
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  v19 = OUTLINED_FUNCTION_69_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_7();
  v24 = sub_1DD27D638();
  if (v24)
  {
    v25 = v24;
    if (qword_1EE0278E8 != -1)
    {
      swift_once();
    }

    v26 = qword_1EE0278F0;
    sub_1DD27F164(a2, v4, &qword_1ECCD6348, &unk_1DD338E20);
    v27 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v28 = (v23 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = v25;
    sub_1DD281C60(v4, v29 + v27);
    v30 = (v29 + v28);
    *v30 = a3;
    v30[1] = a4;
    aBlock[4] = sub_1DD281200;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD2811BC;
    aBlock[3] = &block_descriptor_2;
    v31 = _Block_copy(aBlock);
    v32 = v26;

    sub_1DD335860();
    sub_1DD335860();
    sub_1DD3363E0();
    sub_1DD27F40C(&qword_1EE027F38, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6710, &qword_1DD339620);
    sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
    sub_1DD336B10();
    MEMORY[0x1E12AC840](0, v17, v12, v31);
    _Block_release(v31);

    (*(v46 + 8))(v12, v7);
    (*(v44 + 8))(v17, v45);

    OUTLINED_FUNCTION_24_1();
  }

  else
  {
    if (qword_1EE029290 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v33 = sub_1DD335CD0();
    OUTLINED_FUNCTION_14(v33, qword_1EE02A6A8);
    v34 = sub_1DD335CB0();
    sub_1DD336960();
    v35 = OUTLINED_FUNCTION_3_7();
    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_33_0();
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_68(v37);
      OUTLINED_FUNCTION_3(&dword_1DD27A000, v38, v39, "Failed to handle siri mentioned event because SiriReferenceResolutionService failed to initialize");
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    sub_1DD2CE24C();
    OUTLINED_FUNCTION_14_7();
    v40 = swift_allocError();
    OUTLINED_FUNCTION_40_5(v40, v41);
    a3();
    OUTLINED_FUNCTION_24_1();
  }
}

uint64_t sub_1DD2810B4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_69_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  v8 = sub_1DD336240();
  if (!OUTLINED_FUNCTION_44_3(v8))
  {
    (*(*(v0 - 8) + 8))(v1 + v5, v0);
  }

  return MEMORY[0x1EEE6BDD0](v1, ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_1DD2811BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1DD335860();
  v1(v2);
}

uint64_t sub_1DD281200()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_69_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1DD27F4A8(v7, v8, v0 + v6, v10, v11);
}

uint64_t OUTLINED_FUNCTION_91()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_5_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a12;
  v17 = a13;
  v18 = a14;

  return sub_1DD315148(v16, v17, v18, 1, v14, &a9);
}

uint64_t OUTLINED_FUNCTION_5_11()
{
}

uint64_t OUTLINED_FUNCTION_5_12()
{
}

void OUTLINED_FUNCTION_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_57_2(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_57_5()
{
}

uint64_t OUTLINED_FUNCTION_104(uint64_t result, uint64_t a2)
{
  *(v2 - 104) = result;
  *(v2 - 96) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_1DD335AE0();
}

uint64_t OUTLINED_FUNCTION_65_2()
{
}

uint64_t OUTLINED_FUNCTION_65_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, a1, a3, a4);
}

BOOL sub_1DD281620(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = (a4)(0, a2);
    OUTLINED_FUNCTION_69_0(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

void sub_1DD2816FC()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DD281748();
    *v0 = v3;
  }
}

void sub_1DD281748()
{
  OUTLINED_FUNCTION_16_1();
  if (v2)
  {
    OUTLINED_FUNCTION_15_3();
    if (v4 != v5)
    {
      if (v3 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_4();
    }
  }

  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_8_2();
  sub_1DD28735C(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_10_3();
  v11 = *(sub_1DD335CE0() - 8);
  if (v1)
  {
    OUTLINED_FUNCTION_26_3((*(v11 + 80) + 32) & ~*(v11 + 80), MEMORY[0x1E69D2800]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_4();
  }
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

BOOL OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2)
{

  return sub_1DD2E5EF8(a1, a2, v2);
}

void OUTLINED_FUNCTION_70_1()
{
  v2 = *(v0 - 272);
}

unint64_t OUTLINED_FUNCTION_70_3(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 168);

  return sub_1DD27DBF0(v5, v1, (v3 - 104));
}

uint64_t sub_1DD28191C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_27_1(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_27_2(unint64_t a1@<X8>)
{

  sub_1DD28541C(a1 > 1, v1, 1, v2);
}

void OUTLINED_FUNCTION_27_3(uint64_t a1@<X8>)
{
  *(a1 - 256) = v3;
  *(v4 - 456) = v2;
  *(v4 - 448) = v1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1)
{
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  return (*(v2 + 8))(a1, v3);
}

uint64_t sub_1DD281C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1DD336190();
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1, uint64_t a2)
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return sub_1DD336EC0();
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return ExpressionType.init<A>(_:)(&a9, v9, v10, v11, a1);
}

void OUTLINED_FUNCTION_4_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1)
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_4_15()
{
  sub_1DD281FE8(v1, v0);

  return sub_1DD335860();
}

uint64_t sub_1DD281FE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return sub_1DD335860();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_90(uint64_t a1, uint64_t a2)
{

  return ExpressionType.init(_:)(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_90_0(uint64_t a1)
{

  return sub_1DD335CB0();
}

void OUTLINED_FUNCTION_90_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void *OUTLINED_FUNCTION_90_2()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 128), v0);
}

uint64_t OUTLINED_FUNCTION_90_4(__int128 *a1, uint64_t a2)
{
  sub_1DD3148E8(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_16_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_16_5(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_59_0(uint64_t a1)
{
  *(v2 - 184) = v1;
  *(v2 - 208) = a1;
  *(v2 - 144) = a1;
  return *(v2 - 288);
}

id OUTLINED_FUNCTION_59_1(uint64_t a1, const char *a2)
{
  v5 = *(v3 - 448);

  return [v5 a2];
}

uint64_t OUTLINED_FUNCTION_59_3()
{

  return sub_1DD2A34A0();
}

uint64_t OUTLINED_FUNCTION_59_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void sub_1DD282290(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  v7 = OUTLINED_FUNCTION_69_0(v6);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6858, "Ta");
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  if (sub_1DD27D638())
  {
    OUTLINED_FUNCTION_33_4();
    v14 = sub_1DD3368E0();
    OUTLINED_FUNCTION_36_0(v13, v15, v16, v14);
    sub_1DD27F164(a1, v3, &qword_1ECCD6348, &unk_1DD338E20);
    v17 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v18 = swift_allocObject();
    v19 = OUTLINED_FUNCTION_42_4(v18);
    sub_1DD281C60(v3, v19 + v17);
    sub_1DD335860();
    sub_1DD2BDAC0(0, 0, v13, &unk_1DD339D60, a1);
  }

  else
  {
    if (qword_1EE029290 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v20 = sub_1DD335CD0();
    OUTLINED_FUNCTION_14(v20, qword_1EE02A6A8);
    v21 = sub_1DD335CB0();
    v22 = sub_1DD336960();
    if (OUTLINED_FUNCTION_17_0(v22))
    {
      OUTLINED_FUNCTION_33_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_46_5(&dword_1DD27A000, v23, v24, "Failed to collect salient entities because SiriReferenceResolutionService failed to initialize");
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    sub_1DD2CE24C();
    OUTLINED_FUNCTION_14_7();
    v25 = swift_allocError();
    OUTLINED_FUNCTION_43_4(v25, v26);
    a2();
  }
}

uint64_t sub_1DD2824F8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_69_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  v8 = sub_1DD336240();
  if (!OUTLINED_FUNCTION_44_3(v8))
  {
    (*(*(v0 - 8) + 8))(v1 + v5, v0);
  }

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_1DD2825F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t result, uint64_t a2)
{
  *(v2 - 216) = result;
  *(v2 - 312) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_39_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a2;
  *(v3 - 232) = a1;

  return sub_1DD334890();
}

id OUTLINED_FUNCTION_39_6(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *v14 = a9;

  return [v13 (v12 + 1656)];
}

void OUTLINED_FUNCTION_39_7()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t sub_1DD2827C8()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = sub_1DD2BEDE4;
  v3 = OUTLINED_FUNCTION_4_4();

  return v4(v3);
}

uint64_t sub_1DD28286C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD2BEB7C;

  return v6(a1);
}

uint64_t sub_1DD282964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v1);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = sub_1DD2BEDE4;
  v6 = OUTLINED_FUNCTION_29_3();

  return sub_1DD282B28(v6, v7, v8, v9, v10, v2, v11);
}

uint64_t sub_1DD282A5C()
{
  OUTLINED_FUNCTION_4();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1DD2CDDB0;

  return sub_1DD282B4C();
}

uint64_t sub_1DD282B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DD282A5C, 0, 0);
}

uint64_t sub_1DD282B4C()
{
  OUTLINED_FUNCTION_4();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DD2CB2A4;

  return v4(v0 + 16);
}

uint64_t sub_1DD282C38()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2(v5);
  *v6 = v7;
  v6[1] = sub_1DD2BE86C;

  return sub_1DD282D84(v2, v4, v3);
}

uint64_t OUTLINED_FUNCTION_47_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_47_4(uint64_t a1)
{

  return sub_1DD296084(a1, v1, v2);
}

uint64_t sub_1DD282D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v7 = (*(*a2 + 280) + **(*a2 + 280));
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1DD2CDF3C;

  return v7(a3);
}

uint64_t OUTLINED_FUNCTION_68_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_68_3()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2080;

  return sub_1DD2E3C3C(v1);
}

unint64_t OUTLINED_FUNCTION_72_3(float a1)
{
  *v3 = a1;

  return sub_1DD27DBF0(v2, v1, (v4 - 64));
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1)
{

  return sub_1DD336590();
}

void *OUTLINED_FUNCTION_54_6()
{

  return memcpy(v1, v0, 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_54_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, a1, a3, a4);
}

uint64_t sub_1DD2830E8()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1DD335CA0();
  v1[4] = v3;
  OUTLINED_FUNCTION_69_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_71();
  v5 = OUTLINED_FUNCTION_56_5();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DD28318C()
{
  OUTLINED_FUNCTION_64_4();
  v1 = sub_1DD335CB0();
  v2 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v2))
  {
    *OUTLINED_FUNCTION_69() = 0;
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_28_1();
  }

  if (qword_1EE027628 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE02A1E0;
  sub_1DD335C90();
  sub_1DD336A40();
  v9 = qword_1EE02A1E0;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_75_5();
  sub_1DD335C70();

  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_1DD306728;

  return sub_1DD304B44();
}

uint64_t OUTLINED_FUNCTION_62_6(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5, unsigned int a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return sub_1DD325284(va1, va, 1, a6, v7, v6);
}

uint64_t sub_1DD2833B4()
{
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD2834C0, 0, 0);
}

uint64_t sub_1DD2834C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  sub_1DD28355C(v0[4], v1);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

void sub_1DD28355C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD335CB0();
  v3 = sub_1DD336940();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD27A000, v2, v3, "Exiting RRNowPlayingMediaPuller...", v4, 2u);
    MEMORY[0x1E12ADA30](v4, -1, -1);
  }

  sub_1DD336A30();
  if (qword_1EE0277E0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE02A200;
  sub_1DD335C80();
}

uint64_t sub_1DD2836AC()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

const char *sub_1DD2837A0(uint64_t a1, uint64_t a2)
{
  if (qword_1EE028738 != -1)
  {
    swift_once();
  }

  if (sub_1DD283A3C(a1, qword_1EE028740))
  {
    return a1;
  }

  v4 = Connection.handle.getter();
  result = sqlite3_errmsg(v4);
  if (result)
  {
    v6 = sub_1DD336700();
    v8 = v7;
    sub_1DD323E94();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    swift_willThrow();
    sub_1DD335860();
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t Statement.run(_:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (*(a1 + 16))
  {
    Statement.bind(_:)(a1);
    v5 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);

    if (!v2)
    {
      return v5;
    }
  }

  else
  {
    sub_1DD28BA1C(0);
    sub_1DD2846CC();
    v6 = *(v1 + 24);
    OUTLINED_FUNCTION_106();
    swift_beginAccess();
    do
    {
      while (1)
      {
        v7 = qword_1EE028938;
        sub_1DD335860();
        if (v7 != -1)
        {
          swift_once();
        }

        sub_1DD3369A0();
        v8 = sub_1DD2885B8();
        if ((v14 & 1) != 0 || v13 != v8)
        {
          break;
        }

        v9 = sqlite3_step(*(v4 + 16));
        v10 = sub_1DD2837A0(v9, 0);

        if (v3)
        {
          return v4;
        }

        if (v10 != 100)
        {
          goto LABEL_16;
        }
      }

      v11 = *(v6 + 88);
      sub_1DD3369E0();

      if (v3)
      {
        return v4;
      }
    }

    while ((v15 & 1) != 0);
LABEL_16:
    sub_1DD335860();
  }

  return v4;
}

{
  Statement.bind(_:)(a1);
  v1 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_5_12();
  return v1;
}

{
  Statement.bind(_:)(a1);
  v1 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_5_12();
  return v1;
}

uint64_t sub_1DD283A3C(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = MEMORY[0x1E12ACCF0](*(a2 + 40), a1, 4);
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 4 * v7) != a1);
  }

  return v2;
}

uint64_t Statement.deinit()
{
  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  sqlite3_finalize(*(v0 + 16));

  return v0;
}

uint64_t Statement.__deallocating_deinit()
{
  Statement.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t OUTLINED_FUNCTION_126_0()
{
}

void OUTLINED_FUNCTION_84_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(a1, 8236, 0xE200000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t OUTLINED_FUNCTION_84_7()
{
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1)
{

  return sub_1DD336570();
}

void OUTLINED_FUNCTION_24_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(a1, 32, 0xE100000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t OUTLINED_FUNCTION_24_7()
{
}

id sub_1DD283CAC(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_1DD283CB8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t OUTLINED_FUNCTION_41_2()
{

  return MEMORY[0x1EEE3DAE0](v0);
}

uint64_t OUTLINED_FUNCTION_41_3(uint64_t result, _BYTE *a2)
{
  *a2 = 0;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_6(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_41_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);

  return sub_1DD28C87C(va, v31, v32);
}

uint64_t get_enum_tag_for_layout_string_Say8RRSQLite11Expressible_pG2by_AA10ExpressionVySbSgGSg6havingtSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1DD283E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_54_0();
  a19 = v22;
  a20 = v23;
  v124 = v21;
  v120 = v20;
  v25 = v24;
  type metadata accessor for Result();
  v105 = v26;
  OUTLINED_FUNCTION_1_0();
  v103 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  v104 = v30 - v29;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Connection.TransactionMode();
  v111 = v31;
  OUTLINED_FUNCTION_1_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12();
  v119 = (v36 - v35);
  OUTLINED_FUNCTION_31_1();
  v115 = sub_1DD335CA0();
  OUTLINED_FUNCTION_1_0();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_103();
  type metadata accessor for Table();
  v114 = v40;
  OUTLINED_FUNCTION_1_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_12();
  v46 = v45 - v44;
  v121 = sub_1DD2881D0(v25);
  v47 = 0;
  v110 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db;
  v117 = v25;
  v118 = v25 & 0xC000000000000001;
  v116 = v25 & 0xFFFFFFFFFFFFFF8;
  v108 = "etion8";
  v107 = 0;
  v106 = (v33 + 104);
  v109 = v33 + 8;
  v112 = v38 + 8;
  v113 = (v42 + 8);
  while (1)
  {
    if (v121 == v47)
    {
      goto LABEL_24;
    }

    if (v118)
    {
      v49 = MEMORY[0x1E12ACA60](v47, v117);
      v48 = v119;
    }

    else
    {
      v48 = v119;
      if (v47 >= *(v116 + 16))
      {
        goto LABEL_26;
      }

      v49 = *(v117 + 8 * v47 + 32);
    }

    if (__OFADD__(v47, 1))
    {
      break;
    }

    v122 = v47;
    v123 = v49;
    OUTLINED_FUNCTION_9_1();
    Table.init(_:database:)();
    if (qword_1EE027758 != -1)
    {
      swift_once();
    }

    v50 = qword_1EE02A1F8;
    sub_1DD335C90();
    sub_1DD336A40();
    v51 = qword_1EE02A1F8;
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_63_0();
    sub_1DD335C70();

    MEMORY[0x1EEE9AC00](v52);
    v99 = v46;
    v100 = v53;
    v54 = v123;
    v101 = v123;
    (*v106)(v48, v107, v111);
    sub_1DD335860();
    v55 = v124;
    Connection.transaction(_:block:)(v48, sub_1DD28BBF8, (&v102 - 6));
    v124 = v55;
    if (v55)
    {
      v122 = v46;
      v61 = OUTLINED_FUNCTION_108();
      v62(v61);

      v63 = v124;
      a10 = v124;
      v64 = v124;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
      v65 = v104;
      v66 = v105;
      v67 = v54;
      if (swift_dynamicCast())
      {
        v68 = v103;
        if (!(*(v103 + 88))(v65, v66))
        {

          (*(v68 + 96))(v65, v66);
          v69 = *(v65 + 8);
          v124 = *v65;

          v70 = v54;
          v71 = sub_1DD335CB0();
          v72 = sub_1DD336950();

          if (os_log_type_enabled(v71, v72))
          {
            OUTLINED_FUNCTION_40();
            v73 = swift_slowAlloc();
            v74 = OUTLINED_FUNCTION_95();
            OUTLINED_FUNCTION_26();
            v75 = swift_slowAlloc();
            v125 = v75;
            *v73 = 136315395;
            v76 = sub_1DD27DBF0(v124, v69, &v125);

            *(v73 + 4) = v76;
            *(v73 + 12) = 2113;
            *(v73 + 14) = v70;
            *v74 = v70;
            v77 = v70;
            _os_log_impl(&dword_1DD27A000, v71, v72, "Failed to update else insert entity. error: %s entity: %{private}@", v73, 0x16u);
            sub_1DD28A0C0(v74, &qword_1ECCD6598, &unk_1DD339248);
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            __swift_destroy_boxed_opaque_existential_1(v75);
            v67 = v123;
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
          }

          else
          {
          }

          v90 = v122;
          v93 = &unk_1EE02A000;
          v94 = sub_1DD2A2BB8();
          OUTLINED_FUNCTION_68_0(&type metadata for RREntityStorageError, v94);
          OUTLINED_FUNCTION_96(v95, 2);

LABEL_23:
          sub_1DD336A30();
          v96 = v93[63];
          sub_1DD335C80();

          v97 = OUTLINED_FUNCTION_107();
          v98(v97);
          (*v113)(v90, v114);
LABEL_24:
          OUTLINED_FUNCTION_53();
          return;
        }

        (*(v68 + 8))(v65, v66);
      }

      v78 = v63;
      v79 = v54;
      v80 = sub_1DD335CB0();
      v81 = sub_1DD336950();

      if (os_log_type_enabled(v80, v81))
      {
        OUTLINED_FUNCTION_40();
        v82 = swift_slowAlloc();
        v83 = OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_26();
        v84 = swift_slowAlloc();
        a10 = v84;
        *v82 = 136315395;
        swift_getErrorValue();
        v85 = sub_1DD336E40();
        v87 = sub_1DD27DBF0(v85, v86, &a10);

        *(v82 + 4) = v87;
        v67 = v123;
        *(v82 + 12) = 2113;
        *(v82 + 14) = v79;
        *v83 = v79;
        v88 = v79;
        _os_log_impl(&dword_1DD27A000, v80, v81, "Failed to update else insert entity. error: %s entity: %{private}@", v82, 0x16u);
        sub_1DD28A0C0(v83, &qword_1ECCD6598, &unk_1DD339248);
        v89 = OUTLINED_FUNCTION_18();
        MEMORY[0x1E12ADA30](v89);
        __swift_destroy_boxed_opaque_existential_1(v84);
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        v63 = v124;
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
      }

      v90 = v122;
      v91 = sub_1DD2A2BB8();
      OUTLINED_FUNCTION_68_0(&type metadata for RREntityStorageError, v91);
      OUTLINED_FUNCTION_96(v92, 2);

      v93 = &unk_1EE02A000;
      goto LABEL_23;
    }

    v56 = OUTLINED_FUNCTION_108();
    v57(v56);

    sub_1DD336A30();
    v58 = qword_1EE02A1F8;
    OUTLINED_FUNCTION_63_0();
    sub_1DD335C80();

    v59 = OUTLINED_FUNCTION_107();
    v60(v59);
    (*v113)(v46, v114);
    v47 = v122 + 1;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_1DD2846CC()
{
  result = qword_1EE028598;
  if (!qword_1EE028598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE028598);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8RRSQLite10ExpressionVySbSgGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return sub_1DD3365A0();
}

void OUTLINED_FUNCTION_15_6()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v0 + 56;
  *(v2 - 104) = v1 + 16;
  *(v2 - 128) = v1 + 8;
}

void OUTLINED_FUNCTION_15_9()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t OUTLINED_FUNCTION_21_1(uint64_t a1, uint64_t a2)
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1)
{

  return MEMORY[0x1EEDBFC90](v1, a1);
}

uint64_t OUTLINED_FUNCTION_61_2()
{

  return MEMORY[0x1EEE692D0](v0, v1);
}

void OUTLINED_FUNCTION_61_6(uint64_t a1@<X8>)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = a1;
  *(v3 - 96) = v2;
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return sub_1DD336220();
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{
  *(v21 + 48) = a21;
}

uint64_t sub_1DD284AB0(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_72_4();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

void sub_1DD284AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_2_13();
  a25 = v26;
  a26 = v28;
  v57 = v29;
  v30 = *(v27 + 16);
  if (v30)
  {
    v31 = (v27 + 32);
    v32 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v34 = v31[3];
      v35 = v31[4];
      __swift_project_boxed_opaque_existential_1(v31, v34);
      (*(v35 + 8))(&a12, v34, v35);
      v36 = a12;
      v37 = a13;
      v38 = a14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD28541C(0, *(v32 + 16) + 1, 1, v32);
        v32 = v52;
      }

      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1DD28541C(v39 > 1, v40 + 1, 1, v32);
        v32 = v53;
      }

      *(v32 + 16) = v40 + 1;
      v41 = v32 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v37;
      v42 = *(v38 + 16);
      v43 = v33[2];
      v44 = v43 + v42;
      if (__OFADD__(v43, v42))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v46 = v33[3] >> 1, v46 < v44))
      {
        if (v43 <= v44)
        {
          v47 = v43 + v42;
        }

        else
        {
          v47 = v43;
        }

        sub_1DD28583C(isUniquelyReferenced_nonNull_native, v47, 1, v33);
        v33 = v48;
        v46 = v48[3] >> 1;
      }

      if (*(v38 + 16))
      {
        if (v46 - v33[2] < v42)
        {
          goto LABEL_26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
        swift_arrayInitWithCopy();

        if (v42)
        {
          v49 = v33[2];
          v50 = __OFADD__(v49, v42);
          v51 = v49 + v42;
          if (v50)
          {
            goto LABEL_27;
          }

          v33[2] = v51;
        }
      }

      else
      {

        if (v42)
        {
          goto LABEL_25;
        }
      }

      v31 += 5;
      if (!--v30)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
LABEL_23:
    a12 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67E8, &qword_1DD339848);
    sub_1DD288794(&qword_1EE0285F0, &qword_1ECCD67E8, &qword_1DD339848, MEMORY[0x1E69E6310]);
    v54 = sub_1DD336570();
    v56 = v55;

    v57[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    v57[4] = &protocol witness table for Expression<A>;
    *v57 = v54;
    v57[1] = v56;
    v57[2] = v33;
    OUTLINED_FUNCTION_1_19();
  }
}

void OUTLINED_FUNCTION_31_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_31_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);

  return sub_1DD28C87C(va, v29, v30);
}

uint64_t OUTLINED_FUNCTION_7_0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  result = *(v2 - 256);
  *(v3 - 264) = a1;
  *(v3 - 272) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

__n128 OUTLINED_FUNCTION_7_10@<Q0>(unint64_t a1@<X8>, uint64_t a2, __n128 a3)
{
  v4->n128_u64[0] = v6;
  v4->n128_u64[1] = v7;
  v4[1].n128_u64[0] = v8;
  v4[1].n128_u64[1] = v5;
  v4[4].n128_u64[0] = v5;
  v4[4].n128_u64[1] = v3;
  v4[2].n128_u64[0] = v3;
  v4[2].n128_u64[1] = a1;
  result = a3;
  v4[3] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_12()
{
}

uint64_t sub_1DD28512C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v30 = 0xE100000000000000;
  MEMORY[0x1E12AC540](a4, a5);
  MEMORY[0x1E12AC540](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_69_6(inited, xmmword_1DD3391F0);
  sub_1DD2855A0(a1, v11);
  sub_1DD2855A0(a2, &inited[4].n128_i64[1]);
  sub_1DD284AFC(inited, 32, 0xE100000000000000, v12, v13, v14, v15, v16, v25, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], 32);

  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  v17 = v32;
  v18 = v33;
  __swift_project_boxed_opaque_existential_1(&v29, v32);
  (v18[1])(&v25, v17, v18);
  v20 = v25;
  v19 = v26;
  v21 = v27;
  result = __swift_destroy_boxed_opaque_existential_1(&v29);
  if (a3)
  {
    v23 = OUTLINED_FUNCTION_113();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    v33 = &protocol witness table for Expression<A>;
    v29 = v20;
    v30 = v19;
    v31 = v21;
    sub_1DD285320(&v29, 0, 0xE000000000000000, a6);
    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }

  else
  {
    *a6 = v20;
    a6[1] = v19;
    a6[2] = v21;
  }

  return result;
}

uint64_t sub_1DD2852BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.expression.getter(a1, WitnessTable, a2);
}

uint64_t sub_1DD285320@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  MEMORY[0x1E12AC540](40, 0xE100000000000000);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_34_7();
  v7(v8);

  MEMORY[0x1E12AC540]();

  MEMORY[0x1E12AC540](41, 0xE100000000000000);
  v9 = OUTLINED_FUNCTION_34_7();
  v7(v9);

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v11;
  return result;
}

void sub_1DD28541C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_2();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6848, &unk_1DD339948);
    v11 = OUTLINED_FUNCTION_39_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_28_3();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1DD2854FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD339380;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = &protocol witness table for String;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v6;
}

uint64_t sub_1DD2855A0(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_22();
  (*v3)(a2);
  return a2;
}

uint64_t ExpressionType.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (*(a2 + 24))();
  v8 = v7;
  result = (*(a2 + 32))(a1, a2);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return type metadata accessor for RRHeuristicSaliencyEstimator(0);
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1DD336D20();
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

void sub_1DD28583C(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_2();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[5 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_57_3();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
    OUTLINED_FUNCTION_57_3();
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1DD285958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v136 = a1;
  v119 = sub_1DD335D60();
  v118 = *(v119 - 8);
  v5 = MEMORY[0x1EEE9AC00](v119);
  v117 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v116 = &v116 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6580, &qword_1DD339238);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v134 = (&v116 - v9);
  type metadata accessor for Row();
  v123 = v10;
  v121 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v120 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v116 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
  v14 = *(v127 - 8);
  v15 = MEMORY[0x1EEE9AC00](v127);
  v128 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v132 = &v116 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v137 = (&v116 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v131 = &v116 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v116 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v116 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v116 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v130 = &v116 - v32;
  type metadata accessor for Table();
  v146 = v33;
  v140 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v124 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v133 = (&v116 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v139 = &v116 - v38;
  v39 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v141 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v142 = sub_1DD336010();
  v143 = v40;
  == infix<A>(_:_:)(a2 + v39, &v142, MEMORY[0x1E69E6158], &protocol witness table for String, MEMORY[0x1E69E6180], v41, v42, v43, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);

  v44 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn;
  v126 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn;
  v138 = a3;
  v142 = sub_1DD335F20();
  v143 = v45;
  v46 = a2 + v44;
  v47 = v127;
  v48 = MEMORY[0x1E69E6180];
  == infix<A>(_:_:)(v46, &v142, MEMORY[0x1E69E6158], &protocol witness table for String, MEMORY[0x1E69E6180], v49, v50, v51, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);

  && infix(_:_:)(v28, v25, v52, v53, v54, v55, v56, v57, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v31, v130, v131, v132, v133, v134, v135);
  v58 = *(v14 + 8);
  v58(v25, v47);
  v125 = (v14 + 8);
  v58(v28, v47);
  v142 = sub_1DD336010();
  v143 = v59;
  v60 = MEMORY[0x1E69E6158];
  == infix<A>(_:_:)(a2 + v141, &v142, MEMORY[0x1E69E6158], &protocol witness table for String, v48, v61, v62, v63, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);

  v142 = 0xD000000000000010;
  v143 = 0x80000001DD33D1A0;
  v141 = a2;
  v64 = v128;
  == infix<A>(_:_:)(a2 + v126, &v142, v60, &protocol witness table for String, MEMORY[0x1E69E6180], v65, v66, v67, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
  if (sub_1DD335F20() == 0xD000000000000010 && 0x80000001DD33D1A0 == v68)
  {
    v70 = 1;
  }

  else
  {
    v70 = sub_1DD336E00();
  }

  v71 = v132;
  || infix(_:_:)(v64, v70 & 1, v72, v73, v74);
  v58(v64, v47);
  v75 = v131;
  v76 = v137;
  && infix(_:_:)(v137, v71, v77, v78, v79, v80, v81, v82, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
  v58(v71, v47);
  v58(v76, v47);
  v83 = v129;
  v84 = v130;
  || infix(_:_:)(v129, v75);
  v58(v75, v47);
  v58(v83, v47);
  v85 = v139;
  v86 = v146;
  QueryType.filter(_:)();
  v58(v84, v47);
  v87 = v140;
  v88 = v133;
  v137 = *(v140 + 16);
  (v137)(v133, v85, v86);
  v89 = sub_1DD335CB0();
  v90 = sub_1DD336940();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v142 = v92;
    *v91 = 136315138;
    (v137)(v124, v88, v86);
    v93 = sub_1DD336630();
    v95 = v94;
    v133 = *(v140 + 8);
    (v133)(v88, v146);
    v96 = sub_1DD27DBF0(v93, v95, &v142);
    v86 = v146;

    *(v91 + 4) = v96;
    _os_log_impl(&dword_1DD27A000, v89, v90, "existingRowFilter: %s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x1E12ADA30](v92, -1, -1);
    MEMORY[0x1E12ADA30](v91, -1, -1);
  }

  else
  {

    v133 = *(v87 + 8);
    (v133)(v88, v86);
  }

  v97 = v138;
  v144 = v86;
  v145 = &protocol witness table for Table;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v142);
  v99 = v139;
  (v137)(boxed_opaque_existential_1, v139, v86);
  sub_1DD335860();
  v101 = v134;
  v100 = v135;
  Connection.pluck(_:)(&v142, v134);
  if (v100)
  {
    (v133)(v99, v86);

    return __swift_destroy_boxed_opaque_existential_1(&v142);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v142);
    v103 = v123;
    if (__swift_getEnumTagSinglePayload(v101, 1, v123) == 1)
    {
      sub_1DD28A0C0(v101, &qword_1ECCD6580, &qword_1DD339238);
      sub_1DD28A114();
    }

    else
    {
      v104 = v121;
      v105 = v122;
      (*(v121 + 32))(v122, v101, v103);
      sub_1DD3360C0();
      (*(v104 + 16))(v120, v105, v103);
      v106 = sub_1DD290A3C();
      sub_1DD29424C(v106, v97);
      v108 = v107;
      v109 = v116;
      sub_1DD336020();
      v110 = v117;
      v137 = v106;
      sub_1DD336020();
      v111 = sub_1DD335D40();
      v112 = *(v118 + 8);
      v113 = v110;
      v114 = v119;
      v112(v113, v119);
      v112(v109, v114);
      if (v111)
      {
        v99 = v139;
        sub_1DD28F2C8();
      }

      else
      {
        sub_1DD28A114();
        v99 = v139;
      }

      v115 = v122;

      (*(v104 + 8))(v115, v103);
    }

    return (v133)(v99, v146);
  }
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void OUTLINED_FUNCTION_20_3()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD28541C(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_20_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(v26, 32, 0xE100000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t OUTLINED_FUNCTION_20_10(uint64_t a1)
{

  return Connection.run(_:_:)();
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1)
{

  return sub_1DD335CB0();
}

uint64_t OUTLINED_FUNCTION_69_2()
{
}

void *OUTLINED_FUNCTION_69_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *result = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DD3361E0();
}

void sub_1DD286680(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_1DD281748();
    *v1 = v2;
  }
}

double sub_1DD2866C0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 88);
  v6 = v5();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 40;
    v9 = 0.0;
    do
    {
      v10 = *(v8 - 8);
      v15 = a1;
      sub_1DD335860();
      v10(&v14, &v15, a2);

      v9 = v9 + v14;
      v8 += 16;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v12 = *((v5)(v11) + 16);

  return v9 / v12;
}

uint64_t type metadata accessor for RRHeuristicSaliencyEstimator(uint64_t a1)
{
  result = qword_1EE028A10;
  if (!qword_1EE028A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static RRHeuristicSaliencyEstimator.mentionDecay(candidate:evaluateAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_8_4();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v27 = OUTLINED_FUNCTION_36(v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &a9 - v31;
  v33 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12();
  v39 = v38 - v37;
  sub_1DD335F30();
  OUTLINED_FUNCTION_4_6(v32);
  if (!v43)
  {
    (*(v35 + 32))(v39, v32, v33);
    sub_1DD335ED0();
    v40 = sub_1DD335700();
    v42 = v41;

    v43 = v40 == 0xD000000000000013 && 0x80000001DD33D740 == v42;
    if (v43)
    {
    }

    else
    {
      v44 = sub_1DD336E00();

      if ((v44 & 1) == 0)
      {
        sub_1DD335ED0();
        v45 = sub_1DD335700();
        v47 = v46;

        if (v45 == 0xD000000000000016 && 0x80000001DD33D760 == v47)
        {
        }

        else
        {
          v49 = sub_1DD336E00();

          if ((v49 & 1) == 0)
          {
            v50 = 0.1706;
LABEL_17:
            static RRHeuristicSaliencyEstimator.genericDecayFunction(maximumValue:decayingParameter:eventOccurredAt:evaluateAt:)(1.0, v50, v39, v25);
            (*(v35 + 8))(v39, v33);
            goto LABEL_18;
          }
        }

        sub_1DD335F30();
        OUTLINED_FUNCTION_4_6(v30);
        v51 = v43;
        sub_1DD287B48(v30);
        v50 = *&qword_1DD339CA0[v51];
        goto LABEL_17;
      }
    }

    v50 = 0.0767528364;
    goto LABEL_17;
  }

  sub_1DD287B48(v32);
LABEL_18:
  OUTLINED_FUNCTION_9_0();
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return sub_1DD334BB0();
}

uint64_t OUTLINED_FUNCTION_127(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_2()
{
}

uint64_t OUTLINED_FUNCTION_49_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD336AD0();
}

uint64_t sub_1DD286CD0()
{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  *(v8 + 280) = v7;
  *(v8 + 288) = v0;

  (*(v2[32] + 8))(v2[33], v2[31]);
  OUTLINED_FUNCTION_71_6();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD286E2C()
{
  v54 = v0;
  result = sub_1DD287354(v0[35]);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1DD28191C(v0[29], (v0 + 7));

  v2 = sub_1DD335CB0();
  v3 = sub_1DD336940();
  v4 = OUTLINED_FUNCTION_17_0(v3);
  v5 = v0[35];
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_50_2();
    v7 = OUTLINED_FUNCTION_31_0();
    v53[0] = v7;
    *v6 = 134218242;
    *(v6 + 4) = sub_1DD287354(v5);

    *(v6 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    DynamicType = swift_getDynamicType();
    v9 = v0[11];
    v0[25] = DynamicType;
    v0[26] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F18, &unk_1DD33AC90);
    v10 = sub_1DD336630();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v13 = sub_1DD27DBF0(v10, v12, v53);

    *(v6 + 14) = v13;
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_17_5();
    OUTLINED_FUNCTION_28_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  result = sub_1DD287354(v0[35]);
  v52 = result;
  if (result)
  {
    if (result >= 1)
    {
      v19 = 0;
      v50 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage;
      v51 = v0[30];
      v20 = v0[35];
      v21 = v0[36];
      v49 = v20 & 0xC000000000000001;
      v47 = v20 + 32;
      do
      {
        if (v49)
        {
          v22 = MEMORY[0x1E12ACA60](v19, v0[35]);
        }

        else
        {
          v22 = *(v47 + 8 * v19);
        }

        v23 = v22;
        v24 = sub_1DD335CB0();
        v25 = sub_1DD336940();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = OUTLINED_FUNCTION_50();
          v27 = swift_slowAlloc();
          *v26 = 138477827;
          *(v26 + 4) = v23;
          *v27 = v23;
          v28 = v23;
          _os_log_impl(&dword_1DD27A000, v24, v25, "Upserting entity: %{private}@", v26, 0xCu);
          sub_1DD296084(v27, &qword_1ECCD6598, &unk_1DD339248);
          OUTLINED_FUNCTION_25_3();
          OUTLINED_FUNCTION_19_4();
        }

        sub_1DD28191C(v51 + v50, (v0 + 12));
        v29 = v0[15];
        v30 = v0[16];
        __swift_project_boxed_opaque_existential_1(v0 + 12, v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6930, &qword_1DD339930);
        OUTLINED_FUNCTION_83();
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1DD339E80;
        *(v31 + 32) = v23;
        v32 = *(v30 + 24);
        v33 = v23;
        v32(v31, v29, v30);
        if (v21)
        {

          __swift_destroy_boxed_opaque_existential_1(v0 + 12);
          v34 = v33;
          v35 = v0;
          v36 = v34;
          v37 = v21;
          v38 = sub_1DD335CB0();
          v39 = sub_1DD336950();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = OUTLINED_FUNCTION_50_2();
            v41 = swift_slowAlloc();
            v48 = OUTLINED_FUNCTION_31_0();
            v53[0] = v48;
            *v40 = 138478083;
            *(v40 + 4) = v36;
            *v41 = v36;
            *(v40 + 12) = 2080;
            swift_getErrorValue();
            v42 = v36;
            v43 = sub_1DD336E40();
            v45 = sub_1DD27DBF0(v43, v44, v53);

            *(v40 + 14) = v45;
            _os_log_impl(&dword_1DD27A000, v38, v39, "Failed to upsert pulled entity: %{private}@ error: %s", v40, 0x16u);
            sub_1DD296084(v41, &qword_1ECCD6598, &unk_1DD339248);
            OUTLINED_FUNCTION_39_7();
            __swift_destroy_boxed_opaque_existential_1(v48);
            OUTLINED_FUNCTION_52_0();
            OUTLINED_FUNCTION_25_3();
          }

          else
          {
          }

          v0 = v35;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v0 + 12);
        }

        v21 = 0;
        ++v19;
      }

      while (v52 != v19);
      goto LABEL_21;
    }

LABEL_26:
    __break(1u);
    return result;
  }

LABEL_21:

  OUTLINED_FUNCTION_3_5();

  return v46();
}

void *sub_1DD28735C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_10_3();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double _s8RRSQLite12VirtualTableV_8databaseACSS_SSSgtcfC_0()
{
  OUTLINED_FUNCTION_14_11();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  *(OUTLINED_FUNCTION_51_7(v0) + 16) = xmmword_1DD339380;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  OUTLINED_FUNCTION_58_6(&protocol witness table for Expression<A>);
  return OUTLINED_FUNCTION_6_11(v1, MEMORY[0x1E69E7CC0]);
}

uint64_t OUTLINED_FUNCTION_50_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_50_4()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD28541C(0, v2, 1, v0);
}

uint64_t Connection.run(_:_:)()
{
  OUTLINED_FUNCTION_3_17();
  return sub_1DD2877C0(v0, v1, v2, v3);
}

{
  return Connection.run(_:_:)();
}

{
  OUTLINED_FUNCTION_2_9();
  return sub_1DD2877C0(v0, v1, v2, v3);
}

uint64_t sub_1DD2875F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = Connection.run(_:_:)();
  if (!v4)
  {

    a4(v7);
    Connection.run(_:_:)();
  }

  return result;
}

uint64_t Connection.prepare(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    result = Connection.prepare(_:_:)(a1, a2, MEMORY[0x1E69E7CC0]);
    if (!v3)
    {
      v8 = Statement.bind(_:)(a3);

      return v8;
    }
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    v9 = sub_1DD335860();
    return sub_1DD28787C(v9, a1, a2);
  }

  return result;
}

uint64_t sub_1DD2877C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  Connection.prepare(_:_:)(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v5)
  {
    a4(a3);
    v4 = Statement.run(_:)(MEMORY[0x1E69E7CC0]);
  }

  return v4;
}

uint64_t sub_1DD28787C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 40) = 1;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = 0;
  v5 = Connection.handle.getter();
  v6 = sub_1DD336650();
  sub_1DD335860();

  swift_beginAccess();
  v7 = sqlite3_prepare_v2(v5, (v6 + 32), -1, (v3 + 16), 0);
  swift_endAccess();

  sub_1DD2837A0(v7, 0);
  OUTLINED_FUNCTION_5_12();
  if (v4)
  {
  }

  return v3;
}

uint64_t Connection.handle.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

double sub_1DD2879B4(double a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v17 = v16 - v15;
  a4();
  OUTLINED_FUNCTION_4_6(v10);
  if (v18)
  {
    sub_1DD287B48(v10);
    return 0.0;
  }

  else
  {
    (*(v13 + 32))(v17, v10, v11);
    static RRHeuristicSaliencyEstimator.genericDecayFunction(maximumValue:decayingParameter:eventOccurredAt:evaluateAt:)(1.0, a1, v17, a3);
    v20 = v19;
    (*(v13 + 8))(v17, v11);
  }

  return v20;
}

uint64_t sub_1DD287B48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static RRHeuristicSaliencyEstimator.onScreenDecay(candidate:evaluateAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_8_4();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v26);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12();
  v36 = v35 - v34;
  sub_1DD335EE0();
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) != 1)
  {
    (*(v32 + 32))(v36, v29, v30);
    sub_1DD335ED0();
    v37 = sub_1DD335700();
    v39 = v38;

    if (v37 == 0x415F6E6F6D6D6F63 && v39 == 0xEA00000000007070)
    {
    }

    else
    {
      v41 = sub_1DD336E00();

      if ((v41 & 1) == 0)
      {
        v42 = 0.2558;
LABEL_11:
        static RRHeuristicSaliencyEstimator.genericDecayFunction(maximumValue:decayingParameter:eventOccurredAt:evaluateAt:)(1.0, v42, v36, v25);
        sub_1DD335FD0();
        (*(v32 + 8))(v36, v30);
        goto LABEL_12;
      }
    }

    v42 = 0.92;
    goto LABEL_11;
  }

  sub_1DD287B48(v29);
LABEL_12:
  OUTLINED_FUNCTION_9_0();
}

void sub_1DD287DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_8_4();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v28);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_12();
  v38 = v37 - v36;
  v25();
  OUTLINED_FUNCTION_4_6(v31);
  if (!v42)
  {
    (*(v34 + 32))(v38, v31, v32);
    sub_1DD335ED0();
    v39 = sub_1DD335700();
    v41 = v40;

    v42 = v39 == 0x415F6E6F6D6D6F63 && v41 == 0xEA00000000007070;
    if (v42)
    {
    }

    else
    {
      v43 = sub_1DD336E00();

      if ((v43 & 1) == 0)
      {
        v44 = 0.2558;
LABEL_12:
        static RRHeuristicSaliencyEstimator.genericDecayFunction(maximumValue:decayingParameter:eventOccurredAt:evaluateAt:)(1.0, v44, v38, v27);
        (*(v34 + 8))(v38, v32);
        goto LABEL_13;
      }
    }

    v44 = 0.65;
    goto LABEL_12;
  }

  sub_1DD287B48(v31);
LABEL_13:
  OUTLINED_FUNCTION_9_0();
}

void sub_1DD288048()
{
  OUTLINED_FUNCTION_2_2();
  v1 = OUTLINED_FUNCTION_0_7();
  *v0 = static RRHeuristicSaliencyEstimator.nowPlayingDecay(candidate:evaluateAt:)(v1, v2);
}

uint64_t OUTLINED_FUNCTION_78_3(uint64_t a1)
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_78_4()
{
  *(v0 + 304) = 0;
  result = 0.0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_1DD2881D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DD336B60();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t Connection.transaction(_:block:)(unsigned __int8 *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = *a1;
  sub_1DD336C00();

  v6 = 0x54414944454D4D49;
  if (v5 != 1)
  {
    v6 = 0x564953554C435845;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x4445525245464544;
  }

  if (v5)
  {
    v8 = 0xE900000000000045;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  MEMORY[0x1E12AC540](v7, v8);

  MEMORY[0x1E12AC540](0x4341534E41525420, 0xEC0000004E4F4954);
  sub_1DD28836C(0x204E49474542, 0xE600000000000000, a2, a3, 0xD000000000000012, 0x80000001DD33EA70, 0xD000000000000014, 0x80000001DD33EA90);
}

uint64_t sub_1DD28836C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1DD2846CC();
  v10 = qword_1EE028938;
  sub_1DD335860();

  if (v10 != -1)
  {
    swift_once();
  }

  sub_1DD3369A0();
  v11 = sub_1DD2885B8();
  if ((v17 & 1) != 0 || v16 != v11)
  {
    v13 = *(v8 + 88);
    sub_1DD3369E0();
  }

  else
  {
    Connection.run(_:_:)();
    if (v15)
    {
    }

    else
    {

      a3(v12);
      Connection.run(_:_:)();
    }
  }
}

uint64_t sub_1DD2885B8()
{
  result = v0;
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = v0;
  *(v0 + 104) = 0;
  return result;
}

void sub_1DD2885DC()
{
  OUTLINED_FUNCTION_2_2();
  v1 = OUTLINED_FUNCTION_0_7();
  *v0 = static RRHeuristicSaliencyEstimator.foregroundedDecay(candidate:evaluateAt:)(v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return MEMORY[0x1EEDBFC78](v1, v0);
}

id OUTLINED_FUNCTION_25_2()
{

  return [v0 (v1 + 2040)];
}

void OUTLINED_FUNCTION_25_3()
{

  JUMPOUT(0x1E12ADA30);
}

uint64_t OUTLINED_FUNCTION_25_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  *(v6 + 16) = v9;

  return sub_1DD289CE4(&v12, v6 + v8 * v7 + 32);
}

void OUTLINED_FUNCTION_25_5()
{

  sub_1DD3131D4();
}

uint64_t *OUTLINED_FUNCTION_25_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(a4 + 8);
  a17 = a3;
  a18 = v19;

  return __swift_allocate_boxed_opaque_existential_1(&a14);
}

void OUTLINED_FUNCTION_79_3(uint64_t a1)
{
  *(v2 - 120) = v1;

  sub_1DD2D7AB8(0, a1 & ~(a1 >> 63), 0);
}

void *OUTLINED_FUNCTION_79_5@<X0>(void *a1@<X0>, const void *a2@<X8>)
{

  return memcpy(a1, a2, 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_79_6@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v9 = *(v7 - 176);

  return ExpressionType<>.init(value:)(a1, v5, v6, v9, x8_0);
}

uint64_t sub_1DD288794(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1DD288878(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD2888B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t Connection.pluck(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(v19, v7, v8);
  sub_1DD288AB8(v19);
  if (v21)
  {
    v9 = 0;
  }

  else
  {
    v9 = v19[18];
  }

  v10 = v21 | v20;
  v17[3] = v5;
  v17[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_1DD288AE8(1, 0, v9, v10 & 1, v5, v6, boxed_opaque_existential_1);
  Connection.prepareRowIterator(_:)(v17, v18);
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  if (!v2)
  {
    v13 = v18[1];
    v14 = Statement.failableNext()();
    if (v15)
    {
    }

    else
    {
      v16 = v14;
      if (!v14)
      {

        v13 = 0;
      }

      *a2 = v13;
      a2[1] = v16;
    }
  }

  return result;
}

uint64_t VirtualTable.clauses.getter()
{
  OUTLINED_FUNCTION_13_9();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_13_9();
  memcpy(v3, v4, v5);
  return sub_1DD289514(v8, v7);
}

uint64_t sub_1DD288AE8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 16))(a7, v7, a5);
  v14 = a4 & 1;
  v16 = a2 & 1;
  v15 = (a2 & 1) == 0;
  if (a2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a1;
  }

  if (v15)
  {
    v18 = v14;
  }

  else
  {
    a3 = 0;
    v18 = 0;
  }

  v19 = (*(a6 + 32))(v22, a5, a6);
  *(v20 + 136) = v17;
  *(v20 + 144) = a3;
  *(v20 + 152) = v18;
  *(v20 + 153) = v16;
  return v19(v22, 0);
}

uint64_t Connection.prepareRowIterator(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_36_8();
  v6(v10, v5);
  v7 = v10[2];
  Connection.prepare(_:_:)(v10[0], v10[1], MEMORY[0x1E69E7CC0]);
  if (v2)
  {
  }

  else
  {
    v9 = Statement.bind(_:)(v7);

    result = sub_1DD28D810(a1);
    *a2 = v9;
    a2[1] = result;
  }

  return result;
}

void OUTLINED_FUNCTION_80_2()
{
  v2 = *(v0 - 408) & ~(*(v0 - 408) >> 63);

  sub_1DD2D7A78(0, v2, 0);
}

uint64_t OUTLINED_FUNCTION_80_3(uint64_t a1)
{

  return Connection.scalar(_:_:)();
}

uint64_t OUTLINED_FUNCTION_80_5()
{
}

double sub_1DD288DD4()
{
  v1 = v0[10];
  if (!v1)
  {
    return OUTLINED_FUNCTION_9_12();
  }

  v2 = v0[11];
  v3 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD3391F0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x4552454857;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v5;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v3;
  *(inited + 80) = v1;
  *(inited + 88) = v2;

  OUTLINED_FUNCTION_20_8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  return result;
}

double sub_1DD288EE4()
{
  v1 = *(v0 + 128);
  if (!*(v1 + 16))
  {
    return OUTLINED_FUNCTION_9_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD3391F0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x594220524544524FLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v3;
  OUTLINED_FUNCTION_84_5(v1, v4, v5, v6, v7, v8, v9, v10, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54);
  OUTLINED_FUNCTION_19_5(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  return result;
}

double sub_1DD288FCC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);
  if (v3)
  {
    v29 = a1;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1DD296F20();
    v4 = v49;
    v5 = v2 + 32;
    v30 = xmmword_1DD3391F0;
    do
    {
      sub_1DD2855A0(v5, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      inited = swift_initStackObject();
      *(inited + 16) = v30;
      *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x4E4F494E55;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      v7 = v46;
      v8 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      *(inited + 96) = v7;
      *(inited + 104) = *(v8 + 8);
      __swift_allocate_boxed_opaque_existential_1((inited + 72));
      OUTLINED_FUNCTION_22();
      v10 = (*(v9 + 16))();
      OUTLINED_FUNCTION_20_8(v10, v11, v12, v13, v14, v15, v16, v17, v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      __swift_destroy_boxed_opaque_existential_1(v45);
      v49 = v4;
      v18 = *(v4 + 16);
      if (v18 >= *(v4 + 24) >> 1)
      {
        sub_1DD296F20();
        v4 = v49;
      }

      *(v4 + 16) = v18 + 1;
      v19 = sub_1DD289CE4(v48, v4 + 40 * v18 + 32);
      v5 += 40;
      --v3;
    }

    while (v3);
    OUTLINED_FUNCTION_22_9(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_2(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_58_6(uint64_t a1@<X8>)
{
  v1[8] = a1;
  v1[4] = 42;
  v1[5] = 0xE100000000000000;
}

uint64_t sub_1DD2892A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_22();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_64_3()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 - 120));
}

uint64_t OUTLINED_FUNCTION_64_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[7] = a1;
  v4[8] = a2;
  v4[4] = v5;
  v4[5] = v2;
  v4[6] = v3;
  return 0;
}

void OUTLINED_FUNCTION_64_6(uint64_t a1, uint64_t a2)
{

  sub_1DD3131D4();
}

uint64_t *OUTLINED_FUNCTION_64_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = a1;
  a12 = a2;
  a8 = v16;
  a9 = v14;
  a10 = v15;
  v18 = *(v13 + 8);
  a6 = v12;
  a7 = v18;

  return __swift_allocate_boxed_opaque_existential_1(&a3);
}

void OUTLINED_FUNCTION_26_1()
{
  v1[12] = sub_1DD2B1638;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_26_3@<X0>(uint64_t a1@<X8>, void (*a2)(void)@<X3>)
{

  return sub_1DD2BC0C4(v2 + a1, v4, v3 + a1, a2);
}

uint64_t OUTLINED_FUNCTION_26_5(uint64_t a1, uint64_t a2)
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_26_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_1DD2892A8(v20 + v22, va, v19, v21);
}

void OUTLINED_FUNCTION_26_8(uint64_t a1@<X8>)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = a1;
  *(v3 - 96) = v2;
}

uint64_t Expression.template.getter()
{
  v1 = *v0;

  return v1;
}

void sub_1DD28956C()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_70_5(inited, xmmword_1DD33A620);
  sub_1DD289740(v1, v3);
  sub_1DD289BEC();
  sub_1DD288DD4();
  sub_1DD289CFC(&inited[9].n128_i64[1]);
  sub_1DD288FCC(&inited[12]);
  sub_1DD288EE4();
  sub_1DD289F08(inited[17].n128_u64);
  for (i = 32; i != 312; i += 40)
  {
    v13 = OUTLINED_FUNCTION_26_7(v4, v5, v6, v7, v8, v9, v10, v11, v41, *(&v41 + 1), v42, v43, v44, v45, v46[0], v46[1], v46[2], v46[3], v46[4]);
    OUTLINED_FUNCTION_3_13(v13, v14, v15, v16, v17, v18, v19, v20, v41, *(&v41 + 1), v42, v43, v44, v45, v46[0], v46[1], v46[2], v46[3], v46[4], v47, v48, v49);
    if (v21)
    {
      sub_1DD289CE4(&v41, v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_11();
        sub_1DD28C3A8();
      }

      OUTLINED_FUNCTION_38_8();
      if (v28)
      {
        OUTLINED_FUNCTION_18_2();
        sub_1DD28C3A8();
      }

      v4 = OUTLINED_FUNCTION_25_4(v22, v23, v24, v25, v26, v27);
    }

    else
    {
      OUTLINED_FUNCTION_83_1();
      v4 = sub_1DD3147D8(v29, v30);
    }
  }

  swift_setDeallocating();
  v31 = sub_1DD284AB0(&qword_1ECCD7070, &qword_1DD33BAB8);
  OUTLINED_FUNCTION_22_9(v31, v32, v33, v34, v35, v36, v37, v38, v41, *(&v41 + 1), v42, v43, v44, v45, v46[0], v46[1], v46[2], v46[3], v46[4], v47, v48, v49, *(&v49 + 1), v50, v51[0], v51[1]);

  OUTLINED_FUNCTION_5_8(&v47);
  v39 = OUTLINED_FUNCTION_2_5();
  v40(v39);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD289740@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA60;
  v4 = *(v2 + 8);
  v5 = *(v2 + 24);
  v42 = *(v2 + 32);
  v45 = *(v2 + 16);
  v6 = *(v2 + 40);
  if (*v2)
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (*v2)
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v10 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v9;
  OUTLINED_FUNCTION_84_5(v4, v11, v12, v13, v14, v15, v16, v17, v42, v45, a1, a2, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93);
  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v10;
  if (v6)
  {
    v18 = swift_initStackObject();
    OUTLINED_FUNCTION_70_5(v18, xmmword_1DD33BA70);
    v49(v46, v5);
    v18[6].n128_u64[0] = v9;
    v18[6].n128_u64[1] = &protocol witness table for Expression<A>;
    v18[4].n128_u64[1] = 21313;
    v18[5].n128_u64[0] = 0xE200000000000000;
    v18[5].n128_u64[1] = v10;
    v18[8].n128_u64[1] = v9;
    v18[9].n128_u64[0] = &protocol witness table for Expression<A>;
    v19 = OUTLINED_FUNCTION_50_5();
    sub_1DD289A78(v19, v20, v43, v6, v21, v22, v23, v24, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94);
    v18[7].n128_u64[0] = v25;
    v18[7].n128_u64[1] = v26;
    v18[8].n128_u64[0] = v10;
    OUTLINED_FUNCTION_24_6(v18, v26, v27, v28, v29, v30, v31, v32, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95);
    swift_setDeallocating();
    v33 = sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  }

  else
  {

    v49(v46, v5);
  }

  OUTLINED_FUNCTION_19_5(v33, v34, v35, v36, v37, v38, v39, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94);
  swift_setDeallocating();
  return sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
}

uint64_t sub_1DD289944@<X0>(uint64_t *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_50_5();
  sub_1DD289A78(v3, v4, v5, v6, v7, v8, v9, v10, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85);
  v12 = v11;
  v14 = v13;
  if (*(v1 + 56))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 56) = v16;
    *(inited + 64) = &protocol witness table for Expression<A>;
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_57_4();
    sub_1DD289A78(v17, v18, v19, v20, v21, v22, v23, v24, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86);
    *(inited + 32) = v25;
    *(inited + 40) = v26;
    v27 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 96) = v16;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v12;
    *(inited + 80) = v14;
    *(inited + 88) = v27;
    sub_1DD284AFC(inited, 46, 0xE100000000000000, v28, v29, v30, v31, v32, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87);
    swift_setDeallocating();
    return sub_1DD313330();
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    a1[4] = &protocol witness table for Expression<A>;
    *a1 = v12;
    a1[1] = v14;
    a1[2] = MEMORY[0x1E69E7CC0];
    a1[3] = result;
  }

  return result;
}

void sub_1DD289A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_2_13();
  a25 = v26;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v34 = HIBYTE(v33) & 0xF;
  a11 = v27;
  a12 = v33;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v27 & 0xFFFFFFFFFFFFLL;
  }

  a13 = 0;
  a14 = v34;

  v35 = 0;
  for (i = 0xE000000000000000; ; i = a10)
  {
    v37 = sub_1DD336720();
    if (!v38)
    {
      break;
    }

    v39 = v37 == v32 && v38 == v30;
    if (v39 || (sub_1DD336E00() & 1) != 0)
    {
      a9 = 0;
      a10 = 0xE000000000000000;
      OUTLINED_FUNCTION_0_21(&a9);
    }

    else
    {
      a9 = 0;
      a10 = 0xE000000000000000;
    }

    sub_1DD336560();
    v41 = a9;
    v40 = a10;
    a9 = v35;
    a10 = i;

    MEMORY[0x1E12AC540](v41, v40);

    v35 = a9;
  }

  a11 = 0;
  a12 = 0xE000000000000000;
  OUTLINED_FUNCTION_0_21(&a11);
  MEMORY[0x1E12AC540](v35, i);

  OUTLINED_FUNCTION_0_21(&a11);
  OUTLINED_FUNCTION_1_19();
}

double sub_1DD289BEC()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return OUTLINED_FUNCTION_9_12();
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1DD296F20();
  v3 = v18;
  v4 = v1 + 32;
  do
  {
    sub_1DD3102B4(v4);
    v18 = v3;
    v5 = *(v3 + 16);
    if (v5 >= *(v3 + 24) >> 1)
    {
      sub_1DD296F20();
      v3 = v18;
    }

    *(v3 + 16) = v5 + 1;
    v6 = sub_1DD289CE4(v17, v3 + 40 * v5 + 32);
    v4 += 88;
    --v2;
  }

  while (v2);
  OUTLINED_FUNCTION_20_8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v18, v19, v20, v21, v22, v23, v24, v25, v26, vars0, vars8);

  return result;
}

uint64_t sub_1DD289CE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1DD289CFC(uint64_t a1@<X8>)
{
  v3 = v1[12];
  if (v3)
  {
    v4 = v1[13];
    v5 = v1[14];
    v6 = v1[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 40) = 0xE800000000000000;
    v9 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v8;

    v10 = OUTLINED_FUNCTION_34_7();
    sub_1DD28C838(v10, v11, v6);
    OUTLINED_FUNCTION_84_5(v3, v12, v13, v14, v15, v16, v17, v18, 2, 4, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109);
    OUTLINED_FUNCTION_20_8(v19, v20, v21, v22, v23, v24, v25, v26, v44, v47, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110);
    swift_setDeallocating();
    sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);

    if (v5)
    {
      v27 = swift_initStackObject();
      *(v27 + 16) = v45;
      sub_1DD2855A0(v113, v27 + 32);
      v28 = swift_initStackObject();
      *(v28 + 16) = v45;
      *(v28 + 56) = v8;
      *(v28 + 64) = &protocol witness table for Expression<A>;
      *(v28 + 32) = 0x474E49564148;
      *(v28 + 40) = 0xE600000000000000;
      *(v28 + 48) = v9;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
      *(v28 + 96) = v29;
      *(v28 + 104) = &protocol witness table for Expression<A>;
      *(v28 + 72) = v4;
      *(v28 + 80) = v5;
      *(v28 + 88) = v6;
      OUTLINED_FUNCTION_20_8(v29, v30, v31, v32, v33, v34, v35, v36, v45, *(&v45 + 1), v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      OUTLINED_FUNCTION_24_6(v27, v37, v38, v39, v40, v41, v42, v43, v46, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      __swift_destroy_boxed_opaque_existential_1(v113);
    }

    else
    {
      sub_1DD289CE4(v113, a1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_12();
  }
}

void sub_1DD289F08(void *a1@<X8>)
{
  if (*(v1 + 153))
  {
    OUTLINED_FUNCTION_9_12();
  }

  else
  {
    v3 = *(v1 + 152);
    v4 = *(v1 + 144);
    v5 = sub_1DD336DC0();
    MEMORY[0x1E12AC540](v5);

    if (v3)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      a1[4] = &protocol witness table for Expression<A>;
      *a1 = 0x2054494D494CLL;
      a1[1] = 0xE600000000000000;
      a1[2] = MEMORY[0x1E69E7CC0];
      a1[3] = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD3391F0;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x2054494D494CLL;
      *(inited + 40) = 0xE600000000000000;
      v9 = MEMORY[0x1E69E7CC0];
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      *(inited + 56) = v8;
      v10 = sub_1DD336DC0();
      MEMORY[0x1E12AC540](v10);

      *(inited + 96) = v8;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v9;
      OUTLINED_FUNCTION_19_5(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v4, 0x2054455346464FLL, 0xE700000000000000);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
    }
  }
}

uint64_t sub_1DD28A0C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1DD28A114()
{
  OUTLINED_FUNCTION_54_0();
  v163 = v1;
  v158 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v157 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C8, &qword_1DD339280);
  OUTLINED_FUNCTION_1_0();
  v154 = v11;
  v155 = v10;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v153 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v152 = v16;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_32_1();
  v151 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C0, &qword_1DD339278);
  OUTLINED_FUNCTION_1_0();
  v161 = v20;
  v162 = v19;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_30();
  v160 = v22;
  OUTLINED_FUNCTION_31_1();
  v156 = type metadata accessor for Setter();
  OUTLINED_FUNCTION_1_0();
  v164 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  v165 = v26 - v25;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Insert();
  v28 = v27;
  OUTLINED_FUNCTION_1_0();
  v159 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v145 - v33;
  sub_1DD334490();
  OUTLINED_FUNCTION_59();
  swift_allocObject();
  sub_1DD334480();
  v166 = v6;
  v167 = sub_1DD335ED0();
  sub_1DD335710();
  OUTLINED_FUNCTION_16();
  sub_1DD28AEE0(v35, v36, MEMORY[0x1E69D2358]);
  OUTLINED_FUNCTION_23();
  v37 = sub_1DD334470();
  if (v2)
  {
  }

  else
  {
    v148 = v0;
    v149 = v37;
    v150 = v38;
    v146 = v3;
    v147 = v28;

    sub_1DD335F00();
    v39 = sub_1DD336350();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v39);
    sub_1DD28A0C0(v34, &qword_1ECCD6608, &qword_1DD339310);
    if (EnumTagSinglePayload == 1)
    {
      v41 = 0;
      v42 = 0xF000000000000000;
      v43 = v165;
    }

    else
    {
      OUTLINED_FUNCTION_92();
      sub_1DD334480();
      v44 = v148;
      sub_1DD335F00();
      sub_1DD2A3380();
      v45 = sub_1DD334470();
      v43 = v165;
      v41 = v45;
      v42 = v46;
      sub_1DD28A0C0(v44, &qword_1ECCD6608, &qword_1DD339310);
    }

    OUTLINED_FUNCTION_92();
    sub_1DD334480();
    v167 = sub_1DD3360A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6610, &qword_1DD339318);
    OUTLINED_FUNCTION_33();
    sub_1DD28AF70(v47, v48, v49);
    OUTLINED_FUNCTION_23();
    v50 = sub_1DD334470();
    v51 = v164;
    v145[4] = v50;
    v145[5] = v52;
    v148 = v41;

    OUTLINED_FUNCTION_92();
    sub_1DD334480();
    v167 = sub_1DD335F10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6618, &qword_1DD339320);
    sub_1DD28B0F4();
    OUTLINED_FUNCTION_23();
    v145[2] = sub_1DD334470();
    v145[3] = v53;

    v54 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
    v167 = sub_1DD336010();
    v168 = v55;
    v56 = v42;
    v57 = v163;
    v58 = MEMORY[0x1E69E6158];
    <- infix<A>(_:_:)(v163 + v54, MEMORY[0x1E69E6158], &protocol witness table for String, v43);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A0, &qword_1DD339258);
    v59 = *(v51 + 72);
    v60 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1DD339200;
    v145[0] = v61;
    v62 = v61 + v60;
    v63 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn;
    v167 = sub_1DD335F20();
    v168 = v64;
    <- infix<A>(_:_:)(v57 + v63, v58, &protocol witness table for String, v62);

    v167 = v149;
    v168 = v150;
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v65, v66, v67, v68);
    v167 = v148;
    v168 = v56;
    v145[1] = v56;
    sub_1DD28B474(v148, v56);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v69, v70, v71, v72);
    sub_1DD28B488(v167, v168);
    v73 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataTypeColumn;
    v167 = sub_1DD336080();
    v168 = v74;
    <- infix<A>(_:_:)((v57 + v73), &v167, &protocol witness table for String, v62 + 3 * v59);

    v75 = v62;
    v167 = sub_1DD336030();
    v168 = v76;
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v77, v78, v79, v80);
    sub_1DD28B488(v167, v168);
    (*(v161 + 16))(v160, v57 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupIdColumn, v162);
    v81 = v151;
    sub_1DD336040();
    v82 = sub_1DD335E60();
    if (__swift_getEnumTagSinglePayload(v81, 1, v82) == 1)
    {
      sub_1DD28A0C0(v81, &qword_1ECCD6350, &unk_1DD3396F0);
      v83 = 0;
      v84 = 0;
    }

    else
    {
      v83 = sub_1DD335E40();
      v84 = v85;
      OUTLINED_FUNCTION_22();
      (*(v86 + 8))(v81, v82);
    }

    v88 = v154;
    v87 = v155;
    v89 = v153;
    v167 = v83;
    v168 = v84;
    v90 = v160;
    <- infix<A>(_:_:)(v160, &v167, &protocol witness table for String, v75 + 5 * v59);

    (*(v161 + 8))(v90, v162);
    (*(v88 + 16))(v89, v57 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupSeqColumn, v87);
    v91 = v152;
    sub_1DD336040();
    v92 = OUTLINED_FUNCTION_121();
    v94 = __swift_getEnumTagSinglePayload(v92, v93, v82);
    if (v94 == 1)
    {
      sub_1DD28A0C0(v91, &qword_1ECCD6350, &unk_1DD3396F0);
      v95 = 0;
    }

    else
    {
      v95 = sub_1DD335E50();
      OUTLINED_FUNCTION_22();
      (*(v96 + 8))(v91, v82);
    }

    v167 = v95;
    LOBYTE(v168) = v94 == 1;
    <- infix<A>(_:_:)(v89, &v167, &protocol witness table for Int, v75 + 6 * v59);
    v97 = OUTLINED_FUNCTION_111();
    v98(v97);
    v167 = OUTLINED_FUNCTION_19();
    v168 = v99;
    sub_1DD28B4F8(v167, v99);
    v100 = v163;
    OUTLINED_FUNCTION_130(v75 + 7 * v59);
    sub_1DD28B488(v167, v168);
    v101 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_onScreenSaliencyAdjustmentColumn;
    v102 = v166;
    v167 = sub_1DD335FD0();
    LOBYTE(v168) = v103 & 1;
    <- infix<A>(_:_:)((v100 + v101), &v167, &protocol witness table for Double, v75 + 8 * v59);
    v167 = OUTLINED_FUNCTION_13();
    v168 = v104;
    sub_1DD28B4F8(v167, v104);
    v105 = v100;
    OUTLINED_FUNCTION_130(v75 + 9 * v59);
    sub_1DD28B488(v167, v168);
    sub_1DD336050();
    v167 = v106;
    OUTLINED_FUNCTION_60_0();
    <- infix<A>(_:_:)(v107, MEMORY[0x1E69E63B0], &protocol witness table for Double, v108);
    v109 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyComputedAtColumn;
    v110 = v157;
    sub_1DD335F90();
    sub_1DD334830();
    <- infix<A>(_:_:)((v105 + v109), v110, &protocol witness table for Date, v75 + 11 * v59);
    sub_1DD28A0C0(v110, &qword_1ECCD62A0, &unk_1DD338D70);
    v111 = sub_1DD336070();
    OUTLINED_FUNCTION_104(v111, v112);
    OUTLINED_FUNCTION_60_0();
    <- infix<A>(_:_:)(v113, v114, v115, v116);

    type metadata accessor for Table();
    v117 = v146;
    v118 = v165;
    QueryType.insert(_:_:)(v165, v145[0]);

    (*(v164 + 8))(v118, v156);
    sub_1DD335860();
    v169.template._countAndFlagsBits = v117;
    v119 = Connection.run(_:)(v169);
    if (v120)
    {
      v121 = OUTLINED_FUNCTION_51_0();
      v122(v121, v147);
      OUTLINED_FUNCTION_93();
      v123 = OUTLINED_FUNCTION_19();
      sub_1DD290274(v123, v124);
      v125 = OUTLINED_FUNCTION_13();
      sub_1DD290274(v125, v126);

      sub_1DD290274(v149, v150);
    }

    else
    {
      v127 = v119;

      v128 = v102;
      v129 = sub_1DD335CB0();
      v130 = sub_1DD336940();

      if (os_log_type_enabled(v129, v130))
      {
        OUTLINED_FUNCTION_40();
        v131 = swift_slowAlloc();
        v132 = OUTLINED_FUNCTION_95();
        *v131 = 138478083;
        *(v131 + 4) = v128;
        *v132 = v128;
        *(v131 + 12) = 2048;
        *(v131 + 14) = v127;
        v133 = v128;
        _os_log_impl(&dword_1DD27A000, v129, v130, "Successfully inserted entity: %{private}@ into rowid: %lld", v131, 0x16u);
        sub_1DD28A0C0(v132, &qword_1ECCD6598, &unk_1DD339248);
        v134 = OUTLINED_FUNCTION_18();
        MEMORY[0x1E12ADA30](v134);
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        sub_1DD290274(v149, v150);

        v135 = OUTLINED_FUNCTION_13();
        sub_1DD290274(v135, v136);
        v137 = OUTLINED_FUNCTION_19();
        sub_1DD290274(v137, v138);
        OUTLINED_FUNCTION_93();
      }

      else
      {
        OUTLINED_FUNCTION_93();
        v139 = OUTLINED_FUNCTION_19();
        sub_1DD290274(v139, v140);
        v141 = OUTLINED_FUNCTION_13();
        sub_1DD290274(v141, v142);
        sub_1DD290274(v149, v150);
      }

      v143 = OUTLINED_FUNCTION_51_0();
      v144(v143);
    }
  }

  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_53();
}

uint64_t OUTLINED_FUNCTION_82_1(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_82_4()
{
}

uint64_t sub_1DD28AEE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD28AF28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD28AF70(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD6610, &qword_1DD339318);
    sub_1DD28AEE0(a2, MEMORY[0x1E69D2800], a3);
    OUTLINED_FUNCTION_41();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return MEMORY[0x1EEDBFC78](v0, v1);
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return sub_1DD336EC0();
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return swift_getWitnessTable();
}

unint64_t sub_1DD28B0F4()
{
  result = qword_1EE0275B0;
  if (!qword_1EE0275B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD6618, &qword_1DD339320);
    sub_1DD28AEE0(&qword_1EE0275D0, MEMORY[0x1E69D28B8], MEMORY[0x1E69D28C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0275B0);
  }

  return result;
}

uint64_t <- infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[1];
  v12 = v8[2];
  v16[0] = *v8;
  v16[1] = v11;
  v16[2] = v12;
  (*(v13 + 16))(v10);
  sub_1DD28B2A8(v16, v10, a3, a4, x8_0);
}

uint64_t sub_1DD28B2A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  *(a5 + 24) = type metadata accessor for Expression(0, a3, a3, a4);
  *(a5 + 32) = &protocol witness table for Expression<A>;
  *a5 = v10;
  *(a5 + 8) = *(a1 + 1);
  v11 = *(a4 + 8);
  *(a5 + 64) = a3;
  *(a5 + 72) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a5 + 40));
  v13 = *(*(a3 - 8) + 32);

  return v13(boxed_opaque_existential_1, a2, a3);
}

uint64_t <- infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = sub_1DD336AD0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18[-1] - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  (*(v15 + 16))(v11, a2);

  return sub_1DD2960E8(v18, v11, a4, x8_0);
}

uint64_t sub_1DD28B474(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD28B4F8(a1, a2);
  }

  return a1;
}

uint64_t sub_1DD28B488(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD290274(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_130@<X0>(uint64_t a1@<X8>)
{

  return <- infix<A>(_:_:)((v2 + v1), v4 - 104, v3, a1);
}

uint64_t OUTLINED_FUNCTION_125_0()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 - 144));
}

uint64_t OUTLINED_FUNCTION_125_1()
{

  return swift_task_alloc();
}

uint64_t sub_1DD28B4F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }

    sub_1DD335860();
  }

  return sub_1DD335860();
}

uint64_t Date.datatypeValue.getter()
{
  if (qword_1EE027F28 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1EE027F28);
  }

  OUTLINED_FUNCTION_1_10();
  v0 = qword_1EE027F30;
  v1 = sub_1DD3347A0();
  v2 = [v0 stringFromDate_];

  v3 = sub_1DD3365D0();
  return v3;
}

uint64_t sub_1DD28B600@<X0>(uint64_t *a1@<X8>)
{
  result = Date.datatypeValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t QueryType.insert(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A0, &qword_1DD339258);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_69_6(inited, xmmword_1DD339380);
  sub_1DD28B704(a1, v4);

  sub_1DD28B8EC(v5);
  v6 = OUTLINED_FUNCTION_41_0();
  QueryType.insert(_:)(v6);
}

uint64_t Statement.bind(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return sub_1DD335860();
  }

  sub_1DD28BA1C(1);
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  if (v2 == sqlite3_bind_parameter_count(*(v1 + 16)))
  {
    v4 = a1 + 32;
    v5 = -v2;
    v6 = 1;
    do
    {
      sub_1DD28D1C0(v4, v6++);
      v4 += 40;
    }

    while (v5 + v6 != 1);
    return sub_1DD335860();
  }

  sub_1DD336C00();
  sqlite3_bind_parameter_count(*(v1 + 16));
  v8 = sub_1DD336DC0();
  v10 = v9;

  MEMORY[0x1E12AC540](0xD000000000000012, 0x80000001DD33ECA0);
  v11 = sub_1DD336DC0();
  MEMORY[0x1E12AC540](v11);

  MEMORY[0x1E12AC540](0x64657373617020, 0xE700000000000000);
  result = OUTLINED_FUNCTION_2_12("Fatal error", v12, v13, v8, v10, "RRSQLite/Statement.swift");
  __break(1u);
  return result;
}

{
  sub_1DD28BA1C(1);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);

  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v10 = v8;
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v3 = *v12;
      v2 = v12[1];
      sub_1DD28D7A0(*(a1 + 56) + 40 * v11, &v22);
      v20 = v22;
      v21 = v23;
      v13 = v24;

      if (!v2)
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      v24 = v13;
      v14 = *(v1 + 16);
      v15 = sub_1DD336650();
      v16 = sqlite3_bind_parameter_index(v14, (v15 + 32));

      if (v16 < 1)
      {
        goto LABEL_14;
      }

      v7 &= v7 - 1;

      sub_1DD28D1C0(&v22, v16);
      sub_1DD2825F0(&v22, &qword_1ECCD7090, &qword_1DD33CA20);
      v8 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_12:

    return sub_1DD335860();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 64 + 8 * v10);
      ++v8;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_14:
    sub_1DD336C00();

    MEMORY[0x1E12AC540](v3, v2);
    result = OUTLINED_FUNCTION_2_12("Fatal error", v18, v19, 0xD000000000000015, 0x80000001DD33ECC0, "RRSQLite/Statement.swift");
    __break(1u);
  }

  return result;
}

void sub_1DD28B8EC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_87(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD28B9A4(v4, 1, sub_1DD28BAE0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_9();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_83_5(v6 + 80 * v9 + 32, v7, v8, &type metadata for Setter);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DD28B9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1DD28BA1C(char a1)
{
  swift_beginAccess();
  result = sqlite3_reset(*(v1 + 16));
  if (a1)
  {
    return sqlite3_clear_bindings(*(v1 + 16));
  }

  return result;
}

void *OUTLINED_FUNCTION_86_2()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 120), v0);
}

void OUTLINED_FUNCTION_86_3()
{

  JUMPOUT(0x1E12AC540);
}

uint64_t OUTLINED_FUNCTION_86_4()
{
}

char *sub_1DD28BAE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A0, &qword_1DD339258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_81_5()
{
}

uint64_t sub_1DD28BCA0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v44 = *a1;
  if (v5)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = a2 + 32;
    v60 = xmmword_1DD339380;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DD28B704(v8, &v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD339380;
      sub_1DD2855A0(&v72, inited + 32);

      sub_1DD28C254(inited);
      v10 = v7;
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_1DD339380;
      sub_1DD2855A0(&v75, v11 + 32);
      v69 = v6;

      sub_1DD28C254(v11);

      sub_1DD28C49C(&v72);
      v8 += 80;
      --v5;
    }

    while (v5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1DD33BA80;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(v12 + 56) = v13;
  *(v12 + 64) = &protocol witness table for Expression<A>;
  *(v12 + 32) = 0x545245534E49;
  *(v12 + 40) = 0xE600000000000000;
  v14 = MEMORY[0x1E69E7CC0];
  *(v12 + 48) = MEMORY[0x1E69E7CC0];
  if (v44 == 5)
  {
    *(v12 + 104) = 0;
    *(v12 + 88) = 0u;
    *(v12 + 72) = 0u;
  }

  else
  {
    *&v72 = 2118223;
    *(&v72 + 1) = 0xE300000000000000;
    v15 = 0xE600000000000000;
    v16 = 0x45524F4E4749;
    switch(v44)
    {
      case 1:
        v15 = 0xE800000000000000;
        v16 = 0x4B4341424C4C4F52;
        break;
      case 2:
        v15 = 0xE500000000000000;
        v16 = 0x54524F4241;
        break;
      case 3:
        v15 = 0xE400000000000000;
        v16 = 1279869254;
        break;
      case 4:
        break;
      default:
        v15 = 0xE700000000000000;
        v16 = 0x4543414C504552;
        break;
    }

    MEMORY[0x1E12AC540](v16, v15);

    v17 = v72;
    *(v12 + 96) = v13;
    *(v12 + 104) = &protocol witness table for Expression<A>;
    *(v12 + 72) = v17;
    *(v12 + 88) = v14;
  }

  *(v12 + 136) = v13;
  *(v12 + 144) = &protocol witness table for Expression<A>;
  *(v12 + 112) = 1330925129;
  *(v12 + 120) = 0xE400000000000000;
  *(v12 + 128) = v14;
  v18 = a4;
  sub_1DD28C4F0();
  *(v12 + 216) = v13;
  *(v12 + 224) = &protocol witness table for Expression<A>;
  sub_1DD284AFC(v10, 8236, 0xE200000000000000, v19, v20, v21, v22, v23, v41, v44, a3, a4, v53, a5, v60, *(&v60 + 1), v65, *(&v65 + 1), v66, *(&v66 + 1), v67, v68, v69, v70, *(&v70 + 1), v71);
  sub_1DD285320(&v72, 0, 0xE000000000000000, (v12 + 192));
  __swift_destroy_boxed_opaque_existential_1(&v72);
  *(v12 + 256) = v13;
  *(v12 + 264) = &protocol witness table for Expression<A>;
  *(v12 + 232) = 0x5345554C4156;
  *(v12 + 240) = 0xE600000000000000;
  *(v12 + 248) = v14;
  *(v12 + 296) = v13;
  *(v12 + 304) = &protocol witness table for Expression<A>;
  sub_1DD284AFC(v6, 8236, 0xE200000000000000, v24, v25, v26, v27, v28, v42, v45, v48, v51, v54, v57, v61, v63, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, v68, v69, v70, *(&v70 + 1), v71);
  sub_1DD285320(&v72, 0, 0xE000000000000000, (v12 + 272));

  __swift_destroy_boxed_opaque_existential_1(&v72);
  sub_1DD28C6EC(v18, v12 + 312);
  for (i = 32; i != 352; i += 40)
  {
    sub_1DD2892A8(v12 + i, &v72, &qword_1ECCD7070, &qword_1DD33BAB8);
    v65 = v72;
    v66 = v73;
    v67 = v74;
    if (*(&v73 + 1))
    {
      sub_1DD289CE4(&v65, &v69);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD28C3A8();
        v14 = v31;
      }

      v30 = *(v14 + 16);
      if (v30 >= *(v14 + 24) >> 1)
      {
        sub_1DD28C3A8();
        v14 = v32;
      }

      *(v14 + 16) = v30 + 1;
      sub_1DD289CE4(&v69, v14 + 40 * v30 + 32);
    }

    else
    {
      sub_1DD3147D8(&v65, &qword_1ECCD7070);
    }
  }

  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7070, &qword_1DD33BAB8);
  sub_1DD284AFC(v14, 32, 0xE100000000000000, v33, v34, v35, v36, v37, v43, v46, v49, v52, v55, v58, v62, v64, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, v68, v69, v70, *(&v70 + 1), v71);

  v38 = *(&v73 + 1);
  v39 = v74;
  __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
  (*(v39 + 8))(&v69, v38, v39);
  *v59 = v69;
  *(v59 + 8) = v70;
  return __swift_destroy_boxed_opaque_existential_1(&v72);
}

RRSQLite::Insert __swiftcall QueryType.insert(_:)(Swift::OpaquePointer a1)
{
  v7 = 5;
  v4 = sub_1DD28BCA0(&v7, a1._rawValue, v1, v2, v3);
  result.bindings._rawValue = v6;
  result.template._object = v5;
  result.template._countAndFlagsBits = v4;
  return result;
}

void sub_1DD28C254(uint64_t a1)
{
  OUTLINED_FUNCTION_87(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD28C324();
  v5 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_9();
  if (v7 != v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v5 + 40 * v6;
  v9 = OUTLINED_FUNCTION_41_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_83_5(v8 + 32, v12, v13, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v5;
    return;
  }

  v14 = *(v5 + 16);
  v4 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v4)
  {
    *(v5 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DD28C324()
{
  OUTLINED_FUNCTION_49_6();
  v2 = v1;
  v3 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v3;
  if (!isUniquelyReferenced_nonNull_native || v2 > *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_75_6();
    *v0 = v5;
  }
}

void sub_1DD28C3A8()
{
  OUTLINED_FUNCTION_66_6();
  if (v7)
  {
    OUTLINED_FUNCTION_6_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_30_2();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v14 = OUTLINED_FUNCTION_78_3(v13);
    v15 = _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_67_5(v15);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    if (v14 != v0 || &v0[40 * v11 + 32] <= v14 + 32)
    {
      v17 = OUTLINED_FUNCTION_31_2();
      memmove(v17, v18, v19);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_31_2();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD28C4F0()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_9();
  v1 = v0;
  v3 = *(v2 + 16);
  v5 = OUTLINED_FUNCTION_48_4(v0, v4);
  v3(v5);
  v7 = v54[4];
  v6 = v54[5];

  sub_1DD288AB8(v54);
  if (v6)
  {
    if (v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1DD33BA70;
      v9 = OUTLINED_FUNCTION_113();
      v3(v9);

      sub_1DD288AB8(v52);
      sub_1DD296C9C((v8 + 32));

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      *(v8 + 104) = &protocol witness table for Expression<A>;
      *(v8 + 72) = 21313;
      *(v8 + 80) = 0xE200000000000000;
      v11 = MEMORY[0x1E69E7CC0];
      *(v8 + 88) = MEMORY[0x1E69E7CC0];
      *(v8 + 96) = v10;
      *(v8 + 136) = v10;
      *(v8 + 144) = &protocol witness table for Expression<A>;
      v12 = OUTLINED_FUNCTION_50_5();
      sub_1DD289A78(v12, v13, v7, v6, v14, v15, v16, v17, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
      v19 = v18;
      v21 = v20;

      *(v8 + 112) = v19;
      *(v8 + 120) = v21;
      *(v8 + 128) = v11;
      OUTLINED_FUNCTION_24_6(v8, v22, v23, v24, v25, v26, v27, v28, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      goto LABEL_8;
    }
  }

  v29 = OUTLINED_FUNCTION_113();
  v3(v29);
  v30 = v53;

  sub_1DD288AB8(v52);
  if (!v30)
  {
    v31 = OUTLINED_FUNCTION_113();
    v3(v31);

    sub_1DD288AB8(&v35);
  }

  OUTLINED_FUNCTION_3_10();
  sub_1DD296C9C(v32);

LABEL_8:
  OUTLINED_FUNCTION_24_1();
}

double sub_1DD28C6EC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v29);
  v3 = v30;
  v4 = v31;
  v5 = v32;
  sub_1DD28C838(v30, v31, v32);
  sub_1DD288AB8(v29);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x4552454857;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v7;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v3;
    *(inited + 80) = v4;
    *(inited + 88) = v5;
    sub_1DD284AFC(inited, 32, 0xE100000000000000, v8, v9, v10, v11, v12, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29[0], v29[1], v29[2]);
    swift_setDeallocating();
    sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1DD28C838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1DD28C87C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_22();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD28C904(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1DD335860();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_83_1();
  v3 = a2();

  return v3;
}

id *sub_1DD28C99C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD2846CC();
  if (qword_1EE028938 != -1)
  {
    OUTLINED_FUNCTION_1_16(&qword_1EE028938);
  }

  sub_1DD3369A0();
  insert_rowid = a1;
  v9 = sub_1DD2885B8();
  if ((v13 & 1) != 0 || v12 != v9)
  {
    insert_rowid = a1[11];
    sub_1DD3369E0();
    if (v5)
    {

      return insert_rowid;
    }

    insert_rowid = v14;
LABEL_11:

    return insert_rowid;
  }

  OUTLINED_FUNCTION_20_10(a3);
  if (!v5)
  {

    v10 = Connection.handle.getter();
    insert_rowid = sqlite3_last_insert_rowid(v10);

    goto LABEL_11;
  }

  return insert_rowid;
}

uint64_t sub_1DD28CB30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v24 = &protocol witness table for Expression<A>;
  v21 = v6;
  v22 = v7;
  v23 = OUTLINED_FUNCTION_59_6(a1, a2, a3, a4);
  v19 = MEMORY[0x1E69E6370];
  LOBYTE(v18[0]) = v5;

  OUTLINED_FUNCTION_4_16(v9, v10, v11, v12, v13, v14, v15, v16, v18[0], v18[1], v18[2], v19, &protocol witness table for Bool, v8);
  OUTLINED_FUNCTION_22_11();
  v4();
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(&v20);
}

uint64_t || infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_71_8();
  return sub_1DD327434(v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_71_8();
  return sub_1DD327518(v5, v6, v7, v8, v9);
}

double sub_1DD28CBEC@<D0>(char a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v4 = swift_allocObject();
  *&result = 1;
  v6 = MEMORY[0x1E69E7360];
  *(v4 + 16) = xmmword_1DD339380;
  *(v4 + 56) = v6;
  *(v4 + 64) = &protocol witness table for Int64;
  *(v4 + 32) = a1 & 1;
  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

uint64_t sub_1DD28CCF4()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  OUTLINED_FUNCTION_28_9();

  OUTLINED_FUNCTION_30_5();
  v1();

  OUTLINED_FUNCTION_79_4();
}

uint64_t QueryType.filter(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  OUTLINED_FUNCTION_22();
  (*(v10 + 16))(a4, v11, a2);
  (*(a3 + 16))(v35, a2, a3);
  v12 = v35[9];
  v13 = v35[10];
  v14 = v35[11];
  OUTLINED_FUNCTION_32_8();
  sub_1DD28C838(v15, v16, v17);
  sub_1DD288AB8(v35);
  if (v13)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
    v33 = &protocol witness table for Expression<A>;
    v31[0] = v12;
    v31[1] = v13;
    v31[2] = v14;
    v30[3] = v32;
    v30[4] = &protocol witness table for Expression<A>;
    v30[0] = v8;
    v30[1] = v7;
    v30[2] = v9;
    OUTLINED_FUNCTION_32_8();
    sub_1DD28C838(v18, v19, v20);

    sub_1DD28512C(v31, v30, 1, 4476481, 0xE300000000000000, v34);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_32_8();
    sub_1DD28D008(v21, v22, v23);
    v8 = v34[0];
    v7 = v34[1];
    v9 = v34[2];
  }

  else
  {
  }

  v24 = (*(a3 + 32))(v31, a2, a3);
  v26 = v25[9];
  v27 = v25[10];
  v28 = v25[11];
  v25[9] = v8;
  v25[10] = v7;
  v25[11] = v9;
  sub_1DD28D008(v26, v27, v28);
  return v24(v31, 0);
}

void *OUTLINED_FUNCTION_60_3(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  return result;
}

void sub_1DD28D008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t OUTLINED_FUNCTION_75_4()
{
}

void OUTLINED_FUNCTION_75_6()
{

  sub_1DD28C3A8();
}

uint64_t *OUTLINED_FUNCTION_75_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(a4 + 8);
  a17 = a3;
  a18 = v19;

  return __swift_allocate_boxed_opaque_existential_1(&a14);
}

uint64_t OUTLINED_FUNCTION_67_1(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = *(v5 - 288);

  return sub_1DD2B79A0(a1, a2, a3, v3, v4, v7);
}

uint64_t OUTLINED_FUNCTION_67_3(uint64_t a1, uint64_t a2)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_67_5(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_67_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_1DD284AFC(v26, 8236, 0xE200000000000000, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1DD28D1C0(sqlite3_int64 a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    swift_beginAccess();
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      return sqlite3_bind_null(v2[2], a2);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      v3 = v13;
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v4 = *(v13 + 16);
          if (!(v4 >> 31))
          {
            v2 = v2[2];
            if (qword_1EE0275C8 == -1)
            {
LABEL_8:
              sqlite3_bind_blob(v2, a2, (v3 + 32), v4, qword_1EE02A1A0);
            }

LABEL_49:
            swift_once();
            goto LABEL_8;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a2 <= 0x7FFFFFFF)
      {
        return sqlite3_bind_double(v2[2], a2, *&v13);
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_int64(v2[2], a2, v13);
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v2 = v2[2];
          if (qword_1EE0275C8 == -1)
          {
LABEL_30:
            v8 = qword_1EE02A1A0;
            v9 = sub_1DD336650();

            sqlite3_bind_text(v2, a2, (v9 + 32), -1, v8);
          }

LABEL_56:
          swift_once();
          goto LABEL_30;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  v10 = MEMORY[0x1E69E7360];
  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      v11 = v13;
LABEL_39:
      v16 = v10;
      v17 = &protocol witness table for Int64;
      v15[0] = v11;
      sub_1DD28D1C0(v15, a2);
      v12 = v15;
      return sub_1DD2825F0(v12, &qword_1ECCD7090, &qword_1DD33CA20);
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD28D7A0(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
    if (swift_dynamicCast())
    {
      v11 = v13;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1DD2825F0(v15, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD28D7A0(a1, &v13);
  if (!v14)
  {
    v12 = &v13;
    return sub_1DD2825F0(v12, &qword_1ECCD7090, &qword_1DD33CA20);
  }

  sub_1DD289CE4(&v13, v15);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD00000000000001FLL, 0x80000001DD33ED90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
  sub_1DD336CB0();
  result = sub_1DD336D20();
  __break(1u);
  return result;
}

uint64_t sub_1DD28D7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD28D810(void *a1)
{
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  v114 = (v3 + 16);
  v125 = v4;
  v126 = a1;
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 16))(v142, v6, v7);
  v8 = v142[1];

  sub_1DD288AB8(v142);
  v120 = *(v8 + 16);
  v113 = v5;
  swift_beginAccess();
  v9 = 0;
  v121 = v8;
  v119 = v8 + 32;
  v118 = v3;
  while (1)
  {
    while (1)
    {
      if (v9 == v120)
      {

        swift_beginAccess();
        v42 = *(v3 + 16);

        return v42;
      }

      if (v9 >= *(v121 + 16))
      {
        goto LABEL_100;
      }

      v122 = v9;
      sub_1DD2855A0(v119 + 40 * v9, v139);
      v10 = v140;
      v11 = v141;
      __swift_project_boxed_opaque_existential_1(v139, v140);
      (*(v11 + 8))(__dst, v10, v11);
      v12 = __dst[0];
      v13 = __dst[1];

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v1 = 4 * v14;
        v15 = 15;
        v16 = MEMORY[0x1E69E7CC0];
LABEL_8:
        v128 = v16;
        for (i = v15; ; i = sub_1DD3366D0())
        {
          v18 = i >> 14;
          v19 = v15 >> 14;
          if (i >> 14 == v1)
          {
            break;
          }

          if (sub_1DD336770() == 46 && v20 == 0xE100000000000000)
          {

LABEL_17:
            if (v19 == v18)
            {
              v16 = v128;
            }

            else
            {
              if (v18 < v19)
              {
                goto LABEL_103;
              }

              v23 = sub_1DD336780();
              v115 = v25;
              v116 = v24;
              v27 = v26;
              v16 = v128;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v16 = sub_1DD28E5EC(0, *(v128 + 2) + 1, 1, v128);
              }

              v29 = *(v16 + 2);
              v28 = *(v16 + 3);
              if (v29 >= v28 >> 1)
              {
                v16 = sub_1DD28E5EC((v28 > 1), v29 + 1, 1, v16);
              }

              *(v16 + 2) = v29 + 1;
              v30 = &v16[32 * v29];
              *(v30 + 4) = v23;
              *(v30 + 5) = v116;
              *(v30 + 6) = v27;
              *(v30 + 7) = v115;
            }

            v15 = sub_1DD3366D0();
            goto LABEL_8;
          }

          v22 = sub_1DD336E00();

          if (v22)
          {
            goto LABEL_17;
          }
        }

        if (v19 == v1)
        {

          v31 = MEMORY[0x1E69E7CC0];
          v32 = v128;
        }

        else
        {
          if (v1 < v19)
          {
            goto LABEL_104;
          }

          v33 = sub_1DD336780();
          v35 = v34;
          v37 = v36;
          v1 = v38;

          v32 = v128;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1DD28E5EC(0, *(v128 + 2) + 1, 1, v128);
          }

          v31 = MEMORY[0x1E69E7CC0];
          v40 = *(v32 + 2);
          v39 = *(v32 + 3);
          if (v40 >= v39 >> 1)
          {
            v32 = sub_1DD28E5EC((v39 > 1), v40 + 1, 1, v32);
          }

          *(v32 + 2) = v40 + 1;
          v41 = &v32[32 * v40];
          *(v41 + 4) = v33;
          *(v41 + 5) = v35;
          *(v41 + 6) = v37;
          *(v41 + 7) = v1;
        }
      }

      else
      {

        v31 = MEMORY[0x1E69E7CC0];
        v32 = MEMORY[0x1E69E7CC0];
      }

      v42 = *(v32 + 2);
      if (v42)
      {
        __dst[0] = v31;
        sub_1DD28E6F4(0, v42, 0);
        v43 = 0;
        v44 = __dst[0];
        v129 = v32;
        v45 = (v32 + 56);
        while (v43 < *(v129 + 2))
        {
          v47 = *(v45 - 3);
          v46 = *(v45 - 2);
          v48 = *(v45 - 1);
          v49 = *v45;

          v50 = MEMORY[0x1E12AC4B0](v47, v46, v48, v49);
          v52 = v51;

          __dst[0] = v44;
          v54 = *(v44 + 16);
          v53 = *(v44 + 24);
          v1 = v54 + 1;
          if (v54 >= v53 >> 1)
          {
            sub_1DD28E6F4((v53 > 1), v54 + 1, 1);
            v44 = __dst[0];
          }

          ++v43;
          *(v44 + 16) = v1;
          v55 = v44 + 16 * v54;
          *(v55 + 32) = v50;
          *(v55 + 40) = v52;
          v45 += 4;
          if (v42 == v43)
          {

            v31 = MEMORY[0x1E69E7CC0];
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_97:

        sub_1DD3134EC();
        swift_allocError();
        *v112 = v45;
        *(v112 + 8) = v1;
        *(v112 + 16) = 0;
        *(v112 + 24) = 0;
        swift_willThrow();
LABEL_98:
        __swift_destroy_boxed_opaque_existential_1(v131);
LABEL_91:
        __swift_destroy_boxed_opaque_existential_1(v135);
        __swift_destroy_boxed_opaque_existential_1(v139);

        return v42;
      }

      v44 = v31;
LABEL_43:
      if (!*(v44 + 16))
      {
        goto LABEL_101;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD314708(v44);
        v44 = v109;
      }

      v56 = *(v44 + 16);
      if (!v56)
      {
        goto LABEL_102;
      }

      v57 = v56 - 1;
      v58 = v44 + 16 * v57;
      v60 = *(v58 + 32);
      v59 = *(v58 + 40);
      v123 = v122 + 1;
      *(v44 + 16) = v57;
      __dst[0] = v44;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67E8, &qword_1DD339848);
      sub_1DD31471C(&qword_1EE0285F0, &qword_1ECCD67E8, &qword_1DD339848, MEMORY[0x1E69E6310]);
      v61 = sub_1DD336570();
      v1 = v62;

      if (v60 == 42 && v59 == 0xE100000000000000)
      {
        break;
      }

      v64 = sub_1DD336E00();

      if (v64)
      {
        goto LABEL_59;
      }

      v65 = v140;
      v66 = v141;
      __swift_project_boxed_opaque_existential_1(v139, v140);
      (*(v66 + 8))(__dst, v65, v66);
      v67 = __dst[0];
      v68 = __dst[1];

      v69 = *v113;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v131[0] = *v114;
      v70 = v131[0];
      v71 = sub_1DD28EFFC();
      v73 = *(v70 + 16);
      v74 = (v72 & 1) == 0;
      v1 = v73 + v74;
      if (__OFADD__(v73, v74))
      {
        goto LABEL_105;
      }

      v75 = v71;
      v76 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7150, &qword_1DD33C100);
      if (sub_1DD336CC0())
      {
        v77 = sub_1DD28EFFC();
        if ((v76 & 1) != (v78 & 1))
        {
          goto LABEL_108;
        }

        v75 = v77;
      }

      v79 = v131[0];
      if (v76)
      {
        *(*(v131[0] + 56) + 8 * v75) = v69;
      }

      else
      {
        *(v131[0] + 8 * (v75 >> 6) + 64) |= 1 << v75;
        v105 = (v79[6] + 16 * v75);
        *v105 = v67;
        v105[1] = v68;
        *(v79[7] + 8 * v75) = v69;
        v106 = v79[2];
        v107 = __OFADD__(v106, 1);
        v108 = v106 + 1;
        if (v107)
        {
          goto LABEL_107;
        }

        v79[2] = v108;
      }

      *v114 = v79;
      swift_endAccess();
      if (__OFADD__(v69, 1))
      {
        goto LABEL_106;
      }

      *v113 = v69 + 1;
      __swift_destroy_boxed_opaque_existential_1(v139);
      v3 = v118;
      v9 = v123;
    }

LABEL_59:
    v130 = v61;
    sub_1DD2855A0(v126, v135);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1DD339380;
    *(v80 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(v80 + 64) = &protocol witness table for Expression<A>;
    *(v80 + 32) = 42;
    *(v80 + 40) = 0xE100000000000000;
    *(v80 + 48) = v31;
    v81 = v136;
    v82 = v137;
    __swift_mutable_project_boxed_opaque_existential_1(v135, v136);
    v83 = (*(v82 + 32))(__src, v81, v82);
    *v84 = 0;
    *(v84 + 8) = v80;

    v83(__src, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7158, &qword_1DD33C108);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1DD339380;
    sub_1DD2855A0(v135, v85 + 32);
    v86 = v126[3];
    v87 = v126[4];
    __swift_project_boxed_opaque_existential_1(v126, v86);
    (*(v87 + 16))(__src, v86, v87);
    memcpy(__dst, __src, sizeof(__dst));
    v88 = __dst[8];

    sub_1DD288AB8(__dst);
    v89 = v31;
    v90 = *(v88 + 16);
    if (v90)
    {
      v117 = v1;
      v143 = v89;
      sub_1DD313AF8();
      v89 = v143;
      v91 = v88 + 32;
      do
      {
        sub_1DD2892A8(v91, v131, &qword_1ECCD7138, "\bK");
        memcpy(v132, v131, sizeof(v132));
        sub_1DD289CE4(&v132[1], &v133);
        __swift_destroy_boxed_opaque_existential_1(&v132[6]);
        v143 = v89;
        v92 = *(v89 + 16);
        if (v92 >= *(v89 + 24) >> 1)
        {
          sub_1DD313AF8();
          v89 = v143;
        }

        *(v89 + 16) = v92 + 1;
        sub_1DD289CE4(&v133, v89 + 40 * v92 + 32);
        v91 += 88;
        --v90;
      }

      while (v90);

      v1 = v117;
    }

    else
    {
    }

    *__src = v85;
    sub_1DD28C254(v89);
    v42 = *__src;
    v93 = HIBYTE(v1) & 0xF;
    v45 = v130;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v93 = v130 & 0xFFFFFFFFFFFFLL;
    }

    v3 = v118;
    if (!v93)
    {
      break;
    }

    if (!*(*__src + 16))
    {

      sub_1DD3134EC();
      swift_allocError();
      *v111 = v130;
      *(v111 + 8) = v1;
      *(v111 + 16) = 0;
      *(v111 + 24) = 0;
      swift_willThrow();
      goto LABEL_91;
    }

    sub_1DD2855A0(*__src + 32, __src);

    sub_1DD289CE4(__src, v131);
    __swift_project_boxed_opaque_existential_1(v131, v131[3]);
    sub_1DD28C4F0();
    v94 = v132[3];
    v95 = v132[4];
    __swift_project_boxed_opaque_existential_1(v132, v132[3]);
    (*(v95 + 8))(&v133, v94, v95);
    v42 = *(&v133 + 1);
    v96 = v133;

    if (v96 == v130 && v42 == v1)
    {

      __swift_destroy_boxed_opaque_existential_1(v132);
    }

    else
    {
      v98 = sub_1DD336E00();

      __swift_destroy_boxed_opaque_existential_1(v132);
      if ((v98 & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    sub_1DD28E86C(v131, v124, 1, v118, v125);
    if (v127)
    {

      goto LABEL_98;
    }

    __swift_destroy_boxed_opaque_existential_1(v131);
LABEL_85:
    __swift_destroy_boxed_opaque_existential_1(v135);
    __swift_destroy_boxed_opaque_existential_1(v139);
    v9 = v123;
  }

  v99 = 0;
  v1 = *(v42 + 16);
  for (j = v42 + 32; ; j += 40)
  {
    if (v1 == v99)
    {

      goto LABEL_85;
    }

    if (v99 >= *(v42 + 16))
    {
      break;
    }

    sub_1DD2855A0(j, v132);
    v101 = v126[3];
    v102 = v126[4];
    __swift_project_boxed_opaque_existential_1(v126, v101);
    (*(v102 + 16))(v131, v101, v102);
    memcpy(__src, v131, sizeof(__src));
    v103 = *&__src[64];

    sub_1DD288AB8(__src);
    v104 = *(v103 + 16);

    sub_1DD28E86C(v132, v124, v104 != 0, v118, v125);
    if (v127)
    {
      __swift_destroy_boxed_opaque_existential_1(v132);

      goto LABEL_91;
    }

    ++v99;
    __swift_destroy_boxed_opaque_existential_1(v132);
  }

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
  result = sub_1DD336E30();
  __break(1u);
  return result;
}

uint64_t sub_1DD28E5A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *sub_1DD28E5EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7168, &qword_1DD33C118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DD28E6F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD28E714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DD28E714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6848, &unk_1DD339948);
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1DD28E86C(void *a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5)
{
  v75 = a2;
  v73 = a4;
  v74 = a5;
  LODWORD(v71) = a3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(v90, v7, v8);
  v9 = v90[3];
  v72 = v90[2];

  sub_1DD288AB8(v90);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 16))(v91, v10, v11);
  v12 = v91[6];
  v13 = v91[7];

  sub_1DD288AB8(v91);
  v14 = *(v8 + 40);
  v88 = DynamicType;
  v89 = v8;
  __swift_allocate_boxed_opaque_existential_1(v87);
  v14(v72, v9, v12, v13, DynamicType, v8);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 16))(v92, v15, v16);
  LOBYTE(v8) = v92[0];
  v17 = v92[1];

  sub_1DD288AB8(v92);
  v18 = v88;
  v19 = v89;
  __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  v20 = (*(v19 + 32))(&v83, v18, v19);
  *v21 = v8;
  *(v21 + 8) = v17;

  v20(&v83, 0);
  v23 = v88;
  v22 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  (*(*(v22 + 8) + 8))(&v83, v23);
  v24 = v85;
  v25 = MEMORY[0x1E69E7CC0];
  Connection.prepare(_:_:)(v83, v84, MEMORY[0x1E69E7CC0]);
  if (v76)
  {

    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v70 = 0;
  Statement.bind(_:)(v24);

  v27 = Statement.columnNames.getter();

  v28 = *(v27 + 16);
  if (v28)
  {
    v83 = v25;
    sub_1DD28E6F4(0, v28, 0);
    v29 = v83;
    v76 = v27;
    v30 = (v27 + 40);
    do
    {
      v32 = *(v30 - 1);
      v31 = *v30;

      sub_1DD289A78(34, 0xE100000000000000, v32, v31, v33, v34, v35, v36, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87[0]);
      v38 = v37;
      v40 = v39;

      v83 = v29;
      v42 = *(v29 + 16);
      v41 = *(v29 + 24);
      v43 = v29;
      if (v42 >= v41 >> 1)
      {
        sub_1DD28E6F4((v41 > 1), v42 + 1, 1);
        v43 = v83;
      }

      *(v43 + 16) = v42 + 1;
      v44 = v43 + 16 * v42;
      *(v44 + 32) = v38;
      *(v44 + 40) = v40;
      v30 += 2;
      --v28;
      v29 = v43;
    }

    while (v28);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  if (v71)
  {
    MEMORY[0x1EEE9AC00](v45);
    v69[2] = a1;
    v46 = v70;
    v47 = sub_1DD31050C(sub_1DD314760, v69, v29);
    v70 = v46;

    v29 = v47;
  }

  v49 = v73;
  v48 = v74;
  v72 = *(v29 + 16);
  if (!v72)
  {
LABEL_25:

    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  swift_beginAccess();
  swift_beginAccess();
  v50 = 0;
  v51 = (v29 + 40);
  v71 = v29;
  while (v50 < *(v29 + 16))
  {
    v52 = *(v51 - 1);
    v53 = *v51;
    v76 = *(v48 + 16);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v93 = *(v49 + 16);
    v54 = v93;
    *(v49 + 16) = 0x8000000000000000;
    v75 = v52;
    v55 = sub_1DD28EFFC();
    if (__OFADD__(v54[2], (v56 & 1) == 0))
    {
      goto LABEL_27;
    }

    v57 = v55;
    v58 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7150, &qword_1DD33C100);
    if (sub_1DD336CC0())
    {
      v59 = sub_1DD28EFFC();
      v29 = v71;
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_30;
      }

      v57 = v59;
      if (v58)
      {
LABEL_22:

        v61 = v93;
        *(v93[7] + 8 * v57) = v76;
        goto LABEL_23;
      }
    }

    else
    {
      v29 = v71;
      if (v58)
      {
        goto LABEL_22;
      }
    }

    v61 = v93;
    v93[(v57 >> 6) + 8] |= 1 << v57;
    v62 = (v61[6] + 16 * v57);
    v63 = v76;
    *v62 = v75;
    v62[1] = v53;
    *(v61[7] + 8 * v57) = v63;
    v64 = v61[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_29;
    }

    v61[2] = v66;
LABEL_23:
    v49 = v73;
    *(v73 + 16) = v61;
    swift_endAccess();
    v48 = v74;
    v67 = *(v74 + 16);
    v65 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (v65)
    {
      goto LABEL_28;
    }

    ++v50;
    *(v74 + 16) = v68;
    v51 += 2;
    if (v72 == v50)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1DD336E30();
  __break(1u);
  return result;
}

uint64_t Statement.columnNames.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (v2)
  {

    return v2;
  }

  result = Statement.columnCount.getter();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = MEMORY[0x1E69E7CC0];
  if (!result)
  {
LABEL_13:
    *(v1 + 48) = v2;

    return v2;
  }

  v12 = MEMORY[0x1E69E7CC0];
  sub_1DD28E6F4(0, result, 0);
  v2 = v12;
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  v5 = 0;
  while (1)
  {
    result = sqlite3_column_name(*(v1 + 16), v5);
    if (!result)
    {
      break;
    }

    result = sub_1DD336700();
    v6 = result;
    v8 = v7;
    v10 = *(v12 + 16);
    v9 = *(v12 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_1DD28E6F4((v9 > 1), v10 + 1, 1);
    }

    *(v12 + 16) = v10 + 1;
    v11 = v12 + 16 * v10;
    *(v11 + 32) = v6;
    *(v11 + 40) = v8;
    if (v4 == v5)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v4 == ++v5)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t Statement.columnCount.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  result = sqlite3_column_count(*(v0 + 16));
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

unint64_t sub_1DD28EFFC()
{
  sub_1DD336EC0();
  OUTLINED_FUNCTION_78_0();
  sub_1DD3366B0();
  sub_1DD336EF0();
  v0 = OUTLINED_FUNCTION_113();

  return sub_1DD28F06C(v0, v1, v2);
}

unint64_t sub_1DD28F06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DD336E00() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.failableNext()()
{
  v2 = *(v0 + 24);
  sub_1DD335860();
  v4 = sub_1DD28F184(v2, v0);
  v5 = 0;
  if (!v1 && v4)
  {
    Statement.row.getter(v6);
    sub_1DD2903CC(v6[0], v6[1]);
  }

  result.value._rawValue = v5;
  result.is_nil = v3;
  return result;
}

BOOL sub_1DD28F184(uint64_t a1, uint64_t a2)
{
  sub_1DD2846CC();
  if (qword_1EE028938 != -1)
  {
    OUTLINED_FUNCTION_1_16(&qword_1EE028938);
  }

  sub_1DD3369A0();
  v5 = sub_1DD2885B8();
  if ((v12 & 1) != 0 || v11 != v5)
  {
    v9 = *(a1 + 88);
    sub_1DD3369E0();

    if (!v2)
    {
      return v13;
    }
  }

  else
  {
    swift_beginAccess();
    v6 = sqlite3_step(*(a2 + 16));
    v7 = v6;
    sub_1DD2837A0(v6, 0);

    if (!v2)
    {
      return v7 == 100;
    }
  }

  return v8;
}

void sub_1DD28F2C8()
{
  OUTLINED_FUNCTION_54_0();
  v164 = v0;
  v165 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_30();
  v160 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C8, &qword_1DD339280);
  OUTLINED_FUNCTION_1_0();
  v158 = v10;
  v159 = v9;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_30();
  v157 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v156 = v15;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32_1();
  v155 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C0, &qword_1DD339278);
  OUTLINED_FUNCTION_1_0();
  v162 = v19;
  v163 = v18;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  v161 = v21;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Update();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v25 = v24 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_10();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_74();
  sub_1DD334490();
  OUTLINED_FUNCTION_59();
  swift_allocObject();
  sub_1DD334480();
  v31 = sub_1DD335ED0();
  OUTLINED_FUNCTION_125(v31);
  sub_1DD335710();
  OUTLINED_FUNCTION_16();
  sub_1DD28AEE0(v32, v33, MEMORY[0x1E69D2358]);
  OUTLINED_FUNCTION_23();
  v34 = sub_1DD334470();
  if (v1)
  {
  }

  else
  {
    v153 = v35;
    v154 = v5;
    v151 = v25;
    v152 = v34;

    sub_1DD335F00();
    sub_1DD336350();
    v36 = OUTLINED_FUNCTION_121();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, v37, v38);
    sub_1DD28A0C0(v2, &qword_1ECCD6608, &qword_1DD339310);
    if (EnumTagSinglePayload == 1)
    {
      v40 = 0;
      v41 = 0xF000000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_91();
      sub_1DD334480();
      sub_1DD335F00();
      sub_1DD2A3380();
      v40 = sub_1DD334470();
      v41 = v42;
      sub_1DD28A0C0(v29, &qword_1ECCD6608, &qword_1DD339310);
    }

    OUTLINED_FUNCTION_91();
    sub_1DD334480();
    v43 = sub_1DD3360A0();
    OUTLINED_FUNCTION_125(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6610, &qword_1DD339318);
    OUTLINED_FUNCTION_33();
    sub_1DD28AF70(v44, v45, v46);
    OUTLINED_FUNCTION_23();
    sub_1DD334470();

    OUTLINED_FUNCTION_91();
    sub_1DD334480();
    v47 = sub_1DD335F10();
    OUTLINED_FUNCTION_125(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6618, &qword_1DD339320);
    sub_1DD28B0F4();
    OUTLINED_FUNCTION_23();
    v150 = sub_1DD334470();
    v48 = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A0, &qword_1DD339258);
    v49 = type metadata accessor for Setter();
    OUTLINED_FUNCTION_69_0(v49);
    v51 = *(v50 + 72);
    v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1DD339210;
    v148._rawValue = v54;
    v55 = v54 + v53;
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v56, v57, v58, v59);
    sub_1DD28B474(v48, v41);
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v60, v61, v62, v63);
    sub_1DD28B488(v48, v41);
    v64 = sub_1DD336080();
    OUTLINED_FUNCTION_104(v64, v65);
    OUTLINED_FUNCTION_60_0();
    <- infix<A>(_:_:)(v66, v67, v68, v69);

    v166 = sub_1DD336030();
    v167 = v70;
    v149 = v55;
    OUTLINED_FUNCTION_65();
    <- infix<A>(_:_:)(v71, v72, v73, v74);
    sub_1DD28B488(v166, v167);
    (*(v162 + 16))(v161, v164 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupIdColumn, v163);
    sub_1DD336040();
    v75 = sub_1DD335E60();
    if (__swift_getEnumTagSinglePayload(v155, 1, v75) == 1)
    {
      sub_1DD28A0C0(v155, &qword_1ECCD6350, &unk_1DD3396F0);
      v76 = 0;
      v77 = 0;
    }

    else
    {
      v76 = sub_1DD335E40();
      v77 = v78;
      OUTLINED_FUNCTION_22();
      (*(v79 + 8))(v155, v75);
    }

    v166 = v76;
    v167 = v77;
    <- infix<A>(_:_:)(v161, &v166, &protocol witness table for String, v55 + 4 * v51);

    (*(v162 + 8))(v161, v163);
    (*(v158 + 16))(v157, v164 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupSeqColumn, v159);
    sub_1DD336040();
    v80 = OUTLINED_FUNCTION_121();
    v82 = __swift_getEnumTagSinglePayload(v80, v81, v75);
    if (v82 == 1)
    {
      sub_1DD28A0C0(v156, &qword_1ECCD6350, &unk_1DD3396F0);
      v83 = 0;
    }

    else
    {
      v83 = sub_1DD335E50();
      OUTLINED_FUNCTION_22();
      (*(v84 + 8))(v156, v75);
    }

    v166 = v83;
    LOBYTE(v167) = v82 == 1;
    <- infix<A>(_:_:)(v157, &v166, &protocol witness table for Int, v55 + 5 * v51);
    (*(v158 + 8))(v157, v159);
    v166 = OUTLINED_FUNCTION_29();
    v167 = v85;
    sub_1DD28B4F8(v166, v85);
    OUTLINED_FUNCTION_105();
    <- infix<A>(_:_:)(v86, v87, v88, v89);
    sub_1DD28B488(v166, v167);
    v90 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_onScreenSaliencyAdjustmentColumn;
    v166 = sub_1DD335FD0();
    LOBYTE(v167) = v91 & 1;
    v92 = MEMORY[0x1E69E63B0];
    <- infix<A>(_:_:)((v164 + v90), &v166, &protocol witness table for Double, v55 + 7 * v51);
    v93 = OUTLINED_FUNCTION_42_0();
    v95 = *(v94 - 256);
    v166 = v93;
    v167 = v95;
    sub_1DD28B4F8(v93, v95);
    OUTLINED_FUNCTION_105();
    <- infix<A>(_:_:)(v96, v97, v98, v99);
    sub_1DD28B488(v166, v167);
    v100 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyScoreColumn;
    sub_1DD336050();
    v166 = v101;
    <- infix<A>(_:_:)(v164 + v100, v92, &protocol witness table for Double, v149 + 9 * v51);
    v102 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyComputedAtColumn;
    sub_1DD335F90();
    sub_1DD334830();
    <- infix<A>(_:_:)((v164 + v102), v160, &protocol witness table for Date, v149 + 10 * v51);
    sub_1DD28A0C0(v160, &qword_1ECCD62A0, &unk_1DD338D70);
    type metadata accessor for Table();
    QueryType.update(_:)(v148);

    sub_1DD335860();
    v168.template._countAndFlagsBits = v151;
    v103 = Connection.run(_:)(v168);
    if (v104)
    {
      v105 = OUTLINED_FUNCTION_51_0();
      v106(v105);
      v107 = OUTLINED_FUNCTION_13();
      sub_1DD28B488(v107, v108);
      v109 = OUTLINED_FUNCTION_29();
      sub_1DD290274(v109, v110);
      sub_1DD290274(v150, v95);

      sub_1DD290274(v152, v153);
    }

    else
    {
      v111 = v103;

      v112 = v165;
      if (v111 == 1)
      {
        v113 = v154;
        v114 = sub_1DD335CB0();
        v115 = sub_1DD336940();

        if (os_log_type_enabled(v114, v115))
        {
          OUTLINED_FUNCTION_40();
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          *v116 = 138478083;
          *(v116 + 4) = v112;
          *(v116 + 12) = 2113;
          *(v116 + 14) = v113;
          *v117 = v112;
          v117[1] = v113;
          v118 = v112;
          v119 = v113;
          _os_log_impl(&dword_1DD27A000, v114, v115, "Successfully updated entity from: %{private}@ to %{private}@", v116, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6598, &unk_1DD339248);
          swift_arrayDestroy();
          v120 = OUTLINED_FUNCTION_18();
          MEMORY[0x1E12ADA30](v120);
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
          sub_1DD290274(v152, v153);

          v121 = OUTLINED_FUNCTION_42_0();
          sub_1DD290274(v121, *(v122 - 256));
          v123 = OUTLINED_FUNCTION_29();
          sub_1DD290274(v123, v124);
          v125 = OUTLINED_FUNCTION_13();
          sub_1DD28B488(v125, v126);
        }

        else
        {
          v140 = OUTLINED_FUNCTION_13();
          sub_1DD28B488(v140, v141);
          v142 = OUTLINED_FUNCTION_29();
          sub_1DD290274(v142, v143);
          v144 = OUTLINED_FUNCTION_42_0();
          sub_1DD290274(v144, *(v145 - 256));
          sub_1DD290274(v152, v153);
        }
      }

      else
      {
        v127 = sub_1DD335CB0();
        v128 = sub_1DD336950();

        if (os_log_type_enabled(v127, v128))
        {
          OUTLINED_FUNCTION_40();
          v129 = swift_slowAlloc();
          v130 = OUTLINED_FUNCTION_95();
          *v129 = 134218243;
          *(v129 + 4) = v111;
          *(v129 + 12) = 2113;
          *(v129 + 14) = v112;
          *v130 = v112;
          v131 = v112;
          _os_log_impl(&dword_1DD27A000, v127, v128, "Unexpected number of rows (%ld) were updated. entity: %{private}@", v129, 0x16u);
          sub_1DD28A0C0(v130, &qword_1ECCD6598, &unk_1DD339248);
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
        }

        v132 = sub_1DD2A2BB8();
        OUTLINED_FUNCTION_68_0(&type metadata for RREntityStorageError, v132);
        OUTLINED_FUNCTION_96(v133, 1);
        sub_1DD290274(v152, v153);
        v134 = OUTLINED_FUNCTION_42_0();
        sub_1DD290274(v134, *(v135 - 256));
        v136 = OUTLINED_FUNCTION_29();
        sub_1DD290274(v136, v137);
        v138 = OUTLINED_FUNCTION_13();
        sub_1DD28B488(v138, v139);
      }

      v146 = OUTLINED_FUNCTION_51_0();
      v147(v146);
    }
  }

  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_53();
}

id sub_1DD290050(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DD2846CC();
  if (qword_1EE028938 != -1)
  {
    OUTLINED_FUNCTION_1_16(&qword_1EE028938);
  }

  sub_1DD3369A0();
  v9 = a1;
  v10 = sub_1DD2885B8();
  if ((v14 & 1) != 0 || v13 != v10)
  {
    v9 = a1[11];
    sub_1DD3369E0();
    if (v6)
    {

      return v9;
    }

    v9 = v15;
LABEL_11:

    return v9;
  }

  OUTLINED_FUNCTION_20_10(a3);
  if (!v6)
  {

    v11 = Connection.handle.getter();
    LODWORD(v9) = sqlite3_changes(v11);

    v9 = v9;
    goto LABEL_11;
  }

  return v9;
}

uint64_t sub_1DD290274(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_3(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return Expressible.asSQL()()._countAndFlagsBits;
}

uint64_t Statement.row.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[7];
  if (v3)
  {
    result = v1[8];
LABEL_5:
    *a1 = v3;
    a1[1] = result;
    return result;
  }

  OUTLINED_FUNCTION_0_20();
  result = swift_beginAccess();
  v3 = v1[2];
  if (v3)
  {
    result = Statement.columnCount.getter();
    v1[7] = v3;
    v1[8] = result;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1DD2903CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  sub_1DD335860();
  swift_beginAccess();
  v6 = 0;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0] + 32;
  v10 = a2 & ~(a2 >> 63);
  v28 = v5;
  if (v10)
  {
    while (1)
    {
      v11 = v7 + 1;
      *v5 = v7 + 1;
      Cursor.subscript.getter(v29, v7);
      if (!v6)
      {
        v12 = v8[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v13 = a1;
        v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = (v16 + 4);
        v19 = v8[3];
        v20 = v19 >> 1;
        if (v8[2])
        {
          if (v16 != v8 || v18 >= &v8[5 * v20 + 4])
          {
            memmove(v16 + 4, v8 + 4, 40 * v20);
          }

          v8[2] = 0;
        }

        v9 = v18 + 40 * v20;
        v6 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v8 = v16;
        a1 = v13;
        v5 = v28;
      }

      v22 = __OFSUB__(v6--, 1);
      if (v22)
      {
        break;
      }

      v23 = v29[0];
      v24 = v29[1];
      *(v9 + 32) = v30;
      *v9 = v23;
      *(v9 + 16) = v24;
      v9 += 40;
      --v10;
      v7 = v11;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  v25 = v8[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v22 = __OFSUB__(v26, v6);
    v27 = v26 - v6;
    if (v22)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v8[2] = v27;
  }
}

void Cursor.subscript.getter(uint64_t *__return_ptr a1@<X8>, uint64_t iCol@<X0>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_1DD336C00();

    v21 = sub_1DD336DC0();
    MEMORY[0x1E12AC540](v21);

    OUTLINED_FUNCTION_2_12("Fatal error", v22, v23, 0xD000000000000019, 0x80000001DD33ECE0, "RRSQLite/Statement.swift");
    __break(1u);
    JUMPOUT(0x1DD2907E4);
  }

  v5 = *v2;
  switch(sqlite3_column_type(*v2, iCol))
  {
    case 1:
      v6 = OUTLINED_FUNCTION_3_19();
      v8 = sqlite3_column_int64(v6, v7);
      a1[3] = MEMORY[0x1E69E7360];
      a1[4] = &protocol witness table for Int64;
      *a1 = v8;
      return;
    case 2:
      v18 = OUTLINED_FUNCTION_3_19();
      v20 = sqlite3_column_double(v18, v19);
      a1[3] = MEMORY[0x1E69E63B0];
      a1[4] = &protocol witness table for Double;
      *a1 = v20;
      return;
    case 3:
      v9 = OUTLINED_FUNCTION_3_19();
      if (!sqlite3_column_text(v9, v10))
      {
        goto LABEL_17;
      }

      v11 = sub_1DD336710();
      a1[3] = MEMORY[0x1E69E6158];
      a1[4] = &protocol witness table for String;
      *a1 = v11;
      a1[1] = v12;
      return;
    case 4:
      a1[3] = &type metadata for Blob;
      a1[4] = &protocol witness table for Blob;
      v13 = sqlite3_column_blob(v5, v4);
      if (v13)
      {
        v14 = v13;
        v15 = OUTLINED_FUNCTION_3_19();
        v17 = sqlite3_column_bytes(v15, v16);

        Blob.init(bytes:length:)(v14, v17, a1);
      }

      else
      {
        *a1 = MEMORY[0x1E69E7CC0];
      }

      return;
    case 5:
      a1[4] = 0;
      *a1 = 0u;
      *(a1 + 1) = 0u;
      return;
    default:
      goto LABEL_18;
  }
}

void *Blob.init(bytes:length:)@<X0>(void *result@<X0>, int64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = result;
    if (a2 < 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6688, &qword_1DD339378);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      v6[2] = a2;
      v6[3] = 2 * v7 - 64;
    }

    result = memcpy(v6 + 4, v5, a2);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DD290894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_6_10(v2);
}

unint64_t OUTLINED_FUNCTION_6_3()
{

  return sub_1DD28EFFC();
}

unint64_t OUTLINED_FUNCTION_6_5(float a1)
{
  *v2 = a1;

  return sub_1DD27DBF0(v3, v1, (v4 - 104));
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return sub_1DD336BA0();
}

uint64_t OUTLINED_FUNCTION_6_8(unint64_t *a1)
{

  return sub_1DD2FC200(a1, v1, v2);
}

double OUTLINED_FUNCTION_6_11@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v7 + 48) = a2;
  *(v7 + 56) = a1;
  *v2 = 0;
  *(v2 + 8) = v7;
  *(v2 + 16) = v6;
  *(v2 + 24) = v5;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;
  *(v2 + 64) = a2;
  result = 0.0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 128) = a2;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 256;
  *(v2 + 160) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_13@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 160) = v2;
  *(v5 - 152) = v3;
  *(v5 - 144) = v4;
  *(v5 - 136) = result;
  *(v5 - 128) = a2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void (*sub_1DD290A3C())(void)
{
  OUTLINED_FUNCTION_58();
  v190 = v0;
  v215 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_50_0(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v17);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65E0, &qword_1DD339298);
  OUTLINED_FUNCTION_1_0();
  v196 = v18;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_50_0(v20);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D8, &qword_1DD339290);
  OUTLINED_FUNCTION_1_0();
  v197 = v21;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30();
  v221 = v23;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D0, &qword_1DD339288);
  OUTLINED_FUNCTION_1_0();
  v202 = v24;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_30();
  v228 = v26;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C8, &qword_1DD339280);
  OUTLINED_FUNCTION_1_0();
  v198 = v27;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30();
  v225 = v29;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C0, &qword_1DD339278);
  OUTLINED_FUNCTION_1_0();
  v201 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_35();
  v226 = v33;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32_1();
  v222 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65B8, &qword_1DD339270);
  OUTLINED_FUNCTION_1_0();
  v205 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_6();
  v224 = v39;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_35();
  v227 = v41;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_35();
  v223 = v43;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = (v184 - v45);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65B0, &qword_1DD339268);
  OUTLINED_FUNCTION_1_0();
  v206 = v47;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_50_0(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A8, &qword_1DD339260);
  OUTLINED_FUNCTION_1_0();
  v209 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_72();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_27();
  v200 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1_0();
  v208 = v54;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_12();
  v58 = v57 - v56;
  v235 = type metadata accessor for RRSQLiteStorage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6560, &unk_1DD339220);
  sub_1DD336630();
  v207 = v58;
  sub_1DD335CC0();
  sub_1DD292C50(&qword_1EE028790, &qword_1ECCD65A8, &qword_1DD339260);
  v204 = v3;
  OUTLINED_FUNCTION_105();
  ExpressionType.init(_:)(v59, v60, v61, v62);
  OUTLINED_FUNCTION_57();
  v203 = v2;
  OUTLINED_FUNCTION_105();
  v199 = v50;
  ExpressionType.init(_:)(v63, v64, v65, v66);
  v67 = v219;
  sub_1DD292C50(qword_1EE0287C0, &qword_1ECCD65B0, &qword_1DD339268);
  v68 = OUTLINED_FUNCTION_78();
  ExpressionType.init(_:)(v68, 0xE900000000000079, v67, v69);
  v70 = sub_1DD292C50(&qword_1EE0287B0, &qword_1ECCD65B8, &qword_1DD339270);
  v71 = OUTLINED_FUNCTION_102();
  v210 = v46;
  v72 = v214;
  OUTLINED_FUNCTION_90(v71, 0xEA00000000006575);
  sub_1DD292C50(&qword_1EE028780, &qword_1ECCD65C0, &qword_1DD339278);
  v73 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_89(v73, 0xE800000000000000);
  OUTLINED_FUNCTION_90(1635017060, 0xE400000000000000);
  v74 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_89(v74, 0xE700000000000000);
  sub_1DD292C50(&qword_1EE028750, &qword_1ECCD65C8, &qword_1DD339280);
  v75 = OUTLINED_FUNCTION_77_0();
  ExpressionType.init(_:)(v75, 0xE800000000000000, v218, v76);
  v77 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_90(v77, 0xE800000000000000);
  v78 = OUTLINED_FUNCTION_55_1();
  ExpressionType.init(_:)(v78, v79, v36, v70);
  sub_1DD292C50(&qword_1EE028770, &qword_1ECCD65D0, &qword_1DD339288);
  v80 = OUTLINED_FUNCTION_39();
  ExpressionType.init(_:)(v80, v81, v217, v82);
  v83 = sub_1DD292C50(&qword_1EE0287A0, &qword_1ECCD65D8, &qword_1DD339290);
  ExpressionType.init(_:)(0xD000000000000012, 0x80000001DD33D1E0, v216, v83);
  v84 = sub_1DD292C50(&qword_1EE028760, &qword_1ECCD65E0, &qword_1DD339298);
  v85 = v213;
  ExpressionType.init(_:)(0xD00000000000001ALL, 0x80000001DD33D200, v213, v84);
  v86 = v212;
  OUTLINED_FUNCTION_89(0x644972657375, 0xE600000000000000);
  v87 = sub_1DD334460();
  OUTLINED_FUNCTION_59();
  swift_allocObject();
  v88 = sub_1DD334450();
  v89 = v215;
  v90 = v215;
  OUTLINED_FUNCTION_87_0();
  Row.get<A>(_:)();
  if (v1)
  {
    v211 = v1;

    type metadata accessor for Row();
    OUTLINED_FUNCTION_4_0();
    (*(v91 + 8))(v90);
    OUTLINED_FUNCTION_122_0();
    v88(v86, v72);
    OUTLINED_FUNCTION_21();
    v92(v220, v85);
    v93 = OUTLINED_FUNCTION_2_1();
    v94(v93);
    v95 = OUTLINED_FUNCTION_7();
    v96(v95);
    v97 = OUTLINED_FUNCTION_45_0();
    v89(v97, v36);
    v89(v227, v36);
    v98 = OUTLINED_FUNCTION_3_1();
    v99(v98);
    v100 = OUTLINED_FUNCTION_85();
    (v88)(v100);
    v89(v223, v36);
    v101 = OUTLINED_FUNCTION_116();
    (v88)(v101);
    v102 = OUTLINED_FUNCTION_56();
    v89(v102, v36);
    v103 = OUTLINED_FUNCTION_5_0();
    v104(v103);
    v105 = *(v209 + 8);
    OUTLINED_FUNCTION_67();
    v105();
    v106 = OUTLINED_FUNCTION_62();
    (v105)(v106, v1);
    OUTLINED_FUNCTION_21();
    v107 = OUTLINED_FUNCTION_114();
    v108(v107);
  }

  else
  {
    v187 = v87;
    v188 = v36;
    sub_1DD335710();
    v109 = v235;
    v110 = v236;
    OUTLINED_FUNCTION_16();
    sub_1DD28AEE0(v111, v112, MEMORY[0x1E69D2360]);
    OUTLINED_FUNCTION_41();
    sub_1DD334440();

    sub_1DD290274(v109, v110);
    v113 = v233;
    sub_1DD336350();
    OUTLINED_FUNCTION_134(v195, 1);
    Row.get<A>(_:)(v210, MEMORY[0x1E6969080], &protocol witness table for Data, &v235);
    OUTLINED_FUNCTION_58();
    v186 = v113;
    if (v236 >> 60 == 15)
    {
      v115 = v225;
      v114 = v226;
    }

    else
    {
      v116 = OUTLINED_FUNCTION_47();
      sub_1DD28B4F8(v116, v117);
      v118 = sub_1DD335CB0();
      v119 = sub_1DD336940();
      v120 = OUTLINED_FUNCTION_47();
      sub_1DD28B488(v120, v121);
      if (os_log_type_enabled(v118, v119))
      {
        OUTLINED_FUNCTION_34_0();
        v122 = swift_slowAlloc();
        OUTLINED_FUNCTION_26();
        v185 = swift_slowAlloc();
        v235 = v185;
        *v122 = 136315138;
        v123 = OUTLINED_FUNCTION_47();
        sub_1DD28B4F8(v123, v124);
        OUTLINED_FUNCTION_47();
        v125 = sub_1DD334760();
        v127 = v126;
        v128 = OUTLINED_FUNCTION_47();
        sub_1DD28B488(v128, v129);
        v130 = sub_1DD27DBF0(v125, v127, &v235);

        *(v122 + 4) = v130;
        _os_log_impl(&dword_1DD27A000, v118, v119, "unwrappedTypedValue: %s", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v185);
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
      }

      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_59();
      swift_allocObject();
      sub_1DD334450();
      sub_1DD28AEE0(&qword_1ECCD6670, MEMORY[0x1E69DAE88], MEMORY[0x1E69DAEA8]);
      v131 = v193;
      OUTLINED_FUNCTION_87_0();
      sub_1DD334440();
      OUTLINED_FUNCTION_58();
      v132 = v195;
      sub_1DD28A0C0(v195, &qword_1ECCD6608, &qword_1DD339310);
      v133 = OUTLINED_FUNCTION_47();
      sub_1DD28B488(v133, v134);

      OUTLINED_FUNCTION_134(v131, 0);
      sub_1DD2A343C(v131, v132, &qword_1ECCD6608, &qword_1DD339310);
      v115 = v225;
      v114 = v226;
    }

    sub_1DD335E60();
    v135 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_134(v135, 1);
    Row.subscript.getter(v114, MEMORY[0x1E69E6158], &protocol witness table for String, &v235);
    if (v236)
    {
      Row.subscript.getter(v115, MEMORY[0x1E69E6530], &protocol witness table for Int, &v235);
      if (v236)
      {
      }

      else
      {
        v136 = v192;
        OUTLINED_FUNCTION_47();
        sub_1DD335E30();
        v137 = v194;
        OUTLINED_FUNCTION_83_1();
        sub_1DD28A0C0(v138, v139, v140);
        OUTLINED_FUNCTION_134(v136, 0);
        sub_1DD2A343C(v136, v137, &qword_1ECCD6350, &unk_1DD3396F0);
      }
    }

    Row.subscript.getter(v227, MEMORY[0x1E6969080], &protocol witness table for Data, &v235);
    v141 = v236;
    if (v236 >> 60 != 15)
    {
      v143 = v235;
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_59();
      swift_allocObject();
      sub_1DD334450();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6610, &qword_1DD339318);
      sub_1DD28AF70(&qword_1EE027ED8, &qword_1EE027F48, MEMORY[0x1E69D2820]);
      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_87_0();
      sub_1DD334440();
      OUTLINED_FUNCTION_58();
      sub_1DD28B488(v143, v141);
    }

    v142 = v224;
    sub_1DD3360E0();
    sub_1DD336530();
    Row.subscript.getter(v142, MEMORY[0x1E6969080], &protocol witness table for Data, &v235);
    if (v236 >> 60 != 15)
    {

      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_59();
      swift_allocObject();
      sub_1DD334450();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6618, &qword_1DD339320);
      sub_1DD293D4C();
      OUTLINED_FUNCTION_87_0();
      sub_1DD334440();
      OUTLINED_FUNCTION_58();
      v144 = OUTLINED_FUNCTION_79_0();
      sub_1DD28B488(v144, v145);
    }

    v146 = v215;
    OUTLINED_FUNCTION_87_0();
    Row.get<A>(_:)();
    v148 = v235;
    Row.get<A>(_:)();
    v184[3] = v148;
    v184[2] = v233;
    v193 = v234;
    v149 = OUTLINED_FUNCTION_49();
    sub_1DD27F118(v149, v191, v150, v151);
    Row.subscript.getter(v222, MEMORY[0x1E69E6158], &protocol witness table for String, v232);
    v184[1] = v232[0];
    v192 = v232[1];
    Row.subscript.getter(v223, MEMORY[0x1E6969080], &protocol witness table for Data, v231);
    v187 = v231[0];
    v185 = v231[1];
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_67();
    sub_1DD27F118(v152, v153, v154, v155);
    Row.get<A>(_:)();
    OUTLINED_FUNCTION_58();
    v156 = sub_1DD334830();
    Row.subscript.getter(v221, v156, &protocol witness table for Date, v189);
    Row.subscript.getter(v220, MEMORY[0x1E69E63B0], &protocol witness table for Double, &v230);
    v157 = v212;
    Row.subscript.getter(v212, MEMORY[0x1E69E6158], &protocol witness table for String, &v229);
    v105 = sub_1DD335FF0();
    type metadata accessor for Row();
    OUTLINED_FUNCTION_4_0();
    (*(v158 + 8))(v146);
    v159 = OUTLINED_FUNCTION_48_0();
    sub_1DD28A0C0(v159, v160, v161);
    v162 = OUTLINED_FUNCTION_49();
    sub_1DD28A0C0(v162, v163, v164);
    v165 = *(v201 + 8);
    v166 = v214;
    v165(v157, v214);
    v167 = OUTLINED_FUNCTION_0_0();
    v168(v167);
    v169 = OUTLINED_FUNCTION_2_1();
    v170(v169);
    v171 = OUTLINED_FUNCTION_7();
    v172(v171);
    v173 = *(v205 + 8);
    v174 = v188;
    v173(v224, v188);
    v173(v227, v174);
    v175 = OUTLINED_FUNCTION_3_1();
    v176(v175);
    v165(v226, v166);
    v173(v223, v174);
    v165(v222, v166);
    v177 = OUTLINED_FUNCTION_56();
    v173(v177, v174);
    v178 = OUTLINED_FUNCTION_5_0();
    v179(v178);
    v180 = *(v209 + 8);
    OUTLINED_FUNCTION_67();
    v180();
    v181 = OUTLINED_FUNCTION_62();
    (v180)(v181, v173);
    OUTLINED_FUNCTION_21();
    v182 = OUTLINED_FUNCTION_114();
    v183(v182);
  }

  return v105;
}

uint64_t OUTLINED_FUNCTION_36_1(uint64_t a1)
{

  return sub_1DD336830();
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t a1)
{
  *(v2 - 152) = v1;

  return MEMORY[0x1EEE69108](v1, a1);
}

uint64_t OUTLINED_FUNCTION_36_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1)
{

  return swift_once();
}

uint64_t type metadata accessor for RRSQLiteStorage(uint64_t a1)
{
  result = qword_1EE029080;
  if (!qword_1EE029080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD292C50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Expression.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_95()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_95_0(uint64_t a1, const char *a2)
{
  v4 = *(v2 - 200);

  return [v4 a2];
}

id OUTLINED_FUNCTION_95_1()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_89(uint64_t a1, uint64_t a2)
{

  return ExpressionType.init(_:)(a1, a2, v3, v2);
}

id OUTLINED_FUNCTION_89_0()
{
  v3 = *(v0 + 56);

  return [v1 v3];
}

unint64_t OUTLINED_FUNCTION_89_1()
{

  return sub_1DD27DBF0(v0, v1, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_89_2()
{
}

uint64_t OUTLINED_FUNCTION_89_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_94(uint64_t a1, uint64_t a2)
{

  return ExpressionType.init(_:)(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_94_0()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 - 144));
}

uint64_t OUTLINED_FUNCTION_94_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_94_3()
{

  return sub_1DD336AD0();
}

uint64_t OUTLINED_FUNCTION_110_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD336AD0();
}

void *OUTLINED_FUNCTION_109_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char __dst, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va1, a32);
  va_start(__srca, a32);
  __src = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_85_2(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;

  return sub_1DD2B3464(v4, v6, 0xE500000000000000, a4);
}

uint64_t OUTLINED_FUNCTION_85_3(uint64_t a1, uint64_t a2)
{

  return sub_1DD336AD0();
}

void OUTLINED_FUNCTION_107_1()
{

  sub_1DD28C838(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return sub_1DD335FC0();
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return sub_1DD2A34A0();
}

void *OUTLINED_FUNCTION_42_4(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v3;
  result[5] = v1;
  result[6] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 144) = a5;
  *(v6 - 136) = a6;
  *(v6 - 72) = a3;
  *(v6 - 128) = result;
  return result;
}

id OUTLINED_FUNCTION_42_6(void *a1)
{

  return [a1 mediaSubType];
}

void Row.get<A>(_:)()
{
  OUTLINED_FUNCTION_54_0();
  v31 = v3;
  v32 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1DD336AD0();
  OUTLINED_FUNCTION_8_9();
  v30 = v9;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v14 = *v7;
  v13 = v7[1];
  v15 = v7[2];
  v39 = *v0;
  type metadata accessor for Expression(0, v8, v16, v17);
  v33 = v14;
  v34 = v13;
  v35 = v15;
  type metadata accessor for Expression(0, v5, v18, v19);

  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_83_1();
  ExpressionType.init<A>(_:)(v21, v22, v23, WitnessTable, v24);
  v33 = v36;
  v34 = v37;
  v35 = v38;
  Row.get<A>(_:)(&v33, v5, v32, v12);

  if (!v1)
  {
    v26 = v30;
    v25 = v31;
    if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
    {
      (*(v26 + 8))(v12, v8);
      sub_1DD3134EC();
      swift_allocError();
      *v27 = v14;
      *(v27 + 8) = v13;
      *(v27 + 16) = 0;
      *(v27 + 24) = 3;
      swift_willThrow();
    }

    else
    {
      OUTLINED_FUNCTION_22();
      (*(v28 + 32))(v25, v12, v5);
    }
  }

  OUTLINED_FUNCTION_53();
}

uint64_t ExpressionType.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 24))(a3, a5);
  v12 = v11;
  v13 = (*(a5 + 32))(a3, a5);
  (*(a4 + 40))(v10, v12, v13, a2, a4);
  OUTLINED_FUNCTION_22();
  v15 = *(v14 + 8);

  return v15(a1, a3);
}

uint64_t Row.get<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = *v4;
  v11 = v4[1];
  swift_bridgeObjectRetain_n();
  v46 = v9;
  v12 = OUTLINED_FUNCTION_62_4();
  v14 = sub_1DD293628(v12, v13, v10);
  if ((v15 & 1) == 0)
  {
    v28 = v14;
    swift_bridgeObjectRelease_n();
    v29 = a4;
    v30 = v28;
    v31 = v11;
    v32 = a2;
    return sub_1DD293740(v30, v31, v32, a3, v29);
  }

  v40 = v11;
  v44 = v8;

  v41 = v10;
  result = sub_1DD312C88(v16);
  v18 = result;
  v19 = 0;
  v45 = *(result + 16);
  v20 = (result + 40);
  v21 = MEMORY[0x1E69E7CC0];
  v42 = a3;
  v43 = a2;
  while (v45 != v19)
  {
    if (v19 >= *(v18 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v23 = *(v20 - 1);
    v22 = *v20;
    v47[0] = v23;
    v47[1] = v22;

    if (sub_1DD312D14(v47, v46, v44))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v48 = v21;
      if ((result & 1) == 0)
      {
        result = sub_1DD28E6F4(0, *(v21 + 2) + 1, 1);
        v21 = v48;
      }

      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      if (v25 >= v24 >> 1)
      {
        v27 = OUTLINED_FUNCTION_45(v24);
        result = sub_1DD28E6F4(v27, v25 + 1, 1);
        v21 = v48;
      }

      *(v21 + 2) = v25 + 1;
      v26 = &v21[16 * v25];
      *(v26 + 4) = v23;
      *(v26 + 5) = v22;
      a3 = v42;
    }

    else
    {
    }

    v20 += 2;
    ++v19;
  }

  v33 = *(v21 + 2);

  if (!v33)
  {

    v21 = sub_1DD312D8C(v41);
    v38 = 1;
LABEL_22:
    sub_1DD3134EC();
    swift_allocError();
    *v39 = v46;
    *(v39 + 8) = v44;
    *(v39 + 16) = v21;
    *(v39 + 24) = v38;
    return swift_willThrow();
  }

  if (v33 != 1)
  {
    v38 = 2;
    goto LABEL_22;
  }

  if (!*(v21 + 2))
  {
    goto LABEL_24;
  }

  v34 = *(v21 + 4);
  v35 = *(v21 + 5);

  sub_1DD293628(v34, v35, v41);
  v37 = v36;

  if ((v37 & 1) == 0)
  {

    v30 = OUTLINED_FUNCTION_34_7();
    v31 = v40;
    v32 = v43;
    return sub_1DD293740(v30, v31, v32, a3, v29);
  }

LABEL_25:
  __break(1u);
  return result;
}