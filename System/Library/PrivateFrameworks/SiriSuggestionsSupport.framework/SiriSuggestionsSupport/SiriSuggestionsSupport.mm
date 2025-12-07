uint64_t sub_2315B10A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2316066E8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2315B1174()
{
  OUTLINED_FUNCTION_4_0();
  v45 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[22];
  v4 = sub_231604F38();
  OUTLINED_FUNCTION_32(v4);
  v0[34] = sub_231604F28();
  OUTLINED_FUNCTION_26_2();
  v7 = sub_2315B3174(v5, v6, MEMORY[0x277D60D70]);
  OUTLINED_FUNCTION_57_0(v7);
  if (v2)
  {

    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_280FE9570);
    }

    v8 = sub_2316066E8();
    v9 = OUTLINED_FUNCTION_17_5(v8, qword_280FE9578);
    v10 = sub_2316066C8();
    sub_231606978();
    OUTLINED_FUNCTION_65_0();
    if (os_log_type_enabled(v10, v1))
    {
      OUTLINED_FUNCTION_60();
      v11 = OUTLINED_FUNCTION_41_0();
      *v3 = 138412290;
      v12 = v2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_69_1(v13);
      OUTLINED_FUNCTION_43_0(&dword_2315AF000, v14, v1, "Error when submitting to state store: %@");
      sub_2315B2F7C(v11, &qword_27DD60278, &unk_231608238);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    v15 = v0[28];

    v16 = sub_2315F53D4(v2);
    v15();

    OUTLINED_FUNCTION_14();

    return v17();
  }

  else
  {
    sub_2316061E8();
    v19 = OUTLINED_FUNCTION_36();
    v20(v19);
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_280FE9570);
    }

    v21 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v21, qword_280FE9578);
    sub_2315B2D08((v0 + 2), (v0 + 8));

    v22 = sub_2316066C8();
    sub_231606968();
    OUTLINED_FUNCTION_9_1();

    if (OUTLINED_FUNCTION_7())
    {
      v23 = OUTLINED_FUNCTION_91_0();
      v44 = OUTLINED_FUNCTION_90_0();
      *v23 = 136315394;
      v24 = OUTLINED_FUNCTION_59_1();
      *(v23 + 4) = sub_2315B1574(v24, v25, v26);
      *(v23 + 12) = 2080;
      sub_2315B2D08((v0 + 8), (v0 + 14));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
      v27 = sub_2316067A8();
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
      v30 = sub_2315B1574(v27, v29, &v44);

      *(v23 + 14) = v30;
      OUTLINED_FUNCTION_47_1();
      _os_log_impl(v31, v32, v33, v34, v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
    }

    v0[20] = v0[25];
    v35 = swift_task_alloc();
    v0[35] = v35;
    v36 = type metadata accessor for StatefulSuggestionsClient();
    OUTLINED_FUNCTION_24_3();
    v39 = sub_2315B3174(v37, v38, &protocol conformance descriptor for StatefulSuggestionsClient);
    *v35 = v0;
    v35[1] = sub_2315FA690;
    v40 = v0[26];
    v41 = v0[27];
    v42 = v0[23];
    v43 = v0[24];

    return MEMORY[0x2821C5FC8](v42, v43, v40, v41, v0 + 2, v36, v39);
  }
}

unint64_t sub_2315B1574(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2315B1638(v11, 0, 0, 1, a1, a2);
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
    sub_2315B2BB4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2315B1638(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2315CCC18(a5, a6);
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
    result = sub_231606A68();
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

uint64_t sub_2315B1798(int a1, id a2)
{
  v3 = v2;
  v5 = [a2 processIdentifier];
  sub_231605A88();
  sub_231605A78();
  v6 = sub_231606788();

  v7 = [a2 valueForEntitlement_];

  if (v7)
  {
    sub_2316069E8();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (*(&v44 + 1))
  {
    if (OUTLINED_FUNCTION_1_6(v8, v9, v10, MEMORY[0x277D839B0], v11) & 1) != 0 && (v42[0])
    {
      sub_231605A68();
      v12 = sub_231606788();

      v13 = [a2 valueForEntitlement_];

      if (v13)
      {
        sub_2316069E8();
        v14 = swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      v45 = v43;
      v46 = v44;
      if (*(&v44 + 1))
      {
        v26 = OUTLINED_FUNCTION_1_6(v14, v15, v16, MEMORY[0x277D837D0], v17);
        if (v26)
        {
          v27 = *&v42[0];
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          v28 = *(&v42[0] + 1);
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        sub_2315B1DC4(&v45);
        v27 = 0;
        v28 = 0;
      }

      v29 = objc_opt_self();
      v30 = [v29 interfaceWithProtocol_];
      v31 = [v29 interfaceWithProtocol_];
      [v30 setInterface:v31 forSelector:sel_getSuggestionsForAppWithAppBundleId_placementId_entities_intentsToSuggest_bridge_completionHandler_ argumentIndex:4 ofReply:0];
      [a2 setExportedInterface_];
      v32 = *(v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_client);
      sub_2315B4568(v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_eventDrivenClient, &v45);
      sub_2315B4568(v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_autocompleteService, &v43);
      sub_2315B4568(v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_offlineGenerationClient, v42);
      v33 = qword_280FE8FD0;

      if (v33 != -1)
      {
        swift_once();
      }

      v34 = qword_280FE8FD8;
      type metadata accessor for XPCAccessList();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      type metadata accessor for SiriSuggestionsXPCService();
      swift_allocObject();
      v36 = sub_2315F36F4(v32, &v45, v27, v28, v35, &v43, v42);

      [a2 setExportedObject_];

      [a2 resume];
      if (qword_280FE9570 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_280FE9570);
      }

      v37 = sub_2316066E8();
      __swift_project_value_buffer(v37, qword_280FE9578);
      v19 = sub_2316066C8();
      v38 = sub_231606958();
      if (os_log_type_enabled(v19, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 67240192;
        v39[1] = v5;
        OUTLINED_FUNCTION_2_6(&dword_2315AF000, v40, v41, "process [%{public}d] is connected to siri suggestions xpc service");
        MEMORY[0x231933730](v39, -1, -1);
      }

      v24 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2315B1DC4(&v45);
  }

  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v18 = sub_2316066E8();
  __swift_project_value_buffer(v18, qword_280FE9578);
  v19 = sub_2316066C8();
  v20 = sub_231606978();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67240192;
    v21[1] = v5;
    OUTLINED_FUNCTION_2_6(&dword_2315AF000, v22, v23, "process [%{public}d] is not entitled to call the Siri Suggestions service.\nAdd the proper entitlements and try again.");
    MEMORY[0x231933730](v21, -1, -1);
  }

  v24 = 0;
LABEL_15:

  return v24;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_1_7(uint64_t a1)
{
  *(v3 + 4) = a1;
  *(v3 + 12) = 2080;

  return sub_2315B1574(v2, v1, (v4 - 80));
}

uint64_t sub_2315B1DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD605F0, qword_231609310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL OUTLINED_FUNCTION_7()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_87()
{

  return sub_231605A98();
}

uint64_t sub_2315B1E7C(uint64_t a1)
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = _Block_copy(v7);
  v9 = sub_231606798();
  v11 = v10;
  v12 = v6;

  v13 = sub_231605038();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  v2(v9, v11, v13, v15, v4, v16);

  sub_2315B300C(v13, v15);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315B1F9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2315B1FF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_93();
  v36 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v16);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_62_2();
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_280FE9570);
  }

  v18 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v18, qword_280FE9578);

  v19 = sub_2316066C8();
  v20 = sub_231606968();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_60();
    v35 = v11;
    v22 = v9;
    v23 = v5;
    v24 = v7;
    v25 = OUTLINED_FUNCTION_63();
    v37 = v25;
    *v21 = 136315138;
    *(v21 + 4) = sub_2315B1574(v15, v13, &v37);
    _os_log_impl(&dword_2315AF000, v19, v20, "Executing SiriSuggestionsXPCService logIntent on request: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v7 = v24;
    v5 = v23;
    v9 = v22;
    v11 = v35;
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  v26 = *(v36 + 16);
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_78_0();
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v11;
  v31[5] = v9;
  v31[6] = v26;
  v31[7] = v15;
  v31[8] = v13;
  v31[9] = v7;
  v31[10] = v5;
  v31[11] = v36;

  sub_2315B2F24(v11, v9);

  v32 = OUTLINED_FUNCTION_5_8();
  sub_2315F5918(v32, v33, v3, v34, v31);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315B220C()
{
  swift_unknownObjectRelease();
  sub_2315B300C(*(v0 + 32), *(v0 + 40));

  OUTLINED_FUNCTION_78_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2315B2268()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12(v3);
  *v4 = v5;
  v4[1] = sub_2315F0728;

  return v7(v1);
}

uint64_t OUTLINED_FUNCTION_15_1()
{
  *(v1 + 4) = v3;
  *(v1 + 12) = 2080;

  return sub_2315CCBA8(v2, v0);
}

void *OUTLINED_FUNCTION_15_2()
{
  v2 = *(v0 + 16) + 1;

  return sub_231604008(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return MEMORY[0x2822005D0](v1, v0, sub_2315F2260, v2, v1);
}

void OUTLINED_FUNCTION_12_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_29()
{

  JUMPOUT(0x231933730);
}

uint64_t sub_2315B24CC()
{
  OUTLINED_FUNCTION_20_2();
  v14 = *(v0 + 72);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12(v1);
  *v2 = v3;
  v2[1] = sub_2315B4740;
  OUTLINED_FUNCTION_10_2(v14);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_33_1();

  return sub_2315B274C(v4, v5, v6, v7, v8, v9, v10, v11);
}

void OUTLINED_FUNCTION_17()
{

  JUMPOUT(0x231933730);
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *v14 = a13;

  return sub_2315CCBA8(v15, v13);
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_7_1()
{

  JUMPOUT(0x231933730);
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_2315B274C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v14;
  *(v8 + 208) = v12;
  *(v8 + 224) = v13;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 168) = a4;
  v9 = sub_2316061F8();
  *(v8 + 248) = v9;
  *(v8 + 256) = *(v9 - 8);
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315B1174, 0, 0);
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  *(v2 + 14) = v0;
  *(v2 + 22) = v3;

  return sub_2315B4568(v1 + 96, v1 + 136);
}

uint64_t OUTLINED_FUNCTION_24_2()
{
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{
  *(v1 + 16) = a1;

  return sub_231605B58();
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_231606A08();
}

uint64_t OUTLINED_FUNCTION_3_5@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  *(v2 - 88) = *(v1 + 1008);
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t a1)
{

  return sub_231604F18();
}

uint64_t sub_2315B2BB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_22_2(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x231933730);
}

uint64_t sub_2315B2D08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDB68](a1, a2, v2, v3);
}

void *OUTLINED_FUNCTION_76()
{
  v2 = v0[2] + 1;

  return sub_2315DA474(0, v2, 1, v0);
}

uint64_t sub_2315B2F24(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2315B2F7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return sub_2316066E8();
}

uint64_t sub_2315B300C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2315B3064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_7_6();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12(v10);
  *v11 = v12;
  v11[1] = sub_2315B4660;
  OUTLINED_FUNCTION_10_2(a10);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_31();

  return sub_2315B3C0C(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_2315B3174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t StatefulSuggestionsClient.submitAsync(for:propertyKey:propertyValue:)()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_231605C78();
  v1[7] = v6;
  OUTLINED_FUNCTION_4(v6);
  v1[8] = v7;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2315B327C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return StatefulSuggestionsClient.submitAsync(for:propertyKey:propertyValue:)();
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{
}

void *OUTLINED_FUNCTION_8_2()
{
  v2 = *(v0 + 16) + 1;

  return sub_231604008(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_5()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
}

uint64_t OUTLINED_FUNCTION_6_1()
{
  v1 = v0[35];
  v2 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_2315CCBA8(v1, v2);
}

void OUTLINED_FUNCTION_6_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_2315B3534()
{
  v36 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v3 + 16);
  v4(v1, v0[2], v2);
  if ((*(v3 + 88))(v1, v2) == *MEMORY[0x277D606B8])
  {
    v5 = v0[10];
    v6 = v0[6];
    (*(v0[8] + 96))(v5, v0[7]);
    v7 = *v5;
    v8 = v5[1];
    v0[11] = v8;
    v9 = *(v6 + 80);
    ObjectType = swift_getObjectType();
    v33 = (*(v9 + 16) + **(v9 + 16));
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_23160114C;
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[3];

    return v33(v7, v8, v14, v12, v13, ObjectType, v9);
  }

  else
  {
    if (qword_280FE9628 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_280FE9628);
    }

    v16 = v0[9];
    v17 = v0[7];
    v18 = v0[2];
    v19 = sub_2316066E8();
    v20 = __swift_project_value_buffer(v19, qword_280FE9630);
    v4(v16, v18, v17);
    v21 = sub_2316066C8();
    v22 = sub_231606978();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[8];
    if (v23)
    {
      OUTLINED_FUNCTION_60();
      v34 = OUTLINED_FUNCTION_21_2();
      v35 = v34;
      *v20 = 136315138;
      sub_231601D00(&qword_27DD60880, 255, MEMORY[0x277D606C0], MEMORY[0x277D606C8]);
      v25 = sub_231606BC8();
      v27 = v26;
      v28 = *(v24 + 8);
      v29 = OUTLINED_FUNCTION_32_1();
      v28(v29);
      v30 = sub_2315B1574(v25, v27, &v35);

      *(v20 + 4) = v30;
      _os_log_impl(&dword_2315AF000, v21, v22, "Unsupported interationId type of %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x231933730](v34, -1, -1);
      OUTLINED_FUNCTION_7_1();
    }

    else
    {

      v28 = *(v24 + 8);
      v31 = OUTLINED_FUNCTION_32_1();
      v28(v31);
    }

    (v28)(v0[10], v0[7]);

    OUTLINED_FUNCTION_14();

    return v32();
  }
}

uint64_t OUTLINED_FUNCTION_22(uint64_t result, uint64_t a2)
{
  *(v2 - 128) = result;
  *(v2 - 120) = a2;
  *(v2 - 176) = 35;
  *(v2 - 168) = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_0(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_22_4()
{

  JUMPOUT(0x231933730);
}

uint64_t sub_2315B39B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2315B4660;

  return sub_2315B3AFC(a1, a2, a3, a4, a5);
}

uint64_t sub_2315B3A78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2315C1C80, v2, 0);
}

void OUTLINED_FUNCTION_25_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x231933730);
}

uint64_t sub_2315B3AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a3;
  v6[3] = a4;
  v9 = swift_task_alloc();
  v6[6] = v9;
  *v9 = v6;
  v9[1] = sub_2315C21C4;

  return sub_2315B3A78(a1, a2);
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_30_0()
{
  v2 = *(v0 + 1352);
}

uint64_t sub_2315B3C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v14;
  *(v8 + 64) = v13;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = sub_2316066B8();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  v10 = sub_231605FC8();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315B3D44, 0, 0);
}

uint64_t sub_2315B3D44()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[14];
  v2 = sub_231604F38();
  OUTLINED_FUNCTION_32(v2);
  v0[17] = sub_231604F28();
  v3 = sub_2315B3174(&qword_280FE95F8, MEMORY[0x277D60930], MEMORY[0x277D60938]);
  OUTLINED_FUNCTION_57_0(v3);
  if (v1)
  {

    OUTLINED_FUNCTION_14();

    return v4();
  }

  else
  {
    v6 = sub_2316064E8();
    sub_2316064C8();

    sub_231605FF8();
    v7 = sub_2316064E8();
    v8 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_83_0(v8);

    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_2315F556C;

    return StatefulSuggestionsClient.logEngagement(for:intent:)();
  }
}

uint64_t sub_2315B3F5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.getService()(a1);
}

uint64_t DispatchedServiceAPIProvider.getService()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return OUTLINED_FUNCTION_0_1(sub_2315B40C4, v1);
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2315B40C4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_24_0();
  *(v1 + 96) = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v1 + 120) = v2;
  *v2 = v3;
  v2[1] = sub_2315B4234;
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821C5CD8](v4);
}

BOOL OUTLINED_FUNCTION_18_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2315B4234()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_2315B44BC, v2, 0);
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

unint64_t OUTLINED_FUNCTION_2_8(float a1)
{
  *v3 = a1;

  return sub_2315B1574(v2, v1, (v4 - 80));
}

uint64_t sub_2315B44BC()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 104);
  sub_2315B4568(*(v1 + 112) + 128, v1 + 56);
  type metadata accessor for DispatcherSuggestionService();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_19_0(v3);
  OUTLINED_FUNCTION_9_0();
  v2[4] = sub_2315B4888(v4, v5, &unk_2316081D0);
  *v2 = v0;
  OUTLINED_FUNCTION_14();

  return v6();
}

uint64_t sub_2315B4568(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{
  sub_2315B4648((v3 + 16), a1 + 16);
  result = sub_2315B4648((v3 + 56), a1 + 56);
  *(v2 + 24) = v1;
  return result;
}

uint64_t sub_2315B4648(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2315B4660()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1)
{
  v4 = *(v1 + 56) + 40 * a1;

  return sub_2315B4568(v4, v2 + 56);
}

uint64_t OUTLINED_FUNCTION_14_5()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

uint64_t sub_2315B4888(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2315B48CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315B49B0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_6();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_2315FE920;
  v2 = OUTLINED_FUNCTION_33_2();

  return MEMORY[0x2821C5CA0](v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void OUTLINED_FUNCTION_34_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double OUTLINED_FUNCTION_34_2()
{
  v1 = *(v0 + 120);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t sub_2315B4AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315B4660;

  return sub_2315B4BAC(a1, a2, a3, a4);
}

uint64_t sub_2315B4BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_1(sub_2315B4BD0, 0);
}

uint64_t sub_2315B4BD0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_2(v0[6]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_2315BF1A8;
  v2 = v0[2];

  return MEMORY[0x2821C5CA0](v2);
}

uint64_t sub_2315B4C90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2315B4CC8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2315B4D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231606158();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_231605E98();
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2315B4DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_231606158();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_231605E98();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

unint64_t sub_2315B4EB4(uint64_t a1)
{
  result = sub_2315C28E0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2315B4EDC()
{
  sub_231604FF8();
  OUTLINED_FUNCTION_5_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 64));
  if (*(v1 + 104))
  {
  }

  v7 = (v4 + 160) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 120));
  (*(v3 + 8))(v1 + v7, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v8));

  return MEMORY[0x2821FE8E8](v1, v8 + 40, v4 | 7);
}

uint64_t sub_2315B4FCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2315B5004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231604FF8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2315B50B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231604FF8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2315B5174(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C8, &qword_231608658);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D0, &unk_231608660);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_2315B5258(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C8, &qword_231608658);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D0, &unk_231608660);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

unint64_t sub_2315B5360(uint64_t a1)
{
  result = sub_2315CA968();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2315B5388()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2315B53C0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

__n128 *sub_2315B540C(__n128 *a1, __n128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  a2[2].n128_u64[0] = a1[2].n128_u64[0];
  return OUTLINED_FUNCTION_74(v2, v3, a1, a2);
}

uint64_t sub_2315B5444()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2315B548C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2315B54D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_2315B56F8()
{
  v1 = sub_231605E98();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2315B57D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2315B58A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2315B58DC()
{
  v1 = sub_2316061C8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2315B59B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_93();
  v3 = sub_231605098();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v2 + v6, v3);
  sub_2315B300C(*(v2 + v8), *(v2 + v8 + 8));

  sub_2315B300C(*(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_2315B5ABC()
{
  swift_unknownObjectRelease();
  sub_2315B300C(*(v0 + 32), *(v0 + 40));

  OUTLINED_FUNCTION_74_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2315B5B20()
{
  swift_unknownObjectRelease();

  sub_2315B300C(*(v0 + 48), *(v0 + 56));

  OUTLINED_FUNCTION_76_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2315B5B7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2315B5BBC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2315B5C0C()
{
  swift_unknownObjectRelease();
  sub_2315B300C(v0[4], v0[5]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);

  OUTLINED_FUNCTION_74_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2315B5C60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2315B5CB8()
{
  swift_unknownObjectRelease();
  sub_2315B300C(v0[4], v0[5]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    sub_2315B300C(v0[6], v1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_2315B5D38()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_78_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2315B5D8C()
{
  swift_unknownObjectRelease();

  sub_2315B300C(*(v0 + 48), *(v0 + 56));

  OUTLINED_FUNCTION_76_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2315B5F00()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2315B5F88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *SiriSuggestionsXPCClient.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60108, &qword_231607640);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_231605B58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605B48();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2315B6214(v3);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v8 = *(v5 + 32);
    v8(v7, v3, v4);
    v8((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport24SiriSuggestionsXPCClient_bridge), v7, v4);
  }

  return v0;
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

uint64_t sub_2315B6214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60108, &qword_231607640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *SiriSuggestionsXPCClient.__allocating_init(connection:xpcInterface:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = SiriSuggestionsXPCClient.init()();

  return v4;
}

uint64_t SiriSuggestionsXPCClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_0(v11);
  OUTLINED_FUNCTION_0_0();
  v15 = sub_2315B6DD0(v13, v14, MEMORY[0x277D605E8]);
  *v11 = v5;
  v11[1] = sub_2315B776C;

  return MEMORY[0x2821C5D08](a1, a2, a3, a4, a5, v12, v15);
}

uint64_t SiriSuggestionsXPCClient.getNextSuggestions(requestId:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  OUTLINED_FUNCTION_0_0();
  v8 = sub_2315B6DD0(v6, v7, MEMORY[0x277D605E8]);
  *v4 = v2;
  v4[1] = sub_2315B776C;
  v9 = MEMORY[0x277D84FA0];

  return MEMORY[0x2821C5D08](v3, v1, v0, v9, 0, v5, v8);
}

uint64_t SiriSuggestionsXPCClient.submitEngagement(for:with:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  OUTLINED_FUNCTION_0_0();
  v9 = sub_2315B6DD0(v7, v8, MEMORY[0x277D605E8]);
  *v5 = v2;
  v5[1] = sub_2315B776C;

  return MEMORY[0x2821C5D28](a1, a2, v6, v9);
}

uint64_t SiriSuggestionsXPCClient.getSuggestionsForApp(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  OUTLINED_FUNCTION_0_0();
  v9 = sub_2315B6DD0(v7, v8, MEMORY[0x277D605E8]);
  *v5 = v2;
  v5[1] = sub_2315B66C8;

  return MEMORY[0x2821C5D00](a1, a2, v6, v9);
}

uint64_t sub_2315B66C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t SiriSuggestionsXPCClient.logShown(for:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_0_0();
  sub_2315B6DD0(v2, v3, MEMORY[0x277D605E8]);
  *v1 = v0;
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2821C5D38](v4);
}

uint64_t SiriSuggestionsXPCClient.submitAsync(for:propertyKey:propertyValue:)()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_0(v9);
  OUTLINED_FUNCTION_0_0();
  v13 = sub_2315B6DD0(v11, v12, MEMORY[0x277D605E8]);
  *v9 = v0;
  v9[1] = sub_2315B776C;

  return MEMORY[0x2821C5D18](v8, v6, v4, v2, v10, v13);
}

uint64_t SiriSuggestionsXPCClient.submitAsync(for:properties:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_0_0();
  sub_2315B6DD0(v2, v3, MEMORY[0x277D605E8]);
  *v1 = v0;
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2821C5D10](v4);
}

uint64_t SiriSuggestionsXPCClient.refreshService()()
{
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_0_0();
  sub_2315B6DD0(v2, v3, MEMORY[0x277D605E8]);
  *v1 = v0;
  v4 = OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2821C5D20](v4);
}

uint64_t SiriSuggestionsXPCClient.warmup()()
{
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_0_0();
  sub_2315B6DD0(v2, v3, MEMORY[0x277D605E8]);
  *v1 = v0;
  v4 = OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2821C5D30](v4);
}

uint64_t SiriSuggestionsXPCClient.deinit()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport24SiriSuggestionsXPCClient_bridge;
  sub_231605B58();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SiriSuggestionsXPCClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport24SiriSuggestionsXPCClient_bridge;
  sub_231605B58();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SiriSuggestionsXPCClient(uint64_t a1)
{
  result = qword_27DD60130;
  if (!qword_27DD60130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2315B6DD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2315B6E18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.getNextSuggestions(requestId:)();
}

uint64_t sub_2315B6ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)(a1, a2, a3, a4, a5);
}

uint64_t sub_2315B6F98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B66C8;

  return SiriSuggestionsXPCClient.refreshService()();
}

uint64_t sub_2315B7030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2315B776C;

  return MEMORY[0x2821C5FC8](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2315B7110()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.submitAsync(for:propertyKey:propertyValue:)();
}

uint64_t sub_2315B71D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.submitAsync(for:properties:)();
}

uint64_t sub_2315B7280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315B776C;

  return MEMORY[0x2821C5FE8](a1, a2, a3, a4);
}

uint64_t sub_2315B7340()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.logShown(for:deliveryVehicle:generationId:)();
}

uint64_t sub_2315B73F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.warmup()();
}

uint64_t sub_2315B7480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315B776C;

  return MEMORY[0x2821C6010](a1, a2, a3, a4);
}

uint64_t sub_2315B7540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315B776C;

  return MEMORY[0x2821C6018](a1, a2, a3, a4);
}

uint64_t sub_2315B7600(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.submitEngagement(for:with:)(a1, a2);
}

uint64_t sub_2315B76B0(uint64_t a1)
{
  result = sub_231605B58();
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

uint64_t sub_2315B7770()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  *(v1 + 168) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  v6 = sub_2316059C8();
  *(v1 + 128) = v6;
  OUTLINED_FUNCTION_4(v6);
  *(v1 + 136) = v7;
  *(v1 + 144) = OUTLINED_FUNCTION_23_0();
  v8 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2315B781C()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v11 = sub_2316066E8();
    __swift_project_value_buffer(v11, qword_280FE9558);
    v12 = sub_2316066C8();
    v13 = sub_231606958();
    if (OUTLINED_FUNCTION_18_0(v13))
    {
      v14 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_27(v14);
      OUTLINED_FUNCTION_11(&dword_2315AF000, v15, v16, "Using ResponseFramework 1.0 for fallback dialog");
      OUTLINED_FUNCTION_17();
    }

    v17 = *(v0 + 120);

    v10 = v17 + 56;
    goto LABEL_13;
  }

  v2 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  if (sub_2316062A8())
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v3 = sub_2316066E8();
    __swift_project_value_buffer(v3, qword_280FE9558);
    v4 = sub_2316066C8();
    v5 = sub_231606958();
    if (OUTLINED_FUNCTION_18_0(v5))
    {
      v6 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_27(v6);
      OUTLINED_FUNCTION_11(&dword_2315AF000, v7, v8, "Using SiriHelp with SMART");
      OUTLINED_FUNCTION_17();
    }

    v9 = *(v0 + 120);

    v10 = v9 + 136;
LABEL_13:
    sub_2315B4568(v10, v0 + 16);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  OUTLINED_FUNCTION_28();
  v27 = sub_231605FD8();
  *(v0 + 80) = v27;
  *(v0 + 88) = sub_2315BCA10(&qword_27DD60208, MEMORY[0x277D60980], MEMORY[0x277D60960]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60970], v27);
  v29 = sub_2316062C8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  if (v29)
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v30 = sub_2316066E8();
    __swift_project_value_buffer(v30, qword_280FE9558);
    v31 = sub_2316066C8();
    v32 = sub_231606958();
    if (OUTLINED_FUNCTION_18_0(v32))
    {
      v33 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_27(v33);
      OUTLINED_FUNCTION_11(&dword_2315AF000, v34, v35, "Using ResponseFramework 2.0");
      OUTLINED_FUNCTION_17();
    }

    v36 = *(v0 + 120);

    v10 = v36 + 96;
    goto LABEL_13;
  }

  sub_2315B4568(*(v0 + 120) + 56, v0 + 16);
  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280FE9550);
  }

  v37 = sub_2316066E8();
  __swift_project_value_buffer(v37, qword_280FE9558);
  v38 = sub_2316066C8();
  v39 = sub_231606958();
  if (OUTLINED_FUNCTION_18_0(v39))
  {
    v40 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v40);
    OUTLINED_FUNCTION_11(&dword_2315AF000, v41, v42, "Using ResponseFramework 1.0");
    OUTLINED_FUNCTION_17();
  }

LABEL_14:
  v18 = *(v0 + 120);
  (*(*(v0 + 136) + 16))(*(v0 + 144), *(v0 + 104), *(v0 + 128));
  __swift_project_boxed_opaque_existential_1((v18 + 16), *(v18 + 40));
  OUTLINED_FUNCTION_26();
  sub_231606298();
  sub_231605948();
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
  OUTLINED_FUNCTION_25(v20);
  v43 = (v21 + *v21);
  v22 = swift_task_alloc();
  *(v0 + 152) = v22;
  *v22 = v0;
  v22[1] = sub_2315B7C7C;
  v23 = *(v0 + 144);
  v24 = *(v0 + 112);
  v25 = *(v0 + 96);

  return (v43)(v25, v1 & 1, v23, v24, v19, v20);
}

uint64_t sub_2315B7C7C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315B7D78()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_30();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_2315B7DE8()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_30();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();

  return v3();
}

void *sub_2315B7E6C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  return v0;
}

uint64_t sub_2315B7EA4()
{
  sub_2315B7E6C();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_2315B7ED8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4660;

  return sub_2315B7770();
}

uint64_t SiriHelpResponseFramework1Invoker.__allocating_init(templatesUrl:catGlobals:patternFlowProvider:patternExecutor:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  SiriHelpResponseFramework1Invoker.init(templatesUrl:catGlobals:patternFlowProvider:patternExecutor:)(a1, a2, a3, a4, a5);
  return v10;
}

char *SiriHelpResponseFramework1Invoker.init(templatesUrl:catGlobals:patternFlowProvider:patternExecutor:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_templatesUrl;
  sub_231604FF8();
  OUTLINED_FUNCTION_5_1();
  (*(v13 + 32))(&v5[v12], a1);
  *&v5[OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_catGlobals] = a2;
  sub_2315B4648(a3, &v5[OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternFlowProvider]);
  v14 = swift_allocObject();
  if (a4)
  {
    *(v14 + 16) = a4;
    *(v14 + 24) = a5;
    v15 = &unk_231607898;
  }

  else
  {
    *(v14 + 16) = v11;
    v15 = &unk_231607878;
  }

  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  v18 = &v5[OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternExecutor];
  *v18 = &unk_231607888;
  *(v18 + 1) = v17;
  return v5;
}

uint64_t sub_2315B8178(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_2315B8270;

  return v7(a2);
}

uint64_t sub_2315B8270()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_2315B836C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2315B8408;

  return sub_2315B860C(a2);
}

uint64_t sub_2315B8408()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = v3;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315B853C()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_13();
  return v1();
}

uint64_t sub_2315B8568()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_12(v4);
  *v5 = v6;
  v5[1] = sub_2315B4740;

  return sub_2315B836C(v3, v1);
}

uint64_t sub_2315B860C(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_2316056F8();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315B86CC, 0, 0);
}

uint64_t sub_2315B86CC()
{
  v1 = *(v0 + 56);
  sub_2316056B8();
  v2 = OUTLINED_FUNCTION_28();
  v3 = type metadata accessor for PatternExecution(v2);
  v4 = (v1 + v3[5]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v1 + v3[6]);
  v8 = *(v1 + v3[7]);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_2316056E8();
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_2315B87DC;
  v10 = OUTLINED_FUNCTION_29_0(*(v0 + 56));

  return MEMORY[0x2821B7E58](v10, v5, v6, v7, v8, v0 + 16);
}

uint64_t sub_2315B87DC()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[12] = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  sub_2315B2F7C((v3 + 2), &qword_27DD601D0, &qword_231607A98);
  if (!v0)
  {

    v6 = v5[1];

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315B8994()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_2315B89F0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2315B8AEC;

  return v6(v2 + 16, a1);
}

uint64_t sub_2315B8AEC()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 16);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t sub_2315B8C18()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2315B8CC8;

  return sub_2315B89F0(v3, v4);
}

uint64_t sub_2315B8CC8()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2315B8DB4()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12(v6);
  *v7 = v8;
  v7[1] = sub_2315B4740;

  return sub_2315B8178(v4, v2, v5);
}

uint64_t sub_2315B8E70()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 112) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_231604FF8();
  *(v1 + 48) = v6;
  OUTLINED_FUNCTION_4(v6);
  *(v1 + 56) = v7;
  *(v1 + 64) = OUTLINED_FUNCTION_23_0();
  v8 = type metadata accessor for PatternExecution(0);
  *(v1 + 72) = v8;
  OUTLINED_FUNCTION_24(v8);
  *(v1 + 80) = OUTLINED_FUNCTION_23_0();
  v9 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2315B8F40()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 112);
  v6 = sub_231605928();
  v7 = *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternExecutor);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_templatesUrl, v3);
  v8 = *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_catGlobals);
  if (v8)
  {
    v9 = *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_catGlobals);
  }

  else
  {
    sub_231605668();
    v9 = sub_231605658();
  }

  v10 = "Suggestions#Fallback";
  v11 = (v5 & 1) == 0;
  if (v5)
  {
    v10 = "GetSuggestions_learnMoreWebsite";
  }

  v12 = v10 | 0x8000000000000000;
  if (v11)
  {
    v13 = 0xD00000000000001ALL;
  }

  else
  {
    v13 = 0xD000000000000014;
  }

  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  (*(*(v0 + 56) + 32))(v14, *(v0 + 64), *(v0 + 48));
  v16 = (v14 + v15[5]);
  *v16 = v13;
  v16[1] = v12;
  *(v14 + v15[6]) = v6;
  *(v14 + v15[7]) = v9;
  v17 = v8;
  v21 = (v7 + *v7);
  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = sub_2315B9138;
  v19 = OUTLINED_FUNCTION_29_0(*(v0 + 80));

  return v21(v19);
}

uint64_t sub_2315B9138()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 96) = v0;

  v7 = *(v4 + 80);
  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  sub_2315BC9B4(v7);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315B9270()
{
  v1 = v0[13];
  v2 = v0[2];
  v3 = __swift_project_boxed_opaque_existential_1((v0[5] + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternFlowProvider), *(v0[5] + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternFlowProvider + 24));
  sub_231605108();
  OUTLINED_FUNCTION_28();
  v4 = sub_2316050F8();
  v5 = MEMORY[0x277D5B770];
  v2[3] = v4;
  v2[4] = v5;

  *v2 = v3;

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t sub_2315B9350()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t SiriHelpResponseFramework1Invoker.deinit()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_templatesUrl;
  sub_231604FF8();
  OUTLINED_FUNCTION_5_1();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternFlowProvider));

  return v0;
}

uint64_t sub_2315B945C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return sub_2315B8E70();
}

uint64_t sub_2315B9520(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_25(a6);
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_12(v13);
  *v14 = v15;
  v14[1] = sub_2315B4660;

  return (v17)(a1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_2315B96A4(uint64_t a1)
{
  result = sub_231604FF8();
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

uint64_t sub_2315B9780(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId;
  strcpy((v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId), "com.apple.siri");
  *(v9 + 15) = -18;
  v10 = OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_templatesUrl;
  sub_231604FF8();
  OUTLINED_FUNCTION_5_1();
  (*(v11 + 32))(v4 + v10, a1);
  *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_catGlobals) = a2;
  sub_2315B4648(a3, v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_outputPublisher);
  *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_isSmartSnippet) = a4;
  return v4;
}

uint64_t sub_2315B9858(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_231604FF8();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  (*(v8 + 16))(v11 - v10, a1, v6);
  sub_2315B4568(a3, v16);
  v13 = type metadata accessor for SiriHelpResponseFramework2Invoker(0);
  v14 = OUTLINED_FUNCTION_32(v13);
  sub_2315B9780(v12, a2, v16, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  (*(v8 + 8))(a1, v6);
  return v14;
}

uint64_t sub_2315B997C(uint64_t a1, void (**a2)(uint64_t, uint64_t), void (**a3)(void (*)(char *, char *, uint64_t), void (*)(char *, char *, uint64_t)), uint64_t a4, uint64_t (*a5)(void, uint64_t, void))
{
  v132 = a4;
  v133 = a5;
  v131 = a3;
  v128 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601E8, &qword_231607AA0);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  v124 = &v109 - v7;
  OUTLINED_FUNCTION_19();
  v8 = sub_231605888();
  OUTLINED_FUNCTION_1_0();
  v115 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v114 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v134 = &v109 - v14;
  MEMORY[0x28223BE20](v13);
  v123 = &v109 - v15;
  OUTLINED_FUNCTION_19();
  v130 = sub_2316051D8();
  OUTLINED_FUNCTION_1_0();
  v120 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v129 = v19 - v18;
  OUTLINED_FUNCTION_19();
  v20 = sub_231605268();
  OUTLINED_FUNCTION_1_0();
  v136 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v125 = (v24 - v23);
  OUTLINED_FUNCTION_19();
  v127 = sub_231605238();
  OUTLINED_FUNCTION_1_0();
  v126 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v29 = v28 - v27;
  OUTLINED_FUNCTION_19();
  v30 = sub_2316056F8();
  OUTLINED_FUNCTION_1_0();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v36 = v35 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601F0, &qword_231607AA8);
  OUTLINED_FUNCTION_5_1();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = (&v109 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38);
  v42 = &v109 - v41;
  sub_2315BCA10(&qword_27DD601F8, MEMORY[0x277D60508], MEMORY[0x277D60510]);
  v135 = v8;
  v137 = sub_231606728();
  sub_231605688();
  v139 = 0;
  memset(v138, 0, sizeof(v138));
  sub_2316056E8();
  sub_231605678();
  v43 = v36;
  v44 = v42;
  (*(v32 + 8))(v43, v30);
  sub_2315B2F7C(v138, &qword_27DD601D0, &qword_231607A98);
  sub_2315BC924(v42, v40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    isUniquelyReferenced_nonNull_native = *v40;
    if (qword_280FE9550 != -1)
    {
LABEL_33:
      OUTLINED_FUNCTION_0(&qword_280FE9550);
    }

    v46 = sub_2316066E8();
    __swift_project_value_buffer(v46, qword_280FE9558);
    v47 = isUniquelyReferenced_nonNull_native;
    v48 = sub_2316066C8();
    v49 = sub_231606978();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v138[0] = v51;
      *v50 = 136315138;
      swift_getErrorValue();
      v52 = sub_231606C18();
      v54 = sub_2315B1574(v52, v53, v138);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_2315AF000, v48, v49, "Error: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    else
    {
    }

    goto LABEL_30;
  }

  v55 = v126;
  v56 = v29;
  v57 = v40;
  v58 = v127;
  (*(v126 + 32))(v29, v57, v127);
  v59 = sub_231605228();
  v60 = *(v59 + 16);
  if (!v60)
  {

LABEL_29:
    (*(v55 + 8))(v56, v58);
LABEL_30:
    sub_2315B2F7C(v44, &qword_27DD601F0, &qword_231607AA8);
    return v137;
  }

  v110 = v56;
  v111 = v42;
  v122 = 0;
  v133 = *(v136 + 16);
  v61 = (*(v136 + 80) + 32) & ~*(v136 + 80);
  v109 = v59;
  v44 = v59 + v61;
  v132 = *(v136 + 72);
  v128 = (v120 + 1);
  v117 = (v115 + 32);
  v120 = (v115 + 16);
  v119 = (v115 + 8);
  v136 += 16;
  v131 = (v136 - 8);
  v116 = 0x800000023160A480;
  v113 = *MEMORY[0x277D60500];
  v112 = (v115 + 104);
  v62 = v125;
  v121 = v20;
  while (1)
  {
    v133(v62, v44, v20);
    v63 = sub_231605248();
    OUTLINED_FUNCTION_22(v63, v64);
    sub_2315BC8D0();
    v65 = sub_2316069B8();

    if (*(v65 + 16))
    {
      break;
    }

    (*v131)(v62, v20);

LABEL_25:
    v44 += v132;
    if (!--v60)
    {

      v44 = v111;
      v56 = v110;
      goto LABEL_29;
    }
  }

  v20 = v62;

  v66 = v129;
  sub_231605258();
  v67 = sub_2316051C8();
  v69 = v68;
  v70 = *v128;
  (*v128)(v66, v130);
  v71 = v124;
  v72 = v135;
  sub_231605878();
  if (__swift_getEnumTagSinglePayload(v71, 1, v72) == 1)
  {
    v118 = v70;

    sub_2315B2F7C(v71, &qword_27DD601E8, &qword_231607AA0);
    v73 = sub_231605248();
    OUTLINED_FUNCTION_22(v73, v74);
    v75 = sub_2316069B8();

    *&v138[0] = 0xD00000000000001FLL;
    *(&v138[0] + 1) = v116;
    MEMORY[0x28223BE20](v76);
    *(&v109 - 2) = v138;
    v77 = v122;
    v78 = sub_2315E9B70(sub_2315BC994, (&v109 - 4), v75);
    v122 = v77;

    if (v78)
    {
      (*v112)(v114, v113, v72);
      v79 = v129;
      sub_231605258();
      v80 = sub_2316051C8();
      v82 = v81;
      v83 = v79;
      v62 = v125;
      v118(v83, v130);
      v84 = v137;
      swift_isUniquelyReferenced_nonNull_native();
      *&v138[0] = v84;
      sub_2315DBBAC(v80, v82);
      v85 = OUTLINED_FUNCTION_26();
      v86(v85);
      v87 = OUTLINED_FUNCTION_16();
      v88(v87);
      v137 = *&v138[0];
LABEL_24:
      v58 = v127;
      v55 = v126;
      goto LABEL_25;
    }

LABEL_23:
    v106 = OUTLINED_FUNCTION_16();
    v107(v106);
    goto LABEL_24;
  }

  v89 = v123;
  (*v117)(v123, v71, v72);
  v20 = *v120;
  (*v120)(v134, v89, v72);
  v90 = v137;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v138[0] = v90;
  v91 = sub_2315CCFD4();
  if (__OFADD__(*(v90 + 16), (v92 & 1) == 0))
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v93 = v91;
  v94 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60200, &qword_231607AB0);
  if ((sub_231606AC8() & 1) == 0)
  {
    v62 = v125;
    goto LABEL_18;
  }

  v95 = sub_2315CCFD4();
  v62 = v125;
  if ((v94 & 1) == (v96 & 1))
  {
    v93 = v95;
LABEL_18:
    v97 = *&v138[0];
    v137 = *&v138[0];
    if (v94)
    {
      v98 = (*(*&v138[0] + 56) + 16 * v93);
      *v98 = v67;
      v98[1] = v69;

      v99 = v135;
    }

    else
    {
      *(*&v138[0] + 8 * (v93 >> 6) + 64) |= 1 << v93;
      v99 = v135;
      v20((*(v97 + 48) + *(v115 + 72) * v93), v134, v135);
      v100 = v137;
      v101 = (*(v137 + 56) + 16 * v93);
      *v101 = v67;
      v101[1] = v69;
      v102 = *(v100 + 16);
      v103 = __OFADD__(v102, 1);
      v104 = v102 + 1;
      if (v103)
      {
        goto LABEL_32;
      }

      *(v100 + 16) = v104;
    }

    v105 = *v119;
    (*v119)(v134, v99);
    v105(v123, v99);
    goto LABEL_23;
  }

  result = sub_231606C08();
  __break(1u);
  return result;
}

uint64_t sub_2315BA580()
{
  OUTLINED_FUNCTION_8();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[15] = v5;
  v1[16] = v6;
  v7 = sub_231604FF8();
  v1[21] = v7;
  OUTLINED_FUNCTION_4(v7);
  v1[22] = v8;
  v1[23] = OUTLINED_FUNCTION_23_0();
  v9 = sub_2316056F8();
  v1[24] = v9;
  OUTLINED_FUNCTION_4(v9);
  v1[25] = v10;
  v1[26] = OUTLINED_FUNCTION_23_0();
  v11 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2315BA678()
{
  OUTLINED_FUNCTION_15();
  sub_2315DCB58(0x61626C6C61467369, 0xEA00000000006B63, *(v0 + 144), (v0 + 56));
  if (*(v0 + 80))
  {
    if (swift_dynamicCast() && (*(v0 + 248) & 1) != 0)
    {
      v1 = 0xEE00707041646574;
      v2 = 0x726F707075736E75;
      goto LABEL_12;
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 56, &unk_27DD605F0, qword_231609310);
  }

  v3 = *(*(v0 + 160) + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_isSmartSnippet);
  v1 = 0xEB00000000736E6FLL;
  v4 = v3 == 1;
  if (v3 == 1)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v2 = 0x6974736567677573;
  }

  if (v4)
  {
    v1 = 0x800000023160A460;
  }

LABEL_12:
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;
  sub_2316056D8();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_2316056E8();
  v5 = swift_task_alloc();
  *(v0 + 232) = v5;
  *v5 = v0;
  v5[1] = sub_2315BA83C;
  v6 = OUTLINED_FUNCTION_29_0(*(v0 + 120));

  return MEMORY[0x2821B8048](v6);
}

uint64_t sub_2315BA83C()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v5 = v4;
  *(v2 + 240) = v6;

  if (v0)
  {
  }

  v7 = OUTLINED_FUNCTION_26();
  v8(v7);
  sub_2315B2F7C(v2 + 16, &qword_27DD601D0, &qword_231607A98);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

void sub_2315BA9F0()
{
  v2 = [*(v1 + 240) dialog];
  OUTLINED_FUNCTION_28();
  sub_2315BC88C();
  v3 = sub_231606858();

  v4 = 0;
  v23 = sub_2315E9470();
  while (v23 != v4)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x231932F00](v4, v3);
    }

    else
    {
      if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v5 = *(v3 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v7 = [v5 id];
    v8 = sub_231606798();
    v10 = v9;

    *(v1 + 88) = v8;
    *(v1 + 96) = v10;
    *(v1 + 104) = 35;
    *(v1 + 112) = 0xE100000000000000;
    sub_2315BC8D0();
    v11 = sub_2316069B8();

    v12 = *(v11 + 16);
    if (!v12)
    {

LABEL_15:

      goto LABEL_18;
    }

    v14 = *(v1 + 216);
    v13 = *(v1 + 224);
    v15 = (v11 + 16 + 16 * v12);
    v17 = *v15;
    v16 = v15[1];

    if (v17 == v14 && v16 == v13)
    {
    }

    else
    {
      v19 = sub_231606BD8();

      if ((v19 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_231606A78();
    sub_231606AA8();
    sub_231606AB8();
    sub_231606A88();
LABEL_18:
    ++v4;
  }

  v20 = *(v1 + 240);

  v21 = sub_231606848();

  [v20 setDialog_];

  v22 = *(v1 + 8);

  v22(v20);
}

uint64_t sub_2315BACA8()
{
  v28 = v0;
  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280FE9550);
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[15];
  v5 = sub_2316066E8();
  __swift_project_value_buffer(v5, qword_280FE9558);
  (*(v2 + 16))(v1, v4, v3);

  v6 = sub_2316066C8();
  v7 = sub_231606978();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[28];
  if (v8)
  {
    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];
    v25 = v0[17];
    v26 = v0[27];
    v24 = v0[16];
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136315650;
    sub_2315BCA10(&qword_27DD601D8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_231606BC8();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_2315B1574(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2315B1574(v24, v25, &v27);
    *(v13 + 22) = 2080;
    v18 = sub_2315B1574(v26, v9, &v27);

    *(v13 + 24) = v18;
    _os_log_impl(&dword_2315AF000, v6, v7, "Error loading siri help snippet dialog, dir: %s, cat id: %s,  dialogId %s", v13, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  else
  {
    v20 = v0[22];
    v19 = v0[23];
    v21 = v0[21];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_2315BAF6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C8, &qword_231607A90);
  v4 = OUTLINED_FUNCTION_24(v3);
  MEMORY[0x28223BE20](v4);
  v32 = &v32 - v5;
  OUTLINED_FUNCTION_19();
  v6 = sub_231605888();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = sub_231604FF8();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v33 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  (*(v15 + 16))(v19, v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_templatesUrl, v13);
  v20 = *(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_catGlobals);
  if (v20)
  {
    v21 = *(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_catGlobals);
  }

  else
  {
    sub_231605668();
    v21 = sub_231605658();
    v20 = 0;
  }

  v22 = v20;
  v23 = sub_2315B997C(v19, 0xD00000000000002BLL, 0x800000023160A430, a1, v21);

  v24 = *(v15 + 8);
  v24(v19, v13);
  (*(v8 + 104))(v12, *MEMORY[0x277D60500], v6);
  v25 = sub_2315DCB10(v12, v23);
  v27 = v26;

  (*(v8 + 8))(v12, v6);
  if (v27)
  {
    v28 = v32;
    sub_231604FE8();

    if (__swift_getEnumTagSinglePayload(v28, 1, v13) == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_231604FB8();
      v24(v28, v13);
    }

    v30 = v33;
    [v33 setPunchOutUri_];

    v25 = sub_231606988();
  }

  else
  {
  }

  return v25;
}

uint64_t sub_2315BB288()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C8, &qword_231607A90);
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v7 = sub_231606788();
  [v6 setBundleId_];

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_231606A28();
  MEMORY[0x231932CB0](0xD000000000000039, 0x800000023160A3F0);
  MEMORY[0x231932CB0](*(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId), *(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId + 8));
  sub_231604FE8();

  v8 = sub_231604FF8();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) != 1)
  {
    v9 = sub_231604FB8();
    (*(*(v8 - 8) + 8))(v5, v8);
  }

  [v6 setPunchOutUri_];

  v10 = sub_231606988();
  return v10;
}

uint64_t sub_2315BB458(uint64_t a1, char a2, char a3, char a4)
{
  if (a3 & 1) != 0 && (a2 & 1) != 0 && (a4)
  {
    return sub_2315BB288();
  }

  else
  {
    return sub_2315BAF6C(a1);
  }
}

uint64_t sub_2315BB46C()
{
  OUTLINED_FUNCTION_8();
  v1[51] = v2;
  v1[52] = v0;
  v1[49] = v3;
  v1[50] = v4;
  v5 = sub_231605A48();
  v1[53] = v5;
  OUTLINED_FUNCTION_4(v5);
  v1[54] = v6;
  v1[55] = OUTLINED_FUNCTION_23_0();
  v7 = sub_231604FF8();
  v1[56] = v7;
  OUTLINED_FUNCTION_4(v7);
  v1[57] = v8;
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v9 = sub_2316059C8();
  v1[60] = v9;
  OUTLINED_FUNCTION_4(v9);
  v1[61] = v10;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2315BB5D4()
{
  v1 = *(v0 + 416);
  v50 = *(*(v0 + 488) + 16);
  v50(*(v0 + 504), *(v0 + 400), *(v0 + 480));
  v2 = sub_231605928();
  v3 = *(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_isSmartSnippet);
  if (v3 == 1)
  {
    v4 = *(v0 + 416);
    if (sub_2316058F8() == *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId) && v5 == *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId + 8))
    {
    }

    else
    {
      v7 = sub_231606BD8();

      if ((v7 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v8 = sub_2315CD0A0(0x656D614E707061, 0xE700000000000000);
    if (v9)
    {
      v10 = v8;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C0, &qword_231608FD0);
      sub_231606AC8();

      sub_2315BC87C((*(v2 + 56) + 32 * v10), (v0 + 344));
      sub_231606AE8();
    }

    else
    {
      *(v0 + 344) = 0u;
      *(v0 + 360) = 0u;
    }

    sub_2315B2F7C(v0 + 344, &unk_27DD605F0, qword_231609310);
LABEL_13:
    sub_2315DCB58(0xD000000000000010, 0x800000023160A3D0, v2, (v0 + 248));
    if (*(v0 + 272))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B8, &unk_231607A80);
      if (swift_dynamicCast())
      {
        v12 = sub_2315DE2D0(3, *(v0 + 384));
        v14 = v13;
        v16 = v15;
        v18 = v17;
        if (v17)
        {
          sub_231606BE8();
          swift_unknownObjectRetain_n();
          v21 = swift_dynamicCastClass();
          if (!v21)
          {
            swift_unknownObjectRelease();
            v21 = MEMORY[0x277D84F90];
          }

          v22 = *(v21 + 16);

          if (__OFSUB__(v18 >> 1, v16))
          {
            __break(1u);
          }

          else if (v22 == (v18 >> 1) - v16)
          {
            v20 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v20)
            {
LABEL_25:
              *(v0 + 304) = v11;
              *(v0 + 280) = v20;
              sub_2315BC87C((v0 + 280), (v0 + 312));
              swift_isUniquelyReferenced_nonNull_native();
              sub_2315DBD48((v0 + 312), 0xD000000000000010, 0x800000023160A3D0);
              goto LABEL_26;
            }

            v20 = MEMORY[0x277D84F90];
LABEL_24:
            swift_unknownObjectRelease();
            goto LABEL_25;
          }

          swift_unknownObjectRelease();
        }

        sub_2315F0A8C(v12, v14, v16, v18);
        v20 = v19;
        goto LABEL_24;
      }
    }

    else
    {
      sub_2315B2F7C(v0 + 248, &unk_27DD605F0, qword_231609310);
    }

LABEL_26:
    LOBYTE(v3) = 1;
  }

  *(v0 + 512) = v2;
  sub_2315DCB58(0xD000000000000012, 0x800000023160A380, v2, (v0 + 216));
  v51 = v2;
  if (*(v0 + 240))
  {
    if (swift_dynamicCast())
    {
      v23 = *(v0 + 584);
      goto LABEL_32;
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 216, &unk_27DD605F0, qword_231609310);
  }

  v23 = 0;
LABEL_32:
  v24 = *(v0 + 472);
  v26 = *(v0 + 448);
  v25 = *(v0 + 456);
  v27 = *(v0 + 416);
  v28 = sub_231605938();
  sub_2315BB458(v51, v3, v28 & 1, v23);
  sub_231605968();
  v47 = OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_templatesUrl;
  v48 = *(v25 + 16);
  v48(v24, v27 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_templatesUrl, v26);
  v49 = v27;
  v29 = *(v27 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_catGlobals);
  if (v29)
  {
    v30 = *(v27 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_catGlobals);
    v31 = v30;
  }

  else
  {
    sub_231605668();
    v31 = sub_231605658();
    v30 = 0;
  }

  v32 = *(v0 + 496);
  v33 = *(v0 + 472);
  v43 = *(v0 + 480);
  v44 = *(v0 + 504);
  v34 = *(v0 + 456);
  v36 = *(v0 + 440);
  v35 = *(v0 + 448);
  v37 = *(v0 + 432);
  v45 = *(v0 + 424);
  v46 = *(v0 + 464);
  v42 = v30;
  sub_2315B997C(v33, 0xD000000000000021, 0x800000023160A3A0, v51, v31);

  v38 = *(v34 + 8);
  *(v0 + 520) = v38;
  *(v0 + 528) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v33, v35);
  v50(v32, v44, v43);
  sub_231605A38();
  (*(v37 + 104))(v36, *MEMORY[0x277D60548], v45);
  v48(v46, v49 + v47, v35);
  if (v29)
  {
    v39 = v42;
  }

  else
  {
    sub_231605668();
    v39 = sub_231605658();
  }

  *(v0 + 536) = v39;
  v40 = swift_task_alloc();
  *(v0 + 544) = v40;
  *v40 = v0;
  v40[1] = sub_2315BBBFC;
  OUTLINED_FUNCTION_29_0(*(v0 + 464));

  return sub_2315BA580();
}

uint64_t sub_2315BBBFC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v4 = v3[67];
  v5 = v3[65];
  v6 = v3[58];
  v7 = v3[56];
  v8 = *v0;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  *(v11 + 552) = v10;

  v5(v6, v7);
  v12 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v12);
}

void sub_2315BBD68()
{
  v1 = v0[69];
  if (v1)
  {
    v3 = v0[54];
    v2 = v0[55];
    v4 = v0[53];
    v5 = sub_231605218();
    OUTLINED_FUNCTION_32(v5);
    v0[70] = sub_231605208();
    v0[15] = v4;
    v0[16] = sub_2315BCA10(&qword_27DD601A8, MEMORY[0x277D60550], MEMORY[0x277D60540]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    (*(v3 + 16))(boxed_opaque_existential_1, v2, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B0, &unk_2316083F0);
    v7 = swift_allocObject();
    v0[71] = v7;
    *(v7 + 16) = xmmword_231607860;
    *(v7 + 32) = v1;
    v8 = v1;
    v9 = swift_task_alloc();
    v0[72] = v9;
    *v9 = v0;
    v9[1] = sub_2315BC030;
    OUTLINED_FUNCTION_31();

    __asm { BR              X4 }
  }

  v24 = v0[63];
  v12 = v0[60];
  v13 = v0[61];
  v14 = v0[54];
  v15 = v0[55];
  v16 = v0[53];
  v17 = v0[49];
  sub_2315B4568(v0[52] + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_outputPublisher, (v0 + 2));
  v18 = sub_2316050E8();
  OUTLINED_FUNCTION_32(v18);
  v0[47] = sub_2316050D8();
  v19 = sub_231605118();

  v20 = sub_2316050F8();
  v21 = MEMORY[0x277D5B770];
  v17[3] = v20;
  v17[4] = v21;
  *v17 = v19;
  (*(v14 + 8))(v15, v16);
  (*(v13 + 8))(v24, v12);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2315BC030()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

void sub_2315BC158()
{
  v1 = *(v0 + 552);
  v14 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 424);
  v7 = *(v0 + 392);
  sub_2315B4568(*(v0 + 416) + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_outputPublisher, v0 + 136);
  sub_2315B4568(v0 + 56, v0 + 176);
  v8 = swift_allocObject();
  sub_2315B4648((v0 + 176), v8 + 16);
  v9 = sub_2316050E8();
  OUTLINED_FUNCTION_32(v9);
  v10 = sub_2316050D8();
  v11 = MEMORY[0x277D5B3F0];
  v7[3] = v9;
  v7[4] = v11;

  *v7 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v14, v2);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2315BC300()
{
  OUTLINED_FUNCTION_8();
  sub_2316051A8();
  sub_231605198();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_2315BC368(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2315BC388, 0, 0);
}

uint64_t sub_2315BC388()
{
  OUTLINED_FUNCTION_8();
  sub_2315B4568(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_2315BC3E0()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_templatesUrl;
  sub_231604FF8();
  OUTLINED_FUNCTION_5_1();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_outputPublisher));

  return v0;
}

uint64_t sub_2315BC484(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2315BC508(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2315BC540(uint64_t a1)
{
  result = sub_231604FF8();
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

uint64_t sub_2315BC5F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315BC6AC;

  return sub_2315BB46C();
}

uint64_t sub_2315BC6AC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
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

uint64_t sub_2315BC7EC()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12(v3);
  *v4 = v5;
  v4[1] = sub_2315B4740;

  return sub_2315BC368(v2, v0 + 16);
}

_OWORD *sub_2315BC87C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2315BC88C()
{
  result = qword_27DD601E0;
  if (!qword_27DD601E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD601E0);
  }

  return result;
}

unint64_t sub_2315BC8D0()
{
  result = qword_280FE85E0;
  if (!qword_280FE85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85E0);
  }

  return result;
}

uint64_t sub_2315BC924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601F0, &qword_231607AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315BC9B4(uint64_t a1)
{
  v2 = type metadata accessor for PatternExecution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315BCA10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NoOpFlow.execute(completion:)(void (*a1)(char *))
{
  v2 = sub_2316051F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DD60100 != -1)
  {
    swift_once();
  }

  v6 = sub_2316066E8();
  __swift_project_value_buffer(v6, qword_27DD603F8);
  v7 = sub_2316066C8();
  v8 = sub_231606978();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2315AF000, v7, v8, "This method should never be called.", v9, 2u);
    MEMORY[0x231933730](v9, -1, -1);
  }

  sub_2316051E8();
  a1(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2315BCC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2315BCD10;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2315BCD10(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2315BCE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2315B66C8;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2315BCEE0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2315BCF7C()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_2316061C8();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = sub_231606158();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315BD0D0, 0, 0);
}

uint64_t sub_2315BD0D0()
{
  if (qword_280FE9550 != -1)
  {
    swift_once();
  }

  v1 = sub_2316066E8();
  __swift_project_value_buffer(v1, qword_280FE9558);
  v2 = sub_2316066C8();
  v3 = sub_231606958();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2315AF000, v2, v3, "Submiting suggestion to event dispatcher", v4, 2u);
    MEMORY[0x231933730](v4, -1, -1);
  }

  v5 = v0[16];

  sub_231605C48();
  v6 = sub_231605098();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2315BE86C(v0[16]);
    v7 = sub_2316066C8();
    v8 = sub_231606978();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2315AF000, v7, v8, "No requestId set. Unable to dispatch suggestions", v9, 2u);
      MEMORY[0x231933730](v9, -1, -1);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[16];
    v13 = v0[14];
    v30 = v0[15];
    v31 = v0[13];
    v15 = v0[11];
    v14 = v0[12];
    v17 = v0[9];
    v16 = v0[10];
    v32 = v0[7];
    v29 = sub_231605068();
    v19 = v18;
    (*(*(v6 - 8) + 8))(v12, v6);
    sub_231605F38();
    sub_2316061A8();
    (*(v15 + 8))(v14, v16);
    MEMORY[0x231932CB0](v29, v19);

    sub_231606198();
    (*(v13 + 104))(v30, *MEMORY[0x277D60B90], v31);
    v20 = v17[5];
    v21 = v17[6];
    __swift_project_boxed_opaque_existential_1(v17 + 2, v20);
    v22 = type metadata accessor for PreFetchedSuggestionEvent(0);
    v0[5] = v22;
    v0[6] = sub_2315BE8D4(&qword_27DD60270, type metadata accessor for PreFetchedSuggestionEvent, &protocol conformance descriptor for PreFetchedSuggestionEvent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(v13 + 16))(boxed_opaque_existential_1, v30, v31);
    __swift_project_boxed_opaque_existential_1(v17 + 7, v17[10]);
    sub_2316063E8();
    v25 = v24;
    v26 = *(v22 + 24);
    sub_231605E98();
    OUTLINED_FUNCTION_5_1();
    (*(v27 + 16))(boxed_opaque_existential_1 + v26, v32);
    *(boxed_opaque_existential_1 + *(v22 + 20)) = v25;
    v28 = swift_task_alloc();
    v0[17] = v28;
    *v28 = v0;
    v28[1] = sub_2315BD550;

    return MEMORY[0x2821C6B50](v0 + 2, v20, v21);
  }
}

uint64_t sub_2315BD550()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_2315BD650, 0, 0);
}

uint64_t sub_2315BD650()
{
  OUTLINED_FUNCTION_8();
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2315BD6DC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2315BD71C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315BD7C4;

  return sub_2315BCF7C();
}

uint64_t sub_2315BD7C4()
{
  OUTLINED_FUNCTION_8();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PreFetchedSuggestionEvent.deliveryVehicle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_231606158();
  OUTLINED_FUNCTION_5_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t type metadata accessor for PreFetchedSuggestionEvent(uint64_t a1)
{
  result = qword_280FE8CA8;
  if (!qword_280FE8CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreFetchedSuggestionEvent.preFetchedSuggestions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreFetchedSuggestionEvent(0) + 24);
  sub_231605E98();
  OUTLINED_FUNCTION_5_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_2315BD9F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726576696C6564 && a2 == 0xEF656C6369686556;
  if (v4 || (sub_231606BD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766965636572 && a2 == 0xEA00000000005354;
    if (v6 || (sub_231606BD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000023160A570 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_231606BD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2315BDB60(unsigned __int8 a1)
{
  sub_231606C68();
  MEMORY[0x231933130](a1);
  return sub_231606C88();
}

uint64_t sub_2315BDBB4(char a1)
{
  if (!a1)
  {
    return 0x79726576696C6564;
  }

  if (a1 == 1)
  {
    return 0x6465766965636572;
  }

  return 0xD000000000000015;
}

uint64_t sub_2315BDC3C(uint64_t a1)
{
  v2 = *v1;
  sub_231606C68();
  MEMORY[0x231933130](v2);
  return sub_231606C88();
}

uint64_t sub_2315BDC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2315BD9F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2315BDCD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2315BDB20();
  *a1 = result;
  return result;
}

uint64_t sub_2315BDCF8(uint64_t a1)
{
  v2 = sub_2315BDF54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2315BDD34(uint64_t a1)
{
  v2 = sub_2315BDF54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreFetchedSuggestionEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60210, &qword_231607B60);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-v9 - 3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2315BDF54();
  sub_231606CA8();
  v20 = 0;
  sub_231606158();
  OUTLINED_FUNCTION_2_1();
  sub_2315BE8D4(v11, v12, MEMORY[0x277D60BB0]);
  OUTLINED_FUNCTION_7_2(v3, &v20);
  if (!v2)
  {
    v13 = type metadata accessor for PreFetchedSuggestionEvent(0);
    v19[1] = 1;
    sub_231606B88();
    v14 = *(v13 + 24);
    v19[0] = 2;
    sub_231605E98();
    OUTLINED_FUNCTION_1_1();
    sub_2315BE8D4(v15, v16, MEMORY[0x277D60710]);
    OUTLINED_FUNCTION_7_2(v3 + v14, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2315BDF54()
{
  result = qword_27DD60218;
  if (!qword_27DD60218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60218);
  }

  return result;
}

uint64_t PreFetchedSuggestionEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = sub_231605E98();
  OUTLINED_FUNCTION_1_0();
  v25 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  sub_231606158();
  OUTLINED_FUNCTION_1_0();
  v28 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60228, &qword_231607B68);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for PreFetchedSuggestionEvent(0);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2315BDF54();
  sub_231606C98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  OUTLINED_FUNCTION_2_1();
  sub_2315BE8D4(v17, v18, MEMORY[0x277D60BD0]);
  sub_231606B78();
  (*(v28 + 32))();
  sub_231606B68();
  *(v16 + *(v12 + 20)) = v19;
  OUTLINED_FUNCTION_1_1();
  sub_2315BE8D4(v20, v21, MEMORY[0x277D60718]);
  sub_231606B78();
  v22 = OUTLINED_FUNCTION_3_1();
  v23(v22);
  (*(v25 + 32))(v16 + *(v12 + 24), v8, v27);
  sub_2315BE38C(v16, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_2315BE3F0(v16);
}

uint64_t sub_2315BE38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreFetchedSuggestionEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315BE3F0(uint64_t a1)
{
  v2 = type metadata accessor for PreFetchedSuggestionEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315BE560(uint64_t a1)
{
  result = sub_231606158();
  if (v2 <= 0x3F)
  {
    result = sub_231605E98();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreFetchedSuggestionEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreFetchedSuggestionEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2315BE768()
{
  result = qword_27DD60250;
  if (!qword_27DD60250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60250);
  }

  return result;
}

unint64_t sub_2315BE7C0()
{
  result = qword_27DD60258;
  if (!qword_27DD60258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60258);
  }

  return result;
}

unint64_t sub_2315BE818()
{
  result = qword_27DD60260;
  if (!qword_27DD60260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60260);
  }

  return result;
}

uint64_t sub_2315BE86C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315BE8D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2315BE91C()
{
  OUTLINED_FUNCTION_8();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_231605E28();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = OUTLINED_FUNCTION_23_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  v1[8] = OUTLINED_FUNCTION_23_0();
  sub_231606128();
  v1[9] = OUTLINED_FUNCTION_23_0();
  v5 = sub_231605C58();
  v1[10] = v5;
  v1[11] = *(v5 - 8);
  v1[12] = OUTLINED_FUNCTION_23_0();
  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315BEA74()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_2(v2[4]);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v2[13] = v3;
  *v3 = v4;
  v3[1] = sub_2315BEB1C;
  v5 = v2[2];
  v6 = v2[3];

  return MEMORY[0x2821C5C98](v5, v6, v0, v1);
}

uint64_t sub_2315BEB1C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315BEC00()
{
  OUTLINED_FUNCTION_15();
  sub_231605DE8();
  sub_231605E18();
  sub_231605058();

  sub_231605C18();
  if (qword_280FE9550 != -1)
  {
    swift_once();
  }

  v1 = sub_2316066E8();
  v0[14] = __swift_project_value_buffer(v1, qword_280FE9558);
  v2 = sub_2316066C8();
  v3 = sub_231606958();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2315AF000, v2, v3, "dispatching to sirisuggestion dispatcher", v4, 2u);
    OUTLINED_FUNCTION_20();
  }

  v5 = v0[4];

  __swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80));
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_2315BEDAC;
  v7 = OUTLINED_FUNCTION_10_0(v0[2]);

  return MEMORY[0x2821C5F58](v7);
}

uint64_t sub_2315BEDAC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *(v4 + 128) = v0;

  if (v0)
  {
    v5 = sub_2315BEF48;
  }

  else
  {
    v5 = sub_2315BEEB0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2315BEEB0()
{
  OUTLINED_FUNCTION_15();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315BEF48()
{
  v29 = v0;
  v1 = v0[16];
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  v2 = v1;
  v3 = sub_2316066C8();
  v4 = sub_231606978();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];
  if (v5)
  {
    v23 = v0[16];
    v13 = swift_slowAlloc();
    v24 = v4;
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v13 = 136315394;
    v26 = v9;
    v27 = v7;
    v15 = sub_231605E18();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2315B1574(v15, v17, &v28);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v23;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_2315AF000, v3, v24, "Unable to dispatch suggestions for event: %s: %@", v13, 0x16u);
    sub_2315C1500(v14);
    OUTLINED_FUNCTION_20();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();

    (*(v8 + 8))(v27, v26);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
  }

  OUTLINED_FUNCTION_14();

  return v21();
}

uint64_t sub_2315BF1A8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315BF288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_1(sub_2315BF2A8, 0);
}

uint64_t sub_2315BF2A8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_2(*(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2315BF350;
  v2 = OUTLINED_FUNCTION_11_0();

  return MEMORY[0x2821C5CA8](v2);
}

uint64_t sub_2315BF350()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315BF44C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_2(*(v0 + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_2(v2);

  return MEMORY[0x2821C5C90](v4);
}

uint64_t sub_2315BF4E0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_0();

  return v4(v3);
}

uint64_t sub_2315BF5C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4660;

  return sub_2315BE91C();
}

uint64_t sub_2315BF674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2315B4740;

  return sub_2315BF288(a1, a2, a3);
}

uint64_t sub_2315BF724()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315BF7B4;

  return sub_2315BF430();
}

uint64_t sub_2315BF7B4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_0();

  return v4(v3);
}

uint64_t DispatchSuggestionServiceFactory.create(refreshableService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_0_1(sub_2315BF8B8, 0);
}

uint64_t sub_2315BF8B8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_2(v2[15]);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v2[16] = v3;
  *v3 = v4;
  v3[1] = sub_2315BF964;
  v5 = v2[13];
  v6 = v2[14];

  return MEMORY[0x2821C5CC8](v2 + 2, v5, v6, v0, v1);
}

uint64_t sub_2315BF964()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315BFA48()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 96);
  sub_2315B4568(*(v1 + 120) + 56, v1 + 56);
  type metadata accessor for DispatcherSuggestionService();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_19_0(v3);
  OUTLINED_FUNCTION_9_0();
  v2[4] = sub_2315B4888(v4, v5, &unk_2316081D0);
  *v2 = v0;
  OUTLINED_FUNCTION_14();

  return v6();
}

uint64_t DispatchSuggestionServiceFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t sub_2315BFB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2315B4740;

  return DispatchSuggestionServiceFactory.create(refreshableService:)(a1, a2, a3);
}

uint64_t sub_2315BFBF0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_12_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_2(v1);

  return MEMORY[0x2821C7148](v3);
}

uint64_t sub_2315BFC94()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 40) = v5;

  return MEMORY[0x2822009F8](sub_2315BFD9C, v2, 0);
}

uint64_t sub_2315BFDD0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_2(v1);

  return MEMORY[0x2821C72A0](v3);
}

uint64_t DispatchedServiceAPIProvider.getSystemEnvironmentService()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_1(sub_2315BFE84, v1);
}

uint64_t sub_2315BFE84()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_12_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_2315BFF34;
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821C5CE0](v3);
}

uint64_t sub_2315BFF34()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t DispatchedServiceAPIProvider.__allocating_init(provider:dispatcher:)()
{
  OUTLINED_FUNCTION_20_0();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = v2;
  *(v3 + 120) = v1;
  sub_2315B4648(v0, v3 + 128);
  return v3;
}

uint64_t DispatchedServiceAPIProvider.init(provider:dispatcher:)()
{
  OUTLINED_FUNCTION_20_0();
  swift_defaultActor_initialize();
  *(v1 + 112) = v3;
  *(v1 + 120) = v2;
  sub_2315B4648(v0, v1 + 128);
  return v1;
}

uint64_t DispatchedServiceAPIProvider.getEntity<A>(entityType:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1(sub_2315C00C4, v2);
}

uint64_t sub_2315C00C4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7_3();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2315C0168;
  v2 = OUTLINED_FUNCTION_10_0(*(v0 + 16));

  return MEMORY[0x2821C72A8](v2);
}

uint64_t sub_2315C0168()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_0();

  return v4(v3);
}

uint64_t DispatchedServiceAPIProvider.addToLifeCycle(owner:localEntities:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1(sub_2315C026C, v2);
}

uint64_t sub_2315C026C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7_3();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2315BFF34;
  v2 = OUTLINED_FUNCTION_10_0(*(v0 + 16));

  return MEMORY[0x2821C7280](v2);
}

uint64_t DispatchedServiceAPIProvider.refresh(owner:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(sub_2315C032C, v1);
}

uint64_t sub_2315C032C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v1[1] = sub_2315C156C;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821C5C88]();
}

uint64_t DispatchedServiceAPIProvider.destroy(owner:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(sub_2315C03EC, v1);
}

uint64_t sub_2315C03EC()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v1[1] = sub_2315C048C;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821C7298]();
}

uint64_t sub_2315C048C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315C0588()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_12_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_2(v1);

  return MEMORY[0x2821C67F0](v3);
}

uint64_t sub_2315C0648()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_2(v1);

  return MEMORY[0x2821C6518](v3);
}

uint64_t sub_2315C06E8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315C07E4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_2(v1);

  return MEMORY[0x2821C7290](v3);
}

uint64_t DispatchedServiceAPIProvider.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DispatchedServiceAPIProvider.__deallocating_deinit()
{
  DispatchedServiceAPIProvider.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2315C0A44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.refresh(owner:)(a1);
}

uint64_t sub_2315C0BB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315C1574;

  return DispatchedServiceAPIProvider.entities.getter();
}

uint64_t sub_2315C0C3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.addToLifeCycle(owner:localEntities:)(a1, a2);
}

uint64_t sub_2315C0CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2315B4740;

  return MEMORY[0x2821C72B0](a1, a2, v11, a3, a5);
}

uint64_t sub_2315C0DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2315B4740;

  return MEMORY[0x2821C72C0](a1, a2, a3, v11, a5);
}

uint64_t sub_2315C0EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2315B4740;

  return MEMORY[0x2821C72B8](a1, v7, a3);
}

uint64_t sub_2315C0F8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315C1574;

  return DispatchedServiceAPIProvider.getEntity<A>(entityType:)(a1, a2);
}

uint64_t sub_2315C1030(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.destroy(owner:)(a1);
}

uint64_t sub_2315C10C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315C1574;

  return DispatchedServiceAPIProvider.getAllOwners()();
}

uint64_t sub_2315C1150()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.refreshAsync()();
}

uint64_t sub_2315C1208(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.getSystemEnvironmentService()(a1);
}

uint64_t sub_2315C12A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315C1574;

  return DispatchedServiceAPIProvider.allEntities.getter();
}

uint64_t sub_2315C1334()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.destroy()();
}

uint64_t sub_2315C142C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2315C148C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2315C1500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60278, &unk_231608238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315C15B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ExecutionDispatcher();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[3] = v4;
  a2[4] = sub_2315C169C();
  *a2 = v5;
}

uint64_t sub_2315C1638(uint64_t *a1, uint64_t a2)
{
  sub_2315C15B0(a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

unint64_t sub_2315C169C()
{
  result = qword_27DD60280;
  if (!qword_27DD60280)
  {
    type metadata accessor for ExecutionDispatcher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60280);
  }

  return result;
}

uint64_t sub_2315C1768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_2315C1784()
{
  v40 = v0;
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v1 = sub_2316066E8();
  __swift_project_value_buffer(v1, qword_280FE9630);

  v2 = sub_2316066C8();
  v3 = sub_231606968();

  v4 = os_log_type_enabled(v2, v3);
  v5 = &loc_231607000;
  v6 = MEMORY[0x277D84F70];
  if (v4)
  {
    v8 = v0[5];
    v7 = v0[6];
    v10 = v0[3];
    v9 = v0[4];
    v11 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = v8;
    v6 = MEMORY[0x277D84F70];
    *(v11 + 4) = sub_2315B1574(v12, v7, &v39);
    *(v11 + 12) = 2080;
    v13 = v9;
    v5 = &loc_231607000;
    *(v11 + 14) = sub_2315B1574(v10, v13, &v39);
    _os_log_impl(&dword_2315AF000, v2, v3, "Retrieving property: %s for requestId: %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  v14 = v0[7];
  v15 = *(v14 + 144);
  if (!v15)
  {
    goto LABEL_11;
  }

  if (*(v14 + 136) == v0[3] && v15 == v0[4])
  {
    v18 = v0[7];
  }

  else
  {
    v17 = sub_231606BD8();
    v18 = v0[7];
    if ((v17 & 1) == 0)
    {
LABEL_11:

      v19 = sub_2316066C8();
      v20 = sub_231606958();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v21 = v5[443];
        if (*(v14 + 144))
        {
          v6 = *(v14 + 136);
          v14 = *(v14 + 144);
        }

        else
        {
          OUTLINED_FUNCTION_11_1();
        }

        v31 = v0[3];
        v30 = v0[4];

        v32 = sub_2315B1574(v6, v14, &v39);

        *(v21 + 4) = v32;
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_2315B1574(v31, v30, &v39);
        OUTLINED_FUNCTION_12_1(&dword_2315AF000, v33, v34, "[warning] Current state store request id %s != %s. Properties not in state store ");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_20();
      }

      v35 = v0[2];
      v35[1] = 0u;
      v35[2] = 0u;
      *v35 = 0u;
      OUTLINED_FUNCTION_14();

      return v36();
    }
  }

  v22 = *(v18 + 128);
  swift_getObjectType();
  v37 = (OUTLINED_FUNCTION_9_1() + 16);
  v38 = (*v37 + **v37);
  v23 = swift_task_alloc();
  v0[8] = v23;
  *v23 = v0;
  v23[1] = sub_2315C1BA0;
  v24 = v0[5];
  v25 = v0[6];
  v26 = v0[3];
  v27 = v0[4];
  v28 = v0[2];

  return v38(v28, v26, v27, v24, v25, v18, v22);
}

uint64_t sub_2315C1BA0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315C1C80()
{
  v22 = v0;
  v2 = v0[4];
  v3 = *(v2 + 144);
  if (v3 && ((v4 = *(v2 + 136), v4 == v0[2]) ? (v5 = v3 == v0[3]) : (v5 = 0), v5 || (sub_231606BD8() & 1) != 0))
  {
    OUTLINED_FUNCTION_14();
    v20 = v6;

    return v20(v4, v3);
  }

  else
  {
    if (qword_280FE9628 != -1)
    {
      OUTLINED_FUNCTION_4_1(&qword_280FE9628);
    }

    v8 = sub_2316066E8();
    __swift_project_value_buffer(v8, qword_280FE9630);

    v9 = sub_2316066C8();
    v10 = sub_231606958();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v11 = 136315394;
      if (*(v2 + 144))
      {
        v1 = *(v2 + 136);
        v2 = *(v2 + 144);
      }

      else
      {
        OUTLINED_FUNCTION_11_1();
      }

      v13 = v0[2];
      v12 = v0[3];

      v14 = sub_2315B1574(v1, v2, &v21);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_2315B1574(v13, v12, &v21);
      OUTLINED_FUNCTION_12_1(&dword_2315AF000, v15, v16, "Request ids (%s != %s dont match. Clearing store");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    v17 = swift_task_alloc();
    v0[5] = v17;
    *v17 = v0;
    v17[1] = sub_2315C1F08;
    v18 = v0[3];
    v19 = v0[2];

    return sub_2315C2098(v19, v18);
  }
}

uint64_t sub_2315C1F08()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_2315C2008, v2, 0);
}

uint64_t sub_2315C2008()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[3];
  v1 = v0[4];
  *(v1 + 136) = v0[2];
  *(v1 + 144) = v2;

  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_14();
  v7 = v5;

  return v7(v4, v3);
}

uint64_t sub_2315C2098(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_2315C20B0()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 32);
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;

  swift_getObjectType();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_7_4(v2);

  return v4(v3);
}

uint64_t sub_2315C21C4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;

  return MEMORY[0x2822009F8](sub_2315C22CC, v2, 0);
}

uint64_t sub_2315C22CC()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v1[5] + 120);
  swift_getObjectType();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5();
  v11 = (v3 + *v3);
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_2315C23F0;
  v5 = v1[8];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[2];
  v9 = v1[7];

  return v11(v9, v5, v8, v6, v7, v0, v2);
}

uint64_t sub_2315C23F0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315C24EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_2315C2504()
{
  OUTLINED_FUNCTION_21();
  swift_getObjectType();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_7_4(v1);

  return v3(v2);
}

uint64_t sub_2315C260C()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2315C26F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_2315C2714()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v1[6] + 128);
  swift_getObjectType();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5();
  v10 = (v3 + *v3);
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_2315BF1A8;
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  return v10(v8, v7, v5, v6, v0, v2);
}

uint64_t sub_2315C2838()
{
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2315C2868()
{
  sub_2315C2838();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2315C28E0()
{
  result = qword_280FE88D8[0];
  if (!qword_280FE88D8[0])
  {
    type metadata accessor for TurnProtectedHintsStateStore();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FE88D8);
  }

  return result;
}

uint64_t sub_2315C2934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2315B4740;

  return sub_2315C1768(a1, a2, a3, a4, a5);
}

uint64_t sub_2315C29FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315B4740;

  return sub_2315C2098(a1, a2);
}

uint64_t sub_2315C2AA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315C2B44;

  return sub_2315C24EC(a1, a2);
}

uint64_t sub_2315C2B44()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2315C2C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315B4740;

  return sub_2315C26F8(a1, a2, a3, a4);
}

uint64_t ExecutionDispatcher.__allocating_init(aceSink:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ExecutionDispatcher.dispatch(suggestion:presentationContext:)()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_231605EF8();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_231606228();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315C2E48, 0, 0);
}

uint64_t sub_2315C2E48()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  type metadata accessor for InvocationContextHolder();
  sub_231605D68();
  v4 = sub_231605EC8();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  sub_2315C336C(v4, v6);

  sub_231605DB8();
  if (v0[5])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v7 = sub_2316061D8();
    v0[16] = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B0, &unk_2316083F0);
    v8 = swift_allocObject();
    v0[17] = v8;
    *(v8 + 16) = xmmword_231607860;
    *(v8 + 32) = v7;
    v0[7] = v8;
    v9 = v7;
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_2315C3108;

    return MEMORY[0x2821C61E8](v0 + 7);
  }

  else
  {
    sub_2315C3400((v0 + 2));
    if (qword_280FE9550 != -1)
    {
      swift_once();
    }

    v11 = sub_2316066E8();
    __swift_project_value_buffer(v11, qword_280FE9558);
    v12 = sub_2316066C8();
    v13 = sub_231606978();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2315AF000, v12, v13, "Could not get invocation command from suggestion", v14, 2u);
      MEMORY[0x231933730](v14, -1, -1);
    }

    v15 = OUTLINED_FUNCTION_1_2();
    v16(v15);

    OUTLINED_FUNCTION_14();

    return v17();
  }
}

uint64_t sub_2315C3108()
{
  OUTLINED_FUNCTION_8();
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2315C32B0;
  }

  else
  {
    v2 = sub_2315C3234;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2315C3234()
{
  OUTLINED_FUNCTION_8();

  v1 = OUTLINED_FUNCTION_1_2();
  v2(v1);

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315C32B0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_14();

  return v4();
}

uint64_t sub_2315C336C(uint64_t a1, uint64_t a2)
{
  sub_231605328();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_231605168();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);

  return sub_231606218();
}

uint64_t sub_2315C3400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60288, &qword_231609100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExecutionDispatcher.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2315C34C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315C3558;

  return ExecutionDispatcher.dispatch(suggestion:presentationContext:)();
}

uint64_t sub_2315C3558()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_2315C3644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = sub_2315C37B8(&qword_27DD60290, &protocol conformance descriptor for ExecutionDispatcher);
  *v7 = v3;
  v7[1] = sub_2315C37F8;

  return MEMORY[0x2821C61C0](a1, a2, a3, v8);
}

uint64_t sub_2315C37B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExecutionDispatcher();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SiriHelpSuggestionsDispatcherFactory.__allocating_init(logger:templateUrl:siriHelpDispatcherProvider:appUtils:suggestionsLogger:outputPublisher:patternFlowProvider:catGlobals:patternExecutor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7, __int128 *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_7_5();
  SiriHelpSuggestionsDispatcherFactory.init(logger:templateUrl:siriHelpDispatcherProvider:appUtils:suggestionsLogger:outputPublisher:patternFlowProvider:catGlobals:patternExecutor:)(v15, v16, v17, v18, v19, a6, a7, a8, a9, a10, a11);
  return v14;
}

void *SiriHelpSuggestionsDispatcherFactory.init(logger:templateUrl:siriHelpDispatcherProvider:appUtils:suggestionsLogger:outputPublisher:patternFlowProvider:catGlobals:patternExecutor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, __int128 *a7, __int128 *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v34 = a7;
  v36 = a5;
  v35 = a2;
  v39 = a11;
  v38 = a10;
  v37 = a9;
  sub_231604FF8();
  OUTLINED_FUNCTION_5_2();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v23 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = a1;
  if (a3)
  {
    v24 = swift_allocObject();
    *(v24 + 2) = a3;
    *(v24 + 3) = a4;
    sub_2315C4108(v38, v39);

    __swift_destroy_boxed_opaque_existential_1Tm(a8);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    __swift_destroy_boxed_opaque_existential_1Tm(a6);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    (*(v19 + 8))(v35, v11);
    v25 = &unk_231608518;
  }

  else
  {
    sub_2315B4648(a8, v43);
    sub_2315B4648(a6, v42);
    sub_2315B4648(v34, v41);
    v26 = *(v19 + 32);
    v26(&v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v11);
    sub_2315B4648(v36, v40);
    v27 = (*(v19 + 80) + 160) & ~*(v19 + 80);
    v28 = (v21 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    sub_2315B4648(v43, (v24 + 16));
    *(v24 + 7) = v37;
    sub_2315B4648(v42, (v24 + 64));
    v29 = v39;
    *(v24 + 13) = v38;
    *(v24 + 14) = v29;
    sub_2315B4648(v41, (v24 + 120));
    v26(&v24[v27], v23, v11);
    sub_2315B4648(v40, &v24[v28]);
    v25 = &unk_2316084F8;
  }

  v30 = v25;
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v24;
  v12[3] = &unk_231608508;
  v12[4] = v31;
  return v12;
}

uint64_t sub_2315C3B60(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2315B4660;

  return v8(a1, v5);
}

uint64_t sub_2315C3C64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v11;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  v9 = *a2;
  v8[10] = v12;
  v8[11] = v9;
  return MEMORY[0x2822009F8](sub_2315C3CA0, 0, 0);
}

uint64_t sub_2315C3CA0()
{
  v1 = v0[10];
  v2 = v0[8];
  v14 = v0[9];
  v15 = v0[11];
  v3 = v0[2];
  v4 = type metadata accessor for SiriHelpDispatcher(0);
  v5 = OUTLINED_FUNCTION_7_5();
  sub_2315DE4AC(v5, v6, v7, v8, v9, v2, v15, v14, v1, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v0, v24);
  v11 = v10;
  v3[3] = v4;
  v3[4] = sub_2315C49B8();
  *v3 = v11;
  OUTLINED_FUNCTION_14();

  return v12();
}

uint64_t sub_2315C3D64(uint64_t a1, uint64_t *a2)
{
  v5 = v3;
  sub_231604FF8();
  v7 = v2[7];
  v8 = v2[13];
  v9 = v2[14];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2315B4740;

  return sub_2315C3C64(a1, a2, (v2 + 2), v7, (v2 + 8), v8, v9, (v2 + 15));
}

uint64_t sub_2315C3EB0(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_2315C06E8;

  return v7(a1, v3 + 16);
}

uint64_t sub_2315C3FB8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_3(v1);

  return v4(v3);
}

uint64_t sub_2315C4064()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_3(v1);

  return v4(v3);
}

uint64_t sub_2315C4108(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t SiriHelpSuggestionsDispatcherFactory.createDispatcher(sink:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_2315C4130()
{
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60298, qword_231608528);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_2316084E0;
  v6 = (*(v1 + 24) + **(v1 + 24));
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_2315C4260;
  v4 = v0[3];

  return v6(v2 + 32, v4);
}

uint64_t sub_2315C4260()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2315C434C, 0, 0);
}

uint64_t sub_2315C434C()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 32) + 16);
  v3 = sub_231605C08();
  v4 = MEMORY[0x277D60678];
  v1[12] = v3;
  v1[13] = v4;
  v1[9] = v2;

  sub_231605A28();

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_2315C4418()
{
}

uint64_t SiriHelpSuggestionsDispatcherFactory.deinit()
{

  return v0;
}

uint64_t SiriHelpSuggestionsDispatcherFactory.__deallocating_deinit()
{
  SiriHelpSuggestionsDispatcherFactory.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2315C44C0()
{
  OUTLINED_FUNCTION_8();
  sub_231605A18();
  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_2315C4538(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 80) + **(**v2 + 80));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2315B4740;

  return v8(a1, a2);
}

uint64_t dispatch thunk of FlowSuggestionsDispatcherFactory.createDispatcher(sink:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(*v2 + 80) + **(*v2 + 80));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12(v5);
  *v6 = v7;
  v6[1] = sub_2315B4740;

  return v9(a1, a2);
}

uint64_t type metadata accessor for PatternExecution(uint64_t a1)
{
  result = qword_27DD602A0;
  if (!qword_27DD602A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2315C48B0(uint64_t a1)
{
  sub_231604FF8();
  if (v1 <= 0x3F)
  {
    sub_2315C4954();
    if (v2 <= 0x3F)
    {
      sub_231605668();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2315C4954()
{
  if (!qword_27DD602B0)
  {
    v0 = sub_231606748();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD602B0);
    }
  }
}

unint64_t sub_2315C49B8()
{
  result = qword_27DD602B8;
  if (!qword_27DD602B8)
  {
    type metadata accessor for SiriHelpDispatcher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD602B8);
  }

  return result;
}

uint64_t sub_2315C4A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60360, &qword_231608808);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v4 = &v44 - v3;
  v55 = sub_231605308();
  v53 = *(v55 - 1);
  MEMORY[0x28223BE20](v55);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60368, &qword_231608810);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v8 = &v44 - v7;
  v50 = sub_231605348();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231605318();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  v18 = *(v11 + 16);
  v51 = a1;
  v18(&v44 - v16, a1, v10);
  v19 = (*(v11 + 88))(v17, v10);
  if (v19 == *MEMORY[0x277D5C150])
  {
    (*(v11 + 96))(v17, v10);
    v20 = v53;
    v21 = v55;
    (*(v53 + 32))(v6, v17, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C0, &qword_231608650);
    sub_2316054B8();
    v22 = v54;
    v23 = sub_2316054C8();
    (*(v52 + 8))(v4, v22);
    v23(v6);
    (*(v20 + 8))(v6, v21);
  }

  if (v19 == *MEMORY[0x277D5C160])
  {
    (*(v11 + 96))(v17, v10);
    v24 = v48;
    v25 = v45;
    v26 = v50;
    (*(v48 + 32))(v45, v17, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C0, &qword_231608650);
    sub_2316054B8();
    v27 = v49;
    v28 = sub_2316054C8();
    (*(v47 + 8))(v8, v27);
    v28(v25);
    (*(v24 + 8))(v25, v26);
  }

  if (qword_280FE9628 != -1)
  {
    swift_once();
  }

  v30 = sub_2316066E8();
  __swift_project_value_buffer(v30, qword_280FE9630);
  v31 = v46;
  v18(v46, v51, v10);
  v32 = sub_2316066C8();
  v33 = sub_231606958();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = v55;
    *v34 = 136315138;
    LODWORD(v54) = v33;
    v18(v44, v31, v10);
    v35 = sub_2316067A8();
    v36 = v31;
    v38 = v37;
    v39 = *(v11 + 8);
    v39(v36, v10);
    v40 = sub_2315B1574(v35, v38, &v57);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_2315AF000, v32, v54, "Directly unsupported parse result: %s", v34, 0xCu);
    v41 = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x231933730](v41, -1, -1);
    MEMORY[0x231933730](v34, -1, -1);
  }

  else
  {

    v39 = *(v11 + 8);
    v39(v31, v10);
  }

  v42 = v56;
  v43 = type metadata accessor for IntentProperties(0);
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
  return (v39)(v17, v10);
}

uint64_t sub_2315C517C(uint64_t (*a1)(void), uint64_t a2)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C0, &qword_231608650);

  return sub_2316054B8();
}

uint64_t sub_2315C51F4@<X0>(unint64_t *a1@<X8>)
{
  v236 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  MEMORY[0x28223BE20](v1 - 8);
  v228 = &v215 - v2;
  v222 = sub_231605468();
  v225 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v219 = &v215 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60328, &qword_2316087C8);
  MEMORY[0x28223BE20](v221);
  v223 = &v215 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60330, &qword_2316087D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v220 = &v215 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v224 = &v215 - v9;
  MEMORY[0x28223BE20](v8);
  v226 = &v215 - v10;
  v234 = sub_231606128();
  v233 = *(v234 - 8);
  v11 = MEMORY[0x28223BE20](v234);
  v227 = &v215 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v232 = &v215 - v13;
  v254 = sub_2316066A8();
  v256 = *(v254 - 8);
  v14 = MEMORY[0x28223BE20](v254);
  v246 = &v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v245 = &v215 - v17;
  MEMORY[0x28223BE20](v16);
  v249 = &v215 - v18;
  v251 = sub_231605408();
  v255 = *(v251 - 8);
  v19 = MEMORY[0x28223BE20](v251);
  v230 = &v215 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v244 = &v215 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v247 = &v215 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v248 = &v215 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v242 = &v215 - v28;
  MEMORY[0x28223BE20](v27);
  v258 = &v215 - v29;
  v252 = sub_2316053C8();
  v253 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v31 = &v215 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_231605368();
  v240 = *(v238 - 8);
  v32 = MEMORY[0x28223BE20](v238);
  v257 = &v215 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v215 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60338, &qword_2316087D8);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v215 - v37;
  v39 = sub_2316053A8();
  v237 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v215 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_231605388();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v215 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605338();
  v46 = sub_231605378();
  (*(v43 + 8))(v45, v42);
  sub_2315DE8C8(v46, v38);

  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    sub_2315B2F7C(v38, &qword_27DD60338, &qword_2316087D8);
    if (qword_27DD60100 != -1)
    {
      goto LABEL_116;
    }

    goto LABEL_3;
  }

  v53 = *(v237 + 32);
  v218 = v39;
  v53(v41, v38, v39);
  v231 = v41;
  sub_231605398();
  sub_2316053B8();
  (v253[1])(v31, v252);
  if (qword_27DD60100 != -1)
  {
    swift_once();
  }

  v216 = sub_2316066E8();
  v54 = __swift_project_value_buffer(v216, qword_27DD603F8);
  v55 = v240;
  v56 = *(v240 + 16);
  v57 = v257;
  v235 = v35;
  v58 = v238;
  v56(v257, v35, v238);
  v229 = v54;
  v59 = sub_2316066C8();
  v60 = sub_231606968();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v251;
  if (v61)
  {
    v63 = swift_slowAlloc();
    v253 = swift_slowAlloc();
    v261[0] = v253;
    *v63 = 136315138;
    sub_231605358();
    v252 = MEMORY[0x231932D20]();
    v65 = v64;

    v217 = *(v55 + 8);
    v217(v57, v58);
    v66 = sub_2315B1574(v252, v65, v261);

    *(v63 + 4) = v66;
    _os_log_impl(&dword_2315AF000, v59, v60, "Got identifiers: %s", v63, 0xCu);
    v67 = v253;
    __swift_destroy_boxed_opaque_existential_1Tm(v253);
    MEMORY[0x231933730](v67, -1, -1);
    MEMORY[0x231933730](v63, -1, -1);
  }

  else
  {

    v217 = *(v55 + 8);
    v217(v57, v58);
  }

  v68 = 0xEC000000736E6F69;
  v69 = 0x746163696C707041;
  v70 = sub_231605358();
  v71 = 0;
  v252 = *(v70 + 16);
  v257 = (v255 + 16);
  v253 = (v256 + 8);
  v256 = v255 + 8;
  v239 = (v255 + 32);
  v243 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v252 == v71)
    {

      v94 = *(v243 + 16);
      if (v94)
      {
        v261[0] = MEMORY[0x277D84F90];
        v95 = v243;
        sub_2316040B8(0, v94, 0);
        v96 = v261[0];
        v97 = v95 + ((*(v255 + 80) + 32) & ~*(v255 + 80));
        v258 = *(v255 + 72);
        v98 = *(v255 + 16);
        do
        {
          v99 = v248;
          v100 = v251;
          v98(v248, v97, v251);
          v101 = sub_2316053E8();
          v103 = v102;
          (*v256)(v99, v100);
          v261[0] = v96;
          v105 = *(v96 + 16);
          v104 = *(v96 + 24);
          if (v105 >= v104 >> 1)
          {
            sub_2316040B8((v104 > 1), v105 + 1, 1);
            v96 = v261[0];
          }

          *(v96 + 16) = v105 + 1;
          v106 = v96 + 16 * v105;
          *(v106 + 32) = v101;
          *(v106 + 40) = v103;
          v97 += v258;
          --v94;
        }

        while (v94);

        v107 = v241;
        v62 = v251;
      }

      else
      {

        v96 = MEMORY[0x277D84F90];
        v107 = v241;
      }

      v108 = v247;
      if (*(v96 + 16))
      {
        v109 = v96;
      }

      else
      {
        v110 = sub_231605358();
        v111 = 0;
        v249 = MEMORY[0x277D84F90];
        v258 = *(v110 + 16);
        v252 = v110;
        while (v258 != v111)
        {
          if (v111 >= *(v110 + 16))
          {
            goto LABEL_115;
          }

          v250 = (*(v255 + 80) + 32) & ~*(v255 + 80);
          v112 = *(v255 + 72);
          (*(v255 + 16))(v108, v110 + v250 + v112 * v111, v62);
          v113 = v245;
          sub_2316053F8();
          v114 = v246;
          sub_231606678();
          v115 = sub_231606688();
          v116 = *v253;
          v117 = v114;
          v118 = v254;
          (*v253)(v117, v254);
          v119 = v118;
          v108 = v247;
          v116(v113, v119);
          if (v115 & 1) != 0 && (v261[0] = sub_2316053E8(), v261[1] = v120, *&v259 = 46, *(&v259 + 1) = 0xE100000000000000, sub_2315BC8D0(), v121 = sub_2316069D8(), , (v121))
          {
            v122 = v62;
            v123 = *v239;
            (*v239)(v230, v108, v122);
            v124 = v249;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v262 = v124;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2316040D8(0, *(v124 + 2) + 1, 1);
              v124 = v262;
            }

            v127 = *(v124 + 2);
            v126 = *(v124 + 3);
            if (v127 >= v126 >> 1)
            {
              sub_2316040D8((v126 > 1), v127 + 1, 1);
              v124 = v262;
            }

            ++v111;
            *(v124 + 2) = v127 + 1;
            v249 = v124;
            v128 = &v124[v250 + v127 * v112];
            v129 = v251;
            v123(v128, v230, v251);
            v62 = v129;
            v108 = v247;
          }

          else
          {
            (*v256)(v108, v62);
            ++v111;
          }

          v110 = v252;
        }

        v130 = *(v249 + 2);
        if (v130)
        {
          v131 = &v249[(*(v255 + 80) + 32) & ~*(v255 + 80)];
          v258 = *(v255 + 72);
          v132 = *(v255 + 16);
          v109 = MEMORY[0x277D84F90];
          do
          {
            v133 = v244;
            v132(v244, v131, v62);
            v134 = sub_2316053E8();
            v136 = v135;
            (*v256)(v133, v62);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2315DA398();
              v109 = v140;
            }

            v137 = *(v109 + 2);
            v138 = v109;
            if (v137 >= *(v109 + 3) >> 1)
            {
              sub_2315DA398();
              v138 = v141;
            }

            *(v138 + 2) = v137 + 1;
            v109 = v138;
            v139 = &v138[16 * v137];
            *(v139 + 4) = v134;
            *(v139 + 5) = v136;
            v131 += v258;
            --v130;
            v62 = v251;
          }

          while (v130);
        }

        else
        {

          v109 = MEMORY[0x277D84F90];
        }

        v107 = v241;
      }

      v142 = sub_2316066C8();
      v143 = sub_231606968();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v261[0] = v145;
        *v144 = 136315138;

        v147 = MEMORY[0x231932D20](v146, MEMORY[0x277D837D0]);
        v148 = v109;
        v150 = v149;

        v151 = sub_2315B1574(v147, v150, v261);
        v109 = v148;

        *(v144 + 4) = v151;
        _os_log_impl(&dword_2315AF000, v142, v143, "Found mentioned app ids: %s", v144, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v145);
        MEMORY[0x231933730](v145, -1, -1);
        MEMORY[0x231933730](v144, -1, -1);
      }

      v152 = v231;
      v153 = sub_231605418();
      if (v107)
      {
        if (qword_280FE9628 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v216, qword_280FE9630);
        v154 = v107;
        v155 = sub_2316066C8();
        v156 = sub_231606978();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          v261[0] = v158;
          *v157 = 136315138;
          *&v259 = v107;
          v159 = v107;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
          v160 = sub_2316067A8();
          v162 = sub_2315B1574(v160, v161, v261);

          *(v157 + 4) = v162;
          _os_log_impl(&dword_2315AF000, v155, v156, "Could not convert user dialog act to tasks: %s. Cant be a direct flow request", v157, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v158);
          MEMORY[0x231933730](v158, -1, -1);
          MEMORY[0x231933730](v157, -1, -1);

          v217(v235, v238);
          (*(v237 + 8))(v231, v218);
        }

        else
        {

          v217(v235, v238);
          (*(v237 + 8))(v152, v218);
        }

        v174 = type metadata accessor for IntentProperties(0);
        __swift_storeEnumTagSinglePayload(v236, 1, 1, v174);
      }

      v163 = v153;
      v164 = *(v233 + 104);
      v164(v232, *MEMORY[0x277D60AD8], v234);
      v165 = sub_2315E9470();
      v166 = v165;
      if (!v165)
      {
        v175 = v235;
        goto LABEL_102;
      }

      v258 = v165;
      sub_2315E722C(0, (v163 & 0xC000000000000001) == 0, v163);
      v167 = v109;
      if ((v163 & 0xC000000000000001) != 0)
      {
        MEMORY[0x231932F00](0, v163);
      }

      else
      {
      }

      v168 = sub_231605488();
      v170 = v169;
      sub_231605538();
      if (v168 == sub_231605528() && v170 == v171)
      {
      }

      else
      {
        v173 = sub_231606BD8();

        if ((v173 & 1) == 0)
        {
LABEL_85:

          sub_231605438();

          if (v261[3])
          {
            sub_231605478();
            v178 = swift_dynamicCast();
            v175 = v235;
            v109 = v167;
            if (v178)
            {
              v257 = v167;

              sub_231605448();

              v241 = 0;
              if (v261[0] && (v179 = sub_231605428(), , v179))
              {
                v180 = v226;
                sub_231605458();

                v181 = v222;
              }

              else
              {
                v180 = v226;
                v181 = v222;
                __swift_storeEnumTagSinglePayload(v226, 1, 1, v222);
              }

              v182 = v224;
              v183 = v221;
              (*(v225 + 104))(v224, *MEMORY[0x277D5EA40], v181);
              __swift_storeEnumTagSinglePayload(v182, 0, 1, v181);
              v184 = *(v183 + 48);
              v185 = v180;
              v186 = v223;
              sub_2315C9580(v185, v223, &qword_27DD60330, &qword_2316087D0);
              sub_2315C9580(v182, v186 + v184, &qword_27DD60330, &qword_2316087D0);
              if (__swift_getEnumTagSinglePayload(v186, 1, v181) == 1)
              {

                sub_2315B2F7C(v182, &qword_27DD60330, &qword_2316087D0);
                sub_2315B2F7C(v226, &qword_27DD60330, &qword_2316087D0);
                if (__swift_getEnumTagSinglePayload(v186 + v184, 1, v181) == 1)
                {
                  sub_2315B2F7C(v186, &qword_27DD60330, &qword_2316087D0);
LABEL_100:
                  v107 = v241;
                  v109 = v257;
                  v175 = v235;
                  goto LABEL_101;
                }
              }

              else
              {
                v187 = v220;
                sub_2315C9580(v186, v220, &qword_27DD60330, &qword_2316087D0);
                if (__swift_getEnumTagSinglePayload(v186 + v184, 1, v181) != 1)
                {
                  v188 = v225;
                  v189 = v186 + v184;
                  v190 = v219;
                  (*(v225 + 32))(v219, v189, v181);
                  sub_2315C95E4(&qword_27DD60358, MEMORY[0x277D5EA60], MEMORY[0x277D5EA70]);
                  sub_231606778();

                  v191 = *(v188 + 8);
                  v191(v190, v181);
                  sub_2315B2F7C(v224, &qword_27DD60330, &qword_2316087D0);
                  sub_2315B2F7C(v226, &qword_27DD60330, &qword_2316087D0);
                  v191(v220, v181);
                  sub_2315B2F7C(v186, &qword_27DD60330, &qword_2316087D0);
                  goto LABEL_100;
                }

                sub_2315B2F7C(v224, &qword_27DD60330, &qword_2316087D0);
                sub_2315B2F7C(v226, &qword_27DD60330, &qword_2316087D0);
                (*(v225 + 8))(v187, v181);
              }

              sub_2315B2F7C(v186, &qword_27DD60328, &qword_2316087C8);
              goto LABEL_100;
            }
          }

          else
          {

            sub_2315B2F7C(v261, &unk_27DD605F0, qword_231609310);
            v175 = v235;
            v109 = v167;
          }

LABEL_101:
          v166 = v258;
LABEL_102:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60348, &unk_2316087F0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_231608640;
          strcpy((inited + 32), "mentionedAppId");
          *(inited + 47) = -18;
          *(inited + 48) = v109;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B8, &unk_231607A80);
          v193 = sub_231606728();
          if (v166)
          {
            sub_2315E722C(0, (v163 & 0xC000000000000001) == 0, v163);
            if ((v163 & 0xC000000000000001) != 0)
            {
              MEMORY[0x231932F00](0, v163);
            }

            else
            {
            }

            v194 = sub_231605488();
            v196 = v195;

            sub_231605548();
            if (v260)
            {
              sub_2315B4648(&v259, v261);
              v258 = sub_2315CD864(v193);

              v257 = v109;
              v197 = v236;
              sub_2315B4568(v261, (v236 + 3));
              v198 = type metadata accessor for IntentProperties(0);
              v241 = v107;
              v199 = *(v198 + 28);
              v200 = v233;
              v201 = *(v233 + 16);
              v256 = v194;
              v202 = v232;
              v255 = v196;
              v203 = v234;
              v201(v227, v232, v234);
              v204 = sub_231605098();
              __swift_storeEnumTagSinglePayload(v228, 1, 1, v204);
              sub_231605C18();
              __swift_destroy_boxed_opaque_existential_1Tm(v261);
              (*(v200 + 8))(v202, v203);
              v217(v235, v238);
              (*(v237 + 8))(v231, v218);
              v205 = sub_231605C58();
              __swift_storeEnumTagSinglePayload(v197 + v199, 0, 1, v205);
              v206 = *(v198 + 32);
              v207 = sub_231605E98();
              __swift_storeEnumTagSinglePayload(v197 + v206, 1, 1, v207);
              v208 = v255;
              v209 = v256;
              *v197 = v258;
              v197[1] = v209;
              v197[2] = v208;
              __swift_storeEnumTagSinglePayload(v197, 0, 1, v198);
            }

            sub_2315B2F7C(&v259, &qword_27DD60350, &qword_231608800);
            v210 = sub_2316066C8();
            v211 = sub_231606958();
            if (os_log_type_enabled(v210, v211))
            {
              v212 = swift_slowAlloc();
              *v212 = 0;
              v213 = "This is not a verb SiriSuggestions directly supports";
              goto LABEL_111;
            }
          }

          else
          {

            v210 = sub_2316066C8();
            v211 = sub_231606958();
            if (os_log_type_enabled(v210, v211))
            {
              v212 = swift_slowAlloc();
              *v212 = 0;
              v213 = "No verb attached to parse. Cant be a direct flow request";
LABEL_111:
              _os_log_impl(&dword_2315AF000, v210, v211, v213, v212, 2u);
              MEMORY[0x231933730](v212, -1, -1);
            }
          }

          (*(v233 + 8))(v232, v234);
          v217(v175, v238);
          (*(v237 + 8))(v231, v218);
          v214 = type metadata accessor for IntentProperties(0);
          __swift_storeEnumTagSinglePayload(v236, 1, 1, v214);
        }
      }

      v176 = v232;
      v177 = v234;
      (*(v233 + 8))(v232, v234);
      v164(v176, *MEMORY[0x277D60AE0], v177);
      goto LABEL_85;
    }

    if (v71 >= *(v70 + 16))
    {
      break;
    }

    v250 = (*(v255 + 80) + 32) & ~*(v255 + 80);
    v72 = *(v255 + 72);
    (*(v255 + 16))(v258, v70 + v250 + v72 * v71, v62);
    if (sub_2316053D8() == v69 && v73 == v68)
    {

LABEL_21:
      v76 = v70;
      v77 = v62;
      v78 = v69;
      v79 = v68;
      v80 = v249;
      sub_2316053F8();
      v81 = sub_231606698();
      v83 = v82;
      (*v253)(v80, v254);
      if (v81 == 0x64695F6D657469 && v83 == 0xE700000000000000)
      {

        v68 = v79;
        v69 = v78;
        v62 = v77;
        v70 = v76;
      }

      else
      {
        v85 = sub_231606BD8();

        v68 = v79;
        v69 = v78;
        v62 = v77;
        v70 = v76;
        if ((v85 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v86 = *v239;
      (*v239)(v242, v258, v62);
      v87 = v243;
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v261[0] = v87;
      if ((v88 & 1) == 0)
      {
        sub_2316040D8(0, *(v87 + 16) + 1, 1);
        v87 = v261[0];
      }

      v89 = v250;
      v91 = *(v87 + 16);
      v90 = *(v87 + 24);
      v92 = v91 + 1;
      if (v91 >= v90 >> 1)
      {
        v250 = v91 + 1;
        sub_2316040D8((v90 > 1), v91 + 1, 1);
        v92 = v250;
        v87 = v261[0];
      }

      ++v71;
      *(v87 + 16) = v92;
      v243 = v87;
      v93 = v87 + v89 + v91 * v72;
      v62 = v251;
      v86(v93, v242, v251);
    }

    else
    {
      v75 = sub_231606BD8();

      if (v75)
      {
        goto LABEL_21;
      }

LABEL_26:
      (*v256)(v258, v62);
      ++v71;
    }
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  swift_once();
LABEL_3:
  v47 = sub_2316066E8();
  __swift_project_value_buffer(v47, qword_27DD603F8);
  v48 = sub_2316066C8();
  v49 = sub_231606958();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2315AF000, v48, v49, "No user dialog acts attached to parse. Cant be a direct flow request", v50, 2u);
    MEMORY[0x231933730](v50, -1, -1);
  }

  v51 = type metadata accessor for IntentProperties(0);
  return __swift_storeEnumTagSinglePayload(v236, 1, 1, v51);
}

uint64_t IntentProperties.init(intentProps:verb:owner:presentationContext:preComputedSuggestions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  sub_2315B4648(a4, (a7 + 3));
  v10 = type metadata accessor for IntentProperties(0);
  sub_2315C7354(a5, a7 + *(v10 + 28), &qword_27DD602C8, &qword_231608658);
  return sub_2315C7354(a6, a7 + *(v10 + 32), &qword_27DD602D0, &unk_231608660);
}

uint64_t type metadata accessor for IntentProperties(uint64_t a1)
{
  result = qword_27DD602F0;
  if (!qword_27DD602F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2315C7354(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_1();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2315C73A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v172 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  MEMORY[0x28223BE20](v5 - 8);
  v158 = &v150[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60370, &qword_231608818);
  MEMORY[0x28223BE20](v7 - 8);
  v161 = &v150[-v8];
  v162 = sub_231606128();
  v160 = *(v162 - 8);
  v9 = MEMORY[0x28223BE20](v162);
  v157 = &v150[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v159 = &v150[-v11];
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D0, &unk_231608660);
  v12 = MEMORY[0x28223BE20](v164);
  v167 = &v150[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v163 = &v150[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v168 = &v150[-v17];
  MEMORY[0x28223BE20](v16);
  v169 = &v150[-v18];
  v19 = sub_231605308();
  v171 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v150[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C8, &qword_231608658);
  v23 = MEMORY[0x28223BE20](v22);
  v165 = &v150[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v166 = &v150[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v170 = &v150[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v150[-v30];
  MEMORY[0x28223BE20](v29);
  v179 = &v150[-v32];
  if (sub_2316052E8() == 0xD00000000000002FLL && 0x800000023160A920 == v33)
  {
  }

  else
  {
    v35 = sub_231606BD8();

    if ((v35 & 1) == 0)
    {
      if (qword_27DD60100 != -1)
      {
        swift_once();
      }

      v36 = sub_2316066E8();
      __swift_project_value_buffer(v36, qword_27DD603F8);
      v37 = sub_2316066C8();
      v38 = sub_231606958();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2315AF000, v37, v38, "direct invocation is not of a known id", v39, 2u);
        MEMORY[0x231933730](v39, -1, -1);
      }

LABEL_36:
      v73 = type metadata accessor for IntentProperties(0);
      v74 = v172;
LABEL_37:
      v75 = 1;
      return __swift_storeEnumTagSinglePayload(v74, v75, 1, v73);
    }
  }

  v40 = sub_2316052F8();
  if (!v40)
  {
    v176 = 0u;
    v177 = 0u;
    goto LABEL_19;
  }

  sub_2315DCB58(0xD000000000000013, 0x800000023160A0B0, v40, &v176);

  if (!*(&v177 + 1))
  {
LABEL_19:
    sub_2315B2F7C(&v176, &unk_27DD605F0, qword_231609310);
LABEL_20:
    v44 = sub_231605C58();
    __swift_storeEnumTagSinglePayload(v179, 1, 1, v44);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v156 = sub_231605008();
  v42 = v41;

  if (v42 >> 60 == 15)
  {
    goto LABEL_20;
  }

  sub_231604F38();
  swift_allocObject();
  sub_231604F28();
  v43 = sub_231605C58();
  sub_2315C95E4(&qword_27DD60388, MEMORY[0x277D60680], MEMORY[0x277D60690]);
  sub_231604F18();
  if (v2)
  {

    sub_2315C95D0(v156, v42);
    __swift_storeEnumTagSinglePayload(v179, 1, 1, v43);
    v3 = 0;
  }

  else
  {

    sub_2315C95D0(v156, v42);
    __swift_storeEnumTagSinglePayload(v179, 0, 1, v43);
  }

LABEL_21:
  v45 = sub_2316052F8();
  if (!v45)
  {
    v176 = 0u;
    v177 = 0u;
    goto LABEL_30;
  }

  sub_2315DCB58(0x6E6F69746361, 0xE600000000000000, v45, &v176);

  if (!*(&v177 + 1))
  {
LABEL_30:
    sub_2315B2F7C(&v176, &unk_27DD605F0, qword_231609310);
    goto LABEL_31;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    if (qword_27DD60100 != -1)
    {
      swift_once();
    }

    v69 = sub_2316066E8();
    __swift_project_value_buffer(v69, qword_27DD603F8);
    v70 = sub_2316066C8();
    v71 = sub_231606958();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2315AF000, v70, v71, "direct invocation is not set with an action field", v72, 2u);
      MEMORY[0x231933730](v72, -1, -1);
    }

    sub_2315B2F7C(v179, &qword_27DD602C8, &qword_231608658);
    goto LABEL_36;
  }

  v156 = v3;
  v46 = v173;

  v47 = sub_231606B48();

  if (v47 <= 3)
  {
    v155 = v47;

    if (qword_27DD60100 != -1)
    {
      swift_once();
    }

    v48 = sub_2316066E8();
    v49 = __swift_project_value_buffer(v48, qword_27DD603F8);
    sub_2315C9580(v179, v31, &qword_27DD602C8, &qword_231608658);
    v50 = v171;
    (*(v171 + 16))(v21, a1, v19);
    v154 = v49;
    v51 = sub_2316066C8();
    v52 = sub_231606968();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *&v176 = v153;
      *v53 = 136315650;
      v152 = v51;
      v151 = v52;
      sub_2315C9580(v31, v170, &qword_27DD602C8, &qword_231608658);
      v54 = sub_2316067A8();
      v56 = v55;
      sub_2315B2F7C(v31, &qword_27DD602C8, &qword_231608658);
      v57 = sub_2315B1574(v54, v56, &v176);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v58 = v155;
      LOBYTE(v173) = v155;
      v59 = sub_2316067A8();
      v61 = sub_2315B1574(v59, v60, &v176);

      *(v53 + 14) = v61;
      *(v53 + 22) = 2080;
      *&v173 = sub_2316052F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60380, &unk_231608820);
      v62 = sub_2316067A8();
      v64 = v63;
      (*(v171 + 8))(v21, v19);
      v65 = sub_2315B1574(v62, v64, &v176);

      *(v53 + 24) = v65;
      v66 = v152;
      _os_log_impl(&dword_2315AF000, v152, v151, "Got direct invocation properties: presentationContext: %s, action: %s, userData: %s", v53, 0x20u);
      v67 = v153;
      swift_arrayDestroy();
      MEMORY[0x231933730](v67, -1, -1);
      MEMORY[0x231933730](v53, -1, -1);

      v68 = v156;
    }

    else
    {

      (*(v50 + 8))(v21, v19);
      sub_2315B2F7C(v31, &qword_27DD602C8, &qword_231608658);
      v68 = v156;
      v58 = v155;
    }

    if (v58 != 1)
    {
      if (v58 != 2)
      {
        v108 = sub_2316066C8();
        v109 = sub_231606958();
        v110 = os_log_type_enabled(v108, v109);
        v111 = v172;
        if (v110)
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *&v176 = v113;
          *v112 = 136315138;
          v114 = 0xEC000000706C6548;
          v115 = 0x69726953776F6873;
          switch(v155)
          {
            case 1:
              break;
            case 2:
              v114 = 0x800000023160A050;
              v115 = 0xD000000000000013;
              break;
            case 3:
              v114 = 0x800000023160A070;
              v115 = 0xD00000000000001ALL;
              break;
            default:
              v114 = 0x800000023160A030;
              v115 = 0xD000000000000011;
              break;
          }

          v149 = sub_2315B1574(v115, v114, &v176);

          *(v112 + 4) = v149;
          _os_log_impl(&dword_2315AF000, v108, v109, "Unknown direct invocation action: %s", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v113);
          MEMORY[0x231933730](v113, -1, -1);
          MEMORY[0x231933730](v112, -1, -1);
        }

        sub_2315B2F7C(v179, &qword_27DD602C8, &qword_231608658);
        v73 = type metadata accessor for IntentProperties(0);
        v74 = v111;
        goto LABEL_37;
      }

      v83 = sub_2316052F8();
      v84 = v172;
      if (v83)
      {
        sub_2315DCB58(0xD000000000000016, 0x800000023160A0D0, v83, &v176);

        v85 = v168;
        v86 = v169;
        if (*(&v177 + 1))
        {
          if (swift_dynamicCast())
          {
            v87 = sub_231605008();
            v89 = v88;

            if (v89 >> 60 != 15)
            {
              sub_231604F38();
              swift_allocObject();
              sub_231604F28();
              v90 = sub_231605E98();
              sub_2315C95E4(&qword_27DD60238, MEMORY[0x277D60708], MEMORY[0x277D60718]);
              sub_231604F18();
              if (v68)
              {

                sub_2315C95D0(v87, v89);
                __swift_storeEnumTagSinglePayload(v86, 1, 1, v90);
              }

              else
              {

                sub_2315C95D0(v87, v89);
                __swift_storeEnumTagSinglePayload(v86, 0, 1, v90);
              }

              v85 = v168;
              goto LABEL_69;
            }
          }

LABEL_68:
          v116 = sub_231605E98();
          __swift_storeEnumTagSinglePayload(v86, 1, 1, v116);
LABEL_69:
          sub_2315C9580(v86, v85, &qword_27DD602D0, &unk_231608660);
          v117 = sub_2316066C8();
          v118 = sub_231606968();
          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            *&v176 = v120;
            *v119 = 136315138;
            sub_2315C9580(v85, v163, &qword_27DD602D0, &unk_231608660);
            v121 = sub_2316067A8();
            v123 = v122;
            sub_2315B2F7C(v85, &qword_27DD602D0, &unk_231608660);
            v124 = v169;
            v84 = v172;
            v125 = sub_2315B1574(v121, v123, &v176);

            *(v119 + 4) = v125;
            _os_log_impl(&dword_2315AF000, v117, v118, "Got direct invocation properties: preComputedSuggestions: %s", v119, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v120);
            v126 = v120;
            v86 = v124;
            MEMORY[0x231933730](v126, -1, -1);
            MEMORY[0x231933730](v119, -1, -1);
          }

          else
          {

            sub_2315B2F7C(v85, &qword_27DD602D0, &unk_231608660);
          }

          v127 = v167;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
          v128 = sub_231606728();
          sub_231605538();
          v129 = sub_231605528();
          v131 = v130;
          sub_2315C9580(v86, v127, &qword_27DD602D0, &unk_231608660);
          v132 = sub_231605E98();
          if (__swift_getEnumTagSinglePayload(v127, 1, v132) == 1)
          {
            sub_2315B2F7C(v127, &qword_27DD602D0, &unk_231608660);
            v173 = 0u;
            v174 = 0u;
            v175 = 0;
            v133 = sub_231606528();
            *(&v177 + 1) = sub_231606058();
            v178 = sub_2315C95E4(&qword_280FE95F0, MEMORY[0x277D60A60], MEMORY[0x277D60A58]);
            *&v176 = v133;
            if (*(&v174 + 1))
            {
              sub_2315B2F7C(&v173, &qword_27DD60350, &qword_231608800);
            }
          }

          else
          {
            sub_231605E48();
            (*(*(v132 - 8) + 8))(v127, v132);
            sub_2315B4648(&v173, &v176);
          }

          v134 = type metadata accessor for IntentProperties(0);
          sub_2315C7354(v179, v84 + *(v134 + 28), &qword_27DD602C8, &qword_231608658);
          *v84 = v128;
          v84[1] = v129;
          v84[2] = v131;
          sub_2315B4648(&v176, (v84 + 3));
          sub_2315C7354(v86, v84 + *(v134 + 32), &qword_27DD602D0, &unk_231608660);
          v74 = v84;
          v75 = 0;
          v73 = v134;
          return __swift_storeEnumTagSinglePayload(v74, v75, 1, v73);
        }
      }

      else
      {
        v176 = 0u;
        v177 = 0u;
        v85 = v168;
        v86 = v169;
      }

      sub_2315B2F7C(&v176, &unk_27DD605F0, qword_231609310);
      goto LABEL_68;
    }

    v91 = v179;
    v92 = v166;
    sub_2315C9580(v179, v166, &qword_27DD602C8, &qword_231608658);
    v93 = v165;
    sub_2315C9580(v92, v165, &qword_27DD602C8, &qword_231608658);
    v94 = sub_231605C58();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, 1, v94);
    sub_2315B2F7C(v93, &qword_27DD602C8, &qword_231608658);
    if (EnumTagSinglePayload != 1)
    {
LABEL_81:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
      v138 = sub_231606728();
      sub_231605538();
      v139 = sub_231605528();
      v141 = v140;
      v142 = sub_231605CC8();
      v143 = sub_231605CB8();
      v144 = v172;
      v172[6] = v142;
      v144[7] = sub_2315C95E4(&qword_27DD60378, MEMORY[0x277D607D8], MEMORY[0x277D607D0]);
      v144[3] = v143;
      sub_2315B2F7C(v91, &qword_27DD602C8, &qword_231608658);
      v145 = type metadata accessor for IntentProperties(0);
      v146 = v92;
      v147 = *(v145 + 32);
      v148 = sub_231605E98();
      __swift_storeEnumTagSinglePayload(v144 + v147, 1, 1, v148);
      *v144 = v138;
      v144[1] = v139;
      v144[2] = v141;
      sub_2315C7354(v146, v144 + *(v145 + 28), &qword_27DD602C8, &qword_231608658);
      v74 = v144;
      v75 = 0;
      v73 = v145;
      return __swift_storeEnumTagSinglePayload(v74, v75, 1, v73);
    }

    v96 = sub_2316052F8();
    if (v96)
    {
      sub_2315DCB58(0x697461636F766E69, 0xEE00657079546E6FLL, v96, &v176);

      v97 = v162;
      if (*(&v177 + 1))
      {
        v98 = v161;
        v99 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v98, v99 ^ 1u, 1, v97);
        if (__swift_getEnumTagSinglePayload(v98, 1, v97) != 1)
        {
          v100 = v160;
          v101 = v159;
          (*(v160 + 32))(v159, v98, v97);
          v102 = sub_2316052F8();
          if (v102)
          {
            sub_2315DCB58(0x6F43676F6C616964, 0xEF6449747865746ELL, v102, &v176);

            if (*(&v177 + 1))
            {
              v103 = swift_dynamicCast();
              v104 = v160;
              v105 = v159;
              if (v103)
              {
                v169 = *(&v173 + 1);
                v171 = v173;
                (*(v160 + 16))(v157, v159, v97);
                v106 = sub_231605098();
                __swift_storeEnumTagSinglePayload(v158, 1, 1, v106);
                v107 = v170;
                sub_231605C18();
                (*(v104 + 8))(v105, v97);
                sub_2315B2F7C(v92, &qword_27DD602C8, &qword_231608658);
                __swift_storeEnumTagSinglePayload(v107, 0, 1, v94);
                sub_2315C7354(v107, v92, &qword_27DD602C8, &qword_231608658);
              }

              else
              {
                (*(v160 + 8))(v159, v97);
              }

              goto LABEL_81;
            }

            (*(v160 + 8))(v159, v97);
          }

          else
          {
            (*(v100 + 8))(v101, v97);
            v176 = 0u;
            v177 = 0u;
          }

          v135 = &unk_27DD605F0;
          v136 = qword_231609310;
          v137 = &v176;
          goto LABEL_80;
        }

LABEL_79:
        v135 = &qword_27DD60370;
        v136 = &qword_231608818;
        v137 = v98;
LABEL_80:
        sub_2315B2F7C(v137, v135, v136);
        goto LABEL_81;
      }
    }

    else
    {
      v176 = 0u;
      v177 = 0u;
      v97 = v162;
    }

    sub_2315B2F7C(&v176, &unk_27DD605F0, qword_231609310);
    v98 = v161;
    __swift_storeEnumTagSinglePayload(v161, 1, 1, v97);
    goto LABEL_79;
  }

  if (qword_27DD60100 != -1)
  {
    swift_once();
  }

  v77 = sub_2316066E8();
  __swift_project_value_buffer(v77, qword_27DD603F8);

  v78 = sub_2316066C8();
  v79 = sub_231606958();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v176 = v81;
    *v80 = 136315138;
    v82 = sub_2315B1574(v46, *(&v46 + 1), &v176);

    *(v80 + 4) = v82;
    _os_log_impl(&dword_2315AF000, v78, v79, "direct invocation is not set with a valid action field. Set with %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    MEMORY[0x231933730](v81, -1, -1);
    MEMORY[0x231933730](v80, -1, -1);
  }

  else
  {
  }

  sub_2315B2F7C(v179, &qword_27DD602C8, &qword_231608658);
  v73 = type metadata accessor for IntentProperties(0);
  v74 = v172;
  v75 = 1;
  return __swift_storeEnumTagSinglePayload(v74, v75, 1, v73);
}

uint64_t IntentProperties.verb.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t IntentProperties.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D0, &unk_231608660);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C8, &qword_231608658);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v4);
  v6 = v21 - v5;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_231606A28();
  MEMORY[0x231932CB0](0x706F727020202020, 0xEC0000007B203A73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
  v7 = sub_231606718();
  MEMORY[0x231932CB0](v7);

  MEMORY[0x231932CB0](0x76202020200A2C7DLL, 0xED0000203A627265);
  v8 = v0[2];
  v21[0] = v0[1];
  v21[1] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602E0, &qword_231608670);
  v9 = sub_2316067A8();
  MEMORY[0x231932CB0](v9);

  MEMORY[0x231932CB0](0x776F202020200A2CLL, 0xED0000203A72656ELL);
  v10 = __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2316067B8();
  MEMORY[0x231932CB0](v13);

  MEMORY[0x231932CB0](0xD00000000000001BLL, 0x800000023160A8D0);
  v14 = type metadata accessor for IntentProperties(0);
  sub_2315C9580(v0 + *(v14 + 28), v6, &qword_27DD602C8, &qword_231608658);
  v15 = sub_2316067A8();
  MEMORY[0x231932CB0](v15);

  MEMORY[0x231932CB0](0xD000000000000025, 0x800000023160A8F0);
  sub_2315C9580(v0 + *(v14 + 32), v3, &qword_27DD602D0, &unk_231608660);
  v16 = sub_231605E98();
  if (__swift_getEnumTagSinglePayload(v3, 1, v16) == 1)
  {
    sub_2315B2F7C(v3, &qword_27DD602D0, &unk_231608660);
    v17 = -1;
  }

  else
  {
    v18 = sub_231605E68();
    (*(*(v16 - 8) + 8))(v3, v16);
    v17 = *(v18 + 16);
  }

  v21[0] = v17;
  v19 = sub_231606BC8();
  MEMORY[0x231932CB0](v19);

  return v22;
}

uint64_t IntentPropertiesConstants.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_231606B48();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_2315C9104()
{
  result = qword_27DD602E8;
  if (!qword_27DD602E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD602E8);
  }

  return result;
}

void sub_2315C91C0(uint64_t a1)
{
  sub_2315C92C4(319);
  if (v1 <= 0x3F)
  {
    sub_2315C9380();
    if (v2 <= 0x3F)
    {
      sub_2315C93D0();
      if (v3 <= 0x3F)
      {
        sub_2315C942C(319, &qword_27DD60318, MEMORY[0x277D60680]);
        if (v4 <= 0x3F)
        {
          sub_2315C942C(319, &qword_27DD60320, MEMORY[0x277D60708]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2315C92C4(uint64_t a1)
{
  if (!qword_27DD60300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD602D8, &qword_231608E50);
    v1 = sub_231606748();
    if (!v2)
    {
      atomic_store(v1, &qword_27DD60300);
    }
  }
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

void sub_2315C9380()
{
  if (!qword_27DD60308)
  {
    v0 = sub_2316069A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD60308);
    }
  }
}

unint64_t sub_2315C93D0()
{
  result = qword_27DD60310;
  if (!qword_27DD60310)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DD60310);
  }

  return result;
}

void sub_2315C942C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2316069A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntentPropertiesConstants(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for IntentPropertiesConstants(_BYTE *result, int a2, int a3)
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

uint64_t sub_2315C9580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2315C95D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2315B300C(result, a2);
  }

  return result;
}

uint64_t sub_2315C95E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2315C962C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_5_3(v3 + 112, v11);
  v7 = *(v3 + 112);
  if (*(v7 + 16))
  {

    v8 = sub_2315CD0A0(a1, a2);
    if (v9)
    {
      sub_2315B2D08(*(v7 + 56) + 48 * v8, a3);

      return result;
    }
  }

  result = 0.0;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_2315C96C8()
{
  v1 = v0;
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v2 = sub_2316066E8();
  __swift_project_value_buffer(v2, qword_280FE9630);
  v3 = sub_2316066C8();
  v4 = sub_231606958();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2315AF000, v3, v4, "Clearing suggestions state store", v5, 2u);
    OUTLINED_FUNCTION_20();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A0, &unk_231608950);
  sub_231606738();
  swift_endAccess();
  swift_beginAccess();
  *(v1 + 120) = MEMORY[0x277D84F90];
}

uint64_t sub_2315C97FC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  if (qword_280FE9628 != -1)
  {
LABEL_14:
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v15 = sub_2316066E8();
  v16 = __swift_project_value_buffer(v15, qword_280FE9630);

  v35 = v16;
  v17 = sub_2316066C8();
  v18 = sub_231606968();

  v19 = os_log_type_enabled(v17, v18);
  v37 = v14;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v42[0] = v14;
    *v20 = 136315394;
    *(v20 + 4) = sub_2315B1574(a3, a4, v42);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_2315B1574(a1, a2, v42);
    _os_log_impl(&dword_2315AF000, v17, v18, "Setting propertyKey: %s for requestId: %s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  v36 = a5;
  sub_2315B2D08(a5, v42);
  swift_beginAccess();

  *&v38 = a3;
  *(&v38 + 1) = a4;
  sub_23160294C(v42, a3, a4);
  swift_endAccess();
  OUTLINED_FUNCTION_5_3((v6 + 15), v41);
  v6 = v6[15];
  v21 = v6[2];

  a3 = 0;
  a4 = v6 + 7;
  a2 = MEMORY[0x277D837D0];
  while (1)
  {
    if (v21 == a3)
    {
    }

    if (a3 >= v6[2])
    {
      __break(1u);
      goto LABEL_14;
    }

    a5 = *(a4 - 1);
    v22 = *a4;
    v23 = *(a4 - 3);
    a1 = *(a4 - 2);
    v42[0] = v38;
    v39 = v23;
    v40 = a1;
    v14 = sub_2315BC8D0();

    if (sub_2316069D8())
    {
      break;
    }

    ++a3;
    a4 += 4;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = v22;
  v26 = *(&v38 + 1);

  v27 = sub_2316066C8();
  v28 = sub_231606958();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v42[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_2315B1574(v38, v26, v42);
    _os_log_impl(&dword_2315AF000, v27, v28, "Invoking late arrival of property: %s to listener", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  v31 = v36;
  v32 = v37;
  v33 = sub_2316068E8();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
  sub_2315B2D08(v31, v42);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = &unk_231608938;
  *(v34 + 40) = v25;
  sub_2315CAB60(v42, (v34 + 48));
  sub_2315FD77C(0, 0, v32, &unk_231608948, v34);
}

uint64_t sub_2315C9C54(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2315CADF8;

  return v5();
}

uint64_t sub_2315C9D48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_2315C9E40;

  return v10(a6);
}

uint64_t sub_2315C9E40()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315C9F24(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_3(v2 + 112, v19);
  v3 = *(v2 + 112);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v11 = (*(v3 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
    v12 = *v11;
    v13 = v11[1];
    v6 &= v6 - 1;
    sub_2315CABD8();
    sub_2315CAC2C();

    if (sub_231606768())
    {
      v14 = v18;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2316040B8(0, *(v18 + 16) + 1, 1);
        v14 = v18;
      }

      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2316040B8((v15 > 1), v16 + 1, 1);
        v14 = v18;
      }

      *(v14 + 16) = v16 + 1;
      v18 = v14;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v18;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2315CA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x2822009F8](sub_2315CA114, v4, 0);
}

uint64_t sub_2315CA114()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  OUTLINED_FUNCTION_5_3(v1 + 112, v0 + 112);
  v4 = *(v1 + 112);

  sub_2315DCC0C(v2, v3, v4, (v0 + 64));

  if (*(v0 + 88))
  {
    v5 = *(v0 + 176);
    sub_2315CAB60((v0 + 64), (v0 + 16));
    v18 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    *v6 = v0;
    v6[1] = sub_2315CA368;

    return v18(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = *(v0 + 160);
    sub_2315CA9BC(v0 + 64);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v8;
    swift_beginAccess();

    sub_2315CAB04(sub_2315DA290);
    v14 = *(*(v9 + 120) + 16);
    sub_2315CAB90(v14, sub_2315DA290);
    v15 = *(v9 + 120);
    *(v15 + 16) = v14 + 1;
    v16 = (v15 + 32 * v14);
    v16[4] = v12;
    v16[5] = v10;
    v16[6] = &unk_231608920;
    v16[7] = v13;
    *(v9 + 120) = v15;
    swift_endAccess();
    OUTLINED_FUNCTION_14();

    return v17();
  }
}

uint64_t sub_2315CA368()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 192);
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_2315CA46C, v1, 0);
}

uint64_t sub_2315CA46C()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315CA4C4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2315CADF8;

  return v7(a2);
}

uint64_t sub_2315CA5B8()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2315CA5E8()
{
  sub_2315CA5B8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2315CA638()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = sub_231606728();
  *(v0 + 120) = v1;
  return v0;
}

uint64_t sub_2315CA69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2315CA6C4, v5, 0);
}

uint64_t sub_2315CA6C4()
{
  OUTLINED_FUNCTION_8();
  sub_2315C97FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315CA724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2315CA74C, v5, 0);
}

uint64_t sub_2315CA74C()
{
  OUTLINED_FUNCTION_8();
  sub_2315C962C(*(v0 + 40), *(v0 + 48), *(v0 + 16));
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315CA7AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2315CA7D0, v2, 0);
}

uint64_t sub_2315CA7D0()
{
  OUTLINED_FUNCTION_8();
  sub_2315C96C8();
  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_2315CA828(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2315CA84C, v2, 0);
}

uint64_t sub_2315CA84C()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2315C9F24(v0[2], v0[3]);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_2315CA8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315CADF8;

  return sub_2315CA0EC(a1, a2, a3, a4);
}

unint64_t sub_2315CA968()
{
  result = qword_280FE8E78[0];
  if (!qword_280FE8E78[0])
  {
    type metadata accessor for InMemoryHintsStateStore();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FE8E78);
  }

  return result;
}

uint64_t sub_2315CA9BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60390, &qword_231608910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315CAA24(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2315CADF8;

  return sub_2315CA4C4(a1, a2, v6);
}

uint64_t sub_2315CAB04(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

_OWORD *sub_2315CAB60(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_2315CAB90(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

unint64_t sub_2315CABD8()
{
  result = qword_280FE85E8;
  if (!qword_280FE85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85E8);
  }

  return result;
}

unint64_t sub_2315CAC2C()
{
  result = qword_280FE85F0;
  if (!qword_280FE85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85F0);
  }

  return result;
}

uint64_t sub_2315CAC80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315CADF8;

  return sub_2315C9C54(a1, v4);
}

uint64_t sub_2315CAD34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2315C9E40;

  return sub_2315C9D48(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t InternalXPCSuggestionsLoggerFactory.__allocating_init(bookkeepingXPCClient:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_2315B4648(a1, v2 + 16);
  return v2;
}

uint64_t InternalXPCSuggestionsLoggerFactory.create(featureService:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t InternalXPCSuggestionsLoggerFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t InServiceSuggestionsDispatcher.dispatch(suggestions:presentationContext:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  sub_231605098();
  v3[25] = swift_task_alloc();
  v4 = sub_231605E98();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603B0, &qword_231608A08);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315CB130, 0, 0);
}

uint64_t sub_2315CB130()
{
  v98 = v1;
  v6 = *(v1 + 176);
  v7 = sub_231605E38();
  v8 = sub_2315CC124(v7);
  v9 = 0;
  *(v1 + 296) = v8;
  v10 = *(v8 + 32);
  *(v1 + 336) = v10;
  v11 = 1 << v10;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v91 = 136315138;
  if ((v12 & v8[8]) == 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v6 = *(v1 + 296);
LABEL_11:
    OUTLINED_FUNCTION_5_4(v9);
    v96 = v17;
    v3 = v19 | (v18 << 6);
    v20 = *(v6 + 48);
    v21 = sub_231606158();
    OUTLINED_FUNCTION_1_0();
    v23 = v22;
    v24 = OUTLINED_FUNCTION_11_2();
    v25(v24);
    v26 = OUTLINED_FUNCTION_2_4();
    v27(v26);
    *(v2 + v6) = v20;
    v28 = *(v96 + 16);
    sub_2315CCBA8(v2, v4);

    if (*(v28 + 16))
    {
      v29 = sub_2315CD1E4(*(v1 + 272));
      if (v30)
      {
        break;
      }
    }

    v32 = *(v21 + 8);
    v5 = v21 + 8;
    v31 = v32;
    v32(*(v1 + 272), v3);
    if (qword_280FE9550 != -1)
    {
      swift_once();
    }

    v33 = *(v1 + 240);
    v34 = sub_2316066E8();
    __swift_project_value_buffer(v34, qword_280FE9558);
    v35 = OUTLINED_FUNCTION_20_1();
    sub_2315CCBA8(v35, v33);
    v36 = sub_2316066C8();
    v4 = sub_231606978();
    v37 = os_log_type_enabled(v36, v4);
    v0 = *(v1 + 280);
    if (v37)
    {
      v95 = *(v1 + 280);
      v5 = v3;
      v38 = *(v1 + 248);
      log = *(v1 + 240);
      v39 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v97[0] = v2;
      OUTLINED_FUNCTION_21_0(v2, v40, v41, v42, v43, v44, v45, v46, v86, v87, v88, v89, v91);

      OUTLINED_FUNCTION_0_4();
      sub_2315CD5A8(&qword_27DD603B8, 255, v47, MEMORY[0x277D60BD8]);
      v3 = sub_231606BC8();
      v0 = v48;
      sub_2315CD2BC(log);
      v31(v38, v5);
      v6 = sub_2315B1574(v3, v0, v97);

      *(v39 + 4) = v6;
      _os_log_impl(&dword_2315AF000, v36, v4, "Unknown vehicle of %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v2);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_7_1();

      v49 = v95;
    }

    else
    {
      v6 = *(v1 + 240);

      sub_2315CD2BC(v6);
      v49 = v0;
    }

    sub_2315CD2BC(v49);
    v9 = *(v1 + 312);
    if (((*(v1 + 304) - 1) & *(v1 + 304)) == 0)
    {
LABEL_6:
      while (!__OFADD__(v9, 1))
      {
        OUTLINED_FUNCTION_13_1();
        if (v15 == v16)
        {
          OUTLINED_FUNCTION_8_0();

          OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_9_2();

          __asm { BRAA            X1, X16 }
        }

        v9 = v13 + 1;
        if (*(v6 + 8 * v14 + 64))
        {
          v9 = v14;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_14_1(v29);
  sub_2315B4648((v1 + 56), v1 + 16);
  v52 = *(v21 + 8);
  v5 = v21 + 8;
  v0 = v52;
  (v52)(v23, v3);
  if (qword_280FE9550 == -1)
  {
    goto LABEL_24;
  }

LABEL_31:
  OUTLINED_FUNCTION_0(&qword_280FE9550);
LABEL_24:
  v53 = *(v1 + 280);
  v55 = *(v1 + 256);
  v54 = *(v1 + 264);
  v56 = sub_2316066E8();
  __swift_project_value_buffer(v56, qword_280FE9558);
  v57 = OUTLINED_FUNCTION_20_1();
  sub_2315CCBA8(v57, v54);
  sub_2315CCBA8(v53, v55);
  sub_2315B4568(v1 + 16, v1 + 96);
  v58 = sub_2316066C8();
  v59 = sub_231606968();
  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v1 + 256);
  v62 = *(v1 + 264);
  v90 = v3;
  if (v60)
  {
    loga = v58;
    v63 = OUTLINED_FUNCTION_16_1();
    v92 = swift_slowAlloc();
    v97[0] = v92;
    *v63 = 136315650;
    sub_2315CCBA8(v62, v58);

    OUTLINED_FUNCTION_0_4();
    sub_2315CD5A8(v64, 255, v65, MEMORY[0x277D60BD8]);
    OUTLINED_FUNCTION_17_2();
    sub_231606BC8();
    OUTLINED_FUNCTION_23_1();
    HIDWORD(v88) = v59;
    (v0)(v58, v2);
    sub_2315B1574(v5, v3, v97);

    OUTLINED_FUNCTION_15_1();
    v66 = OUTLINED_FUNCTION_12_2();
    v0(v66);
    sub_231605DD8();
    v67 = OUTLINED_FUNCTION_17_2();
    v68 = MEMORY[0x231932D20](v67);
    v70 = v69;

    sub_2315CD2BC(v61);
    sub_2315B1574(v68, v70, v97);

    OUTLINED_FUNCTION_24_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603C0, &qword_231608A10);
    v71 = sub_2316067A8();
    v3 = v72;
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
    v73 = sub_2315B1574(v71, v3, v97);

    *(v63 + 24) = v73;
    _os_log_impl(&dword_2315AF000, loga, v59, "Dispatching %s of %s to %s", v63, 0x20u);
    OUTLINED_FUNCTION_22_0(v74, v75, v76, v77, v78, v79, v80, v81, v86, v87, v88, v90, v92);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
    sub_2315CD2BC(v61);
    sub_2315CD2BC(v62);
  }

  OUTLINED_FUNCTION_6_1();
  sub_231605E48();
  sub_231605E78();
  sub_231605E88();
  sub_231605E58();
  (v0)(v3, v90);
  v82 = swift_task_alloc();
  *(v1 + 320) = v82;
  *v82 = v1;
  OUTLINED_FUNCTION_1_4(v82);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821C5F58](v83);
}

uint64_t sub_2315CB818()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  (*(v2[27] + 8))(v2[28], v2[26]);
  if (v0)
  {
    v3 = sub_2315CC038;
  }

  else
  {
    v3 = sub_2315CB980;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2315CB980()
{
  v93 = v2;
  sub_2315CD2BC(*(v2 + 280));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v86 = 136315138;
  while (1)
  {
    v7 = *(v2 + 312);
    if (((*(v2 + 304) - 1) & *(v2 + 304)) == 0)
    {
      while (!__OFADD__(v7, 1))
      {
        OUTLINED_FUNCTION_13_1();
        if (v10 == v11)
        {
          OUTLINED_FUNCTION_8_0();

          OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_9_2();

          __asm { BRAA            X1, X16 }
        }

        v7 = v8 + 1;
        if (*(v1 + 8 * v9 + 64))
        {
          v7 = v9;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

    v1 = *(v2 + 296);
LABEL_9:
    OUTLINED_FUNCTION_5_4(v7);
    v91 = v12;
    v4 = v14 | (v13 << 6);
    v15 = *(v1 + 48);
    v16 = sub_231606158();
    OUTLINED_FUNCTION_1_0();
    v18 = v17;
    v19 = OUTLINED_FUNCTION_11_2();
    v20(v19);
    v21 = OUTLINED_FUNCTION_2_4();
    v22(v21);
    *(v3 + v1) = v15;
    v23 = *(v91 + 16);
    sub_2315CCBA8(v3, v5);

    if (*(v23 + 16))
    {
      v24 = sub_2315CD1E4(*(v2 + 272));
      if (v25)
      {
        break;
      }
    }

    v27 = *(v16 + 8);
    v6 = v16 + 8;
    v26 = v27;
    v27(*(v2 + 272), v4);
    if (qword_280FE9550 != -1)
    {
      swift_once();
    }

    v28 = *(v2 + 240);
    v29 = sub_2316066E8();
    __swift_project_value_buffer(v29, qword_280FE9558);
    v30 = OUTLINED_FUNCTION_20_1();
    sub_2315CCBA8(v30, v28);
    v31 = sub_2316066C8();
    v5 = sub_231606978();
    v32 = os_log_type_enabled(v31, v5);
    v0 = *(v2 + 280);
    if (v32)
    {
      v90 = *(v2 + 280);
      v6 = v4;
      v33 = *(v2 + 248);
      log = *(v2 + 240);
      v34 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v92[0] = v3;
      OUTLINED_FUNCTION_21_0(v3, v35, v36, v37, v38, v39, v40, v41, v81, v82, v83, v84, v86);

      OUTLINED_FUNCTION_0_4();
      sub_2315CD5A8(&qword_27DD603B8, 255, v42, MEMORY[0x277D60BD8]);
      v4 = sub_231606BC8();
      v0 = v43;
      sub_2315CD2BC(log);
      v26(v33, v6);
      v1 = sub_2315B1574(v4, v0, v92);

      *(v34 + 4) = v1;
      _os_log_impl(&dword_2315AF000, v31, v5, "Unknown vehicle of %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v3);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_7_1();

      v44 = v90;
    }

    else
    {
      v1 = *(v2 + 240);

      sub_2315CD2BC(v1);
      v44 = v0;
    }

    sub_2315CD2BC(v44);
  }

  OUTLINED_FUNCTION_14_1(v24);
  sub_2315B4648((v2 + 56), v2 + 16);
  v47 = *(v16 + 8);
  v6 = v16 + 8;
  v0 = v47;
  (v47)(v18, v4);
  if (qword_280FE9550 == -1)
  {
    goto LABEL_21;
  }

LABEL_28:
  OUTLINED_FUNCTION_0(&qword_280FE9550);
LABEL_21:
  v48 = *(v2 + 280);
  v50 = *(v2 + 256);
  v49 = *(v2 + 264);
  v51 = sub_2316066E8();
  __swift_project_value_buffer(v51, qword_280FE9558);
  v52 = OUTLINED_FUNCTION_20_1();
  sub_2315CCBA8(v52, v49);
  sub_2315CCBA8(v48, v50);
  sub_2315B4568(v2 + 16, v2 + 96);
  v53 = sub_2316066C8();
  v54 = sub_231606968();
  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v2 + 256);
  v57 = *(v2 + 264);
  v85 = v4;
  if (v55)
  {
    loga = v53;
    v58 = OUTLINED_FUNCTION_16_1();
    v87 = swift_slowAlloc();
    v92[0] = v87;
    *v58 = 136315650;
    sub_2315CCBA8(v57, v53);

    OUTLINED_FUNCTION_0_4();
    sub_2315CD5A8(v59, 255, v60, MEMORY[0x277D60BD8]);
    OUTLINED_FUNCTION_17_2();
    sub_231606BC8();
    OUTLINED_FUNCTION_23_1();
    HIDWORD(v83) = v54;
    (v0)(v53, v3);
    sub_2315B1574(v6, v4, v92);

    OUTLINED_FUNCTION_15_1();
    v61 = OUTLINED_FUNCTION_12_2();
    v0(v61);
    sub_231605DD8();
    v62 = OUTLINED_FUNCTION_17_2();
    v63 = MEMORY[0x231932D20](v62);
    v65 = v64;

    sub_2315CD2BC(v56);
    sub_2315B1574(v63, v65, v92);

    OUTLINED_FUNCTION_24_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603C0, &qword_231608A10);
    v66 = sub_2316067A8();
    v4 = v67;
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
    v68 = sub_2315B1574(v66, v4, v92);

    *(v58 + 24) = v68;
    _os_log_impl(&dword_2315AF000, loga, v54, "Dispatching %s of %s to %s", v58, 0x20u);
    OUTLINED_FUNCTION_22_0(v69, v70, v71, v72, v73, v74, v75, v76, v81, v82, v83, v85, v87);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
    sub_2315CD2BC(v56);
    sub_2315CD2BC(v57);
  }

  OUTLINED_FUNCTION_6_1();
  sub_231605E48();
  sub_231605E78();
  sub_231605E88();
  sub_231605E58();
  (v0)(v4, v85);
  v77 = swift_task_alloc();
  *(v2 + 320) = v77;
  *v77 = v2;
  OUTLINED_FUNCTION_1_4(v77);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821C5F58](v78);
}

uint64_t sub_2315CC038()
{
  v1 = *(v0 + 280);

  sub_2315CD2BC(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();

  return v2();
}

void *sub_2315CC124(uint64_t a1)
{
  v2 = sub_231606158();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v50 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_231605DD8();
  v5 = MEMORY[0x28223BE20](v49);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v35 - v7;
  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  v45 = v11;
  v46 = v10;
  v44 = v11 + 16;
  v47 = (v11 + 32);
  v38 = v3 + 32;
  v39 = v3;
  v37 = (v3 + 8);
  v36 = xmmword_231608640;
  v40 = v2;
  v41 = a1;
  while (1)
  {
    if (v46 == v8)
    {

      return v9;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v13 = *(v45 + 72);
    (*(v45 + 16))(v48, a1 + v12 + v13 * v8, v49);
    v14 = v50;
    sub_231605DA8();
    v16 = sub_2315CD1E4(v14);
    v17 = v9[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v20 = v15;
    if (v9[3] < v19)
    {
      sub_2315DB554(v19, 1);
      v9 = v51;
      v21 = sub_2315CD1E4(v50);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      v16 = v21;
    }

    if (v20)
    {
      (*v37)(v50, v2);
      v23 = v9[7];
      v24 = *v47;
      (*v47)(v43, v48, v49);
      v25 = *(v23 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v16) = v25;
      v42 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2315DA0CC();
        v25 = v32;
        *(v23 + 8 * v16) = v32;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_2315DA0CC();
        v25 = v33;
        *(v23 + 8 * v16) = v33;
      }

      v2 = v40;
      *(v25 + 16) = v27 + 1;
      v42((v25 + v12 + v27 * v13), v43, v49);
      a1 = v41;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603F0, &qword_2316095B0);
      v28 = swift_allocObject();
      *(v28 + 16) = v36;
      (*v47)((v28 + v12), v48, v49);
      v9[(v16 >> 6) + 8] |= 1 << v16;
      (*(v39 + 32))(v9[6] + *(v39 + 72) * v16, v50, v2);
      *(v9[7] + 8 * v16) = v28;
      v29 = v9[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_20;
      }

      v9[2] = v31;
    }

    ++v8;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_231606C08();
  __break(1u);
  return result;
}

uint64_t static InServiceSuggestionsDispatcher.create(eventDispatcher:clock:selfLogger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603C8, &qword_231608A18);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603D0, &unk_231608A20) - 8);
  v34 = *(*v6 + 72);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2316089F0;
  v8 = v35 + v7;
  v9 = (v35 + v7 + v6[14]);
  v10 = *MEMORY[0x277D607E8];
  v11 = sub_231605CD8();
  v33 = *(*(v11 - 8) + 104);
  v33(v35 + v7, v10, v11);
  v12 = *MEMORY[0x277D60BA0];
  v30 = *MEMORY[0x277D60BA0];
  v13 = sub_231606158();
  v29 = *(*(v13 - 8) + 104);
  (v29)(v35 + v7, v12, v13);
  sub_2315B4568(a1, v40);
  sub_2315B4568(a2, v39);
  v14 = type metadata accessor for InAppEventDispatcher();
  v15 = swift_allocObject();
  sub_2315B4648(v40, v15 + 16);
  sub_2315B4648(v39, v15 + 56);
  v9[3] = v14;
  v16 = sub_2315CD5A8(qword_280FE8F28, 255, type metadata accessor for InAppEventDispatcher, &unk_231607D58);
  v9[4] = v16;
  *v9 = v15;
  v17 = (v8 + v34 + v6[14]);
  v33(v8 + v34, *MEMORY[0x277D607E0], v11);
  (v29)(v8 + v34, v30, v13);
  sub_2315B4568(a1, v40);
  sub_2315B4568(a2, v39);
  v18 = swift_allocObject();
  sub_2315B4648(v40, v18 + 16);
  sub_2315B4648(v39, v18 + 56);
  v17[3] = v14;
  v17[4] = v16;
  *v17 = v18;
  v19 = (v8 + 2 * v34 + v6[14]);
  v29();
  v20 = sub_231605C08();
  sub_2315B4568(a3, v40);
  v21 = sub_231605BF8();
  v22 = MEMORY[0x277D60678];
  v19[3] = v20;
  v19[4] = v22;
  *v19 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603C0, &qword_231608A10);
  OUTLINED_FUNCTION_0_4();
  sub_2315CD5A8(v23, 255, v24, MEMORY[0x277D60BB8]);
  v25 = sub_231606728();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  a4[3] = v37;
  result = sub_2315CD5A8(qword_280FE9298, v27, type metadata accessor for InServiceSuggestionsDispatcher, &protocol conformance descriptor for InServiceSuggestionsDispatcher);
  a4[4] = result;
  *a4 = v26;
  return result;
}

uint64_t InServiceSuggestionsDispatcher.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2315CC98C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315CCA34;

  return InServiceSuggestionsDispatcher.dispatch(suggestions:presentationContext:)(a1, a2);
}

uint64_t sub_2315CCA34()
{

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_2315CCB4C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2315B1574(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2315CCBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603B0, &qword_231608A08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315CCC18(uint64_t a1, unint64_t a2)
{
  v3 = sub_2315CCC64(a1, a2);
  sub_2315CCD7C(&unk_2846231C8);
  return v3;
}

uint64_t sub_2315CCC64(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_231606808())
  {
    result = sub_2315CCE60(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_231606A18();
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
          result = sub_231606A68();
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