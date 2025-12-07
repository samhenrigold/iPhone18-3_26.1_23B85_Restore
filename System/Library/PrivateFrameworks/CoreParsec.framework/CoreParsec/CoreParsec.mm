char *PARSessionSwiftInternal.init(session:configuration:connection:delegate:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = OBJC_IVAR___PARSessionSwiftInternal_lock;
  *&v4[v9] = swift_slowAlloc();
  v59 = OBJC_IVAR___PARSessionSwiftInternal__mapsListener;
  *&v4[OBJC_IVAR___PARSessionSwiftInternal__mapsListener] = 0;
  *&v4[OBJC_IVAR___PARSessionSwiftInternal__bag] = 0;
  v4[OBJC_IVAR___PARSessionSwiftInternal__sampled] = 0;
  *&v4[OBJC_IVAR___PARSessionSwiftInternal__sampleClientTimingEventAllowlist] = 0;
  v10 = OBJC_IVAR___PARSessionSwiftInternal_activityMonitor;
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  *&v4[v10] = sub_1B1066358();
  v11 = &v4[OBJC_IVAR___PARSessionSwiftInternal__deviceContext];
  type metadata accessor for DeviceContext();
  swift_allocObject();
  *v11 = sub_1B106655C();
  v11[1] = &off_1F27787B8;
  *&v4[OBJC_IVAR___PARSessionSwiftInternal_skappToken] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  **&v4[v9] = 0;
  *&v4[OBJC_IVAR___PARSessionSwiftInternal__configuration] = a2;
  swift_unknownObjectWeakAssign();
  v12 = objc_opt_self();
  v13 = a2;
  v14 = [v12 defaultManager];
  *&v5[OBJC_IVAR___PARSessionSwiftInternal_fileManager] = v14;
  if (a3)
  {
    v15 = objc_allocWithZone(type metadata accessor for PARSearchClient());
    PARSearchClient.init(connection:)(a3);
    *&v5[OBJC_IVAR___PARSessionSwiftInternal_client] = v16;
  }

  else
  {
    if (qword_1EDAD60E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = qword_1EDAD60F8;
    *&v5[OBJC_IVAR___PARSessionSwiftInternal_client] = qword_1EDAD60F8;
    v18 = v17;
  }

  swift_unknownObjectWeakAssign();
  v19 = [v13 userAgent];
  v20 = sub_1B1122A5C();
  v22 = v21;

  v63 = v20;
  v64 = v22;
  v61 = 0x6867696C746F7073;
  v62 = 0xE900000000000074;
  v23 = sub_1B1067A94();
  LOBYTE(v19) = OUTLINED_FUNCTION_14_0(v23, MEMORY[0x1E69E6158], v24, v25, v26, v27, v28);

  if (v19)
  {
    v29 = 1;
LABEL_12:
    v52 = [objc_allocWithZone(MEMORY[0x1E69A2568]) initWithClientType_];
    v53 = *&v5[v59];
    *&v5[v59] = v52;

    goto LABEL_13;
  }

  v30 = [v13 userAgent];
  v31 = sub_1B1122A5C();
  v33 = v32;

  v63 = v31;
  v64 = v33;
  OUTLINED_FUNCTION_53_0();
  v61 = v34;
  v62 = v35;
  LOBYTE(v30) = OUTLINED_FUNCTION_14_0(v36, MEMORY[0x1E69E6158], v37, v38, v39, v40, v41);

  if (v30)
  {
    v29 = 2;
    goto LABEL_12;
  }

  v42 = [v13 userAgent];
  v43 = sub_1B1122A5C();
  v45 = v44;

  v63 = v43;
  v64 = v45;
  v61 = 1769105779;
  v62 = 0xE400000000000000;
  LOBYTE(v42) = OUTLINED_FUNCTION_14_0(v46, MEMORY[0x1E69E6158], v47, v48, v49, v50, v51);

  if (v42)
  {
    v29 = 3;
    goto LABEL_12;
  }

LABEL_13:
  v60.receiver = v5;
  v60.super_class = type metadata accessor for PARSessionSwiftInternal();
  v54 = objc_msgSendSuper2(&v60, sel_init);
  v55 = *&v54[OBJC_IVAR___PARSessionSwiftInternal_client];
  v56 = v54;
  v57 = v55;
  sub_1B1067B94(v56);

  swift_unknownObjectRelease();
  return v56;
}

void __checkValidParsecHost_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskGetCodeSignStatus(v0) & 0x4000001;
    checkValidParsecHost_isValidHost = v2 == 67108865;
    if (v2 != 67108865)
    {
      if (MGGetBoolAnswer())
      {
        v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.private.parsec.default-client", 0);
        if (v3)
        {
          v4 = v3;
          v5 = CFGetTypeID(v3);
          if (v5 == CFStringGetTypeID())
          {
            v6 = [v4 length];
            CFRelease(v4);
            if (v6)
            {
              checkValidParsecHost_isValidHost = 1;
            }
          }

          else
          {
            CFRelease(v4);
          }
        }
      }
    }

    CFRelease(v1);
  }
}

void *sub_1B1066358()
{
  OUTLINED_FUNCTION_0_9();
  type metadata accessor for Locker();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  v1[4] = v2;
  v1[5] = v4;
  v1[3] = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_9()
{
  *(v0 + 24) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1B106655C()
{
  v1 = v0;
  v2 = sub_1B11219AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v6 = [objc_opt_self() currentLocale];
  sub_1B112199C();

  v7 = sub_1B112198C();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *(v1 + 16) = v7;
  *(v1 + 24) = v9;

  v10 = [objc_opt_self() sharedConfiguration];
  if (v10)
  {
    v10 = sub_1B10666E0(v10);
  }

  else
  {
    v11 = 0;
  }

  *(v1 + 32) = v10;
  *(v1 + 40) = v11;

  *(v1 + 48) = sub_1B112271C();
  *(v1 + 56) = v12;

  *(v1 + 64) = sub_1B112272C();
  *(v1 + 72) = v13;

  return v1;
}

uint64_t sub_1B10666E0(void *a1)
{
  v2 = [a1 countryCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1122A5C();

  return v3;
}

id sub_1B1066750(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for PARSearchClient()) init];
  qword_1EDAD60F8 = result;
  return result;
}

uint64_t PARSearchClient.init()()
{
  sub_1B1066864(0, qword_1EDAD6030, 0x1E696B0B8);
  v0 = sub_1B10668A4();
  v1 = objc_allocWithZone(type metadata accessor for PARSearchClient());
  PARSearchClient.init(connection:)(v0);
  v3 = v2;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1B1066864(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_1B10668A4()
{
  OUTLINED_FUNCTION_25_1();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_69();
  v2 = sub_1B1122A4C();

  v3 = [v1 initWithMachServiceName:v2 options:v0];

  return v3;
}

void PARSearchClient.init(connection:)(uint64_t a1)
{
  OUTLINED_FUNCTION_57();
  v23 = v3;
  v4 = sub_1B1122E1C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_1();
  sub_1B1122E0C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v9 = sub_1B11229BC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_2();
  *&v1[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_sessions] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_imageLoader] = 0;
  *&v1[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_receivingStreamDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC10CoreParsec15PARSearchClient_queue;
  sub_1B1066864(0, &qword_1EDAD6020, 0x1E69E9610);
  sub_1B11229AC();
  v24[0] = 0;
  sub_1B1067610(&qword_1EDAD6028, MEMORY[0x1E69E8030], MEMORY[0x1E69E8048]);
  sub_1B112317C();
  (*(v6 + 104))(v2, *MEMORY[0x1E69E8098], v4);
  *&v1[v10] = sub_1B1122E3C();
  *&v1[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection] = v23;
  v25.receiver = v1;
  v25.super_class = type metadata accessor for PARSearchClient();
  v11 = v23;
  v12 = objc_msgSendSuper2(&v25, sel_init);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 interfaceWithProtocol_];
  [v11 setExportedInterface_];

  v16 = [v13 interfaceWithProtocol_];
  [v11 setRemoteObjectInterface_];

  v17 = OUTLINED_FUNCTION_1();
  [v17 v18];
  v19 = qword_1EDAD5DF0;
  v20 = v14;
  if (v19 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
  }

  v21 = qword_1EDAD64F0;
  type metadata accessor for PARImageLoader();
  memset(v24, 0, 40);
  v22 = swift_allocObject();
  *&v20[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_imageLoader] = sub_1B1067008(v20, v20, v21, v24, v22);

  [v11 resume];

  OUTLINED_FUNCTION_4_2();
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_0()
{

  JUMPOUT(0x1B272EDD0);
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1)
{

  return sub_1B112303C();
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B10A429C(a2, a3);
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_1B1122BAC();
}

uint64_t sub_1B1066F70()
{
  sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
  result = sub_1B1122ECC();
  qword_1EDAD64F0 = result;
  return result;
}

void *sub_1B1067008(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  a5[2] = a3;
  type metadata accessor for FeedbackReporter();
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 24) = &off_1F2778210;
  swift_unknownObjectWeakInit();
  v12 = a3;

  *(v10 + 16) = sub_1B10A3160;
  *(v10 + 24) = v11;
  a5[3] = v10;
  type metadata accessor for URLValidator();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  a5[4] = v13;
  type metadata accessor for ImageIDToURL();
  v14 = swift_allocObject();

  a5[5] = sub_1B1067358(a2, v14);
  sub_1B106752C();
  if (v21)
  {
    sub_1B1068D4C(&v20, v22);
  }

  else
  {
    v15 = sub_1B10677E4();
    v16 = [objc_opt_self() sessionWithConfiguration_];

    sub_1B1122DAC();
  }

  sub_1B1067888(v22, &v20);
  v17 = swift_allocObject();
  sub_1B1068D4C(&v20, v17 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A2C0, &unk_1B1134C10);
  swift_allocObject();
  v18 = sub_1B1068D7C(-1, sub_1B1082A68, 0, &unk_1B1134C08, v17);

  sub_1B1067964(a4, &qword_1EB73A2B8, &qword_1B1134C00);
  __swift_destroy_boxed_opaque_existential_1(v22);
  a5[6] = v18;
  return a5;
}

uint64_t sub_1B1067284()
{
  MEMORY[0x1B272EE80](v0 + 16);
  v1 = OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B10672B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1067358(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = &off_1F2778200;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A2C8, &qword_1B1134C28);
  swift_allocObject();
  v5 = sub_1B1067794(-1, &unk_1B1134C20, v4);

  *(a2 + 16) = v5;
  return a2;
}

void sub_1B1067478(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB739D08, &qword_1B1134350);
  sub_1B1122C8C();
  if (v1 <= 0x3F)
  {
    sub_1B106771C(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B106752C()
{
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_11();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_slowAlloc();
}

uint64_t sub_1B1067610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B1067660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FetchOnceState(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B106771C(uint64_t a1)
{
  if (!qword_1EDAD5BE8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB739D08, &qword_1B1134350);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDAD5BE8);
    }
  }
}

uint64_t sub_1B1067794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 3;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  return v3;
}

id sub_1B10677E4()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  [v0 setHTTPCookieStorage_];
  [v0 setURLCredentialStorage_];
  [v0 set:1 expiredDNSBehavior:?];
  [v0 set:1 usesNWLoader:?];
  [v0 set:1 disableAPWakeOnIdleConnections:?];
  return v0;
}

uint64_t sub_1B1067888(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B1067964(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_3@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 5;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return sub_1B112223C();
}

unint64_t sub_1B1067A94()
{
  result = qword_1EDAD6100;
  if (!qword_1EDAD6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD6100);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_1B1122F2C();
}

uint64_t OUTLINED_FUNCTION_52_0()
{
  *v0 = v1;

  return swift_storeEnumTagMultiPayload();
}

void sub_1B1067B94(uint64_t a1)
{
  OUTLINED_FUNCTION_57();
  sub_1B112298C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_45();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_50_0();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v1;
  v18[4] = sub_1B1068A24;
  v18[5] = v9;
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_13_2(COERCE_DOUBLE(1107296256));
  v18[2] = v10;
  v18[3] = &block_descriptor_314;
  v11 = _Block_copy(v18);

  v12 = v1;
  sub_1B112299C();
  OUTLINED_FUNCTION_17_1();
  sub_1B1067610(v13, v14, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB73A1E8, &unk_1B11348D0);
  sub_1B1067F54();
  OUTLINED_FUNCTION_20_1();
  sub_1B1122F5C();
  v15 = OUTLINED_FUNCTION_60_0();
  MEMORY[0x1B272DE10](v15);
  _Block_release(v11);
  v16 = OUTLINED_FUNCTION_0_5();
  v17(v16);
  (*(v6 + 8))(v2, v4);

  OUTLINED_FUNCTION_4_2();
}

uint64_t sub_1B1067DC8()
{
  MEMORY[0x1B272EE80](v0 + 16);
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B1067DFC()
{

  v1 = OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v1);
}

id OUTLINED_FUNCTION_74(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_43_0(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  os_unfair_lock_lock(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B1067F54()
{
  result = qword_1EDAD5D50;
  if (!qword_1EDAD5D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB73A1E8, &unk_1B11348D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5D50);
  }

  return result;
}

id OUTLINED_FUNCTION_61()
{

  return [v1 (v0 + 1408)];
}

id sub_1B1068078()
{
  OUTLINED_FUNCTION_43_0(OBJC_IVAR___PARSessionSwiftInternal_lock);
  v2 = *(v1 + OBJC_IVAR___PARSessionSwiftInternal__configuration);
  os_unfair_lock_unlock(v0);
  return v2;
}

void sub_1B10680C0()
{
  v1 = *&v0[OBJC_IVAR___PARSessionSwiftInternal_client];
  v2 = sub_1B1068078();
  sub_1B1068120(v2, v1, v0);
}

void sub_1B1068120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_41_1();
  v5 = v4;
  v7 = v6;
  v44 = v8;
  v9 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38_1();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_45();
  v48 = swift_allocObject();
  *(v48 + 16) = v5;
  v19 = qword_1EDAD60C0;
  v47 = v5;
  if (v19 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
  }

  v20 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v20, qword_1EDAD60D0);
  v21 = sub_1B112293C();
  v22 = sub_1B1122DFC();
  if (OUTLINED_FUNCTION_60(v22))
  {
    *OUTLINED_FUNCTION_37() = 0;
    OUTLINED_FUNCTION_87(&dword_1B1064000, v23, v24, "requesting bag");
    OUTLINED_FUNCTION_2_0();
  }

  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
  }

  qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  OUTLINED_FUNCTION_75();
  sub_1B112285C();
  v25 = *(v7 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v26 = v3;
  v27 = *(v11 + 16);
  v46 = v26;
  v27(v17);
  v28 = *(v11 + 80);
  v43 = v13;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B106EB48;
  *(v29 + 24) = v48;
  v49 = v11;
  v30 = v9;
  v31 = *(v11 + 32);
  v45 = v30;
  v31(v29 + ((v28 + 32) & ~v28), v17);
  v54 = sub_1B10A3734;
  v55 = v29;
  OUTLINED_FUNCTION_3_6();
  v51[1] = 1107296256;
  OUTLINED_FUNCTION_3();
  v52 = v32;
  v53 = &block_descriptor_298;
  v33 = _Block_copy(v51);

  [v25 remoteObjectProxyWithErrorHandler_];
  _Block_release(v33);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_53_1())
  {
    (v27)(v17, v46, v45);
    v34 = (v28 + 16) & ~v28;
    v35 = swift_allocObject();
    (v31)(v35 + v34, v17, v45);
    v36 = (v35 + ((v43 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v36 = sub_1B106EB48;
    v36[1] = v48;
    v54 = sub_1B106E8B4;
    v55 = v35;
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_12_2();
    v52 = v37;
    v53 = &block_descriptor_305;
    v38 = _Block_copy(v51);

    [v50 bag:v44 reply:v38];
    _Block_release(v38);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B1122E4C();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v40 = OUTLINED_FUNCTION_62(v39);
    *(v40 + 16) = xmmword_1B1133BA0;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v40 + 32) = v41;
    *(v40 + 40) = v42;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_75();
    sub_1B112284C();
  }

  (*(v49 + 8))(v46, v45);

  OUTLINED_FUNCTION_30();
}

uint64_t sub_1B10685F4()
{
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t OUTLINED_FUNCTION_41()
{
}

unint64_t OUTLINED_FUNCTION_41_0()
{
  v4 = *(v2 - 144) == 0;

  return sub_1B1097E08(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_40_1()
{

  JUMPOUT(0x1B272EDD0);
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return sub_1B1122BAC();
}

BOOL OUTLINED_FUNCTION_60(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_1B1121FEC();
}

uint64_t sub_1B10687B4()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EDAD60D0);
  __swift_project_value_buffer(v0, qword_1EDAD60D0);
  return sub_1B112295C();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id OUTLINED_FUNCTION_59()
{

  return [v1 (v0 + 1408)];
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *(v5 - 128);
  v8 = *(v5 - 112);

  return sub_1B10A54FC(a1, a2, v7, v8, a5);
}

uint64_t sub_1B10689E0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1B1068A2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    sub_1B1068AB8(v3);
    swift_endAccess();
  }
}

uint64_t sub_1B1068AB8(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_1B1068C34();
  v2 = *(*v1 + 16);
  sub_1B1068C9C(v2);
  v3 = *v1;
  *(v3 + 16) = v2 + 1;
  result = sub_1B1068CDC(v5, v3 + 8 * v2 + 32);
  *v1 = v3;
  return result;
}

void sub_1B1068B34(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_63();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A2D0, &unk_1B1134C30);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v9;
      v11[3] = 2 * ((v12 - 32) / 8);
      if (a1)
      {
LABEL_12:
        sub_1B10A28B8(a4 + 32, v9, (v11 + 4));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A298, &qword_1B1134BE0);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_61_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B1068C34()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B1068B34(0, *(v1 + 16) + 1, 1, v1);
    *v0 = v3;
  }
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1)
{

  return swift_allocObject();
}

void sub_1B1068C9C(uint64_t result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    sub_1B1068B34(v2 > 1, result + 1, 1, *v1);
    *v1 = v3;
  }
}

uint64_t sub_1B1068CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A298, &qword_1B1134BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1068D4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1B1068D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_defaultActor_initialize();
  sub_1B112186C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  sub_1B1067610(&qword_1EDAD5F10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v5[14] = sub_1B1122A0C();
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = a4;
  v5[19] = a5;
  return v5;
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

uint64_t sub_1B1068EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_28()
{
}

uint64_t sub_1B1068FC8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PARSessionSwiftInternal_lock);
  os_unfair_lock_lock(v2);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v2);

  return swift_unknownObjectRelease();
}

void *sub_1B106903C()
{
  OUTLINED_FUNCTION_43_0(OBJC_IVAR___PARSessionSwiftInternal_lock);
  v2 = *(v1 + OBJC_IVAR___PARSessionSwiftInternal__bag);
  v3 = v2;
  os_unfair_lock_unlock(v0);
  return v2;
}

void PARSessionSwiftInternal.report(_:queryId:)(void *a1, uint64_t a2)
{
  v123 = *MEMORY[0x1E69E9840];
  v4 = sub_1B112197C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_1B112194C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = (v16 - v15);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v119 = v17;
    if (qword_1EDAD5D18 == -1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
LABEL_3:
  v18 = sub_1B112296C();
  __swift_project_value_buffer(v18, qword_1EDAD5D20);
  v19 = a1;
  v20 = sub_1B112293C();
  v21 = sub_1B1122DCC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v117 = v13;
    v23 = v11;
    v24 = v10;
    v25 = v4;
    v26 = v6;
    v27 = a2;
    v28 = swift_slowAlloc();
    *v22 = 138412546;
    *(v22 + 4) = v19;
    *v28 = v19;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v27;
    v29 = v19;
    _os_log_impl(&dword_1B1064000, v20, v21, "reportFeedback(%@, %llu)", v22, 0x16u);
    sub_1B1067964(v28, &qword_1EB739E58, qword_1B11345F0);
    a2 = v27;
    v6 = v26;
    v4 = v25;
    v10 = v24;
    v11 = v23;
    v13 = v117;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  objc_opt_self();
  OUTLINED_FUNCTION_16_0();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_16_0();
    v33 = swift_dynamicCastObjCClass();
    v116 = v19;
    if (v33)
    {
      v34 = sub_1B10988A8(v33, &selRef_eventName);
      if (!v35)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v4 = v35;
      v19 = sub_1B108F448(v34, v35);

      if ((v19 & 1) == 0)
      {
        goto LABEL_114;
      }

LABEL_26:
      v50 = *&v120[OBJC_IVAR___PARSessionSwiftInternal__mapsListener];
      v51 = 0x1E69CA000uLL;
      v52 = v116;
      if (!v50)
      {
        goto LABEL_47;
      }

      objc_opt_self();
      v53 = OUTLINED_FUNCTION_21_0();
      v11 = &_OBJC_LABEL_PROTOCOL____CPButtonForFeedback;
      if (v53)
      {
        v4 = v53;
        v6 = &selRef_didRankSections_;
      }

      else
      {
        objc_opt_self();
        v54 = OUTLINED_FUNCTION_21_0();
        if (v54)
        {
          v4 = v54;
          v6 = &selRef_didEngageResult_;
        }

        else
        {
          objc_opt_self();
          v55 = OUTLINED_FUNCTION_21_0();
          if (v55)
          {
            v4 = v55;
            v6 = &selRef_resultsDidBecomeVisible_;
          }

          else
          {
            objc_opt_self();
            v56 = OUTLINED_FUNCTION_21_0();
            if (v56)
            {
              v4 = v56;
              v6 = &selRef_didEngageSection_;
            }

            else
            {
              objc_opt_self();
              v57 = OUTLINED_FUNCTION_21_0();
              if (v57)
              {
                v4 = v57;
                v6 = &selRef_didPerformCommand_;
              }

              else
              {
                objc_opt_self();
                v58 = OUTLINED_FUNCTION_21_0();
                if (v58)
                {
                  v4 = v58;
                  v6 = &selRef_searchViewDidDisappear_;
                }

                else
                {
                  objc_opt_self();
                  v59 = OUTLINED_FUNCTION_21_0();
                  if (!v59)
                  {
                    objc_opt_self();
                    v109 = OUTLINED_FUNCTION_21_0();
                    if (!v109)
                    {
LABEL_47:
                      if (a2)
                      {
LABEL_111:
                        v92 = [objc_allocWithZone(_CPFeedbackPayload) initWithFeedback_];
                        if (v92)
                        {
                          v93 = v92;
                          v94 = [v92 codable];

                          if (v94)
                          {
                            v95 = sub_1B1068078();
                            swift_getObjectType();
                            v96 = v94;
                            OUTLINED_FUNCTION_35_0();
                            sub_1B106A998();
                          }
                        }

                        goto LABEL_114;
                      }

                      objc_opt_self();
                      v60 = OUTLINED_FUNCTION_21_0();
                      if (v60)
                      {
                        v61 = [v60 section];
                        if (v61)
                        {
                          v51 = v116;
                          v62 = sub_1B1098750(v61);
                          if (v62)
                          {
                            v63 = v62;
                            sub_1B1097DD8(v62);
                            OUTLINED_FUNCTION_6_3();
                            while (v4)
                            {
                              if (v19)
                              {
                                v65 = OUTLINED_FUNCTION_32_0();
                                v64 = MEMORY[0x1B272DFA0](v65);
                              }

                              else
                              {
                                if (v4 >= v11[2])
                                {
                                  goto LABEL_119;
                                }

                                v64 = *(v63 + 8 * v4 + 32);
                              }

                              v52 = v64;
                              if (__OFADD__(v4, 1))
                              {
                                goto LABEL_118;
                              }

                              if (OUTLINED_FUNCTION_59())
                              {
                                goto LABEL_109;
                              }

                              ++v4;
                            }

                            goto LABEL_108;
                          }

                          goto LABEL_169;
                        }

LABEL_168:
                        __break(1u);
LABEL_169:
                        __break(1u);
LABEL_170:
                        __break(1u);
                        goto LABEL_171;
                      }

                      objc_opt_self();
                      v66 = OUTLINED_FUNCTION_21_0();
                      if (v66)
                      {
                        v67 = [v66 result];
                        if (!v67)
                        {
LABEL_171:
                          __break(1u);
                          goto LABEL_172;
                        }

                        goto LABEL_62;
                      }

                      objc_opt_self();
                      v69 = OUTLINED_FUNCTION_21_0();
                      if (v69)
                      {
                        v70 = [v69 section];
                        if (v70)
                        {
                          v51 = v116;
                          v71 = sub_1B1098750(v70);
                          if (v71)
                          {
                            v72 = v71;
                            sub_1B1097DD8(v71);
                            OUTLINED_FUNCTION_6_3();
                            while (v4)
                            {
                              if (v19)
                              {
                                v74 = OUTLINED_FUNCTION_32_0();
                                v73 = MEMORY[0x1B272DFA0](v74);
                              }

                              else
                              {
                                if (v4 >= v11[2])
                                {
                                  goto LABEL_151;
                                }

                                v73 = *(v72 + 8 * v4 + 32);
                              }

                              v52 = v73;
                              if (__OFADD__(v4, 1))
                              {
                                __break(1u);
LABEL_151:
                                __break(1u);
                                goto LABEL_152;
                              }

                              if (OUTLINED_FUNCTION_59())
                              {
                                goto LABEL_109;
                              }

                              ++v4;
                            }

LABEL_108:

LABEL_110:
                            v52 = v51;
                            goto LABEL_111;
                          }

                          goto LABEL_173;
                        }

LABEL_172:
                        __break(1u);
LABEL_173:
                        __break(1u);
LABEL_174:
                        __break(1u);
LABEL_175:
                        __break(1u);
LABEL_176:
                        __break(1u);
                        goto LABEL_177;
                      }

                      objc_opt_self();
                      v75 = OUTLINED_FUNCTION_21_0();
                      if (v75)
                      {
                        v76 = sub_1B1071938(v75, &selRef_sections, &qword_1EDAD54B0, 0x1E69CA390);
                        if (!v76)
                        {
                          goto LABEL_174;
                        }

                        v77 = v76;
                        v78 = sub_1B1097DD8(v76);
                        OUTLINED_FUNCTION_24_0(v78);
                        do
                        {
                          if (v52 == v119)
                          {
                            break;
                          }

                          OUTLINED_FUNCTION_41_0();
                          if (v19)
                          {
                            v79 = MEMORY[0x1B272DFA0](v52, v77);
                          }

                          else
                          {
                            v79 = *(v115 + 8 * v52);
                          }

                          v80 = v79;
                          v81 = __OFADD__(v52++, 1);
                          if (v81)
                          {
                            goto LABEL_158;
                          }

                          v19 = v77;
                          v82 = sub_1B1071938(v79, &selRef_results, &qword_1EDAD5528, 0x1E69CA3E8);
                          if (!v82)
                          {
                            goto LABEL_170;
                          }

                          v83 = v82;
                          sub_1B1097DD8(v82);
                          OUTLINED_FUNCTION_55_0();
                          while (1)
                          {
                            if (v11 == v51)
                            {

                              v86 = 0;
                              goto LABEL_94;
                            }

                            if (v6)
                            {
                              v84 = MEMORY[0x1B272DFA0](v51, v83);
                            }

                            else
                            {
                              if (v51 >= *(v77 + 16))
                              {
                                goto LABEL_121;
                              }

                              v84 = *(v83 + 8 * v51 + 32);
                            }

                            v85 = v84;
                            if (__OFADD__(v51, 1))
                            {
                              goto LABEL_120;
                            }

                            if (OUTLINED_FUNCTION_61())
                            {
                              break;
                            }

                            ++v51;
                          }

                          v86 = OUTLINED_FUNCTION_61();

LABEL_94:
                          ;
                        }

                        while (!v86);
                        goto LABEL_144;
                      }

                      objc_opt_self();
                      v87 = OUTLINED_FUNCTION_21_0();
                      if (v87)
                      {
                        v51 = v116;
                        v88 = sub_1B1071938(v87, &selRef_results, &qword_1EDAD5528, 0x1E69CA3E8);
                        if (v88)
                        {
                          v89 = v88;
                          sub_1B1097DD8(v88);
                          OUTLINED_FUNCTION_6_3();
                          while (v4)
                          {
                            if (v19)
                            {
                              v91 = OUTLINED_FUNCTION_32_0();
                              v90 = MEMORY[0x1B272DFA0](v91);
                            }

                            else
                            {
                              if (v4 >= v11[2])
                              {
                                goto LABEL_164;
                              }

                              v90 = *(v89 + 8 * v4 + 32);
                            }

                            v52 = v90;
                            if (__OFADD__(v4, 1))
                            {
                              __break(1u);
LABEL_164:
                              __break(1u);
                              goto LABEL_165;
                            }

                            if (OUTLINED_FUNCTION_59())
                            {
LABEL_109:

                              OUTLINED_FUNCTION_59();

                              goto LABEL_110;
                            }

                            ++v4;
                          }

                          goto LABEL_108;
                        }

                        goto LABEL_176;
                      }

                      objc_opt_self();
                      v97 = OUTLINED_FUNCTION_21_0();
                      if (v97)
                      {
                        v67 = [v97 result];
                        if (v67)
                        {
LABEL_62:
                          v68 = v67;
                          [v67 queryId];

                          goto LABEL_111;
                        }

                        __break(1u);
LABEL_118:
                        __break(1u);
LABEL_119:
                        __break(1u);
LABEL_120:
                        __break(1u);
LABEL_121:
                        __break(1u);
                      }

                      objc_opt_self();
                      v98 = OUTLINED_FUNCTION_21_0();
                      if (v98)
                      {
                        v99 = sub_1B1071938(v98, &selRef_sections, &unk_1EDAD5560, 0x1E69CA418);
                        if (!v99)
                        {
LABEL_177:
                          __break(1u);
                          goto LABEL_178;
                        }

                        v100 = v99;
                        v101 = sub_1B1097DD8(v99);
                        OUTLINED_FUNCTION_24_0(v101);
                        while (v52 != v119)
                        {
                          OUTLINED_FUNCTION_41_0();
                          if (v19)
                          {
                            v102 = MEMORY[0x1B272DFA0](v52, v100);
                          }

                          else
                          {
                            v102 = *(v115 + 8 * v52);
                          }

                          v103 = v102;
                          v81 = __OFADD__(v52++, 1);
                          if (v81)
                          {
                            __break(1u);
                            goto LABEL_167;
                          }

                          v19 = v100;
                          v104 = sub_1B1071938(v102, &selRef_results, &qword_1EDAD54A8, 0x1E69CA388);
                          if (!v104)
                          {
                            goto LABEL_175;
                          }

                          v105 = v104;
                          sub_1B1097DD8(v104);
                          OUTLINED_FUNCTION_55_0();
                          while (1)
                          {
                            if (v11 == v51)
                            {

                              v108 = 0;
                              goto LABEL_141;
                            }

                            if (v6)
                            {
                              v106 = MEMORY[0x1B272DFA0](v51, v105);
                            }

                            else
                            {
                              if (v51 >= *(v100 + 16))
                              {
                                goto LABEL_160;
                              }

                              v106 = *(v105 + 8 * v51 + 32);
                            }

                            v107 = v106;
                            if (__OFADD__(v51, 1))
                            {
                              goto LABEL_159;
                            }

                            if (OUTLINED_FUNCTION_61())
                            {
                              break;
                            }

                            ++v51;
                          }

                          v108 = OUTLINED_FUNCTION_61();

LABEL_141:
                          if (v108)
                          {
                            break;
                          }
                        }

LABEL_144:

                        v52 = v116;
                        goto LABEL_111;
                      }

                      objc_opt_self();
                      v110 = OUTLINED_FUNCTION_21_0();
                      if (v110)
                      {
                        [v110 queryId];
                        goto LABEL_111;
                      }

LABEL_152:
                      objc_opt_self();
                      v6 = v52;
                      v111 = swift_dynamicCastObjCClass();
                      if (v111)
                      {
                        v112 = [v111 card];
                        if (!v112)
                        {
LABEL_178:
                          __break(1u);
                          return;
                        }

                        v113 = v112;
                        [v112 queryId];

                        goto LABEL_165;
                      }

LABEL_161:
                      objc_opt_self();
                      v114 = swift_dynamicCastObjCClass();
                      if (v114)
                      {
                        [v114 queryId];
                      }

LABEL_165:
                      v52 = v6;
                      goto LABEL_111;
                    }

                    v4 = v109;
                    v6 = &selRef_didEngageCardSection_;
                    v19 = sel_didEngageCardSection_;
                    if ([v50 respondsToSelector_])
                    {
                      goto LABEL_45;
                    }

                    goto LABEL_46;
                  }

                  v4 = v59;
                  v6 = &selRef_cardViewDidAppear_;
                }
              }
            }
          }
        }
      }

      v19 = *v6;
      if ([v50 respondsToSelector_])
      {
LABEL_45:
        [v50 *v6];
      }

LABEL_46:

      goto LABEL_47;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_16_0();
    v36 = swift_dynamicCastObjCClass();
    if (!v36)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_16_0();
      v46 = swift_dynamicCastObjCClass();
      if (v46)
      {
        v4 = v46;
        v47 = sub_1B10988A8(v46, &selRef_input);
        if (v48)
        {
          v121 = v47;
          v122 = v48;
          if (qword_1EDAD58E8 != -1)
          {
            swift_once();
          }

          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
          v11 = __swift_project_value_buffer(v49, qword_1EDAD64D8);
          sub_1B1098F10();
          sub_1B1098F64();
          v19 = sub_1B1122A2C();

          if (v19)
          {
            sub_1B1074A10(0, 0xE000000000000000, v4, &selRef_setInput_);
          }
        }
      }

      goto LABEL_26;
    }

    v37 = [objc_allocWithZone(_CPUserReportFeedback) initWithFacade_];
    if (!v37)
    {
LABEL_114:
      OUTLINED_FUNCTION_30();
      return;
    }

    v118 = v37;
    sub_1B112193C();
    sub_1B112191C();
    v39 = *&v38;
    v19 = v38;
    (*(v13 + 8))(v119, v11);
    if ((v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v39 > -1.0)
    {
      if (v39 < 1.84467441e19)
      {
        v11 = v118;
        [v118 setTimestamp_];
        sub_1B112196C();
        sub_1B112195C();
        OUTLINED_FUNCTION_52();
        v40 = v6[1];
        ++v6;
        (v40)(v10, v4);
        v121 = v19;
        v122 = v10;
        v41 = sub_1B1095F74(&v121, &v123);
        sub_1B10987C4(v41, v42, v118);
        v4 = v118;
        sub_1B1098838(v4);
        OUTLINED_FUNCTION_52();
        v43 = objc_allocWithZone(MEMORY[0x1E69CA008]);
        v44 = sub_1B1097650(10, v19, v10);
        if (v44)
        {
          v45 = v44;
          [v120 sendCustomFeedback_];

          goto LABEL_26;
        }

        goto LABEL_114;
      }

LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    __break(1u);
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_30();

  [v30 v31];
}

uint64_t sub_1B1069EA8()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EDAD5D20);
  __swift_project_value_buffer(v0, qword_1EDAD5D20);
  return sub_1B112295C();
}

void sub_1B106A998()
{
  OUTLINED_FUNCTION_57();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_1();
  v7 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable_];
  if (v7)
  {
    v8 = v7;
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
    }

    v9 = sub_1B112296C();
    __swift_project_value_buffer(v9, qword_1EDAD60D0);
    v41 = v8;
    v10 = sub_1B112293C();
    v11 = sub_1B1122DCC();

    if (os_log_type_enabled(v10, v11))
    {
      v40 = v5;
      v12 = swift_slowAlloc();
      v13 = OUTLINED_FUNCTION_55();
      v43 = v13;
      *v12 = 136315394;
      v14 = [v41 debugDescription];
      v39 = v1;
      v15 = sub_1B1122A5C();
      v17 = v16;

      v18 = sub_1B10784E0(v15, v17, &v43);

      *(v12 + 4) = v18;
      v1 = v39;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v39;
      _os_log_impl(&dword_1B1064000, v10, v11, "reportFeedback(%s, %llu)", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_2_0();
      v5 = v40;
      OUTLINED_FUNCTION_2_0();
    }

    v19 = sub_1B106AE3C();
    if (v19)
    {
      v20 = v19;
      sub_1B1122E6C();
      if (qword_1EDAD5DF0 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
      }

      sub_1B112289C();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v22 = OUTLINED_FUNCTION_64(v21);
      *(v22 + 16) = xmmword_1B1133CF0;
      v23 = [v41 type];
      v24 = MEMORY[0x1E69E7358];
      *(v22 + 56) = MEMORY[0x1E69E72F0];
      *(v22 + 64) = v24;
      v25 = MEMORY[0x1E69E76D8];
      *(v22 + 32) = v23;
      v26 = MEMORY[0x1E69E7738];
      *(v22 + 96) = v25;
      *(v22 + 104) = v26;
      *(v22 + 72) = v1;
      OUTLINED_FUNCTION_23_1();
      sub_1B112284C();

      v27 = OUTLINED_FUNCTION_23_0();
      v28(v27);
      v29 = v41;
      sub_1B106B074(v29);
      if (v30 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {

        OUTLINED_FUNCTION_36();
        v31 = sub_1B11218AC();
        v32 = OUTLINED_FUNCTION_36();
        sub_1B106C1F0(v32, v33);
        [v20 reportFeedback:v5 payloadData:v31 queryId:v1];

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_4_2();
      }

      return;
    }
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
    }

    v34 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v34, qword_1EDAD60D0);
    v42 = sub_1B112293C();
    v35 = sub_1B1122DDC();
    if (os_log_type_enabled(v42, v35))
    {
      v36 = OUTLINED_FUNCTION_37();
      *v36 = 0;
      _os_log_impl(&dword_1B1064000, v42, v35, "nil feedback payload", v36, 2u);
      OUTLINED_FUNCTION_2_0();
    }
  }

  OUTLINED_FUNCTION_4_2();
}

void OUTLINED_FUNCTION_33_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1B106AE3C()
{
  v12 = sub_1B10A368C;
  v13 = 0;
  OUTLINED_FUNCTION_9_1();
  v9 = 1107296256;
  OUTLINED_FUNCTION_3();
  v10 = v0;
  v11 = &block_descriptor_198;
  v1 = _Block_copy(aBlock);
  v2 = OUTLINED_FUNCTION_1();
  v4 = [v2 v3];
  _Block_release(v1);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_34_1(v5))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id OUTLINED_FUNCTION_9(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1B106B080(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1B11218CC();
  OUTLINED_FUNCTION_52();

  return v2;
}

uint64_t sub_1B106C1F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B106C204(a1, a2);
  }

  return a1;
}

uint64_t sub_1B106C204(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t _CPFeedbackPayloadReadFrom(void *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v23) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(_CPFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setFeedback:v14];
        goto LABEL_165;
      case 2u:
        v14 = objc_alloc_init(_CPSearchViewAppearFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSearchViewAppearFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSearchViewAppearFeedback:v14];
        goto LABEL_165;
      case 3u:
        v14 = objc_alloc_init(_CPSearchViewDisappearFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSearchViewDisappearFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSearchViewDisappearFeedback:v14];
        goto LABEL_165;
      case 4u:
        v14 = objc_alloc_init(_CPRankingFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPRankingFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setRankingFeedback:v14];
        goto LABEL_165;
      case 5u:
        v14 = objc_alloc_init(_CPSectionRankingFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSectionRankingFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSectionRankingFeedback:v14];
        goto LABEL_165;
      case 6u:
        v14 = objc_alloc_init(_CPResultRankingFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPResultRankingFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setResultRankingFeedback:v14];
        goto LABEL_165;
      case 7u:
        v14 = objc_alloc_init(_CPResultFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPResultFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setResultFeedback:v14];
        goto LABEL_165;
      case 8u:
        v14 = objc_alloc_init(_CPResultEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPResultEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setResultEngagementFeedback:v14];
        goto LABEL_165;
      case 9u:
        v14 = objc_alloc_init(_CPVisibleResultsFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPVisibleResultsFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setVisibleResultsFeedback:v14];
        goto LABEL_165;
      case 0xAu:
        v14 = objc_alloc_init(_CPCardSectionFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCardSectionFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCardSectionFeedback:v14];
        goto LABEL_165;
      case 0xBu:
        v14 = objc_alloc_init(_CPMapsCardSectionEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPMapsCardSectionEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setMapsCardSectionEngagementFeedback:v14];
        goto LABEL_165;
      case 0xCu:
        v14 = objc_alloc_init(_CPStoreCardSectionEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPStoreCardSectionEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setStoreCardSectionEngagementFeedback:v14];
        goto LABEL_165;
      case 0xDu:
        v14 = objc_alloc_init(_CPStartSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPStartSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setStartSearchFeedback:v14];
        goto LABEL_165;
      case 0xEu:
        v14 = objc_alloc_init(_CPEndSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPEndSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setEndSearchFeedback:v14];
        goto LABEL_165;
      case 0xFu:
        v14 = objc_alloc_init(_CPStartNetworkSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPStartNetworkSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setStartNetworkSearchFeedback:v14];
        goto LABEL_165;
      case 0x10u:
        v14 = objc_alloc_init(_CPEndNetworkSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPEndNetworkSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setEndNetworkSearchFeedback:v14];
        goto LABEL_165;
      case 0x11u:
        v14 = objc_alloc_init(_CPStartLocalSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPStartLocalSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setStartLocalSearchFeedback:v14];
        goto LABEL_165;
      case 0x12u:
        v14 = objc_alloc_init(_CPEndLocalSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPEndLocalSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setEndLocalSearchFeedback:v14];
        goto LABEL_165;
      case 0x13u:
        v14 = objc_alloc_init(_CPErrorFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPErrorFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setErrorFeedback:v14];
        goto LABEL_165;
      case 0x14u:
        v14 = objc_alloc_init(_CPCustomFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCustomFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCustomFeedback:v14];
        goto LABEL_165;
      case 0x15u:
        v14 = objc_alloc_init(_CPSuggestionEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSuggestionEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSuggestionEngagementFeedback:v14];
        goto LABEL_165;
      case 0x16u:
        v14 = objc_alloc_init(_CPCardViewDisappearFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCardViewDisappearFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCardViewDisappearFeedback:v14];
        goto LABEL_165;
      case 0x17u:
        v14 = objc_alloc_init(_CPVisibleSuggestionsFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPVisibleSuggestionsFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setVisibleSuggestionsFeedback:v14];
        goto LABEL_165;
      case 0x18u:
        v14 = objc_alloc_init(_CPResultsReceivedAfterTimeoutFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPResultsReceivedAfterTimeoutFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setResultsReceivedAfterTimeoutFeedback:v14];
        goto LABEL_165;
      case 0x19u:
        v14 = objc_alloc_init(_CPLateSectionsAppendedFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPLateSectionsAppendedFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setLateSectionsAppendedFeedback:v14];
        goto LABEL_165;
      case 0x1Au:
        v14 = objc_alloc_init(_CPClearInputFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPClearInputFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setClearInputFeedback:v14];
        goto LABEL_165;
      case 0x1Bu:
        v14 = objc_alloc_init(_CPSectionEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSectionEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSectionEngagementFeedback:v14];
        goto LABEL_165;
      case 0x1Cu:
        v14 = objc_alloc_init(_CPVisibleSectionHeaderFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPVisibleSectionHeaderFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setVisibleSectionHeaderFeedback:v14];
        goto LABEL_165;
      case 0x1Du:
        v14 = objc_alloc_init(_CPDidGoToSiteFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPDidGoToSiteFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setDidGoToSiteFeedback:v14];
        goto LABEL_165;
      case 0x1Eu:
        v14 = objc_alloc_init(_CPDidGoToSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPDidGoToSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setDidGoToSearchFeedback:v14];
        goto LABEL_165;
      case 0x1Fu:
        v14 = objc_alloc_init(_CPSessionMissingResultsFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSessionMissingResultsFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSessionMissingResultsFeedback:v14];
        goto LABEL_165;
      case 0x20u:
        v14 = objc_alloc_init(_CPSessionMissingSuggestionsFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSessionMissingSuggestionsFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSessionMissingSuggestionsFeedback:v14];
        goto LABEL_165;
      case 0x21u:
        v14 = objc_alloc_init(_CPResultGradingFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPResultGradingFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setResultGradingFeedback:v14];
        goto LABEL_165;
      case 0x22u:
        v14 = objc_alloc_init(_CPLookupHintRelevancyFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPLookupHintRelevancyFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setLookupHintRelevancyFeedback:v14];
        goto LABEL_165;
      case 0x23u:
        v14 = objc_alloc_init(_CPConnectionInvalidatedFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPConnectionInvalidatedFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setConnectionInvalidatedFeedback:v14];
        goto LABEL_165;
      case 0x24u:
        v14 = objc_alloc_init(_CPCardSectionEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCardSectionEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCardSectionEngagementFeedback:v14];
        goto LABEL_165;
      case 0x25u:
        v14 = objc_alloc_init(_CPSessionEndFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSessionEndFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSessionEndFeedback:v14];
        goto LABEL_165;
      case 0x26u:
        v14 = objc_alloc_init(_CPCardViewAppearFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCardViewAppearFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCardViewAppearFeedback:v14];
        goto LABEL_165;
      case 0x27u:
        v14 = objc_alloc_init(_CPSkipSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSkipSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSkipSearchFeedback:v14];
        goto LABEL_165;
      case 0x28u:
        v14 = objc_alloc_init(_CPCacheHitFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCacheHitFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCacheHitFeedback:v14];
        goto LABEL_165;
      case 0x29u:
        v14 = objc_alloc_init(_CPCBAEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCBAEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCbaEngagementFeedback:v14];
        goto LABEL_165;
      case 0x2Au:
        v14 = objc_alloc_init(_CPClientTimingFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPClientTimingFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setClientTimingFeedback:v14];
        goto LABEL_165;
      case 0x2Bu:
        v14 = objc_alloc_init(_CPCommandEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCommandEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCommandEngagementFeedback:v14];
        goto LABEL_165;
      case 0x2Cu:
        v14 = objc_alloc_init(_CPDynamicButtonVisibilityFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPDynamicButtonVisibilityFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setDynamicButtonVisibilityFeedback:v14];
        goto LABEL_165;
      case 0x2Du:
        v14 = objc_alloc_init(_CPExperimentTriggeredFeedback);
        v23 = 0;
        v24 = 0;
        if (PBReaderPlaceMark() && _CPExperimentTriggeredFeedbackReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setExperimentTriggeredFeedback:v14];
LABEL_165:

LABEL_166:
          v4 = a2;
          continue;
        }

LABEL_173:

        return 0;
      case 0x64u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v23) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v23 & 0x7F) << v15;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_170;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_170:
        [a1 setQueryId:v21];
        goto LABEL_166;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_166;
    }
  }
}

uint64_t _CPSearchViewAppearFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v58 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v58 & 0x7F) << v6;
      if ((v58 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 4)
    {
      if (v14 > 6)
      {
        if (v14 == 7)
        {
          v22 = PBReaderReadString();
          [v3 setOriginatingApp:v22];
          goto LABEL_77;
        }

        if (v14 != 8)
        {
          goto LABEL_78;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v61 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v61 & 0x7F) << v30;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_91;
          }
        }

        v36 = (v32 != 0) & ~[a2 hasError];
LABEL_91:
        [v3 setIsUsingLoweredSearchBar:v36];
      }

      else if (v14 == 5)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          v62 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v62 & 0x7F) << v37;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v43 = 0;
            goto LABEL_81;
          }
        }

        v43 = (v39 != 0) & ~[a2 hasError];
LABEL_81:
        [v3 setReaderTextAvailable:v43];
      }

      else
      {
        if (v14 != 6)
        {
          goto LABEL_78;
        }

        v22 = PBReaderReadString();
        [v3 setPreexistingInput:v22];
LABEL_77:
      }
    }

    else if (v14 > 2)
    {
      if (v14 == 3)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (1)
        {
          v64 = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v64 & 0x7F) << v44;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v50 = 0;
            goto LABEL_83;
          }
        }

        v50 = (v46 != 0) & ~[a2 hasError];
LABEL_83:
        [v3 setIsOnLockScreen:v50];
      }

      else
      {
        if (v14 != 4)
        {
          goto LABEL_78;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v63 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v63 & 0x7F) << v23;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_89;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_89:
        [v3 setIsOverApp:v29];
      }
    }

    else
    {
      if (v14 == 1)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        while (1)
        {
          v60 = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v60 & 0x7F) << v52;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            v4 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v4 = 0;
        }

        else
        {
          v4 = v54;
        }

LABEL_104:
        a1 = v3;
        goto LABEL_2;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v59 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v59 & 0x7F) << v15;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_87;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_87:
        [v3 setViewAppearEvent:v21];
      }

      else
      {
LABEL_78:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t static ClientName.extractClientNameFromUserAgent(_:allowAbbreviation:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B70, &qword_1B1133C88);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B78, &qword_1B1133C90);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B80, &qword_1B1133C98);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v45 - v21;
  if (!a2)
  {
    return a1;
  }

  v45 = v8;
  v48 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B88, &qword_1B1133CA0);
  sub_1B11226BC();
  v46 = a1;
  v47 = v22;
  v23 = v17;
  v49 = v18;
  sub_1B11226DC();
  sub_1B10782B4(v17, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v6) != 1)
  {
    v32 = v45;
    (*(v45 + 32))(v11, v15, v6);
    sub_1B112270C();

    v33 = MEMORY[0x1B272DA90](v50[4], v50[5], v50[6], v50[7]);
    v35 = v34;

    v36 = static ClientName.extractClientNameFromString(_:)(v33, v35);
    v38 = v37;

    if (v38)
    {
      v26 = v36;
    }

    else
    {
      v26 = 0x64636573726170;
    }

    (*(v32 + 8))(v11, v6);
LABEL_20:
    sub_1B1078324(v23);
    (*(v48 + 8))(v47, v49);
    return v26;
  }

  sub_1B1078324(v15);
  if (a3)
  {
    v24 = static ClientName.extractClientNameFromString(_:)(v46, a2);
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0x64636573726170;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    if (qword_1EDAD54E0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDAD54E0);
    }

    v28 = sub_1B112296C();
    __swift_project_value_buffer(v28, qword_1EDAD64C0);

    v29 = sub_1B112293C();
    v30 = sub_1B1122DFC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_1B10784E0(v46, a2, v50);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1B10784E0(v26, v27, v50);
      _os_log_impl(&dword_1B1064000, v29, v30, "Allows matching abbreviated user agent %s. ClientName: %s", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_2_0();
    }

    goto LABEL_20;
  }

  if (qword_1EDAD54E0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDAD54E0);
  }

  v39 = sub_1B112296C();
  __swift_project_value_buffer(v39, qword_1EDAD64C0);

  v40 = sub_1B112293C();
  v41 = sub_1B1122DDC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_1B10784E0(v46, a2, v50);
    _os_log_impl(&dword_1B1064000, v40, v41, "Couldn't find a match for regex in userAgent: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  sub_1B1078324(v17);
  (*(v48 + 8))(v47, v49);
  return 0;
}

uint64_t static ClientName.extractClientNameFromString(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B1122A8C();
    v3 = &unk_1F2778580;
    v4 = 15;
    sub_1B1067A94();
    do
    {
      a1 = *(v3 - 1);

      if (sub_1B1122F3C())
      {

        return a1;
      }

      v3 += 2;
      --v4;
    }

    while (v4);
    sub_1B1067A94();
    v5 = sub_1B1122F3C();

    if (v5)
    {
      return 0x64636573726170;
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sub_1B106E740(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1B106E758(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v8 = a2;
  v6 = a3;
  v7 = OUTLINED_FUNCTION_19_0();
  v5(v7);
}

uint64_t sub_1B106E7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_68();
  v6 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_24_1();
  v9 = (v4 + v8);
  v10 = *v9;
  v11 = v9[1];

  return a3(v5, v3, v4 + v7, v10, v11);
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t result)
{
  *(v2 - 144) = v1 & 0xC000000000000001;
  *(v2 - 136) = result;
  *(v2 - 160) = v1 + 32;
  return result;
}

void OUTLINED_FUNCTION_7_3()
{
  v2 = *(v0 + 16) + 1;

  sub_1B10A2334(0, v2, 1, v0);
}

uint64_t sub_1B106E954(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B1133CF0;
  v8 = sub_1B106EAF4();
  v9 = v8;
  v10 = 0x67616220746F47;
  if (!a1)
  {
    v10 = 0x676162206F4ELL;
  }

  v11 = 0xE700000000000000;
  v12 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = v8;
  if (!a1)
  {
    v11 = 0xE600000000000000;
  }

  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A2B0, &qword_1B1134BF8);
  v14 = sub_1B1122A7C();
  *(v7 + 96) = v12;
  *(v7 + 104) = v9;
  *(v7 + 72) = v14;
  *(v7 + 80) = v15;
  sub_1B112284C();

  return a4(a1, a2);
}

unint64_t sub_1B106EAF4()
{
  result = qword_1EDAD5F00;
  if (!qword_1EDAD5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5F00);
  }

  return result;
}

void sub_1B106EB50(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_1EDAD5D18 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
    }

    v4 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v4, qword_1EDAD5D20);
    v5 = a2;
    v6 = sub_1B112293C();
    v7 = sub_1B1122DDC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = OUTLINED_FUNCTION_55();
      v15 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_1B11230FC();
      v12 = sub_1B10784E0(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B1064000, v6, v7, "bag load %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
    }
  }

  else if (a1)
  {
    v14 = a1;
    sub_1B106ECF0(a1);
  }
}

void sub_1B106ECF0(void *a1)
{
  OUTLINED_FUNCTION_43_0(OBJC_IVAR___PARSessionSwiftInternal_lock);
  v4 = *(v2 + OBJC_IVAR___PARSessionSwiftInternal__bag);
  *(v2 + OBJC_IVAR___PARSessionSwiftInternal__bag) = a1;
  v12 = a1;

  if (a1)
  {
    v5 = [v12 sampleClientTiming];
    *(v2 + OBJC_IVAR___PARSessionSwiftInternal__sampled) = v5;
    if (v5)
    {
      v6 = [v12 sampleClientTimingEventWhitelist];
      v7 = sub_1B1122B8C();

      v8 = sub_1B106EECC(v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    *(v2 + OBJC_IVAR___PARSessionSwiftInternal__sampled) = 0;
  }

  *(v2 + OBJC_IVAR___PARSessionSwiftInternal__sampleClientTimingEventAllowlist) = v8;

  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v1);
  if (Strong)
  {
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      if ([Strong respondsToSelector_])
      {
        [Strong session:v11 bag:v12 didLoadWithError:0];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1B106EECC(uint64_t a1)
{
  result = MEMORY[0x1B272DCB0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
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

    sub_1B106EF8C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_1B106EF8C(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1B112314C();
  sub_1B1122ACC();
  v8 = sub_1B112316C();
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
    if (v13 || (sub_1B11230AC() & 1) != 0)
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

  sub_1B106F0D8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

unint64_t sub_1B106F0D8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B1097E90(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B1098244(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1B112314C();
      sub_1B1122ACC();
      result = sub_1B112316C();
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
        if (v18 || (sub_1B11230AC() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B10980EC();
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
    result = sub_1B11230DC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  sub_1B11228AC();
  OUTLINED_FUNCTION_11();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t objectdestroyTm()
{
  v1 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B106F3A0()
{
  v0 = sub_1B106903C();
  if (!v0)
  {
    return 2;
  }

  v1 = v0;
  v2 = [v0 isEnabled];

  return v2;
}

uint64_t sub_1B106F4D8()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v1);
}

id sub_1B106F50C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(PARTask) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  [v6 setSession_];

  [v6 setRequest_];
  objc_opt_self();
  v8 = OUTLINED_FUNCTION_21_0();
  if (v8)
  {
    v9 = v8;
    v10 = objc_opt_self();
    v11 = a1;
    v12 = [v10 mainBundle];
    v13 = [v12 preferredLocalizations];

    v14 = sub_1B1122B8C();
    if (*(v14 + 16))
    {

      v15 = sub_1B1122A4C();
    }

    else
    {

      v15 = 0;
    }

    [v9 setPreferredLanguage_];

    if (qword_1EDAD5D18 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
    }

    v16 = sub_1B112296C();
    __swift_project_value_buffer(v16, qword_1EDAD5D20);
    v17 = v11;
    v18 = sub_1B112293C();
    v19 = sub_1B1122DBC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_40_0();
      v21 = OUTLINED_FUNCTION_55();
      v28 = v21;
      *v20 = 136315138;
      aBlock = sub_1B10988A8(v9, &selRef_preferredLanguage);
      v30 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D10, &qword_1B1134390);
      v23 = sub_1B1122A7C();
      v25 = sub_1B10784E0(v23, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1B1064000, v18, v19, "Setting preferred language for lookup: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
    }
  }

  v33 = a2;
  v34 = a3;
  OUTLINED_FUNCTION_9_1();
  v30 = 1107296256;
  v31 = sub_1B1072818;
  v32 = &block_descriptor;
  v26 = _Block_copy(&aBlock);

  [v6 setCompletionBlock_];
  _Block_release(v26);
  return v6;
}

void sub_1B106F910()
{
  OUTLINED_FUNCTION_57();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B112279C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = [v3 request];
  v12 = sub_1B1068078();
  v13 = [v12 userAgent];

  sub_1B1122A5C();
  sub_1B11227AC();
  sub_1B112278C();
  (*(v6 + 8))(v10, v4);
  v14 = sub_1B1068078();
  v15 = v3;
  v16 = v11;
  OUTLINED_FUNCTION_35_0();
  sub_1B106FA90();
  v18 = v17;

  [v15 setQueryId_];
  OUTLINED_FUNCTION_4_2();
}

void sub_1B106FA90()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v63 = v6;
  v8 = v7;
  v57 = v9;
  v66 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38_1();
  v65 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  OUTLINED_FUNCTION_51_1();
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = v3;
  v20[4] = v1;
  v62 = v5;
  v61 = v3;
  v64 = [v8 queryId];
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
  }

  v21 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v22 = OUTLINED_FUNCTION_64(v55);
  *(v22 + 16) = xmmword_1B1133CF0;
  v23 = [v8 triggerEvent];
  v24 = MEMORY[0x1E69E6870];
  *(v22 + 56) = MEMORY[0x1E69E6810];
  *(v22 + 64) = v24;
  *(v22 + 32) = v23;
  v25 = [v8 queryId];
  v26 = MEMORY[0x1E69E7738];
  *(v22 + 96) = MEMORY[0x1E69E76D8];
  *(v22 + 104) = v26;
  *(v22 + 72) = v25;
  OUTLINED_FUNCTION_22_1();
  v56 = v21;
  OUTLINED_FUNCTION_32_1();
  sub_1B112284C();

  v27 = sub_1B10700E0();
  v58 = *(v63 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v59 = v27;
  v28 = *(v11 + 16);
  v29 = v65;
  v30 = v66;
  v60 = v19;
  v53 = v28;
  v28(v65, v19, v66);
  v31 = *(v11 + 80);
  v54 = v8;
  v32 = (v31 + 16) & ~v31;
  v51 = v13 + 7;
  v33 = (v13 + 7 + v32) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v63 = v11;
  v52 = *(v11 + 32);
  v52(v34 + v32, v29, v30);
  OUTLINED_FUNCTION_30_0((v34 + v33));
  *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v64;
  v72 = sub_1B10A372C;
  v73 = v34;
  OUTLINED_FUNCTION_2_5();
  v69 = 1107296256;
  OUTLINED_FUNCTION_3();
  v70 = v35;
  v71 = &block_descriptor_281;
  v36 = _Block_copy(&v68);

  v37 = [v58 remoteObjectProxyWithErrorHandler_];
  _Block_release(v36);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_35_1())
  {
    v38 = v66;
    v58 = v67;
    v39 = v65;
    v40 = v60;
    v53(v65, v60, v66);
    v41 = (v31 + 24) & ~v31;
    v42 = (v51 + v41) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v59;
    v52(v43 + v41, v39, v38);
    OUTLINED_FUNCTION_30_0((v43 + v42));
    v72 = sub_1B1070650;
    v73 = v43;
    v68 = MEMORY[0x1E69E9820];
    v69 = 1107296256;
    v70 = sub_1B1070468;
    v71 = &block_descriptor_288;
    v44 = _Block_copy(&v68);

    swift_unknownObjectRetain();

    [v58 request:v57 request:v54 reply:v44];
    _Block_release(v44);
    swift_unknownObjectRelease();
    v45 = v62;
  }

  else
  {
    sub_1B1122E4C();
    v46 = OUTLINED_FUNCTION_62(v55);
    *(v46 + 16) = xmmword_1B1133BA0;
    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_32_1();
    v40 = v60;
    sub_1B112284C();

    v45 = v62;
    v49 = [v62 completionBlock];
    OUTLINED_FUNCTION_50_1();
    v50();
    _Block_release(v49);
    v38 = v66;
  }

  swift_unknownObjectRelease();
  (*(v63 + 8))(v40, v38);

  OUTLINED_FUNCTION_30();
}

uint64_t sub_1B107008C()
{
  OUTLINED_FUNCTION_51_1();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B10700E0()
{
  [v0 nwActivityLabel];
  v1 = nw_activity_create();
  nw_activity_activate();
  v2 = OUTLINED_FUNCTION_36_0();
  [v2 v3];
  return v1;
}

uint64_t OUTLINED_FUNCTION_35_1()
{

  return swift_dynamicCast();
}

void sub_1B1070468(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a3;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1B10704FC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = *(v3 + 16);
  v14 = *(v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B107065C(a1, a2, a3, v13, v3 + v12, v14);
}

uint64_t sub_1B10705B0()
{
  OUTLINED_FUNCTION_25_1();
  v1 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_69();

  return sub_1B107065C(v2, v3, v0, v4, v5, v6);
}

uint64_t sub_1B107065C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void *))
{
  swift_getObjectType();
  sub_1B10708E4(a3 == 0);
  if (a3)
  {
    v10 = a6;
    v11 = a3;
    sub_1B1122E4C();
    if (qword_1EDAD5DF0 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v13 = OUTLINED_FUNCTION_64(v12);
    *(v13 + 16) = xmmword_1B1133CF0;
    v14 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1B106EAF4();
    *(v13 + 64) = v15;
    *(v13 + 32) = 0x6572756C696166;
    *(v13 + 40) = 0xE700000000000000;
    v16 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
    v17 = sub_1B1122A7C();
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 72) = v17;
    *(v13 + 80) = v18;
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_32_1();
    sub_1B112284C();

    return v10(a1, a2, a3);
  }

  else
  {
    sub_1B1122E4C();
    if (qword_1EDAD5DF0 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v21 = OUTLINED_FUNCTION_62(v20);
    *(v21 + 16) = xmmword_1B1133BA0;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1B106EAF4();
    *(v21 + 32) = 0x73736563637573;
    *(v21 + 40) = 0xE700000000000000;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_32_1();
    sub_1B112284C();

    return a6(a1, a2, 0);
  }
}

uint64_t sub_1B10708E4(char a1)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  return MEMORY[0x1EEDD2CF8](v1, v2);
}

uint64_t OUTLINED_FUNCTION_64(uint64_t a1)
{

  return swift_allocObject();
}

void sub_1B1070910()
{
  OUTLINED_FUNCTION_48_0();
  if (!v2)
  {
    v10 = [v0 completionBlock];
    if (v1)
    {
      v11 = sub_1B11217EC();
    }

    else
    {
      v11 = 0;
    }

    v14 = OUTLINED_FUNCTION_44_0();
    v15(v14);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = v3;
  v7 = v2;
  [v7 setTask_];
  v8 = [v0 request];
  [v7 scale];
  [v8 setScale_];

  if (sub_1B1070B54())
  {
    v9 = [objc_opt_self() responseFromReply_];
LABEL_11:
    v13 = v9;
    goto LABEL_12;
  }

  objc_opt_self();
  if (!OUTLINED_FUNCTION_21_0())
  {
    [v6 responseClass];
    swift_getObjCClassMetadata();
    v9 = [swift_getObjCClassFromMetadata() responseFromReply_];
    goto LABEL_11;
  }

  v12 = v6;
  sub_1B107B50C(v5);
  v13 = [swift_getObjCClassFromMetadata() responseFromReply_];

LABEL_12:
  v11 = v13;
  v10 = [v0 completionBlock];
  if (v1)
  {
    v1 = sub_1B11217EC();
  }

  v16 = OUTLINED_FUNCTION_44_0();
  v17(v16);

LABEL_15:

  _Block_release(v10);
}

id PARTopicResponse.init(reply:factory:dataZKW:)(void *a1, void *a2)
{
  v22 = a1;
  v23 = a2;
  v2 = sub_1B11227EC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A428, &qword_1B1135120);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1B112252C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v15 = OUTLINED_FUNCTION_2_2();
  sub_1B1070FD4(v15, v16);
  sub_1B11227DC();
  sub_1B1070F7C();
  OUTLINED_FUNCTION_2_2();
  sub_1B112280C();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  (*(v8 + 32))(v14, v5, v6);
  swift_getObjectType();
  (*(v8 + 16))(v12, v14, v6);
  v17 = sub_1B1071054(v22, v23, v12);
  v18 = OUTLINED_FUNCTION_2_2();
  sub_1B106C204(v18, v19);
  (*(v8 + 8))(v14, v6);
  swift_deallocPartialClassInstance();
  return v17;
}

unint64_t sub_1B1070F7C()
{
  result = qword_1EDAD5480;
  if (!qword_1EDAD5480)
  {
    sub_1B112252C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5480);
  }

  return result;
}

uint64_t sub_1B1070FD4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

id sub_1B1071054(void *a1, id a2, unint64_t a3)
{
  v5 = a1;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithReply_];
  v7 = [v5 task];
  if (!v7)
  {

LABEL_31:
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v8 = v7;
  v9 = [v7 request];

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {

      swift_unknownObjectRelease();
      goto LABEL_32;
    }

    v11 = v10;
    v12 = v6;
    v13 = sub_1B1071694(a3, [v11 queryId], a2);
    sub_1B107191C(v13, v12);
    v46 = sub_1B1071938(v12, &selRef_results, &qword_1EDAD5528, 0x1E69CA3E8);
    v44 = v5;
    if (v46)
    {
      v40 = v9;
      v42 = a3;
      v43 = v6;
      v41 = v11;
      v14 = [v11 localTopics];
      sub_1B1066864(0, &qword_1EDAD5478, 0x1E69CA1C8);
      OUTLINED_FUNCTION_16_0();
      v15 = sub_1B1122B8C();

      v16 = MEMORY[0x1E69E7CC0];
      v45 = MEMORY[0x1E69E7CC0];
      v11 = sub_1B1099EF8(v15);
      v17 = 0;
      a3 = v15 & 0xC000000000000001;
      v9 = (v15 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v11 == v17)
        {

          sub_1B1071B28(v16);
          sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
          OUTLINED_FUNCTION_16_0();
          v20 = sub_1B1122B7C();

          a3 = v42;
          v6 = v43;
          v5 = v44;
          v9 = v40;
          v11 = v41;
          [v12 setResults_];

          goto LABEL_21;
        }

        if (a3)
        {
          v18 = MEMORY[0x1B272DFA0](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v5 = v18;
        v6 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          break;
        }

        a2 = [v18 result];

        ++v17;
        if (a2)
        {
          MEMORY[0x1B272DB50]();
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B1122BAC();
          }

          sub_1B1122BCC();
          v16 = v45;
          v17 = v6;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    else
    {
      [v12 setResults_];
LABEL_21:
      v21 = sub_1B1071DE8();
      v17 = v12;
      sub_1B1071F28(v11, v21);
      OUTLINED_FUNCTION_8_2();
      sub_1B10725F0(a2, v17);

      if (qword_1EDAD5488 == -1)
      {
        goto LABEL_22;
      }
    }

    swift_once();
LABEL_22:
    v22 = sub_1B112296C();
    __swift_project_value_buffer(v22, qword_1EDAD5490);
    v23 = v17;
    v24 = v9;
    v25 = v23;
    v26 = v24;
    v27 = sub_1B112293C();
    v28 = sub_1B1122DBC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v11;
      v31 = v29;
      *v29 = 134218496;
      v32 = [v30 topics];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A430, &qword_1B1135138);
      OUTLINED_FUNCTION_16_0();
      v33 = sub_1B1122B8C();

      v34 = sub_1B1097DD8(v33);

      *(v31 + 1) = v34;

      *(v31 + 6) = 2048;
      v35 = sub_1B1071938(v25, &selRef_sections, &qword_1EDAD54B0, 0x1E69CA390);
      if (v35)
      {
        sub_1B1097DD8(v35);
        OUTLINED_FUNCTION_8_2();
      }

      else
      {
        v33 = 0;
      }

      *(v31 + 14) = v33;

      *(v31 + 11) = 2048;
      v36 = sub_1B1071938(v25, &selRef_results, &qword_1EDAD5528, 0x1E69CA3E8);
      if (v36)
      {
        v37 = sub_1B1097DD8(v36);
      }

      else
      {

        v37 = 0;
      }

      *(v31 + 3) = v37;

      _os_log_impl(&dword_1B1064000, v27, v28, "ZKW: Sections and results successfully created. Given %ld topics in request. Response has %ld sections and %ld results", v31, 0x20u);
      MEMORY[0x1B272EDD0](v31, -1, -1);

      goto LABEL_31;
    }

    swift_unknownObjectRelease();
LABEL_32:
    sub_1B112252C();
    OUTLINED_FUNCTION_11();
    (*(v38 + 8))(a3);
    return v6;
  }

  sub_1B112252C();
  OUTLINED_FUNCTION_11();
  (*(v19 + 8))(a3);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1B1071694(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = a3;
  v15 = a2;
  v3 = sub_1B112236C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B11224DC();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v10 = *(v7 + 16);
  v14[1] = v4 + 16;
  v11 = (v4 + 8);
  while (1)
  {
    if (v10 == v8)
    {

      return v9;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v3);
    sub_1B10A7AB0(v16, v15, v17, &v18);
    ++v8;
    v12 = (*v11)(v6, v3);
    if (v18)
    {
      MEMORY[0x1B272DB50](v12);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14[0] = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      v9 = v19;
    }
  }

  __break(1u);

  (*v11)(v6, v3);

  __break(1u);
  return result;
}

void sub_1B1071898(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_1B1066864(0, a3, a4);
  v7 = sub_1B1122B7C();

  [a2 *a5];
}

uint64_t sub_1B1071938(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1B1066864(0, a3, a4);
  v8 = sub_1B1122B8C();

  return v8;
}

uint64_t sub_1B1071B28(unint64_t a1)
{
  v3 = sub_1B1097DD8(a1);
  v4 = sub_1B1097DD8(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B1071BD4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B1071C74(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B1071BD4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B112306C();
LABEL_9:
  result = sub_1B1122FCC();
  *v2 = result;
  return result;
}

uint64_t sub_1B1071C74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B112306C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B1097DD8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B10A90F8();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A438, &qword_1B1135140);
          v9 = sub_1B1098904(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1071DE8()
{
  v1 = v0;
  v4 = MEMORY[0x1E69E7CC8];
  v2 = sub_1B112251C();
  sub_1B1071E54(v2, v1, &v4);

  return v4;
}

void sub_1B1071E54(uint64_t a1, void *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = *(a1 + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(sub_1B11224FC() - 8);
    sub_1B10A8824(a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++, a2, a3);
  }

  while (!v3);
}

void sub_1B1071F28(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = [a1 queryTopicContexts];
  sub_1B1066864(0, &unk_1EDAD5468, off_1E7AC5140);
  v4 = sub_1B1122B8C();

  v5 = &selRef_setSearchIndex_;
  v6 = [v2 topics];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A430, &qword_1B1135138);
  v7 = sub_1B1122B8C();

  v60 = MEMORY[0x1E69E7CC0];
  v8 = sub_1B1097DD8(v7);

  if (v8 < 0)
  {
    goto LABEL_52;
  }

  if (!v8)
  {
LABEL_46:

    return;
  }

  v10 = 0;
  v57 = v4 & 0xFFFFFFFFFFFFFF8;
  v58 = v4 & 0xC000000000000001;
  *&v9 = 136315138;
  v50 = v9;
  v54 = v4;
  v55 = v8;
  v53 = v2;
  while (1)
  {
    v11 = [v2 v5[337]];
    v12 = sub_1B1122B8C();

    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B272DFA0](v10, v12);
    }

    else
    {
      if (v10 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      break;
    }

    swift_unknownObjectRelease();
    v19 = v55;
LABEL_43:
    if (++v10 == v19)
    {
      goto LABEL_46;
    }
  }

  v14 = v13;
  v56 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v15 = sub_1B1099EF8(v4);
    for (i = 0; v15 != i; ++i)
    {
      if (v58)
      {
        v17 = MEMORY[0x1B272DFA0](i, v4);
      }

      else
      {
        if (i >= *(v57 + 16))
        {
          goto LABEL_50;
        }

        v17 = *(v4 + 8 * i + 32);
      }

      v18 = v17;
      if (__OFADD__(i, 1))
      {
        goto LABEL_49;
      }

      if ([v17 index] == v10)
      {
        v20 = [v18 contextId];
        v21 = sub_1B1122A5C();
        v22 = v2;
        v24 = v23;

        v25 = sub_1B10A7800(v21, v24, a2);
        v2 = v22;

        if (!v25)
        {
          break;
        }

        goto LABEL_30;
      }
    }
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739EE0, &unk_1B1134620);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B11345C0;
    swift_unknownObjectRetain();
    v29 = [v27 result];
    if (!v29)
    {
      v29 = [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
    }

    *(v28 + 32) = v29;
    v25 = v56;
    sub_1B1072550(v28, v56);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDAD5488 != -1)
    {
      swift_once();
    }

    v30 = sub_1B112296C();
    __swift_project_value_buffer(v30, qword_1EDAD5490);
    swift_unknownObjectRetain();
    v31 = sub_1B112293C();
    v32 = sub_1B1122DDC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v33 = v50;
      v34 = v32;
      v35 = [v14 identifier];
      v36 = v2;
      v37 = sub_1B1122A5C();
      v39 = v38;

      v40 = sub_1B10784E0(v37, v39, &v59);

      *(v33 + 4) = v40;
      v2 = v36;
      v41 = v34;
      v5 = &selRef_setSearchIndex_;
      _os_log_impl(&dword_1B1064000, v31, v41, "ZKW: Failed to find or construct section for topic %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1B272EDD0](v51, -1, -1);
      MEMORY[0x1B272EDD0](v33, -1, -1);
    }

    v25 = v56;
  }

LABEL_30:
  v42 = v25;
  v43 = sub_1B10725D4(v25);
  if (!v43)
  {
LABEL_40:
    v49 = v42;
    MEMORY[0x1B272DB50]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B1122BAC();
    }

    sub_1B1122BCC();

    swift_unknownObjectRelease();
    v4 = v54;
    v19 = v55;
    goto LABEL_43;
  }

  v44 = v43;
  v45 = sub_1B1099EF8(v43);
  for (j = 0; ; ++j)
  {
    if (v45 == j)
    {

      v2 = v53;
      v5 = &selRef_setSearchIndex_;
      goto LABEL_40;
    }

    if ((v44 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x1B272DFA0](j, v44);
    }

    else
    {
      if (j >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v47 = *(v44 + 8 * j + 32);
    }

    v48 = v47;
    if (__OFADD__(j, 1))
    {
      break;
    }

    [v47 setRequestedTopic_];
  }

  __break(1u);
LABEL_48:
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

void sub_1B1072550(uint64_t a1, void *a2)
{
  sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
  v3 = sub_1B1122B7C();

  [a2 setResults_];
}

uint64_t OUTLINED_FUNCTION_8_2()
{
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1, uint64_t a2)
{

  return sub_1B11230AC();
}

uint64_t sub_1B1072684()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EDAD5490);
  __swift_project_value_buffer(v0, qword_1EDAD5490);
  return sub_1B112294C();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_task_alloc();
}

void sub_1B1072818(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

void sub_1B10728C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_1B11217EC();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t objectdestroy_16Tm()
{
  sub_1B11228AC();
  OUTLINED_FUNCTION_11();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1072B1C()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1072BD4()
{

  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B1072C08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CF0, &qword_1B1134320);
  OUTLINED_FUNCTION_11();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1072C94()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1072CC8()
{
  v1 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1B11228DC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1072E10()
{
  sub_1B112186C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v17 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v18 = v3;
  v5 = (*(v4 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v9 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v11 = *(v10 + 64);
  v12 = sub_1B11228DC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v15 = (v9 + v11 + *(v14 + 80)) & ~*(v14 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v17, v18);
  (*(v8 + 8))(v0 + v9, v6);
  (*(v14 + 8))(v0 + v15, v12);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1073038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1B10730D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B10731EC()
{

  OUTLINED_FUNCTION_50_0();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1073220()
{
  MEMORY[0x1B272EE80](v0 + 16);
  v1 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B1073250()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_50_0();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B107328C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_54_0();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B10732E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B108E454();
  *a1 = result;
  return result;
}

id sub_1B1073318@<X0>(void *a1@<X8>)
{
  result = sub_1B1068078();
  *a1 = result;
  return result;
}

void *sub_1B1073348@<X0>(void *a1@<X8>)
{
  result = sub_1B106903C();
  *a1 = result;
  return result;
}

uint64_t sub_1B10733D8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B107342C()
{
  v1 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B107345C()
{
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B10734E4()
{
  if (*(v0 + 16))
  {
  }

  v1 = OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B107351C()
{
  v1 = OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B1073574@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B109B070();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B10735CC()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B1073600()
{

  v0 = OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v0);
}

id sub_1B1073F50(uint64_t a1)
{
  v2 = sub_1B112186C();
  v3 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v2) != 1)
  {
    v3 = sub_1B112182C();
    (*(*(v2 - 8) + 8))(a1, v2);
  }

  v4 = [swift_getObjCClassFromMetadata() punchoutWithURL_];

  return v4;
}

uint64_t sub_1B107400C(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v5 = sub_1B1121E4C();
  OUTLINED_FUNCTION_0();
  v28 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_1B11227EC();
  v12 = OUTLINED_FUNCTION_17(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7399E0, &qword_1B1133C10);
  v14 = OUTLINED_FUNCTION_17(v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = sub_1B112247C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  switch(a2 >> 62)
  {
    case 1uLL:
      v24 = a1;
      v25 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v24 = *(a1 + 16);
      v25 = *(a1 + 24);
LABEL_6:
      if (v24 == v25)
      {
        return 0;
      }

      goto LABEL_3;
    case 3uLL:
      return v4;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        return 0;
      }

LABEL_3:
      v23 = v19;
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      sub_1B1070FD4(a1, a2);
      sub_1B11227DC();
      sub_1B10780FC(&qword_1EB7395A8, MEMORY[0x1E69BD550], MEMORY[0x1E69BD548]);
      sub_1B112280C();
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
      (*(v23 + 32))(v22, v16, v17);
      v26 = sub_1B112246C();
      if (v26)
      {
        sub_1B112245C();
        sub_1B10780FC(&unk_1EB7395B0, MEMORY[0x1E69BCE50], MEMORY[0x1E69BCE48]);
        v4 = sub_1B112281C();
        (*(v28 + 8))(v10, v5);
        (*(v23 + 8))(v22, v17);
      }

      else
      {
        (*(v23 + 8))(v22, v17);
        return 0;
      }

      return v4;
  }
}

id sub_1B10743FC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1B11218AC();
  v6 = [v4 initWithJSON_];

  sub_1B106C204(a1, a2);
  return v6;
}

void sub_1B1074474(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7399D8, &qword_1B1133C08);
    v2 = sub_1B112307C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + 16 * (v9 | (v8 << 6)));
    v12 = *v10;
    v11 = v10[1];

    v13 = sub_1B1122CBC();
    v14 = sub_1B10A429C(v12, v11);
    v15 = v14;
    if (v16)
    {
      v17 = (v2[6] + 16 * v14);
      *v17 = v12;
      v17[1] = v11;

      v18 = v2[7];
      v19 = *(v18 + 8 * v15);
      *(v18 + 8 * v15) = v13;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
      v20 = (v2[6] + 16 * v14);
      *v20 = v12;
      v20[1] = v11;
      *(v2[7] + 8 * v14) = v13;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.toSFSearchResult(using:queryID:isCardRequest:)(void *a1, uint64_t a2, char a3, char a4)
{
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = [objc_allocWithZone(PARDefaultFactory) init];
  }

  swift_unknownObjectRetain();
  if (a4)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1B1076408(a2, v9 & 0xFFFFFFFE | a3 & 1, 0x6E776F6E6B6E75, 0xE700000000000000, v8, v4);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.toSFSearchResult(using:queryID:isCardRequest:userAgent:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {

    v13 = a1;
  }

  else
  {
    v14 = objc_allocWithZone(PARDefaultFactory);

    v13 = [v14 init];
  }

  swift_unknownObjectRetain();
  if (a4)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1B1076408(a2, v15 & 0xFFFFFFFE | a3 & 1, a5, a6, v13, v6);

  swift_unknownObjectRelease();
  return v16;
}

id sub_1B1074800(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1B11218AC();
    sub_1B106C1F0(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() imageWithData_];

  return v5;
}

void sub_1B107488C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1B11218AC();
  sub_1B106C204(a1, a2);
  [a3 setMapsData_];
}

void sub_1B1074900(uint64_t a1, void *a2)
{
  sub_1B1066864(0, qword_1EDAD5B00, 0x1E696AD98);
  v3 = sub_1B11229DC();

  [a2 setServerFeatures_];
}

void sub_1B1074994(uint64_t a1, void *a2, SEL *a3)
{
  sub_1B112186C();
  v5 = sub_1B1122B7C();

  [a2 *a3];
}

void sub_1B1074A10(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1B1122A4C();

  [a3 *a4];
}

void sub_1B1074A7C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  objc_allocWithZone(MEMORY[0x1E69CA5E0]);
  sub_1B1070FD4(a3, a4);
  v8 = sub_1B10814B8(a3, a4);
  if (v8)
  {
    v15 = v8;
    v9 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) initWithProtobuf_];
    if (v9)
    {
      v10 = v9;
      sub_1B1077FE8(a1, &v16);
      if (!v17)
      {
        sub_1B107809C(&v16, &qword_1EB7399C0, &qword_1B1133BF8);
        goto LABEL_10;
      }

      sub_1B1068D4C(&v16, v18);
      v11 = v19;
      v12 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      if ((*(v12 + 16))(v11, v12))
      {
        __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_10:
        v13 = v10;
        [a2 setCard_];

        return;
      }

      v14 = v10;
      [a2 setInlineCard_];

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
    }
  }
}

uint64_t sub_1B1074C20(void *a1, void *a2, uint64_t a3)
{
  sub_1B112176C();
  OUTLINED_FUNCTION_0();
  v282 = v6;
  v283 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v287 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v255 - v10;
  v259 = sub_1B112210C();
  OUTLINED_FUNCTION_0();
  v258 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v14);
  v256 = sub_1B11223AC();
  OUTLINED_FUNCTION_0();
  v255[4] = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v17);
  v288 = sub_1B112186C();
  OUTLINED_FUNCTION_0();
  v286 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  v281 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_0(v255 - v22);
  v262 = sub_1B112240C();
  OUTLINED_FUNCTION_0();
  v261 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v25);
  sub_1B112241C();
  OUTLINED_FUNCTION_0();
  v278 = v27;
  v279 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v28);
  v273 = v255 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7399B0, &qword_1B1133BE8);
  v31 = OUTLINED_FUNCTION_17(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_0(v255 - v32);
  v270 = sub_1B11217DC();
  OUTLINED_FUNCTION_0();
  v284 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1_0();
  v268 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v37 = OUTLINED_FUNCTION_17(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = v255 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = v255 - v43;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_3_0(v255 - v46);
  v267 = sub_1B112204C();
  OUTLINED_FUNCTION_0();
  v266 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v49);
  v265 = sub_1B112209C();
  OUTLINED_FUNCTION_0();
  v264 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v52);
  v53 = sub_1B1121E7C();
  OUTLINED_FUNCTION_0();
  v276 = v54;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v56);
  v57 = sub_1B112206C();
  OUTLINED_FUNCTION_0();
  v285 = v58;
  v60 = MEMORY[0x1EEE9AC00](v59);
  v62 = v255 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v64 = v255 - v63;
  v290[3] = sub_1B1066864(0, &unk_1EB739610, off_1E7AC5148);
  v290[4] = &off_1F2778A20;
  v290[0] = a1;
  v272 = a1;
  v65 = [a2 createResultObject];
  objc_opt_self();
  v66 = swift_dynamicCastObjCClass();
  if (!v66)
  {
    swift_unknownObjectRelease();
LABEL_80:
    __swift_destroy_boxed_opaque_existential_1(v290);
    return v66;
  }

  v255[0] = v65;
  v67 = sub_1B1121AFC();
  sub_1B1074A10(v67, v68, v66, &selRef_setIdentifier_);
  [v66 setType_];
  v69 = sub_1B1121D2C();
  sub_1B1074A10(v69, v70, v66, &selRef_setDomainName_);
  v71 = sub_1B1121B4C();
  v280 = v11;
  if (v71)
  {
    sub_1B1121DDC();
    sub_1B1066864(0, &qword_1EDAD5558, 0x1E69CA138);
    v72 = sub_1B112205C();
    result = sub_1B1074800(v72, v73);
    if (!result)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v75 = result;
    v76 = (v285)[1](v64, v57);
    OUTLINED_FUNCTION_9(v76, sel_setThumbnail_);
  }

  v255[2] = v44;
  [v66 setPreventThumbnailImageScaling_];
  v77 = [objc_allocWithZone(MEMORY[0x1E69CA4F0]) init];
  OUTLINED_FUNCTION_9(v77, sel_setTitle_);

  result = [v66 title];
  if (!result)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v78 = result;
  v79 = sub_1B1121D0C();
  sub_1B1074A10(v79, v80, v78, &selRef_setText_);

  v81 = sub_1B1121ADC();
  sub_1B1074A10(v81, v82, v66, &selRef_setCompletion_);
  v83 = sub_1B1121C5C();
  v84 = v277;
  if ((v83 & 1) == 0)
  {
LABEL_9:
    sub_1B1121D1C();
    OUTLINED_FUNCTION_11_0();

    OUTLINED_FUNCTION_5_1();
    if (v89)
    {
      v90 = sub_1B1121D1C();
      sub_1B1074A10(v90, v91, v66, &selRef_setStoreIdentifier_);
    }

    v92 = sub_1B1121C2C();
    sub_1B1074A10(v92, v93, v66, &selRef_setEntityIdentifier_);
    v94 = sub_1B1121D6C();
    sub_1B1074A10(v94, v95, v66, &selRef_setResultBundleId_);
    v96 = sub_1B1121ABC();
    sub_1B1074A10(v96, v97, v66, &selRef_setMapsResultType_);
    v98 = sub_1B1121D8C();
    sub_1B107488C(v98, v99, v66);
    v100 = sub_1B1121C3C();
    sub_1B1074A10(v100, v101, v66, &selRef_setNearbyBusinessesString_);
    v102 = sub_1B1121B8C();
    sub_1B1074A10(v102, v103, v66, &selRef_setAppleReferrer_);
    v104 = sub_1B1121C1C();
    sub_1B1074A10(v104, v105, v66, &selRef_setSectionBundleIdentifier_);
    OUTLINED_FUNCTION_13();
    sub_1B1121D3C();
    v106 = sub_1B1121E6C();
    OUTLINED_FUNCTION_6();
    result = v107(v44, v53);
    v108 = v288;
    v110 = v278;
    v109 = v279;
    if (v106 < 0xFFFFFFFF80000000)
    {
LABEL_83:
      __break(1u);
    }

    else if (v106 <= 0x7FFFFFFF)
    {
      [v66 setTopHit_];
      sub_1B1121CFC();
      [v66 setRankingScore_];
      [v66 setShouldAutoNavigate_];
      [v66 setNoGoTakeover_];
      if (sub_1B1121B2C())
      {
        v111 = v109;
        v112 = v108;
        v113 = v84;
        v114 = v263;
        sub_1B1121D9C();
        OUTLINED_FUNCTION_13();
        sub_1B112208C();
        v115 = sub_1B10AA678();
        OUTLINED_FUNCTION_6();
        v116(v44, v267);
        OUTLINED_FUNCTION_6();
        v117 = v114;
        v84 = v113;
        v108 = v112;
        v109 = v111;
        v119 = v118(v117, v265);
        OUTLINED_FUNCTION_9(v119, sel_setNormalizedTopic_);
      }

      sub_1B1121D5C();
      OUTLINED_FUNCTION_11_0();

      OUTLINED_FUNCTION_5_1();
      if (v120)
      {
        v121 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) init];
        [v121 setType_];
        [v121 setSource_];
        v122 = sub_1B1121DAC();
        sub_1B1074A10(v122, v123, v121, &selRef_setTitle_);
        sub_1B1121D5C();
        v124 = v271;
        sub_1B112185C();

        OUTLINED_FUNCTION_18(v124);
        if (v144)
        {
          v126 = 0;
        }

        else
        {
          v125 = v271;
          v126 = v271;
          sub_1B112182C();
          OUTLINED_FUNCTION_8();
          v127(v125, v108);
        }

        [v121 setUrlValue_];

        [v66 setCard_];
      }

      sub_1B1066864(0, &qword_1EB739590, 0x1E69CA320);
      sub_1B1121BCC();
      v128 = v275;
      sub_1B112185C();

      v129 = sub_1B1073F50(v128);
      OUTLINED_FUNCTION_9(v129, sel_setMoreResultsPunchout_);

      sub_1B1121CDC();
      OUTLINED_FUNCTION_11_0();

      OUTLINED_FUNCTION_5_1();
      v285 = v66;
      v269 = a3;
      if (v130)
      {
        sub_1B1121CDC();
        sub_1B11217CC();

        v131 = v270;
        if (__swift_getEnumTagSinglePayload(v84, 1, v270) == 1)
        {
          sub_1B107809C(v84, &unk_1EB7399B0, &qword_1B1133BE8);
        }

        else
        {
          v132 = v84;
          v133 = v284;
          v134 = v268;
          (*(v284 + 32))(v268, v132, v131);
          result = sub_1B112177C();
          if (result)
          {
            v131 = result;
            v135 = 0;
            v136 = *(result + 16);
            v137 = v282;
            v138 = (v283 + 8);
            while (1)
            {
              if (v136 == v135)
              {
                (*(v284 + 8))(v268, v270);

                a3 = v269;
                v108 = v288;
                v66 = v285;
                v110 = v278;
                v109 = v279;
                goto LABEL_41;
              }

              v139 = v280;
              if (v135 >= *(v131 + 16))
              {
LABEL_82:
                __break(1u);
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_12_0();
              (*(v142 + 16))(v287, v140 + v141 * v135, v137);
              v144 = sub_1B112174C() == 0xD000000000000014 && 0x80000001B11354E0 == v143;
              if (v144)
              {

                v131 = v282;
                goto LABEL_38;
              }

              v145 = sub_1B11230AC();

              if (v145)
              {
                break;
              }

              v137 = v282;
              result = (*v138)(v287, v282);
              ++v135;
            }

            v131 = v282;
            v139 = v280;
LABEL_38:
            (*(v283 + 32))(v139, v287, v131);
            v146 = sub_1B112175C();
            a3 = v269;
            v108 = v288;
            v110 = v278;
            v109 = v279;
            if (v147)
            {
              v66 = v285;
              sub_1B1074A10(v146, v147, v285, &selRef_setCalendarIdentifier_);
              v148 = OUTLINED_FUNCTION_16();
              v149(v148);
              v150 = OUTLINED_FUNCTION_14();
              v151(v150);
            }

            else
            {
              v152 = OUTLINED_FUNCTION_16();
              v153(v152);
              v154 = OUTLINED_FUNCTION_14();
              v155(v154);
              v66 = v285;
            }
          }

          else
          {
            (*(v133 + 8))(v134, v131);
          }
        }

LABEL_41:
        sub_1B1121CDC();
        OUTLINED_FUNCTION_13();
        sub_1B112185C();

        v156 = OUTLINED_FUNCTION_18(v131);
        if (v144)
        {
          v157 = 0;
        }

        else
        {
          v157 = v131;
          sub_1B112182C();
          OUTLINED_FUNCTION_8();
          v158 = OUTLINED_FUNCTION_10();
          v156 = v159(v158);
        }

        OUTLINED_FUNCTION_9(v156, sel_setUrl_);
      }

      v160 = sub_1B1121D6C();
      sub_1B1074A10(v160, v161, v66, &selRef_setApplicationBundleIdentifier_);
      v162 = sub_1B1121DCC();
      v164 = sub_1B10A976C(v162, v163);

      [v66 setPlacement_];
      result = sub_1B1121D7C();
      if ((result & 0x80000000) == 0)
      {
        [v66 setMinimumRankOfTopHitToSuppressResult_];
        v165 = sub_1B1121B9C();
        sub_1B1074A10(v165, v166, v66, &selRef_setSectionHeader_);
        v167 = sub_1B1121C7C();
        sub_1B1074A10(v167, v168, v66, &selRef_setSectionHeaderMore_);
        sub_1B1121CAC();
        OUTLINED_FUNCTION_13();
        sub_1B112185C();

        v169 = OUTLINED_FUNCTION_18(v164);
        if (v144)
        {
          v170 = 0;
        }

        else
        {
          v170 = v164;
          sub_1B112182C();
          OUTLINED_FUNCTION_8();
          v171 = OUTLINED_FUNCTION_10();
          v169 = v172(v171);
        }

        v173 = v274;
        OUTLINED_FUNCTION_9(v169, sel_setSectionHeaderMoreURL_);

        v174 = sub_1B1121D2C();
        sub_1B1074A10(v174, v175, v66, &selRef_setResultType_);
        OUTLINED_FUNCTION_13();
        sub_1B1121B7C();
        (*(v110 + 16))(v173, v164, v109);
        v176 = (*(v110 + 88))(v173, v109);
        v177 = *MEMORY[0x1E69BD308];
        v178 = *(v110 + 8);
        v178(v164, v109);
        if (v176 == v177)
        {
          v179 = 0x636972656E6567;
        }

        else
        {
          v178(v173, v109);
          v179 = 0x6E776F6E6B6E75;
        }

        v180 = v285;
        sub_1B1074A10(v179, 0xE700000000000000, v285, &selRef_setResultTemplate_);
        v181 = sub_1B1121C8C();
        OUTLINED_FUNCTION_15(v181, sel_setRenderHorizontallyWithOtherResultsInCategory_);
        v182 = sub_1B1121DBC();
        OUTLINED_FUNCTION_15(v182, sel_setDoNotFold_);
        result = sub_1B1121D4C();
        if ((result & 0x80000000) == 0)
        {
          [v180 setBlockId_];
          if (sub_1B1121BBC())
          {
            v183 = v260;
            sub_1B1121B1C();
            v184 = sub_1B10A9830();
            OUTLINED_FUNCTION_6();
            v185(v183, v262);
            [v180 setPunchout_];
          }

          else
          {
            v186 = [v180 url];
            if (v186)
            {
              v187 = v186;
              v188 = v255[1];
              sub_1B112183C();

              v189 = [objc_allocWithZone(MEMORY[0x1E69CA320]) init];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7399D0, &qword_1B1133C00);
              v190 = v286;
              v191 = (*(v286 + 80) + 32) & ~*(v286 + 80);
              v192 = swift_allocObject();
              *(v192 + 16) = xmmword_1B1133BA0;
              (*(v190 + 16))(v192 + v191, v188, v108);
              sub_1B1074994(v192, v189, &selRef_setUrls_);
              [v285 setPunchout_];

              v180 = v285;
              (*(v190 + 8))(v188, v108);
            }
          }

          v193 = sub_1B1121CEC();
          sub_1B1074A10(v193, v194, v180, &selRef_setCompletedQuery_);
          v195 = sub_1B1121C0C();
          v197 = v196;
          v198 = sub_1B107400C(v195, v196);
          v200 = v199;
          sub_1B106C204(v195, v197);
          if (v200 >> 60 != 15)
          {
            sub_1B1066864(0, &qword_1EB7399C8, 0x1E69CA5E0);
            v201 = OUTLINED_FUNCTION_10();
            sub_1B1070FD4(v201, v202);
            v203 = OUTLINED_FUNCTION_10();
            v205 = sub_1B10743FC(v203, v204);
            if (v205)
            {
              v206 = v205;
              v207 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) initWithProtobuf_];
              [v180 setCompactCard_];
            }

            v208 = OUTLINED_FUNCTION_10();
            sub_1B106C1F0(v208, v209);
          }

          v210 = sub_1B1121CCC();
          v212 = v211;
          sub_1B107400C(v210, v211);
          OUTLINED_FUNCTION_11_0();
          sub_1B106C204(v210, v212);
          if (v198 >> 60 != 15)
          {
            sub_1B1067888(v290, v289);
            swift_unknownObjectRetain();
            sub_1B1074A7C(v289, v180, a3, v198);
            v213 = OUTLINED_FUNCTION_16();
            sub_1B106C1F0(v213, v214);
            swift_unknownObjectRelease();
            sub_1B107809C(v289, &qword_1EB7399C0, &qword_1B1133BF8);
          }

          v215 = sub_1B108D1B4();
          if ((v216 & 1) == 0)
          {
            [v180 setQueryId_];
            OUTLINED_FUNCTION_19([v180 card]);

            OUTLINED_FUNCTION_19([v180 inlineCard]);
            OUTLINED_FUNCTION_19([v180 compactCard]);

            OUTLINED_FUNCTION_19([v180 tophitCard]);
          }

          v217 = sub_1B1121BFC();
          OUTLINED_FUNCTION_15(v217, sel_setIsInstantAnswer_);
          v218 = sub_1B1121BDC();
          sub_1B1074474(v218);
          v220 = v219;

          sub_1B1074900(v220, v180);
          v221 = sub_1B1121CBC();
          OUTLINED_FUNCTION_15(v221, sel_setShouldUseCompactDisplay_);
          v222 = sub_1B1121C4C();
          OUTLINED_FUNCTION_15(v222, sel_setPreferTopPlatter_);
          result = sub_1B1121BEC();
          v223 = result;
          v224 = 0;
          v225 = *(result + 16);
          v287 = (v286 + 32);
          v226 = result + 40;
          v227 = MEMORY[0x1E69E7CC0];
          v284 = result + 40;
LABEL_66:
          v228 = v226 + 16 * v224;
          while (v225 != v224)
          {
            if (v224 >= *(v223 + 16))
            {
              __break(1u);
              goto LABEL_82;
            }

            sub_1B112185C();
            v229 = v288;

            if (__swift_getEnumTagSinglePayload(v41, 1, v229) != 1)
            {
              v230 = *v287;
              (*v287)(v281, v41, v229);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B10A2334(0, *(v227 + 16) + 1, 1, v227);
                v227 = v235;
              }

              v232 = *(v227 + 16);
              v231 = *(v227 + 24);
              if (v232 >= v231 >> 1)
              {
                sub_1B10A2334(v231 > 1, v232 + 1, 1, v227);
                v227 = v236;
              }

              ++v224;
              *(v227 + 16) = v232 + 1;
              OUTLINED_FUNCTION_12_0();
              result = (v230)(v233 + v234 * v232, v281, v288);
              v226 = v284;
              goto LABEL_66;
            }

            result = sub_1B107809C(v41, &qword_1EB73A130, &qword_1B1133BF0);
            v228 += 16;
            ++v224;
          }

          v66 = v285;
          sub_1B1074994(v227, v285, &selRef_setAlternativeURLs_);
          [v66 processVisualCATResultSynchronously];
          if (sub_1B1121AAC())
          {
            v237 = v255[3];
            sub_1B1121B6C();
            v238 = sub_1B10A9D40();
            OUTLINED_FUNCTION_6();
            v239 = v237;
            v66 = v285;
            v241 = v240(v239, v256);
            OUTLINED_FUNCTION_9(v241, sel_setResultEntity_);
          }

          v242 = sub_1B1121CEC();
          sub_1B1074A10(v242, v243, v66, &selRef_setUserInput_);
          sub_1B1121ACC();
          OUTLINED_FUNCTION_11_0();
          v244 = sub_1B11218BC();
          v246 = v245;
          v247 = OUTLINED_FUNCTION_16();
          sub_1B106C204(v247, v248);
          sub_1B1074A10(v244, v246, v66, &selRef_setFbr_);
          v249 = sub_1B1121AEC();
          sub_1B1074A10(v249, v250, v66, &selRef_setEntityType_);
          if (sub_1B1121C9C())
          {
            v251 = v257;
            sub_1B1121C6C();
            v252 = sub_1B10A9E9C();
            OUTLINED_FUNCTION_6();
            v253 = v251;
            v66 = v285;
            v254(v253, v259);
            [v66 setMoreResultsButton_];
          }

          goto LABEL_80;
        }

        goto LABEL_86;
      }

LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    __break(1u);
    goto LABEL_85;
  }

  sub_1B1121BAC();
  v44 = sub_1B1066864(0, &qword_1EDAD5558, 0x1E69CA138);
  v85 = sub_1B112205C();
  result = sub_1B1074800(v85, v86);
  if (result)
  {
    v87 = result;
    v88 = (v285)[1](v62, v57);
    OUTLINED_FUNCTION_9(v88, sel_setCompletionImage_);

    goto LABEL_9;
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_1B1076408(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v267 = a5;
  v262 = sub_1B112176C();
  v264 = *(v262 - 8);
  v11 = MEMORY[0x1EEE9AC00](v262);
  v266 = v227 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v228 = v227 - v13;
  v235 = sub_1B112210C();
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v233 = v227 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1B11223AC();
  v231 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v230 = v227 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_1B112186C();
  v265 = *(v268 - 8);
  v16 = MEMORY[0x1EEE9AC00](v268);
  v261 = v227 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v229 = v227 - v18;
  v238 = sub_1B112240C();
  v237 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v236 = v227 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B112241C();
  v21 = *(v20 - 8);
  v259 = v20;
  v260 = v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v258 = v227 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v253 = v227 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7399B0, &qword_1B1133BE8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v249 = v227 - v26;
  v250 = sub_1B11217DC();
  v246 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v263 = v227 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v247 = v227 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = v227 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v252 = v227 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v254 = v227 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v248 = v227 - v38;
  v245 = sub_1B112204C();
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v242 = v227 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1B112209C();
  v241 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v240 = v227 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_1B1121E7C();
  v255 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v42 = v227 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1B112206C();
  v257 = *(v43 - 8);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = v227 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = v227 - v47;
  v270[3] = &_s17RequestParametersVN;
  v270[4] = &off_1F2778798;
  v49 = swift_allocObject();
  v270[0] = v49;
  v239 = a1;
  *(v49 + 16) = a1;
  *(v49 + 24) = a2 & 1;
  v251 = a2;
  *(v49 + 25) = BYTE1(a2) & 1;
  *(v49 + 32) = a3;
  *(v49 + 40) = a4;

  v50 = [v267 createResultObject];
  objc_opt_self();
  v51 = swift_dynamicCastObjCClass();
  if (!v51)
  {
    swift_unknownObjectRelease();
    v111 = 0;
LABEL_87:
    __swift_destroy_boxed_opaque_existential_1(v270);
    return v111;
  }

  v52 = v51;
  v227[1] = v50;
  v53 = sub_1B1121AFC();
  sub_1B1074A10(v53, v54, v52, &selRef_setIdentifier_);
  [v52 setType_];
  v55 = sub_1B1121D2C();
  sub_1B1074A10(v55, v56, v52, &selRef_setDomainName_);
  v57 = sub_1B1121B4C();
  v267 = v52;
  if (v57)
  {
    sub_1B1121DDC();
    sub_1B1066864(0, &qword_1EDAD5558, 0x1E69CA138);
    v58 = sub_1B112205C();
    result = sub_1B1074800(v58, v59);
    if (!result)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v61 = result;
    (*(v257 + 8))(v48, v43);
    v52 = v267;
    [v267 setThumbnail_];
  }

  [v52 setPreventThumbnailImageScaling_];
  v62 = [objc_allocWithZone(MEMORY[0x1E69CA4F0]) init];
  [v52 setTitle_];

  result = [v52 title];
  if (!result)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v63 = result;
  v64 = sub_1B1121D0C();
  sub_1B1074A10(v64, v65, v63, &selRef_setText_);

  v66 = sub_1B1121ADC();
  sub_1B1074A10(v66, v67, v52, &selRef_setCompletion_);
  if ((sub_1B1121C5C() & 1) == 0)
  {
LABEL_9:
    v71 = sub_1B1121D1C();
    v73 = v72;

    v74 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v74 = v71 & 0xFFFFFFFFFFFFLL;
    }

    v75 = v267;
    if (v74)
    {
      v76 = sub_1B1121D1C();
      sub_1B1074A10(v76, v77, v75, &selRef_setStoreIdentifier_);
    }

    v78 = sub_1B1121C2C();
    sub_1B1074A10(v78, v79, v75, &selRef_setEntityIdentifier_);
    v80 = sub_1B1121D6C();
    sub_1B1074A10(v80, v81, v75, &selRef_setResultBundleId_);
    v82 = sub_1B1121ABC();
    sub_1B1074A10(v82, v83, v75, &selRef_setMapsResultType_);
    v84 = sub_1B1121D8C();
    sub_1B107488C(v84, v85, v75);
    v86 = sub_1B1121C3C();
    sub_1B1074A10(v86, v87, v75, &selRef_setNearbyBusinessesString_);
    v88 = sub_1B1121B8C();
    sub_1B1074A10(v88, v89, v75, &selRef_setAppleReferrer_);
    v90 = sub_1B1121C1C();
    sub_1B1074A10(v90, v91, v75, &selRef_setSectionBundleIdentifier_);
    sub_1B1121D3C();
    v92 = sub_1B1121E6C();
    result = (*(v255 + 8))(v42, v256);
    if (v92 < 0xFFFFFFFF80000000)
    {
LABEL_90:
      __break(1u);
    }

    else if (v92 <= 0x7FFFFFFF)
    {
      [v75 setTopHit_];
      sub_1B1121CFC();
      [v75 setRankingScore_];
      [v75 setShouldAutoNavigate_];
      [v75 setNoGoTakeover_];
      if (sub_1B1121B2C())
      {
        v93 = v240;
        sub_1B1121D9C();
        v94 = v242;
        sub_1B112208C();
        v95 = sub_1B10AA678();
        (*(v244 + 8))(v94, v245);
        (*(v241 + 8))(v93, v243);
        [v75 setNormalizedTopic_];
      }

      v96 = sub_1B1121D5C();
      v98 = v97;

      v99 = HIBYTE(v98) & 0xF;
      if ((v98 & 0x2000000000000000) == 0)
      {
        v99 = v96 & 0xFFFFFFFFFFFFLL;
      }

      v100 = v259;
      v101 = v260;
      v102 = v258;
      if (v99)
      {
        v103 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) init];
        [v103 setType_];
        [v103 setSource_];
        v104 = sub_1B1121DAC();
        sub_1B1074A10(v104, v105, v103, &selRef_setTitle_);
        sub_1B1121D5C();
        v106 = v248;
        sub_1B112185C();
        v107 = v106;

        v108 = v106;
        v109 = v268;
        if (__swift_getEnumTagSinglePayload(v108, 1, v268) == 1)
        {
          v110 = 0;
        }

        else
        {
          v112 = v107;
          v110 = sub_1B112182C();
          v101 = v260;
          (*(v265 + 8))(v112, v109);
        }

        [v103 setUrlValue_];

        [v75 setCard_];
      }

      sub_1B1066864(0, &qword_1EB739590, 0x1E69CA320);
      sub_1B1121BCC();
      v113 = v254;
      sub_1B112185C();

      v114 = sub_1B1073F50(v113);
      [v75 setMoreResultsPunchout_];

      v115 = sub_1B1121CDC();
      v117 = v116;

      v118 = HIBYTE(v117) & 0xF;
      if ((v117 & 0x2000000000000000) == 0)
      {
        v118 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (!v118)
      {
LABEL_52:
        v143 = sub_1B1121D6C();
        sub_1B1074A10(v143, v144, v75, &selRef_setApplicationBundleIdentifier_);
        v145 = sub_1B1121DCC();
        v147 = sub_1B10A976C(v145, v146);

        [v75 setPlacement_];
        result = sub_1B1121D7C();
        if ((result & 0x80000000) == 0)
        {
          [v75 setMinimumRankOfTopHitToSuppressResult_];
          v148 = sub_1B1121B9C();
          sub_1B1074A10(v148, v149, v75, &selRef_setSectionHeader_);
          v150 = sub_1B1121C7C();
          sub_1B1074A10(v150, v151, v75, &selRef_setSectionHeaderMore_);
          sub_1B1121CAC();
          v152 = v252;
          sub_1B112185C();

          v153 = v268;
          if (__swift_getEnumTagSinglePayload(v152, 1, v268) == 1)
          {
            v154 = 0;
          }

          else
          {
            v154 = sub_1B112182C();
            (*(v265 + 8))(v152, v153);
          }

          [v75 setSectionHeaderMoreURL_];

          v155 = sub_1B1121D2C();
          sub_1B1074A10(v155, v156, v75, &selRef_setResultType_);
          v157 = v253;
          sub_1B1121B7C();
          (*(v101 + 16))(v102, v157, v100);
          v158 = (*(v101 + 88))(v102, v100);
          v159 = *MEMORY[0x1E69BD308];
          v160 = *(v101 + 8);
          v160(v157, v100);
          if (v158 == v159)
          {
            v161 = 0x636972656E6567;
          }

          else
          {
            v160(v102, v100);
            v161 = 0x6E776F6E6B6E75;
          }

          sub_1B1074A10(v161, 0xE700000000000000, v75, &selRef_setResultTemplate_);
          [v75 setRenderHorizontallyWithOtherResultsInCategory_];
          [v75 setDoNotFold_];
          result = sub_1B1121D4C();
          v162 = v268;
          if ((result & 0x80000000) == 0)
          {
            [v75 setBlockId_];
            if (sub_1B1121BBC())
            {
              v163 = v236;
              sub_1B1121B1C();
              v164 = sub_1B10A9830();
              (*(v237 + 8))(v163, v238);
              [v75 setPunchout_];
            }

            else
            {
              v165 = [v75 url];
              if (v165)
              {
                v166 = v165;
                v167 = v229;
                sub_1B112183C();

                v168 = [objc_allocWithZone(MEMORY[0x1E69CA320]) init];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7399D0, &qword_1B1133C00);
                v169 = v265;
                v170 = (*(v265 + 80) + 32) & ~*(v265 + 80);
                v171 = swift_allocObject();
                *(v171 + 16) = xmmword_1B1133BA0;
                (*(v169 + 16))(v171 + v170, v167, v162);
                sub_1B1074994(v171, v168, &selRef_setUrls_);
                [v267 setPunchout_];

                v172 = v169;
                v75 = v267;
                (*(v172 + 8))(v167, v162);
              }
            }

            v173 = sub_1B1121CEC();
            sub_1B1074A10(v173, v174, v75, &selRef_setCompletedQuery_);
            v175 = sub_1B1121C0C();
            v177 = v176;
            v178 = sub_1B107400C(v175, v176);
            v180 = v179;
            sub_1B106C204(v175, v177);
            if (v180 >> 60 != 15)
            {
              sub_1B1066864(0, &qword_1EB7399C8, 0x1E69CA5E0);
              sub_1B1070FD4(v178, v180);
              v181 = sub_1B10743FC(v178, v180);
              if (v181)
              {
                v182 = v181;
                v183 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) initWithProtobuf_];
                [v267 setCompactCard_];
              }

              sub_1B106C1F0(v178, v180);
            }

            v184 = sub_1B1121CCC();
            v186 = v185;
            v187 = sub_1B107400C(v184, v185);
            v189 = v188;
            sub_1B106C204(v184, v186);
            v190 = v267;
            if (v189 >> 60 != 15)
            {
              sub_1B1067888(v270, v269);
              swift_unknownObjectRetain();
              sub_1B1074A7C(v269, v190, v187, v189);
              sub_1B106C1F0(v187, v189);
              swift_unknownObjectRelease();
              sub_1B107809C(v269, &qword_1EB7399C0, &qword_1B1133BF8);
            }

            if ((v251 & 1) == 0)
            {
              v191 = v239;
              [v190 setQueryId_];
              v192 = [v190 card];
              sub_1B108D578(v192, v191);

              v193 = [v190 inlineCard];
              sub_1B108D578(v193, v191);

              v194 = [v190 compactCard];
              sub_1B108D578(v194, v191);

              v195 = [v190 tophitCard];
              sub_1B108D578(v195, v191);
            }

            [v190 setIsInstantAnswer_];
            v196 = sub_1B1121BDC();
            sub_1B1074474(v196);
            v198 = v197;

            sub_1B1074900(v198, v190);
            [v190 setShouldUseCompactDisplay_];
            [v190 setPreferTopPlatter_];
            v264 = a6;
            result = sub_1B1121BEC();
            v199 = result;
            v200 = 0;
            v201 = *(result + 16);
            v266 = (v265 + 32);
            v202 = (result + 40);
            v203 = MEMORY[0x1E69E7CC0];
            v263 = (result + 40);
LABEL_73:
            v204 = &v202[16 * v200];
            while (v201 != v200)
            {
              if (v200 >= *(v199 + 16))
              {
                __break(1u);
                goto LABEL_89;
              }

              sub_1B112185C();
              v205 = v268;

              if (__swift_getEnumTagSinglePayload(v33, 1, v205) != 1)
              {
                v206 = *v266;
                (*v266)(v261, v33, v205);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1B10A2334(0, *(v203 + 16) + 1, 1, v203);
                  v203 = v209;
                }

                v208 = *(v203 + 16);
                v207 = *(v203 + 24);
                if (v208 >= v207 >> 1)
                {
                  sub_1B10A2334(v207 > 1, v208 + 1, 1, v203);
                  v203 = v210;
                }

                ++v200;
                *(v203 + 16) = v208 + 1;
                result = v206(v203 + ((*(v265 + 80) + 32) & ~*(v265 + 80)) + *(v265 + 72) * v208, v261, v268);
                v202 = v263;
                goto LABEL_73;
              }

              result = sub_1B107809C(v33, &qword_1EB73A130, &qword_1B1133BF0);
              v204 += 16;
              ++v200;
            }

            v211 = v267;
            sub_1B1074994(v203, v267, &selRef_setAlternativeURLs_);
            [v211 processVisualCATResultSynchronously];
            if (sub_1B1121AAC())
            {
              v212 = v230;
              sub_1B1121B6C();
              v213 = sub_1B10A9D40();
              (*(v231 + 8))(v212, v232);
              [v211 setResultEntity_];
            }

            v214 = sub_1B1121CEC();
            sub_1B1074A10(v214, v215, v211, &selRef_setUserInput_);
            v216 = sub_1B1121ACC();
            v218 = v217;
            v219 = sub_1B11218BC();
            v221 = v220;
            sub_1B106C204(v216, v218);
            v222 = v219;
            v111 = v267;
            sub_1B1074A10(v222, v221, v267, &selRef_setFbr_);
            v223 = sub_1B1121AEC();
            sub_1B1074A10(v223, v224, v111, &selRef_setEntityType_);
            if (sub_1B1121C9C())
            {
              v225 = v233;
              sub_1B1121C6C();
              v226 = sub_1B10A9E9C();
              (*(v234 + 8))(v225, v235);
              [v111 setMoreResultsButton_];
            }

            goto LABEL_87;
          }

          goto LABEL_93;
        }

LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      sub_1B1121CDC();
      v119 = v249;
      sub_1B11217CC();
      v120 = v119;

      v121 = v119;
      v122 = v250;
      if (__swift_getEnumTagSinglePayload(v121, 1, v250) == 1)
      {
        sub_1B107809C(v120, &unk_1EB7399B0, &qword_1B1133BE8);
      }

      else
      {
        v123 = v246;
        v124 = v120;
        v125 = v263;
        (*(v246 + 32))(v263, v124, v122);
        v126 = sub_1B112177C();
        if (v126)
        {
          v127 = v126;
          v128 = a6;
          v129 = 0;
          v130 = *(v126 + 16);
          v131 = (v264 + 8);
          v132 = v262;
          for (result = v125; ; result = v263)
          {
            if (v130 == v129)
            {
              (*(v246 + 8))(result, v250);

              a6 = v128;
              v75 = v267;
              v136 = v268;
              v100 = v259;
              v101 = v260;
              v102 = v258;
              goto LABEL_48;
            }

            if (v129 >= *(v127 + 16))
            {
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            (*(v264 + 16))(v266, v127 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v129, v132);
            if (sub_1B112174C() == 0xD000000000000014 && 0x80000001B11354E0 == v133)
            {

              goto LABEL_45;
            }

            v135 = sub_1B11230AC();

            if (v135)
            {
              break;
            }

            v132 = v262;
            (*v131)(v266, v262);
            ++v129;
          }

          v132 = v262;
LABEL_45:
          v137 = v228;
          (*(v264 + 32))(v228, v266, v132);
          v138 = sub_1B112175C();
          a6 = v128;
          v75 = v267;
          v136 = v268;
          v140 = v132;
          v100 = v259;
          v101 = v260;
          v102 = v258;
          if (v139)
          {
            sub_1B1074A10(v138, v139, v267, &selRef_setCalendarIdentifier_);
          }

          (*v131)(v137, v140);
          (*(v246 + 8))(v263, v250);
          goto LABEL_48;
        }

        (*(v123 + 8))(v125, v122);
      }

      v136 = v268;
LABEL_48:
      sub_1B1121CDC();
      v141 = v247;
      sub_1B112185C();

      if (__swift_getEnumTagSinglePayload(v141, 1, v136) == 1)
      {
        v142 = 0;
      }

      else
      {
        v142 = sub_1B112182C();
        (*(v265 + 8))(v141, v136);
      }

      [v75 setUrl_];

      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_92;
  }

  sub_1B1121BAC();
  sub_1B1066864(0, &qword_1EDAD5558, 0x1E69CA138);
  v68 = sub_1B112205C();
  result = sub_1B1074800(v68, v69);
  if (result)
  {
    v70 = result;
    (*(v257 + 8))(v46, v43);
    [v267 setCompletionImage_];

    goto LABEL_9;
  }

LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1B1077EE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1077F00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1EDAD5BB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDAD5BB8);
    }
  }
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

uint64_t sub_1B1077FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7399C0, &qword_1B1133BF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B107809C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B10780FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1078150(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1B1078190(uint64_t result, int a2, int a3)
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

id OUTLINED_FUNCTION_15(char a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_19(void *a1)
{

  sub_1B108D578(a1, v1);
}

uint64_t sub_1B107823C()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EDAD64C0);
  __swift_project_value_buffer(v0, qword_1EDAD64C0);
  return sub_1B112294C();
}

uint64_t sub_1B10782B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B78, &qword_1B1133C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1078324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B78, &qword_1B1133C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ClientName.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClientName.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientName();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ClientName.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientName();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B10784E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B10785A4(v11, 0, 0, 1, a1, a2);
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
    sub_1B1078A74(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B10785A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B10786A4(a5, a6);
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
    result = sub_1B1122FDC();
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

uint64_t sub_1B10786A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B10786F0(a1, a2);
  sub_1B1078808(&unk_1F2778668);
  return v3;
}

uint64_t sub_1B10786F0(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1B1122B1C())
  {
    result = sub_1B10788EC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B1122F8C();
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
          result = sub_1B1122FDC();
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

uint64_t sub_1B1078808(uint64_t result)
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

    result = sub_1B107895C(result, v7, 1, v3);
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

void *sub_1B10788EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B90, &qword_1B1133CC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1B107895C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B90, &qword_1B1133CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B1078A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1B1078AD0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B107A104(319);
    if (v2 <= 0x3F)
    {
      sub_1B112194C();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1B1078C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B1122E4C();
  (*(a4 + 40))(a3, a4);

  return sub_1B112285C();
}

void sub_1B1078CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1B1122E4C();
  v17 = (*(a8 + 40))(a7, a8);
  LOBYTE(v20) = a5;
  sub_1B10AAFFC(v16, a2, v17, v18, v19, a1, a3, a4, v20, a6);
}

uint64_t sub_1B1078D60()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  return (*(*(v0 + 88) + 24))();
}

uint64_t sub_1B1078DB4()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  return (*(*(v0 + 88) + 32))();
}

uint64_t sub_1B1078E08()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  return v1(*(v0 + 80));
}

uint64_t sub_1B1078E70()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 80);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - v4;
  OUTLINED_FUNCTION_1_1();
  (*(v7 + 16))(v5, v0 + *(v6 + 112), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739BC8, &qword_1B1133E40);
  if (swift_dynamicCast())
  {
    sub_1B1068D4C(v12, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v10 = (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1B107A74C(v12, &unk_1EB739BD0, &qword_1B1133E48);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1B1078FF0()
{
  v1 = sub_1B112194C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 16))(v4, v0 + *(v5 + 144), v1);
  sub_1B11218FC();
  return (*(v2 + 8))(v4, v1);
}

void *sub_1B1079150()
{
  OUTLINED_FUNCTION_0_1();
  v2 = v1;
  if ((*(v0 + *(v3 + 120)) & 1) == 0)
  {
    (*(v1 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_1();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v4 + 112));
  OUTLINED_FUNCTION_2_1();

  OUTLINED_FUNCTION_2_1();
  sub_1B107A74C(v0 + *(v6 + 136), &unk_1EB739BB8, &qword_1B1133E38);
  OUTLINED_FUNCTION_2_1();
  v8 = *(v7 + 144);
  sub_1B112194C();
  OUTLINED_FUNCTION_6_0();
  (*(v9 + 8))(v0 + v8);
  OUTLINED_FUNCTION_2_1();

  return v0;
}

uint64_t sub_1B10792DC()
{
  sub_1B1079150();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B107936C(uint64_t (*a1)(void), uint64_t a2)
{
  OUTLINED_FUNCTION_2_1();
  v5 = *(*(v2 + *(v4 + 152)) + 16);

  os_unfair_lock_lock(v5);
  sub_1B10793F4(v2, a1);
  os_unfair_lock_unlock(v5);
}

uint64_t sub_1B10793F4(uint64_t result, uint64_t (*a2)(void))
{
  if ((*(result + *(*result + 120)) & 1) == 0)
  {
    a2();
    return sub_1B1079448();
  }

  return result;
}

uint64_t sub_1B1079448()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739BB8, &qword_1B1133E38);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v51[-v8];
  v10 = *(v2 + 80);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51[-v15];
  v17 = *(v1 + 40);
  v61 = *(v1 + 24);
  v62 = v17;
  v63 = *(v1 + 56);
  v64 = *(v1 + 72);
  v18 = *(&v17 + 1);
  v55 = *(v2 + 88);
  v20 = type metadata accessor for ActivitySpan.ActivityData(0, v10, v55, v19);
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v54 = v20;
  v22(v56, &v61);
  sub_1B10799E4(v18);
  if ((BYTE1(v62) & 1) == 0)
  {
    v23 = v63;
    if (v63)
    {
      v53 = *(&v61 + 1);
      v24 = v61;
      v52 = v62;
      OUTLINED_FUNCTION_3_1();
      (*(v11 + 16))(v16, v1 + *(v25 + 112), v10);
      OUTLINED_FUNCTION_3_1();
      v27 = *(v26 + 136);
      swift_beginAccess();
      sub_1B107A654(v1 + v27, v9);
      v28 = sub_1B11228AC();
      result = __swift_getEnumTagSinglePayload(v9, 1, v28);
      if (result != 1)
      {
        v30 = v9;
        OUTLINED_FUNCTION_3_1();
        v32 = *(v1 + *(v31 + 128));

        sub_1B1078CA0(v30, v32, v24, v53, v52, v23, v10, v55);

        (*(v11 + 8))(v16, v10);
        OUTLINED_FUNCTION_6_0();
        (*(v33 + 8))(v30, v28);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  OUTLINED_FUNCTION_3_1();
  (*(v11 + 16))(v14, v1 + *(v34 + 112), v10);
  OUTLINED_FUNCTION_3_1();
  v36 = *(v35 + 136);
  swift_beginAccess();
  sub_1B107A654(v1 + v36, v6);
  v37 = sub_1B11228AC();
  result = __swift_getEnumTagSinglePayload(v6, 1, v37);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_1();
  v32 = *(v1 + *(v38 + 128));
  sub_1B1078C10(v6, v32, v10, v55);
  (*(v11 + 8))(v14, v10);
  OUTLINED_FUNCTION_6_0();
  (*(v39 + 8))(v6, v37);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v43 = type metadata accessor for ActivitySpan(0, v10, v55, v41);
    sub_1B10A45F4(v1, v42, v43, &off_1F27784B0);
    v59 = 0uLL;
    v60 = 0;
    *&v58[6] = 0;
    *&v58[14] = 0;

    v44 = *(v21 + 8);
    v45 = v54;
    v44(&v61, v54);
    v46 = *(v1 + 40);
    v56[0] = *(v1 + 24);
    v47 = *(v1 + 56);
    v56[1] = v46;
    v56[2] = v47;
    v57 = *(v1 + 72);
    *(v1 + 24) = v59;
    *(v1 + 40) = v60;
    *(v1 + 41) = 1;
    *(v1 + 42) = *v58;
    v48 = MEMORY[0x1E69E7CC0];
    *(v1 + 56) = *&v58[14];
    *(v1 + 64) = v48;
    *(v1 + 72) = 0;
    v44(v56, v45);
    OUTLINED_FUNCTION_3_1();
    *(v1 + *(v49 + 120)) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1B1078E70())
    {
      v50 = sub_1B1122DEC();
      sub_1B112282C("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_1B1064000, v32, v50, MEMORY[0x1E69E7CC0]);
    }

    return (*(v21 + 8))(&v61, v54);
  }
}

void sub_1B10799E4(uint64_t a1)
{
  if (sub_1B107A364(a1))
  {
    OUTLINED_FUNCTION_2_1();
    sub_1B1122DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1B1133CF0;
    v2 = sub_1B1078DB4();
    v4 = v3;
    v5 = MEMORY[0x1E69E6158];
    *(v1 + 56) = MEMORY[0x1E69E6158];
    v6 = sub_1B106EAF4();
    *(v1 + 64) = v6;
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    sub_1B107A6C4();
    OUTLINED_FUNCTION_7_1();
    v7 = sub_1B11229FC();
    *(v1 + 96) = v5;
    *(v1 + 104) = v6;
    *(v1 + 72) = v7;
    *(v1 + 80) = v8;
    OUTLINED_FUNCTION_5_2();
    sub_1B112282C(v9);

    sub_1B1078D60();
    v10 = sub_1B1078DB4();
    v12 = v11;

    MEMORY[0x1B272DAD0](46, 0xE100000000000000);
    MEMORY[0x1B272DAD0](v10, v12);

    v13 = sub_1B1122A4C();

    OUTLINED_FUNCTION_7_1();
    v14 = sub_1B11229DC();
    AnalyticsSendEvent();
  }
}

uint64_t sub_1B1079BBC()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_1();
  v4 = type metadata accessor for ActivitySpan.ActivityData(0, *(v2 + 80), *(v2 + 88), v3);

  v40 = v4;
  sub_1B10AAF94(sub_1B107A35C);

  v48 = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  v5 = *&v1[*(*v1 + 128)];
  v6 = sub_1B1122DDC();
  sub_1B112282C("LEAKED SPAN: {{{", 16, 2, &dword_1B1064000, v5, v6, MEMORY[0x1E69E7CC0]);
  sub_1B1122DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B1133D00;
  sub_1B1078E08();
  v8 = sub_1B1122FAC();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1B106EAF4();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v13 = sub_1B1078DB4();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  v15 = sub_1B1078D60();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  v43 = v12;
  *(v7 + 112) = v15;
  *(v7 + 120) = v16;
  sub_1B112282C("Name: %s, Category: %s, Subsystem: %s", v38, v40, v42);

  if ((BYTE1(v49) & 1) == 0)
  {
    sub_1B1122DDC();
    v17 = OUTLINED_FUNCTION_4_0();
    *(v17 + 16) = xmmword_1B1133BA0;
    v18 = sub_1B1122FAC();
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = v12;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    OUTLINED_FUNCTION_5_2();
    sub_1B112282C(v20);

    v21 = v50;
    if (v50)
    {

      sub_1B1122DDC();
      v22 = OUTLINED_FUNCTION_4_0();
      *(v22 + 16) = xmmword_1B1133BA0;
      *(v22 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739BA8, &qword_1B1133E30);
      *(v22 + 64) = sub_1B107A60C(&qword_1EB739BB0, &qword_1EB739BA8, &qword_1B1133E30, MEMORY[0x1E6969E28]);
      *(v22 + 32) = v21;
      OUTLINED_FUNCTION_5_2();
      sub_1B112282C(v23);
    }
  }

  v24 = *(&v49 + 1);
  if (*(&v49 + 1))
  {

    sub_1B1122DDC();
    v25 = OUTLINED_FUNCTION_4_0();
    *(v25 + 16) = xmmword_1B1133BA0;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B98, &qword_1B1133E28);
    *(v25 + 64) = sub_1B107A60C(&qword_1EB739BA0, &qword_1EB739B98, &qword_1B1133E28, MEMORY[0x1E6969D58]);
    *(v25 + 32) = v24;
    OUTLINED_FUNCTION_5_2();
    sub_1B112282C(v26);
  }

  v27 = *(&v50 + 1);
  result = sub_1B1099EF8(*(&v50 + 1));
  v29 = v41;
  if (result)
  {
    v30 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v39 = v1;

    v31 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B272DFA0](v31, v27);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v31;
      sub_1B1122DDC();
      v32 = OUTLINED_FUNCTION_4_0();
      *(v32 + 16) = xmmword_1B1133BA0;
      swift_unknownObjectRetain();
      v33 = sub_1B1122A7C();
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = v43;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      sub_1B112282C("Leaked cancellables: %s", v39);
      swift_unknownObjectRelease();
    }

    while (v30 != v31);

    v29 = v41;
  }

  sub_1B1122DDC();
  OUTLINED_FUNCTION_5_2();
  sub_1B112282C(v35);
  if (sub_1B1078E70())
  {
    sub_1B1122DEC();
    OUTLINED_FUNCTION_5_2();
    sub_1B112282C(v36);
  }

  OUTLINED_FUNCTION_6_0();
  return (*(v37 + 8))(&v48, v29);
}

void sub_1B107A104(uint64_t a1)
{
  if (!qword_1EDAD5590)
  {
    sub_1B11228AC();
    v1 = sub_1B1122EDC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDAD5590);
    }
  }
}

uint64_t sub_1B107A15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B107A1B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1B107A1F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B107A258@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 5);
  v10[0] = *(a1 + 3);
  v10[1] = v4;
  v11 = *(a1 + 7);
  v5 = v11;
  v12 = a1[9];
  v6 = v12;
  *a3 = v10[0];
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = v6;
  v7 = type metadata accessor for ActivitySpan.ActivityData(0, *(v3 + 80), *(v3 + 88), a2);
  return (*(*(v7 - 8) + 16))(v9, v10, v7);
}

uint64_t sub_1B107A364(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  (*(v6 + 16))(&v28 - v8, v2 + *(v10 + 112), v5);
  DynamicType = swift_getDynamicType();
  (*(v6 + 8))(v9, v5);
  v13 = dynamic_cast_existential_1_conditional(DynamicType, DynamicType, &protocol descriptor for __CoreAnalyticsActivity);
  result = 0;
  if (v13)
  {
    if (a1)
    {
      v15 = v12;
      v16 = *(v12 + 16);

      v17 = v16(v13, v15);
      v19 = v18;
      sub_1B1122B5C();
      v20 = sub_1B1122EFC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = a1;
      sub_1B107FC64(v20, v17, v19, isUniquelyReferenced_nonNull_native);

      v22 = v28;
      v23 = (*(v15 + 8))(v13, v15);
      v25 = v24;
      sub_1B1078FF0();
      v26 = sub_1B1122CBC();
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v29 = v22;
      sub_1B107FC64(v26, v23, v25, v27);

      return v29;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B107A60C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1B107A654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739BB8, &qword_1B1133E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B107A6C4()
{
  result = qword_1EDAD5D40;
  if (!qword_1EDAD5D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAD5D40);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B107A74C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B107A7B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739BE0, &qword_1B1133E50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_1B1121F2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v32 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = sub_1B112180C();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1122E7C();
  v12 = sub_1B107B470(&qword_1EDAD5540, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  v28 = v5;
  v13 = (v5 + 32);
  v14 = MEMORY[0x1E69E7CC0];
  v27 = v9;
  v25 = v12;
  while (1)
  {
    sub_1B1122EEC();
    if (!v31)
    {
      (*(v24 + 8))(v11, v9);
      return v14;
    }

    sub_1B107B4B8(&v30, v29);
    sub_1B107AD28(v29, v3);
    if (v0)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      sub_1B107809C(v3, &qword_1EB739BE0, &qword_1B1133E50);
    }

    else
    {
      v15 = v11;
      v16 = *v13;
      v17 = v26;
      (*v13)(v26, v3, v4);
      v16(v32, v17, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B10A2370(0, *(v14 + 16) + 1, 1, v14);
        v14 = v20;
      }

      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B10A2370(v18 > 1, v19 + 1, 1, v14);
        v14 = v21;
      }

      *(v14 + 16) = v19 + 1;
      v16((v14 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v19), v32, v4);
      v9 = v27;
      v11 = v15;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  (*(v24 + 8))(v11, v9);

  return v14;
}

id CoreParsec_fakeEntityData(void *a1)
{
  v2 = a1;
  v3 = sub_1B107ABB0(a1);

  return v3;
}

uint64_t sub_1B107ABB0(uint64_t a1)
{
  v2 = sub_1B1121F6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1121F5C();
  if (a1)
  {
    sub_1B107A7B4();
  }

  sub_1B1121F4C();
  v6 = *(sub_1B1121F3C() + 16);

  if (v6)
  {
    sub_1B107B470(&qword_1EDAD5538, MEMORY[0x1E69BCEB0], MEMORY[0x1E69BCEA8]);
    v7 = sub_1B112281C();
    v9 = v8;
    v10 = sub_1B11218AC();
    sub_1B106C204(v7, v9);
  }

  else
  {
    v10 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_1B107AD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739BE8, &qword_1B1133E58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_1B1121EFC();
  v53 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - v13;
  v15 = sub_1B1121F2C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1078A74(a1, v60);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739BF0, &qword_1B1133E60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  }

  v19 = v58;
  v54 = v18;
  sub_1B1121F1C();
  sub_1B10A779C(1701667182, 0xE400000000000000, v19, v60);
  v51 = v2;
  if (v61)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1B107809C(v60, &qword_1EB739BF8, &qword_1B1133E68);
  }

  sub_1B1121EBC();
  sub_1B10A779C(0xD000000000000010, 0x80000001B11357D0, v19, v60);
  if (v61)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1B107809C(v60, &qword_1EB739BF8, &qword_1B1133E68);
  }

  sub_1B1121EAC();
  sub_1B10A779C(0x736369706F74, 0xE600000000000000, v19, v60);

  v49 = v15;
  v50 = a2;
  v47 = v14;
  v48 = v16;
  if (!v61)
  {
    result = sub_1B107809C(v60, &qword_1EB739BF8, &qword_1B1133E68);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C00, &qword_1B1133E70);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_13:
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v21 = v58;
LABEL_14:
  v22 = 0;
  v23 = *(v21 + 16);
  v24 = (v53 + 32);
  v25 = v21 + 32;
  v55 = MEMORY[0x1E69E7CC0];
  v46 = v21 + 32;
LABEL_15:
  for (i = v25 + 32 * v22; ; i += 32)
  {
    if (v23 == v22)
    {

      v41 = v54;
      sub_1B1121F0C();
      v42 = v50;
      v43 = v41;
      v44 = v49;
      (*(v48 + 32))(v50, v43, v49);
      return __swift_storeEnumTagSinglePayload(v42, 0, 1, v44);
    }

    if (v22 >= *(v21 + 16))
    {
      break;
    }

    sub_1B1078A74(i, v60);
    sub_1B1078A74(v60, &v58);
    if (swift_dynamicCast())
    {
      v27 = v57;
      sub_1B1121EEC();
      if (v27[2])
      {
        v28 = sub_1B10A429C(0x696669746E656469, 0xEA00000000007265);
        if (v29)
        {
          sub_1B1078A74(v27[7] + 32 * v28, &v58);
          swift_dynamicCast();
        }
      }

      sub_1B1121ECC();
      if (v27[2] && (v31 = sub_1B10A429C(0x65726F6373, 0xE500000000000000), (v32 & 1) != 0))
      {
        sub_1B1078A74(v27[7] + 32 * v31, &v58);
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
      }

      if (*(&v59 + 1))
      {
        sub_1B107B4C8();
        if (swift_dynamicCast())
        {
          v33 = v57;
          [v57 floatValue];
          sub_1B1121EDC();
        }
      }

      else
      {
        sub_1B107809C(&v58, &qword_1EB739BF8, &qword_1B1133E68);
      }

      (*v24)(v7, v62, v8);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v30, 1, v8);
    __swift_destroy_boxed_opaque_existential_1(v60);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      v34 = *v24;
      v35 = v47;
      (*v24)(v47, v7, v8);
      v34(v52, v35, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B10A24AC(0, *(v55 + 16) + 1, 1, v55);
        v55 = v39;
      }

      v37 = *(v55 + 16);
      v36 = *(v55 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1B10A24AC(v36 > 1, v37 + 1, 1, v55);
        v55 = v40;
      }

      ++v22;
      v38 = v55;
      *(v55 + 16) = v37 + 1;
      result = (v34)(v38 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v37, v52, v8);
      v25 = v46;
      goto LABEL_15;
    }

    result = sub_1B107809C(v7, &qword_1EB739BE8, &qword_1B1133E58);
    ++v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B107B470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_1B107B4B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1B107B4C8()
{
  result = qword_1EDAD5B00[0];
  if (!qword_1EDAD5B00[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDAD5B00);
  }

  return result;
}

unint64_t sub_1B107B50C(uint64_t a1)
{
  if (a1 == 1)
  {
    v4[3] = &type metadata for ParsecFeatureFlag;
    v4[4] = sub_1B107B58C();
    LOBYTE(v4[0]) = 6;
    v2 = sub_1B112257C();
    __swift_destroy_boxed_opaque_existential_1(v4);
    if (v2)
    {
      return sub_1B107B5E0();
    }
  }

  [v1 responseClass];
  return swift_getObjCClassMetadata();
}

unint64_t sub_1B107B58C()
{
  result = qword_1EB739600;
  if (!qword_1EB739600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739600);
  }

  return result;
}

unint64_t sub_1B107B5E0()
{
  result = qword_1EB739568;
  if (!qword_1EB739568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB739568);
  }

  return result;
}

uint64_t URLComponents.embeddedAMPURL()@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7399B0, &qword_1B1133BE8);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v33 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C08, &qword_1B1133E78);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C10, &qword_1B1133E80);
  OUTLINED_FUNCTION_0();
  v35 = v7;
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C18, &qword_1B1133E88);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C20, &qword_1B1133E90);
  sub_1B107A60C(&qword_1EB739C28, &qword_1EB739C18, &qword_1B1133E88, MEMORY[0x1E69E9290]);
  sub_1B11226CC();
  sub_1B112179C();
  sub_1B11226EC();
  v12 = v35;
  v34 = v3;

  if (__swift_getEnumTagSinglePayload(v6, 1, v37) == 1)
  {
    v13 = OUTLINED_FUNCTION_0_2();
    v14(v13);
    sub_1B107809C(v6, &qword_1EB739C08, &qword_1B1133E78);
    v15 = sub_1B11217DC();
    v16 = v36;
    v17 = 1;
  }

  else
  {
    v19 = v12;
    (*(v12 + 32))(v10, v6, v37);
    v42 = 0;
    v43 = 0xE000000000000000;
    v20 = sub_1B11217AC();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v20 = 1886680168;
      v22 = 0xE400000000000000;
    }

    MEMORY[0x1B272DAD0](v20, v22);

    MEMORY[0x1B272DAD0](3092282, 0xE300000000000000);
    sub_1B112270C();

    v23 = MEMORY[0x1B272DA90](v38, v39, v40, v41);
    v25 = v24;

    MEMORY[0x1B272DAD0](v23, v25);

    v26 = v34;
    sub_1B11217BC();

    v27 = sub_1B11217DC();
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {
      (*(v19 + 8))(v10, v37);
      v28 = OUTLINED_FUNCTION_0_2();
      v29(v28);
      sub_1B107809C(v26, &unk_1EB7399B0, &qword_1B1133BE8);
      v16 = v36;
      v17 = 1;
    }

    else
    {
      v30 = v36;
      (*(*(v27 - 8) + 32))(v36, v26, v27);
      sub_1B112177C();
      sub_1B112178C();
      (*(v19 + 8))(v10, v37);
      v31 = OUTLINED_FUNCTION_0_2();
      v32(v31);
      v16 = v30;
      v17 = 0;
    }

    v15 = v27;
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
}

uint64_t sub_1B107BB00@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C18, &qword_1B1133E88);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v82 = &v72 - v2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C30, &qword_1B1133E98);
  v100 = *(v94 - 8);
  v3 = MEMORY[0x1EEE9AC00](v94);
  v81 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  v101 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v84 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v93 = &v72 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v92 = &v72 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v72 - v16;
  v76 = sub_1B112267C();
  v18 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C40, &qword_1B1133EA8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v72 - v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C48, &qword_1B1133EB0);
  v102 = *(v98 - 8);
  v24 = MEMORY[0x1EEE9AC00](v98);
  v77 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v96 = &v72 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v72 - v28;
  v29 = sub_1B11225FC();
  v90 = v29;
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v91 = &v72 - v34;
  sub_1B11225EC();
  v78 = sub_1B107D380(&qword_1EB739C50, MEMORY[0x1E69E8268], MEMORY[0x1E69E8260]);
  MEMORY[0x1B272D570](v33, v29, v78);
  v35 = *(v30 + 8);
  v79 = v30 + 8;
  v80 = v35;
  v35(v33, v29);
  v36 = sub_1B11226AC();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v36);
  v37 = sub_1B11225BC();
  v95 = v15;
  sub_1B107C5D8(v37);
  v87 = sub_1B107A60C(&qword_1EDAD5598, &qword_1EB739C38, &qword_1B1133EA0, MEMORY[0x1E69E9290]);
  v38 = MEMORY[0x1E69E67B0];
  v39 = v17;
  v75 = v6;
  sub_1B112266C();
  v88 = *(v101 + 8);
  v101 += 8;
  v88(v15, v6);
  v40 = *(v18 + 8);
  v86 = v18 + 8;
  v97 = v40;
  v41 = v76;
  v40(v20, v76);
  sub_1B107809C(v23, &qword_1EB739C40, &qword_1B1133EA8);
  v42 = v96;
  v43 = v39;
  MEMORY[0x1B272D590](v39, v38);
  v73 = sub_1B107A60C(&qword_1EB739C58, &qword_1EB739C48, &qword_1B1133EB0, MEMORY[0x1E69E8220]);
  v44 = v98;
  MEMORY[0x1B272D570](v42, v98, v73);
  v89 = *(v102 + 8);
  v102 += 8;
  v89(v42, v44);
  v103[0] = 795897185;
  v103[1] = 0xE400000000000000;
  v45 = sub_1B107C65C();
  MEMORY[0x1B272D570](v104, v103, MEMORY[0x1E69E6158], v45);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v36);
  sub_1B11225BC();
  v46 = v95;
  sub_1B107C6B0(v95);
  v47 = v75;
  sub_1B112266C();
  v48 = v88;
  v88(v46, v47);
  v49 = v41;
  v97(v20, v41);
  sub_1B107809C(v23, &qword_1EB739C40, &qword_1B1133EA8);
  v50 = v77;
  MEMORY[0x1B272D590](v43, MEMORY[0x1E69E67B0]);
  v51 = v50;
  v52 = v50;
  v53 = v98;
  MEMORY[0x1B272D570](v51, v98, v73);
  v89(v52, v53);
  sub_1B11225BC();
  sub_1B107CCC8(v43);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C20, &qword_1B1133E90);
  v55 = v82;
  v77 = v54;
  sub_1B112264C();
  v48(v43, v47);
  v56 = v97;
  v97(v20, v41);
  v57 = v81;
  MEMORY[0x1B272D5F0](v55, v54);
  v73 = sub_1B107A60C(&qword_1EB739C68, &qword_1EB739C30, &qword_1B1133E98, MEMORY[0x1E69E8278]);
  v58 = v83;
  v59 = v57;
  v60 = v57;
  v61 = v94;
  MEMORY[0x1B272D570](v59, v94, v73);
  v62 = *(v100 + 8);
  v100 += 8;
  v82 = v62;
  (v62)(v60, v61);
  v74 = v43;
  sub_1B112259C();
  sub_1B107CA48(v99, v95);
  v63 = v104[0];
  v64 = v104[1];
  sub_1B11225BC();
  sub_1B107D1CC(v63, v64, v92);

  v56(v20, v41);
  sub_1B107CA48(v96, v93);
  sub_1B11225BC();
  v65 = v84;
  sub_1B112263C();
  v66 = v58;
  v67 = v94;
  sub_1B112262C();
  v68 = v88;
  v88(v65, v47);
  v97(v20, v49);
  v68(v93, v47);
  v68(v92, v47);
  v68(v95, v47);
  v68(v74, v47);
  (v82)(v66, v67);
  v69 = v98;
  v70 = v89;
  v89(v96, v98);
  v70(v99, v69);
  return v80(v91, v90);
}

uint64_t sub_1B107C5D8(uint64_t a1)
{
  v3 = 47;
  v4 = 0xE100000000000000;
  v1 = sub_1B107C65C();
  MEMORY[0x1B272D570](v5, &v3, MEMORY[0x1E69E6158], v1);
  v3 = v5[0];
  v4 = v5[1];
  sub_1B112259C();
}

unint64_t sub_1B107C65C()
{
  result = qword_1EB739C60;
  if (!qword_1EB739C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739C60);
  }

  return result;
}

uint64_t sub_1B107C6B0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = sub_1B112267C();
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  v3 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v20 - v4;
  v6 = sub_1B11225CC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C88, &qword_1B1133EC0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  sub_1B112269C();
  sub_1B107D380(&qword_1EB739C78, MEMORY[0x1E69E8250], MEMORY[0x1E69E8248]);
  sub_1B11225DC();
  v14 = sub_1B107A60C(&qword_1EB739C90, &qword_1EB739C88, &qword_1B1133EC0, MEMORY[0x1E69E8258]);
  MEMORY[0x1B272D570](v11, v7, v14);
  v15 = *(v8 + 8);
  v15(v11, v7);
  v24[0] = 47;
  v24[1] = 0xE100000000000000;
  v16 = sub_1B107C65C();
  MEMORY[0x1B272D570](v25, v24, MEMORY[0x1E69E6158], v16);
  sub_1B112259C();
  v17 = v25[0];
  v18 = v25[1];
  sub_1B11225BC();
  sub_1B107D1CC(v17, v18, v22);

  (*(v21 + 8))(v2, v23);
  (*(v3 + 8))(v5, v20);
  return (v15)(v13, v7);
}

uint64_t sub_1B107CA48@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v16 = sub_1B112267C();
  v10 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B11225BC();
  sub_1B107A60C(&qword_1EDAD5598, &qword_1EB739C38, &qword_1B1133EA0, MEMORY[0x1E69E9290]);
  sub_1B112263C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C48, &qword_1B1133EB0);
  sub_1B107A60C(&qword_1EB739C58, &qword_1EB739C48, &qword_1B1133EB0, MEMORY[0x1E69E8220]);
  sub_1B112263C();
  sub_1B112262C();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v13(v9, v3);
  return (*(v10 + 8))(v12, v16);
}

uint64_t sub_1B107CCC8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_1B11225CC();
  v38 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v33 - v12;
  v39 = sub_1B112267C();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v33 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C40, &qword_1B1133EA8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C70, &qword_1B1133EB8);
  v35 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v34 = &v33 - v21;
  v22 = sub_1B11226AC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v22);
  sub_1B11225BC();
  sub_1B112268C();
  v23 = sub_1B107D380(&qword_1EB739C78, MEMORY[0x1E69E8250], MEMORY[0x1E69E8248]);
  MEMORY[0x1B272D570](v4, v1, v23);
  v24 = *(v38 + 8);
  v24(v4, v1);
  sub_1B112259C();
  v24(v6, v1);
  sub_1B107A60C(&qword_1EDAD5598, &qword_1EB739C38, &qword_1B1133EA0, MEMORY[0x1E69E9290]);
  v25 = MEMORY[0x1E69E67B0];
  v26 = v36;
  v27 = v40;
  v28 = v33;
  sub_1B112265C();
  (*(v41 + 8))(v11, v27);
  (*(v37 + 8))(v28, v39);
  sub_1B107809C(v16, &qword_1EB739C40, &qword_1B1133EA8);
  MEMORY[0x1B272D600](v26, v25);
  v29 = sub_1B107A60C(&qword_1EB739C80, &qword_1EB739C70, &qword_1B1133EB8, MEMORY[0x1E69E8290]);
  v30 = v34;
  MEMORY[0x1B272D570](v20, v17, v29);
  v31 = *(v35 + 8);
  v31(v20, v17);
  sub_1B112259C();
  return (v31)(v30, v17);
}

uint64_t sub_1B107D1CC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  v15[2] = a2;
  v15[3] = a3;
  sub_1B107A60C(&qword_1EDAD5598, &qword_1EB739C38, &qword_1B1133EA0, MEMORY[0x1E69E9290]);
  sub_1B112263C();
  sub_1B107C65C();
  sub_1B112263C();
  sub_1B112262C();
  v13 = *(v7 + 8);
  v13(v10, v6);
  return (v13)(v12, v6);
}

uint64_t sub_1B107D380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PARSafariSummarizationPrefetchResponse.init(reply:factory:data:)(void *a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v2 = sub_1B11227EC();
  v3 = OUTLINED_FUNCTION_17(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C98, &qword_1B1133EC8);
  v5 = OUTLINED_FUNCTION_17(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = sub_1B112254C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v17 = OUTLINED_FUNCTION_2_2();
  sub_1B1070FD4(v17, v18);
  sub_1B11227DC();
  sub_1B107E4AC(&qword_1EB7395A0, MEMORY[0x1E69BD7D0], MEMORY[0x1E69BD7C8]);
  OUTLINED_FUNCTION_2_2();
  sub_1B112280C();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  (*(v10 + 32))(v16, v7, v8);
  swift_getObjectType();
  (*(v10 + 16))(v14, v16, v8);
  sub_1B107D6C4(v25, v26, v14);
  v20 = v19;
  v21 = OUTLINED_FUNCTION_2_2();
  sub_1B106C204(v21, v22);
  (*(v10 + 8))(v16, v8);
  swift_deallocPartialClassInstance();
  return v20;
}

void sub_1B107D6C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B112218C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v11 = (v10 - v9);
  v46 = sub_1B11221BC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v45 = v16 - v15;
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithReply_];
  v18 = sub_1B112253C();
  v48 = MEMORY[0x1E69E7CC0];
  v42 = *(v18 + 16);
  if (v42)
  {
    v36 = a1;
    v37 = a3;
    v19 = 0;
    OUTLINED_FUNCTION_4_1();
    v41 = v20 + v21;
    v40 = v13;
    v38 = (v13 + 8);
    v39 = v20;
    while (v19 < *(v20 + 16))
    {
      (*(v13 + 16))(v45, v41 + *(v13 + 72) * v19, v46);
      v44 = v19 + 1;
      v22 = [objc_allocWithZone(MEMORY[0x1E69CA108]) init];
      v23 = sub_1B112211C();
      v43 = v22;
      sub_1B1074A10(v23, v24, v22, &selRef_setHash_prefix_);
      v25 = sub_1B11221AC();
      v26 = 0;
      v27 = MEMORY[0x1E69E7CC0];
      v47 = MEMORY[0x1E69E7CC0];
      v28 = *(v25 + 16);
      while (v28 != v26)
      {
        if (v26 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_4_1();
        (*(v7 + 16))(v11, v25 + v29 + *(v7 + 72) * v26, v5);
        sub_1B107DAD4(v11);
        v30 = (*(v7 + 8))(v11, v5);
        MEMORY[0x1B272DB50](v30);
        v31 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
        {
          OUTLINED_FUNCTION_6_1(v31);
          sub_1B1122BAC();
        }

        sub_1B1122BCC();
        v27 = v47;
        ++v26;
      }

      sub_1B1071898(v27, v43, &unk_1EB739580, 0x1E69CA110, &selRef_setHash_details_);
      v32 = (*v38)(v45, v46);
      MEMORY[0x1B272DB50](v32);
      v33 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v33 >> 1)
      {
        OUTLINED_FUNCTION_6_1(v33);
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      v19 = v44;
      v20 = v39;
      v13 = v40;
      if (v44 == v42)
      {
        v34 = v48;

        a3 = v37;
        a1 = v36;
        goto LABEL_15;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
LABEL_15:
    sub_1B1071898(v34, v17, &qword_1EB739578, 0x1E69CA108, &selRef_setHashBucketDetails_);

    swift_unknownObjectRelease();
    sub_1B112254C();
    OUTLINED_FUNCTION_5();
    (*(v35 + 8))(a3);
  }
}

void *sub_1B107DAD4(void *a1)
{
  v2 = sub_1B112214C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E69CA110]) init];
  v7 = sub_1B112211C();
  sub_1B1074A10(v7, v8, v6, &selRef_setFull_hash_);
  [v6 setHas:sub_1B112212C() & 1 summary:?];
  v9 = sub_1B112217C();
  v19[0] = v6;
  [v6 setHas:v9 & 1 table:? of:? contents:?];
  v19[1] = a1;
  result = sub_1B112215C();
  v11 = result;
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = result[2];
  v19[2] = (v3 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v14 == v12)
    {

      v16 = v19[0];
      sub_1B1071898(v13, v19[0], qword_1EDAD5B00, 0x1E696AD98, &selRef_setSba_entity_types_);
      v17 = sub_1B112216C();
      sub_1B1074A10(v17, v18, v16, &selRef_setMatched_url_variant_);
      return v16;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    (*(v3 + 16))(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v2);
    sub_1B1066864(0, qword_1EDAD5B00, 0x1E696AD98);
    sub_1B112213C();
    sub_1B1122E9C();
    v15 = (*(v3 + 8))(v5, v2);
    MEMORY[0x1B272DB50](v15);
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B1122BAC();
    }

    result = sub_1B1122BCC();
    v13 = v20;
    ++v12;
  }

  __break(1u);
  return result;
}

id _sSo38PARSafariSummarizationPrefetchResponseC10CoreParsecE5reply7factory4dataABSgSo8PARReplyC_So16PARResultFactory_p10Foundation4DataVtcfC_0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1B11218AC();
  v10 = [v8 initWithReply:a1 factory:a2 data:v9];

  sub_1B106C204(a3, a4);
  swift_unknownObjectRelease();
  return v10;
}

void PARSafariSummarizationSummarizeResponse.init(reply:factory:data:)(void *a1, id a2, uint64_t a3, unint64_t a4)
{
  v85 = sub_1B1121DEC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  sub_1B11224AC();
  OUTLINED_FUNCTION_0();
  v76 = v15;
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v80 = v17 - v16;
  v18 = sub_1B11227EC();
  v19 = OUTLINED_FUNCTION_17(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CA0, &unk_1B1133ED0);
  v21 = OUTLINED_FUNCTION_17(v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v24 = sub_1B112256C();
  OUTLINED_FUNCTION_0();
  v66 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v79 = a1;
  v67 = [v84 initWithReply_];
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_1B1070FD4(a3, a4);
  sub_1B11227DC();
  sub_1B107E4AC(&qword_1EB739598, MEMORY[0x1E69BDA00], MEMORY[0x1E69BD9F8]);
  sub_1B112280C();
  v65 = a4;
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
  v30 = v66;
  (*(v66 + 32))(v29, v23, v24);
  v31 = sub_1B112253C();
  *&v87 = MEMORY[0x1E69E7CC0];
  v75 = *(v31 + 16);
  if (v75)
  {
    v64 = v24;
    OUTLINED_FUNCTION_4_1();
    v72 = v32 + v35;
    v71 = v33 + 16;
    v83 = v9 + 16;
    v36 = (v9 + 8);
    v70 = (v33 + 8);
    v84 = a2;
    v37 = v77;
    v69 = a3;
    v68 = v9;
    v73 = v32;
    v74 = v29;
    while (v34 < *(v32 + 16))
    {
      v38 = *(v33 + 72);
      v82 = v34;
      v39 = v80;
      (*(v33 + 16))(v80, v72 + v38 * v34, v37);
      v40 = objc_allocWithZone(PARSafariSummarizationSummaryCandidate);
      v41 = v79;
      v42 = [v40 initWithReply_];
      v43 = sub_1B112248C();
      sub_1B1074A10(v43, v44, v42, &selRef_setUrl_);
      v81 = v42;
      v45 = sub_1B112249C();
      v46 = MEMORY[0x1E69E7CC0];
      v86 = MEMORY[0x1E69E7CC0];
      v47 = *(v45 + 16);
      if (v47)
      {
        OUTLINED_FUNCTION_4_1();
        v78 = v48;
        v50 = v48 + v49;
        v51 = *(v9 + 72);
        v52 = *(v9 + 16);
        do
        {
          v53 = v85;
          v52(v13, v50, v85);
          if (!sub_1B1074C20(v41, a2, v13))
          {
            [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
          }

          v54 = (*v36)(v13, v53);
          MEMORY[0x1B272DB50](v54);
          v55 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v55 >> 1)
          {
            OUTLINED_FUNCTION_6_1(v55);
            sub_1B1122BAC();
          }

          sub_1B1122BCC();
          v50 += v51;
          --v47;
          a2 = v84;
        }

        while (v47);
        v46 = v86;

        a3 = v69;
        v9 = v68;
        v39 = v80;
      }

      else
      {
      }

      v56 = a3;
      v57 = v81;
      sub_1B1071898(v46, v81, &qword_1EDAD5528, 0x1E69CA3E8, &selRef_setResults_);

      v37 = v77;
      v58 = (*v70)(v39, v77);
      MEMORY[0x1B272DB50](v58);
      v59 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v59 >> 1)
      {
        OUTLINED_FUNCTION_6_1(v59);
        sub_1B1122BAC();
      }

      v60 = v82 + 1;
      sub_1B1122BCC();
      v34 = v60;
      v33 = v76;
      v61 = v60 == v75;
      v32 = v73;
      v29 = v74;
      a3 = v56;
      if (v61)
      {
        v62 = v87;

        v63 = v65;
        v30 = v66;
        v24 = v64;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {

    v62 = MEMORY[0x1E69E7CC0];
    v63 = v65;
LABEL_19:
    sub_1B1071898(v62, v67, &qword_1EB739560, off_1E7AC5188, &selRef_setSummaryCandidates_);

    swift_unknownObjectRelease();
    sub_1B106C204(a3, v63);
    (*(v30 + 8))(v29, v24);
  }
}

uint64_t sub_1B107E4AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B107E4F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B107E560(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t (*a6)(id, uint64_t, uint64_t, uint64_t))
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = sub_1B11218CC();
  v13 = v12;

  return a6(v9, a4, v11, v13);
}

uint64_t sub_1B107E5FC()
{
  result = sub_1B10A91CC();
  byte_1EB73D4C8 = result & 1;
  return result;
}

void *sub_1B107E620()
{

  return v0;
}

uint64_t sub_1B107E658()
{
  sub_1B107E620();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B107E68C(uint64_t a1)
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

uint64_t sub_1B107E72C()
{
  v1 = sub_1B112194C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + *(*v0 + 144), v1);
  sub_1B11218FC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1B107E860()
{
  if (*(v0 + 81) != 1)
  {
    (*(*v0 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();

  sub_1B107809C(v0 + *(*v0 + 136), &unk_1EB739BB8, &qword_1B1133E38);
  v1 = *(*v0 + 144);
  v2 = sub_1B112194C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1B107E988()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739BB8, &qword_1B1133E38);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v3);
  v7 = v36 - v6 + 16;
  v8 = *(v0 + 40);
  v38 = *(v0 + 24);
  v39 = v8;
  v40 = *(v0 + 56);
  v41 = *(v0 + 72);
  v9 = *(&v8 + 1);
  sub_1B107FBFC(&v38, v36, &qword_1EB739CA8, &qword_1B1134100);
  sub_1B107EDC0(v9);
  if ((BYTE1(v39) & 1) == 0)
  {
    v10 = v40;
    if (v40)
    {
      v11 = v38;
      v12 = v39;
      v13 = *(v1 + 80);
      v14 = *(*v1 + 136);
      swift_beginAccess();
      sub_1B107FBFC(v1 + v14, v7, &unk_1EB739BB8, &qword_1B1133E38);
      v15 = sub_1B11228AC();
      result = __swift_getEnumTagSinglePayload(v7, 1, v15);
      if (result != 1)
      {
        v17 = *(v1 + 88);

        v18 = sub_1B1122E4C();
        v19 = sub_1B107F298(v13);
        LOBYTE(v34) = v12;
        sub_1B10AAFFC(v18, v17, v19, v20, 2, v7, v11, *(&v11 + 1), v34, v10);

        (*(*(v15 - 8) + 8))(v7, v15);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  v21 = *(v1 + 80);
  v22 = *(*v1 + 136);
  swift_beginAccess();
  sub_1B107FBFC(v1 + v22, v5, &unk_1EB739BB8, &qword_1B1133E38);
  v23 = sub_1B11228AC();
  result = __swift_getEnumTagSinglePayload(v5, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1B1122E4C();
  sub_1B107F298(v21);
  sub_1B112285C();
  (*(*(v23 - 8) + 8))(v5, v23);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B107809C(&v38, &qword_1EB739CA8, &qword_1B1134100);
  }

  v25 = Strong;
  *&v36[0] = v1;
  v26 = sub_1B1122A7C();
  v28 = v27;
  v29 = *(*(v25 + 32) + 16);
  os_unfair_lock_lock(v29);
  sub_1B10A3FEC(v25, v26, v28, v1, &off_1F27784B0);

  os_unfair_lock_unlock(v29);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v25 + 24);
    ObjectType = swift_getObjectType();
    (*(v30 + 16))(v1, &off_1F27784B0, ObjectType, v30);
    swift_unknownObjectRelease();
  }

  LOBYTE(v36[0]) = 1;

  sub_1B107809C(&v38, &qword_1EB739CA8, &qword_1B1134100);
  v32 = v36[0];
  v33 = *(v1 + 40);
  v36[0] = *(v1 + 24);
  v36[1] = v33;
  v36[2] = *(v1 + 56);
  v37 = *(v1 + 72);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 41) = v32;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0;
  sub_1B107809C(v36, &qword_1EB739CA8, &qword_1B1134100);
  *(v1 + 81) = 1;
  return swift_weakAssign();
}

uint64_t sub_1B107EDC0(uint64_t a1)
{
  result = sub_1B107F078(a1);
  if (result)
  {
    v3 = *(v1 + 88);

    v4 = sub_1B1122DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B1133CF0;
    v6 = aDiskwrite[0];
    v7 = aDiskwrite[1];
    v8 = MEMORY[0x1E69E6158];
    *(v5 + 56) = MEMORY[0x1E69E6158];
    v9 = v8;
    v10 = sub_1B106EAF4();
    *(v5 + 64) = v10;
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    sub_1B107A6C4();

    v11 = v9;
    v12 = sub_1B11229FC();
    v14 = v13;

    *(v5 + 96) = v11;
    *(v5 + 104) = v10;
    *(v5 + 72) = v12;
    *(v5 + 80) = v14;
    sub_1B112282C("Reporting to CA event: '%s'\n\twith data: %@", 42, 2, &dword_1B1064000, v3, v4, v5);

    v15 = aDiskwrite[0];
    v16 = aDiskwrite[1];
    swift_bridgeObjectRetain_n();

    MEMORY[0x1B272DAD0](46, 0xE100000000000000);
    MEMORY[0x1B272DAD0](v15, v16);

    v17 = sub_1B1122A4C();

    v18 = sub_1B11229DC();
    AnalyticsSendEvent();
  }

  return result;
}