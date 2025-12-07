uint64_t sub_22311FC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22311F8F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22311FC60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22311FC30();
  *a1 = result;
  return result;
}

uint64_t sub_22311FC88(uint64_t a1)
{
  v2 = sub_2230E23F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311FCC4(uint64_t a1)
{
  v2 = sub_2230E23F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void FlowOutputMessage.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v63 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E48, &qword_223207A50);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v27);
  v29 = v62 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E60, &qword_223207A90);
  OUTLINED_FUNCTION_9();
  v31 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  v33 = v26[3];
  v64 = v26;
  __swift_project_boxed_opaque_existential_1(v26, v33);
  sub_2230E23F8();
  OUTLINED_FUNCTION_23_1();
  sub_223200794();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
    type metadata accessor for FlowOutputMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v65[0]) = 0;
    OUTLINED_FUNCTION_10_5();
    v34 = sub_223200494();
    v62[1] = v31;
    v35 = (v63 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_invocationId);
    *v35 = v34;
    v35[1] = v36;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    if (*(&v65[0] + 1) >> 60 == 15)
    {
      v37 = 0;
    }

    else
    {
      objc_allocWithZone(MEMORY[0x277CCAAC8]);
      v38 = OUTLINED_FUNCTION_22_1();
      sub_223110BA0(v38, v39);
      v40 = OUTLINED_FUNCTION_22_1();
      sub_223120750(v40, v41);
      v42 = OUTLINED_FUNCTION_8_0();
      sub_2230FB7F4(v42, v43, v44);
      sub_2232000C4();
      v62[0] = v45;
      v37 = sub_223200294();
      v46 = OUTLINED_FUNCTION_22_1();
      sub_22310A610(v46, v47);
    }

    v48 = v63;
    v49 = qword_280FCDFA0 + 96;
    *(v63 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_command) = v37;
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    if (*(&v65[0] + 1) >> 60 == 15)
    {
      v50 = 0;
    }

    else
    {
      objc_allocWithZone(MEMORY[0x277CCAAC8]);
      v51 = OUTLINED_FUNCTION_21();
      sub_223110BA0(v51, v52);
      v53 = OUTLINED_FUNCTION_21();
      v55 = sub_223120750(v53, v54);
      sub_2230FB7F4(0, &qword_280FCA3B8, 0x277CEF210);
      sub_2232000C4();
      v50 = sub_223200294();
      v56 = OUTLINED_FUNCTION_21();
      sub_22310A610(v56, v57);

      v48 = v63;
      v49 = &qword_280FCDFA0[12];
    }

    *(v48 + v49[509]) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E68, &qword_223207A98);
    sub_2230E2B44(&qword_27D057E70, &qword_27D057E78, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    *(v48 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_systemDialogActs) = *&v65[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E80, &qword_223207AA0);
    sub_2230E2BD8(&qword_27D057E88, &qword_27D057E90, &protocol conformance descriptor for Siri_Nlu_External_Task);
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    *(v48 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_activeTasks) = *&v65[0];
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    *(v48 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_completedTasks) = *&v65[0];
    sub_2231FFE54();
    LOBYTE(v65[0]) = 6;
    OUTLINED_FUNCTION_7_8();
    sub_2230E2D2C(v58, v59);
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    sub_223120830(v29, v48 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_legacyContext);
    LOBYTE(v65[0]) = 7;
    OUTLINED_FUNCTION_10_5();
    *(v48 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_listenAfterSpeaking) = sub_2232004A4();
    sub_223105D70();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_5();
    sub_223200554();
    *(v48 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_executionSource) = v65[0];
    sub_2231208A0();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    *(v48 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_inAppResponse) = v65[0];
    sub_2230F7158(v64, v65);
    RequestMessageBase.init(from:)(v65);
    v60 = OUTLINED_FUNCTION_9_5();
    v61(v60);
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22312064C()
{

  sub_2230E4AC0(v0 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_legacyContext);
}

id FlowOutputMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowOutputMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_223120750(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2231FFD14();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_2231FFD04();

    swift_willThrow();
  }

  sub_2230D94DC(a1, a2);
  return v7;
}

uint64_t sub_223120830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E48, &qword_223207A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2231208A0()
{
  result = qword_27D057EA0;
  if (!qword_27D057EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EA0);
  }

  return result;
}

void sub_2231208FC(uint64_t a1)
{
  sub_223120D2C(319, &qword_280FCE620, MEMORY[0x277D5DC40]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_223120A2C(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_223120C88(319, &qword_280FCA408, &qword_280FCA410, 0x277D471B0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_223120C88(319, &qword_280FCA3B0, &qword_280FCA3B8, 0x277CEF210);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_223120CDC(319, &qword_280FCA4A0, &qword_27D057E68, &qword_223207A98);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_223120CDC(319, &qword_280FCA4B8, &qword_27D057E80, &qword_223207AA0);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_223120D2C(319, &qword_280FCE620, MEMORY[0x277D5DC40]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
    if (v10 > 0x3F)
    {
      return v4;
    }

    sub_2230D525C(319, &qword_280FCAC80, &type metadata for RequestSummary.ExecutionSource);
    if (v11 > 0x3F)
    {
      return v4;
    }

    sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
    if (v12 > 0x3F)
    {
      return v4;
    }

    sub_223120D2C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
    if (v13 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_2230D525C(319, &qword_280FCE570, &type metadata for FlowOutputMessage.InAppResponse);
      v2 = v14;
      if (v15 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_223120C88(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2230FB7F4(255, a3, a4);
    OUTLINED_FUNCTION_24_1();
    v5 = sub_2232002D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_223120CDC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_24_1();
    v5 = sub_2232002D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_223120D2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_24_1();
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FlowOutputMessage.InAppResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_223120E3C()
{
  result = qword_27D057EB0;
  if (!qword_27D057EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EB0);
  }

  return result;
}

unint64_t sub_223120E94()
{
  result = qword_27D057EB8;
  if (!qword_27D057EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EB8);
  }

  return result;
}

unint64_t sub_223120EEC()
{
  result = qword_280FCE598;
  if (!qword_280FCE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE598);
  }

  return result;
}

unint64_t sub_223120F44()
{
  result = qword_280FCE5A0;
  if (!qword_280FCE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE5A0);
  }

  return result;
}

unint64_t sub_223120F9C()
{
  result = qword_280FCE580;
  if (!qword_280FCE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE580);
  }

  return result;
}

unint64_t sub_223120FF4()
{
  result = qword_280FCE588;
  if (!qword_280FCE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE588);
  }

  return result;
}

uint64_t FlowOutputResponseMessage.outputId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_outputId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void *FlowOutputResponseMessage.commandResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_commandResult);
  v2 = v1;
  return v1;
}

uint64_t sub_223121104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974757074756FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52646E616D6D6F63 && a2 == 0xED0000746C757365)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2231211D4(char a1)
{
  if (a1)
  {
    return 0x52646E616D6D6F63;
  }

  else
  {
    return 0x644974757074756FLL;
  }
}

uint64_t sub_223121220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223121104(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223121248(uint64_t a1)
{
  v2 = sub_2231224FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223121284(uint64_t a1)
{
  v2 = sub_2231224FC();

  return MEMORY[0x2821FE720](a1, v2);
}

id FlowOutputResponseMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v62 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_15();
  v58 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - v6;
  v8 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v60 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v57 = v11;
  MEMORY[0x28223BE20](v12);
  v59 = &v54 - v13;
  v14 = type metadata accessor for FlowOutputResponseMessage.Builder(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v15[8];
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v8);
  v19 = &v17[v15[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = v15[10];
  __swift_storeEnumTagSinglePayload(&v17[v20], 1, 1, v8);
  v21 = v15[11];
  *&v17[v21] = 0;
  a1(v17);
  v22 = *v17;
  if (v22 == 15)
  {
    goto LABEL_9;
  }

  v23 = *(v17 + 2);
  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2230D69D4(v7);
LABEL_9:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v31 = sub_223200014();
    __swift_project_value_buffer(v31, qword_280FCE830);
    v32 = sub_223200004();
    v33 = sub_223200254();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v63 = v35;
      *v34 = 136446210;
      v36 = sub_2230F7898(ObjectType);
      v38 = sub_2231A5D38(v36, v37, &v63);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2230CE000, v32, v33, "Could not build %{public}s: Builder has missing required fields", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DD6780](v35, -1, -1);
      MEMORY[0x223DD6780](v34, -1, -1);
    }

    sub_223122480(v17);
    type metadata accessor for FlowOutputResponseMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v55 = v24;
  v56 = v23;
  v26 = v59;
  v25 = v60;
  v54 = *(v60 + 32);
  v54(v59, v7, v8);
  v27 = *(v19 + 1);
  if (!v27)
  {
    (*(v25 + 8))(v26, v8);
    goto LABEL_9;
  }

  v28 = *v19;
  v29 = &v17[v20];
  v30 = v58;
  sub_2230D1480(v29, v58);
  if (__swift_getEnumTagSinglePayload(v30, 1, v8) == 1)
  {
    sub_2230D69D4(v30);
    (*(v60 + 8))(v59, v8);
    goto LABEL_9;
  }

  v41 = v57;
  v54(v57, v30, v8);
  v42 = v60;
  v43 = v28;
  v44 = v62;
  v45 = (*(v60 + 16))(v62 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_outputId, v41, v8);
  ObjectType = &v54;
  v46 = *&v17[v21];
  v47 = v42;
  *(v44 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_commandResult) = v46;
  MEMORY[0x28223BE20](v45);
  *(&v54 - 48) = v22;
  v48 = v56;
  *(&v54 - 5) = v55;
  *(&v54 - 4) = v48;
  v49 = v59;
  *(&v54 - 3) = v59;
  *(&v54 - 2) = v43;
  *(&v54 - 1) = v27;
  v51 = v50;
  v39 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v52 = *(v47 + 8);
  v52(v41, v8);
  v53 = v39;
  sub_223122480(v17);
  if (v39)
  {
  }

  v52(v49, v8);
  return v39;
}

void *FlowOutputResponseMessage.init(from:)(void *a1)
{
  v3 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v22 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057EC0, &qword_223207EA8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v9 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2231224FC();
  sub_223200794();
  if (v1)
  {
    v10 = 0;
    __swift_destroy_boxed_opaque_existential_1(v24);
    type metadata accessor for FlowOutputResponseMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_2230D45E8(&qword_27D057ED0, MEMORY[0x277CC9618]);
    sub_223200554();
    (*(v22 + 32))(v23 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_outputId, v7, v3);
    v27 = 1;
    sub_2230FB7A0();
    sub_2232004C4();
    v12 = v24;
    v13 = v26;
    if (v26 >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      v15 = v25;
      v20 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
      sub_223110BA0(v15, v13);
      v21 = v15;
      v20 = sub_223120750(v15, v13);
      sub_223122550();
      sub_2232000C4();
      v19[1] = v16;
      v14 = sub_223200294();
      sub_22310A610(v21, v13);
    }

    *(v23 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_commandResult) = v14;
    sub_2230F7158(v12, &v25);
    v10 = RequestMessageBase.init(from:)(&v25);
    v17 = OUTLINED_FUNCTION_1_9();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return v10;
}

uint64_t sub_223121D08(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057ED8, &qword_223207EB0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231224FC();
  sub_2232007A4();
  LOBYTE(v22) = 0;
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688, MEMORY[0x277CC95F8]);
  sub_223200654();
  if (!v2)
  {
    v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_commandResult);
    if (v10)
    {
      v20 = v1;
      v11 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
      v12 = v10;
      v13 = [v11 initRequiringSecureCoding_];
      v14 = *MEMORY[0x277CCA308];
      v21 = v12;
      [v13 encodeObject:v12 forKey:v14];
      v15 = [v13 encodedData];
      v16 = sub_2231FFD24();
      v18 = v17;

      v22 = v16;
      v23 = v18;
      v24 = 1;
      sub_2230D7754();
      sub_223200654();
      sub_2230D94DC(v22, v23);
    }

    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t FlowOutputResponseMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FlowOutputResponseMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t FlowOutputResponseMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowOutputResponseMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t FlowOutputResponseMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_13() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t FlowOutputResponseMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for FlowOutputResponseMessage.Builder(0) + 28));

  return v1;
}

uint64_t FlowOutputResponseMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FlowOutputResponseMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FlowOutputResponseMessage.Builder.outputId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowOutputResponseMessage.Builder(0) + 32);

  return sub_2230D1480(v3, a1);
}

uint64_t FlowOutputResponseMessage.Builder.outputId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_13() + 32);

  return sub_2230D4E04(v0, v2);
}

void *FlowOutputResponseMessage.Builder.commandResult.getter()
{
  v1 = *(v0 + *(type metadata accessor for FlowOutputResponseMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void FlowOutputResponseMessage.Builder.commandResult.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_13() + 36);

  *(v1 + v2) = v0;
}

void sub_223122364()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_outputId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_commandResult);
}

id FlowOutputResponseMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowOutputResponseMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223122480(uint64_t a1)
{
  v2 = type metadata accessor for FlowOutputResponseMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2231224FC()
{
  result = qword_27D057EC8;
  if (!qword_27D057EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EC8);
  }

  return result;
}

unint64_t sub_223122550()
{
  result = qword_280FCA410;
  if (!qword_280FCA410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FCA410);
  }

  return result;
}

uint64_t sub_22312259C(uint64_t a1)
{
  result = sub_2231FFDA4();
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

uint64_t sub_223122688(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231227B8(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2231227B8(319, &qword_280FCA408, sub_223122550);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_2231227B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FlowOutputResponseMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231228EC()
{
  result = qword_27D057EF0;
  if (!qword_27D057EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EF0);
  }

  return result;
}

unint64_t sub_223122944()
{
  result = qword_27D057EF8;
  if (!qword_27D057EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EF8);
  }

  return result;
}

unint64_t sub_22312299C()
{
  result = qword_27D057F00;
  if (!qword_27D057F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F00);
  }

  return result;
}

id FlowPluginInfoMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return FlowPluginInfoMessage.init(build:)(v1);
}

id FlowPluginInfoMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v50 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v48 = v7;
  MEMORY[0x28223BE20](v8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowPluginInfoMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v11[11];
  v13[v17] = 2;
  v18 = v11[12];
  v13[v18] = 2;
  a1(v13);
  v19 = *v13;
  if (v19 == 15)
  {
    goto LABEL_10;
  }

  v20 = *(v13 + 2);
  if (!v20)
  {
    goto LABEL_10;
  }

  v46 = *(v13 + 1);
  sub_2230D1480(&v13[v14], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D69D4(v5);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v26 = sub_223200014();
    __swift_project_value_buffer(v26, qword_280FCE830);
    v27 = sub_223200004();
    v28 = sub_223200254();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51 = v30;
      *v29 = 136446210;
      v31 = sub_2230F7898(ObjectType);
      v33 = sub_2231A5D38(v31, v32, &v51);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2230CE000, v27, v28, "Could not build %{public}s: Builder has missing required fields", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x223DD6780](v30, -1, -1);
      MEMORY[0x223DD6780](v29, -1, -1);
    }

    sub_223123908(v13);
    type metadata accessor for FlowPluginInfoMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v45 = v20;
  v22 = v47;
  v21 = v48;
  v23 = (*(v48 + 32))(v47, v5, v6);
  if (!*(v15 + 1) || !*(v16 + 1) || (v24 = v13[v17], v24 == 2) || (v25 = v13[v18], v25 == 2))
  {
    (*(v21 + 8))(v22, v6);
    goto LABEL_10;
  }

  v36 = v22;
  v37 = v50;
  *(v50 + OBJC_IVAR____TtC16SiriMessageTypes21FlowPluginInfoMessage_supportsOnDeviceNL) = v24 & 1;
  *(v37 + OBJC_IVAR____TtC16SiriMessageTypes21FlowPluginInfoMessage_isPersonalRequest) = v25 & 1;
  MEMORY[0x28223BE20](v23);
  *(&v44 - 64) = v19;
  v38 = v45;
  *(&v44 - 7) = v46;
  *(&v44 - 6) = v38;
  *(&v44 - 5) = v36;
  *(&v44 - 4) = v39;
  *(&v44 - 3) = v40;
  *(&v44 - 2) = v41;
  *(&v44 - 1) = v42;
  v34 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v43 = v34;
  sub_223123908(v13);
  if (v34)
  {
  }

  (*(v48 + 8))(v36, v6);
  return v34;
}

void *FlowPluginInfoMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057F08, &qword_223208048);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223123984();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FlowPluginInfoMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21FlowPluginInfoMessage_supportsOnDeviceNL) = OUTLINED_FUNCTION_5_12() & 1;
    LOBYTE(v9[0]) = 1;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21FlowPluginInfoMessage_isPersonalRequest) = OUTLINED_FUNCTION_5_12() & 1;
    sub_2230F7158(a1, v9);
    v6 = ResultCandidateRequestMessageBase.init(from:)(v9);
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_223123188(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057F18, &qword_223208050);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223123984();
  sub_2232007A4();
  v12 = 0;
  sub_223200604();
  if (!v1)
  {
    v11 = 1;
    sub_223200604();
    sub_223190B78(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_22312330C(uint64_t a1, uint64_t a2)
{
  v2 = sub_223200464();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223123384@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22312330C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2231233B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230E9FF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231233E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22312330C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223123410(uint64_t a1)
{
  v2 = sub_223123984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312344C(uint64_t a1)
{
  v2 = sub_223123984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlowPluginInfoMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FlowPluginInfoMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FlowPluginInfoMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowPluginInfoMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t FlowPluginInfoMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_14() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t FlowPluginInfoMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for FlowPluginInfoMessage.Builder(0) + 28));

  return v1;
}

uint64_t FlowPluginInfoMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FlowPluginInfoMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FlowPluginInfoMessage.Builder.resultCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for FlowPluginInfoMessage.Builder(0) + 32));

  return v1;
}

uint64_t FlowPluginInfoMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FlowPluginInfoMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FlowPluginInfoMessage.Builder.supportsOnDeviceNL.setter(char a1)
{
  result = type metadata accessor for FlowPluginInfoMessage.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t FlowPluginInfoMessage.Builder.isPersonalRequest.setter(char a1)
{
  result = type metadata accessor for FlowPluginInfoMessage.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

id FlowPluginInfoMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowPluginInfoMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223123908(uint64_t a1)
{
  v2 = type metadata accessor for FlowPluginInfoMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223123984()
{
  result = qword_27D057F10;
  if (!qword_27D057F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F10);
  }

  return result;
}

uint64_t sub_223123A78(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for FlowPluginInfoMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223123C60()
{
  result = qword_27D057F30;
  if (!qword_27D057F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F30);
  }

  return result;
}

unint64_t sub_223123CB8()
{
  result = qword_27D057F38;
  if (!qword_27D057F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F38);
  }

  return result;
}

unint64_t sub_223123D10()
{
  result = qword_27D057F40;
  if (!qword_27D057F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F40);
  }

  return result;
}

SiriMessageTypes::GenAIPartner_optional __swiftcall GenAIPartner.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GenAIPartner.rawValue.getter()
{
  result = 0x54504774616863;
  switch(*v0)
  {
    case 1:
      result = 0x6574696D616E7964;
      break;
    case 2:
      result = 0x6F7274696ELL;
      break;
    case 3:
      result = 0x74706774616863;
      break;
    case 4:
      result = 0x6E6F736D697263;
      break;
    case 5:
      result = 0x6F6769646E69;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_223123E80()
{
  result = qword_27D057F48;
  if (!qword_27D057F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F48);
  }

  return result;
}

uint64_t sub_223123EF8@<X0>(uint64_t *a1@<X8>)
{
  result = GenAIPartner.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_223123FE0()
{
  result = qword_27D057F50;
  if (!qword_27D057F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057F58, &qword_223208320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F50);
  }

  return result;
}

unint64_t sub_223124064()
{
  result = qword_27D057F60;
  if (!qword_27D057F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F60);
  }

  return result;
}

SiriMessageTypes::GestureEvent_optional __swiftcall GestureEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GestureEvent.rawValue.getter()
{
  v1 = 6582126;
  if (*v0 != 1)
  {
    v1 = 0x656B616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_223124194@<X0>(uint64_t *a1@<X8>)
{
  result = GestureEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriMessageTypes::GestureIntent_optional __swiftcall GestureIntent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GestureIntent.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6C65636E6163;
      break;
    case 2:
      result = 0x747065636361;
      break;
    case 3:
      result = 0x7463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22312436C@<X0>(uint64_t *a1@<X8>)
{
  result = GestureIntent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 GestureInput.init(build:)@<Q0>(void (*a1)(__int16 *)@<X0>, unint64_t *a2@<X8>)
{
  v13 = 1027;
  v14 = 0uLL;
  a1(&v13);
  if (v13 == 3 || HIBYTE(v13) == 4)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v3 = sub_223200014();
    __swift_project_value_buffer(v3, qword_280FCE830);
    v4 = sub_223200004();
    v5 = sub_223200254();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 136446210;
      v12 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057F68, &unk_2232083A0);
      v8 = sub_223200104();
      v10 = sub_2231A5D38(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2230CE000, v4, v5, "Could not build %{public}s: Builder has missing required fields", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 1;
  }

  else
  {
    result = v14;
    *a2 = v13 | (HIBYTE(v13) << 8);
    *(a2 + 1) = result;
  }

  return result;
}

uint64_t GestureInput.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  sub_223200374();
  v3 = MEMORY[0x223DD5AA0](0xD00000000000001BLL, 0x8000000223222AD0);
  LOBYTE(v19) = v1;
  OUTLINED_FUNCTION_15_2(v3, v4, &type metadata for GestureEvent, v5, v6, v7, v8, v9, v19, v21, 0);
  v10 = MEMORY[0x223DD5AA0](0xD000000000000011, 0x8000000223222AF0);
  LOBYTE(v20) = v2;
  OUTLINED_FUNCTION_15_2(v10, v11, &type metadata for GestureIntent, v12, v13, v14, v15, v16, v20, v22, v23);
  MEMORY[0x223DD5AA0](0x617265747475202CLL, 0xED0000203A65636ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
  v17 = sub_223200104();
  MEMORY[0x223DD5AA0](v17);

  MEMORY[0x223DD5AA0](41, 0xE100000000000000);
  return v24;
}

uint64_t GestureInput.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t static GestureInput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (sub_223106C38() & 1) != 0 && (sub_223106B1C())
  {
    if (v3)
    {
      if (v4)
      {
        v6 = v2 == v5 && v3 == v4;
        if (v6 || (sub_2232006B4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2231248B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4565727574736567 && a2 == 0xEC000000746E6576;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4965727574736567 && a2 == 0xED0000746E65746ELL;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_2231249D8(char a1)
{
  if (!a1)
  {
    return 0x4565727574736567;
  }

  if (a1 == 1)
  {
    return 0x4965727574736567;
  }

  return 0x636E617265747475;
}

uint64_t sub_223124A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231248B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223124A78(uint64_t a1)
{
  v2 = sub_223125F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223124AB4(uint64_t a1)
{
  v2 = sub_223125F04();

  return MEMORY[0x2821FE720](a1, v2);
}

void GestureInput.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057F70, &qword_2232083B0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = *(v0 + 1);
  v10 = *(v0 + 8);
  v11[1] = *(v0 + 16);
  v11[2] = v10;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_223125F04();
  sub_2232007A4();
  sub_223125F58();
  OUTLINED_FUNCTION_12_1();
  sub_223200654();
  if (!v1)
  {
    sub_223125FAC();
    OUTLINED_FUNCTION_12_1();
    sub_223200654();
    OUTLINED_FUNCTION_12_1();
    sub_2232005C4();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_9_0();
}

void GestureInput.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, unsigned __int8 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_8_1();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057F90, &qword_2232083B8);
  OUTLINED_FUNCTION_9();
  v35 = v34;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v43 - v37;
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_223125F04();
  sub_223200794();
  if (!v26)
  {
    a15 = 0;
    sub_223126000();
    OUTLINED_FUNCTION_16_3(&type metadata for GestureEvent, &a15);
    v39 = a16;
    a13 = 1;
    sub_223126054();
    OUTLINED_FUNCTION_16_3(&type metadata for GestureIntent, &a13);
    v44 = a14;
    v40 = sub_223200494();
    v42 = v41;
    (*(v35 + 8))(v38, v33);
    *v32 = v39;
    *(v32 + 1) = v44;
    *(v32 + 8) = v40;
    *(v32 + 16) = v42;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223124E6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_223200464();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223124F1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223124E6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_223124F4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230EA1A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223124F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223124E6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223124FA8(uint64_t a1)
{
  v2 = sub_223126144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223124FE4(uint64_t a1)
{
  v2 = sub_223126144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GestureBasedResultCandidateMessage.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture + 8);
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

id GestureBasedResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return GestureBasedResultCandidateMessage.init(build:)(v1);
}

id GestureBasedResultCandidateMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for GestureBasedResultCandidateMessage.Builder(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v6[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[v6[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v8[v6[10]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v8[v6[11]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v8[v6[12]];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = 1;
  v15 = v6[13];
  v16 = type metadata accessor for PromptInfo(0);
  __swift_storeEnumTagSinglePayload(&v8[v15], 1, 1, v16);
  a1(v8);
  v17 = *(v14 + 2);
  if (v17 == 1)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v18 = sub_223200014();
    __swift_project_value_buffer(v18, qword_280FCE830);
    v19 = sub_223200004();
    v20 = sub_223200254();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136446210;
      v23 = sub_2230F7898(ObjectType);
      v25 = sub_2231A5D38(v23, v24, &v32);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2230CE000, v19, v20, "Could not build %{public}s: Builder has missing required field: gesture", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    sub_2231260C8(v8);
    type metadata accessor for GestureBasedResultCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v27 = *(v14 + 1);
    v28 = *v14 >> 8;
    v29 = v2 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture;
    *v29 = *v14;
    *(v29 + 1) = v28;
    *(v29 + 8) = v27;
    *(v29 + 16) = v17;
    sub_2230D30B8(&v8[v15], v2 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_promptInfo, &qword_27D057FA8, &qword_2232083C0);

    v26 = sub_2231EE170(v2, v8);
    sub_2231260C8(v8);
  }

  return v26;
}

void GestureBasedResultCandidateMessage.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v35 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FA8, &qword_2232083C0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v35 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FB0, &qword_2232083C8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_223126144();
  sub_223200794();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    type metadata accessor for GestureBasedResultCandidateMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_223126198();
    sub_223200554();
    v31 = v35;
    v32 = v35 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture;
    *v32 = v36;
    *(v32 + 8) = v37;
    type metadata accessor for PromptInfo(0);
    LOBYTE(v36) = 1;
    sub_2230E39F0(&qword_27D057FC8, &protocol conformance descriptor for PromptInfo);
    sub_2232004C4();
    sub_2231261EC(v29, v31 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_promptInfo);
    sub_2230F7158(v26, &v36);
    UserIdAwareResultCandidateMessageBase.init(from:)(&v36);
    v33 = OUTLINED_FUNCTION_1_10();
    v34(v33);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_223125700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v25 = v23;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FD0, &unk_2232083D0);
  OUTLINED_FUNCTION_9();
  v30 = v29;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v37 - v32;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_223126144();
  sub_2232007A4();
  v34 = *(v23 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture + 8);
  v35 = *(v23 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture + 16);
  v38 = *(v25 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture);
  v39 = v34;
  v40 = v35;
  sub_22312625C();

  sub_223200654();

  if (!v24)
  {
    LOBYTE(v38) = 1;
    type metadata accessor for PromptInfo(0);
    sub_2230E39F0(qword_280FCAD80, &protocol conformance descriptor for PromptInfo);
    sub_2232005E4();
    OUTLINED_FUNCTION_12_1();
    sub_2231EEBE4(v36);
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_9_0();
}

uint64_t GestureBasedResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t GestureBasedResultCandidateMessage.Builder.requestId.getter()
{
  type metadata accessor for GestureBasedResultCandidateMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t GestureBasedResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for GestureBasedResultCandidateMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t GestureBasedResultCandidateMessage.Builder.resultCandidateId.getter()
{
  type metadata accessor for GestureBasedResultCandidateMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t GestureBasedResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for GestureBasedResultCandidateMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t GestureBasedResultCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_20_3() + 36));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t GestureBasedResultCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for GestureBasedResultCandidateMessage.Builder(0) + 36));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t GestureBasedResultCandidateMessage.Builder.gesture.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_20_3() + 40));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;

  return sub_2231262B0(v3, v4, v5);
}

__n128 GestureBasedResultCandidateMessage.Builder.gesture.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for GestureBasedResultCandidateMessage.Builder(0) + 40));
  sub_2231262C4(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t sub_223125E38()
{

  v1 = v0 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_promptInfo;

  return sub_2230E3F68(v1);
}

id GestureBasedResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GestureBasedResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223125F04()
{
  result = qword_27D057F78;
  if (!qword_27D057F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F78);
  }

  return result;
}

unint64_t sub_223125F58()
{
  result = qword_27D057F80;
  if (!qword_27D057F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F80);
  }

  return result;
}

unint64_t sub_223125FAC()
{
  result = qword_27D057F88;
  if (!qword_27D057F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F88);
  }

  return result;
}

unint64_t sub_223126000()
{
  result = qword_27D057F98;
  if (!qword_27D057F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F98);
  }

  return result;
}

unint64_t sub_223126054()
{
  result = qword_27D057FA0;
  if (!qword_27D057FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FA0);
  }

  return result;
}

uint64_t sub_2231260C8(uint64_t a1)
{
  v2 = type metadata accessor for GestureBasedResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223126144()
{
  result = qword_27D057FB8;
  if (!qword_27D057FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FB8);
  }

  return result;
}

unint64_t sub_223126198()
{
  result = qword_27D057FC0;
  if (!qword_27D057FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FC0);
  }

  return result;
}

uint64_t sub_2231261EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FA8, &qword_2232083C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22312625C()
{
  result = qword_27D057FD8;
  if (!qword_27D057FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FD8);
  }

  return result;
}

uint64_t sub_2231262B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_2231262C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_2231262DC()
{
  result = qword_27D057FE0;
  if (!qword_27D057FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FE0);
  }

  return result;
}

unint64_t sub_223126334()
{
  result = qword_27D057FE8;
  if (!qword_27D057FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GestureIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_223126498(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      OUTLINED_FUNCTION_21_2();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2231264E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_223126554(uint64_t a1)
{
  sub_2230E42C0(319, qword_280FCAD38, type metadata accessor for PromptInfo);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_223126660(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230E42C0(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2230D525C(319, &qword_27D058000, &type metadata for GestureInput);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230E42C0(319, qword_280FCAD38, type metadata accessor for PromptInfo);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for GestureBasedResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2231268C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231269A4()
{
  result = qword_27D058008;
  if (!qword_27D058008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058008);
  }

  return result;
}

unint64_t sub_2231269FC()
{
  result = qword_27D058010;
  if (!qword_27D058010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058010);
  }

  return result;
}

unint64_t sub_223126A54()
{
  result = qword_27D058018;
  if (!qword_27D058018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058018);
  }

  return result;
}

unint64_t sub_223126AAC()
{
  result = qword_27D058020;
  if (!qword_27D058020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058020);
  }

  return result;
}

unint64_t sub_223126B04()
{
  result = qword_27D058028;
  if (!qword_27D058028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058028);
  }

  return result;
}

unint64_t sub_223126B5C()
{
  result = qword_27D058030;
  if (!qword_27D058030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058030);
  }

  return result;
}

unint64_t sub_223126BB0()
{
  result = qword_27D058038;
  if (!qword_27D058038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058038);
  }

  return result;
}

unint64_t sub_223126C04()
{
  result = qword_27D058040;
  if (!qword_27D058040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058040);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2)
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return type metadata accessor for GestureBasedResultCandidateMessage.Builder(0);
}

uint64_t sub_223126CD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_223200464();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223126D24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223126CD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_223126D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223126CD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223126D7C(uint64_t a1)
{
  v2 = sub_223127DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223126DB8(uint64_t a1)
{
  v2 = sub_223127DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IFGestureBasedCandidateMessage.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture + 8);
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

id IFGestureBasedCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IFGestureBasedCandidateMessage.init(build:)(v1);
}

id IFGestureBasedCandidateMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for IFGestureBasedCandidateMessage.Builder(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v6[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[v6[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v8[v6[10]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v8[v6[11]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v8[v6[12]];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = 1;
  v15 = v6[13];
  v16 = type metadata accessor for PromptInfo(0);
  __swift_storeEnumTagSinglePayload(&v8[v15], 1, 1, v16);
  a1(v8);
  v17 = *(v14 + 2);
  if (v17 == 1)
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v18 = sub_223200014();
    __swift_project_value_buffer(v18, qword_280FCE830);
    v19 = sub_223200004();
    v20 = sub_223200254();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136446210;
      v23 = sub_2230F7898(ObjectType);
      v25 = sub_2231A5D38(v23, v24, &v32);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2230CE000, v19, v20, "Could not build %{public}s: Builder has missing required field: gesture", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x223DD6780](v22, -1, -1);
      MEMORY[0x223DD6780](v21, -1, -1);
    }

    sub_223127D60(v8);
    type metadata accessor for IFGestureBasedCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v27 = *(v14 + 1);
    v28 = *v14 >> 8;
    v29 = v2 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture;
    *v29 = *v14;
    *(v29 + 1) = v28;
    *(v29 + 8) = v27;
    *(v29 + 16) = v17;
    sub_2230D30B8(&v8[v15], v2 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_promptInfo, &qword_27D057FA8, &qword_2232083C0);

    v26 = sub_2231EE19C(v2, v8);
    sub_223127D60(v8);
  }

  return v26;
}

void *IFGestureBasedCandidateMessage.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FA8, &qword_2232083C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058048, &qword_223208A08);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223127DDC();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v10 = v13;
    type metadata accessor for IFGestureBasedCandidateMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    sub_223126198();
    sub_223200554();
    v8 = v13;
    v9 = v13 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture;
    *v9 = v14;
    *(v9 + 8) = v15;
    type metadata accessor for PromptInfo(0);
    LOBYTE(v14) = 1;
    sub_2230E39F0(&qword_27D057FC8, &protocol conformance descriptor for PromptInfo);
    sub_2232004C4();
    sub_2231261EC(v5, v8 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_promptInfo);
    sub_2230F7158(a1, &v14);
    v10 = UserIdAwareResultCandidateMessageBase.init(from:)(&v14);
    v11 = OUTLINED_FUNCTION_1_10();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

uint64_t sub_22312752C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058058, &unk_223208A10);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223127DDC();
  sub_2232007A4();
  v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture + 8);
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture + 16);
  v15 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture);
  v16 = v11;
  v17 = v12;
  v18 = 0;
  sub_22312625C();

  sub_223200654();

  if (!v2)
  {
    LOBYTE(v15) = 1;
    type metadata accessor for PromptInfo(0);
    sub_2230E39F0(qword_280FCAD80, &protocol conformance descriptor for PromptInfo);
    sub_2232005E4();
    sub_2231EEBE4(a1);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t IFGestureBasedCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t IFGestureBasedCandidateMessage.Builder.requestId.getter()
{
  type metadata accessor for IFGestureBasedCandidateMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFGestureBasedCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IFGestureBasedCandidateMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IFGestureBasedCandidateMessage.Builder.resultCandidateId.getter()
{
  type metadata accessor for IFGestureBasedCandidateMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFGestureBasedCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IFGestureBasedCandidateMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IFGestureBasedCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_8_6() + 36));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t IFGestureBasedCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for IFGestureBasedCandidateMessage.Builder(0) + 36));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t IFGestureBasedCandidateMessage.Builder.gesture.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_8_6() + 40));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;

  return sub_2231262B0(v3, v4, v5);
}

__n128 IFGestureBasedCandidateMessage.Builder.gesture.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for IFGestureBasedCandidateMessage.Builder(0) + 40));
  sub_2231262C4(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t sub_223127C94()
{

  v1 = v0 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_promptInfo;

  return sub_2230E3F68(v1);
}

id IFGestureBasedCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IFGestureBasedCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223127D60(uint64_t a1)
{
  v2 = type metadata accessor for IFGestureBasedCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223127DDC()
{
  result = qword_27D058050;
  if (!qword_27D058050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058050);
  }

  return result;
}

void sub_223127E38(uint64_t a1)
{
  sub_2230E42C0(319, qword_280FCAD38, type metadata accessor for PromptInfo);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_223127F44(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230E42C0(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2230D525C(319, &qword_27D058000, &type metadata for GestureInput);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230E42C0(319, qword_280FCAD38, type metadata accessor for PromptInfo);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for IFGestureBasedCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231281AC()
{
  result = qword_27D058070;
  if (!qword_27D058070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058070);
  }

  return result;
}

unint64_t sub_223128204()
{
  result = qword_27D058078;
  if (!qword_27D058078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058078);
  }

  return result;
}

unint64_t sub_22312825C()
{
  result = qword_27D058080;
  if (!qword_27D058080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058080);
  }

  return result;
}

uint64_t IFQueryGeneratedMessage.ajaxMetadata.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata), 0x41uLL);
  memcpy(a1, (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata), 0x41uLL);
  return sub_2230D3054(__dst, &v4, &qword_27D058088, &qword_223208C00);
}

unint64_t sub_223128398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230EA618(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2231283C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230EA664(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2231283FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230EA618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223128424(uint64_t a1)
{
  v2 = sub_223129968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223128460(uint64_t a1)
{
  v2 = sub_223129968();

  return MEMORY[0x2821FE720](a1, v2);
}

id IFQueryGeneratedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IFQueryGeneratedMessage.init(build:)(v1);
}

id IFQueryGeneratedMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v41 = v5;
  MEMORY[0x28223BE20](v6);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 15;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  __swift_storeEnumTagSinglePayload(&v11[v9[8]], 1, 1, v4);
  v12 = &v11[v9[9]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v11[v9[10]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = v9[11];
  v11[v14] = 2;
  v15 = &v11[v9[12]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v11[v9[13]];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  *(v16 + 5) = 0x1FFFFFFFELL;
  *(v16 + 6) = 0;
  *(v16 + 7) = 0;
  v16[64] = 0;
  v17 = &v11[v9[14]];
  *v17 = 0;
  v17[1] = 0;
  a1(v11);
  v18 = *(v13 + 1);
  if (v18 && (v19 = *(v15 + 1)) != 0)
  {
    v20 = *v15;
    v21 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_utterance);
    *v21 = *v13;
    v21[1] = v18;
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_prescribedTool) = v11[v14];
    memcpy(__dst, v16, 0x41uLL);
    memcpy((v2 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata), v16, 0x41uLL);
    v22 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_trpId);
    *v22 = v20;
    v22[1] = v19;
    v23 = v17[1];
    if (v23)
    {
      v24 = *v17;

      v25 = sub_2230D3054(__dst, v43, &qword_27D058088, &qword_223208C00);
      v26 = v23;
    }

    else
    {

      sub_2230D3054(__dst, v43, &qword_27D058088, &qword_223208C00);
      v36 = v40;
      sub_2231FFD94();
      v24 = sub_2231FFD74();
      v26 = v37;
      v25 = (*(v41 + 8))(v36, v4);
    }

    v38 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_tcuId);
    *v38 = v24;
    v38[1] = v26;
    MEMORY[0x28223BE20](v25);
    *(&v40 - 2) = v11;

    v35 = RequestMessageBase.init(build:)(sub_223129960);
    sub_2231298E4(v11);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v27 = sub_223200014();
    __swift_project_value_buffer(v27, qword_280FCE830);
    v28 = sub_223200004();
    v29 = sub_223200254();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      __dst[0] = v31;
      *v30 = 136446210;
      v32 = sub_2230F7898(ObjectType);
      v34 = sub_2231A5D38(v32, v33, __dst);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2230CE000, v28, v29, "Could not build %{public}s: Builder has missing required fields", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DD6780](v31, -1, -1);
      MEMORY[0x223DD6780](v30, -1, -1);
    }

    sub_2231298E4(v11);
    type metadata accessor for IFQueryGeneratedMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v35;
}

uint64_t sub_2231289EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

void *IFQueryGeneratedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058090, &qword_223208C08);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223129968();
  sub_223200794();
  if (v2)
  {
    v15 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for IFQueryGeneratedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __dst[0] = 0;
    OUTLINED_FUNCTION_9_7();
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_utterance);
    *v7 = v5;
    v7[1] = v8;
    sub_223117AE8();
    OUTLINED_FUNCTION_9_7();
    sub_2232004C4();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_prescribedTool) = __dst[0];
    __dst[87] = 3;
    sub_223129A24();
    OUTLINED_FUNCTION_9_7();
    sub_2232004C4();
    memcpy((v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata), __dst, 0x41uLL);
    OUTLINED_FUNCTION_9_7();
    v9 = sub_2232004F4();
    v10 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_trpId);
    *v10 = v9;
    v10[1] = v11;
    LOBYTE(v18[0]) = 4;
    OUTLINED_FUNCTION_9_7();
    v12 = sub_2232004F4();
    v13 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_tcuId);
    *v13 = v12;
    v13[1] = v14;
    sub_2230F7158(a1, v18);
    v15 = RequestMessageBase.init(from:)(v18);
    v16 = OUTLINED_FUNCTION_2();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v15;
}

uint64_t sub_223128EB4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0580A8, &qword_223208C10);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223129968();
  sub_2232007A4();
  __dst[0] = 0;
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v2)
  {
    __dst[0] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_prescribedTool);
    __src[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C98, &unk_223206D68);
    sub_223129A78(&qword_27D057CA0, &qword_27D057C98, &unk_223206D68, sub_223117BC0);
    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    __dst[95] = 2;
    OUTLINED_FUNCTION_8_2();
    sub_2232005F4();
    memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata), 0x41uLL);
    memcpy(__src, (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata), sizeof(__src));
    __dst[94] = 3;
    sub_2230D3054(__dst, v11, &qword_27D058088, &qword_223208C00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058088, &qword_223208C00);
    sub_223129A78(&qword_27D0580B0, &qword_27D058088, &qword_223208C00, sub_223129AF4);
    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    memcpy(v11, __src, 0x41uLL);
    sub_2231299BC(v11);
    __dst[93] = 4;
    OUTLINED_FUNCTION_8_2();
    sub_2232005F4();
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t IFQueryGeneratedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_9() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t IFQueryGeneratedMessage.Builder.requestId.getter()
{
  type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFQueryGeneratedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.utterance.getter()
{
  type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFQueryGeneratedMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.prescribedTool.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.prescribedTool.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.trpId.getter()
{
  type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFQueryGeneratedMessage.Builder.trpId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.ajaxMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for IFQueryGeneratedMessage.Builder(0) + 44);
  memcpy(__dst, (v1 + v3), 0x41uLL);
  memcpy(a1, (v1 + v3), 0x41uLL);
  return sub_2230D3054(__dst, &v5, &qword_27D058088, &qword_223208C00);
}

void *IFQueryGeneratedMessage.Builder.ajaxMetadata.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_9() + 44);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  sub_2231299BC(__dst);
  return memcpy((v1 + v2), v0, 0x41uLL);
}

uint64_t IFQueryGeneratedMessage.Builder.tcuId.getter()
{
  type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFQueryGeneratedMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_2231297C0()
{

  OUTLINED_FUNCTION_7_9((v0 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata));
}

id IFQueryGeneratedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IFQueryGeneratedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231298E4(uint64_t a1)
{
  v2 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223129968()
{
  result = qword_27D058098;
  if (!qword_27D058098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058098);
  }

  return result;
}

uint64_t sub_2231299BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058088, &qword_223208C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223129A24()
{
  result = qword_27D0580A0;
  if (!qword_27D0580A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580A0);
  }

  return result;
}

uint64_t sub_223129A78(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223129AF4()
{
  result = qword_27D0580B8;
  if (!qword_27D0580B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580B8);
  }

  return result;
}

uint64_t sub_223129C00(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_27D057CC8, &type metadata for FallbackToIFRequestedMessage.PrescribedTool);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_27D0580D0, &type metadata for AjaxMetadata);
      if (v9 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for IFQueryGeneratedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_223129E0C()
{
  result = qword_27D0580D8;
  if (!qword_27D0580D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580D8);
  }

  return result;
}

unint64_t sub_223129E64()
{
  result = qword_27D0580E0;
  if (!qword_27D0580E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580E0);
  }

  return result;
}

unint64_t sub_223129EBC()
{
  result = qword_27D0580E8;
  if (!qword_27D0580E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580E8);
  }

  return result;
}

void sub_223129F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6 >> 1 != 0xFFFFFFFF)
  {

    sub_22311DE7C(a4, a5, a6, a7, a8);
  }
}

uint64_t ImmutableConversationSessionState.values(forKeys:userId:)()
{
  sub_22312A024();

  return sub_223200064();
}

unint64_t sub_22312A024()
{
  result = qword_27D0580F0;
  if (!qword_27D0580F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580F0);
  }

  return result;
}

uint64_t ImmutableConversationSessionState.valuesAcrossAllUsers(forKey:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0580F8, &unk_223208E30);
  sub_2231104C4();

  return sub_223200064();
}

uint64_t ImmutableConversationSessionState.sharedValues(forKeys:)()
{
  sub_22312A024();

  return sub_223200064();
}

uint64_t sub_22312A1D0(uint64_t a1)
{
  v2 = sub_22312A4B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312A20C(uint64_t a1)
{
  v2 = sub_22312A4B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22312A27C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058110, &qword_223208F08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22312A4B4();
  sub_2232007A4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22312A3C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22312A390(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22312A40C(uint64_t a1)
{
  *(a1 + 8) = sub_22312A474(&qword_27D058100, &unk_223208EC0);
  result = sub_22312A474(&qword_27D058108, &unk_223208E98);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22312A474(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmptyImmutableConversationSessionState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22312A4B4()
{
  result = qword_27D058118;
  if (!qword_27D058118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058118);
  }

  return result;
}

unint64_t sub_22312A51C()
{
  result = qword_27D058120;
  if (!qword_27D058120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058120);
  }

  return result;
}

unint64_t sub_22312A574()
{
  result = qword_27D058128;
  if (!qword_27D058128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058128);
  }

  return result;
}

uint64_t InitiateMUXStateRollbackMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId);
  a1[1] = v2;
}

id InitiateMUXStateRollbackMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return InitiateMUXStateRollbackMessage.init(build:)(v1);
}

id InitiateMUXStateRollbackMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - v5;
  v7 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v47 = v8;
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 15;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v15 = v12[8];
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v7);
  v16 = &v14[v12[9]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v14[v12[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v14[v12[11]];
  *v18 = 0;
  *(v18 + 1) = 0;
  a1(v14);
  v19 = *v14;
  if (v19 == 15)
  {
    goto LABEL_13;
  }

  v20 = *(v14 + 2);
  if (!v20)
  {
    goto LABEL_13;
  }

  v46 = *(v14 + 1);
  sub_2230D1480(&v14[v15], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v36 = sub_223200014();
    __swift_project_value_buffer(v36, qword_280FCE830);
    v37 = sub_223200004();
    v38 = sub_223200254();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v50 = v40;
      *v39 = 136446210;
      v41 = sub_2230F7898(ObjectType);
      v43 = sub_2231A5D38(v41, v42, &v50);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2230CE000, v37, v38, "Could not build %{public}s: Builder has missing required fields", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x223DD6780](v40, -1, -1);
      MEMORY[0x223DD6780](v39, -1, -1);
    }

    sub_22312B654(v14);
    type metadata accessor for InitiateMUXStateRollbackMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v45 = v20;
  v21 = v47;
  v22 = v48;
  (*(v47 + 32))(v48, v6, v7);
  v23 = *(v16 + 1);
  if (!v23)
  {
    (*(v21 + 8))(v22, v7);
    goto LABEL_13;
  }

  v24 = *(v17 + 1);
  if (!v24 || (v25 = *(v18 + 1), v26 = v21, !v25))
  {
    (*(v21 + 8))(v48, v7);
    goto LABEL_13;
  }

  ObjectType = &v45;
  v27 = *v17;
  v28 = *v18;
  v29 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_originalRequestId);
  *v29 = *v16;
  v29[1] = v23;
  v30 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_rollbackRequestId);
  *v30 = v27;
  v30[1] = v24;
  v31 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId);
  *v31 = v28;
  v31[1] = v25;
  MEMORY[0x28223BE20](v23);
  *(&v45 - 32) = v19;
  v32 = v45;
  *(&v45 - 3) = v46;
  *(&v45 - 2) = v32;
  v33 = v48;
  *(&v45 - 1) = v48;

  v34 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v35 = v34;
  sub_22312B654(v14);
  if (v34)
  {
  }

  (*(v26 + 8))(v33, v7);
  return v34;
}

void *InitiateMUXStateRollbackMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058130, &qword_223208FC8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22312B6D0();
  sub_223200794();
  if (v2)
  {
    v14 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for InitiateMUXStateRollbackMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_9_8();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_originalRequestId);
    *v7 = v5;
    v7[1] = v8;
    LOBYTE(v17[0]) = 1;
    v9 = OUTLINED_FUNCTION_9_8();
    v10 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_rollbackRequestId);
    *v10 = v9;
    v10[1] = v11;
    v18 = 2;
    sub_2231105AC();
    sub_223200554();
    v12 = v17[1];
    v13 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId);
    *v13 = v17[0];
    v13[1] = v12;
    sub_2230F7158(a1, v17);
    v14 = SessionMessageBase.init(from:)(v17);
    v15 = OUTLINED_FUNCTION_2();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v14;
}

uint64_t sub_22312AE9C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058140, &qword_223208FD0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22312B6D0();
  sub_2232007A4();
  v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_originalRequestId);
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_originalRequestId + 8);
  LOBYTE(v17[0]) = 0;
  OUTLINED_FUNCTION_8_7(v11, v12);
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_rollbackRequestId);
    v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_rollbackRequestId + 8);
    LOBYTE(v17[0]) = 1;
    OUTLINED_FUNCTION_8_7(v13, v14);
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId + 8);
    v17[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId);
    v17[1] = v15;
    v18 = 2;
    sub_2230D37F0();

    sub_223200654();

    sub_2230D46B0(a1);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_22312B090@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230EA878(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22312B0C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230EA8C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22312B0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230EA878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22312B11C(uint64_t a1)
{
  v2 = sub_22312B6D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312B158(uint64_t a1)
{
  v2 = sub_22312B6D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InitiateMUXStateRollbackMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t InitiateMUXStateRollbackMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t InitiateMUXStateRollbackMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_10() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t InitiateMUXStateRollbackMessage.Builder.originalRequestId.getter()
{
  type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t InitiateMUXStateRollbackMessage.Builder.originalRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t InitiateMUXStateRollbackMessage.Builder.rollbackRequestId.getter()
{
  type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t InitiateMUXStateRollbackMessage.Builder.rollbackRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t InitiateMUXStateRollbackMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t InitiateMUXStateRollbackMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0) + 36));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_22312B560()
{
}

id InitiateMUXStateRollbackMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitiateMUXStateRollbackMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22312B654(uint64_t a1)
{
  v2 = type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22312B6D0()
{
  result = qword_27D058138;
  if (!qword_27D058138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058138);
  }

  return result;
}

uint64_t sub_22312B7C8(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for InitiateMUXStateRollbackMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22312B9B0()
{
  result = qword_27D058158;
  if (!qword_27D058158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058158);
  }

  return result;
}

unint64_t sub_22312BA08()
{
  result = qword_27D058160;
  if (!qword_27D058160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058160);
  }

  return result;
}

unint64_t sub_22312BA60()
{
  result = qword_27D058168;
  if (!qword_27D058168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058168);
  }

  return result;
}

SiriMessageTypes::InputOrigin_optional __swiftcall InputOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2232006C4();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22312BB44()
{
  result = qword_27D058170;
  if (!qword_27D058170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058170);
  }

  return result;
}

uint64_t static IntelligenceFlowActionSummaryMessage.ParameterSummary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v26 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_2232006B4();
        v28 = OUTLINED_FUNCTION_5_13();
        v30 = OUTLINED_FUNCTION_2_15(v28, v29);
        v32 = OUTLINED_FUNCTION_2_15(v30, v31);
        sub_22312BDAC(v32, v33);
        v14 = OUTLINED_FUNCTION_5_13();
        goto LABEL_16;
      }

      v42 = OUTLINED_FUNCTION_2_15(v26, v2);
      v44 = OUTLINED_FUNCTION_2_15(v42, v43);
      sub_22312BDAC(v44, v45);
      sub_22312BDAC(v3, v2);
      return 1;
    }

LABEL_9:
    v16 = OUTLINED_FUNCTION_5_13();
    v18 = OUTLINED_FUNCTION_2_15(v16, v17);
    v20 = OUTLINED_FUNCTION_2_15(v18, v19);
    sub_22312BDAC(v20, v21);
    v22 = OUTLINED_FUNCTION_5_13();
    sub_22312BDAC(v22, v23);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v24 = 1;
    v34 = OUTLINED_FUNCTION_1_12();
    sub_22312BDA4(v34, v35);
    v36 = OUTLINED_FUNCTION_1_12();
    sub_22312BDA4(v36, v37);
    v38 = OUTLINED_FUNCTION_1_12();
    sub_22312BDAC(v38, v39);
    v40 = OUTLINED_FUNCTION_1_12();
    sub_22312BDAC(v40, v41);
    return v24;
  }

  v7 = sub_2232006B4();
  v8 = OUTLINED_FUNCTION_5_13();
  sub_22312BDA4(v8, v9);
  v10 = OUTLINED_FUNCTION_1_12();
  sub_22312BDA4(v10, v11);
  v12 = OUTLINED_FUNCTION_1_12();
  sub_22312BDAC(v12, v13);
  v14 = OUTLINED_FUNCTION_5_13();
LABEL_16:
  sub_22312BDAC(v14, v15);
  return v7 & 1;
}

uint64_t sub_22312BDB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22312BE7C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6C6F686563616C70;
  }
}

uint64_t sub_22312BEC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22312BF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22312BDB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22312BF64(uint64_t a1)
{
  v2 = sub_22312C37C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312BFA0(uint64_t a1)
{
  v2 = sub_22312C37C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22312BFE0(uint64_t a1)
{
  v2 = sub_22312C424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312C01C(uint64_t a1)
{
  v2 = sub_22312C424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22312C058(uint64_t a1)
{
  v2 = sub_22312C3D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312C094(uint64_t a1)
{
  v2 = sub_22312C3D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowActionSummaryMessage.ParameterSummary.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v53 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058178, &qword_223209310);
  OUTLINED_FUNCTION_9();
  v49 = v29;
  v50 = v28;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  v48 = &v46 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058180, &qword_223209318);
  OUTLINED_FUNCTION_9();
  v46 = v33;
  v47 = v32;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v46 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058188, &qword_223209320);
  OUTLINED_FUNCTION_9();
  v39 = v38;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v41 = *v23;
  v51 = v23[1];
  v52 = v41;
  v42 = *(v23 + 16);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_22312C37C();
  sub_2232007A4();
  if (v42)
  {
    sub_22312C3D0();
    v43 = v48;
    sub_2232005B4();
    v44 = v50;
    sub_2232005F4();
    (*(v49 + 8))(v43, v44);
  }

  else
  {
    sub_22312C424();
    sub_2232005B4();
    v45 = v47;
    sub_2232005F4();
    (*(v46 + 8))(v36, v45);
  }

  (*(v39 + 8))(v25, v37);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_22312C37C()
{
  result = qword_27D058190;
  if (!qword_27D058190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058190);
  }

  return result;
}

unint64_t sub_22312C3D0()
{
  result = qword_27D058198;
  if (!qword_27D058198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058198);
  }

  return result;
}

unint64_t sub_22312C424()
{
  result = qword_27D0581A0;
  if (!qword_27D0581A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0581A0);
  }

  return result;
}

void IntelligenceFlowActionSummaryMessage.ParameterSummary.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  a22 = v25;
  a23 = v26;
  v78 = v27;
  v79 = v23;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581A8, &qword_223209328);
  OUTLINED_FUNCTION_9();
  v75 = v30;
  v76 = v31;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581B0, &qword_223209330);
  OUTLINED_FUNCTION_9();
  v74 = v34;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581B8, &unk_223209338);
  OUTLINED_FUNCTION_9();
  v77 = v37;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v38);
  v40 = v72 - v39;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_22312C37C();
  v41 = v79;
  sub_223200794();
  if (v41)
  {
    goto LABEL_9;
  }

  v72[2] = v33;
  v73 = v24;
  v79 = v29;
  v42 = v78;
  v43 = sub_223200594();
  sub_2230E0B80(v43, 0);
  if (v45 == v46 >> 1)
  {
LABEL_7:
    v58 = sub_2232003A4();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v60 = &type metadata for IntelligenceFlowActionSummaryMessage.ParameterSummary;
    sub_223200484();
    sub_223200394();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = OUTLINED_FUNCTION_7_10();
    v62(v61, v36);
    v29 = v79;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v29);
LABEL_10:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v72[1] = 0;
  if (v45 < (v46 >> 1))
  {
    v47 = *(v44 + v45);
    v48 = sub_2230E0B40(v45 + 1);
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    if (v50 == v52 >> 1)
    {
      v53 = v36;
      v54 = v47;
      if (v47)
      {
        LODWORD(v74) = v47;
        a13 = 1;
        sub_22312C3D0();
        OUTLINED_FUNCTION_14_1(&type metadata for IntelligenceFlowActionSummaryMessage.ParameterSummary.ValueCodingKeys, &a13);
        v55 = v42;
        v73 = v48;
        v56 = sub_2232004F4();
        v57 = v77;
        v64 = v56;
        v66 = v65;
        swift_unknownObjectRelease();
        v67 = OUTLINED_FUNCTION_11_4();
        v68(v67);
        v54 = v74;
      }

      else
      {
        a12 = 0;
        sub_22312C424();
        OUTLINED_FUNCTION_14_1(&type metadata for IntelligenceFlowActionSummaryMessage.ParameterSummary.PlaceholderCodingKeys, &a12);
        v55 = v42;
        v63 = sub_2232004F4();
        v66 = v69;
        v76 = v63;
        swift_unknownObjectRelease();
        v70 = OUTLINED_FUNCTION_9_9();
        v71(v70);
        v64 = v76;
        v57 = v77;
      }

      (*(v57 + 8))(v40, v53);
      *v55 = v64;
      *(v55 + 8) = v66;
      *(v55 + 16) = v54;
      __swift_destroy_boxed_opaque_existential_1(v79);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

id IntelligenceFlowActionSummaryMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IntelligenceFlowActionSummaryMessage.init(build:)(v1);
}

id IntelligenceFlowActionSummaryMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v31 - v10;
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  v11[24] = 15;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0;
  v12 = *(v9 + 32);
  v13 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v11[v12], 1, 1, v13);
  v14 = &v11[*(v5 + 36)];
  *v14 = 0;
  *(v14 + 1) = 0;
  a1(v11);
  v15 = *(v11 + 1);
  if (v15 && (v16 = *(v11 + 2)) != 0)
  {
    v17 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_formatString);
    *v17 = *v11;
    v17[1] = v15;
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_parameterSummaries) = v16;
    MEMORY[0x28223BE20](v15);
    v31[-2] = v11;

    v18 = RequestMessageBase.init(build:)(sub_22312DA10);
    sub_22312D930(v11);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v19 = sub_223200014();
    __swift_project_value_buffer(v19, qword_280FCE830);
    v20 = sub_223200004();
    v21 = sub_223200254();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136446466;
      v24 = sub_2230F7898(ObjectType);
      v26 = sub_2231A5D38(v24, v25, &v32);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      swift_beginAccess();
      sub_22312D9AC(v11, v8);
      v27 = sub_223200104();
      v29 = sub_2231A5D38(v27, v28, &v32);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_2230CE000, v20, v21, "Could not build %{public}s: Builder %s has missing required fields", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DD6780](v23, -1, -1);
      MEMORY[0x223DD6780](v22, -1, -1);
    }

    sub_22312D930(v11);
    type metadata accessor for IntelligenceFlowActionSummaryMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v18;
}

uint64_t sub_22312CDA0(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 24);
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 36));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

void IntelligenceFlowActionSummaryMessage.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581C0, &qword_223209348);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_22312DA18();
  sub_223200794();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    type metadata accessor for IntelligenceFlowActionSummaryMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    v28 = sub_2232004F4();
    v29 = (v23 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_formatString);
    *v29 = v28;
    v29[1] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581D0, &qword_223209350);
    sub_22312DAC0(&qword_27D0581D8, sub_22312DA6C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_223200554();
    *(v23 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_parameterSummaries) = v33[0];
    sub_2230F7158(v26, v33);
    RequestMessageBase.init(from:)(v33);
    v31 = OUTLINED_FUNCTION_2();
    v32(v31);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_22312D154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581E8, &unk_223209358);
  OUTLINED_FUNCTION_9();
  v29 = v28;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  v32 = v33 - v31;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_22312DA18();
  sub_2232007A4();
  sub_2232005F4();
  if (!v24)
  {
    v33[1] = *(v23 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_parameterSummaries);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581D0, &qword_223209350);
    sub_22312DAC0(&qword_27D0581F0, sub_22312DB44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_223200654();
    sub_2230D77A8(v26);
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22312D330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374616D726F66 && a2 == 0xEC000000676E6972;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000223222DD0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22312D404(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x745374616D726F66;
  }
}

uint64_t sub_22312D450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22312D330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22312D478(uint64_t a1)
{
  v2 = sub_22312DA18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312D4B4(uint64_t a1)
{
  v2 = sub_22312DA18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.formatString.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.parameterSummaries.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0) + 32);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0) + 32);

  return sub_2230D4E04(a1, v3);
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.requestId.getter()
{
  type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_22312D844()
{
}

id IntelligenceFlowActionSummaryMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceFlowActionSummaryMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22312D930(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22312D9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22312DA18()
{
  result = qword_27D0581C8;
  if (!qword_27D0581C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0581C8);
  }

  return result;
}

unint64_t sub_22312DA6C()
{
  result = qword_27D0581E0;
  if (!qword_27D0581E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0581E0);
  }

  return result;
}

uint64_t sub_22312DAC0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0581D0, &qword_223209350);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22312DB44()
{
  result = qword_27D0581F8;
  if (!qword_27D0581F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0581F8);
  }

  return result;
}

uint64_t sub_22312DC60(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22312DD48(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_2230F6D30(319);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_22312DD48(uint64_t a1)
{
  if (!qword_27D058210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0581D0, &qword_223209350);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27D058210);
    }
  }
}

_BYTE *sub_22312DDBC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22312DEA8(_BYTE *result, int a2, int a3)
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

unint64_t sub_22312DF58()
{
  result = qword_27D058218;
  if (!qword_27D058218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058218);
  }

  return result;
}

unint64_t sub_22312DFB0()
{
  result = qword_27D058220;
  if (!qword_27D058220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058220);
  }

  return result;
}

unint64_t sub_22312E008()
{
  result = qword_27D058228;
  if (!qword_27D058228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058228);
  }

  return result;
}

unint64_t sub_22312E060()
{
  result = qword_27D058230;
  if (!qword_27D058230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058230);
  }

  return result;
}

unint64_t sub_22312E0B8()
{
  result = qword_27D058238;
  if (!qword_27D058238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058238);
  }

  return result;
}

unint64_t sub_22312E110()
{
  result = qword_27D058240;
  if (!qword_27D058240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058240);
  }

  return result;
}

unint64_t sub_22312E168()
{
  result = qword_27D058248;
  if (!qword_27D058248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058248);
  }

  return result;
}

unint64_t sub_22312E1C0()
{
  result = qword_27D058250;
  if (!qword_27D058250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058250);
  }

  return result;
}

unint64_t sub_22312E218()
{
  result = qword_27D058258;
  if (!qword_27D058258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058258);
  }

  return result;
}

unint64_t sub_22312E270()
{
  result = qword_27D058260;
  if (!qword_27D058260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058260);
  }

  return result;
}

unint64_t sub_22312E2C8()
{
  result = qword_27D058268;
  if (!qword_27D058268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058268);
  }

  return result;
}

unint64_t sub_22312E320()
{
  result = qword_27D058270;
  if (!qword_27D058270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058270);
  }

  return result;
}

void *IntelligenceFlowOutputMessage.aceCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_aceCommand);
  v2 = v1;
  return v1;
}

uint64_t IntelligenceFlowOutputMessage.inAppResponse.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_inAppResponse + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_inAppResponse);
  a1[1] = v2;
}

id IntelligenceFlowOutputMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IntelligenceFlowOutputMessage.init(build:)(v1);
}

id IntelligenceFlowOutputMessage.init(build:)(void (*a1)(char *))
{
  v3 = type metadata accessor for IntelligenceFlowOutputMessage.Builder(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 15;
  *(v6 + 5) = 0;
  *(v6 + 6) = 0;
  v7 = *(v4 + 44);
  v8 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v6[v7], 1, 1, v8);
  v9 = &v6[*(v4 + 48)];
  *v9 = 0;
  *(v9 + 1) = 0;
  a1(v6);
  v10 = *v6;
  if (*v6)
  {
    v11 = *v6;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  }

  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_command) = v11;
  v13 = *(v6 + 1);
  v12 = *(v6 + 2);
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_aceCommand) = v13;
  v14 = *(v6 + 3);
  v15 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_inAppResponse);
  *v15 = v12;
  v15[1] = v14;
  MEMORY[0x28223BE20](v14);
  *(&v20 - 2) = v6;

  v16 = v10;
  v17 = v13;
  v18 = RequestMessageBase.init(build:)(sub_22312E6A4);
  sub_22312E6AC(v6);
  return v18;
}

uint64_t sub_22312E5F4(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 32);
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for IntelligenceFlowOutputMessage.Builder(0);
  v7 = *(v6 + 36);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 40));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

uint64_t sub_22312E6AC(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowOutputMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void IntelligenceFlowOutputMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058278, &qword_223209940);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  LODWORD(v0) = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_22312ED70();
  sub_223200794();
  v9 = qword_280FCDFA0 + 96;
  v10 = qword_280FCDFA0 + 96;
  if (v1)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_7;
  }

  v33 = v2;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_5_4();
  sub_223200554();
  v11 = *&v34[0];
  objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_223110BA0(*&v34[0], *(&v34[0] + 1));
  v0 = sub_223120750(*&v34[0], *(&v34[0] + 1));
  v31 = *(&v34[0] + 1);
  v32 = *&v34[0];
  sub_223122550();
  sub_2232000C4();
  v12 = sub_223200294();

  if (v12)
  {
    v30 = v0;
    *&v2[OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_command] = v12;
    v13 = v12;
    OUTLINED_FUNCTION_5_4();
    sub_2232004C4();
    v14 = &qword_280FCDFA0[12];
    v29 = v13;
    if (*(&v34[0] + 1) >> 60 == 15)
    {
      v18 = 0;
LABEL_16:
      *&v2[v14[361]] = v18;
      sub_22312FE4C();
      OUTLINED_FUNCTION_5_4();
      sub_2232004C4();
      *&v2[OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_inAppResponse] = v34[0];
      sub_2230F7158(v4, v34);
      RequestMessageBase.init(from:)(v34);
      v23 = OUTLINED_FUNCTION_1_10();
      v24(v23);
      sub_2230D94DC(v32, v31);

      __swift_destroy_boxed_opaque_existential_1(v4);
      goto LABEL_13;
    }

    v19 = *&v34[0];
    v20 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_223110BA0(*&v34[0], *(&v34[0] + 1));
    v21 = sub_223120750(*&v34[0], *(&v34[0] + 1));
    v28 = *(&v34[0] + 1);
    sub_2232000C4();
    v22 = v21;
    v18 = sub_223200294();

    if (v18)
    {
      sub_22310A610(*&v34[0], *(&v34[0] + 1));

      v2 = v33;
      v14 = qword_280FCDFA0 + 96;
      goto LABEL_16;
    }

    sub_2230F9E38();
    swift_allocError();
    *v25 = 0xD00000000000001BLL;
    *(v25 + 8) = 0x8000000223222E10;
    *(v25 + 16) = 0;
    swift_willThrow();

    sub_22310A610(v19, v28);
    sub_2230D94DC(v32, v31);
    v26 = OUTLINED_FUNCTION_1_10();
    v27(v26);
    v7 = 0;
    v5 = 0;
    LODWORD(v0) = 1;
  }

  else
  {
    sub_2230F9E38();
    swift_allocError();
    *v15 = 0xD000000000000018;
    *(v15 + 8) = 0x8000000223222DF0;
    *(v15 + 16) = 0;
    swift_willThrow();

    sub_2230D94DC(v11, v31);
    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    OUTLINED_FUNCTION_3_16();
  }

  v2 = v33;
  v10 = &qword_280FCDFA0[12];
  v9 = &qword_280FCDFA0[12];
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1(v4);
  if ((v5 & 1) == 0)
  {
    if (v0)
    {
    }

    if (v7)
    {
    }

    type metadata accessor for IntelligenceFlowOutputMessage(0);
    swift_deallocPartialClassInstance();
  }

LABEL_13:
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_22312ED70()
{
  result = qword_27D058280;
  if (!qword_27D058280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058280);
  }

  return result;
}

void sub_22312EDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058290, &unk_223209948);
  OUTLINED_FUNCTION_9();
  v52 = v29;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_11();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_22312ED70();
  sub_2232007A4();
  v31 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v51 = v23;
  v32 = *MEMORY[0x277CCA308];
  [v31 encodeObject:*(v23 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_command) forKey:*MEMORY[0x277CCA308]];
  v33 = [v31 encodedData];
  v34 = sub_2231FFD24();
  v36 = v35;

  sub_2230D7754();
  sub_223200654();
  if (v24)
  {

    sub_2230D94DC(v34, v36);
    (*(v52 + 8))(v25, v28);
  }

  else
  {
    v50 = v27;
    v53 = v28;
    sub_2230D94DC(v34, v36);
    v37 = *(v51 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_aceCommand);
    if (v37)
    {
      v38 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
      v39 = v37;
      v40 = [v38 initRequiringSecureCoding_];
      v41 = v39;
      [v40 encodeObject:v39 forKey:v32];
      v42 = v40;
      v43 = [v40 encodedData];
      v44 = sub_2231FFD24();
      v46 = v45;

      v54 = v44;
      v55 = v46;
      v47 = v53;
      v48 = v25;
      sub_223200654();
      sub_2230D94DC(v54, v55);

      v49 = v52;
    }

    else
    {
      v49 = v52;
      v47 = v53;
      v48 = v25;
    }

    sub_22312FEA0();

    sub_2232005E4();

    sub_2230D77A8(v50);
    (*(v49 + 8))(v48, v47);
  }

  OUTLINED_FUNCTION_9_0();
}

id IntelligenceFlowOutputMessage.Builder.command.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *IntelligenceFlowOutputMessage.Builder.aceCommand.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t IntelligenceFlowOutputMessage.Builder.inAppResponse.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t IntelligenceFlowOutputMessage.Builder.inAppResponse.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t IntelligenceFlowOutputMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t IntelligenceFlowOutputMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowOutputMessage.Builder(0) + 36);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowOutputMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowOutputMessage.Builder(0) + 36);

  return sub_2230D4E04(a1, v3);
}

uint64_t IntelligenceFlowOutputMessage.Builder.requestId.getter()
{
  type metadata accessor for IntelligenceFlowOutputMessage.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowOutputMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowOutputMessage.Builder(0) + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_22312F518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616D6D6F43656361 && a2 == 0xEA0000000000646ELL;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365527070416E69 && a2 == 0xED000065736E6F70)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_22312F638(char a1)
{
  if (!a1)
  {
    return 0x646E616D6D6F63;
  }

  if (a1 == 1)
  {
    return 0x616D6D6F43656361;
  }

  return 0x7365527070416E69;
}

uint64_t sub_22312F6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22312F518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22312F6D0(uint64_t a1)
{
  v2 = sub_22312ED70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312F70C(uint64_t a1)
{
  v2 = sub_22312ED70();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowOutputMessage.InAppResponse.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v16 = 0;
  v17 = 0;
  a1(&v16);
  v3 = v17;
  if (v17)
  {
    *a2 = v16;
    a2[1] = v3;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0582A0, &qword_223209958);
      v9 = sub_223200104();
      v11 = sub_2231A5D38(v9, v10, &v15);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = sub_223200104();
      v14 = sub_2231A5D38(v12, v13, &v15);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_2230CE000, v5, v6, "Could not build %{public}s: Builder %s has missing required fields", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DD6780](v8, -1, -1);
      MEMORY[0x223DD6780](v7, -1, -1);
    }

    else
    {
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t IntelligenceFlowOutputMessage.InAppResponse.Builder.bundleId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t static IntelligenceFlowOutputMessage.InAppResponse.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2232006B4();
  }
}

uint64_t sub_22312FA24(uint64_t a1)
{
  v2 = sub_22312FEF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312FA60(uint64_t a1)
{
  v2 = sub_22312FEF4();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowOutputMessage.InAppResponse.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0582A8, &qword_223209960);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_22312FEF4();
  sub_2232007A4();
  sub_2232005F4();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_9_0();
}

void IntelligenceFlowOutputMessage.InAppResponse.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0582B8, &qword_223209968);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_22312FEF4();
  sub_223200794();
  if (!v0)
  {
    v10 = sub_2232004F4();
    v12 = v11;
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
    v5[1] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22312FD60()
{
}

id IntelligenceFlowOutputMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceFlowOutputMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22312FE4C()
{
  result = qword_27D058288;
  if (!qword_27D058288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058288);
  }

  return result;
}

unint64_t sub_22312FEA0()
{
  result = qword_27D058298;
  if (!qword_27D058298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058298);
  }

  return result;
}

unint64_t sub_22312FEF4()
{
  result = qword_27D0582B0;
  if (!qword_27D0582B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582B0);
  }

  return result;
}

uint64_t sub_223130000(uint64_t a1)
{
  sub_223130154(319, &qword_280FCA408, sub_223122550);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_27D0582D0, &type metadata for IntelligenceFlowOutputMessage.InAppResponse);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_223130154(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
          if (v11 > 0x3F)
          {
            return v10;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_223130154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2231301B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
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

uint64_t sub_22313020C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowOutputMessage.InAppResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowOutputMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231303F8()
{
  result = qword_27D0582D8;
  if (!qword_27D0582D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582D8);
  }

  return result;
}

unint64_t sub_223130450()
{
  result = qword_27D0582E0;
  if (!qword_27D0582E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582E0);
  }

  return result;
}

unint64_t sub_2231304A8()
{
  result = qword_27D0582E8;
  if (!qword_27D0582E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582E8);
  }

  return result;
}

unint64_t sub_223130500()
{
  result = qword_27D0582F0;
  if (!qword_27D0582F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582F0);
  }

  return result;
}

unint64_t sub_223130558()
{
  result = qword_27D0582F8;
  if (!qword_27D0582F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582F8);
  }

  return result;
}

unint64_t sub_2231305B0()
{
  result = qword_27D058300;
  if (!qword_27D058300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058300);
  }

  return result;
}

id IntelligenceFlowRequestCompletedMessage.init(build:)(void (*a1)(_BYTE *))
{
  v2 = type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v5 = 15;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  v6 = *(v3 + 32);
  v7 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v5[v6], 1, 1, v7);
  v8 = &v5[*(v3 + 36)];
  *v8 = 0;
  v8[1] = 0;
  a1(v5);
  v12 = v5;
  v9 = RequestMessageBase.init(build:)(sub_223130828);
  sub_223130830(v5);
  return v9;
}

uint64_t sub_223130778(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

uint64_t sub_223130830(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *IntelligenceFlowRequestCompletedMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0) + 24);

  return sub_2230D4E04(a1, v3);
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0) + 28));

  return v1;
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

id IntelligenceFlowRequestCompletedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceFlowRequestCompletedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IntelligenceFlowSessionInformationMessage.ifSessionClientId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes41IntelligenceFlowSessionInformationMessage_ifSessionClientId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id IntelligenceFlowSessionInformationMessage.init(build:)(void (*a1)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v13 = v12 - v11;
  v14 = type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v18 = v17 - v16;
  *v18 = 15;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  __swift_storeEnumTagSinglePayload(v17 - v16 + *(v15 + 32), 1, 1, v7);
  v19 = *(v15 + 36);
  __swift_storeEnumTagSinglePayload(v18 + v19, 1, 1, v7);
  a1(v18);
  sub_2230D1480(v18 + v19, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v20 = sub_223200014();
    __swift_project_value_buffer(v20, qword_280FCE830);
    v21 = sub_223200004();
    v22 = sub_223200254();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136446210;
      v25 = sub_2230F7898(ObjectType);
      v27 = sub_2231A5D38(v25, v26, &v32);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2230CE000, v21, v22, "Could not build %{public}s. Builder has missing required fields", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x223DD6780](v24, -1, -1);
      MEMORY[0x223DD6780](v23, -1, -1);
    }

    sub_223131AF4(v18);
    type metadata accessor for IntelligenceFlowSessionInformationMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v9 + 32))(v13, v6, v7);
    v29 = (*(v9 + 16))(v1 + OBJC_IVAR____TtC16SiriMessageTypes41IntelligenceFlowSessionInformationMessage_ifSessionClientId, v13, v7);
    MEMORY[0x28223BE20](v29);
    *(&v31 - 2) = v18;
    v28 = SessionMessageBase.init(build:)(sub_223131B70);
    (*(v9 + 8))(v13, v7);
    sub_223131AF4(v18);
  }

  return v28;
}

uint64_t sub_22313113C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = *(type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0) + 24);
  v7 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230DAEC8(a2 + v6, a1 + v7);
}

void *IntelligenceFlowSessionInformationMessage.init(from:)(void *a1)
{
  v3 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v13 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v14 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058318, &qword_223209D58);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223131B78();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for IntelligenceFlowSessionInformationMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2230D45E8(&qword_27D057ED0, MEMORY[0x277CC9618]);
    sub_223200554();
    (*(v13 + 32))(v15[6] + OBJC_IVAR____TtC16SiriMessageTypes41IntelligenceFlowSessionInformationMessage_ifSessionClientId, v14, v3);
    sub_2230F7158(a1, v15);
    v9 = SessionMessageBase.init(from:)(v15);
    v11 = OUTLINED_FUNCTION_3_3();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231314C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058320, &qword_223209D60);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223131B78();
  sub_2232007A4();
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688, MEMORY[0x277CC95F8]);
  sub_223200654();
  if (!v1)
  {
    sub_2230D46B0(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_12() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.ifSessionClientId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.ifSessionClientId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_12() + 28);

  return sub_2230D4E04(v0, v2);
}

uint64_t sub_223131884(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000223222FC0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_223131924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223131884(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_223131950(uint64_t a1)
{
  v2 = sub_223131B78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313198C(uint64_t a1)
{
  v2 = sub_223131B78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231319F8()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes41IntelligenceFlowSessionInformationMessage_ifSessionClientId;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id IntelligenceFlowSessionInformationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceFlowSessionInformationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223131AF4(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223131B78()
{
  result = qword_280FCBCE0;
  if (!qword_280FCBCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBCE0);
  }

  return result;
}

uint64_t sub_223131BD4(uint64_t a1)
{
  result = sub_2231FFDA4();
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

void sub_223131CB8(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  if (v1 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowSessionInformationMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_223131E24()
{
  result = qword_27D058328;
  if (!qword_27D058328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058328);
  }

  return result;
}

unint64_t sub_223131E7C()
{
  result = qword_280FCBCD0;
  if (!qword_280FCBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBCD0);
  }

  return result;
}

unint64_t sub_223131ED4()
{
  result = qword_280FCBCD8;
  if (!qword_280FCBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBCD8);
  }

  return result;
}

void IntelligenceFlowStatusUpdateMessage.statusUpdate.getter(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate;
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate + 8);
  v5 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate + 16);
  v6 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate + 24);
  v7 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  *(a1 + 40) = v8;
  sub_223131F94(v3, v4, v5, v6, v7, v8);
}

void sub_223131F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a6 != 2)
  {
    if (a6 != 1)
    {
      return;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t static IntelligenceFlowStatusUpdateMessage.StatusUpdate.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v157 = a1[2];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  switch(v6)
  {
    case 1:
      if (v12 != 1)
      {
        goto LABEL_21;
      }

      v163 = *a1;
      v164 = v3;
      v165 = v157;
      v166 = v4;
      v167 = v5;
      v158 = v7;
      v159 = v8;
      v160 = v10;
      v161 = v9;
      v162 = v11;
      v81 = static IntelligenceFlowStatusUpdateMessage.ProgressUpdate.== infix(_:_:)(&v163, &v158);
      v93 = OUTLINED_FUNCTION_30_0();
      sub_223131F94(v93, v94, v95, v96, v97, v98);
      sub_223131F94(v7, v8, v10, v9, v11, 1);
      v99 = OUTLINED_FUNCTION_30_0();
      sub_223132518(v99, v100, v101, v102, v103, v104);
      sub_223132518(v7, v8, v10, v9, v11, 1);
      return v81 & 1;
    case 2:
      v156 = a1[4];
      if (v12 != 2)
      {
        goto LABEL_22;
      }

      if (v2 == *a2 && v3 == *(a2 + 8))
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_11_5();
        sub_223131F94(v121, v122, v123, v124, v125, v126);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_4_13();
        sub_223131F94(v127, v128, v129, v130, v131, 2);
        v132 = OUTLINED_FUNCTION_7_11();
        sub_223132518(v132, v133, v134, v4, v156, 2);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_4_13();
        v92 = 2;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_7_11();
      v155 = sub_2232006B4();
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_11_5();
      sub_223131F94(v62, v63, v64, v65, v66, v67);
      OUTLINED_FUNCTION_2_16();
      sub_223131F94(v68, v69, v70, v71, v72, 2);
      v73 = OUTLINED_FUNCTION_7_11();
      sub_223132518(v73, v74, v75, v4, v156, 2);
      OUTLINED_FUNCTION_2_16();
      sub_223132518(v76, v77, v78, v79, v80, 2);
      v81 = 0;
      if (v155)
      {
        goto LABEL_28;
      }

      return v81 & 1;
    case 3:
      OUTLINED_FUNCTION_42_1();
      if (v12 != 3)
      {
        goto LABEL_23;
      }

      v82 = OUTLINED_FUNCTION_41();
      sub_223132518(v82, v83, v84, v85, v86, 3);
      OUTLINED_FUNCTION_4_13();
      v92 = 3;
LABEL_27:
      sub_223132518(v87, v88, v89, v90, v91, v92);
      goto LABEL_28;
    default:
      if (*(a2 + 40))
      {
LABEL_21:
        OUTLINED_FUNCTION_42_1();

LABEL_22:

LABEL_23:
        OUTLINED_FUNCTION_4_13();
        sub_223131F94(v105, v106, v107, v108, v109, v12);
        v110 = OUTLINED_FUNCTION_41();
        sub_223132518(v110, v111, v112, v113, v114, v6);
        OUTLINED_FUNCTION_4_13();
        v120 = v12;
        goto LABEL_24;
      }

      v13 = v2 == v7 && v3 == v8;
      if (!v13 && (sub_2232006B4() & 1) == 0)
      {
        OUTLINED_FUNCTION_31_0();
        sub_223131F94(v136, v137, v138, v139, v140, v141);
        v142 = OUTLINED_FUNCTION_1_13();
        sub_223131F94(v142, v143, v144, v145, v146, v147);
        OUTLINED_FUNCTION_31_0();
        sub_223132518(v148, v149, v150, v151, v152, v153);
        v115 = OUTLINED_FUNCTION_1_13();
LABEL_24:
        sub_223132518(v115, v116, v117, v118, v119, v120);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_2_16();
      sub_223131F94(v14, v15, v16, v17, v18, 0);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_31_0();
      sub_223131F94(v19, v20, v21, v22, v23, v24);
      OUTLINED_FUNCTION_7_11();
      OUTLINED_FUNCTION_31_0();
      sub_223131F94(v25, v26, v27, v28, v29, v30);
      v31 = OUTLINED_FUNCTION_1_13();
      sub_223131F94(v31, v32, v33, v34, v35, v36);
      v154 = sub_223134A5C(v157, v10);
      OUTLINED_FUNCTION_7_11();
      OUTLINED_FUNCTION_31_0();
      sub_223132518(v37, v38, v39, v40, v41, v42);
      v43 = OUTLINED_FUNCTION_1_13();
      sub_223132518(v43, v44, v45, v46, v47, v48);
      v49 = OUTLINED_FUNCTION_1_13();
      sub_223132518(v49, v50, v51, v52, v53, v54);
      OUTLINED_FUNCTION_7_11();
      OUTLINED_FUNCTION_31_0();
      sub_223132518(v55, v56, v57, v58, v59, v60);
      if ((v154 & 1) == 0)
      {
LABEL_25:
        v81 = 0;
        return v81 & 1;
      }

LABEL_28:
      v81 = 1;
      return v81 & 1;
  }
}

uint64_t static IntelligenceFlowStatusUpdateMessage.ActionSummary.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_2232006B4() & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_2_1();

  return sub_223134A5C(v3, v4);
}

uint64_t static IntelligenceFlowStatusUpdateMessage.ProgressUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *(a1 + 8) == *(a2 + 8) && v3 == v6;
    if (!v9 && (sub_2232006B4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      v12 = OUTLINED_FUNCTION_2_1();
      if (OUTLINED_FUNCTION_33_0(v12, v13))
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t static IntelligenceFlowStatusUpdateMessage.StatusNotification.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2232006B4();
  }
}

uint64_t sub_223132518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  result = a2;
  if (!a6)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a6 != 2)
  {
    if (a6 != 1)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_22313258C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75536E6F69746361 && a2 == 0xED00007972616D6DLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73736572676F7270 && a2 == 0xEE00657461647055;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000223223070 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6165627472616568 && a2 == 0xE900000000000074)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_223132704(char a1)
{
  result = 0x75536E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x73736572676F7270;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6165627472616568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231327A8(uint64_t a1)
{
  v2 = sub_223134F38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231327E4(uint64_t a1)
{
  v2 = sub_223134F38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223132828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22313258C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223132850(uint64_t a1)
{
  v2 = sub_223134CEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313288C(uint64_t a1)
{
  v2 = sub_223134CEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231328C8(uint64_t a1)
{
  v2 = sub_223134D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223132904(uint64_t a1)
{
  v2 = sub_223134D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223132940(uint64_t a1)
{
  v2 = sub_223134E90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313297C(uint64_t a1)
{
  v2 = sub_223134E90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231329B8(uint64_t a1)
{
  v2 = sub_223134DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231329F4(uint64_t a1)
{
  v2 = sub_223134DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowStatusUpdateMessage.StatusUpdate.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058330, &qword_223209EE0);
  OUTLINED_FUNCTION_9();
  v33 = v6;
  v34 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  v32 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058338, &qword_223209EE8);
  OUTLINED_FUNCTION_9();
  v30 = v10;
  v31 = v9;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_3();
  v29 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058340, &qword_223209EF0);
  OUTLINED_FUNCTION_9();
  v27 = v14;
  v28 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_11();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058348, &qword_223209EF8);
  OUTLINED_FUNCTION_9();
  v26 = v17;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058350, &qword_223209F00);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_35_0();
  v20 = *(v0 + 40);
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_223134CEC();
  sub_2232007A4();
  switch(v20)
  {
    case 1:
      OUTLINED_FUNCTION_43();
      sub_223134E90();
      OUTLINED_FUNCTION_8_8();
      sub_2232005B4();
      sub_223134EE4();
      sub_223200654();
      (*(v27 + 8))(v1, v28);
      break;
    case 2:
      sub_223134DE8();
      v21 = v29;
      OUTLINED_FUNCTION_8_8();
      sub_2232005B4();
      sub_223134E3C();
      v22 = v31;
      sub_223200654();
      v23 = v30;
      goto LABEL_5;
    case 3:
      sub_223134D40();
      v21 = v32;
      OUTLINED_FUNCTION_8_8();
      sub_2232005B4();
      sub_223134D94();
      v22 = v34;
      sub_223200654();
      v23 = v33;
LABEL_5:
      (*(v23 + 8))(v21, v22);
      break;
    default:
      sub_223134F38();
      OUTLINED_FUNCTION_8_8();
      sub_2232005B4();
      sub_223134F8C();
      sub_223200654();
      (*(v26 + 8))(v2, v16);
      break;
  }

  v24 = OUTLINED_FUNCTION_24();
  v25(v24);
  OUTLINED_FUNCTION_9_0();
}

void IntelligenceFlowStatusUpdateMessage.StatusUpdate.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v77 = v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583A0, &qword_223209F08);
  OUTLINED_FUNCTION_9();
  v76 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_3();
  v79 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583A8, &qword_223209F10);
  OUTLINED_FUNCTION_9();
  v74 = v8;
  v75 = v9;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_3();
  v78 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583B0, &qword_223209F18);
  OUTLINED_FUNCTION_9();
  v72 = v13;
  v73 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v16 = v67 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583B8, &qword_223209F20);
  OUTLINED_FUNCTION_9();
  v71 = v18;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_34();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583C0, &unk_223209F28);
  OUTLINED_FUNCTION_9();
  v22 = v21;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v23);
  v25 = v67 - v24;
  v26 = v3[3];
  v81 = v3;
  OUTLINED_FUNCTION_29(v3, v26);
  sub_223134CEC();
  sub_223200794();
  if (v0)
  {
    goto LABEL_9;
  }

  v68 = v17;
  v69 = v1;
  v70 = v16;
  v27 = v78;
  v28 = v25;
  v29 = sub_223200594();
  sub_2230E0B80(v29, 0);
  if (v31 == v32 >> 1)
  {
LABEL_8:
    v41 = sub_2232003A4();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v43 = &type metadata for IntelligenceFlowStatusUpdateMessage.StatusUpdate;
    v44 = sub_223200484();
    OUTLINED_FUNCTION_48(v44);
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v22 + 8))(v28, v20);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v81);
LABEL_10:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (v31 < (v32 >> 1))
  {
    v67[0] = *(v30 + v31);
    v33 = sub_2230E0B40(v31 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    v67[1] = v33;
    if (v35 == v37 >> 1)
    {
      v38 = v77;
      switch(v67[0])
      {
        case 1:
          OUTLINED_FUNCTION_43();
          sub_223134E90();
          OUTLINED_FUNCTION_17_1(&type metadata for IntelligenceFlowStatusUpdateMessage.StatusUpdate.ProgressUpdateCodingKeys, &v82);
          sub_2231370BC();
          v47 = v73;
          OUTLINED_FUNCTION_47_1(&type metadata for IntelligenceFlowStatusUpdateMessage.ProgressUpdate, v48);
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_25();
          v62(v61, v47);
          v63 = OUTLINED_FUNCTION_19_0();
          v64(v63);
          v59 = v82;
          v60 = v83;
          v65 = v84;
          goto LABEL_15;
        case 2:
          LOBYTE(v82) = 2;
          sub_223134DE8();
          v45 = v27;
          OUTLINED_FUNCTION_17_1(&type metadata for IntelligenceFlowStatusUpdateMessage.StatusUpdate.StatusNotificationCodingKeys, &v82);
          sub_223137068();
          v46 = v74;
          sub_223200554();
          swift_unknownObjectRelease();
          (*(v75 + 8))(v45, v46);
          v49 = OUTLINED_FUNCTION_18_2();
          v50(v49);
          v59 = v82;
          *&v60 = v83;
          goto LABEL_14;
        case 3:
          LOBYTE(v82) = 3;
          sub_223134D40();
          OUTLINED_FUNCTION_17_1(&type metadata for IntelligenceFlowStatusUpdateMessage.StatusUpdate.HeartbeatCodingKeys, &v82);
          sub_223137014();
          sub_223200554();
          swift_unknownObjectRelease();
          v51 = OUTLINED_FUNCTION_3_12();
          v52(v51);
          v53 = OUTLINED_FUNCTION_18_2();
          v54(v53);
          v59 = 0;
          v60 = 0uLL;
          goto LABEL_14;
        default:
          LOBYTE(v82) = 0;
          sub_223134F38();
          OUTLINED_FUNCTION_17_1(&type metadata for IntelligenceFlowStatusUpdateMessage.StatusUpdate.ActionSummaryCodingKeys, &v82);
          sub_223137110();
          v39 = v68;
          OUTLINED_FUNCTION_47_1(&type metadata for IntelligenceFlowStatusUpdateMessage.ActionSummary, v40);
          swift_unknownObjectRelease();
          v55 = OUTLINED_FUNCTION_25();
          v56(v55, v39);
          v57 = OUTLINED_FUNCTION_18_2();
          v58(v57);
          v59 = v82;
          v60 = v83;
LABEL_14:
          v65 = 0uLL;
LABEL_15:
          v66 = v81;
          *v38 = v59;
          *(v38 + 8) = v60;
          *(v38 + 24) = v65;
          *(v38 + 40) = v67[0];
          __swift_destroy_boxed_opaque_existential_1(v66);
          break;
      }

      goto LABEL_10;
    }

    v28 = v25;
    goto LABEL_8;
  }

  __break(1u);
}

void IntelligenceFlowStatusUpdateMessage.StatusNotification.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v15 = 0;
  v16 = 0;
  a1(&v15);
  v3 = v16;
  if (v16)
  {
    *a2 = v15;
    a2[1] = v3;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_51();
      v14 = OUTLINED_FUNCTION_50();
      *v7 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583E8, &qword_223209F38);
      v8 = sub_223200104();
      v10 = sub_2231A5D38(v8, v9, &v14);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = sub_223200104();
      v13 = sub_2231A5D38(v11, v12, &v14);

      *(v7 + 14) = v13;
      _os_log_impl(&dword_2230CE000, v5, v6, "Could not build %{public}s: Builder %s has missing required fields", v7, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    else
    {
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t IntelligenceFlowStatusUpdateMessage.StatusNotification.Builder.statusString.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_223133904(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7453737574617473 && a2 == 0xEC000000676E6972)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231339A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223133904(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231339D0(uint64_t a1)
{
  v2 = sub_223137164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223133A0C(uint64_t a1)
{
  v2 = sub_223137164();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowStatusUpdateMessage.StatusNotification.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0583F0, &qword_223209F40);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_223137164();
  sub_2232007A4();
  OUTLINED_FUNCTION_46_0();
  sub_2232005F4();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_9_0();
}

void IntelligenceFlowStatusUpdateMessage.StatusNotification.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058400, &qword_223209F48);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  v10 = OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_29(v10, v11);
  sub_223137164();
  sub_223200794();
  if (!v0)
  {
    v12 = sub_2232004F4();
    v14 = v13;
    (*(v8 + 8))(v1, v6);
    *v5 = v12;
    v5[1] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_9_0();
}

uint64_t static IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v26 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v7 = OUTLINED_FUNCTION_33_0(v26, v2);
        v28 = OUTLINED_FUNCTION_5_13();
        v30 = OUTLINED_FUNCTION_2_15(v28, v29);
        v32 = OUTLINED_FUNCTION_2_15(v30, v31);
        sub_22312BDAC(v32, v33);
        v14 = OUTLINED_FUNCTION_5_13();
        goto LABEL_16;
      }

      v42 = OUTLINED_FUNCTION_2_15(v26, v2);
      v44 = OUTLINED_FUNCTION_2_15(v42, v43);
      sub_22312BDAC(v44, v45);
      sub_22312BDAC(v3, v2);
      return 1;
    }

LABEL_9:
    v16 = OUTLINED_FUNCTION_5_13();
    v18 = OUTLINED_FUNCTION_2_15(v16, v17);
    v20 = OUTLINED_FUNCTION_2_15(v18, v19);
    sub_22312BDAC(v20, v21);
    v22 = OUTLINED_FUNCTION_5_13();
    sub_22312BDAC(v22, v23);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v24 = 1;
    v34 = OUTLINED_FUNCTION_1_12();
    sub_22312BDA4(v34, v35);
    v36 = OUTLINED_FUNCTION_1_12();
    sub_22312BDA4(v36, v37);
    v38 = OUTLINED_FUNCTION_1_12();
    sub_22312BDAC(v38, v39);
    v40 = OUTLINED_FUNCTION_1_12();
    sub_22312BDAC(v40, v41);
    return v24;
  }

  v7 = OUTLINED_FUNCTION_33_0(*a1, v2);
  v8 = OUTLINED_FUNCTION_5_13();
  sub_22312BDA4(v8, v9);
  v10 = OUTLINED_FUNCTION_1_12();
  sub_22312BDA4(v10, v11);
  v12 = OUTLINED_FUNCTION_1_12();
  sub_22312BDAC(v12, v13);
  v14 = OUTLINED_FUNCTION_5_13();
LABEL_16:
  sub_22312BDAC(v14, v15);
  return v7 & 1;
}

uint64_t sub_223133E2C(uint64_t a1)
{
  v2 = sub_2231371B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223133E68(uint64_t a1)
{
  v2 = sub_2231371B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223133EA4(uint64_t a1)
{
  v2 = sub_223137260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223133EE0(uint64_t a1)
{
  v2 = sub_223137260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223133F1C(uint64_t a1)
{
  v2 = sub_22313720C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223133F58(uint64_t a1)
{
  v2 = sub_22313720C();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058408, &qword_223209F50);
  OUTLINED_FUNCTION_9();
  v40 = v27;
  v41 = v26;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_3();
  v39 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058410, &qword_223209F58);
  OUTLINED_FUNCTION_9();
  v38 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058418, &qword_223209F60);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v33 = *(v23 + 16);
  OUTLINED_FUNCTION_29(v25, v25[3]);
  sub_2231371B8();
  sub_2232007A4();
  if (v33)
  {
    sub_22313720C();
    sub_2232005B4();
    sub_2232005F4();
    (*(v40 + 8))(v39, v41);
  }

  else
  {
    sub_223137260();
    sub_2232005B4();
    sub_2232005F4();
    v34 = OUTLINED_FUNCTION_25();
    v35(v34, v38);
  }

  v36 = OUTLINED_FUNCTION_45();
  v37(v36);
  OUTLINED_FUNCTION_9_0();
}

void IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v40 = v2;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058438, &qword_223209F68);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_11();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058440, &qword_223209F70);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058448, &qword_223209F78);
  OUTLINED_FUNCTION_9();
  v39 = v9;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_2231371B8();
  sub_223200794();
  if (v0)
  {
    goto LABEL_9;
  }

  v41 = v4;
  v11 = sub_223200594();
  sub_2230E0B80(v11, 0);
  if (v13 == v14 >> 1)
  {
LABEL_7:
    v22 = sub_2232003A4();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v24 = &type metadata for IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary;
    v25 = sub_223200484();
    OUTLINED_FUNCTION_48(v25);
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v39 + 8))(v1, v8);
    v4 = v41;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_10:
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (v13 < (v14 >> 1))
  {
    v15 = *(v12 + v13);
    sub_2230E0B40(v13 + 1);
    v17 = v16;
    v19 = v18;
    swift_unknownObjectRelease();
    if (v17 == v19 >> 1)
    {
      v20 = v15;
      if (v15)
      {
        v37 = v15;
        sub_22313720C();
        OUTLINED_FUNCTION_8_8();
        sub_223200474();
        v21 = v40;
        v27 = sub_2232004F4();
        v29 = v28;
        swift_unknownObjectRelease();
        v30 = OUTLINED_FUNCTION_3_12();
        v31(v30);
        v20 = v37;
      }

      else
      {
        sub_223137260();
        OUTLINED_FUNCTION_8_8();
        sub_223200474();
        v21 = v40;
        v26 = sub_2232004F4();
        v29 = v32;
        v38 = v26;
        swift_unknownObjectRelease();
        v33 = OUTLINED_FUNCTION_25();
        v34(v33, v6);
        v27 = v38;
      }

      v35 = OUTLINED_FUNCTION_24();
      v36(v35);
      *v21 = v27;
      *(v21 + 8) = v29;
      *(v21 + 16) = v20;
      __swift_destroy_boxed_opaque_existential_1(v41);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void IntelligenceFlowStatusUpdateMessage.ActionSummary.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  a1(&v16);
  v3 = v17;
  if (v17 && (v4 = v18) != 0)
  {
    *a2 = v16;
    a2[1] = v3;
    a2[2] = v4;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v5 = sub_223200014();
    __swift_project_value_buffer(v5, qword_280FCE830);

    v6 = sub_223200004();
    v7 = sub_223200254();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_51();
      v15 = OUTLINED_FUNCTION_50();
      *v8 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058450, &qword_223209F80);
      v9 = sub_223200104();
      v11 = sub_2231A5D38(v9, v10, &v15);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = sub_223200104();
      v14 = sub_2231A5D38(v12, v13, &v15);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_2230CE000, v6, v7, "Could not build %{public}s: Builder %s has missing required fields", v8, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    else
    {
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t IntelligenceFlowStatusUpdateMessage.ActionSummary.Builder.formatString.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.ActionSummary.Builder.parameterSummaries.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_223134A5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v30 = (v6 + 63) >> 6;
  v31 = result;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v32 = (v8 - 1) & v8;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + 24 * v12;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);

    sub_22312BDA4(v18, v17);
    v20 = v14 == 0;
    if (!v14)
    {
      return v20;
    }

    v21 = sub_22314C358(v15, v14);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_32;
    }

    v24 = *(a2 + 56) + 24 * v21;
    v26 = *v24;
    v25 = *(v24 + 8);
    if (*(v24 + 16))
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_31;
      }

      if (v26 != v18 || v25 != v17)
      {
        goto LABEL_27;
      }

LABEL_29:

      sub_22312BDAC(v18, v17);
      result = sub_22312BDAC(v18, v17);
      v3 = v31;
      v8 = v32;
    }

    else
    {
      if (v19)
      {
LABEL_31:

        sub_22312BDAC(v26, v25);
LABEL_32:
        sub_22312BDAC(v18, v17);
        return 0;
      }

      if (v26 == v18 && v25 == v17)
      {
        goto LABEL_29;
      }

LABEL_27:
      v29 = sub_2232006B4();

      sub_22312BDAC(v26, v25);
      result = sub_22312BDAC(v18, v17);
      v3 = v31;
      v8 = v32;
      if ((v29 & 1) == 0)
      {
        return v20;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v30)
    {
      return 1;
    }

    v11 = *(v5 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v32 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_223134CEC()
{
  result = qword_27D058358;
  if (!qword_27D058358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058358);
  }

  return result;
}

unint64_t sub_223134D40()
{
  result = qword_27D058360;
  if (!qword_27D058360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058360);
  }

  return result;
}

unint64_t sub_223134D94()
{
  result = qword_27D058368;
  if (!qword_27D058368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058368);
  }

  return result;
}

unint64_t sub_223134DE8()
{
  result = qword_27D058370;
  if (!qword_27D058370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058370);
  }

  return result;
}

unint64_t sub_223134E3C()
{
  result = qword_27D058378;
  if (!qword_27D058378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058378);
  }

  return result;
}

unint64_t sub_223134E90()
{
  result = qword_27D058380;
  if (!qword_27D058380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058380);
  }

  return result;
}

unint64_t sub_223134EE4()
{
  result = qword_27D058388;
  if (!qword_27D058388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058388);
  }

  return result;
}

unint64_t sub_223134F38()
{
  result = qword_27D058390;
  if (!qword_27D058390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058390);
  }

  return result;
}

unint64_t sub_223134F8C()
{
  result = qword_27D058398;
  if (!qword_27D058398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058398);
  }

  return result;
}

uint64_t sub_223134FE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22314C358(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    v24 = v23[1];
    if (*v23 == v19 && v24 == v18)
    {

      result = v13;
      v7 = v27;
    }

    else
    {
      v26 = OUTLINED_FUNCTION_33_0(*v23, v24);

      result = v13;
      v7 = v27;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v27 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223135174(uint64_t a1)
{
  v2 = sub_2231372B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231351B0(uint64_t a1)
{
  v2 = sub_2231372B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowStatusUpdateMessage.ActionSummary.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058458, &qword_223209F88);
  OUTLINED_FUNCTION_9();
  v30 = v28;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29(v26, v26[3]);
  sub_2231372B4();
  sub_2232007A4();
  OUTLINED_FUNCTION_36_0();
  sub_2232005F4();
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058468, &qword_223209F90);
    sub_22313735C(&qword_27D058470, sub_223137308, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_223200654();
  }

  (*(v30 + 8))(v24, v27);
  OUTLINED_FUNCTION_9_0();
}

void IntelligenceFlowStatusUpdateMessage.ActionSummary.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058480, &qword_223209F98);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v6 = OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_29(v6, v7);
  v8 = sub_2231372B4();
  OUTLINED_FUNCTION_21_3(&type metadata for IntelligenceFlowStatusUpdateMessage.ActionSummary.CodingKeys, v9, v8);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    v10 = sub_2232004F4();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058468, &qword_223209F90);
    sub_22313735C(&qword_27D058488, sub_2231373E0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_9_7();
    sub_223200554();
    v13 = OUTLINED_FUNCTION_2();
    v14(v13);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v15;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_9_0();
}

void IntelligenceFlowStatusUpdateMessage.ProgressUpdate.init(build:)(void (*a1)(unsigned int *)@<X0>, void *a2@<X8>)
{
  v16 = 0;
  v17 = 1;
  v18 = 0u;
  v19 = 0u;
  a1(&v16);
  if (v17)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v3 = sub_223200014();
    __swift_project_value_buffer(v3, qword_280FCE830);

    v4 = sub_223200004();
    v5 = sub_223200254();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_51();
      v15 = OUTLINED_FUNCTION_50();
      *v6 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058498, &qword_223209FA0);
      v7 = sub_223200104();
      v9 = sub_2231A5D38(v7, v8, &v15);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2080;
      v10 = sub_223200104();
      v12 = sub_2231A5D38(v10, v11, &v15);

      *(v6 + 14) = v12;
      _os_log_impl(&dword_2230CE000, v4, v5, "Could not build %{public}s: Builder %s has missing required fields", v6, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    else
    {
    }

    *a2 = 0;
    a2[1] = 0;
    a2[3] = 0;
    a2[4] = 0;
    a2[2] = 1;
  }

  else
  {
    v13 = v18;
    v14 = v19;
    *a2 = v16;
    *(a2 + 1) = v13;
    *(a2 + 3) = v14;
  }
}

uint64_t IntelligenceFlowStatusUpdateMessage.ProgressUpdate.Builder.progress.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.ProgressUpdate.Builder.progressDescription.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.ProgressUpdate.Builder.additionalProgressDescription.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_22313595C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000223223090 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001DLL && 0x80000002232230B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_223135A78(char a1)
{
  if (!a1)
  {
    return 0x73736572676F7270;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_223135ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22313595C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223135B04(uint64_t a1)
{
  v2 = sub_223137434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223135B40(uint64_t a1)
{
  v2 = sub_223137434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceFlowStatusUpdateMessage.ProgressUpdate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0584A0, &qword_223209FA8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29(a1, a1[3]);
  sub_223137434();
  sub_2232007A4();
  sub_223200624();
  if (!v1)
  {
    OUTLINED_FUNCTION_36_0();
    sub_2232005C4();
    OUTLINED_FUNCTION_36_0();
    sub_2232005C4();
  }

  return (*(v6 + 8))(v2, v4);
}

void IntelligenceFlowStatusUpdateMessage.ProgressUpdate.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0584B0, &qword_223209FB0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v6 = OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_29(v6, v7);
  v8 = sub_223137434();
  OUTLINED_FUNCTION_21_3(&type metadata for IntelligenceFlowStatusUpdateMessage.ProgressUpdate.CodingKeys, v9, v8);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    sub_223200524();
    v11 = v10;
    OUTLINED_FUNCTION_9_7();
    v12 = sub_223200494();
    v14 = v13;
    OUTLINED_FUNCTION_9_7();
    v15 = sub_223200494();
    v17 = v16;
    v20 = v15;
    v18 = OUTLINED_FUNCTION_45();
    v19(v18);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v20;
    *(a2 + 32) = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_44_0();
}

uint64_t sub_223135F20(uint64_t a1)
{
  v2 = sub_223137488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223135F5C(uint64_t a1)
{
  v2 = sub_223137488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceFlowStatusUpdateMessage.Heartbeat.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0584B8, &qword_223209FB8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_29(a1, a1[3]);
  sub_223137488();
  sub_2232007A4();
  v3 = OUTLINED_FUNCTION_24();
  return v4(v3);
}

void IntelligenceFlowStatusUpdateMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0584C8, &qword_223209FC0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29(v3, v3[3]);
  v5 = sub_2231374DC();
  OUTLINED_FUNCTION_21_3(&type metadata for IntelligenceFlowStatusUpdateMessage.CodingKeys, v6, v5);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for IntelligenceFlowStatusUpdateMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_223137550();
    OUTLINED_FUNCTION_9_7();
    sub_223200554();
    v7 = v17;
    v8 = v18;
    v9 = v0 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate;
    v10 = v16[1];
    *v9 = v16[0];
    *(v9 + 16) = v10;
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_9_7();
    v11 = sub_2232004F4();
    v12 = (v0 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_rootRequestId);
    *v12 = v11;
    v12[1] = v13;
    sub_2230F7158(v3, v16);
    RequestMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_9_0();
}

void sub_223136384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0584E0, &unk_223209FC8);
  OUTLINED_FUNCTION_9();
  v30 = v29;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_29(v27, v27[3]);
  sub_2231374DC();
  sub_2232007A4();
  v37 = OUTLINED_FUNCTION_12_4(v23 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate);
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v42 = v36;
  sub_223131F94(v37, v32, v33, v34, v35, v36);
  sub_2231375A4();
  sub_223200654();
  sub_223132518(v37, v38, v39, v40, v41, v42);
  if (!v24)
  {
    OUTLINED_FUNCTION_43();
    sub_2232005F4();
    sub_2230D77A8(v27);
  }

  (*(v30 + 8))(v25, v28);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22313652C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7055737574617473 && a2 == 0xEC00000065746164;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75716552746F6F72 && a2 == 0xED00006449747365)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_223136600(char a1)
{
  if (a1)
  {
    return 0x75716552746F6F72;
  }

  else
  {
    return 0x7055737574617473;
  }
}

uint64_t sub_223136654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22313652C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22313667C(uint64_t a1)
{
  v2 = sub_2231374DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231366B8(uint64_t a1)
{
  v2 = sub_2231374DC();

  return MEMORY[0x2821FE720](a1, v2);
}

id IntelligenceFlowStatusUpdateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IntelligenceFlowStatusUpdateMessage.init(build:)(v1);
}

id IntelligenceFlowStatusUpdateMessage.init(build:)(void (*a1)(char *))
{
  ObjectType = swift_getObjectType();
  updated = type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0);
  v5 = MEMORY[0x28223BE20](updated);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v43 - v9;
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 20) = 4095;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  v11 = *(v8 + 28);
  v12 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v10[v11], 1, 1, v12);
  v13 = &v10[*(updated + 32)];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v10[*(updated + 36)];
  *v14 = 0;
  *(v14 + 1) = 0;
  a1(v10);
  v15 = v10[40];
  if (v15 == 255)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v24 = sub_223200014();
    __swift_project_value_buffer(v24, qword_280FCE830);
    v25 = sub_223200004();
    v26 = sub_223200254();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_51();
      v44 = OUTLINED_FUNCTION_50();
      *v27 = 136446466;
      v28 = sub_2230F7898(ObjectType);
      v30 = sub_2231A5D38(v28, v29, &v44);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      swift_beginAccess();
      sub_223137674(v10, v7);
      OUTLINED_FUNCTION_24();
      v31 = sub_223200104();
      v33 = sub_2231A5D38(v31, v32, &v44);

      *(v27 + 14) = v33;
      _os_log_impl(&dword_2230CE000, v25, v26, "Could not build %{public}s: Builder %s has missing required fields", v27, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    sub_223137618(v10);
    type metadata accessor for IntelligenceFlowStatusUpdateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v16 = *v10;
    v17 = *(v10 + 1);
    v18 = *(v10 + 2);
    v19 = *(v10 + 3);
    v20 = *(v10 + 4);
    v21 = v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate;
    *v21 = *v10;
    *(v21 + 8) = v17;
    *(v21 + 16) = v18;
    *(v21 + 24) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = v15;
    if (*(v14 + 1))
    {
      v22 = *v14;
      v23 = *(v14 + 1);
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    v35 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_rootRequestId);
    *v35 = v22;
    v35[1] = v23;
    v36 = MEMORY[0x28223BE20](v16);
    v43[-2] = v10;
    sub_2231376E0(v36, v37, v38, v39, v40, v41);

    v34 = RequestMessageBase.init(build:)(sub_2231376D8);
    sub_223137618(v10);
  }

  return v34;
}

uint64_t sub_223136AB8(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 41);
  v5 = *(a2 + 48);
  v4 = *(a2 + 56);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  updated = type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0);
  v7 = *(updated + 28);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(updated + 32));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

void IntelligenceFlowStatusUpdateMessage.Builder.statusUpdate.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  sub_2231376E0(v2, v3, v4, v5, v6, v7);
}

__n128 IntelligenceFlowStatusUpdateMessage.Builder.statusUpdate.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2231376F4(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowStatusUpdateMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}