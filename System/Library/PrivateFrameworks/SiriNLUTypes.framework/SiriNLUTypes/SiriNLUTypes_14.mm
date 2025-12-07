void sub_1C88DF358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.parses.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse(uint64_t a1)
{
  result = qword_1EC2B91A0;
  if (!qword_1EC2B91A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C88DF5E8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9168);
  __swift_project_value_buffer(v0, qword_1EC2B9168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C8BE6F30;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "parses";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Overrides_OverridesResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5208 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B9168);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C88DF864(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C88DF864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C88DFF14(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_External_UserParse(0), sub_1C88DFF14(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse), result = sub_1C8BD4E0C(), !v4))
  {
    type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse(0);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Overrides_OverridesResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1C87D2A98(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse(0);
  sub_1C8BD49FC();
  sub_1C88DFF14(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse(0);
  sub_1C88DFF14(&qword_1EC2B9180, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_OverridesResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88DFB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88DFF14(&qword_1EC2B91B0, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_OverridesResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88DFC00(uint64_t a1)
{
  v2 = sub_1C88DFF14(&qword_1EC2B9190, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_OverridesResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88DFC70(uint64_t a1, uint64_t a2)
{
  sub_1C88DFF14(&qword_1EC2B9190, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_OverridesResponse);

  return sub_1C8BD4CFC();
}

void sub_1C88DFE38(uint64_t a1)
{
  sub_1C88DFEBC(319);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C88DFEBC(uint64_t a1)
{
  if (!qword_1EC2B4238)
  {
    type metadata accessor for Siri_Nlu_External_UserParse(255);
    v1 = sub_1C8BD521C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC2B4238);
    }
  }
}

uint64_t sub_1C88DFF14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C88DFF94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.jsonTranscript.setter(v1, v2);
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.jsonTranscript.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.cdmPlannerRequestIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0);
  sub_1C88E02E4(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  v9 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v9, v10, v8);
  if (!v11)
  {
    return sub_1C88E0374(v6, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v8[5]);
  OUTLINED_FUNCTION_18_2(v8[6]);
  OUTLINED_FUNCTION_18_2(v8[7]);
  v12 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_76(v12, v13, v8);
  if (!v11)
  {
    return sub_1C8778ED8(v6, &qword_1EC2B91E8, &qword_1C8BFA3D0);
  }

  return result;
}

uint64_t sub_1C88E0198(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C88E0624(a1, v4);
  return Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.cdmPlannerRequestIdentifier.setter(v4);
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.cdmPlannerRequestIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0) + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B91E8, &qword_1C8BFA3D0);
  sub_1C88E0374(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  OUTLINED_FUNCTION_18_2(*(v1 + 20));
  OUTLINED_FUNCTION_18_2(*(v2 + 24));
  OUTLINED_FUNCTION_18_2(*(v3 + 28));
}

uint64_t sub_1C88E02E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C88E0374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.cdmPlannerRequestIdentifier.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0) + 24);
  *(v3 + 10) = v11;
  sub_1C88E02E4(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v7);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = &v10[v7[5]];
    *v15 = 0;
    *(v15 + 1) = 0;
    v16 = &v10[v7[6]];
    *v16 = 0;
    *(v16 + 1) = 0;
    v17 = &v10[v7[7]];
    *v17 = 0;
    *(v17 + 1) = 0;
    v18 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v18, v19, v7);
    if (!v14)
    {
      sub_1C8778ED8(v6, &qword_1EC2B91E8, &qword_1C8BFA3D0);
    }
  }

  else
  {
    sub_1C88E0374(v6, v10);
  }

  return sub_1C88E0544;
}

void sub_1C88E0544(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1C88E0624((*a1)[4], v4);
    sub_1C8778ED8(v7 + v3, &qword_1EC2B91E8, &qword_1C8BFA3D0);
    sub_1C88E0374(v4, v7 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C88E0688(v5);
  }

  else
  {
    sub_1C8778ED8(v7 + v3, &qword_1EC2B91E8, &qword_1C8BFA3D0);
    sub_1C88E0374(v5, v7 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1C88E0624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C88E0688(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.hasCdmPlannerRequestIdentifier.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0);
  sub_1C88E02E4(v0 + *(v7 + 24), v6);
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  v8 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_1C8778ED8(v6, &qword_1EC2B91E8, &qword_1C8BFA3D0);
  return v12;
}

Swift::Void __swiftcall Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.clearCdmPlannerRequestIdentifier()()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0) + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B91E8, &qword_1C8BFA3D0);
  v2 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0);
  OUTLINED_FUNCTION_18_2(*(v3 + 20));
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);

  return __swift_storeEnumTagSinglePayload(a2 + v5, 1, 1, v6);
}

uint64_t sub_1C88E0898(uint64_t (*a1)(void))
{
  a1(0);

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88E08F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.sessionID.setter(v1, v2);
}

uint64_t sub_1C88E0948()
{
  v3 = OUTLINED_FUNCTION_68();
  v5 = (v1 + *(v4(v3) + 20));

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.sessionID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C88E0A3C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientSessionID.getter()
{
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientSessionID.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = (v1 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v3) + 24));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientSessionID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clearClientSessionID()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientRequestID.getter()
{
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientRequestID.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = (v1 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v3) + 28));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clientRequestID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 28)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.clearClientRequestID()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_1C88E0DC4(uint64_t a1)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_1C88E0E60()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B91B8);
  __swift_project_value_buffer(v0, qword_1EC2B91B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "json_transcript";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cdm_planner_request_identifier";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v8 = OUTLINED_FUNCTION_8();
      sub_1C88E10C8(v8, v9, v10, v11);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C88E1AE4(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1C88E10C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0);
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  sub_1C88E15B8(&qword_1EC2B91F0, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0);
  OUTLINED_FUNCTION_16_2();
  if (!v14 || (result = OUTLINED_FUNCTION_9_5(*v15, v14, 1), (v4 = v3) == 0))
  {
    sub_1C88E02E4(v2 + *(v13 + 24), v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1C8778ED8(v8, &qword_1EC2B91E8, &qword_1C8BFA3D0);
    }

    else
    {
      sub_1C88E0374(v8, v12);
      sub_1C88E15B8(&qword_1EC2B91F0, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier);
      sub_1C8BD4E2C();
      result = sub_1C88E0688(v12);
      if (v4)
      {
        return result;
      }
    }

    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t static Siri_Nlu_External_CdmPlanner_CdmPlannerRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91E8, &qword_1C8BFA3D0);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B91F8, &qword_1C8BFA3D8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest(0);
  OUTLINED_FUNCTION_1();
  if (v20)
  {
    if (!v18)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_35(v19);
    v23 = v23 && v21 == v22;
    if (!v23 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v18)
  {
    goto LABEL_19;
  }

  v24 = *(v17 + 24);
  v25 = *(v13 + 48);
  sub_1C88E02E4(v2 + v24, v16);
  sub_1C88E02E4(a2 + v24, &v16[v25]);
  OUTLINED_FUNCTION_76(v16, 1, v5);
  if (v23)
  {
    OUTLINED_FUNCTION_76(&v16[v25], 1, v5);
    if (v23)
    {
      sub_1C8778ED8(v16, &qword_1EC2B91E8, &qword_1C8BFA3D0);
LABEL_22:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_5_14();
      v32 = sub_1C88E15B8(v30, v31, MEMORY[0x1E69AAC10]);
      v27 = OUTLINED_FUNCTION_159(v32);
      return v27 & 1;
    }

    goto LABEL_18;
  }

  sub_1C88E02E4(v16, v12);
  OUTLINED_FUNCTION_76(&v16[v25], 1, v5);
  if (v26)
  {
    sub_1C88E0688(v12);
LABEL_18:
    sub_1C8778ED8(v16, &qword_1EC2B91F8, &qword_1C8BFA3D8);
    goto LABEL_19;
  }

  sub_1C88E0374(&v16[v25], v8);
  v29 = static Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.== infix(_:_:)();
  sub_1C88E0688(v8);
  sub_1C88E0688(v12);
  sub_1C8778ED8(v16, &qword_1EC2B91E8, &qword_1C8BFA3D0);
  if (v29)
  {
    goto LABEL_22;
  }

LABEL_19:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1C88E15B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C88E169C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88E15B8(&qword_1EC2B9268, type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88E171C(uint64_t a1)
{
  v2 = sub_1C88E15B8(&qword_1EC2B9218, type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88E178C(uint64_t a1, uint64_t a2)
{
  sub_1C88E15B8(&qword_1EC2B9218, type metadata accessor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CdmPlannerRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88E1828()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B91D0);
  __swift_project_value_buffer(v0, qword_1EC2B91D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "session_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_session_id";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "client_request_id";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v12 = OUTLINED_FUNCTION_8();
        sub_1C88E1BB0(v12, v13, v14, v15);
        break;
      case 2:
        v8 = OUTLINED_FUNCTION_8();
        sub_1C88E1B4C(v8, v9, v10, v11);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88E1AE4(v3, v4, v5, v6, v7);
        break;
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v1);
  OUTLINED_FUNCTION_16_2();
  if (!v2 || (result = OUTLINED_FUNCTION_9_5(*v3, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_16_2();
    if (!v5 || (result = OUTLINED_FUNCTION_9_5(*v6, v5, 2), !v0))
    {
      OUTLINED_FUNCTION_16_2();
      if (!v7)
      {
        return OUTLINED_FUNCTION_15();
      }

      result = OUTLINED_FUNCTION_9_5(*v8, v7, 3);
      if (!v0)
      {
        return OUTLINED_FUNCTION_15();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(v0);
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
    if (v13)
    {
      OUTLINED_FUNCTION_35(v14);
      v18 = v6 && v16 == v17;
      if (v18 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v13)
  {
LABEL_26:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_5_14();
    v21 = sub_1C88E15B8(v19, v20, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_159(v21) & 1;
  }

  return 0;
}

uint64_t sub_1C88E1E10(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C88E15B8(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88E1EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88E15B8(&qword_1EC2B9260, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88E1F6C(uint64_t a1)
{
  v2 = sub_1C88E15B8(&qword_1EC2B91F0, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88E1FDC(uint64_t a1, uint64_t a2)
{
  sub_1C88E15B8(&qword_1EC2B91F0, type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier, &protocol conformance descriptor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier);

  return sub_1C8BD4CFC();
}

void sub_1C88E22C4(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v2 <= 0x3F)
    {
      sub_1C88E2360(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C88E2360(uint64_t a1)
{
  if (!qword_1EC2B9248)
  {
    type metadata accessor for Siri_Nlu_External_CdmPlanner_CDMPlannerRequestIdentifier(255);
    v1 = sub_1C8BD522C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC2B9248);
    }
  }
}

void sub_1C88E23E0(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Siri_Nlu_Internal_TokenChain.stringValue.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 24)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C88E24CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_TokenChain.stringValue.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_TokenChain.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_TokenChain(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_TokenChain.stringValue.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_5_15(v1) + 24);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87E9980;
}

Swift::Void __swiftcall Siri_Nlu_Internal_TokenChain.clearStringValue()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_TokenChain(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_1C88E2638(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_TokenChain.locale.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_TokenChain.locale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_TokenChain(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_TokenChain.locale.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_5_15(v1) + 28);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_TokenChain.clearLocale()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_TokenChain(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_TokenChain.tokens.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_TokenChain.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_TokenChain(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_TokenChain.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_TokenChain(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C88E2930()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4B48);
  __swift_project_value_buffer(v0, qword_1EC2B4B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "string_value";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locale";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "tokens";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_TokenChain._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4B48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_TokenChain.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  v7 = (v3 + *(v6 + 24));
  v8 = v7[1];
  if (!v8 || (result = OUTLINED_FUNCTION_19_5(*v7, v8, 1), (v5 = v4) == 0))
  {
    v10 = (v3 + *(v6 + 28));
    v11 = v10[1];
    if (!v11 || (result = OUTLINED_FUNCTION_19_5(*v10, v11, 2), (v5 = v4) == 0))
    {
      if (!*(*v3 + 16))
      {
        return sub_1C8BD49DC();
      }

      type metadata accessor for Siri_Nlu_Internal_Token(0);
      sub_1C879B1F0(&qword_1EC2B4BE0, type metadata accessor for Siri_Nlu_Internal_Token, &protocol conformance descriptor for Siri_Nlu_Internal_Token);
      result = sub_1C8BD4E0C();
      if (!v5)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_1();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v6 = *v4 == *v5 && v2 == v3;
    if (!v6 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v11 = *v9 == *v10 && v7 == v8;
    if (!v11 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  sub_1C87D85EC();
  if (v12)
  {
    sub_1C8BD49FC();
    sub_1C879B1F0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C8BD517C() & 1;
  }

  return 0;
}

uint64_t Siri_Nlu_Internal_TokenChain.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  sub_1C879B1F0(&qword_1EC2B9270, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88E2F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C879B1F0(&qword_1EC2B9280, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88E2F88(uint64_t a1)
{
  v2 = sub_1C879B1F0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88E2FF8(uint64_t a1, uint64_t a2)
{
  sub_1C879B1F0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);

  return sub_1C8BD4CFC();
}

void sub_1C88E3198(uint64_t a1)
{
  sub_1C88E3234(319);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C87E8A54();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C88E3234(uint64_t a1)
{
  if (!qword_1EC2B2F68)
  {
    type metadata accessor for Siri_Nlu_Internal_Token(255);
    v1 = sub_1C8BD521C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC2B2F68);
    }
  }
}

BOOL sub_1C88E328C(int a1, uint64_t a2)
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

uint64_t sub_1C88E32B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32 = a3;
  v33 = a2;
  v4 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UsoEdge(0);
  sub_1C87AB9AC(a1 + *(v13 + 28), v9, &qword_1EC2B61B0, &qword_1C8BE6E40);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = &v12[v10[5]];
    *v14 = 0;
    v14[4] = 1;
    v15 = &v12[v10[6]];
    *v15 = 0;
    v15[4] = 1;
    v16 = v10[7];
    v17 = type metadata accessor for Siri_Nlu_External_UsoLabel(0);
    __swift_storeEnumTagSinglePayload(&v12[v16], 1, 1, v17);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_1C8778ED8(v9, &qword_1EC2B61B0, &qword_1C8BE6E40);
    }
  }

  else
  {
    sub_1C88E3658(v9, v12, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  }

  v18 = &v12[v10[5]];
  v19 = *v18;
  v20 = v18[4];
  sub_1C87A8B84(v12, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  v22 = sub_1C88E328C(v21, v33);
  result = 0;
  if (v22)
  {
    v24 = *v32;
    v25 = (a1 + *(v13 + 20));
    if (*(v25 + 4))
    {
      v26 = 0;
    }

    else
    {
      v26 = *v25;
    }

    if (v26 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C88E35F4(v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, v6);
      v27 = &v6[*(v4 + 24)];
      v28 = *v27;
      v29 = v27[4];
      sub_1C87A8B84(v6, type metadata accessor for Siri_Nlu_External_UsoNode);
      return (v28 == 1303) & ~v29;
    }
  }

  return result;
}

uint64_t sub_1C88E35F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C88E3658(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_21();
  (*(v5 + 32))(a2, a1);
  return a2;
}

BOOL sub_1C88E36B8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1C88E3754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CC208();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.primitive.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
LABEL_6:
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
    v9 = OUTLINED_FUNCTION_369_0(v8);
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v9);
    return OUTLINED_FUNCTION_260_1(v10);
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_44_9();
  OUTLINED_FUNCTION_5_0();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.primitive.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
  OUTLINED_FUNCTION_44_9();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.primitive.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_8;
    }

    sub_1C88E3C58();
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  v16 = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_262_2(v16, v17, v18, v19);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88E3B64()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6170, &unk_1C8BE6E10);
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_352_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6170, &unk_1C8BE6E10);
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t sub_1C88E3C58()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.custom.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_193_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_433();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(0);
  return OUTLINED_FUNCTION_979(v9);
}

uint64_t sub_1C88E3D98()
{
  OUTLINED_FUNCTION_1152();
  v2 = OUTLINED_FUNCTION_1085();
  v4 = v3(v2);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_253();
  sub_1C88E4144();
  return v0(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.custom.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
  OUTLINED_FUNCTION_193_3();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C88E3EC4()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_121_0();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.custom.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
LABEL_7:
    OUTLINED_FUNCTION_568();
    OUTLINED_FUNCTION_795();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_193_3();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88E4044()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6170, &unk_1C8BE6E10);
    OUTLINED_FUNCTION_193_3();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6170, &unk_1C8BE6E10);
    OUTLINED_FUNCTION_193_3();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t sub_1C88E4144()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_121_0();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_810();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(0);
  v6 = OUTLINED_FUNCTION_80(v5);
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(v7);
  OUTLINED_FUNCTION_229_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_206_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6168, &qword_1C8BE6E08);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_112_0();
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_377();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88E4144();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_44_9();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_258();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.== infix(_:_:)();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_100();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_248_3();
      sub_1C88E3C58();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_352_0();
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_446();
  sub_1C88E4144();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_16:
    sub_1C88E3C58();
    sub_1C8778ED8(v0, &qword_1EC2B6168, &qword_1C8BE6E08);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_193_3();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_647();
  v14 = v14 && v12 == v13;
  if (v14 || (sub_1C8BD529C() & 1) != 0)
  {
    v15 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
    if (v15 || (sub_1C8BD529C() & 1) != 0)
    {
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v18 = sub_1C8776818(v16, v17, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_1006(v18);
    }
  }

  OUTLINED_FUNCTION_866();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_248_3();
  sub_1C88E3C58();
LABEL_19:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6160, &qword_1C8BE6E00);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_350_0();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B6160, &qword_1C8BE6E00);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.noneP.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
  }

  else
  {
    OUTLINED_FUNCTION_220();
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = OUTLINED_FUNCTION_128_3();
      v21(v20);
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  v18 = OUTLINED_FUNCTION_290_1();
  v19(v18);
LABEL_7:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88E4A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v8 = OUTLINED_FUNCTION_333();
  v9(v8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_60_1();
  v11 = OUTLINED_FUNCTION_184();
  v12(v11);
  return a6(v6);
}

uint64_t sub_1C88E4AD8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1C8778ED8(v5, a2, a3);
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_307();
  v8(v7);
  v9 = a4(0);
  OUTLINED_FUNCTION_92_0();
  swift_storeEnumTagMultiPayload();
  v10 = OUTLINED_FUNCTION_297_0();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.BOOL.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C88E4CF4(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = (*a1)[5];
  v7 = (*a1)[6];
  v9 = (*a1)[3];
  v8 = (*a1)[4];
  v10 = (*a1)[2];
  v28 = (*a1)[1];
  v11 = **a1;
  if (a2)
  {
    v12 = OUTLINED_FUNCTION_92_0();
    v13(v12);
    OUTLINED_FUNCTION_730();
    sub_1C8778ED8(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_262_0();
    v18(v17);
    OUTLINED_FUNCTION_1029();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v7);
    (*(v9 + 8))(v6, v10);
  }

  else
  {
    OUTLINED_FUNCTION_730();
    sub_1C8778ED8(v22, v23, v24);
    (*(v9 + 32))(v11, v6, v10);
    OUTLINED_FUNCTION_1029();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v7);
  }

  free(v6);
  free(v8);
  free(v28);

  free(v5);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.int.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.number.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.decimal.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.string.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.date.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.dateComponents.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.url.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.dictionary.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.attributedString.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.measurement.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    OUTLINED_FUNCTION_990();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_800();
LABEL_8:
  OUTLINED_FUNCTION_1079(v8);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.measurement.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    OUTLINED_FUNCTION_990();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1147();
LABEL_8:
  *v0 = v12;
  *(v0 + 8) = v13;
  return OUTLINED_FUNCTION_687();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.currencyAmount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.paymentMethod.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.placemark.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.person.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.file.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 16)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.app.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.searchableItem.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6158, &unk_1C8BFA970);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 18)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88E6EF8()
{
  v0 = OUTLINED_FUNCTION_782();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_130_1();

  return v3(v2);
}

uint64_t sub_1C88E6F7C()
{
  v0 = OUTLINED_FUNCTION_241();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_121_0();
  v2 = OUTLINED_FUNCTION_167_1();

  return v3(v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_13_1();
  v189 = v7;
  v190 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_452_0(v10, v11, v12, v13, v14, v15, v16, v17, v167);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_96();
  v35 = OUTLINED_FUNCTION_63_0(v34);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(v35);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_432();
  v39 = MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_451_0(v39, v40, v41, v42, v43, v44, v45, v46, v168);
  v48 = MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_454(v48, v49, v50, v51, v52, v53, v54, v55, v169);
  v57 = MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_397_0(v57, v58, v59, v60, v61, v62, v63, v64, v170);
  v66 = MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_396(v66, v67, v68, v69, v70, v71, v72, v73, v171);
  v75 = MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_395_0(v75, v76, v77, v78, v79, v80, v81, v82, v172);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_561();
  v85 = MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_394_0(v85, v86, v87, v88, v89, v90, v91, v92, v173);
  v94 = MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_393_0(v94, v95, v96, v97, v98, v99, v100, v101, v174);
  v103 = MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_398_0(v103, v104, v105, v106, v107, v108, v109, v110, v175);
  v112 = MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_453_0(v112, v113, v114, v115, v116, v117, v118, v119, v176);
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_123();
  v178 = v121;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_437();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_436_0();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_734();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_372();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_576();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_234_0();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA78, &unk_1C8BFA980);
  OUTLINED_FUNCTION_80(v128);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_525();
  sub_1C88E4144();
  sub_1C88E4144();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_756();
        v143 = OUTLINED_FUNCTION_221();
        v144(v143);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v145, v146, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_752();
        OUTLINED_FUNCTION_121();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_121();
        sub_1C8BD51EC();
        v147 = *(v190 + 8);
        v148 = OUTLINED_FUNCTION_260_0();
        v147(v148);
        OUTLINED_FUNCTION_720();
        (v147)(v3, v189);
        goto LABEL_40;
      }

      v4 = v3;
      goto LABEL_45;
    case 2u:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_756();
        OUTLINED_FUNCTION_889();
        OUTLINED_FUNCTION_626();
        v130();
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v131, v132, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_752();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v133 = *(v190 + 8);
        v134 = OUTLINED_FUNCTION_258();
        v133(v134);
        OUTLINED_FUNCTION_720();
        v135 = OUTLINED_FUNCTION_253();
        (v133)(v135, v136);
        goto LABEL_40;
      }

      v4 = v2;
      goto LABEL_45;
    case 3u:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        OUTLINED_FUNCTION_756();
        v137 = OUTLINED_FUNCTION_118();
        v138(v137);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v139, v140, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_752();
        OUTLINED_FUNCTION_121();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_121();
        sub_1C8BD51EC();
        v141 = *(v190 + 8);
        v142 = OUTLINED_FUNCTION_97();
        v141(v142);
        OUTLINED_FUNCTION_720();
        (v141)(v5, v189);
        goto LABEL_40;
      }

      v4 = v5;
      goto LABEL_45;
    case 4u:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 5u:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_611();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v149 = OUTLINED_FUNCTION_259();
        v150(v149);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v151, v152, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_168_0();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_168_0();
        sub_1C8BD51EC();
        v153 = *(v190 + 8);
        v154 = OUTLINED_FUNCTION_258();
        v153(v154);
        OUTLINED_FUNCTION_720();
        (v153)(v0, v189);
        goto LABEL_40;
      }

      v4 = v0;
      goto LABEL_45;
    case 6u:
      OUTLINED_FUNCTION_15_9();
      v4 = v178;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 7u:
      OUTLINED_FUNCTION_15_9();
      v4 = v179;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 8u:
      OUTLINED_FUNCTION_15_9();
      v4 = v180;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 9u:
      OUTLINED_FUNCTION_15_9();
      v4 = v181;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 0xAu:
      OUTLINED_FUNCTION_15_9();
      v4 = v182;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 0xBu:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_46;
      }

      sub_1C87E4678(*v177, *(v177 + 8), *v0);
      goto LABEL_40;
    case 0xCu:
      OUTLINED_FUNCTION_15_9();
      v4 = v183;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 0xDu:
      OUTLINED_FUNCTION_15_9();
      v4 = v184;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 0xEu:
      OUTLINED_FUNCTION_15_9();
      v4 = v185;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 0xFu:
      OUTLINED_FUNCTION_15_9();
      v4 = v186;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 0x10u:
      OUTLINED_FUNCTION_15_9();
      v4 = v187;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 0x11u:
      OUTLINED_FUNCTION_15_9();
      v4 = v188;
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    case 0x12u:
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_1145();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_45;
      }

LABEL_39:
      OUTLINED_FUNCTION_444_0();
      v155 = OUTLINED_FUNCTION_118();
      v156(v155);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v157, v158, MEMORY[0x1E69AA8F0]);
      OUTLINED_FUNCTION_752();
      OUTLINED_FUNCTION_121();
      sub_1C8BD51EC();
      OUTLINED_FUNCTION_121();
      sub_1C8BD51EC();
      v159 = v1[1];
      v160 = OUTLINED_FUNCTION_97();
      v159(v160);
      OUTLINED_FUNCTION_720();
      (v159)(v4, v189);
      goto LABEL_40;
    default:
      OUTLINED_FUNCTION_15_9();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload())
      {
        v4 = v1;
LABEL_45:
        (*(v190 + 8))(v4, v189);
LABEL_46:
        sub_1C8778ED8(v6, &qword_1EC2BAA78, &unk_1C8BFA980);
      }

      else
      {
        OUTLINED_FUNCTION_889();
        OUTLINED_FUNCTION_626();
        v161();
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v162, v163, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_752();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v164 = *(v190 + 8);
        v165 = OUTLINED_FUNCTION_258();
        v164(v165);
        OUTLINED_FUNCTION_720();
        v166 = OUTLINED_FUNCTION_220();
        v164(v166);
LABEL_40:
        OUTLINED_FUNCTION_350_0();
        sub_1C88E3C58();
      }

      OUTLINED_FUNCTION_82_0();
      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t sub_1C88E7C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CBFBC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88E7D34()
{
  OUTLINED_FUNCTION_785();
  v1(0);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v0(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.unknown.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  }

  else
  {
    OUTLINED_FUNCTION_220();
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = OUTLINED_FUNCTION_128_3();
      v21(v20);
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  v18 = OUTLINED_FUNCTION_290_1();
  v19(v18);
LABEL_7:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.mailAccount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.mailAddressee.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.mailMessage.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C88E85F0()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 4)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.mailbox.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.intentMessage.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.messageGroup.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.messageParticipants.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.uniqueEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.intentUpdatableEntity.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_182_1();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v9 = OUTLINED_FUNCTION_402_0();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(v9);
  return OUTLINED_FUNCTION_260_1(v10);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.intentUpdatableEntity.setter()
{
  sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.intentUpdatableEntity.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    v15 = sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    OUTLINED_FUNCTION_569(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    v15 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88E92EC()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_182_1();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_182_1();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.urlRepresentable.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.visualSearch.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.visualSearchOcr.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.assistantSchema.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_181_1();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  v9 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.assistantSchema.setter()
{
  sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.assistantSchema.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
    v16 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88E9CA8()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_181_1();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_181_1();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.updatableEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.persistentFileIdentifiable.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_180_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v9 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(v9);
  return OUTLINED_FUNCTION_260_1(v10);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.persistentFileIdentifiable.setter()
{
  sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.persistentFileIdentifiable.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &unk_1EC2B60E8, &qword_1C8BE6D98);
LABEL_7:
    OUTLINED_FUNCTION_779(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88EA254()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_180_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &unk_1EC2B60E8, &qword_1C8BE6D98);
    OUTLINED_FUNCTION_180_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v26;
  a20 = v27;
  v246 = v29;
  v247 = v28;
  v30 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(0);
  v31 = OUTLINED_FUNCTION_265_2(v30, &v248);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_0();
  v234 = v32;
  v33 = OUTLINED_FUNCTION_86();
  v34 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(v33);
  v35 = OUTLINED_FUNCTION_80(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_0();
  v232 = v36;
  v37 = OUTLINED_FUNCTION_86();
  v38 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(v37);
  v39 = OUTLINED_FUNCTION_265_2(v38, &v249);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_0();
  v233 = v40;
  OUTLINED_FUNCTION_86();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_13_1();
  v244 = v41;
  v245 = v42;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_10_0();
  v231 = v43;
  OUTLINED_FUNCTION_83_0();
  v45 = MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_452_0(v45, v46, v47, v48, v49, v50, v51, v52, v230[0]);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_96();
  v65 = OUTLINED_FUNCTION_63_0(v64);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(v65);
  OUTLINED_FUNCTION_229_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_10_0();
  v243 = v67;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_432();
  v70 = MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_395_0(v70, v71, v72, v73, v74, v75, v76, v77, v230[0]);
  v79 = MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_454(v79, v80, v81, v82, v83, v84, v85, v86, v230[0]);
  v88 = MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_397_0(v88, v89, v90, v91, v92, v93, v94, v95, v230[0]);
  v97 = MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_396(v97, v98, v99, v100, v101, v102, v103, v104, v230[0]);
  v106 = MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_451_0(v106, v107, v108, v109, v110, v111, v112, v113, v230[0]);
  v115 = MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_394_0(v115, v116, v117, v118, v119, v120, v121, v122, v230[0]);
  v124 = MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_393_0(v124, v125, v126, v127, v128, v129, v130, v131, v230[0]);
  v133 = MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_398_0(v133, v134, v135, v136, v137, v138, v139, v140, v230[0]);
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_408();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_437();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_538();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_372();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_537();
  MEMORY[0x1EEE9AC00](v146);
  v148 = v230 - v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA80, &qword_1C8BFA990);
  OUTLINED_FUNCTION_80(v149);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_278_1();
  v152 = *(v151 + 56);
  sub_1C88E4144();
  v247 = v152;
  sub_1C88E4144();
  OUTLINED_FUNCTION_216();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() == 1)
      {
        v200 = v244;
        v199 = v245;
        OUTLINED_FUNCTION_542();
        v201 = OUTLINED_FUNCTION_1024();
        v202(v201);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v203, v204, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_524_0();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_913();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v205 = *(v199 + 8);
        v206 = OUTLINED_FUNCTION_666();
        v205(v206);
        OUTLINED_FUNCTION_560();
        (v205)(v24, v200);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_988();
      v154 = v24;
      goto LABEL_46;
    case 2u:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() == 2)
      {
        v170 = v245;
        OUTLINED_FUNCTION_154_1();
        v171 = OUTLINED_FUNCTION_1024();
        v172(v171);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v173, v174, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_524_0();
        OUTLINED_FUNCTION_221();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_913();
        OUTLINED_FUNCTION_221();
        sub_1C8BD51EC();
        v175 = *(v170 + 8);
        v176 = OUTLINED_FUNCTION_516();
        v175(v176);
        OUTLINED_FUNCTION_560();
        v177 = OUTLINED_FUNCTION_268();
        v175(v177);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_988();
      v154 = v23;
      goto LABEL_46;
    case 3u:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() == 3)
      {
        v183 = v245;
        OUTLINED_FUNCTION_154_1();
        v184 = OUTLINED_FUNCTION_1024();
        v185(v184);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v186, v187, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_752();
        OUTLINED_FUNCTION_221();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_913();
        OUTLINED_FUNCTION_221();
        sub_1C8BD51EC();
        v188 = *(v183 + 8);
        v189 = OUTLINED_FUNCTION_516();
        v188(v189);
        OUTLINED_FUNCTION_560();
        v190 = OUTLINED_FUNCTION_156_1();
        v188(v190);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_988();
      v154 = v22;
      goto LABEL_46;
    case 4u:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v160 = v244;
        v159 = v245;
        OUTLINED_FUNCTION_154_1();
        v161 = OUTLINED_FUNCTION_1024();
        v162(v161);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v163, v164, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_100();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_913();
        OUTLINED_FUNCTION_100();
        sub_1C8BD51EC();
        v165 = *(v159 + 8);
        v166 = OUTLINED_FUNCTION_516();
        v165(v166);
        OUTLINED_FUNCTION_560();
        (v165)(v20, v160);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_988();
      v154 = v20;
      goto LABEL_46;
    case 5u:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() == 5)
      {
        v208 = v244;
        v207 = v245;
        OUTLINED_FUNCTION_542();
        v209 = OUTLINED_FUNCTION_889();
        v210(v209);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v211, v212, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_524_0();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v213 = *(v207 + 8);
        v214 = OUTLINED_FUNCTION_258();
        v213(v214);
        OUTLINED_FUNCTION_560();
        (v213)(v25, v208);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_988();
      v154 = v25;
      goto LABEL_46;
    case 6u:
      OUTLINED_FUNCTION_20_8();
      v155 = v235;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 6)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_530_0();
      v158 = &a14;
      goto LABEL_41;
    case 7u:
      OUTLINED_FUNCTION_20_8();
      v155 = v236;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 7)
      {
        goto LABEL_45;
      }

      v191 = v245;
      OUTLINED_FUNCTION_542();
      v192(v230[10]);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v193, v194, MEMORY[0x1E69AA8F0]);
      OUTLINED_FUNCTION_524_0();
      OUTLINED_FUNCTION_221();
      sub_1C8BD51EC();
      OUTLINED_FUNCTION_221();
      sub_1C8BD51EC();
      v195 = *(v191 + 8);
      v196 = OUTLINED_FUNCTION_299_0();
      v195(v196);
      OUTLINED_FUNCTION_560();
      v197 = OUTLINED_FUNCTION_80_1();
      (v195)(v197, v198);
      goto LABEL_43;
    case 8u:
      OUTLINED_FUNCTION_20_8();
      v155 = v237;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 8)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_530_0();
      v158 = &a16;
      goto LABEL_41;
    case 9u:
      OUTLINED_FUNCTION_20_8();
      v167 = v241;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 9)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_182_1();
      v168 = v233;
      sub_1C88E3EC4();
      v169 = *v167 == *v168 && v167[1] == v168[1];
      if (v169 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 0xAu:
      OUTLINED_FUNCTION_20_8();
      v155 = v238;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 10)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_530_0();
      v158 = &a17;
      goto LABEL_41;
    case 0xBu:
      OUTLINED_FUNCTION_20_8();
      v155 = v239;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 11)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_530_0();
      v158 = &a18;
LABEL_41:
      v157 = *(v158 - 32);
      goto LABEL_42;
    case 0xCu:
      OUTLINED_FUNCTION_20_8();
      v155 = v240;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 12)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_530_0();
      v157 = v230[14];
      goto LABEL_42;
    case 0xDu:
      OUTLINED_FUNCTION_20_8();
      OUTLINED_FUNCTION_1074();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 13)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_181_1();
      sub_1C88E3EC4();
      v215 = OUTLINED_FUNCTION_184();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema.== infix(_:_:)(v215, v216);
      sub_1C88E3C58();
      OUTLINED_FUNCTION_121();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_73_6();
      goto LABEL_44;
    case 0xEu:
      OUTLINED_FUNCTION_20_8();
      v155 = v242;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 14)
      {
LABEL_45:
        OUTLINED_FUNCTION_988();
        v154 = v155;
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_530_0();
      v157 = v231;
LABEL_42:
      v217 = v244;
      v156(v157);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v218, v219, MEMORY[0x1E69AA8F0]);
      OUTLINED_FUNCTION_524_0();
      OUTLINED_FUNCTION_118();
      sub_1C8BD51EC();
      OUTLINED_FUNCTION_912();
      OUTLINED_FUNCTION_118();
      sub_1C8BD51EC();
      v220 = *(v23 + 1);
      v221 = OUTLINED_FUNCTION_258();
      v220(v221);
      OUTLINED_FUNCTION_560();
      (v220)(v155, v217);
      goto LABEL_43;
    case 0xFu:
      OUTLINED_FUNCTION_20_8();
      OUTLINED_FUNCTION_1140();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745() != 15)
      {
LABEL_56:
        sub_1C88E3C58();
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_180_2();
      sub_1C88E3EC4();
      v178 = OUTLINED_FUNCTION_1023();
      if (sub_1C87D2814(v178, v179))
      {
LABEL_23:
        OUTLINED_FUNCTION_119_1();
        OUTLINED_FUNCTION_953();
        OUTLINED_FUNCTION_1_14();
        v182 = sub_1C8776818(v180, v181, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_701(v182);
      }

LABEL_24:
      sub_1C88E3C58();
      OUTLINED_FUNCTION_221();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_73_6();
      sub_1C88E3C58();
      break;
    default:
      OUTLINED_FUNCTION_20_8();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_745())
      {
        OUTLINED_FUNCTION_988();
        v154 = v148;
LABEL_46:
        v153(v154, v244);
LABEL_47:
        sub_1C8778ED8(v21, &qword_1EC2BAA80, &qword_1C8BFA990);
      }

      else
      {
        v223 = v244;
        v222 = v245;
        OUTLINED_FUNCTION_542();
        v224 = OUTLINED_FUNCTION_889();
        v225(v224);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v226, v227, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_524_0();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v228 = *(v222 + 8);
        v229 = OUTLINED_FUNCTION_258();
        v228(v229);
        OUTLINED_FUNCTION_560();
        (v228)(v148, v223);
LABEL_43:
        OUTLINED_FUNCTION_73_6();
LABEL_44:
        sub_1C88E3C58();
      }

      break;
  }

  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema.identifier.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(v14);
  OUTLINED_FUNCTION_368(*(v15 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1020(v17);
    v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAA88, &qword_1C8BFA998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.primitive.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
LABEL_6:
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
    v9 = OUTLINED_FUNCTION_369_0(v8);
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v9);
    return OUTLINED_FUNCTION_260_1(v10);
  }

  OUTLINED_FUNCTION_92_0();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_44_9();
  OUTLINED_FUNCTION_5_0();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.primitive.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  OUTLINED_FUNCTION_44_9();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.primitive.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  v16 = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_262_2(v16, v17, v18, v19);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C88EB838()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_352_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_44_9();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.entity.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_179_1();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_1110(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v13 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.entity.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.init()(uint64_t a1)
{
  OUTLINED_FUNCTION_1110(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v5 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.entity.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
LABEL_7:
    v17 = MEMORY[0x1E69E7CC0];
    *v10 = MEMORY[0x1E69E7CC0];
    v10[1] = v17;
    v10[2] = v17;
    v10[3] = v17;
    v10[4] = v17;
    v10[5] = v17;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
    v22 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88EBC7C()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_179_1();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_179_1();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.enumeration.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_122_2();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_5_8(v6);
  if (v7)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_175_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v10 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v10;
  OUTLINED_FUNCTION_908();
  v0[4] = v11;
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(0);
  OUTLINED_FUNCTION_1116(v12);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v17 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.enumeration.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  OUTLINED_FUNCTION_175_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.init()@<X0>(void *a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v3;
  OUTLINED_FUNCTION_908();
  a2[4] = v4;
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(0);
  OUTLINED_FUNCTION_1116(v5);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v10 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.enumeration.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
LABEL_7:
    v17 = MEMORY[0x1E69E7CC0];
    *v10 = MEMORY[0x1E69E7CC0];
    *(v10 + 8) = v17;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    *(v10 + 32) = v17;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
    v22 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_175_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88EC0FC()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_175_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_175_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.query.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_174_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(0);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v13);
  v14 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.query.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.query.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_886();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v20);
    v21 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88EC4F8()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_174_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6058, &qword_1C8BE6D08);
    OUTLINED_FUNCTION_174_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_987(v1, v2);
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(v3);
  v5 = OUTLINED_FUNCTION_80(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v7 = OUTLINED_FUNCTION_507_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v7);
  v9 = OUTLINED_FUNCTION_80(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v11 = OUTLINED_FUNCTION_546(v10);
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v11);
  v13 = OUTLINED_FUNCTION_80(v12);
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_36_4();
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v14);
  v16 = OUTLINED_FUNCTION_80(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_51_1();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_557();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_408();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_575();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_920();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAA98, &qword_1C8BFA9B0);
  OUTLINED_FUNCTION_80(v21);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_112_0();
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_193();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_305_0();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1162() != 1)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_179_1();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_251_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.== infix(_:_:)();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_92_0();
      goto LABEL_14;
    case 2u:
      OUTLINED_FUNCTION_305_0();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1162() == 2)
      {
        OUTLINED_FUNCTION_175_2();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_1075();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.== infix(_:_:)();
        sub_1C88E3C58();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_993();
      goto LABEL_12;
    case 3u:
      OUTLINED_FUNCTION_305_0();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1162() == 3)
      {
        OUTLINED_FUNCTION_174_2();
        sub_1C88E3EC4();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.== infix(_:_:)();
        sub_1C88E3C58();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_764();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_305_0();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1162())
      {
        OUTLINED_FUNCTION_352_0();
LABEL_12:
        sub_1C88E3C58();
        sub_1C8778ED8(v0, &unk_1EC2BAA98, &qword_1C8BFA9B0);
      }

      else
      {
        OUTLINED_FUNCTION_44_9();
        sub_1C88E3EC4();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.== infix(_:_:)();
        sub_1C88E3C58();
LABEL_14:
        sub_1C88E3C58();
        OUTLINED_FUNCTION_506();
        sub_1C88E3C58();
      }

      OUTLINED_FUNCTION_125();
      return;
  }
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_1149();
  v43 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_7(v7, v39);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_81_3(v10, v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAA8, &qword_1C8BFA9C0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = OUTLINED_FUNCTION_47_5(v12, v41);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v13);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_211_3();
  v15 = OUTLINED_FUNCTION_220();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAAB8, &qword_1C8BFA9D0);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v20);
  OUTLINED_FUNCTION_1139();
  OUTLINED_FUNCTION_935();
  OUTLINED_FUNCTION_935();
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      goto LABEL_12;
    }

LABEL_9:
    v22 = &unk_1EC2BAAB8;
    v23 = &qword_1C8BFA9D0;
    v24 = v2;
LABEL_10:
    sub_1C8778ED8(v24, v22, v23);
LABEL_29:
    v38 = 0;
    goto LABEL_30;
  }

  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v21)
  {
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_1161();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
  OUTLINED_FUNCTION_809();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_12();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  if ((v0 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  OUTLINED_FUNCTION_1023();
  sub_1C87D9274();
  if ((v25 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_1C87D964C();
  if ((v26 & 1) == 0)
  {
    goto LABEL_29;
  }

  v27 = *(v42 + 48);
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  v28 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_124_1(v28, v29);
  if (v21)
  {
    OUTLINED_FUNCTION_24(v44 + v27);
    if (v21)
    {
      sub_1C8778ED8(v44, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_945();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v44 + v27);
  if (v30)
  {
    OUTLINED_FUNCTION_98_1();
    sub_1C88E3C58();
LABEL_22:
    v22 = &qword_1EC2BAAA8;
    v23 = &qword_1C8BFA9C0;
    v24 = v44;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_1051();
  v31 = OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.== infix(_:_:)(v31);
  OUTLINED_FUNCTION_462();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_300();
  sub_1C88E3C58();
  sub_1C8778ED8(v44, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
  if ((v43 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_24:
  sub_1C87D9370();
  if ((v32 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_1C87D99C8();
  if ((v33 & 1) == 0)
  {
    goto LABEL_29;
  }

  if ((sub_1C87D9D44(*(v45 + 32), *(v4 + 32)) & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_1C87D9DD0();
  if ((v34 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v37 = sub_1C8776818(v35, v36, MEMORY[0x1E69AAC10]);
  v38 = OUTLINED_FUNCTION_701(v37);
LABEL_30:
  OUTLINED_FUNCTION_157(v38);
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_1149();
  v41 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_7(v6, v37);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81_3(v9, v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAA8, &qword_1C8BFA9C0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v39);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_211_3();
  v15 = OUTLINED_FUNCTION_251_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_552();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAAB8, &qword_1C8BFA9D0);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v20);
  OUTLINED_FUNCTION_1139();
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v1);
  if (v21)
  {
    OUTLINED_FUNCTION_24(v1 + v0);
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      goto LABEL_12;
    }

LABEL_9:
    v22 = &unk_1EC2BAAB8;
    v23 = &qword_1C8BFA9D0;
    v24 = v1;
LABEL_10:
    sub_1C8778ED8(v24, v22, v23);
LABEL_27:
    v36 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_1075();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v1 + v0);
  if (v21)
  {
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_1161();
  OUTLINED_FUNCTION_895();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
  OUTLINED_FUNCTION_461();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_82_3();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  OUTLINED_FUNCTION_1023();
  sub_1C87D8E4C();
  if ((v25 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1C87D964C();
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

  v27 = *(v40 + 48);
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  v28 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_124_1(v28, v29);
  if (v21)
  {
    OUTLINED_FUNCTION_24(v42 + v27);
    if (v21)
    {
      sub_1C8778ED8(v42, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_945();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v42 + v27);
  if (v30)
  {
    OUTLINED_FUNCTION_98_1();
    sub_1C88E3C58();
LABEL_22:
    v22 = &qword_1EC2BAAA8;
    v23 = &qword_1C8BFA9C0;
    v24 = v42;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_1051();
  v31 = OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.== infix(_:_:)(v31);
  OUTLINED_FUNCTION_462();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_300();
  sub_1C88E3C58();
  sub_1C8778ED8(v42, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
  if ((v41 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (!sub_1C87E4678(*(v43 + 16), *(v43 + 24), *(v3 + 16)))
  {
    goto LABEL_27;
  }

  sub_1C87D99C8();
  if ((v32 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v35 = sub_1C8776818(v33, v34, MEMORY[0x1E69AAC10]);
  v36 = OUTLINED_FUNCTION_701(v35);
LABEL_28:
  OUTLINED_FUNCTION_157(v36);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.identifier.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v5);
  OUTLINED_FUNCTION_439();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_107_1(v8);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.identifier.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v1);
  sub_1C8778ED8(v0 + *(v2 + 44), &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.identifier.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 44));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v7);
  OUTLINED_FUNCTION_439();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_670();
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1032();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(dword_1EC2BAABC);
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v1);
  sub_1C8778ED8(v0 + *(v2 + 48), &dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.init()(void *a1@<X8>)
{
  OUTLINED_FUNCTION_132(a1);
  v2 = OUTLINED_FUNCTION_1137(MEMORY[0x1E69E7CC0]);
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v2);
  OUTLINED_FUNCTION_811(v3);
  OUTLINED_FUNCTION_18_2(*(v1 + 28));
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.displayRepresentation.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v15);
  OUTLINED_FUNCTION_360_0(*(v16 + 48));
  OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1018(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_26(*(v1 + 28));
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88EDD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CBEC0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void sub_1C88EDDE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property.id.setter(v1, v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property.id.modify()
{
  v1 = OUTLINED_FUNCTION_813();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_570(v2);
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(v3);
  OUTLINED_FUNCTION_571(v4);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v5 = *(v0 + 24);
  v2[6] = *(v0 + 16);
  v2[7] = v5;

  return OUTLINED_FUNCTION_12();
}

void sub_1C88EDF38(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property.displayName.setter(v1, v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property.displayName.modify()
{
  v1 = OUTLINED_FUNCTION_813();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_570(v2);
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(v3);
  OUTLINED_FUNCTION_571(v4);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v5 = *(v0 + 40);
  v2[6] = *(v0 + 32);
  v2[7] = v5;

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property.type.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(v7);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B54E8 != -1)
    {
      OUTLINED_FUNCTION_47_7(&qword_1EC2B54E8);
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property.type.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C894A014(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_554();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property.type.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_129_2(v13);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(v14);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B54E8 != -1)
    {
      OUTLINED_FUNCTION_47_7(&qword_1EC2B54E8);
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property.hasType.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property.clearType()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C894A014(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t sub_1C88EE5D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_696();
  v7 = v6;
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v8 = *(v4(0) + 20);
  if (*v3 != -1)
  {
    OUTLINED_FUNCTION_184();
    swift_once();
  }

  *(v7 + v8) = *a3;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.identifier.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v5);
  OUTLINED_FUNCTION_439();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_107_1(v8);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.identifier.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v1);
  sub_1C8778ED8(v0 + *(v2 + 36), &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.identifier.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 36));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v7);
  OUTLINED_FUNCTION_439();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_670();
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1032();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(dword_1EC2BAABC);
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.displayRepresentation.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v15);
  OUTLINED_FUNCTION_360_0(*(v16 + 40));
  OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1018(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_26(*(v1 + 28));
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88EEBAC()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_98_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88EEDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CBF14();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_10_12();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_132(a1);
  v1 = OUTLINED_FUNCTION_1137(MEMORY[0x1E69E7CC0]);
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v1);
  OUTLINED_FUNCTION_811(v2);
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(0);
  OUTLINED_FUNCTION_447(v3);
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(0);
  OUTLINED_FUNCTION_447(v4);
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_447(v5);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(0);
  v6 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case.displayRepresentation.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case(v15);
  OUTLINED_FUNCTION_312_0(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_12_15();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88EF158()
{
  OUTLINED_FUNCTION_785();
  OUTLINED_FUNCTION_739();
  v2 = v1(0);
  OUTLINED_FUNCTION_1039(v2);
  v3 = OUTLINED_FUNCTION_886();
  v0(v3);
  v4 = OUTLINED_FUNCTION_257_2();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.identifier.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(v5);
  OUTLINED_FUNCTION_439();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_107_1(v8);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.identifier.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.identifier.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C88EF434()
{
  OUTLINED_FUNCTION_382_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v1(v6);
  OUTLINED_FUNCTION_70_2();
  sub_1C89CBE2C();
  v7 = v0(0);
  OUTLINED_FUNCTION_48_2(v7);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88EF4F8()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.templates.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAAC0, &qword_1C8BFA9D8);
  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  OUTLINED_FUNCTION_811(v3);
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(0);
  OUTLINED_FUNCTION_447(v4);
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(0);
  OUTLINED_FUNCTION_447(v5);
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(0);
  OUTLINED_FUNCTION_447(v6);
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(0);
  OUTLINED_FUNCTION_447(v7);
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(0);
  OUTLINED_FUNCTION_447(v8);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(0);
  v9 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.templates.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(v15);
  OUTLINED_FUNCTION_312_0(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    v18 = MEMORY[0x1E69E7CC0];
    *v11 = MEMORY[0x1E69E7CC0];
    v11[1] = v18;
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(0);
    v20 = OUTLINED_FUNCTION_201_2(v19);
    v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(v20);
    v22 = OUTLINED_FUNCTION_202_2(v21);
    v23 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(v22);
    v24 = OUTLINED_FUNCTION_200_3(v23);
    v25 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(v24);
    OUTLINED_FUNCTION_417(v25);
    v26 = OUTLINED_FUNCTION_1071();
    v27 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(v26);
    OUTLINED_FUNCTION_417(v27);
    valid = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(0);
    OUTLINED_FUNCTION_5_12(valid);
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAC0, &qword_1C8BFA9D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_5();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C88EF7E8()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAC0, &qword_1C8BFA9D8);
    OUTLINED_FUNCTION_56_5();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_242_2();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAC0, &qword_1C8BFA9D8);
    OUTLINED_FUNCTION_56_5();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t sub_1C88EF8F8()
{
  OUTLINED_FUNCTION_382_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v7 = v1(v6);
  OUTLINED_FUNCTION_329_0(v7);
  OUTLINED_FUNCTION_70_2();
  sub_1C89CBE2C();
  v8 = v0(0);
  OUTLINED_FUNCTION_48_2(v8);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88EF9B8()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.stringSearch.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v5);
  OUTLINED_FUNCTION_439();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAD8, &qword_1C8BFA9F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_96_3();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.stringSearch.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2BAAD8, &qword_1C8BFA9F8);
  OUTLINED_FUNCTION_96_3();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.stringSearch.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAD8, &qword_1C8BFA9F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_96_3();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88EFC9C()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAD8, &qword_1C8BFA9F8);
    OUTLINED_FUNCTION_96_3();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_499();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAD8, &qword_1C8BFA9F8);
    OUTLINED_FUNCTION_96_3();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.idSearch.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v5);
  OUTLINED_FUNCTION_439();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAE0, &qword_1C8BFAA00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95_3();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.idSearch.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2BAAE0, &qword_1C8BFAA00);
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.idSearch.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 32));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAE0, &qword_1C8BFAA00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95_3();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88F0024()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAE0, &qword_1C8BFAA00);
    OUTLINED_FUNCTION_95_3();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_498_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAE0, &qword_1C8BFAA00);
    OUTLINED_FUNCTION_95_3();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.all.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v5);
  OUTLINED_FUNCTION_439();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAE8, &qword_1C8BFAA08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_6();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.all.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v1);
  sub_1C8778ED8(v0 + *(v2 + 36), &qword_1EC2BAAE8, &qword_1C8BFAA08);
  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.all.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 36));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAE8, &qword_1C8BFAA08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_6();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88F03AC()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAE8, &qword_1C8BFAA08);
    OUTLINED_FUNCTION_50_6();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_332_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAE8, &qword_1C8BFAA08);
    OUTLINED_FUNCTION_50_6();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t sub_1C88F04BC()
{
  OUTLINED_FUNCTION_382_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v1(v6);
  OUTLINED_FUNCTION_70_2();
  sub_1C89CBE2C();
  v7 = v0(0);
  OUTLINED_FUNCTION_48_2(v7);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88F0580()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.suggested.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v5);
  OUTLINED_FUNCTION_439();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAF0, &qword_1C8BFAA10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_6();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.suggested.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &qword_1EC2BAAF0, &qword_1C8BFAA10);
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.suggested.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 40));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAF0, &qword_1C8BFAA10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_6();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88F0824()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAF0, &qword_1C8BFAA10);
    OUTLINED_FUNCTION_49_6();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_497();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAF0, &qword_1C8BFAA10);
    OUTLINED_FUNCTION_49_6();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t sub_1C88F0934()
{
  OUTLINED_FUNCTION_382_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v1(v6);
  OUTLINED_FUNCTION_70_2();
  sub_1C89CBE2C();
  v7 = v0(0);
  OUTLINED_FUNCTION_48_2(v7);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88F09F8()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.searchableItem.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v5);
  OUTLINED_FUNCTION_439();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAF8, &qword_1C8BFAA18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.searchableItem.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v1);
  sub_1C8778ED8(v0 + *(v2 + 44), &qword_1EC2BAAF8, &qword_1C8BFAA18);
  OUTLINED_FUNCTION_94_4();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.searchableItem.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 44));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAF8, &qword_1C8BFAA18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88F0CB4()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAF8, &qword_1C8BFAA18);
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_496_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAF8, &qword_1C8BFAA18);
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t sub_1C88F0DC4()
{
  OUTLINED_FUNCTION_382_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v1(v6);
  OUTLINED_FUNCTION_70_2();
  sub_1C89CBE2C();
  v7 = v0(0);
  OUTLINED_FUNCTION_48_2(v7);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88F0E88()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.valid.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v5);
  OUTLINED_FUNCTION_439();
  valid = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(0);
  OUTLINED_FUNCTION_46_2(valid);
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAB00, &unk_1C8BFAA20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.valid.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v1);
  sub_1C8778ED8(v0 + *(v2 + 48), &qword_1EC2BAB00, &unk_1C8BFAA20);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.valid.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  valid = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(v8);
  OUTLINED_FUNCTION_47_3(valid);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 48));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAB00, &unk_1C8BFAA20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88F112C()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAB00, &unk_1C8BFAA20);
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_331_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAB00, &unk_1C8BFAA20);
    OUTLINED_FUNCTION_48_7();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t sub_1C88F123C()
{
  OUTLINED_FUNCTION_382_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v1(v6);
  OUTLINED_FUNCTION_70_2();
  sub_1C89CBE2C();
  v7 = v0(0);
  OUTLINED_FUNCTION_48_2(v7);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88F1300()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C88F1380()
{
  v0 = OUTLINED_FUNCTION_782();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_130_1();

  return v3(v2);
}

uint64_t sub_1C88F1404()
{
  v0 = OUTLINED_FUNCTION_241();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_121_0();
  v2 = OUTLINED_FUNCTION_167_1();

  return v3(v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.typedValueKind.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v0);
  if ((OUTLINED_FUNCTION_436(v1) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_264_1(v2);
  }

  OUTLINED_FUNCTION_540();
  swift_beginAccess();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.typedValueKind.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_813();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_1135(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_926(v9);
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v10);
  OUTLINED_FUNCTION_571(v11);
  OUTLINED_FUNCTION_1015();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_1088();
  OUTLINED_FUNCTION_260();
}

void sub_1C88F168C(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_1134();
    OUTLINED_FUNCTION_271();
    OUTLINED_FUNCTION_382();
    sub_1C89CBE2C();
    Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.typedValueKind.setter();
    v5 = OUTLINED_FUNCTION_220();
    sub_1C8778ED8(v5, v6, &unk_1C8BE6D70);
  }

  else
  {
    if ((OUTLINED_FUNCTION_1014() & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_905();
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue._StorageClass(v7);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      OUTLINED_FUNCTION_55_6();
      sub_1C89681C4();
      OUTLINED_FUNCTION_1153(v8);
    }

    v3 = v4[7];
    v2 = v4[8];
    OUTLINED_FUNCTION_23();
    swift_beginAccess();
    OUTLINED_FUNCTION_1165();
    swift_endAccess();
  }

  free(v2);
  free(v3);

  free(v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.primitive.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v5);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60C0, &unk_1C8BE6D70);
LABEL_6:
    v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
    v10 = OUTLINED_FUNCTION_369_0(v9);
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue(v10);
    return OUTLINED_FUNCTION_260_1(v11);
  }

  OUTLINED_FUNCTION_184();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_121();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.primitive.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.primitive.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_376(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_714(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_375_0(v12);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v13);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_330_0();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  v17 = OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_262_2(v17, v18, v19, v20);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

void sub_1C88F1B5C()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_97();
    sub_1C88E4144();
    v2(v3);
    OUTLINED_FUNCTION_299_0();
    sub_1C88E3C58();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.enumeration.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v5);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_329_1();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
  }

  v10 = OUTLINED_FUNCTION_402_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(v10);
  OUTLINED_FUNCTION_702(v11);
  v12 = OUTLINED_FUNCTION_524();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v12);
  v14 = OUTLINED_FUNCTION_404(v13);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v14);
  v15 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.enumeration.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_329_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.enumeration.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_376(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_714(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_375_0(v12);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v13);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    v16 = sub_1C8778ED8(v0, &qword_1EC2B60C0, &unk_1C8BE6D70);
LABEL_7:
    OUTLINED_FUNCTION_891(v16);
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_412_0();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_254_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_24_9();
    v16 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_329_1();
  OUTLINED_FUNCTION_253();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.entity.getter()
{
  OUTLINED_FUNCTION_261();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_268();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_552();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_1015();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_72(v1);
  if (v8)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60C0, &unk_1C8BE6D70);
LABEL_7:
    OUTLINED_FUNCTION_670();
    *(v3 + 16) = sub_1C8BD513C();
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(0);
    OUTLINED_FUNCTION_811(v10);
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    OUTLINED_FUNCTION_412_0();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    *(v3 + *(v0 + 36)) = xmmword_1C8BFA8E0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_328_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.entity.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_328_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

double Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.init()@<D0>(uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_402_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v4);
  *(a2 + 16) = sub_1C8BD513C();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(0);
  OUTLINED_FUNCTION_811(v5);
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_412_0();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  result = 0.0;
  *(a2 + *(v2 + 36)) = xmmword_1C8BFA8E0;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.entity.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_654(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v2[4] = v7;
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(0);
  OUTLINED_FUNCTION_40_2();
  v9 = *(v8 + 64);
  v2[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v2[6] = v10;
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_607();
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_70_4(v11);
  if (v12)
  {
    sub_1C8778ED8(v7, &qword_1EC2B60C0, &unk_1C8BE6D70);
LABEL_7:
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = sub_1C8BD513C();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_412_0();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    *(v10 + *(v0 + 36)) = xmmword_1C8BFA8E0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_254_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_328_1();
  OUTLINED_FUNCTION_268();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_1088();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.collection.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v5);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_327_1();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
  }

  v10 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue(v10);
  OUTLINED_FUNCTION_702(v11);
  v12 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.collection.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_327_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.collection.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_376(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_375_0(v13);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v14);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_70_4(v15);
  if (v16)
  {
    v17 = sub_1C8778ED8(v0, &qword_1EC2B60C0, &unk_1C8BE6D70);
LABEL_7:
    *v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1043(v17);
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_254_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_24_9();
    v17 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_327_1();
  OUTLINED_FUNCTION_253();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.query.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v7);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_326_0();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v12 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(0) + 20);
  if (qword_1EC2B5488 != -1)
  {
    OUTLINED_FUNCTION_904(&qword_1EC2B5488);
  }

  *(a1 + v12) = qword_1EC2B9948;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.query.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.query.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_376(v8);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v9);
  OUTLINED_FUNCTION_40_2();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_714(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_375_0(v14);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v15);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_70_4(v16);
  if (v17)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_326_0();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v19 = *(v0 + 20);
  if (qword_1EC2B5488 != -1)
  {
    OUTLINED_FUNCTION_904(&qword_1EC2B5488);
  }

  *(v11 + v19) = qword_1EC2B9948;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.entityIdentifier.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v5);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_325_0();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
  }

  v10 = OUTLINED_FUNCTION_402_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(v10);
  OUTLINED_FUNCTION_702(v11);
  v12 = OUTLINED_FUNCTION_524();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v12);
  v14 = OUTLINED_FUNCTION_404(v13);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v14);
  v15 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.entityIdentifier.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C88F2F78()
{
  OUTLINED_FUNCTION_785();
  OUTLINED_FUNCTION_739();
  v2 = v1(0);
  OUTLINED_FUNCTION_1039(v2);
  v3 = OUTLINED_FUNCTION_1013();
  v0(v3);
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_412_0();
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.entityIdentifier.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_376(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_714(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_375_0(v12);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v13);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    v16 = sub_1C8778ED8(v0, &qword_1EC2B60C0, &unk_1C8BE6D70);
LABEL_7:
    OUTLINED_FUNCTION_891(v16);
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_412_0();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_254_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    OUTLINED_FUNCTION_24_9();
    v16 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_253();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.deferred.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v7);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_324_1();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v12 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(0) + 20);
  if (qword_1EC2B54B0 != -1)
  {
    OUTLINED_FUNCTION_903(&qword_1EC2B54B0);
  }

  *(a1 + v12) = qword_1EC2B99A0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.deferred.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_324_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.deferred.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_376(v8);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v9);
  OUTLINED_FUNCTION_40_2();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_714(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_375_0(v14);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v15);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_70_4(v16);
  if (v17)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_324_1();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v19 = *(v0 + 20);
  if (qword_1EC2B54B0 != -1)
  {
    OUTLINED_FUNCTION_903(&qword_1EC2B54B0);
  }

  *(v11 + v19) = qword_1EC2B99A0;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_987(v3, v4);
  v50 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_115_3(v7, v48);
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(0);
  v9 = OUTLINED_FUNCTION_80(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v10 = OUTLINED_FUNCTION_86();
  Value = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v12 = OUTLINED_FUNCTION_86();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue(v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  v15 = OUTLINED_FUNCTION_86();
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v15);
  v17 = OUTLINED_FUNCTION_80(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  v18 = OUTLINED_FUNCTION_86();
  v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(v18);
  v20 = OUTLINED_FUNCTION_80(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_0();
  v21 = OUTLINED_FUNCTION_86();
  v22 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue(v21);
  v23 = OUTLINED_FUNCTION_80(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_51_1();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  OUTLINED_FUNCTION_48_5();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_10_0();
  v52 = v25;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_576();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_123();
  v51 = v28;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_436_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_557();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_575();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1057();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB10, &qword_1C8BFAA30);
  OUTLINED_FUNCTION_80(v33);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_112_0();
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_312();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_79_2();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1093() != 1)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_329_1();
      sub_1C88E3EC4();
      v40 = OUTLINED_FUNCTION_251_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue.== infix(_:_:)(v40, v41);
      sub_1C88E3C58();
      OUTLINED_FUNCTION_307();
      goto LABEL_28;
    case 2u:
      OUTLINED_FUNCTION_79_2();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1093() == 2)
      {
        OUTLINED_FUNCTION_328_1();
        OUTLINED_FUNCTION_1132();
        sub_1C88E3EC4();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.== infix(_:_:)();
        sub_1C88E3C58();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_764();
      goto LABEL_26;
    case 3u:
      OUTLINED_FUNCTION_79_2();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1093() != 3)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_327_1();
      sub_1C88E3EC4();
      v38 = OUTLINED_FUNCTION_246();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue.== infix(_:_:)(v38, v39);
      sub_1C88E3C58();
      goto LABEL_28;
    case 4u:
      OUTLINED_FUNCTION_79_2();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1093() != 4)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_326_0();
      OUTLINED_FUNCTION_945();
      sub_1C88E3EC4();
      if (*(v51 + *(Value + 20)) == *(v2 + *(Value + 20)))
      {
        goto LABEL_19;
      }

      v35 = OUTLINED_FUNCTION_307();
      v37 = sub_1C8963E20(v35, v36);

      if (v37)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    case 5u:
      OUTLINED_FUNCTION_79_2();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1093() == 5)
      {
        OUTLINED_FUNCTION_325_0();
        sub_1C88E3EC4();
        v42 = OUTLINED_FUNCTION_97();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue.== infix(_:_:)(v42, v43);
        sub_1C88E3C58();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_169();
      goto LABEL_26;
    case 6u:
      OUTLINED_FUNCTION_79_2();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1093() != 6)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_324_1();
      OUTLINED_FUNCTION_1131();
      sub_1C88E3EC4();
      if (*(v52 + *(v50 + 20)) == *(v2 + *(v50 + 20)) || (, , v44 = OUTLINED_FUNCTION_92_0(), sub_1C896600C(v44, v45), OUTLINED_FUNCTION_985(), , , (v1 & 1) != 0))
      {
LABEL_19:
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v46, v47, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_666();
        sub_1C8BD517C();
      }

LABEL_20:
      sub_1C88E3C58();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_24_9();
      sub_1C88E3C58();
      goto LABEL_29;
    default:
      OUTLINED_FUNCTION_79_2();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1093())
      {
        OUTLINED_FUNCTION_993();
LABEL_26:
        sub_1C88E3C58();
        sub_1C8778ED8(v0, &qword_1EC2BAB10, &qword_1C8BFAA30);
      }

      else
      {
        OUTLINED_FUNCTION_330_0();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_223_1();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.== infix(_:_:)();
        sub_1C88E3C58();
LABEL_28:
        sub_1C88E3C58();
        OUTLINED_FUNCTION_24_9();
        sub_1C88E3C58();
      }

LABEL_29:
      OUTLINED_FUNCTION_1069();
      OUTLINED_FUNCTION_125();
      return;
  }
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_1149();
  v63 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_7(v6, v59);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81_3(v9, v60);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D0, &qword_1C8BE6D80);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_294_0(v11, v61);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v12);
  OUTLINED_FUNCTION_48_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_211_3();
  v14 = OUTLINED_FUNCTION_221();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_552();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAAB8, &qword_1C8BFA9D0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_210();
  v65 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v20);
  v21 = *(v18 + 56);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72(v1);
  if (v22)
  {
    OUTLINED_FUNCTION_72(v1 + v21);
    if (v22)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      goto LABEL_14;
    }

LABEL_9:
    v23 = &unk_1EC2BAAB8;
    v24 = &qword_1C8BFA9D0;
    v25 = v1;
LABEL_10:
    sub_1C8778ED8(v25, v23, v24);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1075();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72(v1 + v21);
  if (v22)
  {
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_16();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_895();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
  OUTLINED_FUNCTION_461();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_82_3();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  if ((&qword_1C8BFA9C8 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v27 = *v0 == *v3 && v0[1] == v3[1];
  if (!v27 && (sub_1C8BD529C() & 1) == 0 || (sub_1C89CA60C(v0[2], v3[2]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v28 = *(v62 + 48);
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  v29 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_124_1(v29, v30);
  if (!v22)
  {
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_24(v64 + v28);
    if (!v31)
    {
      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_1051();
      OUTLINED_FUNCTION_184();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.== infix(_:_:)();
      OUTLINED_FUNCTION_460();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3C58();
      sub_1C8778ED8(v64, &qword_1EC2B60C8, &qword_1C8BFA9F0);
      if ((v63 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_54_5();
    sub_1C88E3C58();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_24(v64 + v28);
  if (!v22)
  {
LABEL_28:
    v23 = &qword_1EC2B60D0;
    v24 = &qword_1C8BE6D80;
    v25 = v64;
    goto LABEL_10;
  }

  sub_1C8778ED8(v64, &qword_1EC2B60C8, &qword_1C8BFA9F0);
LABEL_30:
  v32 = *(v65 + 36);
  v33 = *(v3 + v32 + 8);
  if (*(v0 + v32 + 8) >> 60 == 15)
  {
    if (v33 >> 60 == 15)
    {
      v34 = OUTLINED_FUNCTION_184();
      sub_1C87A8FA8(v34, v35);
      v36 = OUTLINED_FUNCTION_258();
      sub_1C87A8FA8(v36, v37);
      v38 = OUTLINED_FUNCTION_184();
      sub_1C87A9A24(v38, v39);
LABEL_36:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v57, v58, MEMORY[0x1E69AAC10]);
      v26 = sub_1C8BD517C();
      goto LABEL_12;
    }

    goto LABEL_34;
  }

  if (v33 >> 60 == 15)
  {
LABEL_34:
    v40 = OUTLINED_FUNCTION_184();
    sub_1C87A8FA8(v40, v41);
    v42 = OUTLINED_FUNCTION_258();
    sub_1C87A8FA8(v42, v43);
    v44 = OUTLINED_FUNCTION_184();
    sub_1C87A9A24(v44, v45);
    v46 = OUTLINED_FUNCTION_258();
    sub_1C87A9A24(v46, v47);
    goto LABEL_11;
  }

  v48 = OUTLINED_FUNCTION_184();
  sub_1C87A8FA8(v48, v49);
  v50 = OUTLINED_FUNCTION_258();
  sub_1C87A8FA8(v50, v51);
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_638();
  v52 = MEMORY[0x1CCA7D0F0]();
  v53 = OUTLINED_FUNCTION_258();
  sub_1C87A9A24(v53, v54);
  v55 = OUTLINED_FUNCTION_184();
  sub_1C87A9A24(v55, v56);
  if (v52)
  {
    goto LABEL_36;
  }

LABEL_11:
  v26 = 0;
LABEL_12:
  OUTLINED_FUNCTION_157(v26);
  OUTLINED_FUNCTION_125();
}

void sub_1C88F44D4()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_1085();
  v39 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_7(v6, v35);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81_3(v9, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D0, &qword_1C8BE6D80);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v37);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_211_3();
  v14 = OUTLINED_FUNCTION_218();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_552();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAAB8, &qword_1C8BFA9D0);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_210();
  v3(v19);
  v20 = *(v0 + 56);
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_73(v1);
  if (v21)
  {
    OUTLINED_FUNCTION_73(v1 + v20);
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &unk_1EC2BAAB8;
    v23 = &qword_1C8BFA9D0;
    v24 = v1;
LABEL_25:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_1075();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_73(v1 + v20);
  if (v21)
  {
    sub_1C88E3C58();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1161();
  OUTLINED_FUNCTION_895();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
  OUTLINED_FUNCTION_461();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_82_3();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  if ((&qword_1EC2BAAB0 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  OUTLINED_FUNCTION_1130();
  if (v21)
  {
    v27 = v25 == v26;
  }

  else
  {
    v27 = 0;
  }

  if (!v27 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_26;
  }

  v28 = *(v38 + 48);
  OUTLINED_FUNCTION_786();
  OUTLINED_FUNCTION_778();
  v29 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_124_1(v29, v30);
  if (v21)
  {
    OUTLINED_FUNCTION_24(v40 + v28);
    if (v21)
    {
      sub_1C8778ED8(v40, &qword_1EC2B60C8, &qword_1C8BFA9F0);
LABEL_29:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v33, v34, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_775();
      v32 = sub_1C8BD517C();
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_945();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v40 + v28);
  if (v31)
  {
    sub_1C88E3C58();
LABEL_24:
    v22 = &qword_1EC2B60D0;
    v23 = &qword_1C8BE6D80;
    v24 = v40;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_1019();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.== infix(_:_:)();
  OUTLINED_FUNCTION_460();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_300();
  sub_1C88E3C58();
  sub_1C8778ED8(v40, &qword_1EC2B60C8, &qword_1C8BFA9F0);
  if (v39)
  {
    goto LABEL_29;
  }

LABEL_26:
  v32 = 0;
LABEL_27:
  OUTLINED_FUNCTION_157(v32);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88F4924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v12, v13, MEMORY[0x1E69AAC10]);
  v14 = OUTLINED_FUNCTION_5_0();
  return OUTLINED_FUNCTION_232_1(v14, v15, v16, v17) & 1;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID.typeInstance.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID.typeInstance.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID(v15);
  OUTLINED_FUNCTION_312_0(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B54E8 != -1)
    {
      OUTLINED_FUNCTION_47_7(&qword_1EC2B54E8);
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.noneVariant.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_220();
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = OUTLINED_FUNCTION_128_3();
      v21(v20);
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  v18 = OUTLINED_FUNCTION_290_1();
  v19(v18);
LABEL_7:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.BOOL.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      return *v0;
    }

    sub_1C88E3C58();
  }

  return 0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.BOOL.setter(char a1)
{
  sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
  *v1 = a1;
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.BOOL.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_932();
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 8) = v7;
  OUTLINED_FUNCTION_281_0();
  sub_1C89CBE2C();
  *(v0 + 16) = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_66_6();
  if (v8)
  {
    sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v10 = *v7;
LABEL_8:
  *(v0 + 24) = v10;
  return sub_1C88F5174;
}

void sub_1C88F5174(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 24);
  sub_1C8778ED8(*a1, &qword_1EC2BAB18, &qword_1C8BFAA38);
  *v2 = v3;
  OUTLINED_FUNCTION_196_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_296_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.int.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      return *v0;
    }

    sub_1C88E3C58();
  }

  return 0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.int.setter(uint64_t a1)
{
  sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
  *v1 = a1;
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.int.modify()
{
  OUTLINED_FUNCTION_932();
  *(v2 + 8) = v1;
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[2] = v7;
  OUTLINED_FUNCTION_281_0();
  sub_1C89CBE2C();
  v0[3] = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_66_6();
  if (v8)
  {
    sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v10 = *v7;
LABEL_8:
  *v0 = v10;
  return OUTLINED_FUNCTION_74_0();
}

void sub_1C88F5420(uint64_t *a1)
{
  v1 = a1[2];
  v3 = *a1;
  v2 = a1[1];
  sub_1C8778ED8(v2, &qword_1EC2BAB18, &qword_1C8BFAA38);
  *v2 = v3;
  OUTLINED_FUNCTION_196_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_296_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);

  free(v1);
}

double Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.number.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return *v0;
    }

    sub_1C88E3C58();
  }

  return 0.0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.number.setter(double a1)
{
  sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
  *v1 = a1;
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.number.modify()
{
  OUTLINED_FUNCTION_932();
  *(v2 + 8) = v1;
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[2] = v7;
  OUTLINED_FUNCTION_281_0();
  sub_1C89CBE2C();
  v0[3] = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_66_6();
  if (v8)
  {
    sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v10 = *v7;
LABEL_8:
  *v0 = v10;
  return OUTLINED_FUNCTION_74_0();
}