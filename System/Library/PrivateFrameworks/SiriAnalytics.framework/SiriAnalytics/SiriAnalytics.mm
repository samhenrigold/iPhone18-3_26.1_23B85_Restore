void sub_1D9865518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id SiriAnalyticsXPCServiceInterface()
{
  v41[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5529068];
  v1 = MEMORY[0x1E695DFD8];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v41[2] = objc_opt_class();
  v41[3] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_publishMessages_completion_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v40 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_publishLargeMessage_completion_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v39[2] = objc_opt_class();
  v39[3] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_publishLargeMessage_completion_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v38[2] = objc_opt_class();
  v38[3] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_resolveMessages_completion_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x1E695DFD8];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v37[2] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_publishUnorderedMessages_topic_completion_ argumentIndex:0 ofReply:0];

  v16 = MEMORY[0x1E695DFD8];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_fetchLogicalClocksWithCompletion_ argumentIndex:1 ofReply:1];

  v19 = MEMORY[0x1E695DFD8];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v35[2] = objc_opt_class();
  v35[3] = objc_opt_class();
  v35[4] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:5];
  v21 = [v19 setWithArray:v20];
  [v0 setClasses:v21 forSelector:sel_fetchTags_ argumentIndex:1 ofReply:1];

  v22 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v24 = [v22 setWithArray:v23];
  [v0 setClasses:v24 forSelector:sel_fetchStateForPluginWithCompletion_ argumentIndex:0 ofReply:1];

  v25 = MEMORY[0x1E695DFD8];
  v33 = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v27 = [v25 setWithArray:v26];
  [v0 setClasses:v27 forSelector:sel_saveState_forPluginWithCompletion_ argumentIndex:0 ofReply:0];

  v28 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v30 = [v28 setWithArray:v29];
  [v0 setClasses:v30 forSelector:sel_createTag_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t sub_1D9865C68()
{
  OUTLINED_FUNCTION_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1D98692C4;

  return sub_1D98660A4();
}

NSObject *SiriAnalyticsCreateFireOnceTimer(NSObject *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a1);
  v7 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(v6, v5);

  return v6;
}

uint64_t sub_1D98660A4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v7 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1D986895C;

  return v7(v2);
}

void sub_1D986621C(void *a1)
{
  v2 = sub_1D986636C();
  v3 = type metadata accessor for RawUnifiedStreamMessage();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC13SiriAnalytics23RawUnifiedStreamMessage_underlying] = a1;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v7, sel_init);
  [v2 sendEvent_];
}

uint64_t sub_1D9866358(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D987106C(a1, a2);
  }

  return a1;
}

id sub_1D986636C()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___source;
  v2 = *&v0[OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___source];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___source];
  }

  else
  {
    v4 = [v0 source];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_1D992BD64();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1)
{

  return sub_1D992B814();
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

uint64_t OUTLINED_FUNCTION_2(uint64_t a2, ...)
{

  return sub_1D992B6D4();
}

uint64_t OUTLINED_FUNCTION_2_1@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_2_8()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_16(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1D986A454(a1, a2 | 0x8000000000000000, v4 + 73, v2 | 0x8000000000000000, 0xD000000000000025, v3 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_63(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return sub_1D98C51B8(v0, type metadata accessor for ComponentId);
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return sub_1D992B614();
}

uint64_t OUTLINED_FUNCTION_2_31()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return sub_1D992C0A4();
}

void *OUTLINED_FUNCTION_6_3()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1D990C1E0();
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2)
{

  return sub_1D992B614();
}

id OUTLINED_FUNCTION_6_7()
{

  return [v0 (v2 + 1683)];
}

void OUTLINED_FUNCTION_6_9()
{
  *(v0 - 128) = v0 - 96;
  *(v0 - 120) = v0 - 112;
  *(v0 - 112) = 0;
}

void OUTLINED_FUNCTION_6_11()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_6_13()
{

  return sub_1D992AE84();
}

uint64_t OUTLINED_FUNCTION_6_14()
{
}

void OUTLINED_FUNCTION_6_19(uint64_t a1@<X8>)
{

  sub_1D98DCEB4(0xD000000000000031, a1 | 0x8000000000000000, 0xD000000000000072, v1 | 0x8000000000000000, 0xD000000000000039, (v2 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_6_23()
{

  return sub_1D98FC958(v0, type metadata accessor for MonotonicTimestamp);
}

uint64_t sub_1D9866D34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return a2;
}

uint64_t sub_1D9866D90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_39(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1D9866DE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_4_14(void *a1)
{
  sub_1D98907D8(v3);

  return sub_1D98C3A7C(v2, v1, v3, a1);
}

uint64_t OUTLINED_FUNCTION_4_15()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_19()
{
  v1[12] = sub_1D98D3734;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return sub_1D9870FB8(v0, type metadata accessor for SelectRootClockId);
}

uint64_t OUTLINED_FUNCTION_4_23()
{

  return sub_1D992BF34();
}

uint64_t OUTLINED_FUNCTION_4_26(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_4_28()
{
  sub_1D9890810(v1);

  return sub_1D9890810(v0);
}

uint64_t OUTLINED_FUNCTION_4_29()
{

  return sub_1D992B614();
}

uint64_t OUTLINED_FUNCTION_35(unint64_t *a1)
{
  v2 = MEMORY[0x1EEE788E0];
  v3 = MEMORY[0x1EEE78948];

  return sub_1D987A2E0(a1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return sub_1D992B614();
}

void OUTLINED_FUNCTION_35_6()
{
  *(v2 - 128) = v1;

  sub_1D98B9860(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_20_1()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return sub_1D992C074();
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_4()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_1_10()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_1_12()
{
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return sub_1D98C51B8(v0, type metadata accessor for MessageGroupIdentifier);
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_38(uint64_t a1@<X8>)
{

  sub_1D98DCEB4(0xD000000000000022, a1 | 0x8000000000000000, 0xD00000000000007ELL, (v1 - 32) | 0x8000000000000000, 0x3A5F28656E757270, 0xE900000000000029);
}

uint64_t OUTLINED_FUNCTION_1_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_44()
{

  return sub_1D992B5E4();
}

uint64_t OUTLINED_FUNCTION_1_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1D9867834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C38, &qword_1D9935430);
  v5[7] = swift_task_alloc();
  v5[8] = type metadata accessor for StagedMessage(0);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9867900, 0, 0);
}

uint64_t sub_1D9867900()
{
  OUTLINED_FUNCTION_18();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[11] = *(Strong + OBJC_IVAR___SiriAnalyticsMessageProcessingStrategy_messageStagingProvider);

    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1D9867DC0;

    return sub_1D9867CE8();
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v4();
  }
}

uint64_t type metadata accessor for StagedMessage(uint64_t a1)
{
  result = qword_1ED8BD820;
  if (!qword_1ED8BD820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9867A58()
{
  if (v0[13])
  {
    v1 = sub_1D98682F0();
    if (!v1)
    {
LABEL_16:
      v12 = v0[10];
      goto LABEL_19;
    }

    v2 = v1;
    if (v1 >= 1)
    {
      v3 = 0;
      v4 = v0[6];
      v5 = v4 & 0xC000000000000001;
      v6 = v4 + 32;
      do
      {
        if (v5)
        {
          v7 = MEMORY[0x1DA73A2C0](v3, v0[6]);
        }

        else
        {
          v7 = *(v6 + 8 * v3);
        }

        v8 = v7;
        v9 = v0[7];
        v10 = v0[8];
        sub_1D98682F4(v9);
        if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
        {
          sub_1D986DEE4(v0[7], &qword_1ECB48C38, &qword_1D9935430);
          if (qword_1ED8BD6E8 != -1)
          {
            OUTLINED_FUNCTION_2_22();
            swift_once();
          }

          if (*(sub_1D98DCE30() + 24) == 1)
          {
            sub_1D98DCEB4(0xD00000000000001ELL, 0x80000001D993A8A0, 0xD00000000000006FLL, 0x80000001D993A810, 0xD000000000000012, 0x80000001D993A880);
          }
        }

        else
        {
          v11 = v0[9];
          sub_1D9868FE8(v0[7], v11);
          sub_1D9868C6C(v11);

          sub_1D98690E8(v11);
        }

        ++v3;
      }

      while (v2 != v3);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_1ED8BD6E8 != -1)
  {
LABEL_23:
    OUTLINED_FUNCTION_2_22();
    swift_once();
  }

  v12 = v0[10];
  v13 = sub_1D98DCE30();
  sub_1D98DD0E0(0xD00000000000006FLL, 0x80000001D993A810, 0xD000000000000012, 0x80000001D993A880, v13);
LABEL_19:

  OUTLINED_FUNCTION_25();

  return v14();
}

uint64_t sub_1D9867D08(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4_13(v7);
  *v8 = v9;
  v8[1] = sub_1D9869144;

  return sub_1D9867834(a1, v3, v4, v6, v5);
}

uint64_t sub_1D9867DC0()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;
  *(v4 + 104) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D9867A58, 0, 0);
}

uint64_t sub_1D9867ED4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_stream;
  v0[3] = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_stream;
  v3 = *(v1 + v2);
  v0[4] = v3;
  if (v3 || (v6 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask), (v0[5] = v6) == 0))
  {
    v8 = v0[1];

    return v8(v4);
  }

  else
  {

    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_1D98CDAE4;

    return MEMORY[0x1EEE6DA40]();
  }
}

id OUTLINED_FUNCTION_26_6(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1D9868164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = &v9 - v3;
  v5 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = a1;

  sub_1D98C8F14(0, 0, v4, &unk_1D99331F0, v7);
}

uint64_t sub_1D9868270()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98682A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D98682F4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 underlyingMessage];
  v4 = [v3 wrapAsAnyEvent];

  if (v4)
  {
    v5 = [v1 messageUUID];
    v6 = sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    v8 = v7;
    MEMORY[0x1EEE9AC00](*(v9 + 64));
    OUTLINED_FUNCTION_13();
    v12 = v11 - v10;
    sub_1D992AE64();

    v13 = [v1 logicalTimestamp];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1D9868568();
    }

    else
    {
      v15 = 0;
    }

    v23 = type metadata accessor for StagedMessage(0);
    v24 = v23[7];
    sub_1D992ADF4();
    v25 = sub_1D992AE04();
    __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v25);
    (*(v8 + 32))(a1, v12, v6);
    *(a1 + v23[5]) = v15;
    *(a1 + v23[6]) = v4;
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v23);
  }

  else
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
    }

    OUTLINED_FUNCTION_1_36();
    sub_1D98DCEB4(0xD000000000000020, v19, v17 | v16, v18 | 0x8000000000000000, v20, 0xE500000000000000);
    v21 = type metadata accessor for StagedMessage(0);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v21);
  }
}

uint64_t sub_1D9868568()
{
  v1 = [v0 clockIdentifier];
  v2 = sub_1D992AE84();
  MEMORY[0x1EEE9AC00](*(*(v2 - 8) + 64));
  OUTLINED_FUNCTION_13();
  sub_1D992AE64();

  [v0 nanoSecondsSinceBoot];
  v3 = objc_allocWithZone(sub_1D992B164());
  return sub_1D992B144();
}

uint64_t sub_1D9868628()
{
  sub_1D992B9F4();
  v2 = type metadata accessor for StagedMessage(0);
  v3 = *(v2 + 20);
  v4 = *(v3 + v0);
  if (!v4 || (v18[3] = sub_1D992B164(), v18[4] = sub_1D986904C(&qword_1ECB47A18, MEMORY[0x1E69CE6A0], MEMORY[0x1E69CE698]), v18[0] = v4, v5 = v4, sub_1D992B9D4(), v5, result = __swift_destroy_boxed_opaque_existential_1(v18), !v1))
  {
    MEMORY[0x1EEE9AC00](v3);
    result = sub_1D992B9C4();
    if (!v1)
    {
      v7 = sub_1D992AE04();
      v18[6] = &v15;
      v16 = *(v7 - 8);
      MEMORY[0x1EEE9AC00](*(v16 + 64));
      v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = *(v2 + 28);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
      v17 = &v15;
      MEMORY[0x1EEE9AC00](((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = &v15 - v12;
      sub_1D9866D90(v0 + v10, &v15 - v12, &qword_1ECB48710, &qword_1D9931340);
      if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
      {
        return sub_1D986B804(v13, &qword_1ECB48710, &qword_1D9931340);
      }

      else
      {
        v14 = v16;
        (*(v16 + 32))(v9, v13, v7);
        sub_1D992B9E4();
        return (*(v14 + 8))(v9, v7);
      }
    }
  }

  return result;
}

uint64_t sub_1D986895C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  OUTLINED_FUNCTION_16_0();

  return v3();
}

uint64_t sub_1D9868AD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D992AE84();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t RawUnifiedStreamMessage.serialize()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics23RawUnifiedStreamMessage_underlying);
  v2 = [v1 data];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D992AD84();
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1D9868C6C(uint64_t a1)
{
  if ([*(a1 + *(type metadata accessor for StagedMessage(0) + 24)) anyEventType] != 7)
  {
    goto LABEL_5;
  }

  if (qword_1ECB47D40 != -1)
  {
    swift_once();
  }

  if ((byte_1ECB496B0 & 1) == 0)
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
    }

    sub_1D98DCE30();
    MEMORY[0x1EEE9AC00]("Error checkpointing: ");
    v7[2] = a1;
    sub_1D98DD1DC(0xD000000000000073, v4 | 0x8000000000000000, 0xD000000000000010, v5 | 0x8000000000000000, sub_1D98F6574, v7);
  }

  else
  {
LABEL_5:
    sub_1D992B374();
    v3 = *(v1 + 24);
    if (v3)
    {
      [v3 trackMessageStagedWithSuccess_];
    }
  }

  return 1;
}

uint64_t sub_1D9868F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D9868FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StagedMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D986904C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D98690E8(uint64_t a1)
{
  v2 = type metadata accessor for StagedMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9869144()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1D9869848()
{
  v2[3] = &type metadata for PlatformFeatures;
  v2[4] = sub_1D98698A0();
  LOBYTE(v2[0]) = 1;
  v0 = sub_1D992AE94();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_1D98698A0()
{
  result = qword_1ECB47EA0;
  if (!qword_1ECB47EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47EA0);
  }

  return result;
}

uint64_t sub_1D9869AA8()
{
  sub_1D992AE84();
  OUTLINED_FUNCTION_0_4();
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_30_5();
  v5(v4);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v3 | 7);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_1D992B614();
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_7_7()
{
}

void OUTLINED_FUNCTION_7_9()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return type metadata accessor for BiomeResource(0);
}

uint64_t OUTLINED_FUNCTION_7_16(uint64_t a1)
{

  return sub_1D98D8990(a1, v1, type metadata accessor for ComponentIdentifiersTable.Record);
}

uint64_t OUTLINED_FUNCTION_7_19(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

const char *sub_1D9869DF4(char a1)
{
  if (a1)
  {
    return "metastoreEvolutionClocks";
  }

  else
  {
    return "messageStagingEvolution";
  }
}

void sub_1D9869E20()
{
  OUTLINED_FUNCTION_6_2();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22_8();
  v8 = type metadata accessor for LogicalClocksTable.Predicate(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  v13 = qword_1ECB49610;
  sub_1D986A454(0, 0xE000000000000000, 0xD00000000000007BLL, 0x80000001D993C0E0, 0xD00000000000001ALL, 0x80000001D993BBC0);
  if (sub_1D986AC54(0))
  {
    v14 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db);
    if (v14)
    {
      v84 = "s/LogicalClocksProvider.swift";
      v78 = "No clock records found.";
      v79 = v13;
      v15 = sub_1D992AE84();
      OUTLINED_FUNCTION_5();
      (*(v16 + 16))(v12, v5, v15);
      OUTLINED_FUNCTION_76();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      *(v12 + *(v8 + 20)) = 0;
      *(v12 + *(v8 + 28)) = 2;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48970, &qword_1D99323A0);
      v83 = &v75;
      OUTLINED_FUNCTION_9(v24);
      v26 = *(v25 + 64);
      MEMORY[0x1EEE9AC00](v27);
      v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
      v81 = &v75;
      MEMORY[0x1EEE9AC00](&v75);
      v33 = &v75 - v28;
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v29);
      v85 = v14;

      Nanoseconds = SiriAnalyticsMachAbsoluteTimeGetNanoseconds(v3);
      MEMORY[0x1EEE9AC00](v37);
      v38 = &v75 - v28;
      v82 = &v75 - v28;
      sub_1D9866D34(&v75 - v28, &v75 - v28, &qword_1ECB48970, &qword_1D99323A0);
      OUTLINED_FUNCTION_19_1(&v75 - v28, 1, v29);
      if (v39)
      {
        sub_1D986B804(&v75 - v28, &qword_1ECB48970, &qword_1D99323A0);
        v40 = MEMORY[0x1E69E7CC8];
      }

      else
      {
        v41 = sub_1D98EC648();
        v76 = v42;
        v77 = v41;
        v44 = v43;
        v45 = ~v43;
        sub_1D986B804(v38, &qword_1ECB48978, &qword_1D99323A8);
        v40 = MEMORY[0x1E69E7CC8];
        if (v45)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v86[0] = v40;
          OUTLINED_FUNCTION_14_12();
          sub_1D986B85C(v77, v76, v44, v47, 0xE800000000000000, 0, v48);
          v40 = v86[0];
        }
      }

      MEMORY[0x1EEE9AC00](v46);
      OUTLINED_FUNCTION_8_5();
      v51 = v49 - v50;
      v52 = OUTLINED_FUNCTION_29_6();
      sub_1D9866D34(v52, v53, v54, v55);
      v56 = OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_19_1(v56, v57, v29);
      if (v39)
      {
        sub_1D986B804(v51, &qword_1ECB48970, &qword_1D99323A0);
      }

      else
      {
        v77 = sub_1D98EC648();
        v59 = v58;
        v61 = v60;
        v62 = ~v60;
        sub_1D986B804(v51, &qword_1ECB48978, &qword_1D99323A8);
        if (v62)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86[0] = v40;
          sub_1D986B85C(v77, v59, v61, 0xD000000000000011, 0x80000001D9936910, 0, isUniquelyReferenced_nonNull_native);
          v40 = v86[0];
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v86[0] = v40;
      OUTLINED_FUNCTION_30_6();
      sub_1D986B85C(v64, v65, v66, v67, 0xEA0000000000746ELL, 258, v68);
      v69 = v86[0];
      OUTLINED_FUNCTION_34_3(v33);
      OUTLINED_FUNCTION_34_3(v82);
      OUTLINED_FUNCTION_2_29();
      sub_1D986BC08(v12, v1);
      OUTLINED_FUNCTION_76();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v8);
      sub_1D986BD4C(v69, v1, v86);

      sub_1D986B804(v1, &qword_1ECB48E00, &qword_1D9934AB8);
      __swift_project_boxed_opaque_existential_1(v86, v86[3]);
      OUTLINED_FUNCTION_32_7();
      LOBYTE(v69) = sub_1D986D1D0();
      __swift_destroy_boxed_opaque_existential_1(v86);
      if (v69)
      {
        OUTLINED_FUNCTION_0_45();
        sub_1D9870FB8(v12, v73);
      }

      else
      {
        sub_1D98DCEB4(0xD00000000000001DLL, 0x80000001D993C210, 0xD00000000000007BLL, v78 | 0x8000000000000000, 0xD00000000000001ALL, v84 | 0x8000000000000000);

        OUTLINED_FUNCTION_0_45();
        sub_1D9870FB8(v12, v74);
      }
    }
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D986A41C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D986A46C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void))
{
  v13 = OBJC_IVAR____TtC13SiriAnalytics12CustomLogger_logger;

  v14 = v7 + v13;
  v25 = sub_1D992B2D4();
  v15 = a7();

  if (os_log_type_enabled(v25, v15))
  {
    v23 = a5;
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v16 = 136315650;
    v17 = sub_1D992AD44();
    v18 = *(v17 - 8);
    MEMORY[0x1EEE9AC00](*(v18 + 64));
    OUTLINED_FUNCTION_2_27();
    sub_1D992ACB4();
    v19 = sub_1D992ACC4();
    v21 = v20;
    (*(v18 + 8))(v14, v17);
    v22 = sub_1D986A6F8(v19, v21, &v26);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1D986A6F8(v23, a6, &v26);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_1D986A6F8(a1, a2, &v26);
    _os_log_impl(&dword_1D9863000, v25, v15, "[%s: %s] %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA73B4E0](v24, -1, -1);
    MEMORY[0x1DA73B4E0](v16, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1D986A6F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D986A7BC(v11, 0, 0, 1, a1, a2);
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
    sub_1D986A8BC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D986A7BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D986A918(a5, a6);
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
    result = sub_1D992BD94();
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

uint64_t sub_1D986A8BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D986A918(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D986A964(a1, a2);
  sub_1D986AA7C(&unk_1F5517DF8);
  return v3;
}

uint64_t sub_1D986A964(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1D992B714())
  {
    result = sub_1D98DD344(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1D992BD44();
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
          result = sub_1D992BD94();
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

uint64_t sub_1D986AA7C(uint64_t result)
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

    result = sub_1D986AB60(result, v7, 1, v3);
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

char *sub_1D986AB60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DC0, &qword_1D99344B8);
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

uint64_t sub_1D986AC54(char a1)
{
  v2 = OBJC_IVAR___SiriAnalyticsMetastore_db;
  if (*(v1 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    return 1;
  }

  if ((*(v1 + OBJC_IVAR___SiriAnalyticsMetastore_bootstrapped) & 1) == 0 && (a1 & 1) == 0)
  {
    return 0;
  }

  v4 = OBJC_IVAR___SiriAnalyticsMetastore_storageURL;
  v5 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](*(v6 + 64));
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v1 + v4, v5);
  type metadata accessor for DbStorage(0);
  swift_allocObject();
  v10 = sub_1D990B198(v8, 2, 0, 1);
  v3 = 1;
  *(v1 + v2) = v10;

  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1D992BD64();

  v20 = 0xD000000000000019;
  v21 = 0x80000001D9938700;
  sub_1D9887904();
  v11 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v11);

  OUTLINED_FUNCTION_4_8();
  sub_1D986A454(v12, v13, v14, v15, v16, v17);

  return v3;
}

void sub_1D986AF8C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  if (v10 < a2)
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
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x1D986B1ACLL);
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

      return;
  }
}

unint64_t SiriAnalyticsMachAbsoluteTimeGetNanoseconds(unint64_t a1)
{
  if (_SiriAnalyticsMachAbsoluteTimeRate_onceToken[0] != -1)
  {
    dispatch_once(_SiriAnalyticsMachAbsoluteTimeRate_onceToken, &__block_literal_global);
  }

  return (*&_SiriAnalyticsMachAbsoluteTimeRate_rate * a1);
}

uint64_t OUTLINED_FUNCTION_21_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_task_create();
}

uint64_t sub_1D986B320(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_10_0()
{

  return sub_1D987A1D0(v0, type metadata accessor for MonotonicTimestamp);
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1)
{

  return sub_1D992BE34();
}

unint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2)
{

  return sub_1D9889568();
}

uint64_t OUTLINED_FUNCTION_10_9(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_10_10()
{
  *(v2 - 128) = 0;
  *(v2 - 120) = 0;
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
}

id OUTLINED_FUNCTION_10_11()
{

  return sub_1D988CFCC();
}

void OUTLINED_FUNCTION_10_13()
{
  v3 = *(v0 + 16);
  v2 = v0 + 16;
  *(v1 - 184) = *(v2 + 56);
  *(v1 - 176) = v3;
  *(v1 - 168) = v2;
  *(v1 - 192) = v2 - 8;
}

void OUTLINED_FUNCTION_10_14()
{
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
}

uint64_t OUTLINED_FUNCTION_10_15()
{

  return MEMORY[0x1EEE01C10](0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_10_16()
{
  result = v0;
  *(v2 - 120) = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_8(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_2(uint64_t a1, uint64_t a2)
{

  return sub_1D992BEC4();
}

uint64_t sub_1D986B804(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D986B85C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, __int16 a6, char a7)
{
  sub_1D986F8D4(a4, a5);
  OUTLINED_FUNCTION_0_22();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48838, &qword_1D9931B60);
  if ((sub_1D992BE34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_1D986F8D4(a4, a5);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_1D992BFC4();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v7;
  if (v17)
  {
    v21 = v20[7] + 24 * v16;
    v22 = *v21;
    v23 = *(v21 + 8);
    *v21 = a1;
    *(v21 + 8) = a2;
    v24 = *(v21 + 16);
    *(v21 + 16) = a3;

    return sub_1D986C908(v22, v23, v24);
  }

  else
  {
    sub_1D986BBA8(v16, a4, a5, a6 & 0x1FF, a1, a2, a3, v20);
  }
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return sub_1D98D4378(v0);
}

unint64_t sub_1D986BABC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *(v13 + 17);
      v16 = *v13 == a1 && *(v13 + 8) == a2;
      if (v16 || (sub_1D992BF64()) && v14 == a3 && ((v15 ^ ((a3 & 0x100) >> 8)) & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1D986BBA8(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = a8[6] + 24 * result;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4;
  *(v8 + 17) = HIBYTE(a4) & 1;
  v9 = a8[7] + 24 * result;
  *v9 = a5;
  *(v9 + 8) = a6;
  *(v9 + 16) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_1D986BC08(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_31_7();
  v4(v3);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return a2;
}

void sub_1D986BC74(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_15();
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_27_1();
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
  }

  OUTLINED_FUNCTION_31_1();

  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1D986BD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  MEMORY[0x1EEE9AC00](((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &v16 - v7;
  sub_1D9866D34(a2, &v16 - v7, &qword_1ECB48E00, &qword_1D9934AB8);
  v9 = type metadata accessor for LogicalClocksTable.Predicate(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {

    sub_1D986B804(v8, &qword_1ECB48E00, &qword_1D9934AB8);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  else
  {
    *(&v17 + 1) = v9;
    v18 = &off_1F55170B8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
    sub_1D986C22C(v8, boxed_opaque_existential_1);
  }

  a3[3] = &type metadata for SQLUpdate;
  a3[4] = &off_1F5516B88;
  v11 = swift_allocObject();
  *a3 = v11;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0;
  *(v11 + 64) = 0u;
  strcpy((v11 + 16), "logical_clocks");
  *(v11 + 31) = -18;
  sub_1D986C284(0x5F726574746573, 0xE700000000000000, a1);
  *(v11 + 32) = 0x5F726574746573;
  *(v11 + 40) = v12;
  *(v11 + 48) = v13;
  *(v11 + 56) = v14;
  return sub_1D986D144(&v16, v11 + 64);
}

uint64_t sub_1D986BF1C()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D986BF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_15();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_35_0();
LABEL_10:

    return __swift_getEnumTagSinglePayload(v7, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
    v7 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_4(unsigned int a1)
{
  v2 = a1 | 0x5F64657400000000;

  return sub_1D9889410(v2, 0xEA00000000006E6FLL);
}

uint64_t OUTLINED_FUNCTION_16_5(uint64_t a1)
{

  return sub_1D992BE34();
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_16_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D9879FF8(v9, &a9 - v10);
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

uint64_t sub_1D986C22C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_31_7();
  v4(v3);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return a2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1D986C284(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1D986C328(a3, sub_1D986C8D8);
}

void sub_1D986C328(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1D986C620(0, v2, 0);
    v4 = v48;
    v7 = sub_1D986C874(v3);
    v8 = 0;
    v9 = v3 + 64;
    v38 = v5;
    v39 = v2;
    v37 = v3 + 72;
    v40 = v3 + 64;
    v41 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_26;
      }

      v44 = v8;
      v45 = v5;
      v43 = v6;
      v11 = *(v3 + 56);
      v12 = *(v3 + 48) + 24 * v7;
      v13 = *(v12 + 8);
      v46 = *v12;
      v14 = *(v12 + 16);
      v15 = *(v12 + 17);
      v16 = v11 + 24 * v7;
      v47 = v4;
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);
      swift_bridgeObjectRetain_n();
      sub_1D986C8B8(v18, v17, v19);
      sub_1D986C8B8(v18, v17, v19);

      sub_1D986C908(v18, v17, v19);
      if (v15)
      {
        v20 = 256;
      }

      else
      {
        v20 = 0;
      }

      v21 = a2(v46, v13, v20 | v14, v18, v17, v19);
      v23 = v22;

      v24 = v17;
      v4 = v47;
      sub_1D986C908(v18, v24, v19);
      v26 = *(v47 + 16);
      v25 = *(v47 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D986C620(v25 > 1, v26 + 1, 1);
        v4 = v47;
      }

      *(v4 + 16) = v26 + 1;
      v27 = v4 + 16 * v26;
      *(v27 + 32) = v21;
      *(v27 + 40) = v23;
      v3 = v41;
      v28 = 1 << *(v41 + 32);
      if (v7 >= v28)
      {
        goto LABEL_27;
      }

      v9 = v40;
      v29 = *(v40 + 8 * v10);
      if ((v29 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v41 + 36) != v45)
      {
        goto LABEL_29;
      }

      v30 = v29 & (-2 << (v7 & 0x3F));
      if (v30)
      {
        v28 = __clz(__rbit64(v30)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v31 = v39;
      }

      else
      {
        v32 = v10 << 6;
        v33 = v10 + 1;
        v34 = (v37 + 8 * v10);
        v31 = v39;
        while (v33 < (v28 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_1D988AD24(v7, v45, v43 & 1);
            v28 = __clz(__rbit64(v35)) + v32;
            goto LABEL_22;
          }
        }

        sub_1D988AD24(v7, v45, v43 & 1);
      }

LABEL_22:
      v6 = 0;
      v8 = v44 + 1;
      v7 = v28;
      v5 = v38;
      if (v44 + 1 == v31)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1D986C66C()
{
  OUTLINED_FUNCTION_7_10();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_6_0(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_19_4();
    if (v4)
    {
      OUTLINED_FUNCTION_48(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * ((v15 - 32) / 16);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_22_4();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_6();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_3();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t result)
{
  *(v2 + 952) = result;
  *(v2 + 960) = *(v3 + *(v1 + 48));
  return result;
}

uint64_t OUTLINED_FUNCTION_17_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_17_4(void x0_0, void x1_0, void x2_0, uint64_t a1, void a5, void a6, void a7, void a8, uint64_t a3, char a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t sub_1D986C8B8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1D987BA38(a1, a2);
  }

  if (!a3)
  {
  }

  return a1;
}

uint64_t sub_1D986C908(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1D987106C(a1, a2);
  }

  if (!a3)
  {
  }

  return a1;
}

uint64_t sub_1D986C928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  if (a6 == 4 && (a5 | a4) == 0)
  {
    v21 = a1;

    MEMORY[0x1DA739C30](0x4C4C554E203D20, 0xE700000000000000);
  }

  else
  {
    if (a8)
    {
      v15 = a7;
    }

    else
    {
      v15 = 0;
    }

    if (a8)
    {
      v16 = a8;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    MEMORY[0x1DA739C30](v15, v16);

    MEMORY[0x1DA739C30](a1, a2);

    sub_1D986C8B8(a4, a5, a6);
    sub_1D986CB18();
    v17 = *(*(a9 + 24) + 16);
    sub_1D986D014(v17);
    v18 = *(a9 + 24);
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 40 * v17;
    *(v19 + 32) = 64;
    *(v19 + 40) = 0xE100000000000000;
    *(v19 + 48) = a4;
    *(v19 + 56) = a5;
    *(v19 + 64) = a6;
    v21 = a1;

    MEMORY[0x1DA739C30](2112800, 0xE300000000000000);
    MEMORY[0x1DA739C30](64, 0xE100000000000000);
  }

  return v21;
}

uint64_t sub_1D986CABC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_1D986CB30()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_12_6();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48A70, &unk_1D99326E0);
    v7 = swift_allocObject();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_8_8();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_29_5();
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v3] <= v9)
    {
      memmove(v9, v10, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_39_1()
{
  v3 = v1[96];
  v1[104] = v0;
  v1[103] = v3;

  return sub_1D992B874();
}

uint64_t OUTLINED_FUNCTION_11()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);

  return sub_1D987A170(v2, v3, type metadata accessor for RootLogicalClock);
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_1D986DEE4(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return sub_1D992AE84();
}

uint64_t OUTLINED_FUNCTION_11_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_10@<X0>(uint64_t a1@<X8>)
{

  return sub_1D98C6990(v2, v1 - a1);
}

uint64_t OUTLINED_FUNCTION_11_11()
{
  result = *(v0 + 40) + 1;
  *(v0 + 40) = result;
  return result;
}

void OUTLINED_FUNCTION_11_12()
{
  *(v2 - 96) = 0;
  *(v2 - 88) = 0;
  *(v2 - 80) = v0;
  *(v2 - 72) = v1;
}

uint64_t OUTLINED_FUNCTION_11_18(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return sub_1D99002F8();
}

void OUTLINED_FUNCTION_11_19()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return sub_1D992BD64();
}

uint64_t OUTLINED_FUNCTION_34_2()
{
  *(v3 + 648) = v0;
  *(v0 + 16) = v1;
  v6 = v0 + 16 * v4;
  *(v6 + 32) = sub_1D98AB1A8;
  *(v6 + 40) = v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1)
{

  return sub_1D986B804(a1, v1, v2);
}

void OUTLINED_FUNCTION_34_5(unint64_t a1@<X8>)
{

  sub_1D98B9860(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_31_0(unint64_t *a1)
{
  v2 = MEMORY[0x1EEE78928];

  return sub_1D9882D14(a1, v2);
}

void OUTLINED_FUNCTION_31_5()
{

  JUMPOUT(0x1DA739E70);
}

uint64_t OUTLINED_FUNCTION_31_6@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 152) = *(a1 + 8);
  return result;
}

uint64_t sub_1D986D0FC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1D986D144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484F8, &qword_1D99304F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics11DbDataValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1D986D1D0()
{
  OUTLINED_FUNCTION_12_18();
  v3 = v2;
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  v6 = OUTLINED_FUNCTION_11_21(v5, v15);
  v7(v6);
  v8 = OUTLINED_FUNCTION_18_12();
  v10 = v9(v8);
  v13 = sub_1D987005C(v10, v11, v12);

  (*(v3 + 8))(v1, v0);
  return v13 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics12SQLStatement_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D986D310()
{
  sub_1D986D4C8((v0 + 6), &v13);
  if (v14)
  {
    sub_1D986D53C(&v13, &v15);
    v1 = v17;
    v2 = v18;
    __swift_project_boxed_opaque_existential_1(&v15, v17);
    v3 = (*(v2 + 8))(v1, v2);
    v5 = v4;
    *&v13 = 32;
    *(&v13 + 1) = 0xE100000000000000;
    MEMORY[0x1DA739C30](v3);

    v6 = *(&v13 + 1);
    v7 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  else
  {
    sub_1D988395C(&v13);
    v5 = 0;
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v9 = sub_1D986DDBC(v0[2], v0[3], v0[4], v0[5]);
  v11 = v10;
  if (v8 && v5)
  {
    v15 = v5;
    sub_1D986FD90(v8);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1D992BD64();

  v15 = 0x20455441445055;
  v16 = 0xE700000000000000;
  MEMORY[0x1DA739C30](*v0, v0[1]);
  MEMORY[0x1DA739C30](10, 0xE100000000000000);
  MEMORY[0x1DA739C30](v9, v11);

  MEMORY[0x1DA739C30](10, 0xE100000000000000);
  MEMORY[0x1DA739C30](v7, v6);

  MEMORY[0x1DA739C30](59, 0xE100000000000000);
  return v15;
}

uint64_t sub_1D986D4C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484F8, &qword_1D99304F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D986D53C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return sub_1D987A1D0(v0, type metadata accessor for LogicalClockStart);
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_12_3()
{

  sub_1D98BD920();
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t result)
{
  *(result + 16) = &unk_1D9931EA8;
  *(result + 24) = v1;
  return result;
}

id OUTLINED_FUNCTION_155(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_12_7@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1D988C450(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_1D98C3BD8(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_1D992AD44();
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  v1[13] = *(v2 + 72);
  v1[14] = *(v2 + 16);
  v1[15] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v0;
}

void OUTLINED_FUNCTION_12_14()
{
  *(v2 + 16) = v1;
  v5 = v2 + 24 * v0;
  *(v5 + 32) = *(v4 - 160);
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
}

void OUTLINED_FUNCTION_5_1(uint64_t a1, unint64_t a2, uint64_t a3)
{

  sub_1D98DCEB4(a1, a2, a3, v3 | 0x8000000000000000, 0xD000000000000018, v4 | 0x8000000000000000);
}

id OUTLINED_FUNCTION_5_4()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return sub_1D992C074();
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, uint64_t a2)
{

  return sub_1D992B9C4();
}

void OUTLINED_FUNCTION_5_7(uint64_t a1@<X8>)
{
  *(a1 + 48) = 258;
  v2 = *(v1 - 98);
  *(a1 + 50) = *(v1 - 102);
  *(a1 + 54) = v2;
}

uint64_t OUTLINED_FUNCTION_5_15@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1D988C450(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_5_17@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1D9879FF8(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_5_27()
{
  __swift_project_boxed_opaque_existential_1((v0 - 168), *(v0 - 144));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return sub_1D992B614();
}

id OUTLINED_FUNCTION_9_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{

  return sub_1D989CF10(a1, a2, a3, a4, a5, 0x41532E454C4FLL, 0xE600000000000000, 0, a9);
}

void OUTLINED_FUNCTION_9_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1D98DCEB4(a1, v4, a3, v3 | 0x8000000000000000, 0xD00000000000001BLL, v5 | 0x8000000000000000);
}

void OUTLINED_FUNCTION_9_10(uint64_t a1@<X8>)
{
  *(v2 - 152) = 7;
  *(v2 - 144) = a1;
  *(v2 - 136) = v1;
}

void OUTLINED_FUNCTION_9_16(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1D98DCEB4(a1, a2 | 0x8000000000000000, v4 + 76, v2 | 0x8000000000000000, 0xD00000000000001FLL, v3 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_9_18()
{

  return sub_1D992AE84();
}

uint64_t sub_1D986DC38(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D986C908(a1, a2, a3);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_18_3()
{
  sub_1D9866358(v0, *(v1 - 176));
}

void OUTLINED_FUNCTION_18_7()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_18_11@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1D986DDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v4 = sub_1D992B5E4();
  v6 = v5;

  MEMORY[0x1DA739C30](v4, v6);

  return 542393683;
}

unint64_t sub_1D986DE88()
{
  result = qword_1ED8BD650;
  if (!qword_1ED8BD650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BD650);
  }

  return result;
}

uint64_t sub_1D986DEE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D986E158(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1D992BC94();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = OBJC_IVAR___SiriAnalyticsRawUnifiedStream_underlying;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA73A2C0](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 storageRepresentation];
      if (v8)
      {
        v9 = v8;
        if (*(v1 + v5))
        {
          sub_1D986621C(v8);
        }

        v7 = v9;
      }

      else
      {
        if (qword_1ED8BF428 != -1)
        {
          OUTLINED_FUNCTION_0_14();
          swift_once();
        }

        sub_1D98DCEB4(0xD000000000000032, 0x80000001D9937A20, 0xD00000000000006FLL, 0x80000001D9937A60, 0xD000000000000014, 0x80000001D9937AD0);
      }

      ++v4;
    }

    while (v3 != v4);
  }
}

uint64_t sub_1D986E2E4(void *a1, uint64_t a2, void *a3, unint64_t *a4, void *a5, void (*a6)(uint64_t))
{
  sub_1D986E35C(0, a4, a5);
  sub_1D992B7B4();
  v9 = a1;
  v10 = OUTLINED_FUNCTION_4_4();
  a6(v10);
}

uint64_t sub_1D986E35C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return sub_1D992C074();
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_1D992B614();
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, void *a2)
{
  *a2 = v4;
  a2[1] = v2;
  a2[2] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_3_13@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  v3 = v2 - 1;
  if (v3 < 0)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void OUTLINED_FUNCTION_3_16()
{
  v1[10] = 0;
  v1[11] = 0xE000000000000000;
  v1[18] = v0;
}

id OUTLINED_FUNCTION_3_19()
{

  return [v0 (v1 + 3064)];
}

unint64_t OUTLINED_FUNCTION_3_26()
{
  sub_1D98907D8(v0);

  return sub_1D98907D8(v1);
}

uint64_t sub_1D986E6C0()
{
  v2 = v0;
  OUTLINED_FUNCTION_11_2();
  v94 = v3;
  v95 = 0;
  v96 = v3;
  v4 = sub_1D992AE84();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866D90(v0, v0, &qword_1ECB481D0, &qword_1D992F9F0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v4);
  v90 = v8;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D986B804(v0, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    (*(v6 + 32))(&v83 - v9, v0, v4);
    v1 = &v83;
    MEMORY[0x1EEE9AC00](v13);
    v14 = OUTLINED_FUNCTION_28_1();
    v15(v14);
    v16 = sub_1D992AE24();
    v18 = v17;
    v19 = v6;
    v20 = *(v6 + 8);
    v20(&v83 - v9, v4);
    OUTLINED_FUNCTION_11_2();
    v0 = &v94;
    sub_1D986F118(&v83, 0xE800000000000000, 61, 0xE100000000000000, v16, v18, 0);

    v20(&v83 - v9, v4);
    v6 = v19;
    v8 = v90;
  }

  v21 = type metadata accessor for LogicalClocksTable.Predicate(0);
  v22 = *(v2 + *(v21 + 20));
  v84 = v21;
  if (v22)
  {
    v89 = v4;
    v23 = *(v22 + 16);
    v24 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v83 = v2;
      v93 = MEMORY[0x1E69E7CC0];
      sub_1D98B9860(0, v23, 0);
      v24 = v93;
      v26 = *(v6 + 16);
      v25 = v6 + 16;
      v27 = (v22 + ((*(v25 + 64) + 32) & ~*(v25 + 64)));
      v86 = *(v25 + 56);
      v87 = v26;
      v85 = (v25 - 8);
      v88 = v25;
      do
      {
        v92 = &v83;
        MEMORY[0x1EEE9AC00](&v83);
        v28 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
        v29 = v89;
        v30 = v87;
        v87(&v83 - v28, v27, v89);
        MEMORY[0x1EEE9AC00](v31);
        v30(&v83 - v28, &v83 - v28, v29);
        v32 = sub_1D992AE24();
        v91 = v33;
        v34 = *v85;
        v35 = OUTLINED_FUNCTION_29_2();
        v34(v35);
        (v34)(&v83 - v28, v29);
        v93 = v24;
        v1 = *(v24 + 16);
        v36 = *(v24 + 24);
        if (v1 >= v36 >> 1)
        {
          sub_1D98B9860(v36 > 1, v1 + 1, 1);
          v24 = v93;
        }

        *(v24 + 16) = v1 + 1;
        v37 = v24 + 24 * v1;
        v38 = v91;
        *(v37 + 32) = v32;
        *(v37 + 40) = v38;
        *(v37 + 48) = 0;
        v27 += v86;
        --v23;
        v8 = v90;
      }

      while (v23);
      v2 = v83;
      v21 = v84;
      OUTLINED_FUNCTION_11_2();
    }

    v0 = &v94;
    sub_1D987B5CC(v1, 0xE800000000000000, 0, v24);
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v92 = &v83;
  OUTLINED_FUNCTION_5();
  v41 = *(v40 + 64);
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]((v41 + 15));
  v43 = *(v21 + 24);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
  OUTLINED_FUNCTION_9(v44);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866D90(v2 + v43, v0, &qword_1ECB48708, &qword_1D9931338);
  if (__swift_getEnumTagSinglePayload(v0, 1, v39) == 1)
  {
    sub_1D986B804(v0, &qword_1ECB48708, &qword_1D9931338);
  }

  else
  {
    v83 = v2;
    sub_1D989437C(v0, &v83 - v42, &qword_1ECB48700, &qword_1D9931330);
    v46 = sub_1D992AE04();
    v90 = &v83;
    OUTLINED_FUNCTION_0();
    v48 = v47;
    MEMORY[0x1EEE9AC00](v49);
    OUTLINED_FUNCTION_33_0();
    v52 = v51 - (v50 & 0xFFFFFFFFFFFFFFF0);
    v53 = &v83 - v42;
    v91 = MEMORY[0x1EEE9AC00](v51);
    sub_1D9866D90(v91, &v83 - v42, &qword_1ECB48700, &qword_1D9931330);
    v54 = *(v39 + 48);
    OUTLINED_FUNCTION_18_1(v53);
    v89 = v48;
    if (v55)
    {
      sub_1D986B804(&v53[v54], &qword_1ECB48710, &qword_1D9931340);
      sub_1D986B804(v53, &qword_1ECB48710, &qword_1D9931340);
    }

    else
    {
      (*(v48 + 32))(v52, v53, v46);
      sub_1D986B804(&v53[v54], &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v56);
      v57 = OUTLINED_FUNCTION_26_1();
      v58(v57);
      sub_1D992ADC4();
      v59 = *(v48 + 8);
      v60 = OUTLINED_FUNCTION_29_2();
      v59(v60);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_36_0();
      sub_1D986F118(v61, v62, 15678, 0xE200000000000000, v63, 0, 2);
      (v59)(v52, v46);
    }

    MEMORY[0x1EEE9AC00](v90);
    OUTLINED_FUNCTION_33_0();
    v66 = v65 - (v64 & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v65);
    v67 = &v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = v91;
    sub_1D9866D90(v91, v67, &qword_1ECB48700, &qword_1D9931330);
    v69 = *(v39 + 48);
    OUTLINED_FUNCTION_18_1(&v67[v69]);
    if (v55)
    {
      sub_1D986B804(v68, &qword_1ECB48700, &qword_1D9931330);
      sub_1D986B804(&v67[v69], &qword_1ECB48710, &qword_1D9931340);
      sub_1D986B804(&v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ECB48710, &qword_1D9931340);
    }

    else
    {
      v70 = v89;
      (*(v89 + 32))(v66, &v67[v69], v46);
      sub_1D986B804(v67, &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v71);
      v72 = OUTLINED_FUNCTION_26_1();
      v73(v72);
      sub_1D992ADC4();
      v74 = *(v70 + 8);
      v75 = OUTLINED_FUNCTION_29_2();
      v74(v75);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_36_0();
      sub_1D986F118(v76, v77, 15676, 0xE200000000000000, v78, 0, 2);
      (v74)(v66, v46);
      sub_1D986B804(v68, &qword_1ECB48700, &qword_1D9931330);
    }

    v2 = v83;
  }

  v79 = *(v2 + *(v84 + 28));
  if (v79 != 2)
  {
    v80 = OUTLINED_FUNCTION_16_3();
    sub_1D986F118(v80, v81, 0, v79 & 1, 0, 0, 255);
    sub_1D9893CEC(0, v79 & 1);
  }

  sub_1D986FC08(v94, v95, v96);

  return OUTLINED_FUNCTION_9_0();
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1)
{

  return sub_1D992BE34();
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_task_create();
}

void OUTLINED_FUNCTION_15_5()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t sub_1D986F118(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  OUTLINED_FUNCTION_1_4();
  if (!a4)
  {
    v15 = 0x4C4C554E205349;
    v16 = 0xE700000000000000;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v15 = 0x4E20544F4E205349;
    v16 = 0xEB000000004C4C55;
LABEL_5:
    MEMORY[0x1DA739C30](v15, v16);
LABEL_8:
    sub_1D986CABC(sub_1D986FB38);
    v29 = *(*v7 + 16);
    result = sub_1D986D0FC(v29, sub_1D986FB38);
    v31 = *v7;
    *(v31 + 16) = v29 + 1;
    v32 = v31 + 16 * v29;
    *(v32 + 32) = a1;
    *(v32 + 40) = a2;
    *v7 = v31;
    return result;
  }

  if (a7 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_8();
    sub_1D986C8B8(v17, v18, v19);
    MEMORY[0x1DA739C30](a1, a2);
    v20 = OUTLINED_FUNCTION_0_8();
    sub_1D986F8C0(v20, v21, v22);

    sub_1D986CABC(sub_1D986CB30);
    v23 = *(v7[2] + 16);
    sub_1D986D0FC(v23, sub_1D986CB30);
    v24 = v7[2];
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 40 * v23;
    *(v25 + 32) = 64;
    *(v25 + 40) = 0xE100000000000000;
    *(v25 + 48) = a5;
    *(v25 + 56) = a6;
    *(v25 + 64) = a7;
    v7[2] = v24;
    sub_1D986FB24(a3, a4);
    OUTLINED_FUNCTION_1_4();
    MEMORY[0x1DA739C30](64, 0xE100000000000000);

    MEMORY[0x1DA739C30](a3, a4);

    v26 = OUTLINED_FUNCTION_0_8();
    sub_1D986DC38(v26, v27, v28);
    goto LABEL_8;
  }
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_23(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_24()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 176) | 0x8000000000000000;
  v4 = *(v0 - 128);

  sub_1D98DCEB4(v2, v4, 0xD00000000000006CLL, v3, 0x726F466B63656863, 0xEF293A5F28434241);
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_31(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_35(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v4 = v1 + *(a1 + 20);
  *v4 = 0;
  *(v4 + 8) = 1;

  return type metadata accessor for ResourceType(0);
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return sub_1D992B614();
}

uint64_t OUTLINED_FUNCTION_0_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_49(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_50(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1D986F8C0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D986C8B8(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1D986F8D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_5();
  sub_1D992B6D4();
  sub_1D992C0C4();
  v2 = OUTLINED_FUNCTION_9_2();

  return sub_1D986BABC(v2, v3, v4, v5);
}

id OUTLINED_FUNCTION_8_4()
{

  return [v0 (v3 + 3293)];
}

uint64_t OUTLINED_FUNCTION_8_7(uint64_t a1, unint64_t a2)
{
  sub_1D9866358(a1, a2);
  sub_1D9866358(*(v2 - 216), *(v2 - 208));
}

uint64_t OUTLINED_FUNCTION_8_9@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1D9879FF8(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return sub_1D992AD44();
}

uint64_t sub_1D986FB24(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_1D986FB38()
{
  OUTLINED_FUNCTION_9_8();
  if (v4)
  {
    OUTLINED_FUNCTION_6_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_35_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487C8, &unk_1D99324B0);
    v7 = OUTLINED_FUNCTION_20_3();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_5_13();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_18_4();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1D986FC08(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 21071;
  }

  else
  {
    v3 = 4476481;
  }

  if (a2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x1DA739C30](v3, v4);

  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v5 = sub_1D992B5E4();
  v7 = v6;

  MEMORY[0x1DA739C30](v5, v7);

  return 0x204552454857;
}

unint64_t sub_1D986FD2C()
{
  result = qword_1ED8BD680;
  if (!qword_1ED8BD680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB483F8, &unk_1D9931370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD680);
  }

  return result;
}

void sub_1D986FD90(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_44(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D986FE38(v4, 1, sub_1D986CB30);
  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_28();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_19();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_10();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1D986FE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t OUTLINED_FUNCTION_14_0()
{
}

uint64_t OUTLINED_FUNCTION_14_9(uint64_t a1)
{
  *(v1 + 48) = a1;

  return type metadata accessor for TailToOSLog();
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return swift_unknownObjectRelease();
}

const char *sub_1D987005C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D9870178() & 1) == 0)
  {
    LOBYTE(v6) = 0;
    return (v6 & 1);
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_9_19();
    swift_beginAccess();
    sub_1D992B6B4();
    OUTLINED_FUNCTION_9_19();
    sqlite3_exec(v14, v15, v16, v17, 0);

    v18 = OUTLINED_FUNCTION_8_18();
    LOBYTE(v6) = sub_1D9870308(v18, v19, v20, v21, v22);
    return (v6 & 1);
  }

  v6 = sub_1D98701CC(a1, a2, a3);
  if (!v6)
  {
    return (v6 & 1);
  }

  v7 = v6;
  sqlite3_step(v6);
  sqlite3_finalize(v7);
  v8 = OUTLINED_FUNCTION_8_18();

  return sub_1D9870308(v8, v9, v10, v11, v12);
}

uint64_t sub_1D9870178()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
  OUTLINED_FUNCTION_9_19();
  swift_beginAccess();
  if (*(v0 + v1))
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D990B368();
  }

  return v2 & 1;
}

sqlite3_stmt *sub_1D98701CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  ppStmt[0] = 0;
  if ((sub_1D9870178() & 1) == 0)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
  OUTLINED_FUNCTION_9_19();
  swift_beginAccess();
  v6 = *(v3 + v5);
  v7 = sub_1D992B614();
  v8 = [v7 UTF8String];
  v9 = v7;
  v10 = sqlite3_prepare_v2(v6, v8, 0x80000000, ppStmt, 0);
  if ((sub_1D9870308(v10, 0xD00000000000005CLL, 0x80000001D993DAE0, 0xD000000000000021, 0x80000001D993DB40) & 1) == 0)
  {
    return 0;
  }

  v11 = ppStmt[0];
  if (ppStmt[0] && a3 && (sub_1D98705D0(a3, ppStmt[0]) & 1) == 0)
  {
    sqlite3_finalize(v11);
    return 0;
  }

  return v11;
}

const char *sub_1D9870308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v10 = a1;
  v11 = sub_1D98705A4(a1, &unk_1F5518238);
  if (v11)
  {
    return v11;
  }

  v49 = a3;
  v50 = a4;
  v12 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
  OUTLINED_FUNCTION_9_19();
  swift_beginAccess();
  v13 = sqlite3_extended_errcode(*(v6 + v12));
  result = sqlite3_errstr(v10);
  if (result)
  {
    v15 = sub_1D992B604();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      if (qword_1ED8BD6D8 != -1)
      {
        OUTLINED_FUNCTION_1_43(&qword_1ED8BD6D8);
      }

      v46 = qword_1ECB49638;
      sub_1D992BD64();

      OUTLINED_FUNCTION_17_13();
      v19 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v19);

      OUTLINED_FUNCTION_13_17();
      HIDWORD(v51) = v13;
      OUTLINED_FUNCTION_17_13();
      v20 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v20);

      MEMORY[0x1DA739C30](0x7069726373656420, 0xEE00203A6E6F6974);
      MEMORY[0x1DA739C30](v17, v18);

      v29 = OUTLINED_FUNCTION_19_9(v21, v22, v23, v24, v25, v26, v27, v28, v46, a5, v49, v50, v51, 0x203A726F727265);
      v34 = v48;
    }

    else
    {
      if (qword_1ED8BD6D8 != -1)
      {
        OUTLINED_FUNCTION_1_43(&qword_1ED8BD6D8);
      }

      sub_1D992BD64();

      v35 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v35);

      OUTLINED_FUNCTION_13_17();
      HIDWORD(v51) = v13;
      v36 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v36);

      v29 = OUTLINED_FUNCTION_19_9(v37, v38, v39, v40, v41, v42, v43, v44, v45, v47, a3, v50, v51, 0x203A726F727265);
      v34 = a5;
    }

    sub_1D98DCEB4(v29, v30, v31, v32, v33, v34);

    sub_1D990BF54();
    return v11;
  }

  __break(1u);
  return result;
}

BOOL sub_1D98705A4(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1D98705D0(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = a2;
  v126 = *MEMORY[0x1E69E9840];
  v4 = sqlite3_bind_parameter_count(a2);
  v5 = *(a1 + 16);
  if (v5 > v4)
  {
    return 0;
  }

  if (v5)
  {
    v7 = 0;
    v121 = a1 + 32;
    v118 = v2;
    v119 = *(a1 + 16);
    while (2)
    {
      v8 = v7 + 1;
      v9 = v121 + 40 * v7;
      v11 = *(v9 + 8);
      v10 = *(v9 + 16);
      v12 = *(v9 + 24);
      v13 = *(v9 + 32);
      if (*(v9 + 32) < 0)
      {
        if (v7 <= 0x7FFFFFFE)
        {
          v28 = *v9;
          switch(*(v9 + 16))
          {
            case 1u:
              v72 = OUTLINED_FUNCTION_94();
              v74 = v28;
LABEL_39:
              v75 = sqlite3_bind_int64(v72, v73, v74);
              goto LABEL_40;
            case 2u:
              v56 = OUTLINED_FUNCTION_94();
LABEL_33:
              v75 = sqlite3_bind_double(v56, v57, v58);
              goto LABEL_40;
            case 3u:
              v122 = *(v9 + 24);
              v120 = v7 + 1;
              v8 = HIDWORD(v28);
              switch(v11 >> 62)
              {
                case 1uLL:
                  if (v28 > v28 >> 32)
                  {
                    goto LABEL_98;
                  }

                  v112 = *(v9 + 32);

                  v113 = sub_1D992ABC4();
                  if (!v113)
                  {
                    goto LABEL_82;
                  }

                  v114 = sub_1D992ABE4();
                  if (__OFSUB__(v28, v114))
                  {
                    goto LABEL_104;
                  }

                  v113 += v28 - v114;
LABEL_82:
                  sub_1D992ABD4();
                  LODWORD(v13) = HIDWORD(v28) - v28;
                  if (__OFSUB__(HIDWORD(v28), v28))
                  {
                    goto LABEL_100;
                  }

                  v8 = v120;
                  if (qword_1ED8BD808 != -1)
                  {
                    OUTLINED_FUNCTION_0_52();
                    swift_once();
                  }

                  v115 = OUTLINED_FUNCTION_94();
                  sqlite3_bind_blob(v115, v116, v113, v13, v117);
                  v34 = OUTLINED_FUNCTION_2_39();
                  v37 = v122;
                  v38 = v112;
                  goto LABEL_14;
                case 2uLL:
                  v124 = *(v9 + 32);
                  v97 = *(v28 + 16);

                  v98 = sub_1D992ABC4();
                  if (!v98)
                  {
                    goto LABEL_67;
                  }

                  v99 = sub_1D992ABE4();
                  if (__OFSUB__(v97, v99))
                  {
                    goto LABEL_103;
                  }

                  v98 += v97 - v99;
LABEL_67:
                  v8 = v120;
                  sub_1D992ABD4();
                  v101 = *(v28 + 16);
                  v100 = *(v28 + 24);
                  v13 = v100 - v101;
                  if (__OFSUB__(v100, v101))
                  {
                    goto LABEL_99;
                  }

                  if (v13 < 0xFFFFFFFF80000000)
                  {
                    goto LABEL_101;
                  }

                  if (v13 > 0x7FFFFFFF)
                  {
                    goto LABEL_102;
                  }

                  if (qword_1ED8BD808 != -1)
                  {
                    OUTLINED_FUNCTION_0_52();
                    swift_once();
                  }

                  v102 = OUTLINED_FUNCTION_94();
                  sqlite3_bind_blob(v102, v103, v98, v13, v104);
                  v34 = OUTLINED_FUNCTION_2_39();
                  v37 = v122;
                  v38 = v124;
                  break;
                case 3uLL:
                  v76 = *(v9 + 32);
                  *(&v125 + 6) = 0;
                  *&v125 = 0;
                  if (qword_1ED8BD808 != -1)
                  {
                    OUTLINED_FUNCTION_0_52();
                    swift_once();
                  }

                  v77 = OUTLINED_FUNCTION_20_9();
                  v80 = 0;
                  goto LABEL_76;
                default:
                  v76 = *(v9 + 32);
                  LOWORD(v125) = *v9;
                  BYTE2(v125) = BYTE2(v28);
                  BYTE3(v125) = BYTE3(v28);
                  BYTE4(v125) = BYTE4(v28);
                  BYTE5(v125) = BYTE5(v28);
                  BYTE6(v125) = BYTE6(v28);
                  BYTE7(v125) = HIBYTE(v28);
                  WORD4(v125) = v11;
                  BYTE10(v125) = BYTE2(v11);
                  BYTE11(v125) = BYTE3(v11);
                  BYTE12(v125) = BYTE4(v11);
                  BYTE13(v125) = BYTE5(v11);
                  if (qword_1ED8BD808 != -1)
                  {
                    OUTLINED_FUNCTION_0_52();
                    swift_once();
                  }

                  v77 = OUTLINED_FUNCTION_20_9();
LABEL_76:
                  sqlite3_bind_blob(v77, v78, v79, v80, v81);
                  v105 = OUTLINED_FUNCTION_2_39();
                  sub_1D9870F58(v105, v106, v107, v122, v76);
                  v108 = OUTLINED_FUNCTION_4_27();
                  sub_1D9870F58(v108, v109, v10, v122, v76);
                  v110 = OUTLINED_FUNCTION_4_27();
                  sub_1D986C908(v110, v111, 3);
                  if (v13)
                  {
                    return 0;
                  }

                  goto LABEL_62;
              }

              goto LABEL_14;
            case 4u:
              v54 = OUTLINED_FUNCTION_94();
LABEL_31:
              v75 = sqlite3_bind_null(v54, v55);
LABEL_40:
              if (v75)
              {
                return 0;
              }

              goto LABEL_62;
            default:
              v29 = OUTLINED_FUNCTION_4_27();
              sub_1D986C8B8(v29, v30, 0);
              OUTLINED_FUNCTION_4_27();
              [sub_1D992B614() UTF8String];
              v31 = OUTLINED_FUNCTION_20_4();
              v32 = OUTLINED_FUNCTION_94();
              sqlite3_bind_text(v32, v33, v13, -1, 0);
              v34 = OUTLINED_FUNCTION_2_39();
              v37 = v12;
              v38 = v13;
LABEL_14:
              sub_1D9870F58(v34, v35, v36, v37, v38);
              if (v13)
              {
                return 0;
              }

LABEL_62:
              v7 = v8;
              if (v8 == v5)
              {
                return 1;
              }

              continue;
          }
        }

        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
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
      }

      break;
    }

    v123 = v13;
    sub_1D986C8B8(v10, v12, v13);

    if ((*(v9 + 32) & 0x80000000) == 0)
    {
      v14 = OUTLINED_FUNCTION_3_25();
      sub_1D9870EF8(v14, v15, v16, v17, v18);

      v19 = 4;
      v20 = &unk_1F5518210;
      while (--v19)
      {
        v21 = v20 + 2;
        v13 = *v20;

        v22 = sub_1D992B724();

        v20 = v21;
        if (v22)
        {
          v23 = OUTLINED_FUNCTION_3_25();
          sub_1D9870F58(v23, v24, v25, v26, v27);
          goto LABEL_18;
        }
      }

      *&v125 = 64;
      *(&v125 + 1) = 0xE100000000000000;
      v13 = &v125;
      v39 = OUTLINED_FUNCTION_4_27();
      MEMORY[0x1DA739C30](v39);

      v40 = OUTLINED_FUNCTION_3_25();
      sub_1D9870F58(v40, v41, v42, v43, v44);
LABEL_18:
      v2 = v118;
      v5 = v119;
    }

    OUTLINED_FUNCTION_4_27();
    v45 = sub_1D992B614();

    [v45 UTF8String];
    v46 = OUTLINED_FUNCTION_20_4();
    if (sqlite3_bind_parameter_index(v2, v13))
    {
      switch(v123)
      {
        case 1:
          v72 = OUTLINED_FUNCTION_10_17();
          v74 = v10;
          goto LABEL_39;
        case 2:
          v56 = OUTLINED_FUNCTION_10_17();
          goto LABEL_33;
        case 3:
          v59 = v8;
          switch(v12 >> 62)
          {
            case 1uLL:
              if (v10 > v10 >> 32)
              {
                goto LABEL_91;
              }

              v83 = sub_1D992ABC4();
              if (!v83)
              {
                goto LABEL_57;
              }

              v93 = sub_1D992ABE4();
              if (__OFSUB__(v10, v93))
              {
                goto LABEL_97;
              }

              v83 += v10 - v93;
LABEL_57:
              sub_1D992ABD4();
              LODWORD(v87) = HIDWORD(v10) - v10;
              if (__OFSUB__(HIDWORD(v10), v10))
              {
                goto LABEL_93;
              }

              if (qword_1ED8BD808 == -1)
              {
                goto LABEL_59;
              }

              goto LABEL_86;
            case 2uLL:
              v82 = *(v10 + 16);

              v83 = sub_1D992ABC4();
              if (!v83)
              {
                goto LABEL_45;
              }

              v84 = sub_1D992ABE4();
              if (__OFSUB__(v82, v84))
              {
                goto LABEL_96;
              }

              v83 += v82 - v84;
LABEL_45:
              v8 = v59;
              sub_1D992ABD4();
              v86 = *(v10 + 16);
              v85 = *(v10 + 24);
              v87 = v85 - v86;
              if (__OFSUB__(v85, v86))
              {
                goto LABEL_92;
              }

              if (v87 < 0xFFFFFFFF80000000)
              {
                goto LABEL_94;
              }

              if (v87 > 0x7FFFFFFF)
              {
                goto LABEL_95;
              }

              if (qword_1ED8BD808 != -1)
              {
LABEL_86:
                OUTLINED_FUNCTION_0_52();
                swift_once();
              }

LABEL_59:
              v88 = OUTLINED_FUNCTION_10_17();
              v90 = v83;
              v92 = v87;
LABEL_60:
              v50 = sqlite3_bind_blob(v88, v89, v90, v92, v91);
              v94 = OUTLINED_FUNCTION_5_26();
              sub_1D986C908(v94, v95, v96);
              v51 = OUTLINED_FUNCTION_5_26();
              break;
            case 3uLL:
              *(&v125 + 6) = 0;
              *&v125 = 0;
              if (qword_1ED8BD808 != -1)
              {
                OUTLINED_FUNCTION_0_52();
                swift_once();
              }

              v88 = OUTLINED_FUNCTION_10_17();
              v92 = 0;
              goto LABEL_60;
            default:
              LODWORD(v125) = v10;
              BYTE4(v125) = BYTE4(v10);
              *(&v125 + 5) = HIDWORD(v10) >> 8;
              BYTE7(v125) = HIBYTE(v10);
              WORD4(v125) = v12;
              BYTE10(v125) = BYTE2(v12);
              BYTE11(v125) = BYTE3(v12);
              BYTE12(v125) = BYTE4(v12);
              BYTE13(v125) = BYTE5(v12);
              if (qword_1ED8BD808 != -1)
              {
                OUTLINED_FUNCTION_0_52();
                swift_once();
              }

              v60 = OUTLINED_FUNCTION_10_17();
              v65 = sqlite3_bind_blob(v60, v61, v62, v63, v64);
              v66 = OUTLINED_FUNCTION_5_26();
              sub_1D986C908(v66, v67, v68);
              v69 = OUTLINED_FUNCTION_5_26();
              sub_1D986C908(v69, v70, v71);
              if (v65)
              {
                return 0;
              }

              goto LABEL_62;
          }

          goto LABEL_61;
        case 4:
          v54 = OUTLINED_FUNCTION_10_17();
          goto LABEL_31;
        default:
          [sub_1D992B614() UTF8String];
          v47 = OUTLINED_FUNCTION_20_4();
          v48 = OUTLINED_FUNCTION_10_17();
          v50 = sqlite3_bind_text(v48, v49, v13, -1, 0);
          v51 = v10;
          v52 = v12;
          v53 = 0;
LABEL_61:
          sub_1D986C908(v51, v52, v53);
          if (!v50)
          {
            goto LABEL_62;
          }

          return 0;
      }
    }

    sub_1D986C908(v10, v12, v123);
    return 0;
  }

  return 1;
}

uint64_t sub_1D9870EF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v5 = a3;
  if ((a5 & 0x80) == 0)
  {

    a1 = v5;
    a2 = a4;
    LOBYTE(a3) = a5;
  }

  return sub_1D986C8B8(a1, a2, a3);
}

uint64_t sub_1D9870F58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v5 = a3;
  if ((a5 & 0x80) == 0)
  {

    a1 = v5;
    a2 = a4;
    LOBYTE(a3) = a5;
  }

  return sub_1D986C908(a1, a2, a3);
}

uint64_t sub_1D9870FB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D987106C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1D98712C0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D9871264(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1D98713B0()
{

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D98713E8()
{
  v2 = OUTLINED_FUNCTION_11_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D9871424()
{
  OUTLINED_FUNCTION_11_1();
  v0 = OUTLINED_FUNCTION_23_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D9871458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13_0();
  sub_1D992AE84();
  OUTLINED_FUNCTION_15();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_22_0();

    return __swift_getEnumTagSinglePayload(v7, a2, v8);
  }

  else
  {
    v10 = *(v3 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D98714F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_15();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_23_0();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 28)) = (v4 - 1);
  }
}

uint64_t sub_1D9871584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_15();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_1D992B1E4();
    OUTLINED_FUNCTION_15();
    if (*(v11 + 84) != v3)
    {
      v13 = *(v4 + *(a3 + 28));
      if (v13 >= 2)
      {
        return v13 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_1D9871660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_15();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_1D992B1E4();
    OUTLINED_FUNCTION_15();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 28)) = v4 + 1;
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1D9871874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13_0();
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D9871918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D992AE84();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D98719F8()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9871A30()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D9871A80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9871BA4()
{
  sub_1D9890810(*(v0 + 16));
  OUTLINED_FUNCTION_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D9871BD8()
{

  OUTLINED_FUNCTION_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D9871C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D9871D4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D9871E00()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9871E48()
{
  v1 = OUTLINED_FUNCTION_4();
  type metadata accessor for SelectRootClockId.Predicate(v1);
  v2 = OUTLINED_FUNCTION_35_0();

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_1D9871E84()
{
  v0 = OUTLINED_FUNCTION_4();
  type metadata accessor for SelectRootClockId.Predicate(v0);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_31_1();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1D9871EC0()
{
  OUTLINED_FUNCTION_4();
  sub_1D992AE84();
  v1 = OUTLINED_FUNCTION_35_0();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D9871EFC()
{
  OUTLINED_FUNCTION_4();
  sub_1D992AE84();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_31_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D9871F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4();
  sub_1D992AE84();
  OUTLINED_FUNCTION_15();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_35_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    OUTLINED_FUNCTION_15();
    if (*(v10 + 84) == v3)
    {
      v8 = v9;
      v11 = *(a3 + 24);
    }

    else
    {
      v8 = sub_1D992AE04();
      v11 = *(a3 + 40);
    }

    v7 = v4 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

uint64_t sub_1D9872010(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_4();
  sub_1D992AE84();
  OUTLINED_FUNCTION_15();
  if (*(v4 + 84) == a3)
  {
    OUTLINED_FUNCTION_27_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    OUTLINED_FUNCTION_15();
    if (*(v5 + 84) != a3)
    {
      sub_1D992AE04();
    }
  }

  OUTLINED_FUNCTION_31_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1D9872178()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98721E8()
{
  v2 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  v5 = *(v3 + 80);
  OUTLINED_FUNCTION_43();

  (*(v4 + 8))(v0 + ((v5 + 40) & ~v5), v2);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 16, v5 | 7);
}

uint64_t sub_1D98722B0()
{
  v2 = sub_1D992B004();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  v5 = *(v3 + 80);
  OUTLINED_FUNCTION_43();
  (*(v4 + 8))(v0 + ((v5 + 32) & ~v5), v2);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v5 | 7);
}

uint64_t sub_1D987236C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D98723A4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98723DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9872424()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9872464()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D987249C()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D98724F0()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_80();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D9872548()
{

  OUTLINED_FUNCTION_80();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D987259C()
{

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D98725D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9872628()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F0, &qword_1D992FB38);
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (((((((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1D9872748()
{

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D987277C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_128();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D9872808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D992AE84();
  OUTLINED_FUNCTION_15();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_27_2();
      return (v10 + 1);
    }

    v8 = sub_1D992AE04();
    v9 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1D98728C8()
{
  OUTLINED_FUNCTION_25_2();
  sub_1D992AE84();
  OUTLINED_FUNCTION_15();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return;
    }

    v6 = sub_1D992AE04();
    v7 = v1 + *(v2 + 32);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1D9872984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_15();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
    v9 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_27_2();
  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_1D9872A68()
{
  OUTLINED_FUNCTION_25_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_15();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20)) = v0;
      return;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
    v7 = v1 + *(v2 + 24);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1D9872B3C()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9872B84()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D9872BB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9872BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D9872CA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D992AE84();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D9872D74()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

char *sub_1D9872DC4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

uint64_t sub_1D9872DF4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9872E34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ConcreteConfiguration(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_1D9872E7C()
{
  swift_unknownObjectRelease();

  sub_1D98C18BC(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D9872ED4()
{
  sub_1D98C18BC(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_128();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D9872F18()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_128();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D9872F54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9872F94()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9872FCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9873004()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98730CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9873104()
{
  v1 = *(v0 + 56);
  if (v1 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else if (v1 <= 1)
  {
  }

  OUTLINED_FUNCTION_11_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D9873178()
{
  OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_15();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_3_13(*(v2 + 28));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_1D9873200()
{
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_15();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_23_0();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 28) + 24) = v0;
  }
}

uint64_t sub_1D98732E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9873324()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D9873364()
{

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D9873474()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C50, &unk_1D9933438);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D9873554()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D98735FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9873690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D992AE84();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D98736D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D992AE84();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D987374C()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9873784()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D98737CC()
{

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D9873800()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98738A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1D9890810(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D98738E8()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9873920()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9873988()
{
  v2 = OUTLINED_FUNCTION_11_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D98739C4()
{
  OUTLINED_FUNCTION_11_1();
  v0 = OUTLINED_FUNCTION_23_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D98739F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D9873AA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_11_1();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_23_0();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_1D9873B80()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9873BB8()
{
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1D9873C90()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9873CC8()
{

  OUTLINED_FUNCTION_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D9873CFC()
{
  sub_1D9890810(*(v0 + 16));
  OUTLINED_FUNCTION_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D9873D58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D9873DB0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9873DF8()
{
  sub_1D992AE84();
  OUTLINED_FUNCTION_0_4();
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_30_5();
  v5(v4);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v3 | 7);
}

uint64_t sub_1D9873E74()
{
  sub_1D992AE84();
  OUTLINED_FUNCTION_0_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1D9873F64()
{
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  OUTLINED_FUNCTION_6();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1D98740A8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9874108()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9874150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_15();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
    v9 = a1 + *(a3 + 40);
    goto LABEL_10;
  }

  v10 = *(a1 + *(a3 + 20));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_1D9874240()
{
  OUTLINED_FUNCTION_25_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_15();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20)) = v0;
      return;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
    v7 = v1 + *(v2 + 40);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1D9874314(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1D992AE84();
  OUTLINED_FUNCTION_15();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 12)
    {
      v10 = *(a1 + a3[7] + 8) >> 60;
      if (((4 * v10) & 0xC) != 0)
      {
        return 16 - ((4 * v10) & 0xC | (v10 >> 2));
      }

      else
      {
        return 0;
      }
    }

    sub_1D992AE04();
    OUTLINED_FUNCTION_15();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v14 = a3[9];
    }

    v9 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1D987443C()
{
  OUTLINED_FUNCTION_25_2();
  sub_1D992AE84();
  OUTLINED_FUNCTION_15();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 12)
    {
      v8 = (v1 + v2[7]);
      *v8 = 0;
      v8[1] = (((-v0 >> 2) & 3) - 4 * v0) << 60;
      return;
    }

    sub_1D992AE04();
    OUTLINED_FUNCTION_15();
    if (*(v10 + 84) == v3)
    {
      v6 = v9;
      v11 = v2[8];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v11 = v2[9];
    }

    v7 = v1 + v11;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1D9874550()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9874588()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D98745C8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9874608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D98746B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D992AE84();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D9874764()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1D9890810(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D98747A4()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1D98747FC()
{

  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D987483C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49058, &qword_1D9935560);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_18_11(*(a1 + *(a3 + 20)));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49050, &qword_1D9935558);
    v8 = OUTLINED_FUNCTION_21_9();
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D9874914(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49058, &qword_1D9935560);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49050, &qword_1D9935558);
    v10 = OUTLINED_FUNCTION_21_9();
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D98749F4(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_11(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49060, &qword_1D9935568);
  v4 = OUTLINED_FUNCTION_21_9();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_1D9874A78(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49060, &qword_1D9935568);
    v4 = OUTLINED_FUNCTION_21_9();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_1D9874B20()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_128();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D9874B70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9874BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D9874C58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D992AE84();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D9874D60()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9874D98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9874DD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9874E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1D992AE84();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1D9874EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1D992AE84();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D9874F20()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1D9890810(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D9874F90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9875018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D992AE04();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D9875060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D992AE04();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D98750DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D98750EC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1D9890238(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1D9875188(uint64_t a1, int a2)
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

uint64_t sub_1D98751A8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D987520C()
{
  v0 = sub_1D992AE84();
  __swift_allocate_value_buffer(v0, qword_1ECB496F0);
  v1 = __swift_project_value_buffer(v0, qword_1ECB496F0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = &v6 - v3;
  sub_1D987532C(&v6 - v3);
  if (__swift_getEnumTagSinglePayload(v4, 1, v0) != 1)
  {
    return (*(*(v0 - 8) + 32))(v1, v4, v0);
  }

  sub_1D992AE74();
  result = __swift_getEnumTagSinglePayload(v4, 1, v0);
  if (result != 1)
  {
    return sub_1D987625C(v4);
  }

  return result;
}

char *sub_1D987532C@<X0>(uint64_t a1@<X8>)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 37;
  v2 = sub_1D992B7E4();
  *(v2 + 16) = 37;
  *(v2 + 48) = 0u;
  *(v2 + 61) = 0;
  *(v2 + 32) = 0u;
  if (!sysctlbyname("kern.bootsessionuuid", (v2 + 32), v21, 0, 0))
  {
    v12 = sub_1D992B694();
    MEMORY[0x1EEE9AC00](*(*(v12 - 8) + 64));
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D992B674();
    sub_1D9875734(v2, v14);
    if (v15)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      MEMORY[0x1EEE9AC00](((*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v18 = v20 - v17;
      sub_1D992AE14();

      v19 = sub_1D992AE84();
      if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
      {
        sub_1D987625C(v18);
        if (qword_1ECB47AB8 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_1ECB47AB8);
        }

        OUTLINED_FUNCTION_5_1(0xD00000000000003BLL, 0x80000001D9936A60, 0xD00000000000005BLL);
        v10 = a1;
        v11 = 1;
      }

      else
      {
        (*(*(v19 - 8) + 32))(a1, v18, v19);
        v10 = a1;
        v11 = 0;
      }

      v9 = v19;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    if (qword_1ECB47AB8 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1ECB47AB8);
    }

    OUTLINED_FUNCTION_5_1(0xD000000000000032, 0x80000001D9936A20, 0xD00000000000005BLL);
LABEL_11:
    v9 = sub_1D992AE84();
    v10 = a1;
    v11 = 1;
    return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
  }

  v3 = MEMORY[0x1DA739850]();
  result = strerror(v3);
  if (result)
  {
    v5 = sub_1D992B604();
    v7 = v6;

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0x6E776F6E6B6E55;
    }

    if (!v7)
    {
      v7 = 0xE700000000000000;
    }

    if (qword_1ECB47AB8 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1ECB47AB8);
    }

    sub_1D992BD64();

    v20[0] = 0xD000000000000024;
    v20[1] = 0x80000001D9936970;
    MEMORY[0x1DA739C30](v8, v7);

    sub_1D98DCEB4(0xD000000000000024, 0x80000001D9936970, 0xD00000000000005BLL, 0x80000001D99369A0, 0xD000000000000018, 0x80000001D9936A00);

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9875734(uint64_t a1, char *a2)
{
  v4 = sub_1D992B694();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = v5[8];
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1D992B664();
  v9 = sub_1D992B654();
  v10 = v6[1];
  v10(&v24 - v8, v4);
  if (v9 & 1) != 0 || (MEMORY[0x1EEE9AC00](v11), sub_1D992B674(), v12 = sub_1D992B654(), v10(&v24 - v8, v4), (v12) || (MEMORY[0x1EEE9AC00](v13), sub_1D992B644(), v14 = sub_1D992B654(), v10(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v4), (v14))
  {

    v16 = sub_1D98766E0(v15);
    if (v18)
    {
      v19 = v16;
      MEMORY[0x1EEE9AC00](v17);
      sub_1D992B664();
      v20 = sub_1D992B654();
      v10(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v20)
      {

LABEL_16:
        v10(a2, v4);
        return v19;
      }

      if (sub_1D992BD54())
      {
        v10(a2, v4);

        return v19;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    if (*(a1 + 16) == i)
    {
      result = sub_1D992BE94();
      __break(1u);
      return result;
    }

    if (!*(a1 + i + 32))
    {
      break;
    }
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 32 length:i encoding:sub_1D992B684()];

  if (v22)
  {
    v19 = sub_1D992B624();

    goto LABEL_16;
  }

  v10(a2, v4);
  return 0;
}

uint64_t sub_1D9875AA0()
{
  OUTLINED_FUNCTION_1_1();
  sub_1D9875D34(v2, v0);
  return sub_1D992C0C4();
}

uint64_t sub_1D9875ADC()
{
  v0 = sub_1D992C074();
  OUTLINED_FUNCTION_2(v0);
  return sub_1D992C0C4();
}

uint64_t sub_1D9875B20()
{
  sub_1D992C074();
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875B64()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0();
  sub_1D992C094();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875B9C(uint64_t a1)
{
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](a1);
  return sub_1D992C0C4();
}

uint64_t sub_1D9875BE4()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0();
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875C1C()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_1();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875C54()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_1();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875C8C()
{
  OUTLINED_FUNCTION_1_1();
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875D34(uint64_t a1, char a2)
{
  sub_1D992B6D4();
}

uint64_t sub_1D9875DDC(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  sub_1D9875D34(v3, v1);
  return sub_1D992C0C4();
}

uint64_t sub_1D9875E18(uint64_t a1)
{
  v1 = sub_1D992C074();
  OUTLINED_FUNCTION_2(v1);
  return sub_1D992C0C4();
}

uint64_t sub_1D9875E58(uint64_t a1, uint64_t a2)
{
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](a2);
  return sub_1D992C0C4();
}

uint64_t sub_1D9875E9C(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  OUTLINED_FUNCTION_4_0();
  sub_1D992C094();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875ED4(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  OUTLINED_FUNCTION_6_1();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875F0C(uint64_t a1)
{
  sub_1D992C074();
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875F4C(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  OUTLINED_FUNCTION_6_1();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875F84(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  OUTLINED_FUNCTION_4_0();
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875FBC(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

void sub_1D9876040(uint64_t a2@<X8>)
{
  sub_1D987652C();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_1D9876130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D987625C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98763AC(void *a1, uint64_t a2)
{
  sub_1D9876130(&qword_1ECB48298, type metadata accessor for FLError, &unk_1D992F830);
  v3 = a1;
  return sub_1D992AC24();
}

uint64_t sub_1D98764CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D992C074();
  sub_1D992B5D4();
  return sub_1D992C0C4();
}

uint64_t sub_1D98766E0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  if (*(result + 32))
  {
    result = 0;
    v3 = v1 - 1;
    while (v3 != result)
    {
      if (!*(v2 + 33 + result++))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  result = 0;
LABEL_8:
  result = sub_1D9876784(result, v2);
  if (!__OFSUB__(v5 >> 1, v6))
  {
    v7 = sub_1D992B6C4();
    swift_unknownObjectRelease();
    return v7;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D9876784(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D98767DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98767FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1D98769CC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1D9876A64()
{
  result = qword_1ECB48288;
  if (!qword_1ECB48288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48288);
  }

  return result;
}

uint64_t sub_1D9876B8C(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped;
  sub_1D992B3E4();
  swift_allocObject();
  *(v1 + v4) = sub_1D992B3D4();
  v5 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_streamURL;
  v6 = sub_1D992AD44();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 16);
  v9(v2 + v5, a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483C0, &unk_1D992FA30);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13();
  v9(v11 - v10, a1, v6);
  v12 = *MEMORY[0x1E696A388];
  v13 = sub_1D992B324();
  (*(v8 + 8))(a1, v6);
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream) = v13;
  return v2;
}

uint64_t sub_1D9876D2C()
{
  type metadata accessor for PersistentStorage();
  if (sub_1D98F8F10(v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_streamURL))
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
    }

    OUTLINED_FUNCTION_4_1();
    sub_1D986A454(v3, v1 | 0x8000000000000000, 0xD000000000000081, v2 | 0x8000000000000000, v4, v5);

    sub_1D992B3C4();
LABEL_11:
  }

  if (qword_1ED8BF428 != -1)
  {
    swift_once();
  }

  if (*(sub_1D98DCE30() + 24) != 1)
  {
    goto LABEL_11;
  }

  sub_1D9876FD4();
  OUTLINED_FUNCTION_4_1();
  sub_1D98DCEB4(v6, v7, 0xD000000000000081, 0x80000001D9936D70, v8, v9);
}

unint64_t sub_1D9876FD4()
{
  sub_1D992BD64();

  sub_1D992AD44();
  sub_1D987A2E0(&qword_1ED8BD8F0, MEMORY[0x1EEE78688], MEMORY[0x1EEE786D8]);
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  return 0xD00000000000001ELL;
}

uint64_t sub_1D9877094(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LogicalClockEvent(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  sub_1D992B464();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v8 + 64));
  OUTLINED_FUNCTION_13();
  sub_1D992AE04();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  OUTLINED_FUNCTION_13();
  (*(v12 + 16))(v11 - v10, a2);
  sub_1D992B454();
  sub_1D987A280(a1, v7, type metadata accessor for LogicalClockEvent);
  sub_1D987A228();
  return sub_1D992B424();
}

uint64_t sub_1D9877220()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  *(v1 + 129) = v5;
  *(v1 + 40) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483A8, &unk_1D9935540);
  *(v1 + 64) = v7;
  OUTLINED_FUNCTION_23(v7);
  *(v1 + 72) = v8;
  *(v1 + 80) = OUTLINED_FUNCTION_20();
  v9 = type metadata accessor for LogicalClockEvent(0);
  *(v1 + 88) = v9;
  OUTLINED_FUNCTION_9(v9);
  v10 = OUTLINED_FUNCTION_20();
  v11 = *v3;
  *(v1 + 96) = v10;
  *(v1 + 104) = v11;
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D9877304()
{
  OUTLINED_FUNCTION_26();
  v0[14] = *(v0[7] + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped);
  OUTLINED_FUNCTION_14_0();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  return v9();
}

uint64_t sub_1D98773A8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98774BC()
{
  v1 = *(v0 + 48);
  v2 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_20();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v6);
  v7 = OUTLINED_FUNCTION_20();
  sub_1D9879FF8(v1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
  {
    if (qword_1ECB47FB0 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_1ECB496F0);
    (*(v4 + 16))(v5, v8, v2);
    if (__swift_getEnumTagSinglePayload(v7, 1, v2) != 1)
    {
      sub_1D986B804(v7, &qword_1ECB481D0, &qword_1D992F9F0);
    }
  }

  else
  {
    (*(v4 + 32))(v5, v7, v2);
  }

  v31 = v4;

  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v11 = *(v0 + 129);
  v30 = *(v0 + 40);
  sub_1D992BD64();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  OUTLINED_FUNCTION_35(&qword_1ED8BD8D0);
  v12 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v12);

  MEMORY[0x1DA739C30](0x203A6570797420, 0xE700000000000000);
  *(v0 + 128) = v11 & 1;
  sub_1D992BE24();
  MEMORY[0x1DA739C30](0xD000000000000011, 0x80000001D9936EE0);
  v13 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v13);

  OUTLINED_FUNCTION_27_0();
  *(v0 + 32) = v10;
  sub_1D992BE24();
  sub_1D986A454(*(v0 + 16), *(v0 + 24), 0xD000000000000081, 0x80000001D9936D70, 0xD000000000000036, 0x80000001D9936F00);

  v14 = *(v4 + 16);
  v14(v9, v30, v2);
  v15 = type metadata accessor for LogicalClockStart(0);
  v14(v9 + v15[6], v5, v2);
  *(v9 + v15[5]) = v11 & 1;
  *(v9 + v15[7]) = v10;
  *(v9 + v15[8]) = v10;
  swift_storeEnumTagMultiPayload();
  v16 = sub_1D992AE04();
  OUTLINED_FUNCTION_6();
  v18 = v17;
  v19 = OUTLINED_FUNCTION_20();
  sub_1D992ADF4();
  sub_1D9877094(v9, v19);
  (*(v18 + 8))(v19, v16);

  v20 = sub_1D992B374();
  v22 = v21;
  v23 = *(v0 + 96);
  v24 = v20;
  v25 = OUTLINED_FUNCTION_28();
  v26(v25);
  OUTLINED_FUNCTION_0_6();
  sub_1D987A1D0(v23, v27);
  (*(v31 + 8))(v5, v2);

  v28 = *(v0 + 8);

  return v28(v24, v22 & 1);
}

uint64_t sub_1D9877A40()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v5 = sub_1D992B464();
  v1[5] = v5;
  OUTLINED_FUNCTION_9(v5);
  v1[6] = OUTLINED_FUNCTION_20();
  v6 = type metadata accessor for LogicalClockEvent(0);
  v1[7] = v6;
  OUTLINED_FUNCTION_9(v6);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = type metadata accessor for LogicalClockStart(0);
  v1[10] = v7;
  OUTLINED_FUNCTION_9(v7);
  v1[11] = OUTLINED_FUNCTION_20();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483B0, &unk_1D992FA20);
  OUTLINED_FUNCTION_9(v8);
  v1[12] = OUTLINED_FUNCTION_20();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483A8, &unk_1D9935540);
  v1[13] = v9;
  OUTLINED_FUNCTION_23(v9);
  v1[14] = v10;
  v1[15] = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *v3;
  v1[16] = v11;
  v1[17] = v12;
  v13 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D9877BC0()
{
  OUTLINED_FUNCTION_26();
  v0[18] = *(v0[4] + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped);
  OUTLINED_FUNCTION_14_0();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  return v9();
}

uint64_t sub_1D9877C64()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D9877D78()
{
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  sub_1D986A454(0, 0xE000000000000000, 0xD000000000000081, 0x80000001D9936D70, 0xD000000000000021, 0x80000001D9936E80);
  sub_1D992B364();
  v1 = v0[12];
  v2 = v0[13];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[3];
    sub_1D986B804(v1, &qword_1ECB483B0, &unk_1D992FA20);
    sub_1D992BD64();

    v0[2] = v3;
    v4 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v4);

    sub_1D98DCEB4(0xD000000000000029, 0x80000001D9936EB0, 0xD000000000000081, 0x80000001D9936D70, 0xD000000000000021, 0x80000001D9936E80);
  }

  else
  {
    (*(v0[14] + 32))(v0[16], v1, v2);
    sub_1D992B444();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = v0[9];
      (*(v0[14] + 8))(v0[16], v0[13]);
      OUTLINED_FUNCTION_0_6();
      sub_1D987A1D0(v5, v6);
    }

    else
    {
      v9 = v0[17];
      v11 = v0[10];
      v10 = v0[11];
      v12 = v0[8];
      sub_1D987A170(v0[9], v10, type metadata accessor for LogicalClockStart);
      *(v10 + *(v11 + 32)) = v9;
      sub_1D992B434();
      sub_1D987A280(v10, v12, type metadata accessor for LogicalClockStart);
      swift_storeEnumTagMultiPayload();
      sub_1D987A228();
      sub_1D992B424();
      sub_1D992B354();
      v13 = *(v0[14] + 8);
      (v13)(v0[15], v0[13]);
      OUTLINED_FUNCTION_12_2();
      v14 = OUTLINED_FUNCTION_33();
      v13(v14);
    }
  }

  OUTLINED_FUNCTION_34();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1D98781C8()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v1[7] = v4;
  v1[8] = v0;
  v1[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483A8, &unk_1D9935540);
  v1[9] = v6;
  OUTLINED_FUNCTION_23(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_20();
  v8 = type metadata accessor for LogicalClockEvent(0);
  v1[12] = v8;
  OUTLINED_FUNCTION_9(v8);
  v9 = OUTLINED_FUNCTION_20();
  v10 = *v3;
  v1[13] = v9;
  v1[14] = v10;
  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D98782A8()
{
  OUTLINED_FUNCTION_26();
  v0[15] = *(v0[8] + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped);
  OUTLINED_FUNCTION_14_0();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  return v9();
}

uint64_t sub_1D987834C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D9878460()
{
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[7];
  v4 = v0[6];
  sub_1D992BD64();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v5 = sub_1D992AE84();
  OUTLINED_FUNCTION_35(&qword_1ED8BD8D0);
  v6 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v6);

  OUTLINED_FUNCTION_27_0();
  v0[4] = v2;
  sub_1D992BE24();
  MEMORY[0x1DA739C30](0x3A6E6F7361657220, 0xE900000000000020);
  v0[5] = v3;
  type metadata accessor for SiriAnalyticsLogicalClockEndedReason(0);
  sub_1D992BE24();
  sub_1D986A454(v0[2], v0[3], 0xD000000000000081, 0x80000001D9936D70, 0xD000000000000029, 0x80000001D9936E50);

  (*(*(v5 - 8) + 16))(v1, v4, v5);
  v7 = type metadata accessor for LogicalClockEnd(0);
  *(v1 + *(v7 + 20)) = v2;
  *(v1 + *(v7 + 24)) = v3;
  swift_storeEnumTagMultiPayload();
  v8 = sub_1D992AE04();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_20();
  sub_1D992ADF4();
  sub_1D9877094(v1, v11);
  (*(v10 + 8))(v11, v8);

  sub_1D992B374();
  v12 = v0[13];
  v13 = OUTLINED_FUNCTION_28();
  v14(v13);
  OUTLINED_FUNCTION_0_6();
  sub_1D987A1D0(v12, v15);

  OUTLINED_FUNCTION_34();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1D98787B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48380, &unk_1D992FA00);
  OUTLINED_FUNCTION_9(v2);
  MEMORY[0x1EEE9AC00](((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = &v9[-v4];
  sub_1D992B344();
  v10 = a1;
  sub_1D9878B44(sub_1D987A0B8, v9, v5);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48388, &qword_1D9935550);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D986B804(v5, &qword_1ECB48380, &unk_1D992FA00);
    return 0;
  }

  else
  {
    v7 = sub_1D992B4D4();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v7;
}

uint64_t sub_1D9878910(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for LogicalClockEvent(0);
  MEMORY[0x1EEE9AC00](*(*(v2 - 8) + 64));
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483A8, &unk_1D9935540);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v14 - v7;
  v9 = type metadata accessor for LogicalClockStart(0);
  MEMORY[0x1EEE9AC00](*(*(v9 - 8) + 64));
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48388, &qword_1D9935550);
  sub_1D992B4E4();
  sub_1D992B444();
  (*(v6 + 8))(v8, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D987A1D0(v4, type metadata accessor for LogicalClockEvent);
  }

  else
  {
    sub_1D987A170(v4, v11, type metadata accessor for LogicalClockStart);
    v12 = sub_1D992AE54();
    sub_1D987A1D0(v11, type metadata accessor for LogicalClockStart);
    if (v12)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D9878B44@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a2;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48388, &qword_1D9935550);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48380, &unk_1D992FA00);
  MEMORY[0x1EEE9AC00](((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v21 - v10;
  v26 = v3;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48390, &unk_1D992FA10);
  sub_1D987A120(&qword_1ECB48398, MEMORY[0x1E6999BE0]);
  v25 = v12;
  sub_1D992B744();
  sub_1D987A120(&qword_1ECB483A0, MEMORY[0x1E6999BE8]);
  v13 = (v6 + 32);
  for (i = (v6 + 8); ; (*i)(v8, v5))
  {
    sub_1D992BC14();
    if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
    {

      v17 = v22;
      v18 = 1;
      return __swift_storeEnumTagSinglePayload(v17, v18, 1, v5);
    }

    v15 = *v13;
    (*v13)(v8, v11, v5);
    v16 = v23(v8);
    if (v4)
    {
      (*i)(v8, v5);
    }

    if (v16)
    {
      break;
    }
  }

  v20 = v22;
  v15(v22, v8, v5);
  v17 = v20;
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v18, 1, v5);
}

uint64_t sub_1D9878DE0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v26 = a2;
  v25 = a4;
  v7 = type metadata accessor for RootLogicalClock(0);
  MEMORY[0x1EEE9AC00](*(*(v7 - 8) + 64));
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48370, &qword_1D9934A50);
  MEMORY[0x1EEE9AC00](((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = &v24 - v11;
  v13 = type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator(0);
  v14 = MEMORY[0x1EEE9AC00](*(*(v13 - 8) + 64));
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 8);
  v18 = type metadata accessor for RootLogicalClockBuilder(0);
  __swift_storeEnumTagSinglePayload(&v16[v17], 1, 1, v18);
  *v16 = a3;
  if (a3)
  {
    v19 = sub_1D992B344();
  }

  else
  {
    v19 = sub_1D992B334();
  }

  *(v16 + 1) = v19;
  while (1)
  {
    sub_1D9902194(v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
    {
      sub_1D987A1D0(v16, type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator);
      v21 = 1;
      v22 = v25;
      return __swift_storeEnumTagSinglePayload(v22, v21, 1, v7);
    }

    sub_1D987A170(v12, v9, type metadata accessor for RootLogicalClock);
    v20 = a1(v9);
    if (v4)
    {
      sub_1D987A1D0(v9, type metadata accessor for RootLogicalClock);
      return sub_1D987A1D0(v16, type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator);
    }

    if (v20)
    {
      break;
    }

    sub_1D987A1D0(v9, type metadata accessor for RootLogicalClock);
  }

  sub_1D987A1D0(v16, type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator);
  v22 = v25;
  sub_1D987A170(v9, v25, type metadata accessor for RootLogicalClock);
  v21 = 0;
  return __swift_storeEnumTagSinglePayload(v22, v21, 1, v7);
}

uint64_t sub_1D98790C8@<X0>(uint64_t (*a1)(char *)@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream);

  sub_1D9878DE0(a1, v5, 1, a2);
}

uint64_t sub_1D9879138(uint64_t a1, uint64_t a2)
{
  if (sub_1D992AE54())
  {
    return 1;
  }

  type metadata accessor for RootLogicalClock(0);
  sub_1D98E8494();
  return v3 & 1;
}

uint64_t sub_1D9879198()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v3 = type metadata accessor for MonotonicTimestamp(0);
  v1[6] = v3;
  OUTLINED_FUNCTION_9(v3);
  v1[7] = OUTLINED_FUNCTION_20();
  v4 = type metadata accessor for RootLogicalClock(0);
  v1[8] = v4;
  OUTLINED_FUNCTION_9(v4);
  v1[9] = OUTLINED_FUNCTION_20();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48370, &qword_1D9934A50);
  OUTLINED_FUNCTION_9(v5);
  v1[10] = OUTLINED_FUNCTION_20();
  v6 = type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator(0);
  v1[11] = v6;
  OUTLINED_FUNCTION_9(v6);
  v1[12] = OUTLINED_FUNCTION_20();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D9879288()
{
  v41 = v0;
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  v2 = v0[11];
  v1 = v0[12];
  v0[13] = qword_1ECB49610;
  sub_1D986A454(0, 0xE000000000000000, 0xD000000000000081, 0x80000001D9936D70, 0xD00000000000002ELL, 0x80000001D9936E00);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for RootLogicalClockBuilder(0);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  *v1 = 0;
  *(v1 + 8) = sub_1D992B334();
  v5 = &qword_1D992F9F0;
  while (1)
  {
    v6 = v0[12];
    v7 = v0[10];
    v8 = v0[8];
    sub_1D9902194(v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      v27 = v0[12];
      OUTLINED_FUNCTION_3_1();
      sub_1D987A1D0(v27, v28);
      OUTLINED_FUNCTION_36();

      OUTLINED_FUNCTION_19_2();
      *(v6 + 16) = 0;
      v29 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v29);

      MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D9936E30);
      sub_1D986A454(v40[0], v40[1], 0xD000000000000081, 0x80000001D9936D70, 0xD00000000000002ELL, 0x80000001D9936E00);

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_24();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_31();
    if (!v19)
    {
      goto LABEL_14;
    }

    v9 = v0[9];
    v38 = v0[4];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, v5);
    OUTLINED_FUNCTION_9(v10);
    v11 = swift_task_alloc();
    v12 = sub_1D992AE84();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v11, v9, v12);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    v14 = v5;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48378, &qword_1D992F9F8) - 8;
    v16 = OUTLINED_FUNCTION_20();
    v17 = *(v15 + 56);
    sub_1D9879FF8(v11, v16);
    sub_1D9879FF8(v38, v16 + v17);
    OUTLINED_FUNCTION_8_1(v16);
    if (!v19)
    {
      break;
    }

    sub_1D986B804(v11, &qword_1ECB481D0, v14);
    OUTLINED_FUNCTION_8_1(v16 + v17);
    if (!v19)
    {
      goto LABEL_19;
    }

    v5 = v14;
    sub_1D986B804(v16, &qword_1ECB481D0, v14);

LABEL_14:
    OUTLINED_FUNCTION_2_0();
    sub_1D987A1D0(v25, v26);
  }

  v5 = v14;
  v18 = swift_task_alloc();
  sub_1D9879FF8(v16, v18);
  OUTLINED_FUNCTION_8_1(v16 + v17);
  if (!v19)
  {
    v20 = OUTLINED_FUNCTION_20();
    (*(v13 + 32))(v20, v16 + v17, v12);
    OUTLINED_FUNCTION_30();
    sub_1D987A2E0(&qword_1ED8BF058, v21, v22);
    v39 = sub_1D992B5F4();
    v23 = *(v13 + 8);
    v23(v20, v12);
    sub_1D986B804(v11, &qword_1ECB481D0, v14);
    v24 = OUTLINED_FUNCTION_32();
    (v23)(v24);

    sub_1D986B804(v16, &qword_1ECB481D0, v14);

    if ((v39 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  sub_1D986B804(v11, &qword_1ECB481D0, &qword_1D992F9F0);
  v32 = OUTLINED_FUNCTION_32();
  v33(v32);

LABEL_19:
  sub_1D986B804(v16, &qword_1ECB48378, &qword_1D992F9F8);

LABEL_20:
  v0[14] = 1;
  v34 = mach_absolute_time();
  LOBYTE(v40[0]) = 0;
  MonotonicTimestamp.init(cpuTicks:clockType:)(v34, v40);
  OUTLINED_FUNCTION_10_0();
  v0[3] = &qword_1ECB481D0;
  v35 = swift_task_alloc();
  v0[15] = v35;
  *v35 = v0;
  OUTLINED_FUNCTION_7_0(v35);
  OUTLINED_FUNCTION_24();

  return sub_1D98781C8();
}

uint64_t sub_1D98797C4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v3 + 128) = v0;

  v6 = *(v3 + 40);
  if (v0)
  {
    v7 = sub_1D9879D84;
  }

  else
  {
    v7 = sub_1D98798CC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D98798CC()
{
  v40 = v0;
  v36 = v0[14];
  while (1)
  {
    while (1)
    {
      do
      {
        OUTLINED_FUNCTION_2_0();
        sub_1D987A1D0(v1, v2);
        v3 = v0[12];
        v4 = v0[10];
        v5 = v0[8];
        sub_1D9902194(v4);
        if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
        {
          v26 = v0[12];
          OUTLINED_FUNCTION_3_1();
          sub_1D987A1D0(v26, v27);
          OUTLINED_FUNCTION_36();

          OUTLINED_FUNCTION_19_2();
          *(v3 + 16) = v36;
          v28 = sub_1D992BF34();
          MEMORY[0x1DA739C30](v28);

          MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D9936E30);
          sub_1D986A454(v39[0], v39[1], 0xD000000000000081, 0x80000001D9936D70, 0xD00000000000002ELL, 0x80000001D9936E00);

          OUTLINED_FUNCTION_25();
          OUTLINED_FUNCTION_24();

          __asm { BRAA            X1, X16 }
        }

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_31();
      }

      while (!v17);
      v6 = v0[9];
      v37 = v0[4];
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      OUTLINED_FUNCTION_9(v7);
      v8 = swift_task_alloc();
      v9 = sub_1D992AE84();
      v10 = *(v9 - 8);
      (*(v10 + 16))(v8, v6, v9);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48378, &qword_1D992F9F8) - 8;
      v12 = OUTLINED_FUNCTION_20();
      v13 = *(v11 + 56);
      sub_1D9879FF8(v8, v12);
      sub_1D9879FF8(v37, v12 + v13);
      OUTLINED_FUNCTION_8_1(v12);
      if (!v17)
      {
        break;
      }

      v14 = OUTLINED_FUNCTION_33();
      sub_1D986B804(v14, v15, &qword_1D992F9F0);
      OUTLINED_FUNCTION_8_1(v12 + v13);
      if (!v17)
      {
        goto LABEL_17;
      }

      sub_1D986B804(v12, &qword_1ECB481D0, &qword_1D992F9F0);
    }

    v16 = swift_task_alloc();
    sub_1D9879FF8(v12, v16);
    OUTLINED_FUNCTION_8_1(v12 + v13);
    if (v17)
    {
      break;
    }

    v18 = OUTLINED_FUNCTION_20();
    (*(v10 + 32))(v18, v12 + v13, v9);
    OUTLINED_FUNCTION_30();
    sub_1D987A2E0(&qword_1ED8BF058, v19, v20);
    v38 = sub_1D992B5F4();
    v21 = *(v10 + 8);
    v21(v18, v9);
    v22 = OUTLINED_FUNCTION_33();
    sub_1D986B804(v22, v23, &qword_1D992F9F0);
    v24 = OUTLINED_FUNCTION_32();
    (v21)(v24);

    sub_1D986B804(v12, &qword_1ECB481D0, &qword_1D992F9F0);

    if ((v38 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  sub_1D986B804(v8, &qword_1ECB481D0, &qword_1D992F9F0);
  v31 = OUTLINED_FUNCTION_32();
  v32(v31);

LABEL_17:
  sub_1D986B804(v12, &qword_1ECB48378, &qword_1D992F9F8);

LABEL_18:
  v0[14] = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = mach_absolute_time();
    LOBYTE(v39[0]) = 0;
    MonotonicTimestamp.init(cpuTicks:clockType:)(v33, v39);
    OUTLINED_FUNCTION_10_0();
    v0[3] = &qword_1D992F9F0;
    v34 = swift_task_alloc();
    v0[15] = v34;
    *v34 = v0;
    OUTLINED_FUNCTION_7_0(v34);
    OUTLINED_FUNCTION_24();

    return sub_1D98781C8();
  }

  return result;
}

uint64_t sub_1D9879D84()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_2_0();
  sub_1D987A1D0(v2, v3);
  OUTLINED_FUNCTION_3_1();
  sub_1D987A1D0(v1, v4);

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1D9879E24()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_streamURL;
  sub_1D992AD44();
  OUTLINED_FUNCTION_5();
  (*(v2 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D9879EA4()
{
  sub_1D9879E24();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for LogicalClockStream(uint64_t a1)
{
  result = qword_1ECB47D98;
  if (!qword_1ECB47D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9879F24(uint64_t a1)
{
  result = sub_1D992AD44();
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

uint64_t sub_1D9879FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_1D987A120(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48390, &unk_1D992FA10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D987A170(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D987A1D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D987A228()
{
  result = qword_1ECB483B8;
  if (!qword_1ECB483B8)
  {
    type metadata accessor for LogicalClockEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB483B8);
  }

  return result;
}

uint64_t sub_1D987A280(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D987A2E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_27_0()
{

  JUMPOUT(0x1DA739C30);
}

id static PFAPFADeviceDimensions.current()()
{
  result = [objc_allocWithZone(MEMORY[0x1E69CF428]) init];
  if (result)
  {
    v1 = result;
    v2 = MobileGestalt_get_current_device();
    if (v2)
    {
      v3 = v2;
      v4 = MobileGestalt_copy_productType_obj();
      [v1 setDeviceType_];

      v5 = MobileGestalt_copy_buildVersion_obj();
      [v1 setSystemBuild_];
    }

    [v1 setProgramCode_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D987A474(unint64_t a1)
{
  if (a1 < 4)
  {
    return dword_1D992FA40[a1];
  }

  result = sub_1D992BFA4();
  __break(1u);
  return result;
}

unint64_t sub_1D987A4C0(char a1)
{
  v1 = 1;
  v2 = 0;
  switch(a1)
  {
    case 1:
      v2 = 0;
      v1 = 2;
      break;
    case 2:
    case 3:
      v2 = 0;
      v1 = 3;
      break;
    case 4:
      v1 = 0;
      v2 = 1;
      break;
    default:
      return v1 | (v2 << 32);
  }

  return v1 | (v2 << 32);
}

uint64_t sub_1D987A524()
{
  _s28MessageStagingStreamIteratorCMa();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;

  return v1;
}

uint64_t sub_1D987A564()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (!v2)
  {

    v2 = sub_1D992B334();

    *(v1 + 24) = v2;
  }

  return v2;
}

uint64_t sub_1D987A5E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483E8, &qword_1D992FB30);
  MEMORY[0x1EEE9AC00](((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F0, &qword_1D992FB38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &v14 - v7;
  if (!sub_1D987A564())
  {
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    goto LABEL_5;
  }

  sub_1D992B4C4();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
LABEL_5:
    sub_1D986DEE4(v4, &qword_1ECB483E8, &qword_1D992FB30);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
    v10 = a1;
    v11 = 1;
    return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
  *a1 = sub_1D992B4D4();
  sub_1D992B4E4();
  (*(v6 + 8))(v8, v5);
  v10 = a1;
  v11 = 0;
  v12 = v9;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_1D987A7F4()
{

  return v0;
}

uint64_t sub_1D987A81C()
{
  sub_1D987A7F4();

  return swift_deallocClassInstance();
}

unint64_t sub_1D987A878()
{
  result = qword_1ECB483C8;
  if (!qword_1ECB483C8)
  {
    _s28MessageStagingStreamIteratorCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB483C8);
  }

  return result;
}

uint64_t sub_1D987A8F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D987A524();

  *a1 = v2;
  return result;
}

void *sub_1D987A960()
{
  v1 = sub_1D987AA28(v0);

  return v1;
}

void *sub_1D987AA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D0, &qword_1D992FB18);
  MEMORY[0x1EEE9AC00](((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (v34 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v34 - v7;
  v35 = *(v6 + 80);
  v9 = MEMORY[0x1E69E7CC0];
  v36 = (v35 + 32) & ~v35;
  v10 = MEMORY[0x1E69E7CC0] + v36;
  _s28MessageStagingStreamIteratorCMa();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = 0;

  v12 = 0;
  v34[1] = inited;
  while (1)
  {
    sub_1D987A5E0(v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      swift_setDeallocating();
      sub_1D987A7F4();
      swift_deallocClassInstance();
      result = sub_1D986DEE4(v4, &qword_1ECB483D0, &qword_1D992FB18);
      v31 = v9[3];
      if (v31 >= 2)
      {
        v32 = v31 >> 1;
        v30 = __OFSUB__(v32, v12);
        v33 = v32 - v12;
        if (v30)
        {
          goto LABEL_35;
        }

        v9[2] = v33;
      }

      return v9;
    }

    result = sub_1D987AF14(v4, v8);
    if (v12)
    {
      v14 = v9;
    }

    else
    {
      v15 = v9[3];
      if (((v15 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v16 = v4;
      v17 = v8;
      v18 = v15 & 0xFFFFFFFFFFFFFFFELL;
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483E0, &qword_1D992FB28);
      v20 = v6;
      v21 = *(v6 + 72);
      v22 = v36;
      v14 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v14);
      if (!v21)
      {
        goto LABEL_33;
      }

      v23 = result - v22;
      if ((result - v22) == 0x8000000000000000 && v21 == -1)
      {
        goto LABEL_34;
      }

      v25 = v23 / v21;
      v14[2] = v19;
      v14[3] = 2 * (v23 / v21);
      v26 = v14 + v22;
      v27 = v9[3];
      v28 = (v27 >> 1) * v21;
      if (v9[2])
      {
        if (v14 < v9 || v26 >= v9 + v36 + v28)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v14 != v9)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v9[2] = 0;
      }

      v10 = &v26[v28];
      v12 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - (v27 >> 1);

      v6 = v20;
      v8 = v17;
      v4 = v16;
    }

    v30 = __OFSUB__(v12--, 1);
    if (v30)
    {
      break;
    }

    sub_1D987AF14(v8, v10);
    v10 += *(v6 + 72);
    v9 = v14;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1D987AD38(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D0, &qword_1D992FB18);
  MEMORY[0x1EEE9AC00](((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (&v18 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = &v18 - v13;
  _s28MessageStagingStreamIteratorCMa();
  result = swift_allocObject();
  v16 = result;
  i = 0;
  *(result + 16) = v4;
  *(result + 24) = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      for (i = 0; i < a3; ++i)
      {
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }

        sub_1D987A5E0(v10);
        if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
        {
          sub_1D986DEE4(v10, &qword_1ECB483D0, &qword_1D992FB18);
          goto LABEL_12;
        }

        sub_1D987AF14(v10, v14);
        result = sub_1D987AF14(v14, a2);
        if (i + 1 == a3)
        {
          i = a3;
          goto LABEL_12;
        }

        a2 += *(v12 + 72);
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    *a1 = v16;
    return i;
  }

  return result;
}

uint64_t sub_1D987AF14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D987AF84()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_4_2();
  v5 = v2 + 56;
  OUTLINED_FUNCTION_0_7();
  if (!v7)
  {
    v9 = 0;
LABEL_17:
    OUTLINED_FUNCTION_2_1(v9);
    OUTLINED_FUNCTION_7();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_3();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v12);
          ++v9;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v12 = v9;
LABEL_12:
      OUTLINED_FUNCTION_3_2();
      v14 = *(v0 + 48) + 24 * (v13 | (v12 << 6));
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      LOBYTE(v14) = *(v14 + 17);
      *v1 = v16;
      *(v1 + 8) = v15;
      *(v1 + 16) = v17;
      *(v1 + 17) = v14;
      if (v11 == v8)
      {

        v9 = v12;
        goto LABEL_17;
      }

      v1 += 24;

      v10 = v11;
      v9 = v12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1D987B090()
{
  OUTLINED_FUNCTION_6_2();
  v4 = v3;
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v3 + 56);
  if (!v1)
  {
    v11 = 0;
LABEL_22:
    *v0 = v4;
    v0[1] = v5;
    v0[2] = ~v6;
    v0[3] = v11;
    v0[4] = v8;
    OUTLINED_FUNCTION_7();
    return;
  }

  if (!v2)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v9 = v1;
    v25 = -1 << *(v3 + 32);
    v26 = v0;
    v10 = 0;
    v11 = 0;
    v27 = (63 - v6) >> 6;
    v28 = v2;
    while (1)
    {
      if (v10 >= v2)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_26;
      }

      v31 = v10 + 1;
      v32 = v9;
      v12 = sub_1D992AE84();
      v13 = *(v12 - 8);
      MEMORY[0x1EEE9AC00](*(v13 + 64));
      v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = MEMORY[0x1EEE9AC00](v14);
      v19 = &v25 - v17;
      if (!v8)
      {
        while (1)
        {
          v20 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v20 >= v27)
          {
            v8 = 0;
            v0 = v26;
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v20);
          ++v11;
          if (v8)
          {
            v29 = v18;
            v30 = v16;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v29 = v18;
      v30 = v16;
      v20 = v11;
LABEL_16:
      v21 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v22 = *(v13 + 72);
      (*(v13 + 16))(&v25 - v17, *(v4 + 48) + v22 * (v21 | (v20 << 6)), v12);
      v23 = *(v13 + 32);
      v23(v15, v19, v12);
      v24 = v32;
      v23(v32, v15, v12);
      v2 = v28;
      if (v31 == v28)
      {
        break;
      }

      v9 = &v24[v22];
      v10 = v31;
      v11 = v20;
    }

    v11 = v20;
    v0 = v26;
LABEL_20:
    v6 = v25;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

void sub_1D987B314()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_4_2();
  v4 = v1 + 64;
  OUTLINED_FUNCTION_0_7();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_2_1(v8);
    OUTLINED_FUNCTION_7();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_3();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v11);
          ++v8;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5_2(v12);
      if (v14)
      {
        v16 = v13;
        v8 = v11;
        goto LABEL_17;
      }

      v0 += 8;
      v15 = v13;
      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1D987B3FC(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
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
    v9 = 0;
    a3 = 0;
LABEL_18:
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
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 8) | (4 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D987B4E4()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_4_2();
  v4 = v1 + 64;
  OUTLINED_FUNCTION_0_7();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_2_1(v8);
    OUTLINED_FUNCTION_7();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_3();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v11);
          ++v8;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5_2(v12);
      if (v14)
      {
        v16 = v13;
        v8 = v11;
        goto LABEL_17;
      }

      v0 += 8;
      v15 = v13;
      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D987B5CC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v35 = *(a4 + 16);
  if (v35)
  {
    v7 = a2;
    v8 = result;
    v36 = result;

    OUTLINED_FUNCTION_1_4();
    if (a3)
    {
      v9 = 0x204E4920544F4E20;
      v10 = 0xE800000000000000;
    }

    else
    {
      v9 = 542001440;
      v10 = 0xE400000000000000;
    }

    MEMORY[0x1DA739C30](v9, v10);
    v11 = 0;
    v12 = v4[2];
    v13 = (a4 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    v33 = v8;
    v34 = v7;
    do
    {
      MEMORY[0x1DA739C30](v8, v7);
      v15 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v15);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D986FB38();
        v14 = v23;
      }

      v16 = *(v14 + 16);
      if (v16 >= *(v14 + 24) >> 1)
      {
        sub_1D986FB38();
        v14 = v24;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = 64;
      *(v17 + 40) = 0xE100000000000000;
      v18 = *(v13 - 2);
      v19 = *(v13 - 1);
      v20 = *v13;
      sub_1D986C8B8(v18, v19, *v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D986CB30();
        v12 = v25;
      }

      v21 = *(v12 + 16);
      if (v21 >= *(v12 + 24) >> 1)
      {
        sub_1D986CB30();
        v12 = v26;
      }

      ++v11;
      *(v12 + 16) = v21 + 1;
      v22 = v12 + 40 * v21;
      *(v22 + 32) = 64;
      *(v22 + 40) = 0xE100000000000000;
      *(v22 + 48) = v18;
      *(v22 + 56) = v19;
      *(v22 + 64) = v20;
      v13 += 24;
      v7 = v34;
      v8 = v33;
    }

    while (v35 != v11);
    v4[2] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
    sub_1D986FD2C();
    v27 = sub_1D992B5E4();
    v29 = v28;

    MEMORY[0x1DA739C30](v27, v29);

    MEMORY[0x1DA739C30](8233, 0xE200000000000000);

    MEMORY[0x1DA739C30](40, 0xE100000000000000);

    sub_1D986CABC(sub_1D986FB38);
    v30 = *(*v4 + 16);
    result = sub_1D986D0FC(v30, sub_1D986FB38);
    v31 = *v4;
    *(v31 + 16) = v30 + 1;
    v32 = v31 + 16 * v30;
    *(v32 + 32) = v36;
    *(v32 + 40) = a2;
    *v4 = v31;
  }

  return result;
}

uint64_t sub_1D987BA38(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

SiriAnalytics::OffDeviceTopic_optional __swiftcall OffDeviceTopic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D992BF04();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OffDeviceTopic.rawValue.getter()
{
  result = 0xD000000000000018;
  switch(*v0)
  {
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D987BB90@<X0>(unint64_t *a1@<X8>)
{
  result = OffDeviceTopic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id OffDeviceTopicsShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OffDeviceTopicsShim.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OffDeviceTopicsShim();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OffDeviceTopicsShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OffDeviceTopicsShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D987BD0C()
{
  result = qword_1ECB48400;
  if (!qword_1ECB48400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OffDeviceTopic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OffDeviceTopic(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D987BED8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_9(a1, v1);
}

uint64_t sub_1D987BEF0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  v2 = *(v1 + 112);
  *(v0 + 32) = v2;
  if (v2)
  {
    type metadata accessor for TailToOSLog();
    sub_1D987C2B8();
    v4 = sub_1D992B814();

    return MEMORY[0x1EEE6DFA0](sub_1D987BFBC, v4, v3);
  }

  else
  {
    if (*(v1 + 120))
    {
      sub_1D986621C(*(v0 + 16));
    }

    OUTLINED_FUNCTION_25();

    return v5();
  }
}

uint64_t sub_1D987BFBC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  sub_1D98CFFE0(*(v0 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1D987C024, v1, 0);
}

uint64_t sub_1D987C024()
{
  OUTLINED_FUNCTION_18();
  if (*(*(v0 + 24) + 120))
  {
    sub_1D986621C(*(v0 + 16));
  }

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_1D987C088(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_9(a1, v1);
}

uint64_t sub_1D987C0A0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  v2 = *(v1 + 112);
  *(v0 + 32) = v2;
  if (v2)
  {
    type metadata accessor for TailToOSLog();
    sub_1D987C2B8();
    v4 = sub_1D992B814();

    return MEMORY[0x1EEE6DFA0](sub_1D987C16C, v4, v3);
  }

  else
  {
    if (*(v1 + 120))
    {
      sub_1D988525C(*(v0 + 16));
    }

    OUTLINED_FUNCTION_25();

    return v5();
  }
}

uint64_t sub_1D987C16C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  sub_1D98D003C();

  return MEMORY[0x1EEE6DFA0](sub_1D987C1D4, v1, 0);
}

uint64_t sub_1D987C1D4()
{
  OUTLINED_FUNCTION_18();
  if (*(*(v0 + 24) + 120))
  {
    sub_1D988525C(*(v0 + 16));
  }

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_1D987C238()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D987C268()
{
  sub_1D987C238();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1D987C2B8()
{
  result = qword_1ECB48408;
  if (!qword_1ECB48408)
  {
    type metadata accessor for TailToOSLog();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48408);
  }

  return result;
}

_OWORD *sub_1D987C310()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48418, &qword_1D992FD58);
  v0 = swift_allocObject();
  v0[1] = xmmword_1D992FCB0;
  sub_1D990712C(0, 0, 0xD000000000000015, 0x80000001D9937450, &unk_1F5518068, 1, &v3);
  v1 = v4[0];
  v0[2] = v3;
  v0[3] = v1;
  *(v0 + 57) = *(v4 + 9);
  return v0;
}

void sub_1D987C3AC(uint64_t a1)
{
  v2 = sub_1D987C310();
  v52[3] = &type metadata for SQLTableIndexes;
  v52[4] = &off_1F5517310;
  v52[0] = 0xD000000000000015;
  v52[1] = 0x80000001D9937450;
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1D987EB68(a1, v52, sub_1D98BD810);
  objc_autoreleasePoolPop(v3);
  __swift_destroy_boxed_opaque_existential_1(v52);
  if (v4)
  {
    if (v2)
    {
      v5 = 0;
      v6 = *(v4 + 16);
      v47 = v2 + 2;
      v7 = v2 + 5;
      v8 = MEMORY[0x1E69E7CC0];
      v51 = v2;
      while (v5 != v6)
      {
        if (v5 >= *(v4 + 16))
        {
          goto LABEL_48;
        }

        v9 = (v4 + 32 + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        ++v5;
        v12 = *(v2 + 2) + 1;
        v13 = v7;
        while (--v12)
        {
          v14 = v13 + 6;
          if (*(v13 - 1) != v10 || *v13 != v11)
          {
            v16 = sub_1D992BF64();
            v13 = v14;
            if ((v16 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_19;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D98BD7F4(0, *(v8 + 16) + 1, 1, v8);
          v8 = v20;
        }

        v18 = *(v8 + 16);
        v17 = *(v8 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1D98BD7F4(v17 > 1, v18 + 1, 1, v8);
          v8 = v21;
        }

        *(v8 + 16) = v18 + 1;
        v19 = v8 + 16 * v18;
        *(v19 + 32) = v10;
        *(v19 + 40) = v11;
LABEL_19:
        v2 = v51;
      }

      v22 = 0;
      v48 = *(v2 + 2);
      v23 = -v6;
      v24 = MEMORY[0x1E69E7CC0];
LABEL_21:
      if (v22 == v48)
      {

        return;
      }

      if (v22 < *(v2 + 2))
      {
        v25 = &v47[3 * v22];
        v26 = *v25;
        v27 = *(v25 + 1);
        v28 = *(v25 + 3);
        v50 = *(v25 + 2);
        v29 = *(v25 + 4);
        v49 = *(v25 + 40);
        ++v22;
        v30 = -1;
        v31 = (v4 + 40);
        while (1)
        {
          if (v23 + v30 == -1)
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v52[0] = v24;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D98B9814(0, *(v24 + 16) + 1, 1);
              v24 = v52[0];
            }

            v37 = *(v24 + 16);
            v36 = *(v24 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_1D98B9814(v36 > 1, v37 + 1, 1);
              v24 = v52[0];
            }

            *(v24 + 16) = v37 + 1;
            v38 = v24 + 48 * v37;
            *(v38 + 32) = v26;
            *(v38 + 40) = v27;
            *(v38 + 48) = v50;
            *(v38 + 56) = v28;
            *(v38 + 64) = v29;
            *(v38 + 72) = v49;
LABEL_37:
            v2 = v51;
            goto LABEL_21;
          }

          if (++v30 >= *(v4 + 16))
          {
            break;
          }

          v32 = v31 + 2;
          if (*(v31 - 1) != v26 || *v31 != v27)
          {
            v34 = sub_1D992BF64();
            v31 = v32;
            if ((v34 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_37;
        }

        __break(1u);
LABEL_48:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v39 = *(v4 + 16);
      if (v39)
      {
        v52[0] = MEMORY[0x1E69E7CC0];
        sub_1D98B97C8();
        v40 = v52[0];
        v41 = (v4 + 40);
        do
        {
          v43 = *(v41 - 1);
          v42 = *v41;
          v52[0] = v40;
          v45 = *(v40 + 16);
          v44 = *(v40 + 24);

          if (v45 >= v44 >> 1)
          {
            sub_1D98B97C8();
            v40 = v52[0];
          }

          *(v40 + 16) = v45 + 1;
          v46 = v40 + 16 * v45;
          *(v46 + 32) = v43;
          *(v46 + 40) = v42;
          v41 += 2;
          --v39;
        }

        while (v39);
      }
    }
  }
}

void sub_1D987C7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48418, &qword_1D992FD58);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D992FCB0;
  sub_1D990712C(0, 0, a2, a3, a4, 1, &v44);
  v9 = v45[0];
  *(v8 + 32) = v44;
  *(v8 + 48) = v9;
  *(v8 + 57) = *(v45 + 9);
  v43[3] = &type metadata for SQLTableIndexes;
  v43[4] = &off_1F5517310;
  v43[0] = a2;
  v43[1] = a3;
  v10 = objc_autoreleasePoolPush();
  v11 = sub_1D987EB68(a1, v43, sub_1D98BD810);
  objc_autoreleasePoolPop(v10);
  __swift_destroy_boxed_opaque_existential_1(v43);
  if (v11)
  {
    v12 = 0;
    v13 = *(v11 + 16);
    v14 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v15 = (v11 + 40 + 16 * v12);
    while (v13 != v12)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = *(v8 + 32) == v16 && *(v8 + 40) == v17;
      if (!v18 && (sub_1D992BF64() & 1) == 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = OUTLINED_FUNCTION_1();
          sub_1D98BD7F4(v22, v23, v24, v14);
          v14 = v25;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D98BD7F4(v19 > 1, v20 + 1, 1, v14);
          v14 = v26;
        }

        ++v12;
        *(v14 + 16) = v20 + 1;
        v21 = v14 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v17;
        goto LABEL_3;
      }

      v15 += 2;
      ++v12;
    }

    v27 = -v13;
    v28 = MEMORY[0x1E69E7CC0];
    v29 = *(v8 + 32);
    v30 = *(v8 + 40);
    v31 = *(v8 + 56);
    v42 = *(v8 + 48);
    v32 = *(v8 + 64);
    v33 = -1;
    v34 = (v11 + 40);
    v41 = *(v8 + 72);
    while (v27 + v33 != -1)
    {
      if (++v33 >= *(v11 + 16))
      {
        goto LABEL_34;
      }

      if (*(v34 - 1) != v29 || *v34 != v30)
      {
        v34 += 2;
        if ((sub_1D992BF64() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_31;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D98B9814(0, *(v28 + 16) + 1, 1);
      v28 = v43[0];
    }

    v38 = *(v28 + 16);
    v37 = *(v28 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      sub_1D98B9814(v37 > 1, v38 + 1, 1);
      v39 = v38 + 1;
      v28 = v43[0];
    }

    *(v28 + 16) = v39;
    v40 = v28 + 48 * v38;
    *(v40 + 32) = v29;
    *(v40 + 40) = v30;
    *(v40 + 48) = v42;
    *(v40 + 56) = v31;
    *(v40 + 64) = v32;
    *(v40 + 72) = v41;
LABEL_31:
  }
}

uint64_t sub_1D987CAF0(uint64_t a1)
{
  v2 = 0xEE00736B636F6C63;
  v3 = 0x5F6C616369676F6CLL;
  v52[3] = &type metadata for SQLTableInfo;
  v52[4] = &off_1F55178B0;
  strcpy(v52, "logical_clocks");
  HIBYTE(v52[1]) = -18;
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1D987EB68(a1, v52, sub_1D98BD82C);
  objc_autoreleasePoolPop(v4);
  __swift_destroy_boxed_opaque_existential_1(v52);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v52[0] = MEMORY[0x1E69E7CC0];
      sub_1D986C620(0, v6, 0);
      v7 = v52[0];
      v8 = (v5 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;
        v52[0] = v7;
        v3 = *(v7 + 16);
        v11 = *(v7 + 24);

        if (v3 >= v11 >> 1)
        {
          sub_1D986C620(v11 > 1, v3 + 1, 1);
          v7 = v52[0];
        }

        *(v7 + 16) = v3 + 1;
        v12 = v7 + 16 * v3;
        *(v12 + 32) = v9;
        *(v12 + 40) = v10;
        v8 += 2;
        --v6;
      }

      while (v6);

      v13 = sub_1D98B3BF4(v7);
      v14 = 0;
      v15 = MEMORY[0x1E69E7CC0];
      v2 = v13 + 56;
LABEL_8:
      while (v14 != 8)
      {
        if (v14 > 7)
        {
          __break(1u);
          goto LABEL_43;
        }

        v16 = &unk_1F55180D0 + 24 * v14;
        v18 = *(v16 + 4);
        v17 = *(v16 + 5);
        v19 = v16[48];
        v3 = v16[49];
        ++v14;
        if (*(v13 + 16))
        {
          sub_1D992C074();

          sub_1D992B6D4();
          v20 = sub_1D992C0C4();
          v21 = ~(-1 << *(v13 + 32));
          while (1)
          {
            v22 = v20 & v21;
            if (((*(v2 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
            {
              break;
            }

            v23 = (*(v13 + 48) + 16 * v22);
            if (*v23 != v18 || v23[1] != v17)
            {
              v25 = sub_1D992BF64();
              v20 = v22 + 1;
              if ((v25 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_8;
          }
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D98B98AC(0, *(v15 + 16) + 1, 1);
          v15 = v53;
        }

        v27 = v15;
        v28 = *(v15 + 16);
        v29 = *(v27 + 24);
        if (v28 >= v29 >> 1)
        {
          sub_1D98B98AC(v29 > 1, v28 + 1, 1);
          v27 = v53;
        }

        *(v27 + 16) = v28 + 1;
        v30 = v27 + 24 * v28;
        *(v30 + 32) = v18;
        *(v30 + 40) = v17;
        *(v30 + 48) = v19;
        *(v30 + 49) = v3;
        v15 = v27;
      }

      v31 = *(v15 + 16);
      if (v31)
      {
        if (qword_1ED8BD6D8 != -1)
        {
          swift_once();
        }

        v52[0] = 0;
        v52[1] = 0xE000000000000000;
        sub_1D992BD64();

        v52[0] = 0xD000000000000027;
        v52[1] = 0x80000001D99372A0;
        v53 = MEMORY[0x1E69E7CC0];
        sub_1D986C620(0, v31, 0);
        v32 = v53;
        v51 = v15;
        v33 = (v15 + 40);
        do
        {
          v34 = *(v33 - 1);
          v35 = *v33;
          v53 = v32;
          v37 = *(v32 + 16);
          v36 = *(v32 + 24);

          if (v37 >= v36 >> 1)
          {
            sub_1D986C620(v36 > 1, v37 + 1, 1);
            v32 = v53;
          }

          *(v32 + 16) = v37 + 1;
          v38 = v32 + 16 * v37;
          *(v38 + 32) = v34;
          *(v38 + 40) = v35;
          v33 += 3;
          --v31;
        }

        while (v31);
        v39 = MEMORY[0x1DA739D10](v32, MEMORY[0x1E69E6158]);
        v41 = v40;

        MEMORY[0x1DA739C30](v39, v41);

        sub_1D986A454(v52[0], v52[1], 0xD000000000000064, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);

        v42 = sub_1D98D0AE0(0x5F6C616369676F6CLL, 0xEE00736B636F6C63, v51);
        v45 = sub_1D987005C(v42, v43, v44);

        if ((v45 & 1) == 0)
        {
          sub_1D98DCEB4(0xD00000000000001FLL, 0x80000001D99372D0, 0xD000000000000064, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);
          v46 = 0;
          return v46 & 1;
        }
      }

      else
      {

        if (qword_1ED8BD6D8 != -1)
        {
          swift_once();
        }

        sub_1D986A454(0xD000000000000032, 0x80000001D99372F0, 0xD000000000000064, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);
      }

      v46 = 1;
      return v46 & 1;
    }
  }

  if (qword_1ED8BD6D8 != -1)
  {
LABEL_43:
    swift_once();
  }

  sub_1D986A454(0xD000000000000036, 0x80000001D9937240, 0xD000000000000064, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);
  v47 = sub_1D98C5248(v3, v2, &unk_1F55180D0);
  v46 = sub_1D987005C(v47, v48, v49);

  return v46 & 1;
}