uint64_t sub_1C88C2FA0(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B8DB8, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess, &protocol conformance descriptor for Siri_Nlu_External_SystemReportedSuccess);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C3038()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B89C8);
  __swift_project_value_buffer(v0, qword_1EC2B89C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "task";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C32C4()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__taskID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reason;
  v4 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__task, 1, 1, v4);
  return v0;
}

uint64_t sub_1C88C3354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__taskID;
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reason;
  v7 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__task, 1, 1, v7);
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v1;
}

uint64_t sub_1C88C36A0()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__taskID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reason, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__task, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  return v0;
}

uint64_t sub_1C88C3798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C88C3A00(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C88C3924(a2, a1, a3, a4);
        break;
      case 1:
        sub_1C88C3848(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1C88C3848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C3924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C3A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C3B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  v23 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v9 = MEMORY[0x1EEE9AC00](v23);
  v21[1] = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v21[2] = v21 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v21 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v16 = v24;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    v17 = v24;
    sub_1C8BD4E2C();
    v16 = v17;
    result = sub_1C87A0410();
    if (v17)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  v19 = v23;
  if (__swift_getEnumTagSinglePayload(v8, 1, v23) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v16)
    {
      return result;
    }
  }

  swift_beginAccess();
  v20 = v22;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v20, 1, v19) == 1)
  {
    return sub_1C8778ED8(v20, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  sub_1C879A720();
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4E2C();
  return sub_1C87A0410();
}

BOOL sub_1C88C4038(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v53 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v53);
  v46[1] = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  v3 = MEMORY[0x1EEE9AC00](v51);
  v47 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v46[0] = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v52 = v46 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v48 = v46 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v54 = v46 - v13;
  v14 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v46 - v24;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v26 = *(v17 + 56);
  sub_1C8778810();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v19, 1, v14) == 1)
  {

    sub_1C8778ED8(v25, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(&v19[v26], 1, v14) == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_1EC2B5EE8;
    v28 = &unk_1C8BE6F90;
    v29 = v19;
LABEL_14:
    sub_1C8778ED8(v29, v27, v28);
    goto LABEL_15;
  }

  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(&v19[v26], 1, v14) == 1)
  {

    sub_1C8778ED8(v25, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87A0410();
    goto LABEL_6;
  }

  v30 = v49;
  sub_1C879A720();

  v31 = static Siri_Nlu_External_UUID.== infix(_:_:)(v23, v30);
  sub_1C87A0410();
  sub_1C8778ED8(v25, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87A0410();
  sub_1C8778ED8(v19, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  swift_beginAccess();
  v32 = v54;
  sub_1C8778810();
  swift_beginAccess();
  v33 = v51;
  v34 = *(v51 + 48);
  v35 = v50;
  sub_1C8778810();
  sub_1C8778810();
  v36 = v53;
  if (__swift_getEnumTagSinglePayload(v35, 1, v53) != 1)
  {
    sub_1C8778810();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35 + v34, 1, v36);
    v38 = v52;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v54, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      sub_1C87A0410();
      goto LABEL_13;
    }

    sub_1C879A720();
    static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
    LODWORD(v49) = v41;
    sub_1C87A0410();
    sub_1C8778ED8(v54, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    sub_1C87A0410();
    sub_1C8778ED8(v35, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    if (v49)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_1C8778ED8(v32, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v37 = __swift_getEnumTagSinglePayload(v35 + v34, 1, v36);
  v38 = v52;
  if (v37 != 1)
  {
LABEL_13:
    v27 = &qword_1EC2B5FD8;
    v28 = &unk_1C8BE6C90;
    v29 = v35;
    goto LABEL_14;
  }

  sub_1C8778ED8(v35, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_19:
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v42 = *(v33 + 48);
  v43 = v47;
  sub_1C8778810();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v43, 1, v36) == 1)
  {

    sub_1C8778ED8(v38, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    if (__swift_getEnumTagSinglePayload(v43 + v42, 1, v36) == 1)
    {
      sub_1C8778ED8(v43, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      return 1;
    }

    goto LABEL_24;
  }

  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v43 + v42, 1, v36) == 1)
  {

    sub_1C8778ED8(v38, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    sub_1C87A0410();
LABEL_24:
    sub_1C8778ED8(v43, &qword_1EC2B5FD8, &unk_1C8BE6C90);
    return 0;
  }

  sub_1C879A720();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  v45 = v44;

  sub_1C87A0410();
  sub_1C8778ED8(v38, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  sub_1C87A0410();
  sub_1C8778ED8(v43, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  return (v45 & 1) != 0;
}

uint64_t sub_1C88C4AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8ED8, type metadata accessor for Siri_Nlu_External_SystemReportedFailure, &protocol conformance descriptor for Siri_Nlu_External_SystemReportedFailure);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C4B40(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8DD0, type metadata accessor for Siri_Nlu_External_SystemReportedFailure, &protocol conformance descriptor for Siri_Nlu_External_SystemReportedFailure);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C4BB0(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B8DD0, type metadata accessor for Siri_Nlu_External_SystemReportedFailure, &protocol conformance descriptor for Siri_Nlu_External_SystemReportedFailure);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C4C3C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACB030);
  __swift_project_value_buffer(v0, qword_1EDACB030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "group_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seq";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RRGroupIdentifier.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_8();
      sub_1C88C4F70(v7, v8, v9, v10, v11, v12);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C88C4EBC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1C88C4EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88C4F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = a5(0);
  OUTLINED_FUNCTION_329_0(v7);
  OUTLINED_FUNCTION_55();
  return a6();
}

void Siri_Nlu_External_RRGroupIdentifier.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_299_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_210();
  v10 = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_65_6();
  type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(v12);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v2);
  if (v13)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_469();
    v14(v1, v2, v10);
    OUTLINED_FUNCTION_11_13();
    sub_1C8776788(v15, v16, MEMORY[0x1E69AA998]);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_248_2();
    OUTLINED_FUNCTION_504(v17, v18, v19, v20, v21);
    if (v0)
    {
      v22 = OUTLINED_FUNCTION_127_0();
      v23(v22);
      goto LABEL_10;
    }

    v24 = OUTLINED_FUNCTION_127_0();
    v25(v24);
  }

  OUTLINED_FUNCTION_467();
  if ((v26 & 1) != 0 || (OUTLINED_FUNCTION_48_0(), sub_1C8BD4D8C(), !v0))
  {
    OUTLINED_FUNCTION_15();
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_RRGroupIdentifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  OUTLINED_FUNCTION_241();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v6 = OUTLINED_FUNCTION_233();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_212();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_45();
  v31 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(v11);
  v12 = *(v2 + 56);
  OUTLINED_FUNCTION_417_0();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_19(v1);
  if (!v13)
  {
    OUTLINED_FUNCTION_178_2();
    sub_1C8778810();
    OUTLINED_FUNCTION_19(v1 + v12);
    if (!v13)
    {
      v17 = OUTLINED_FUNCTION_453();
      v18(v17);
      OUTLINED_FUNCTION_11_13();
      sub_1C8776788(v19, v20, MEMORY[0x1E69AA9A8]);
      OUTLINED_FUNCTION_298_0();
      OUTLINED_FUNCTION_321_0();
      v21 = sub_1C8BD517C();
      v22 = *(v0 + 8);
      v23 = OUTLINED_FUNCTION_254_0();
      v22(v23);
      v24 = OUTLINED_FUNCTION_119_0();
      v22(v24);
      sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
      if ((v21 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v14 = OUTLINED_FUNCTION_119_0();
    v15(v14);
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2B6118, &qword_1C8BE6DC0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19(v1 + v12);
  if (!v13)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
LABEL_13:
  v25 = *(v31 + 24);
  v26 = *(v0 + v25 + 4);
  v27 = *(v4 + v25 + 4);
  if (v26)
  {
    if (v27)
    {
      goto LABEL_17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if ((v28 & 1) == 0)
    {
LABEL_17:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_196_0();
      v16 = sub_1C8BD517C();
      goto LABEL_11;
    }
  }

LABEL_10:
  v16 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v16);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C550C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8ED0, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier, &protocol conformance descriptor for Siri_Nlu_External_RRGroupIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C558C(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACB020, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier, &protocol conformance descriptor for Siri_Nlu_External_RRGroupIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C55FC(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACB020, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier, &protocol conformance descriptor for Siri_Nlu_External_RRGroupIdentifier);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C5694()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B89E8);
  __swift_project_value_buffer(v0, qword_1EC2B89E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C58C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_RRAnnotation(0);
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88C5974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_RRAnnotation(0);
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_RRAnnotation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v32 = v4;
  v33 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v6 = OUTLINED_FUNCTION_80(v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_206_0();
  v10 = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = *(type metadata accessor for Siri_Nlu_External_RRAnnotation(0) + 20);
  v31 = v0;
  OUTLINED_FUNCTION_202_0(v15);
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v2);
  if (v16)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    OUTLINED_FUNCTION_469();
    v17(v14, v2, v10);
    OUTLINED_FUNCTION_11_13();
    sub_1C8776788(v18, v19, MEMORY[0x1E69AA998]);
    sub_1C8BD4E2C();
    if (v1)
    {
      goto LABEL_10;
    }

    v20 = OUTLINED_FUNCTION_215();
    v21(v20);
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v9);
  if (v16)
  {
    sub_1C8778ED8(v9, &qword_1EC2B6110, &qword_1C8BF5070);
LABEL_12:
    sub_1C8BD49DC();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_469();
  v22 = OUTLINED_FUNCTION_233();
  v23(v22);
  OUTLINED_FUNCTION_11_13();
  sub_1C8776788(v24, v25, MEMORY[0x1E69AA998]);
  sub_1C8BD4E2C();
  if (!v1)
  {
    v28 = OUTLINED_FUNCTION_234();
    v29(v28);
    goto LABEL_12;
  }

LABEL_10:
  v26 = OUTLINED_FUNCTION_215();
  v27(v26);
LABEL_13:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_RRAnnotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v49 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_0();
  v44 = v7;
  v8 = OUTLINED_FUNCTION_12();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v11 = OUTLINED_FUNCTION_80(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_0();
  v43 = v12;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10_0();
  v46 = v18;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v45 = type metadata accessor for Siri_Nlu_External_RRAnnotation(0);
  v22 = *(v16 + 48);
  v47 = v3;
  OUTLINED_FUNCTION_262();
  v48 = v1;
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_19(v21);
  if (v23)
  {
    OUTLINED_FUNCTION_19(&v21[v22]);
    if (!v23)
    {
      goto LABEL_16;
    }

    sub_1C8778ED8(v21, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    OUTLINED_FUNCTION_233();
    sub_1C8778810();
    OUTLINED_FUNCTION_19(&v21[v22]);
    if (v23)
    {
LABEL_15:
      (*(v49 + 8))(v15, v4);
LABEL_16:
      sub_1C8778ED8(v21, &qword_1EC2B6118, &qword_1C8BE6DC0);
      goto LABEL_17;
    }

    v24 = v49;
    (*(v49 + 32))(v44, &v21[v22], v4);
    OUTLINED_FUNCTION_11_13();
    sub_1C8776788(v25, v26, MEMORY[0x1E69AA9A8]);
    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_498();
    v27 = sub_1C8BD517C();
    v28 = *(v24 + 8);
    v29 = OUTLINED_FUNCTION_300();
    v28(v29);
    (v28)(v15, v4);
    sub_1C8778ED8(v21, &qword_1EC2B6110, &qword_1C8BF5070);
    if ((v27 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v21 = v46;
  v30 = *(v16 + 48);
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_19(v21);
  if (v23)
  {
    OUTLINED_FUNCTION_19(&v21[v30]);
    if (v23)
    {
      sub_1C8778ED8(v21, &qword_1EC2B6110, &qword_1C8BF5070);
LABEL_20:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v40, v41, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_299_0();
      v32 = sub_1C8BD517C();
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v15 = v43;
  sub_1C8778810();
  OUTLINED_FUNCTION_19(&v21[v30]);
  if (v31)
  {
    goto LABEL_15;
  }

  v33 = v49;
  OUTLINED_FUNCTION_469();
  v34(v44, &v21[v30], v4);
  OUTLINED_FUNCTION_11_13();
  sub_1C8776788(v35, v36, MEMORY[0x1E69AA9A8]);
  OUTLINED_FUNCTION_118_0();
  v37 = sub_1C8BD517C();
  v38 = *(v33 + 8);
  v39 = OUTLINED_FUNCTION_119_0();
  v38(v39);
  (v38)(v15, v4);
  sub_1C8778ED8(v21, &qword_1EC2B6110, &qword_1C8BF5070);
  if (v37)
  {
    goto LABEL_20;
  }

LABEL_17:
  v32 = 0;
LABEL_18:
  OUTLINED_FUNCTION_157(v32);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C6228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EC8, type metadata accessor for Siri_Nlu_External_RRAnnotation, &protocol conformance descriptor for Siri_Nlu_External_RRAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C62A8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8DF0, type metadata accessor for Siri_Nlu_External_RRAnnotation, &protocol conformance descriptor for Siri_Nlu_External_RRAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C6318(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B8DF0, type metadata accessor for Siri_Nlu_External_RRAnnotation, &protocol conformance descriptor for Siri_Nlu_External_RRAnnotation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C63A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8A00);
  __swift_project_value_buffer(v0, qword_1EC2B8A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x_coordinate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y_coordinate";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RRBoundingBox.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88C66D8(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CC91C();
        break;
      case 3:
        OUTLINED_FUNCTION_27_5();
        sub_1C88C673C();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C88C6780(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88C673C()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 28));
  return sub_1C8BD4BFC();
}

uint64_t Siri_Nlu_External_RRBoundingBox.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_72_4();
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(v1);
  OUTLINED_FUNCTION_459();
  OUTLINED_FUNCTION_468();
  if ((v2 & 1) != 0 || (OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
  {
    OUTLINED_FUNCTION_468();
    if ((v4 & 1) != 0 || (OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
    {
      OUTLINED_FUNCTION_468();
      if ((v5 & 1) != 0 || (OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
      {
        OUTLINED_FUNCTION_468();
        if (v6)
        {
          return OUTLINED_FUNCTION_15();
        }

        OUTLINED_FUNCTION_55();
        result = sub_1C8BD4DCC();
        if (!v0)
        {
          return OUTLINED_FUNCTION_15();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_RRBoundingBox.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(v0);
  OUTLINED_FUNCTION_4_0();
  if (v2)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v3)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0();
  if (v5)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v6)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0();
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_36();
    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

LABEL_13:
  OUTLINED_FUNCTION_4_0();
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v13)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  v16 = sub_1C8776788(v14, v15, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v16) & 1;
}

uint64_t sub_1C88C6A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EC0, type metadata accessor for Siri_Nlu_External_RRBoundingBox, &protocol conformance descriptor for Siri_Nlu_External_RRBoundingBox);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C6AB8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8BD0, type metadata accessor for Siri_Nlu_External_RRBoundingBox, &protocol conformance descriptor for Siri_Nlu_External_RRBoundingBox);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C6B28(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B8BD0, type metadata accessor for Siri_Nlu_External_RRBoundingBox, &protocol conformance descriptor for Siri_Nlu_External_RRBoundingBox);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C6BB4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8A18);
  __swift_project_value_buffer(v0, qword_1EC2B8A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bounding_box";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RRSurroundingText.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C88C6E1C(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_27_5();
      sub_1C88CDF80();
    }
  }

  return result;
}

uint64_t sub_1C88C6E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_RRSurroundingText(0);
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  sub_1C8776788(&qword_1EC2B8BD0, type metadata accessor for Siri_Nlu_External_RRBoundingBox, &protocol conformance descriptor for Siri_Nlu_External_RRBoundingBox);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_RRSurroundingText.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_137_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6128, &qword_1C8BE6DC8);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v6 = OUTLINED_FUNCTION_402();
  type metadata accessor for Siri_Nlu_External_RRSurroundingText(v6);
  OUTLINED_FUNCTION_16_2();
  if (!v7 || (OUTLINED_FUNCTION_9_5(*v8, v7, 1), !v0))
  {
    sub_1C8778810();
    v9 = OUTLINED_FUNCTION_158_1();
    OUTLINED_FUNCTION_188_0(v9, v10);
    if (v11)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
LABEL_7:
      OUTLINED_FUNCTION_15();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_127_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_350();
    v14 = sub_1C8776788(v12, v13, &protocol conformance descriptor for Siri_Nlu_External_RRBoundingBox);
    OUTLINED_FUNCTION_76_3(v14);
    OUTLINED_FUNCTION_97_2();
    sub_1C87A0410();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_RRSurroundingText.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6128, &qword_1C8BE6DC8);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6130, &unk_1C8BE6DD0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_RRSurroundingText(v7);
  OUTLINED_FUNCTION_1();
  if (v10)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_35(v9);
    v13 = v13 && v11 == v12;
    if (!v13 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v8)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  v14 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v14, v15, v2);
  if (v13)
  {
    OUTLINED_FUNCTION_219();
    OUTLINED_FUNCTION_76(v16, v17, v18);
    if (v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6128, &qword_1C8BE6DC8);
LABEL_22:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v27 = sub_1C8776788(v25, v26, MEMORY[0x1E69AAC10]);
      v23 = OUTLINED_FUNCTION_159(v27);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_76(v19, v20, v21);
  if (v22)
  {
    OUTLINED_FUNCTION_97_2();
    sub_1C87A0410();
LABEL_18:
    sub_1C8778ED8(v0, &qword_1EC2B6130, &unk_1C8BE6DD0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_20_7();
  sub_1C879A720();
  OUTLINED_FUNCTION_168_0();
  v24 = static Siri_Nlu_External_RRBoundingBox.== infix(_:_:)();
  sub_1C87A0410();
  OUTLINED_FUNCTION_178_2();
  sub_1C87A0410();
  sub_1C8778ED8(v0, &qword_1EC2B6128, &qword_1C8BE6DC8);
  if (v24)
  {
    goto LABEL_22;
  }

LABEL_19:
  v23 = 0;
LABEL_20:
  OUTLINED_FUNCTION_157(v23);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C7338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EB8, type metadata accessor for Siri_Nlu_External_RRSurroundingText, &protocol conformance descriptor for Siri_Nlu_External_RRSurroundingText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C73B8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8BE0, type metadata accessor for Siri_Nlu_External_RRSurroundingText, &protocol conformance descriptor for Siri_Nlu_External_RRSurroundingText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C7428(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B8BE0, type metadata accessor for Siri_Nlu_External_RRSurroundingText, &protocol conformance descriptor for Siri_Nlu_External_RRSurroundingText);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C74C0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACC730);
  __swift_project_value_buffer(v0, qword_1EDACC730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bounding_box";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "surrounding_texts";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "data_source";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_RRMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C88C786C(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88C77B8(v3, v4, v5, v6);
        break;
    }
  }
}

uint64_t sub_1C88C77B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(0);
  sub_1C8776788(&qword_1EC2B8BD0, type metadata accessor for Siri_Nlu_External_RRBoundingBox, &protocol conformance descriptor for Siri_Nlu_External_RRBoundingBox);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88C786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  sub_1C88D09BC();
  return sub_1C8BD4B4C();
}

void Siri_Nlu_External_RRMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_65_6();
  v15 = type metadata accessor for Siri_Nlu_External_RRMetadata(v9);
  OUTLINED_FUNCTION_329_0(v15);
  sub_1C8778810();
  v10 = OUTLINED_FUNCTION_323_0();
  OUTLINED_FUNCTION_188_0(v10, v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6128, &qword_1C8BE6DC8);
  }

  else
  {
    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_455();
    sub_1C879A720();
    OUTLINED_FUNCTION_350();
    sub_1C8776788(v13, v14, &protocol conformance descriptor for Siri_Nlu_External_RRBoundingBox);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_248_2();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_97_2();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_RRSurroundingText(0), sub_1C8776788(&qword_1EC2B8BE0, type metadata accessor for Siri_Nlu_External_RRSurroundingText, &protocol conformance descriptor for Siri_Nlu_External_RRSurroundingText), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_515(), OUTLINED_FUNCTION_248_2(), sub_1C8BD4E0C(), !v1))
  {
    if (*(v0 + *(v15 + 28)) == 6 || (sub_1C88D09BC(), OUTLINED_FUNCTION_248_2(), sub_1C8BD4D4C(), !v1))
    {
      OUTLINED_FUNCTION_516();
      sub_1C8BD49DC();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_RRMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_333();
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v7 = OUTLINED_FUNCTION_233();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6130, &unk_1C8BE6DD0);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_45();
  v23 = type metadata accessor for Siri_Nlu_External_RRMetadata(v12);
  OUTLINED_FUNCTION_398();
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_17_6(v1);
  if (v13)
  {
    OUTLINED_FUNCTION_17_6(v1 + v2);
    if (v13)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2B6130, &unk_1C8BE6DD0);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_299_0();
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v1 + v2);
  if (v13)
  {
    OUTLINED_FUNCTION_97_2();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_20_7();
  sub_1C879A720();
  OUTLINED_FUNCTION_260_0();
  v14 = static Siri_Nlu_External_RRBoundingBox.== infix(_:_:)();
  sub_1C87A0410();
  OUTLINED_FUNCTION_229();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
  if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  OUTLINED_FUNCTION_481();
  sub_1C87DEC44();
  if (v15)
  {
    v16 = *(v23 + 28);
    v17 = *(v0 + v16);
    v18 = *(v4 + v16);
    if (v17 == 6)
    {
      if (v18 != 6)
      {
        goto LABEL_14;
      }
    }

    else if (v17 != v18)
    {
      goto LABEL_14;
    }

    sub_1C8BD49FC();
    OUTLINED_FUNCTION_2_18();
    v22 = sub_1C8776788(v20, v21, MEMORY[0x1E69AAC10]);
    v19 = OUTLINED_FUNCTION_299(v22);
    goto LABEL_15;
  }

LABEL_14:
  v19 = 0;
LABEL_15:
  OUTLINED_FUNCTION_157(v19);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C7E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EB0, type metadata accessor for Siri_Nlu_External_RRMetadata, &protocol conformance descriptor for Siri_Nlu_External_RRMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C7E88(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACC720, type metadata accessor for Siri_Nlu_External_RRMetadata, &protocol conformance descriptor for Siri_Nlu_External_RRMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C7EF8(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACC720, type metadata accessor for Siri_Nlu_External_RRMetadata, &protocol conformance descriptor for Siri_Nlu_External_RRMetadata);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C7F78()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACC778);
  __swift_project_value_buffer(v0, qword_1EDACC778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CONVERSATIONAL";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ON_SCREEN";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NOTIFICATION";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ANNOUNCEMENT";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VISUAL";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C8274()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACB7E8);
  __swift_project_value_buffer(v0, qword_1EDACB7E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C8BE7150;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "entity";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "score";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "entity_id";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "app_bundle_id";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "group_id";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "annotations";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "metadata";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C85CC()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entity;
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__score;
  v4 = sub_1C8BD48FC();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entityID;
  v6 = sub_1C8BD493C();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__groupID;
  v8 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__metadata;
  v10 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  return v0;
}

uint64_t sub_1C88C86DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA8, &unk_1C8BF50C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25[5] = v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA0, &qword_1C8BF50B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25[4] = v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v25[0] = v25 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entity;
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__score;
  v14 = sub_1C8BD48FC();
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entityID;
  v16 = sub_1C8BD493C();
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v25[1] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__groupID;
  v25[2] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__groupID;
  v18 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations) = MEMORY[0x1E69E7CC0];
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__metadata;
  v25[3] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__metadata;
  v21 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations;
  swift_beginAccess();
  v23 = *(a1 + v22);
  swift_beginAccess();
  *(v1 + v19) = v23;

  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v1;
}

uint64_t sub_1C88C8D50()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entity, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__score, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entityID, &qword_1EC2B6110, &qword_1C8BF5070);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID, &qword_1EC2B6110, &qword_1C8BF5070);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__groupID, &qword_1EC2B8AA0, &qword_1C8BF50B8);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__metadata, &qword_1EC2B8AA8, &unk_1C8BF50C0);
  return v0;
}

uint64_t sub_1C88C8EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C88C8FEC(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C88C90C8(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C88C91A4(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C88C9280(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C88C935C(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C88C9438(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C88C9514(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88C8FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C90C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD48FC();
  sub_1C8776788(&qword_1EDACA320, MEMORY[0x1E69AA960], MEMORY[0x1E69AA958]);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C91A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C9280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C935C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  sub_1C8776788(&qword_1EDACB020, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier, &protocol conformance descriptor for Siri_Nlu_External_RRGroupIdentifier);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C9438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RRAnnotation(0);
  sub_1C8776788(&qword_1EC2B8DF0, type metadata accessor for Siri_Nlu_External_RRAnnotation, &protocol conformance descriptor for Siri_Nlu_External_RRAnnotation);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C88C9514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  sub_1C8776788(&qword_1EDACC720, type metadata accessor for Siri_Nlu_External_RRMetadata, &protocol conformance descriptor for Siri_Nlu_External_RRMetadata);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88C9620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v59 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA8, &unk_1C8BF50C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = v43 - v6;
  v44 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  MEMORY[0x1EEE9AC00](v44);
  v43[1] = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA0, &qword_1C8BF50B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = v43 - v9;
  v48 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(0);
  MEMORY[0x1EEE9AC00](v48);
  v45 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = v43 - v14;
  v56 = sub_1C8BD493C();
  v53 = *(v56 - 8);
  v15 = MEMORY[0x1EEE9AC00](v56);
  v46 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v49 = v43 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v43 - v19;
  v55 = sub_1C8BD48FC();
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v51 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v43 - v23;
  v25 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v25);
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_1C8778ED8(v24, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    v26 = v58;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
    v27 = v58;
    sub_1C8BD4E2C();
    v26 = v27;
    result = sub_1C87A0410();
    if (v27)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  v29 = v55;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v55);
  v31 = v57;
  v32 = v56;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v20, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
  }

  else
  {
    v33 = v52;
    v34 = v51;
    (*(v52 + 32))();
    sub_1C8776788(&qword_1EDACA320, MEMORY[0x1E69AA960], MEMORY[0x1E69AA958]);
    sub_1C8BD4E2C();
    if (v26)
    {
      return (*(v33 + 8))(v34, v29);
    }

    (*(v33 + 8))(v34, v29);
    v31 = v57;
  }

  swift_beginAccess();
  v35 = v54;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v35, 1, v32) == 1)
  {
    sub_1C8778ED8(v35, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    v36 = v35;
    v37 = v53;
    v38 = v49;
    (*(v53 + 32))(v49, v36, v32);
    sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
    sub_1C8BD4E2C();
    if (v26)
    {
      return (*(v37 + 8))(v38, v32);
    }

    (*(v37 + 8))(v38, v32);
  }

  swift_beginAccess();
  v39 = v50;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v39, 1, v32) == 1)
  {
    sub_1C8778ED8(v39, &qword_1EC2B6110, &qword_1C8BF5070);
    goto LABEL_18;
  }

  v40 = v39;
  v37 = v53;
  v38 = v46;
  (*(v53 + 32))(v46, v40, v32);
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  sub_1C8BD4E2C();
  if (v26)
  {
    return (*(v37 + 8))(v38, v32);
  }

  (*(v37 + 8))(v38, v32);
LABEL_18:
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v31, 1, v48) == 1)
  {
    sub_1C8778ED8(v31, &qword_1EC2B8AA0, &qword_1C8BF50B8);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACB020, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier, &protocol conformance descriptor for Siri_Nlu_External_RRGroupIdentifier);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v26)
    {
      return result;
    }
  }

  v41 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations;
  swift_beginAccess();
  if (!*(*(a1 + v41) + 16) || (type metadata accessor for Siri_Nlu_External_RRAnnotation(0), sub_1C8776788(&qword_1EC2B8DF0, type metadata accessor for Siri_Nlu_External_RRAnnotation, &protocol conformance descriptor for Siri_Nlu_External_RRAnnotation), , sub_1C8BD4E0C(), result = , !v26))
  {
    swift_beginAccess();
    v42 = v47;
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v42, 1, v44) == 1)
    {
      return sub_1C8778ED8(v47, &qword_1EC2B8AA8, &unk_1C8BF50C0);
    }

    else
    {
      sub_1C879A720();
      sub_1C8776788(&qword_1EDACC720, type metadata accessor for Siri_Nlu_External_RRMetadata, &protocol conformance descriptor for Siri_Nlu_External_RRMetadata);
      sub_1C8BD4E2C();
      return sub_1C87A0410();
    }
  }

  return result;
}

uint64_t sub_1C88CA250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_84();
  v9 = v8(v7);
  if (*(v5 + *(v9 + 20)) != *(v4 + *(v9 + 20)))
  {

    v10 = OUTLINED_FUNCTION_253();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  v14 = sub_1C8776788(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v14) & 1;
}

void sub_1C88CA314()
{
  OUTLINED_FUNCTION_124();
  v178 = v2;
  v4 = v3;
  v151 = type metadata accessor for Siri_Nlu_External_RRMetadata(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v149[1] = v6;
  v149[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FC0, &qword_1C8BF9EE0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v152 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA8, &unk_1C8BF50C0);
  v10 = OUTLINED_FUNCTION_80(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_0();
  v149[2] = v11;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_96();
  v150 = v13;
  v14 = OUTLINED_FUNCTION_86();
  v156 = type metadata accessor for Siri_Nlu_External_RRGroupIdentifier(v14);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_0();
  v153 = v16;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FC8, &qword_1C8BF9EE8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_81();
  v157 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AA0, &qword_1C8BF50B8);
  v20 = OUTLINED_FUNCTION_80(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_10_0();
  v154 = v21;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_96();
  v159 = v23;
  OUTLINED_FUNCTION_86();
  v167 = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v165 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9_0();
  v160 = v26;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_10_0();
  v161 = v28;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_96();
  v166 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v32 = OUTLINED_FUNCTION_80(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_10_0();
  v158 = v33;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v34);
  v163 = v149 - v35;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v36);
  v162 = v149 - v37;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_96();
  v172 = v39;
  OUTLINED_FUNCTION_86();
  v175 = sub_1C8BD48FC();
  OUTLINED_FUNCTION_13_1();
  v169 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9_0();
  v164 = v42;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD0, &unk_1C8BE6C80);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_81();
  v174 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  v46 = OUTLINED_FUNCTION_80(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_10_0();
  v168 = v47;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_96();
  v176 = v49;
  v50 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v50);
  OUTLINED_FUNCTION_48_5();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_9_0();
  v171 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_252();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v56 = OUTLINED_FUNCTION_80(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_10_0();
  v177 = v57;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entity, &v192);
  OUTLINED_FUNCTION_55();
  sub_1C8778810();
  v59 = v178;
  OUTLINED_FUNCTION_277(v178 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entity, &v191);
  v60 = *(v53 + 56);
  OUTLINED_FUNCTION_229();
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_72(v1);
  if (v61)
  {

    sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_72(v1 + v60);
    if (v61)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      goto LABEL_12;
    }

LABEL_9:
    v62 = &qword_1EC2B5FD8;
    v63 = &unk_1C8BE6C90;
LABEL_10:
    v64 = v1;
LABEL_32:
    sub_1C8778ED8(v64, v62, v63);
LABEL_33:

    goto LABEL_34;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_72(v1 + v60);
  if (v61)
  {

    sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_13();
  sub_1C879A720();

  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_357();
  sub_1C87A0410();
  OUTLINED_FUNCTION_392();
  sub_1C8778ED8(v65, v66, v67);
  sub_1C87A0410();
  OUTLINED_FUNCTION_392();
  sub_1C8778ED8(v68, v69, v70);
  if ((v60 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_12:
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__score, &v190);
  v71 = v176;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v59 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__score, &v189);
  v72 = v174;
  OUTLINED_FUNCTION_424();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v73 = OUTLINED_FUNCTION_323_0();
  v74 = v175;
  OUTLINED_FUNCTION_41_2(v73, v75);
  if (v61)
  {
    sub_1C8778ED8(v71, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    OUTLINED_FUNCTION_19(&dword_1EDACB000 + v72);
    v76 = v172;
    if (v61)
    {
      v177 = v4;
      sub_1C8778ED8(v72, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
      goto LABEL_22;
    }

LABEL_20:
    v62 = &qword_1EC2B5FD0;
    v63 = &unk_1C8BE6C80;
LABEL_31:
    v64 = v72;
    goto LABEL_32;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(&dword_1EDACB000 + v72);
  if (v77)
  {
    sub_1C8778ED8(v71, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    v78 = OUTLINED_FUNCTION_300();
    v79(v78);
    goto LABEL_20;
  }

  v177 = v4;
  v80 = v169;
  (*(v169 + 32))(v164, &dword_1EDACB000 + v72, v74);
  OUTLINED_FUNCTION_175_1();
  sub_1C8776788(v81, v82, MEMORY[0x1E69AA968]);
  OUTLINED_FUNCTION_168_0();
  LODWORD(v173) = sub_1C8BD517C();
  v83 = *(v80 + 8);
  v84 = OUTLINED_FUNCTION_82_3();
  v83(v84);
  OUTLINED_FUNCTION_393();
  sub_1C8778ED8(v85, v86, v87);
  v88 = OUTLINED_FUNCTION_119_0();
  v83(v88);
  OUTLINED_FUNCTION_393();
  sub_1C8778ED8(v89, v90, v91);
  v76 = v172;
  if ((v173 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  v92 = v177;
  OUTLINED_FUNCTION_277(v177 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entityID, &v188);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v59 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__entityID, &v187);
  OUTLINED_FUNCTION_424();
  v72 = v166;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v93 = OUTLINED_FUNCTION_323_0();
  v94 = v167;
  OUTLINED_FUNCTION_41_2(v93, v95);
  if (v61)
  {
    sub_1C8778ED8(v76, &qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_19(&dword_1EDACB000 + v72);
    if (v61)
    {
      sub_1C8778ED8(v72, &qword_1EC2B6110, &qword_1C8BF5070);
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(&dword_1EDACB000 + v72);
  if (v96)
  {
    sub_1C8778ED8(v76, &qword_1EC2B6110, &qword_1C8BF5070);
    v97 = OUTLINED_FUNCTION_259();
    v98(v97);
LABEL_30:
    v62 = &qword_1EC2B6118;
    v63 = &qword_1C8BE6DC0;
    goto LABEL_31;
  }

  v99 = v165;
  v100 = OUTLINED_FUNCTION_488();
  v101(v100);
  OUTLINED_FUNCTION_11_13();
  sub_1C8776788(v102, v103, MEMORY[0x1E69AA9A8]);
  OUTLINED_FUNCTION_100();
  LODWORD(v176) = sub_1C8BD517C();
  v104 = *(v99 + 8);
  v105 = OUTLINED_FUNCTION_82_3();
  v104(v105);
  sub_1C8778ED8(v76, &qword_1EC2B6110, &qword_1C8BF5070);
  v106 = OUTLINED_FUNCTION_254_0();
  v104(v106);
  sub_1C8778ED8(v72, &qword_1EC2B6110, &qword_1C8BF5070);
  if ((v176 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_37:
  OUTLINED_FUNCTION_277(v92 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID, &v186);
  v107 = v163;
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v59 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__appBundleID, &v185);
  OUTLINED_FUNCTION_450_0();
  v1 = v161;
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v1);
  if (v61)
  {
    sub_1C8778ED8(v107, &qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_19(&dword_1EDACB000 + v1);
    if (v61)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v108 = v158;
  sub_1C8778810();
  OUTLINED_FUNCTION_19(&dword_1EDACB000 + v1);
  if (v109)
  {
    sub_1C8778ED8(v163, &qword_1EC2B6110, &qword_1C8BF5070);
    v110 = OUTLINED_FUNCTION_300();
    v111(v110);
LABEL_45:
    v62 = &qword_1EC2B6118;
    v63 = &qword_1C8BE6DC0;
    goto LABEL_10;
  }

  v112 = v165;
  v113 = OUTLINED_FUNCTION_488();
  v114(v113);
  OUTLINED_FUNCTION_11_13();
  sub_1C8776788(v115, v116, MEMORY[0x1E69AA9A8]);
  OUTLINED_FUNCTION_168_0();
  LODWORD(v176) = sub_1C8BD517C();
  v117 = *(v112 + 8);
  v117(&qword_1C8BF5070, v94);
  OUTLINED_FUNCTION_393();
  sub_1C8778ED8(v118, v119, v120);
  v117(v108, v94);
  OUTLINED_FUNCTION_393();
  sub_1C8778ED8(v121, v122, v123);
  if ((v176 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_47:
  v124 = &dword_1EDACB000;
  OUTLINED_FUNCTION_277(v92 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__groupID, &v184);
  v125 = v159;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v59 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__groupID, &v183);
  OUTLINED_FUNCTION_424();
  v126 = v157;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v127 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_82_1(v127, v128);
  if (v61)
  {
    sub_1C8778ED8(v125, &qword_1EC2B8AA0, &qword_1C8BF50B8);
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v126);
    if (v61)
    {
      sub_1C8778ED8(v126, &qword_1EC2B8AA0, &qword_1C8BF50B8);
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v126);
  if (v129)
  {
    sub_1C8778ED8(v159, &qword_1EC2B8AA0, &qword_1C8BF50B8);
    sub_1C87A0410();
LABEL_55:
    v62 = &qword_1EC2B8FC8;
    v63 = &qword_1C8BF9EE8;
    v64 = v126;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_114_1();
  sub_1C879A720();
  static Siri_Nlu_External_RRGroupIdentifier.== infix(_:_:)();
  v131 = v130;
  sub_1C87A0410();
  v124 = &qword_1EC2B8AA0;
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v132, v133, v134);
  sub_1C87A0410();
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v135, v136, v137);
  if ((v131 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_57:
  OUTLINED_FUNCTION_277(v92 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations, &v182);
  OUTLINED_FUNCTION_277(v59 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__annotations, &v181);

  OUTLINED_FUNCTION_92_0();
  sub_1C87E222C();
  OUTLINED_FUNCTION_511();

  if ((v124 & 1) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_277(v92 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__metadata, &v180);
  v138 = v150;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v59 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_EntityCandidateP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__metadata, &v179);
  OUTLINED_FUNCTION_424();
  v139 = v152;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v140 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_82_1(v140, v141);
  if (!v61)
  {
    sub_1C8778810();
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v139);
    if (!v142)
    {
      OUTLINED_FUNCTION_112_3();
      sub_1C879A720();
      OUTLINED_FUNCTION_97();
      static Siri_Nlu_External_RRMetadata.== infix(_:_:)();

      sub_1C87A0410();
      OUTLINED_FUNCTION_301();
      sub_1C8778ED8(v143, v144, v145);
      sub_1C87A0410();
      OUTLINED_FUNCTION_301();
      sub_1C8778ED8(v146, v147, v148);
      goto LABEL_34;
    }

    sub_1C8778ED8(v138, &qword_1EC2B8AA8, &unk_1C8BF50C0);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
LABEL_66:
    sub_1C8778ED8(v139, &qword_1EC2B8FC0, &qword_1C8BF9EE0);
    goto LABEL_34;
  }

  sub_1C8778ED8(v138, &qword_1EC2B8AA8, &unk_1C8BF50C0);
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v139);
  if (!v61)
  {
    goto LABEL_66;
  }

  sub_1C8778ED8(v139, &qword_1EC2B8AA8, &unk_1C8BF50C0);
LABEL_34:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88CB484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EA8, type metadata accessor for Siri_Nlu_External_EntityCandidate, &protocol conformance descriptor for Siri_Nlu_External_EntityCandidate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CB504(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate, &protocol conformance descriptor for Siri_Nlu_External_EntityCandidate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CB574(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate, &protocol conformance descriptor for Siri_Nlu_External_EntityCandidate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CB60C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8A30);
  __swift_project_value_buffer(v0, qword_1EC2B8A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "task";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88CB844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_Task(0);
  sub_1C8BD48FC();
  sub_1C8776788(&qword_1EDACA320, MEMORY[0x1E69AA960], MEMORY[0x1E69AA958]);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_Task.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_81();
  v38 = v6;
  OUTLINED_FUNCTION_86();
  v36 = sub_1C8BD48FC();
  OUTLINED_FUNCTION_13_1();
  v35 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  v34 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211();
  v37 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_7(v13, v33);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_212();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  type metadata accessor for Siri_Nlu_External_Task(0);
  sub_1C8778810();
  v17 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_76(v17, v18, v0);
  if (v19)
  {
    sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v22 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    sub_1C8776788(v20, v21, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    sub_1C8BD4E2C();
    v22 = v1;
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  sub_1C8778810();
  v23 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v23, v24, v37);
  if (v19)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_13();
  sub_1C879A720();
  OUTLINED_FUNCTION_13_14();
  sub_1C8776788(v25, v26, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v22)
  {
LABEL_9:
    sub_1C8778810();
    v27 = OUTLINED_FUNCTION_323_0();
    OUTLINED_FUNCTION_76(v27, v28, v36);
    if (v19)
    {
      sub_1C8778ED8(v38, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    }

    else
    {
      v29 = OUTLINED_FUNCTION_491();
      v30(v29);
      OUTLINED_FUNCTION_175_1();
      sub_1C8776788(v31, v32, MEMORY[0x1E69AA958]);
      sub_1C8BD4E2C();
      if (v22)
      {
        (*(v35 + 8))(v34, v36);
        goto LABEL_16;
      }

      (*(v35 + 8))(v34, v36);
    }

    sub_1C8BD49DC();
  }

LABEL_16:
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_Task.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_333();
  v56 = sub_1C8BD48FC();
  OUTLINED_FUNCTION_13_1();
  v53 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_0();
  v52 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD0, &unk_1C8BE6C80);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v55 = v8;
  v9 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81_3(v13, v51);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_External_UUID(v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33();
  v17 = OUTLINED_FUNCTION_491();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_80(v19);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_212();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_87_2();
  type metadata accessor for Siri_Nlu_External_Task(v23);
  v24 = *(v21 + 56);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_73(v0);
  if (v25)
  {
    OUTLINED_FUNCTION_73(v0 + v24);
    if (v25)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v26 = &qword_1EC2B5EE8;
    v27 = &unk_1C8BE6F90;
    v28 = v0;
LABEL_30:
    sub_1C8778ED8(v28, v26, v27);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_522();
  sub_1C8778810();
  OUTLINED_FUNCTION_73(v0 + v24);
  if (v25)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  sub_1C879A720();
  v29 = OUTLINED_FUNCTION_516();
  v31 = static Siri_Nlu_External_UUID.== infix(_:_:)(v29, v30);
  OUTLINED_FUNCTION_347();
  sub_1C87A0410();
  sub_1C87A0410();
  sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v32 = *(v57 + 48);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v33 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_124_1(v33, v34);
  if (v25)
  {
    OUTLINED_FUNCTION_24(v1 + v32);
    if (v25)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_24(v1 + v32);
  if (v35)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v26 = &qword_1EC2B5FD8;
    v27 = &unk_1C8BE6C90;
    v28 = v1;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1_13();
  sub_1C879A720();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_357();
  sub_1C87A0410();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if ((&qword_1EC2B61D0 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v36 = *(v54 + 48);
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_180_0();
  v37 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_76(v37, v38, v56);
  if (v25)
  {
    OUTLINED_FUNCTION_72(v55 + v36);
    if (v25)
    {
      sub_1C8778ED8(v55, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
LABEL_34:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v49, v50, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_498();
      v42 = sub_1C8BD517C();
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_72(v55 + v36);
  if (v39)
  {
    v40 = OUTLINED_FUNCTION_136();
    v41(v40);
LABEL_29:
    v26 = &qword_1EC2B5FD0;
    v27 = &unk_1C8BE6C80;
    v28 = v55;
    goto LABEL_30;
  }

  (*(v53 + 32))(v52, v55 + v36, v56);
  OUTLINED_FUNCTION_175_1();
  sub_1C8776788(v43, v44, MEMORY[0x1E69AA968]);
  OUTLINED_FUNCTION_118_0();
  v45 = sub_1C8BD517C();
  v46 = *(v53 + 8);
  v47 = OUTLINED_FUNCTION_271();
  v46(v47);
  v48 = OUTLINED_FUNCTION_136();
  v46(v48);
  sub_1C8778ED8(v55, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
  if (v45)
  {
    goto LABEL_34;
  }

LABEL_31:
  v42 = 0;
LABEL_32:
  OUTLINED_FUNCTION_157(v42);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88CC478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EA0, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CC4F8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACCF18, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CC568(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACCF18, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CC600()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8A48);
  __swift_project_value_buffer(v0, qword_1EC2B8A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewritten_utterance";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RewrittenUtterance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_27_5();
      sub_1C88CC91C();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C88CC868(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1C88CC868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_RewrittenUtterance(0);
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88CC91C()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 24));
  return sub_1C8BD4BFC();
}

void Siri_Nlu_External_RewrittenUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v4, v5, v6);
  v7 = OUTLINED_FUNCTION_299_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_210();
  v11 = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_65_6();
  type metadata accessor for Siri_Nlu_External_RewrittenUtterance(v13);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v3);
  if (v14)
  {
    sub_1C8778ED8(v3, &qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_469();
    v15(v2, v3, v11);
    OUTLINED_FUNCTION_11_13();
    sub_1C8776788(v16, v17, MEMORY[0x1E69AA998]);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_248_2();
    OUTLINED_FUNCTION_504(v18, v19, v20, v21, v22);
    v0 = v1;
    if (v1)
    {
      v23 = OUTLINED_FUNCTION_127_0();
      v24(v23);
      goto LABEL_10;
    }

    v25 = OUTLINED_FUNCTION_127_0();
    v26(v25);
  }

  OUTLINED_FUNCTION_468();
  if ((v27 & 1) != 0 || (OUTLINED_FUNCTION_55(), sub_1C8BD4DCC(), !v0))
  {
    OUTLINED_FUNCTION_15();
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_RewrittenUtterance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  OUTLINED_FUNCTION_241();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v6 = OUTLINED_FUNCTION_233();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_212();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_45();
  v31 = type metadata accessor for Siri_Nlu_External_RewrittenUtterance(v11);
  v12 = *(v2 + 56);
  OUTLINED_FUNCTION_417_0();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_19(v1);
  if (!v13)
  {
    OUTLINED_FUNCTION_178_2();
    sub_1C8778810();
    OUTLINED_FUNCTION_19(v1 + v12);
    if (!v13)
    {
      v17 = OUTLINED_FUNCTION_453();
      v18(v17);
      OUTLINED_FUNCTION_11_13();
      sub_1C8776788(v19, v20, MEMORY[0x1E69AA9A8]);
      OUTLINED_FUNCTION_298_0();
      OUTLINED_FUNCTION_321_0();
      v21 = sub_1C8BD517C();
      v22 = *(v0 + 8);
      v23 = OUTLINED_FUNCTION_254_0();
      v22(v23);
      v24 = OUTLINED_FUNCTION_119_0();
      v22(v24);
      sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
      if ((v21 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v14 = OUTLINED_FUNCTION_119_0();
    v15(v14);
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2B6118, &qword_1C8BE6DC0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19(v1 + v12);
  if (!v13)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2B6110, &qword_1C8BF5070);
LABEL_13:
  v25 = *(v31 + 24);
  v26 = *(v0 + v25 + 8);
  v27 = *(v4 + v25 + 8);
  if (v26)
  {
    if (v27)
    {
      goto LABEL_17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if ((v28 & 1) == 0)
    {
LABEL_17:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_196_0();
      v16 = sub_1C8BD517C();
      goto LABEL_11;
    }
  }

LABEL_10:
  v16 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v16);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88CCE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8E98, type metadata accessor for Siri_Nlu_External_RewrittenUtterance, &protocol conformance descriptor for Siri_Nlu_External_RewrittenUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CCF18(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8C08, type metadata accessor for Siri_Nlu_External_RewrittenUtterance, &protocol conformance descriptor for Siri_Nlu_External_RewrittenUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CCF88(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B8C08, type metadata accessor for Siri_Nlu_External_RewrittenUtterance, &protocol conformance descriptor for Siri_Nlu_External_RewrittenUtterance);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CD014()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACC340);
  __swift_project_value_buffer(v0, qword_1EDACC340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "probability";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "asr_tokens";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "rewritten_utterances";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_AsrHypothesis.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v13, v14, v15);
  v17 = v16;
  v18 = OUTLINED_FUNCTION_253();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_80(v20);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_UUID(v22);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_65_6();
  v37 = type metadata accessor for Siri_Nlu_External_AsrHypothesis(v24);
  OUTLINED_FUNCTION_388();
  v25 = OUTLINED_FUNCTION_323_0();
  OUTLINED_FUNCTION_188_0(v25, v26);
  if (v27)
  {
    sub_1C8778ED8(v12, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_455();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    sub_1C8776788(v28, v29, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_504(v30, v31, v32, v33, v17);
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v11)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_513();
  if (!v35 || (OUTLINED_FUNCTION_512(v34), OUTLINED_FUNCTION_302_0(), sub_1C8BD4DDC(), !v11))
  {
    if ((*(v10 + *(v37 + 36) + 8) & 1) != 0 || (OUTLINED_FUNCTION_302_0(), sub_1C8BD4DCC(), !v11))
    {
      OUTLINED_FUNCTION_514();
      if (!v36 || (type metadata accessor for Siri_Nlu_External_AsrTokenInformation(0), sub_1C8776788(&qword_1EDACAC10, type metadata accessor for Siri_Nlu_External_AsrTokenInformation, &protocol conformance descriptor for Siri_Nlu_External_AsrTokenInformation), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_302_0(), sub_1C8BD4E0C(), !v11))
      {
        if (!*(*(v10 + 8) + 16) || (type metadata accessor for Siri_Nlu_External_RewrittenUtterance(0), sub_1C8776788(&qword_1EC2B8C08, type metadata accessor for Siri_Nlu_External_RewrittenUtterance, &protocol conformance descriptor for Siri_Nlu_External_RewrittenUtterance), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_302_0(), sub_1C8BD4E0C(), !v11))
        {
          OUTLINED_FUNCTION_234();
          sub_1C8BD49DC();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_AsrHypothesis.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_333();
  v6 = type metadata accessor for Siri_Nlu_External_UUID(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v8 = OUTLINED_FUNCTION_233();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_45();
  v32 = type metadata accessor for Siri_Nlu_External_AsrHypothesis(v13);
  OUTLINED_FUNCTION_398();
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_17_6(v1);
  if (!v14)
  {
    OUTLINED_FUNCTION_299_0();
    sub_1C8778810();
    OUTLINED_FUNCTION_17_6(v1 + v2);
    if (!v14)
    {
      OUTLINED_FUNCTION_0_16();
      sub_1C879A720();
      v16 = OUTLINED_FUNCTION_260_0();
      static Siri_Nlu_External_UUID.== infix(_:_:)(v16, v17);
      OUTLINED_FUNCTION_336();
      sub_1C87A0410();
      OUTLINED_FUNCTION_229();
      sub_1C87A0410();
      sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v6 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_6(v1 + v2);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_13:
  v18 = *(v32 + 32);
  v19 = *(v4 + v18 + 8);
  if (*(v0 + v18 + 8))
  {
    if (!v19)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_35(v0 + v18);
    v22 = v14 && v20 == v21;
    if (!v22 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v19)
  {
    goto LABEL_10;
  }

  v23 = *(v32 + 36);
  v24 = *(v0 + v23 + 8);
  v25 = *(v4 + v23 + 8);
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v26)
    {
      goto LABEL_10;
    }
  }

  sub_1C87DE53C();
  if (v27)
  {
    sub_1C87DE590();
    if (v28)
    {
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v15 = OUTLINED_FUNCTION_299(v31);
      goto LABEL_11;
    }
  }

LABEL_10:
  v15 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v15);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88CD878(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8E90, type metadata accessor for Siri_Nlu_External_AsrHypothesis, &protocol conformance descriptor for Siri_Nlu_External_AsrHypothesis);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CD8F8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACC330, type metadata accessor for Siri_Nlu_External_AsrHypothesis, &protocol conformance descriptor for Siri_Nlu_External_AsrHypothesis);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CD968(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACC330, type metadata accessor for Siri_Nlu_External_AsrHypothesis, &protocol conformance descriptor for Siri_Nlu_External_AsrHypothesis);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CDA00()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACAC20);
  __swift_project_value_buffer(v0, qword_1EDACAC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C8BE8D70;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "post_itn_text";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "phone_sequence";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ipa_phone_sequence";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "add_space_after";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "remove_space_after";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "remove_space_before";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "confidence_score";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "begin_index";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "end_index";
  *(v23 + 1) = 9;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "start_milli_seconds";
  *(v25 + 1) = 19;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "end_milli_seconds";
  *(v27 + 1) = 17;
  v27[16] = 2;
  v8();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_AsrTokenInformation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CDF80();
        break;
      case 2:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CDFC4();
        break;
      case 3:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CEC94();
        break;
      case 4:
        OUTLINED_FUNCTION_27_5();
        sub_1C87A4C50();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88CE008(v3, v4);
        break;
      case 6:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CE06C();
        break;
      case 7:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CE0B0();
        break;
      case 8:
        v9 = OUTLINED_FUNCTION_8();
        sub_1C88CE0F4(v9, v10, v11, v12);
        break;
      case 9:
        v17 = OUTLINED_FUNCTION_8();
        sub_1C88CE158(v17, v18, v19, v20);
        break;
      case 10:
        v5 = OUTLINED_FUNCTION_8();
        sub_1C88CE1BC(v5, v6, v7, v8);
        break;
      case 11:
        v13 = OUTLINED_FUNCTION_8();
        sub_1C88CE220(v13, v14, v15, v16);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88CDF80()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 20));
  return sub_1C8BD4C1C();
}

uint64_t sub_1C88CDFC4()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 24));
  return sub_1C8BD4C1C();
}

uint64_t sub_1C88CE06C()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 40));
  return sub_1C8BD4B2C();
}

uint64_t sub_1C88CE0B0()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 44));
  return sub_1C8BD4BFC();
}

uint64_t Siri_Nlu_External_AsrTokenInformation.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_72_4();
  type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v2);
  OUTLINED_FUNCTION_459();
  OUTLINED_FUNCTION_16_2();
  if (!v3 || (result = OUTLINED_FUNCTION_9_5(*v4, v3, 1), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_16_2();
    if (!v7 || (v8 = OUTLINED_FUNCTION_512(v6), result = OUTLINED_FUNCTION_9_5(v8, v9, v10), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_16_2();
      if (!v11 || (result = OUTLINED_FUNCTION_9_5(*v12, v11, 3), (v0 = v1) == 0))
      {
        OUTLINED_FUNCTION_451();
        if (v13 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), (v0 = v1) == 0))
        {
          OUTLINED_FUNCTION_451();
          if (v13 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), (v0 = v1) == 0))
          {
            OUTLINED_FUNCTION_451();
            if (v13 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), (v0 = v1) == 0))
            {
              OUTLINED_FUNCTION_468();
              if ((v14 & 1) != 0 || (v1 = v0, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
              {
                OUTLINED_FUNCTION_467();
                if ((v15 & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v1))
                {
                  OUTLINED_FUNCTION_467();
                  if ((v16 & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v1))
                  {
                    OUTLINED_FUNCTION_467();
                    if ((v17 & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D8C(), !v1))
                    {
                      OUTLINED_FUNCTION_467();
                      if (v18)
                      {
                        return OUTLINED_FUNCTION_15();
                      }

                      OUTLINED_FUNCTION_48_0();
                      result = sub_1C8BD4D8C();
                      if (!v1)
                      {
                        return OUTLINED_FUNCTION_15();
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
  }

  return result;
}

uint64_t static Siri_Nlu_External_AsrTokenInformation.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v0);
  OUTLINED_FUNCTION_1();
  if (v3)
  {
    if (!v1)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v2);
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  if (v9)
  {
    if (!v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v8);
    v12 = v6 && v10 == v11;
    if (!v12 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v14);
    v18 = v6 && v16 == v17;
    if (!v18 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47();
  if (v6)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v20 ^ v19) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47();
  if (v6)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v22 ^ v21) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47();
  if (v6)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v24 ^ v23) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_0();
  if (v26)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v27)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if (v29)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v30)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if (v32)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v33)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if ((v35 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_1();
    if ((v36 & 1) == 0)
    {
      goto LABEL_62;
    }

    return 0;
  }

  if (!v34)
  {
    return 0;
  }

LABEL_62:
  OUTLINED_FUNCTION_11();
  if (v38)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v40)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  v43 = sub_1C8776788(v41, v42, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v43) & 1;
}

uint64_t sub_1C88CE6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8E88, type metadata accessor for Siri_Nlu_External_AsrTokenInformation, &protocol conformance descriptor for Siri_Nlu_External_AsrTokenInformation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CE760(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACAC10, type metadata accessor for Siri_Nlu_External_AsrTokenInformation, &protocol conformance descriptor for Siri_Nlu_External_AsrTokenInformation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CE7D0(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACAC10, type metadata accessor for Siri_Nlu_External_AsrTokenInformation, &protocol conformance descriptor for Siri_Nlu_External_AsrTokenInformation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CE868()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4C20);
  __swift_project_value_buffer(v0, qword_1EC2B4C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C8BE7150;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "label";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "input";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "start_token_index";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "end_token_index";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "uso_graph";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "score";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "matcher_names";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_Span.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CDFC4();
        break;
      case 2:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CEC94();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C88CECD8(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C88CED3C(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88CEDA0(v3, v4, v5, v6);
        break;
      case 6:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CE0B0();
        break;
      case 7:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C88CEE54(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88CEC94()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 28));
  return sub_1C8BD4C1C();
}

uint64_t sub_1C88CEDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_Span(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_Span.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_External_UsoGraph(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_65_6();
  v9 = type metadata accessor for Siri_Nlu_External_Span(v8);
  OUTLINED_FUNCTION_513();
  if (!v10 || (sub_1C8BD4DDC(), !v1))
  {
    OUTLINED_FUNCTION_513();
    if (!v12 || (OUTLINED_FUNCTION_512(v11), sub_1C8BD4DDC(), !v1))
    {
      if ((*(v0 + v9[8] + 4) & 1) != 0 || (sub_1C8BD4DEC(), !v1))
      {
        if ((*(v0 + v9[9] + 4) & 1) != 0 || (sub_1C8BD4DEC(), !v1))
        {
          sub_1C8778810();
          v13 = OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_76(v13, v14, v6);
          if (v15)
          {
            sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
          }

          else
          {
            OUTLINED_FUNCTION_1_13();
            sub_1C879A720();
            OUTLINED_FUNCTION_13_14();
            sub_1C8776788(v16, v17, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
            OUTLINED_FUNCTION_118_0();
            sub_1C8BD4E2C();
            OUTLINED_FUNCTION_4_17();
            sub_1C87A0410();
            if (v1)
            {
              goto LABEL_18;
            }
          }

          if ((*(v0 + v9[11] + 8) & 1) != 0 || (sub_1C8BD4DCC(), !v1))
          {
            OUTLINED_FUNCTION_514();
            if (!v18 || (sub_1C88D0A10(), sub_1C8BD4D2C(), !v1))
            {
              OUTLINED_FUNCTION_178_2();
              sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_Span.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_211();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_45();
  type metadata accessor for Siri_Nlu_External_Span(v7);
  OUTLINED_FUNCTION_1();
  if (v10)
  {
    if (!v8)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_35(v9);
    v13 = v13 && v11 == v12;
    if (!v13 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v8)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1();
  if (v16)
  {
    if (!v14)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_35(v15);
    v19 = v13 && v17 == v18;
    if (!v19 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v14)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_11();
  if (v21)
  {
    if (!v20)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v22)
    {
      goto LABEL_36;
    }
  }

  OUTLINED_FUNCTION_11();
  if (v24)
  {
    if (!v23)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v25)
    {
      goto LABEL_36;
    }
  }

  v26 = *(v5 + 48);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v0);
  if (!v13)
  {
    OUTLINED_FUNCTION_299_0();
    sub_1C8778810();
    OUTLINED_FUNCTION_17_6(v0 + v26);
    if (!v27)
    {
      OUTLINED_FUNCTION_1_13();
      sub_1C879A720();
      OUTLINED_FUNCTION_260_0();
      static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
      v30 = v29;
      sub_1C87A0410();
      OUTLINED_FUNCTION_229();
      sub_1C87A0410();
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_35:
    sub_1C8778ED8(v0, &qword_1EC2B5FD8, &unk_1C8BE6C90);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_17_6(v0 + v26);
  if (!v13)
  {
    goto LABEL_35;
  }

  sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_39:
  OUTLINED_FUNCTION_4_0();
  if (v32)
  {
    if (!v31)
    {
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v33)
    {
      goto LABEL_36;
    }
  }

  if (sub_1C87E4684())
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_2_18();
    v36 = sub_1C8776788(v34, v35, MEMORY[0x1E69AAC10]);
    v28 = OUTLINED_FUNCTION_64_0(v36);
    goto LABEL_37;
  }

LABEL_36:
  v28 = 0;
LABEL_37:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88CF51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8E80, type metadata accessor for Siri_Nlu_External_Span, &protocol conformance descriptor for Siri_Nlu_External_Span);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88CF59C(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B4C10, type metadata accessor for Siri_Nlu_External_Span, &protocol conformance descriptor for Siri_Nlu_External_Span);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88CF60C(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B4C10, type metadata accessor for Siri_Nlu_External_Span, &protocol conformance descriptor for Siri_Nlu_External_Span);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88CF68C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4C60);
  __swift_project_value_buffer(v0, qword_1EC2B4C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_VOCABULARY_MATCHER";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MRR_DETECTOR";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MRR_MATCHER";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CONTEXT_MATCHER";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88CF94C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4720);
  __swift_project_value_buffer(v0, qword_1EC2B4720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "matching_spans";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrite";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "correction_outcome";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88CFB80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C8BD512C();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_211_2();
  v8 = *(v7 + 16);

  return v8(a4);
}

void Siri_Nlu_External_NLUSupplementaryOutput.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C88CFD84(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88CFCD0(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_363();
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
    }
  }
}

uint64_t sub_1C88CFCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(0);
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  sub_1C8776788(&qword_1EC2B40F8, type metadata accessor for Siri_Nlu_External_RewriteMessage, &protocol conformance descriptor for Siri_Nlu_External_RewriteMessage);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88CFD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(0);
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  sub_1C8776788(&qword_1EDACB050, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NLUSupplementaryOutput.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_47_5(v5, v18);
  v20 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_252();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41_6();
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_Span(0), OUTLINED_FUNCTION_362(), sub_1C8776788(v11, v12, &protocol conformance descriptor for Siri_Nlu_External_Span), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_248_2(), sub_1C8BD4E0C(), !v1))
  {
    type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(0);
    sub_1C8778810();
    OUTLINED_FUNCTION_17_6(v2);
    if (v13)
    {
      sub_1C8778ED8(v2, &unk_1EC2B8A70, &qword_1C8BF5078);
    }

    else
    {
      OUTLINED_FUNCTION_16_8();
      sub_1C879A720();
      OUTLINED_FUNCTION_361();
      sub_1C8776788(v14, v15, &protocol conformance descriptor for Siri_Nlu_External_RewriteMessage);
      OUTLINED_FUNCTION_248_2();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_100_3();
      sub_1C87A0410();
      if (v1)
      {
        goto LABEL_12;
      }
    }

    sub_1C8778810();
    OUTLINED_FUNCTION_76(v19, 1, v20);
    if (v13)
    {
      sub_1C8778ED8(v19, &qword_1EC2B6EF0, &unk_1C8BEBC70);
LABEL_11:
      sub_1C8BD49DC();
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_12_13();
    sub_1C879A720();
    OUTLINED_FUNCTION_345();
    sub_1C8776788(v16, v17, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome);
    OUTLINED_FUNCTION_248_2();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_62_4();
    sub_1C87A0410();
    if (!v1)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NLUSupplementaryOutput.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v35 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F10, &unk_1C8BF50D0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81();
  v36 = v9;
  v10 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_80(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_212();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8B58, &qword_1C8BF50F0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  sub_1C87DCE24();
  if ((v18 & 1) == 0)
  {
    goto LABEL_22;
  }

  v34[0] = v0;
  v34[1] = v1;
  v19 = type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(0);
  v20 = *(v14 + 48);
  v34[2] = v19;
  v34[3] = v3;
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_65(v17);
  if (v21)
  {
    OUTLINED_FUNCTION_65(&v17[v20]);
    if (v21)
    {
      sub_1C8778ED8(v17, &unk_1EC2B8A70, &qword_1C8BF5078);
      goto LABEL_12;
    }

LABEL_10:
    v22 = &qword_1EC2B8B58;
    v23 = &qword_1C8BF50F0;
    v24 = v17;
LABEL_21:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_215();
  sub_1C8778810();
  OUTLINED_FUNCTION_65(&v17[v20]);
  if (v21)
  {
    OUTLINED_FUNCTION_100_3();
    sub_1C87A0410();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_16_8();
  sub_1C879A720();
  static Siri_Nlu_External_RewriteMessage.== infix(_:_:)();
  OUTLINED_FUNCTION_337();
  sub_1C87A0410();
  OUTLINED_FUNCTION_119_0();
  sub_1C87A0410();
  sub_1C8778ED8(v17, &unk_1EC2B8A70, &qword_1C8BF5078);
  if ((&unk_1EC2B8A70 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v25 = *(v7 + 48);
  v26 = v36;
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_180_0();
  v27 = OUTLINED_FUNCTION_400();
  v28 = v35;
  OUTLINED_FUNCTION_124_1(v27, v29);
  if (v21)
  {
    OUTLINED_FUNCTION_24(v26 + v25);
    if (v21)
    {
      sub_1C8778ED8(v26, &qword_1EC2B6EF0, &unk_1C8BEBC70);
LABEL_25:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v32, v33, MEMORY[0x1E69AAC10]);
      v31 = sub_1C8BD517C();
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_24(v26 + v25);
  if (v30)
  {
    OUTLINED_FUNCTION_62_4();
    sub_1C87A0410();
LABEL_20:
    v22 = &qword_1EC2B6F10;
    v23 = &unk_1C8BF50D0;
    v24 = v26;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_12_13();
  sub_1C879A720();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_CorrectionOutcome.== infix(_:_:)();
  OUTLINED_FUNCTION_338();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v26, &qword_1EC2B6EF0, &unk_1C8BEBC70);
  if (v28)
  {
    goto LABEL_25;
  }

LABEL_22:
  v31 = 0;
LABEL_23:
  OUTLINED_FUNCTION_157(v31);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88D0654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8E78, type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput, &protocol conformance descriptor for Siri_Nlu_External_NLUSupplementaryOutput);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88D06D4(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B4710, type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput, &protocol conformance descriptor for Siri_Nlu_External_NLUSupplementaryOutput);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88D0744(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B4710, type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput, &protocol conformance descriptor for Siri_Nlu_External_NLUSupplementaryOutput);

  return sub_1C8BD4CFC();
}

unint64_t sub_1C88D07C4()
{
  result = qword_1EDACB718;
  if (!qword_1EDACB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB718);
  }

  return result;
}

unint64_t sub_1C88D0818()
{
  result = qword_1EDACB2A8;
  if (!qword_1EDACB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB2A8);
  }

  return result;
}

unint64_t sub_1C88D086C()
{
  result = qword_1EDACCE20;
  if (!qword_1EDACCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCE20);
  }

  return result;
}

unint64_t sub_1C88D08C0()
{
  result = qword_1EDACCDE0;
  if (!qword_1EDACCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCDE0);
  }

  return result;
}

unint64_t sub_1C88D0914()
{
  result = qword_1EDACB070[0];
  if (!qword_1EDACB070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDACB070);
  }

  return result;
}

unint64_t sub_1C88D0968()
{
  result = qword_1EC2B4118;
  if (!qword_1EC2B4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4118);
  }

  return result;
}

unint64_t sub_1C88D09BC()
{
  result = qword_1EDACC768;
  if (!qword_1EDACC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACC768);
  }

  return result;
}

unint64_t sub_1C88D0A10()
{
  result = qword_1EC2B4C50;
  if (!qword_1EC2B4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4C50);
  }

  return result;
}

unint64_t sub_1C88D0A68()
{
  result = qword_1EDACB708;
  if (!qword_1EDACB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB708);
  }

  return result;
}

unint64_t sub_1C88D0AC0()
{
  result = qword_1EDACB710;
  if (!qword_1EDACB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB710);
  }

  return result;
}

unint64_t sub_1C88D0B18()
{
  result = qword_1EDACB700;
  if (!qword_1EDACB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB700);
  }

  return result;
}

unint64_t sub_1C88D0BA0()
{
  result = qword_1EDACB298;
  if (!qword_1EDACB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB298);
  }

  return result;
}

unint64_t sub_1C88D0BF8()
{
  result = qword_1EDACB2A0;
  if (!qword_1EDACB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB2A0);
  }

  return result;
}

unint64_t sub_1C88D0C50()
{
  result = qword_1EDACB290;
  if (!qword_1EDACB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB290);
  }

  return result;
}

unint64_t sub_1C88D0CD8()
{
  result = qword_1EDACCDD0;
  if (!qword_1EDACCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCDD0);
  }

  return result;
}

unint64_t sub_1C88D0D30()
{
  result = qword_1EDACCDD8;
  if (!qword_1EDACCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCDD8);
  }

  return result;
}

unint64_t sub_1C88D0D88()
{
  result = qword_1EDACCDC8;
  if (!qword_1EDACCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCDC8);
  }

  return result;
}

unint64_t sub_1C88D0DE0()
{
  result = qword_1EDACCE10;
  if (!qword_1EDACCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCE10);
  }

  return result;
}

unint64_t sub_1C88D0E38()
{
  result = qword_1EDACCE18;
  if (!qword_1EDACCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCE18);
  }

  return result;
}

unint64_t sub_1C88D0E90()
{
  result = qword_1EDACCE08;
  if (!qword_1EDACCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCE08);
  }

  return result;
}

unint64_t sub_1C88D0F48()
{
  result = qword_1EDACB060;
  if (!qword_1EDACB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB060);
  }

  return result;
}

unint64_t sub_1C88D0FA0()
{
  result = qword_1EDACB068;
  if (!qword_1EDACB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB068);
  }

  return result;
}

unint64_t sub_1C88D0FF8()
{
  result = qword_1EDACB058;
  if (!qword_1EDACB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACB058);
  }

  return result;
}

unint64_t sub_1C88D1080()
{
  result = qword_1EC2B4108;
  if (!qword_1EC2B4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4108);
  }

  return result;
}

unint64_t sub_1C88D10D8()
{
  result = qword_1EC2B4110;
  if (!qword_1EC2B4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4110);
  }

  return result;
}

unint64_t sub_1C88D1130()
{
  result = qword_1EC2B4100;
  if (!qword_1EC2B4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4100);
  }

  return result;
}

unint64_t sub_1C88D11B8()
{
  result = qword_1EDACC758;
  if (!qword_1EDACC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACC758);
  }

  return result;
}

unint64_t sub_1C88D1210()
{
  result = qword_1EDACC760;
  if (!qword_1EDACC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACC760);
  }

  return result;
}

unint64_t sub_1C88D1268()
{
  result = qword_1EDACC750;
  if (!qword_1EDACC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACC750);
  }

  return result;
}

unint64_t sub_1C88D12F0()
{
  result = qword_1EC2B4C40;
  if (!qword_1EC2B4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4C40);
  }

  return result;
}

unint64_t sub_1C88D1348()
{
  result = qword_1EC2B4C48;
  if (!qword_1EC2B4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4C48);
  }

  return result;
}

unint64_t sub_1C88D13A0()
{
  result = qword_1EC2B4C38;
  if (!qword_1EC2B4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4C38);
  }

  return result;
}

void sub_1C88D4250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C88D42B4(uint64_t a1)
{
  sub_1C88D4250(319, &qword_1EDACA308, type metadata accessor for Siri_Nlu_External_Task, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C88D4250(319, &qword_1EDACA2E8, type metadata accessor for Siri_Nlu_External_EntityCandidate, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C88D4250(319, &qword_1EDACA2E0, type metadata accessor for Siri_Nlu_External_SystemDialogAct, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C8BD49FC();
        if (v4 <= 0x3F)
        {
          sub_1C88D4250(319, qword_1EDACA9E8, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C88D4440(uint64_t a1)
{
  sub_1C88D4250(319, &qword_1EDACA2C0, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E62F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C88D6748(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v2 = sub_1C8BD49FC();
      if (v6 <= 0x3F)
      {
        sub_1C88D6748(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        v2 = v7;
        if (v8 <= 0x3F)
        {
          sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v10 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_1C88D6748(319, &qword_1EDACB6F8, &type metadata for Siri_Nlu_External_LegacyNLContext.LegacyContextSource, MEMORY[0x1E69E6720]);
            v2 = v11;
            if (v12 <= 0x3F)
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_Parser.AlgorithmType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Siri_Nlu_External_Parser.ParserIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_Parser.ParserIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C88D498C(uint64_t a1)
{
  sub_1C88D4250(319, &qword_1EDACA2F0, type metadata accessor for Siri_Nlu_External_UserDialogAct, MEMORY[0x1E69E62F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_1C8BD49FC();
    if (v4 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      v2 = v5;
      if (v6 <= 0x3F)
      {
        sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
        v2 = v7;
        if (v8 <= 0x3F)
        {
          sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_1C88D4250(319, qword_1EDACB210, type metadata accessor for Siri_Nlu_External_RepetitionResult, MEMORY[0x1E69E6720]);
          if (v11 > 0x3F)
          {
            return v9;
          }

          sub_1C88D4250(319, qword_1EDACE0E8, type metadata accessor for Siri_Nlu_External_Parser, MEMORY[0x1E69E6720]);
          if (v12 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_1C88D4250(319, qword_1EDACD6C8, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, MEMORY[0x1E69E6720]);
            v2 = v13;
            if (v14 <= 0x3F)
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_CorrectionOutcome.CorrectionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C88D4D78(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C88D4EB8(uint64_t a1)
{
  sub_1C88D4250(319, &qword_1EDACD3D8, type metadata accessor for Siri_Nlu_External_Span, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C88D6748(319, &qword_1EDACD380, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C88D4250(319, &qword_1EDACD3F8, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C88D4250(319, qword_1EDACD768, type metadata accessor for Siri_Nlu_External_RewriteMessage, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C88D4250(319, qword_1EDACB328, type metadata accessor for Siri_Nlu_External_ReferenceContext, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
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

void sub_1C88D5220(uint64_t a1)
{
  sub_1C88D4250(319, &qword_1EDACA2F0, type metadata accessor for Siri_Nlu_External_UserDialogAct, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C88D5310(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1C88D4250(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v9 <= 0x3F)
  {
    OUTLINED_FUNCTION_519();
    sub_1C8BD49FC();
    if (v10 <= 0x3F)
    {
      v11 = OUTLINED_FUNCTION_171_1();
      sub_1C88D4250(v11, a6, a7, v12);
      if (v14 <= 0x3F)
      {
        OUTLINED_FUNCTION_243_2(v13, v14, v15, v16, v17, v18, v19, v20, *v21, v21[4], v21[5], 0, v22);
        OUTLINED_FUNCTION_169_2();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_298Tm()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_516();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_18_0();
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_227();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_97();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_266();
    }
  }

  OUTLINED_FUNCTION_260();

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

uint64_t __swift_store_extra_inhabitant_index_299Tm()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_234();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_18_0();
    if (*(v5 + 84) == v1)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v6 = OUTLINED_FUNCTION_97();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      OUTLINED_FUNCTION_264_0();
    }
  }

  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_260();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_1C88D5648(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C88D4250(319, &qword_1EDACD3F8, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C88D6748(319, &qword_1EDACD388, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C88D5840(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C88D5914(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACC238, type metadata accessor for Siri_Nlu_External_RRBoundingBox, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_512Tm()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_266();
  }

  v7 = OUTLINED_FUNCTION_21_0(v4);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_513Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_510();
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_97();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_264_0();
    }

    v6 = OUTLINED_FUNCTION_102_0(v3);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_1C88D5B84(uint64_t a1)
{
  sub_1C88D4250(319, &qword_1EDACA2D8, type metadata accessor for Siri_Nlu_External_RRSurroundingText, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACC238, type metadata accessor for Siri_Nlu_External_RRBoundingBox, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C88D6748(319, &qword_1EDACC748, &type metadata for Siri_Nlu_External_RRMetadata.RRDataSource, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_RRMetadata.RRDataSource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C88D5DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1C8BD49FC();
  if (v6 <= 0x3F)
  {
    v17 = result;
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_83(result, v7, v8, v9, v10, v11, v12, v13, v14, *v15, *&v15[4], 0, v16, v17, v18);
      return OUTLINED_FUNCTION_169_2();
    }
  }

  return result;
}

void sub_1C88D5E40(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C88D4250(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACDE58, type metadata accessor for Siri_Nlu_External_UsoGraph, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C88D4250(319, &qword_1EDACD400, MEMORY[0x1E69AA960], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_494Tm()
{
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_227();
    v3 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_495Tm()
{
  OUTLINED_FUNCTION_510();
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_226_2();
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_1C88D60D8(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C88D4250(319, &qword_1EDACD3F8, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C88D61F0(uint64_t a1)
{
  sub_1C88D4250(319, &qword_1EDACA2C8, type metadata accessor for Siri_Nlu_External_AsrTokenInformation, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C88D4250(319, &qword_1EDACA2D0, type metadata accessor for Siri_Nlu_External_RewrittenUtterance, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v3 <= 0x3F)
      {
        sub_1C88D4250(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C88D63D4(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C88D6748(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C88D6748(319, &qword_1EDACD380, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C88D6748(319, &qword_1EDACD388, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C88D65A4(uint64_t a1)
{
  sub_1C88D6748(319, &qword_1EDACD3E0, &type metadata for Siri_Nlu_External_Span.MatcherName, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C88D6748(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C88D6748(319, &qword_1EDACD380, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C88D4250(319, qword_1EDACDE58, type metadata accessor for Siri_Nlu_External_UsoGraph, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C88D6748(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C88D6748(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_Span.MatcherName(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C88D689C(uint64_t a1)
{
  sub_1C88D4250(319, &qword_1EDACD3D8, type metadata accessor for Siri_Nlu_External_Span, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACD768, type metadata accessor for Siri_Nlu_External_RewriteMessage, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C88D4250(319, qword_1EDACD6C8, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C88D69E8(uint64_t a1)
{
  sub_1C88D4250(319, qword_1EDACA9E8, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C88D4250(319, qword_1EDACC600, type metadata accessor for Siri_Nlu_External_TurnContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACD6C8, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C88D6BB4(uint64_t a1)
{
  sub_1C88D4250(319, qword_1EDACC490, type metadata accessor for Siri_Nlu_External_UserAccepted, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C88D4250(319, qword_1EDACC3E0, type metadata accessor for Siri_Nlu_External_UserRejected, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACC0F0, type metadata accessor for Siri_Nlu_External_UserCancelled, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C88D4250(319, qword_1EDACACC8, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C88D4250(319, qword_1EDACB170, type metadata accessor for Siri_Nlu_External_UserAcknowledged, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C88D4250(319, qword_1EDACAAF8, type metadata accessor for Siri_Nlu_External_UserWantedToProceed, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C88D4250(319, qword_1EDACAE00, type metadata accessor for Siri_Nlu_External_UserWantedToPause, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C88D4250(319, qword_1EDACA668, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1C88D4250(319, qword_1EDACBA30, type metadata accessor for Siri_Nlu_External_UserStatedTask, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1C88D4250(319, qword_1EDACB0D0, type metadata accessor for Siri_Nlu_External_UserWantedToUndo, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1C88D4250(319, &qword_1EDACAC38, type metadata accessor for Siri_Nlu_External_UtteranceAlignment, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
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
  }
}

void sub_1C88D70B0(uint64_t a1)
{
  sub_1C88D4250(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C88D4250(319, qword_1EDACBAF8, type metadata accessor for Siri_Nlu_External_SystemPrompted, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C88D4250(319, qword_1EDACC190, type metadata accessor for Siri_Nlu_External_SystemOffered, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C88D4250(319, qword_1EDACAEA0, type metadata accessor for Siri_Nlu_External_SystemGaveOptions, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C88D4250(319, qword_1EDACBB98, type metadata accessor for Siri_Nlu_External_SystemInformed, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C88D4250(319, qword_1EDACA718, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C88D4250(319, qword_1EDACA7B8, type metadata accessor for Siri_Nlu_External_SystemReportedFailure, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C88D4250(319, &qword_1EDACD3F8, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C88D7468(uint64_t a1)
{
  sub_1C88D4250(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C88D4250(319, qword_1EDACDE58, type metadata accessor for Siri_Nlu_External_UsoGraph, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C88D7598(uint64_t a1)
{
  sub_1C88D4250(319, qword_1EDACDE58, type metadata accessor for Siri_Nlu_External_UsoGraph, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C88D4250(319, &qword_1EDACD400, MEMORY[0x1E69AA960], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C88D4250(319, &qword_1EDACD3F8, MEMORY[0x1E69AA9A0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C88D4250(319, qword_1EDACAFD0, type metadata accessor for Siri_Nlu_External_RRGroupIdentifier, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C88D4250(319, qword_1EDACC6D0, type metadata accessor for Siri_Nlu_External_RRMetadata, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_66_5(uint64_t a1)
{
  *(v2 - 120) = a1;
  *(v2 - 88) = v1;

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_78_2()
{
  *(v1 - 104) = v0;

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_149_2()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_155_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_200_2()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_240_2(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_241_2()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_242_1()
{

  return sub_1C8BD49FC();
}

uint64_t OUTLINED_FUNCTION_290_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_291_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_306_0()
{

  return sub_1C879A720();
}

uint64_t OUTLINED_FUNCTION_307_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_308_0()
{

  return sub_1C879A720();
}

uint64_t OUTLINED_FUNCTION_309_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_374(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_UserDialogAct(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_375(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_UserDialogAct(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_388()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_394(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_395(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_397(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_398()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_406()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_412@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = a2;
  v2[2] = a2;
  v2[3] = a2;
  v2[4] = a2;

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_417_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_429(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_463@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_474()
{

  return sub_1C879A720();
}

uint64_t OUTLINED_FUNCTION_475()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_479()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_503()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_507(uint64_t a1, uint64_t a2)
{
  __swift_getEnumTagSinglePayload(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_529(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C8BD4C6C();
}

uint64_t OUTLINED_FUNCTION_530()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_531()
{
}

uint64_t OUTLINED_FUNCTION_532_0()
{
}

uint64_t sub_1C88D880C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v399 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6960, &qword_1C8BE8DB8);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v373 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87C0, &qword_1C8BF48A0);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v381 = v11;
  OUTLINED_FUNCTION_86();
  v382 = sub_1C8BD43FC();
  OUTLINED_FUNCTION_13_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  v374 = v15;
  v16 = OUTLINED_FUNCTION_86();
  v398 = type metadata accessor for Siri_Nlu_External_PayloadAttachmentInfo(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  v397 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87C8, &qword_1C8BF48A8);
  OUTLINED_FUNCTION_80(v19);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_81();
  v394 = v21;
  OUTLINED_FUNCTION_86();
  v396 = sub_1C8BD442C();
  OUTLINED_FUNCTION_13_1();
  v389 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_0();
  v388 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6958, &qword_1C8BE8DB0);
  OUTLINED_FUNCTION_80(v25);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v373 - v27;
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_0();
  v393 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87D0, &unk_1C8BF48B0);
  OUTLINED_FUNCTION_80(v31);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_81();
  v390 = v33;
  OUTLINED_FUNCTION_86();
  v392 = sub_1C8BD47BC();
  OUTLINED_FUNCTION_13_1();
  v380 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_0();
  v391 = v36;
  v37 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_AsrAlternative(v37);
  OUTLINED_FUNCTION_13_1();
  v417 = v39;
  v418 = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_10_0();
  v416 = v40;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_96();
  v430 = v42;
  OUTLINED_FUNCTION_86();
  v429 = sub_1C8BD432C();
  OUTLINED_FUNCTION_13_1();
  v420 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_9_0();
  v428 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
  v47 = OUTLINED_FUNCTION_80(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_10_0();
  v415 = v48;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_96();
  v401 = v50;
  OUTLINED_FUNCTION_86();
  v434 = sub_1C8BD483C();
  OUTLINED_FUNCTION_13_1();
  v395 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_10_0();
  v402 = v53;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_96();
  v414 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6968, &unk_1C8BE8DC0);
  OUTLINED_FUNCTION_80(v56);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_81();
  v413 = v58;
  OUTLINED_FUNCTION_86();
  v423 = sub_1C8BD487C();
  OUTLINED_FUNCTION_13_1();
  v385 = v59;
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_9_0();
  v400 = v61;
  v62 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_SpanProperty(v62);
  OUTLINED_FUNCTION_13_1();
  v411 = v64;
  v412 = v63;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_9_0();
  v431 = v65;
  OUTLINED_FUNCTION_86();
  v427 = sub_1C8BD40AC();
  OUTLINED_FUNCTION_13_1();
  v419 = v66;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_9_0();
  v435 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
  v70 = OUTLINED_FUNCTION_80(v69);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_10_0();
  v379 = v71;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_123();
  v407 = v73;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_96();
  v378 = v75;
  OUTLINED_FUNCTION_86();
  v425 = sub_1C8BD499C();
  OUTLINED_FUNCTION_13_1();
  v422 = v76;
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_10_0();
  v404 = v78;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_96();
  v387 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87D8, &qword_1C8BF9FE0);
  OUTLINED_FUNCTION_80(v81);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_81();
  v405 = v83;
  OUTLINED_FUNCTION_86();
  v408 = sub_1C8BD40EC();
  OUTLINED_FUNCTION_13_1();
  v406 = v84;
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_9_0();
  v386 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v88 = OUTLINED_FUNCTION_80(v87);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_10_0();
  v410 = v89;
  OUTLINED_FUNCTION_83_0();
  v91 = MEMORY[0x1EEE9AC00](v90);
  v93 = &v373 - v92;
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_123();
  v384 = v94;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_123();
  v424 = v96;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v373 - v98;
  v421 = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v426 = v100;
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_10_0();
  v403 = v102;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_123();
  v383 = v104;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_123();
  v409 = v106;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_96();
  v109 = v108;
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v110 = *(type metadata accessor for Siri_Nlu_External_UsoEntitySpan(0) + 20);
  if (qword_1EDACBD08 != -1)
  {
    swift_once();
  }

  result = qword_1EDACBD10;
  v432 = v110;
  *(a3 + v110) = qword_1EDACBD10;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_125;
  }

  if (HIDWORD(a2))
  {
LABEL_125:
    __break(1u);
    return result;
  }

  v373 = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113 = a3;
  v114 = v432;
  v115 = *(a3 + v432);
  v433 = v113;
  v375 = v28;
  v376 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_56_4();
    v115 = v116;
    *(v113 + v114) = v116;
  }

  v117 = v431;
  OUTLINED_FUNCTION_37_0(v115 + 16, v446);
  *(v115 + 16) = a2;
  *(v115 + 20) = 0;
  sub_1C8BD412C();
  if (v118)
  {
    OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__originAppID, &v436);
    sub_1C8778810();
    v119 = v421;
    OUTLINED_FUNCTION_76(v99, 1, v421);
    if (v355)
    {
      sub_1C8BD492C();
      OUTLINED_FUNCTION_76(v99, 1, v119);
      v123 = v432;
      v122 = v433;
      if (!v355)
      {
        sub_1C8778ED8(v99, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      OUTLINED_FUNCTION_41_7();
      v121(v109, v99, v119);
      v123 = v432;
      v122 = v433;
    }

    sub_1C8BD491C();
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v122;
    v115 = *(v122 + v123);
    if ((v124 & 1) == 0)
    {
      type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      OUTLINED_FUNCTION_56_4();
      v115 = v126;
      *(v125 + v123) = v126;
    }

    v120 = v421;
    OUTLINED_FUNCTION_41_7();
    v127 = OUTLINED_FUNCTION_253();
    v128(v127);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v120);
    OUTLINED_FUNCTION_26_6();
    sub_1C8786514();
    swift_endAccess();
  }

  else
  {
    v123 = v432;
    v120 = v421;
  }

  v132 = v405;
  sub_1C8BD414C();
  v133 = v132;
  v134 = v132;
  v135 = v408;
  OUTLINED_FUNCTION_76(v134, 1, v408);
  v136 = v406;
  if (v355)
  {
    v137 = v93;
    sub_1C8778ED8(v133, &qword_1EC2B87D8, &qword_1C8BF9FE0);
  }

  else
  {
    v138 = v133;
    v139 = v386;
    v406[4](v386, v138, v135);
    v140 = sub_1C8BD40DC();
    Siri_Nlu_External_UsoEntitySpan.SpanSource.init(rawValue:)(v140);
    v141 = v445[0];
    if (v445[0] == 7)
    {
      v142 = v136;
      v137 = v93;
      (v142[1])(v139, v135);
    }

    else
    {
      v143 = v433;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        (v136[1])(v386, v135);
        v115 = *(v143 + v123);
      }

      else
      {
        type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
        OUTLINED_FUNCTION_218_2();
        swift_allocObject();

        sub_1C8817220();
        v144 = v143;
        v115 = v145;
        (v136[1])(v386, v408);

        *(v144 + v123) = v115;
      }

      v137 = v93;
      v146 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent;
      OUTLINED_FUNCTION_37_0(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent, &v437);
      *(v115 + v146) = v141;
    }
  }

  sub_1C8BD416C();
  if (v147)
  {
    OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__label, &v438);
    v148 = v384;
    sub_1C8778810();
    OUTLINED_FUNCTION_42_4();
    OUTLINED_FUNCTION_76(v149, v150, v151);
    if (v355)
    {
      sub_1C8BD492C();
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_76(v152, v153, v154);
      v157 = v433;
      if (!v355)
      {
        sub_1C8778ED8(v148, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      OUTLINED_FUNCTION_41_7();
      v156(v409, v148, v120);
      v157 = v433;
    }

    sub_1C8BD491C();
    v158 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v157;
    v115 = *(v157 + v123);
    if ((v158 & 1) == 0)
    {
      type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      OUTLINED_FUNCTION_56_4();
      v115 = v160;
      *(v159 + v123) = v160;
    }

    v155 = v137;
    OUTLINED_FUNCTION_41_7();
    v161(v424, v409, v120);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v162, v163, v164, v120);
    OUTLINED_FUNCTION_26_6();
    sub_1C8786514();
    swift_endAccess();
  }

  else
  {
    v155 = v137;
  }

  if ((sub_1C8BD410C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__startIndex, &v439);
    v165 = v378;
    sub_1C8778810();
    v166 = OUTLINED_FUNCTION_213();
    v167 = v425;
    OUTLINED_FUNCTION_76(v166, v168, v425);
    if (v355)
    {
      sub_1C8BD486C();
      v169 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_76(v169, v170, v167);
      v171 = v433;
      if (!v355)
      {
        sub_1C8778ED8(v165, &qword_1EC2B6948, &unk_1C8BF9F90);
      }
    }

    else
    {
      (*(v422 + 32))(v387, v165, v167);
      v171 = v433;
    }

    sub_1C8BD485C();
    v172 = swift_isUniquelyReferenced_nonNull_native();
    v115 = *(v171 + v123);
    if ((v172 & 1) == 0)
    {
      type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      OUTLINED_FUNCTION_56_4();
      v115 = v173;
      *(v171 + v123) = v173;
    }

    v174 = v425;
    (*(v422 + 32))(v407, v387, v425);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v175, v176, v177, v174);
    OUTLINED_FUNCTION_26_6();
    sub_1C8786514();
    swift_endAccess();
  }

  if ((sub_1C8BD417C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__endIndex, &v440);
    v178 = v379;
    sub_1C8778810();
    v179 = OUTLINED_FUNCTION_213();
    v180 = v425;
    OUTLINED_FUNCTION_76(v179, v181, v425);
    if (v355)
    {
      sub_1C8BD486C();
      v182 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_76(v182, v183, v180);
      v184 = v433;
      if (!v355)
      {
        sub_1C8778ED8(v178, &qword_1EC2B6948, &unk_1C8BF9F90);
      }
    }

    else
    {
      (*(v422 + 32))(v404, v178, v180);
      v184 = v433;
    }

    sub_1C8BD485C();
    v185 = swift_isUniquelyReferenced_nonNull_native();
    v115 = *(v184 + v123);
    if ((v185 & 1) == 0)
    {
      type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      OUTLINED_FUNCTION_56_4();
      v115 = v186;
      *(v184 + v123) = v186;
    }

    v187 = v425;
    (*(v422 + 32))(v407, v404, v425);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v188, v189, v190, v187);
    OUTLINED_FUNCTION_26_6();
    sub_1C8786514();
    swift_endAccess();
  }

  sub_1C8BD40BC();
  if (v191)
  {
    OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__originEntityID, v441);
    sub_1C8778810();
    OUTLINED_FUNCTION_42_4();
    OUTLINED_FUNCTION_76(v192, v193, v194);
    if (v355)
    {
      v199 = v383;
      sub_1C8BD492C();
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_76(v195, v196, v197);
      v201 = v433;
      if (!v355)
      {
        sub_1C8778ED8(v155, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      OUTLINED_FUNCTION_41_7();
      v199 = v383;
      v200(v383, v155, v120);
      v201 = v433;
    }

    sub_1C8BD491C();
    v202 = swift_isUniquelyReferenced_nonNull_native();
    v203 = v201;
    v115 = *(v201 + v123);
    if ((v202 & 1) == 0)
    {
      type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      OUTLINED_FUNCTION_56_4();
      v115 = v204;
      *(v203 + v123) = v204;
    }

    v198 = v423;
    v205 = v424;
    OUTLINED_FUNCTION_41_7();
    v206(v205, v199, v120);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v207, v208, v209, v120);
    OUTLINED_FUNCTION_26_6();
    sub_1C8786514();
    swift_endAccess();
  }

  else
  {
    v198 = v423;
  }

  if (*(sub_1C8BD40FC() + 16))
  {
    v409 = *(v419 + 16);
    OUTLINED_FUNCTION_32();
    v387 = v211;
    v213 = v211 + v212;
    v405 = (v385 + 32);
    v406 = (v426 + 32);
    v215 = *(v214 + 56);
    v404 = (v395 + 32);
    v419 = v214;
    v407 = (v214 - 8);
    v408 = v215;
    do
    {
      v425 = v210;
      v426 = v115;
      v424 = v213;
      v409(v435);
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v216 = v412;
      v217 = (v117 + v412[5]);
      *v217 = 0;
      v217[1] = 0;
      v218 = v216[6];
      OUTLINED_FUNCTION_5();
      v219 = v117;
      v220 = v421;
      __swift_storeEnumTagSinglePayload(v221, v222, v223, v421);
      v224 = v216[7];
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v225, v226, v227, v198);
      v228 = v216[8];
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v229, v230, v231, v434);
      *v217 = sub_1C8BD408C();
      v217[1] = v232;
      v233 = v410;
      sub_1C8BD406C();
      if (v234)
      {
        v422 = v228;
        sub_1C8778810();
        OUTLINED_FUNCTION_51_3();
        OUTLINED_FUNCTION_76(v235, v236, v237);
        if (v355)
        {
          v240 = v403;
          sub_1C8BD492C();
          v238 = OUTLINED_FUNCTION_213();
          OUTLINED_FUNCTION_76(v238, v239, v220);
          if (!v355)
          {
            sub_1C8778ED8(v233, &qword_1EC2B6110, &qword_1C8BF5070);
          }
        }

        else
        {
          v240 = v403;
          (*v406)(v403, v233, v220);
        }

        sub_1C8BD491C();
        sub_1C8778ED8(v219 + v218, &qword_1EC2B6110, &qword_1C8BF5070);
        (*v406)(v219 + v218, v240, v220);
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v241, v242, v243, v220);
        v228 = v422;
      }

      v244 = sub_1C8BD409C();
      v245 = v413;
      v246 = v414;
      v247 = v426;
      if ((v244 & 0x100000000) == 0)
      {
        v248 = v400;
        sub_1C8778810();
        v249 = OUTLINED_FUNCTION_109();
        v250 = v423;
        OUTLINED_FUNCTION_76(v249, v251, v423);
        if (v355)
        {
          sub_1C8BD486C();
          v252 = OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_76(v252, v253, v250);
          if (!v355)
          {
            sub_1C8778ED8(v245, &qword_1EC2B6968, &unk_1C8BE8DC0);
          }
        }

        else
        {
          (*v405)(v248, v245, v250);
        }

        sub_1C8BD485C();
        v254 = v431;
        sub_1C8778ED8(v431 + v224, &qword_1EC2B6968, &unk_1C8BE8DC0);
        (*v405)(v254 + v224, v248, v250);
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v255, v256, v257, v250);
      }

      v258 = sub_1C8BD405C();
      v117 = v431;
      if ((v258 & 0x100000000) == 0)
      {
        v259 = v401;
        sub_1C8778810();
        v260 = v434;
        OUTLINED_FUNCTION_76(v259, 1, v434);
        if (v355)
        {
          sub_1C8BD482C();
          OUTLINED_FUNCTION_76(v259, 1, v260);
          if (!v355)
          {
            sub_1C8778ED8(v259, &qword_1EC2B6198, &unk_1C8BE6E30);
          }
        }

        else
        {
          (*v404)(v246, v259, v260);
        }

        sub_1C8BD481C();
        sub_1C8778ED8(v117 + v228, &qword_1EC2B6198, &unk_1C8BE6E30);
        (*v404)(v117 + v228, v246, v260);
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v261, v262, v263, v260);
      }

      (*v407)(v435, v427);
      v264 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__properties;
      OUTLINED_FUNCTION_277(v247 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__properties, v445);
      v265 = *(v247 + v264);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v274 = OUTLINED_FUNCTION_13_0();
        v265 = sub_1C878F458(v274, v275, v276, v265, &qword_1EC2B9098, &qword_1C8BF9FF8, v277, v278);
      }

      v267 = v432;
      v266 = v433;
      v198 = v423;
      v269 = v265[2];
      v268 = v265[3];
      if (v269 >= v268 >> 1)
      {
        OUTLINED_FUNCTION_38_7(v268);
        OUTLINED_FUNCTION_40_5();
        v265 = sub_1C878F458(v279, v280, v281, v265, &qword_1EC2B9098, &qword_1C8BF9FF8, v282, v283);
      }

      v265[2] = v269 + 1;
      OUTLINED_FUNCTION_17_3();
      sub_1C8790158();
      v270 = swift_isUniquelyReferenced_nonNull_native();
      v271 = v266;
      v115 = *(v266 + v267);
      if ((v270 & 1) == 0)
      {
        type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
        OUTLINED_FUNCTION_218_2();
        swift_allocObject();
        OUTLINED_FUNCTION_56_4();
        v115 = v272;
        *(v271 + v267) = v272;
      }

      v273 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__properties;
      OUTLINED_FUNCTION_37_0(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__properties, v444);
      *(v115 + v273) = v265;

      v213 = v424 + v408;
      v210 = v425 - 1;
    }

    while (v425 != 1);
  }

  v284 = *(sub_1C8BD413C() + 16);
  if (v284)
  {
    v285 = *(v420 + 16);
    OUTLINED_FUNCTION_32();
    v288 = v286 + v287;
    v431 = (v395 + 32);
    v290 = *(v289 + 56);
    v420 = v289;
    v435 = (v289 - 8);
    v427 = v285;
    v425 = v286;
    v426 = v290;
    do
    {
      v285(v428, v288, v429);
      v291 = v416;
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v292 = v418;
      v293 = (v291 + *(v418 + 20));
      *v293 = 0;
      v293[1] = 0;
      v294 = *(v292 + 24);
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v295, v296, v297, v434);
      *v293 = sub_1C8BD431C();
      v293[1] = v298;
      v299 = v291;
      v300 = sub_1C8BD42FC();
      v301 = v415;
      if ((v300 & 0x100000000) == 0)
      {
        sub_1C8778810();
        v302 = v434;
        OUTLINED_FUNCTION_76(v301, 1, v434);
        if (v355)
        {
          v306 = v402;
          sub_1C8BD482C();
          OUTLINED_FUNCTION_51_3();
          OUTLINED_FUNCTION_76(v303, v304, v305);
          if (!v355)
          {
            sub_1C8778ED8(v301, &qword_1EC2B6198, &unk_1C8BE6E30);
          }
        }

        else
        {
          v306 = v402;
          (*v431)(v402, v301, v302);
        }

        sub_1C8BD481C();
        sub_1C8778ED8(v299 + v294, &qword_1EC2B6198, &unk_1C8BE6E30);
        (*v431)(v299 + v294, v306, v302);
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v307, v308, v309, v302);
        v290 = v426;
        v285 = v427;
      }

      OUTLINED_FUNCTION_31_6();
      sub_1C8790158();
      v310 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__alternatives;
      OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__alternatives, v443);
      v311 = *(v115 + v310);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v319 = OUTLINED_FUNCTION_13_0();
        v311 = sub_1C878F458(v319, v320, v321, v311, &qword_1EC2B9090, &qword_1C8BF9FF0, v322, v323);
      }

      v313 = v432;
      v312 = v433;
      v315 = v311[2];
      v314 = v311[3];
      if (v315 >= v314 >> 1)
      {
        OUTLINED_FUNCTION_38_7(v314);
        OUTLINED_FUNCTION_40_5();
        v311 = sub_1C878F458(v324, v325, v326, v311, &qword_1EC2B9090, &qword_1C8BF9FF0, v327, v328);
      }

      v311[2] = v315 + 1;
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_31_6();
      sub_1C8790158();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        (*v435)(v428, v429);
        v115 = *(v312 + v313);
      }

      else
      {
        type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
        OUTLINED_FUNCTION_218_2();
        swift_allocObject();

        sub_1C8817220();
        v316 = v312;
        v115 = v317;
        (*v435)(v428, v429);

        *(v316 + v313) = v115;
      }

      v318 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__alternatives;
      OUTLINED_FUNCTION_37_0(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__alternatives, v442);
      *(v115 + v318) = v311;

      v288 += v290;
      --v284;
    }

    while (v284);
  }

  v329 = v390;
  sub_1C8BD418C();
  v330 = v329;
  v331 = v392;
  OUTLINED_FUNCTION_76(v329, 1, v392);
  v332 = v433;
  v333 = v397;
  v334 = v398;
  v335 = v396;
  v336 = v394;
  v337 = v391;
  if (v355)
  {
    sub_1C8778ED8(v330, &qword_1EC2B87D0, &unk_1C8BF48B0);
  }

  else
  {
    v338 = v330;
    v339 = v380;
    (*(v380 + 32))(v391, v338, v331);
    sub_1C88DA6F0(v393);
    v340 = v432;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v339 + 8))(v337, v331);
    }

    else
    {
      type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      v342 = v337;
      v343 = v339;

      sub_1C8817220();
      v345 = v344;
      v333 = v397;
      (*(v343 + 8))(v342, v331);

      *(v332 + v340) = v345;
      v335 = v396;
    }

    v346 = matched;
    sub_1C8790158();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v347, v348, v349, v346);
    OUTLINED_FUNCTION_64_6();
    sub_1C8786514();
    swift_endAccess();
    v334 = v398;
  }

  sub_1C8BD415C();
  OUTLINED_FUNCTION_76(v336, 1, v335);
  if (v355)
  {
    return sub_1C8778ED8(v336, &qword_1EC2B87C8, &qword_1C8BF48A8);
  }

  (*(v389 + 32))(v388, v336, v335);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v350 = *(v334 + 20);
  *(v333 + v350) = 2;
  v351 = v381;
  sub_1C8BD441C();
  v352 = OUTLINED_FUNCTION_109();
  v353 = v382;
  OUTLINED_FUNCTION_76(v352, v354, v382);
  if (v355)
  {
    sub_1C8778ED8(v351, &qword_1EC2B87C0, &qword_1C8BF48A0);
    v356 = v432;
  }

  else
  {
    v357 = v333;
    v358 = v373;
    v359 = v374;
    (*(v373 + 32))(v374, v351, v353);
    v360 = v353;
    v361 = sub_1C8BD43EC();
    (*(v358 + 8))(v359, v360);
    if (!v361)
    {
      v363 = 0;
      v356 = v432;
      v362 = v357;
      goto LABEL_119;
    }

    v356 = v432;
    v362 = v357;
    if (v361 == 1)
    {
      v363 = 1;
LABEL_119:
      *(v362 + v350) = v363;
    }
  }

  v364 = v433;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    (*(v389 + 8))(v388, v335);
  }

  else
  {
    v365 = v335;
    v366 = v364;
    type metadata accessor for Siri_Nlu_External_UsoEntitySpan._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();

    sub_1C8817220();
    v368 = v367;
    (*(v389 + 8))(v388, v365);

    *(v366 + v356) = v368;
  }

  sub_1C8790158();
  OUTLINED_FUNCTION_13_15();
  __swift_storeEnumTagSinglePayload(v369, v370, v371, v372);
  OUTLINED_FUNCTION_64_6();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C88DA6F0@<X0>(uint64_t *a1@<X8>)
{
  v94 = sub_1C8BD47AC();
  OUTLINED_FUNCTION_13_1();
  v92 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v6 = v5 - v4;
  v7 = sub_1C8BD499C();
  OUTLINED_FUNCTION_13_1();
  v91 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v12 = v11 - v10;
  v13 = sub_1C8BD483C();
  OUTLINED_FUNCTION_13_1();
  v83 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_33();
  v18 = v17 - v16;
  *a1 = MEMORY[0x1E69E7CC0];
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v20 = (a1 + matched[6]);
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = matched[7];
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v13);
  v84 = matched[8];
  OUTLINED_FUNCTION_17_11(v84);
  v85 = matched[9];
  OUTLINED_FUNCTION_17_11(v85);
  v86 = matched[10];
  OUTLINED_FUNCTION_17_11(v86);
  v87 = matched[11];
  OUTLINED_FUNCTION_17_11(v87);
  v88 = matched[12];
  OUTLINED_FUNCTION_17_11(v88);
  v89 = matched[13];
  OUTLINED_FUNCTION_17_11(v89);
  v93 = a1;
  v90 = matched[14];
  OUTLINED_FUNCTION_17_11(v90);
  *v20 = sub_1C8BD473C();
  *(v20 + 4) = 0;
  if ((sub_1C8BD46DC() & 0x100000000) == 0)
  {
    v20 = a1;
    Siri_Nlu_External_MatchInfo.matchScore.getter();
    sub_1C8BD481C();
    sub_1C8778ED8(a1 + v21, &qword_1EC2B6198, &unk_1C8BE6E30);
    (*(v83 + 32))(a1 + v21, v18, v13);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v13);
  }

  if ((sub_1C8BD470C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.maxTokenCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v20 + v84, &qword_1EC2B6948, &unk_1C8BF9F90);
    v28 = OUTLINED_FUNCTION_6_14();
    v29(v28);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }

  if ((sub_1C8BD476C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.matchedTokenCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v20 + v85, &qword_1EC2B6948, &unk_1C8BF9F90);
    v34 = OUTLINED_FUNCTION_6_14();
    v35(v34);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }

  if ((sub_1C8BD471C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.maxStopWordCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v20 + v86, &qword_1EC2B6948, &unk_1C8BF9F90);
    v40 = OUTLINED_FUNCTION_6_14();
    v41(v40);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  }

  if ((sub_1C8BD477C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.matchedStopWordCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v20 + v87, &qword_1EC2B6948, &unk_1C8BF9F90);
    v46 = OUTLINED_FUNCTION_6_14();
    v47(v46);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  }

  if ((sub_1C8BD46EC() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.editDistance.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v20 + v88, &qword_1EC2B6948, &unk_1C8BF9F90);
    v52 = OUTLINED_FUNCTION_6_14();
    v53(v52);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  }

  if ((sub_1C8BD46FC() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.maxAliasCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v20 + v89, &qword_1EC2B6948, &unk_1C8BF9F90);
    v58 = OUTLINED_FUNCTION_6_14();
    v59(v58);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  }

  if ((sub_1C8BD474C() & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    Siri_Nlu_External_MatchInfo.matchedAliasCount.getter();
    OUTLINED_FUNCTION_54_4();
    sub_1C8778ED8(v20 + v90, &qword_1EC2B6948, &unk_1C8BF9F90);
    (*(v91 + 32))(v20 + v90, v12, v7);
    OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  }

  v68 = *(sub_1C8BD475C() + 16);
  if (v68)
  {
    v69 = *(v92 + 16);
    OUTLINED_FUNCTION_32();
    v72 = v70 + v71;
    v73 = *(v92 + 72);
    v74 = MEMORY[0x1E69E7CC0];
    do
    {
      v69(v6, v72, v94);
      v75 = sub_1C8BD40DC();
      (*(v92 + 8))(v6, v94);
      if (v75 <= 0xB)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = OUTLINED_FUNCTION_13_0();
          v74 = sub_1C88DB244(v78, v79, v80, v74);
        }

        v77 = *(v74 + 2);
        v76 = *(v74 + 3);
        if (v77 >= v76 >> 1)
        {
          v81 = OUTLINED_FUNCTION_38_7(v76);
          v74 = sub_1C88DB244(v81, v77 + 1, 1, v74);
        }

        *(v74 + 2) = v77 + 1;
        v74[v77 + 32] = v75;
        *v93 = v74;
      }

      v72 += v73;
      --v68;
    }

    while (v68);
  }
}

id static UsoGraphProtoWriter.toObjCProtobuf(graph:vocabManager:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v8 = v7 - v6;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)(a1, a2, v7 - v6);
  if (v2)
  {
    return v8;
  }

  sub_1C888D5F4();
  sub_1C8BD4CCC();
  OUTLINED_FUNCTION_11_14();
  sub_1C878F564(v8, v9);
  v11 = objc_allocWithZone(SIRINLUEXTERNALUsoGraph);
  v12 = OUTLINED_FUNCTION_253();
  sub_1C87A8FBC(v12, v13);
  v14 = OUTLINED_FUNCTION_253();
  result = sub_1C88DADDC(v14, v15);
  if (result)
  {
    v8 = result;
    v16 = OUTLINED_FUNCTION_253();
    sub_1C87A997C(v16, v17);
    return v8;
  }

  __break(1u);
  return result;
}

id sub_1C88DADDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1C8BD3FEC();
    sub_1C87A9A24(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

void sub_1C88DAE50(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      v8 = sub_1C88DAFBC(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v8 = 1;
LABEL_10:
        *a1 = v8 & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v8 = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      goto LABEL_10;
  }
}

char *sub_1C88DAFBC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1C8BD3F9C();
  v8 = result;
  if (result)
  {
    result = sub_1C8BD3FBC();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1C8BD3FAC();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

unint64_t sub_1C88DB0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C8BD529C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

char *sub_1C88DB244(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9088, &qword_1C8BF9FE8);
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

char *sub_1C88DB338(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9068, &qword_1C8BF9FB8);
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

_BYTE *storeEnumTagSinglePayload for UsoGraphProtoWriter(_BYTE *result, int a2, int a3)
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

void OUTLINED_FUNCTION_56_4()
{

  sub_1C8817220();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_65(v5);
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v6[5]);
    v8 = v6[6];
    v9 = type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_43(a1 + v8, v10, v11, v9);
    OUTLINED_FUNCTION_18_2(v6[7]);
    OUTLINED_FUNCTION_18_2(v6[8]);
    OUTLINED_FUNCTION_18_2(v6[9]);
    OUTLINED_FUNCTION_18_2(v6[10]);
    *(a1 + v6[11]) = 6;
    result = OUTLINED_FUNCTION_65(v5);
    if (!v7)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_18();
    return sub_1C88DD078();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.requestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_9_15();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_19_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C88DCC98(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_38_9();
  v5 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return swift_endAccess();
}

void Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.requestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_RequestID(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[5]);
    v14 = v8[6];
    v15 = type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_43(&v12[v14], v16, v17, v15);
    OUTLINED_FUNCTION_26(v8[7]);
    OUTLINED_FUNCTION_26(v8[8]);
    OUTLINED_FUNCTION_26(v8[9]);
    OUTLINED_FUNCTION_26(v8[10]);
    v12[v8[11]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_18();
    OUTLINED_FUNCTION_36_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_65(v5);
  if (v7)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v6 + 24));
    OUTLINED_FUNCTION_18_2(*(v6 + 28));
    result = OUTLINED_FUNCTION_65(v5);
    if (!v7)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
    return sub_1C88DD078();
  }

  return result;
}

uint64_t sub_1C88DBA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C88DD0CC();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.tokenChain.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_9_15();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_19_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C88DCC98(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_38_9();
  v5 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B6048, &unk_1C8BE6F80);
  return swift_endAccess();
}

void Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.tokenChain.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_TokenChain(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(*(v8 + 24));
    OUTLINED_FUNCTION_26(*(v8 + 28));
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_36_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

BOOL sub_1C88DBD38(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  OUTLINED_FUNCTION_6_15();
  v13 = *a3;
  swift_beginAccess();
  sub_1C87867A0(v4 + v13, v12, a1, a2);
  v14 = a4(0);
  v15 = __swift_getEnumTagSinglePayload(v12, 1, v14) != 1;
  sub_1C8778ED8(v12, a1, a2);
  return v15;
}

uint64_t sub_1C88DBE48(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_10();
    v17 = OUTLINED_FUNCTION_2();
    v16 = sub_1C88DCC98(v17);
    *(v9 + v14) = v16;
  }

  v18 = a3(0);
  OUTLINED_FUNCTION_43(v13, v19, v20, v18);
  v21 = *a4;
  swift_beginAccess();
  sub_1C878656C(v13, v16 + v21, a1, a2);
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nlContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  OUTLINED_FUNCTION_6_15();
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  OUTLINED_FUNCTION_16_0();
  sub_1C87867A0(v1 + v7, v6, &qword_1EC2B6000, &qword_1C8BF5050);
  v8 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_65(v6);
  if (v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v10;
    a1[2] = v10;
    a1[3] = v10;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v11 = *(v8 + 36);
    v12 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    OUTLINED_FUNCTION_43(a1 + v11, v13, v14, v12);
    result = OUTLINED_FUNCTION_65(v6);
    if (!v9)
    {
      return sub_1C8778ED8(v6, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_19();
    return sub_1C88DD078();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nlContext.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_9_15();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_19_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C88DCC98(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_38_9();
  v5 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B6000, &qword_1C8BF5050);
  return swift_endAccess();
}

void Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nlContext.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NLContext(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    v14 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = v14;
    v12[2] = v14;
    v12[3] = v14;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = *(v8 + 36);
    v16 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    OUTLINED_FUNCTION_43(v12 + v15, v17, v18, v16);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_19();
    OUTLINED_FUNCTION_36_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_65(v5);
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + v6[5]);
    OUTLINED_FUNCTION_313(a1 + v6[6]);
    *(a1 + v6[7]) = 6;
    result = OUTLINED_FUNCTION_65(v5);
    if (!v7)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_13();
    return sub_1C88DD078();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nluRequestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_9_15();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_19_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C88DCC98(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_38_9();
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return swift_endAccess();
}

void Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.nluRequestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_UUID(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v12[v8[5]]);
    OUTLINED_FUNCTION_313(&v12[v8[6]]);
    v12[v8[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_36_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C88DC638(uint64_t a1, char a2, void (*a3)(void *), void (*a4)(void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_1C88DD0CC();
    a3(v6);
    sub_1C88DD120(v7, a4);
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.unknownFields.getter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.unknownFields.setter(uint64_t a1)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0) + 20);
  if (qword_1EC2B5200 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EC2B90F8;
}

uint64_t sub_1C88DC8BC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B90E0);
  __swift_project_value_buffer(v0, qword_1EC2B90E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_chain";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "nl_context";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "nlu_request_id";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B51F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B90E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C88DCBA8()
{
  type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest._StorageClass(0);
  swift_allocObject();
  result = sub_1C88DCBE8();
  qword_1EC2B90F8 = result;
  return result;
}

uint64_t sub_1C88DCBE8()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  v4 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  v6 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  v8 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  return v0;
}

uint64_t sub_1C88DCC98(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  v14 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  v16 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  v18 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  v20 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v21, v12, &qword_1EC2B64B0, &unk_1C8BF3F40);
  swift_beginAccess();
  sub_1C878656C(v12, v1 + v13, &qword_1EC2B64B0, &unk_1C8BF3F40);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  swift_beginAccess();
  sub_1C87867A0(a1 + v22, v9, &qword_1EC2B6048, &unk_1C8BE6F80);
  swift_beginAccess();
  sub_1C878656C(v9, v1 + v15, &qword_1EC2B6048, &unk_1C8BE6F80);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  swift_beginAccess();
  v24 = v29;
  sub_1C87867A0(a1 + v23, v29, &qword_1EC2B6000, &qword_1C8BF5050);
  swift_beginAccess();
  sub_1C878656C(v24, v1 + v17, &qword_1EC2B6000, &qword_1C8BF5050);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  swift_beginAccess();
  v26 = v30;
  sub_1C87867A0(a1 + v25, v30, &qword_1EC2B5EC8, &unk_1C8BE68C0);

  swift_beginAccess();
  sub_1C878656C(v26, v1 + v19, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C88DD078()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C88DD0CC()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C88DD120(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C88DD178()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext, &qword_1EC2B6000, &qword_1C8BF5050);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return v0;
}

uint64_t sub_1C88DD210()
{
  v0 = sub_1C88DD178();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v10 = sub_1C88DCC98(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C88DD304(v10, a1, a2, a3);
}

uint64_t sub_1C88DD304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C88DD3E4(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C88DD4C0(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C88DD59C(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C88DD678(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88DD3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  sub_1C87767D0(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88DD4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  sub_1C87767D0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88DD59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  sub_1C87767D0(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext, &protocol conformance descriptor for Siri_Nlu_External_NLContext);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88DD678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C87767D0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0);
  result = sub_1C88DD7C0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C88DD7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v38 - v6;
  v42 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v42);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v38 - v9;
  v46 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  MEMORY[0x1EEE9AC00](v46);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - v12;
  v43 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - v16;
  v18 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  swift_beginAccess();
  v45 = a1;
  sub_1C87867A0(a1 + v21, v17, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1C8778ED8(v17, &qword_1EC2B64B0, &unk_1C8BF3F40);
    v22 = v47;
  }

  else
  {
    sub_1C88DD078();
    sub_1C87767D0(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
    v23 = v47;
    sub_1C8BD4E2C();
    v22 = v23;
    result = sub_1C88DD120(v20, type metadata accessor for Siri_Nlu_External_RequestID);
    if (v23)
    {
      return result;
    }
  }

  v25 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  v26 = v45;
  swift_beginAccess();
  sub_1C87867A0(v26 + v25, v13, &qword_1EC2B6048, &unk_1C8BE6F80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v43);
  v28 = v46;
  v29 = v44;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v13, &qword_1EC2B6048, &unk_1C8BE6F80);
  }

  else
  {
    v30 = v40;
    sub_1C88DD078();
    sub_1C87767D0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
    sub_1C8BD4E2C();
    result = sub_1C88DD120(v30, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    if (v22)
    {
      return result;
    }

    v28 = v46;
  }

  v31 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  swift_beginAccess();
  sub_1C87867A0(v26 + v31, v29, &qword_1EC2B6000, &qword_1C8BF5050);
  v32 = __swift_getEnumTagSinglePayload(v29, 1, v28);
  v34 = v41;
  v33 = v42;
  if (v32 == 1)
  {
    sub_1C8778ED8(v29, &qword_1EC2B6000, &qword_1C8BF5050);
  }

  else
  {
    v35 = v39;
    sub_1C88DD078();
    sub_1C87767D0(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext, &protocol conformance descriptor for Siri_Nlu_External_NLContext);
    sub_1C8BD4E2C();
    result = sub_1C88DD120(v35, type metadata accessor for Siri_Nlu_External_NLContext);
    if (v22)
    {
      return result;
    }
  }

  v36 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  swift_beginAccess();
  sub_1C87867A0(v26 + v36, v34, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v33) == 1)
  {
    return sub_1C8778ED8(v34, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  v37 = v38;
  sub_1C88DD078();
  sub_1C87767D0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  sub_1C8BD4E2C();
  return sub_1C88DD120(v37, type metadata accessor for Siri_Nlu_External_UUID);
}

uint64_t static Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {

    v6 = sub_1C88DDF98(v4, v5);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C87767D0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

BOOL sub_1C88DDF98(uint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v84);
  v80 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v79 - v9;
  v89 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  MEMORY[0x1EEE9AC00](v89);
  v82 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6008, &unk_1C8BE6CC0);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v79 - v15;
  v96 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  MEMORY[0x1EEE9AC00](v96);
  v87 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v92 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v79 - v21;
  v22 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v22);
  v93 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v79 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v99 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v79 - v31;
  v33 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v33, v32, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v34 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__requestID;
  swift_beginAccess();
  v35 = *(v25 + 56);
  sub_1C87867A0(v32, v27, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v36 = a2 + v34;
  v37 = a2;
  sub_1C87867A0(v36, &v27[v35], &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(v27, 1, v22) == 1)
  {

    sub_1C8778ED8(v32, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(&v27[v35], 1, v22) == 1)
    {
      sub_1C8778ED8(v27, &qword_1EC2B64B0, &unk_1C8BF3F40);
      goto LABEL_8;
    }

LABEL_6:
    v39 = &qword_1EC2B64D8;
    v40 = &unk_1C8BEAC20;
    v41 = v27;
LABEL_22:
    sub_1C8778ED8(v41, v39, v40);
    goto LABEL_23;
  }

  v38 = v99;
  sub_1C87867A0(v27, v99, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(&v27[v35], 1, v22) == 1)
  {

    sub_1C8778ED8(v32, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C88DD120(v38, type metadata accessor for Siri_Nlu_External_RequestID);
    goto LABEL_6;
  }

  v42 = v93;
  sub_1C88DD078();

  v43 = v38;
  v44 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v38, v42);
  sub_1C88DD120(v42, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8778ED8(v32, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C88DD120(v43, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8778ED8(v27, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if ((v44 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v45 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  swift_beginAccess();
  v46 = v95;
  sub_1C87867A0(a1 + v45, v95, &qword_1EC2B6048, &unk_1C8BE6F80);
  v47 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__tokenChain;
  swift_beginAccess();
  v48 = *(v94 + 48);
  v49 = v97;
  sub_1C87867A0(v46, v97, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C87867A0(v37 + v47, v49 + v48, &qword_1EC2B6048, &unk_1C8BE6F80);
  v50 = v96;
  if (__swift_getEnumTagSinglePayload(v49, 1, v96) == 1)
  {
    sub_1C8778ED8(v46, &qword_1EC2B6048, &unk_1C8BE6F80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49 + v48, 1, v50);
    v52 = v98;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v49, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_15;
    }

LABEL_13:
    v39 = &qword_1EC2B6050;
    v40 = &qword_1C8BE6D00;
LABEL_21:
    v41 = v49;
    goto LABEL_22;
  }

  v53 = v92;
  sub_1C87867A0(v49, v92, &qword_1EC2B6048, &unk_1C8BE6F80);
  v54 = __swift_getEnumTagSinglePayload(v49 + v48, 1, v50);
  v52 = v98;
  if (v54 == 1)
  {
    sub_1C8778ED8(v46, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C88DD120(v53, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    goto LABEL_13;
  }

  v55 = v87;
  sub_1C88DD078();
  v56 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v53, v55);
  sub_1C88DD120(v55, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  sub_1C8778ED8(v46, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C88DD120(v53, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  sub_1C8778ED8(v49, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v56 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v57 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  swift_beginAccess();
  sub_1C87867A0(a1 + v57, v52, &qword_1EC2B6000, &qword_1C8BF5050);
  v58 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nlContext;
  swift_beginAccess();
  v59 = *(v88 + 48);
  v49 = v90;
  sub_1C87867A0(v52, v90, &qword_1EC2B6000, &qword_1C8BF5050);
  sub_1C87867A0(v37 + v58, v49 + v59, &qword_1EC2B6000, &qword_1C8BF5050);
  v60 = v89;
  if (__swift_getEnumTagSinglePayload(v49, 1, v89) != 1)
  {
    v63 = v86;
    sub_1C87867A0(v49, v86, &qword_1EC2B6000, &qword_1C8BF5050);
    v64 = __swift_getEnumTagSinglePayload(v49 + v59, 1, v60);
    v62 = v91;
    if (v64 == 1)
    {
      sub_1C8778ED8(v52, &qword_1EC2B6000, &qword_1C8BF5050);
      sub_1C88DD120(v63, type metadata accessor for Siri_Nlu_External_NLContext);
      goto LABEL_20;
    }

    v66 = v82;
    sub_1C88DD078();
    static Siri_Nlu_External_NLContext.== infix(_:_:)();
    v68 = v67;
    sub_1C88DD120(v66, type metadata accessor for Siri_Nlu_External_NLContext);
    sub_1C8778ED8(v52, &qword_1EC2B6000, &qword_1C8BF5050);
    sub_1C88DD120(v63, type metadata accessor for Siri_Nlu_External_NLContext);
    sub_1C8778ED8(v49, &qword_1EC2B6000, &qword_1C8BF5050);
    if (v68)
    {
      goto LABEL_27;
    }

LABEL_23:

    return 0;
  }

  sub_1C8778ED8(v52, &qword_1EC2B6000, &qword_1C8BF5050);
  v61 = __swift_getEnumTagSinglePayload(v49 + v59, 1, v60);
  v62 = v91;
  if (v61 != 1)
  {
LABEL_20:
    v39 = &qword_1EC2B6008;
    v40 = &unk_1C8BE6CC0;
    goto LABEL_21;
  }

  sub_1C8778ED8(v49, &qword_1EC2B6000, &qword_1C8BF5050);
LABEL_27:
  v69 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v69, v62, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v70 = OBJC_IVAR____TtCV12SiriNLUTypes68Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequestP33_8D26114A50190917BA609326E9F79A0C13_StorageClass__nluRequestID;
  swift_beginAccess();
  v71 = *(v83 + 48);
  v72 = v62;
  v73 = v62;
  v74 = v85;
  sub_1C87867A0(v72, v85, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87867A0(v37 + v70, v74 + v71, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v75 = v84;
  if (__swift_getEnumTagSinglePayload(v74, 1, v84) == 1)
  {

    sub_1C8778ED8(v73, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v74 + v71, 1, v75) == 1)
    {
      sub_1C8778ED8(v74, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      return 1;
    }

    goto LABEL_32;
  }

  v76 = v81;
  sub_1C87867A0(v74, v81, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v74 + v71, 1, v75) == 1)
  {

    sub_1C8778ED8(v91, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C88DD120(v76, type metadata accessor for Siri_Nlu_External_UUID);
LABEL_32:
    sub_1C8778ED8(v74, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    return 0;
  }

  v77 = v80;
  sub_1C88DD078();
  v78 = static Siri_Nlu_External_UUID.== infix(_:_:)(v76, v77);

  sub_1C88DD120(v77, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8778ED8(v91, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C88DD120(v76, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8778ED8(v74, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return (v78 & 1) != 0;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0);
  sub_1C87767D0(&qword_1EC2B9120, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest, &protocol conformance descriptor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88DEE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87767D0(&qword_1EC2B9160, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest, &protocol conformance descriptor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88DEEE4(uint64_t a1)
{
  v2 = sub_1C87767D0(&qword_1EC2B9130, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest, &protocol conformance descriptor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88DEF54(uint64_t a1, uint64_t a2)
{
  sub_1C87767D0(&qword_1EC2B9130, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest, &protocol conformance descriptor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88DF11C(uint64_t a1)
{
  result = sub_1C8BD49FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C88DF1A8(uint64_t a1)
{
  sub_1C88DF358(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
  if (v1 <= 0x3F)
  {
    sub_1C88DF358(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    if (v2 <= 0x3F)
    {
      sub_1C88DF358(319, qword_1EDACCC28, type metadata accessor for Siri_Nlu_External_NLContext);
      if (v3 <= 0x3F)
      {
        sub_1C88DF358(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}