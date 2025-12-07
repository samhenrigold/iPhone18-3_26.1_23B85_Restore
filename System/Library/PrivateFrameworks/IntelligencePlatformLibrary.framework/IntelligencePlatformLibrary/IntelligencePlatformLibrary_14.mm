void sub_193558660()
{
  OUTLINED_FUNCTION_87_7();
  OUTLINED_FUNCTION_11_1();
  sub_193556990();
  if (!v0)
  {
    v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
    if (*(*(v1 + *(v2 + 20)) + 16))
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C310();
    }

    OUTLINED_FUNCTION_147_3();
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C340();
    }

    if (*(*(v1 + *(v2 + 28)) + 16))
    {
      type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
      OUTLINED_FUNCTION_78_1();
      sub_193451CFC(v4, v5, v6, v7, v8, v9);
    }
  }
}

void sub_19355879C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA0A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v4, xmmword_19394FBC0);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("logOfTimeElapsedInSeconds");
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_16_6(v8, "anonymizedLocationNameId");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_16_6(v10, "anonymizedLocationTypeId");
  v6(v11);
  OUTLINED_FUNCTION_45_2(3 * v3);
  OUTLINED_FUNCTION_34_8(v12);
  v14 = OUTLINED_FUNCTION_0_0(v13, "bucketedDistance");
  v6(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193558920()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_113();
        sub_19393C160();
        break;
      case 2:
      case 3:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_23_22();
        sub_193498018();
        break;
      case 4:
        type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
        OUTLINED_FUNCTION_68_6();
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193558A14()
{
  OUTLINED_FUNCTION_87_7();
  if ((*(v1 + 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_98();
    sub_19393C340();
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_79();
    sub_193556AA4();
    OUTLINED_FUNCTION_79();
    sub_193558B00();
    if ((*(v1 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0) + 28) + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v2, v3, v4, v5, v6, v7);
    }
  }
}

void sub_193558B00()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_87_8(v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_23();
  v11 = v2(0);
  OUTLINED_FUNCTION_150_4(*(v11 + 24));
  OUTLINED_FUNCTION_25_0();
  if (v12)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_1935591F4(v0, v1, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_137_3();
    sub_193559254(v1, type metadata accessor for AIML.UUID);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193558C90()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA0B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("candidateID");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "count");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193558DC4()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
      OUTLINED_FUNCTION_8_2(*(v3 + 20));
      sub_19393C220();
    }

    else if (v1 == 1)
    {
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_23_22();
      sub_193498018();
    }
  }
}

void sub_193558E54()
{
  OUTLINED_FUNCTION_87_7();
  OUTLINED_FUNCTION_11_1();
  sub_193556990();
  if (!v0)
  {
    type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
    OUTLINED_FUNCTION_147_3();
    if ((v1 & 1) == 0)
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C3D0();
    }
  }
}

void sub_193558F24()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA0D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("tupleCandidates");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "count");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193559058()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C220();
    }

    else if (result == 1)
    {
      type metadata accessor for AIML.UUID(0);
      OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_23_22();
      sub_193498238(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

void sub_1935590E0()
{
  OUTLINED_FUNCTION_88_7();
  v4 = *v1;
  v5 = v1[12];
  if (*(*v1 + 16))
  {
    v6 = type metadata accessor for AIML.UUID(0);
    sub_193451CFC(v4, 1, v3, v6, v2, &off_1F07C4010);
  }

  if (!v0 && (v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_11();
    sub_19393C3D0();
  }
}

uint64_t sub_1935591F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193559254(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_72_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AAC28];

  return sub_193558334(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_86_7(uint64_t a1, uint64_t a2)
{

  return sub_19393C310();
}

void OUTLINED_FUNCTION_137_3()
{

  sub_193447600();
}

void OUTLINED_FUNCTION_145_3(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 10;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_150_4@<X0>(uint64_t a1@<X8>)
{

  return sub_1934486F8(v4 + a1, v3, v1, v2);
}

uint64_t IntelligenceFlowJointResolverTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t IntelligenceFlowJointResolverTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowJointResolverTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193559594()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowJointResolverTelemetry.invocation.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 28), &qword_1EAE3CEB0, &qword_193960F60);
}

uint64_t IntelligenceFlowJointResolverTelemetry.invocation.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowJointResolverTelemetry.invocation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrInferenceContext.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(v2) + 32));
  *v0 = v3;

  return sub_193438388(v3);
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrInferenceContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry(0) + 32);
  result = sub_1934354B4(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrInferenceContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19355976C()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrExperimentTriggered.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 36), &qword_1EAE3CEB8, &qword_193961930);
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrExperimentTriggered.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowJointResolverTelemetry.jrExperimentTriggered.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193559884()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowJointResolverTelemetry.eventMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 40), &qword_1EAE3CEC0, &qword_193960F68);
}

uint64_t IntelligenceFlowJointResolverTelemetry.eventMetadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowJointResolverTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 44), &qword_1EAE3B498, &unk_193959120);
}

uint64_t IntelligenceFlowJointResolverTelemetry.timestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowJointResolverTelemetry.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193559A60@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193559A88@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_193559AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193559BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193559CEC@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193559D14@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_193559E08@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowJointResolverTelemetry.JRParameterSubType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193559E30@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static IntelligenceFlowJointResolverTelemetry.JRParameterSubType.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata.rowId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0) + 20);
  sub_19393BE60();
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v11 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  sub_19344E6DC(v0 + v6, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_5_28();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void static IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v2;
  v5 = v4;
  v55 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v52 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v50 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v49 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_74();
  v14 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = OUTLINED_FUNCTION_32_4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_47(v21);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_42_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v23);
  OUTLINED_FUNCTION_3_0();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v49 - v26;
  v28 = *(v25 + 56);
  v54 = v5;
  sub_193448804(v5, &v49 - v26, &qword_1EAE3BCA0, &unk_19395C320);
  v56 = v3;
  sub_193448804(v3, &v27[v28], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v27);
  if (!v29)
  {
    sub_193448804(v27, v0, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v27[v28]);
    if (!v29)
    {
      sub_19355A5F8(&v27[v28], v18);
      OUTLINED_FUNCTION_0_38();
      sub_19355A65C(v33, v34, &protocol conformance descriptor for AIML.UUID);
      sub_19393C550();
      OUTLINED_FUNCTION_4_30();
      sub_193568274();
      sub_193568274();
      sub_19344E6DC(v27, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_1_37();
    sub_193568274();
LABEL_9:
    v30 = &qword_1EAE3BD08;
    v31 = &qword_1939595A0;
    v32 = v27;
LABEL_20:
    sub_19344E6DC(v32, v30, v31);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_31(&v27[v28]);
  if (!v29)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v27, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_11:
  v35 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0) + 20);
  v36 = *(v53 + 48);
  OUTLINED_FUNCTION_22();
  sub_193448804(v37, v38, v39, &qword_19394F9C0);
  sub_193448804(v56 + v35, v1 + v36, &qword_1EAE3AA88, &qword_19394F9C0);
  v40 = v55;
  OUTLINED_FUNCTION_6_3(v1, 1, v55);
  if (!v29)
  {
    v41 = v51;
    sub_193448804(v1, v51, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v1 + v36, 1, v40);
    if (!v42)
    {
      v43 = v52;
      v44 = v1 + v36;
      v45 = v50;
      (*(v52 + 32))(v50, v44, v40);
      OUTLINED_FUNCTION_8_32();
      sub_19355A65C(v46, v47, MEMORY[0x1E69695C8]);
      OUTLINED_FUNCTION_117_9();
      sub_19393C550();
      v48 = *(v43 + 8);
      v48(v45, v40);
      v48(v41, v40);
      sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_21;
    }

    (*(v52 + 8))(v41, v40);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_6_3(v1 + v36, 1, v40);
  if (!v29)
  {
LABEL_19:
    v30 = &qword_1EAE3B4E8;
    v31 = &unk_193952CF0;
    v32 = v1;
    goto LABEL_20;
  }

  sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_21:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_19355A5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19355A65C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v0;
  OUTLINED_FUNCTION_3_4();
  v4 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v31 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_76_0();
  v9 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_125_3();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_47(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  sub_193448804(v3, &v30 - v18, &qword_1EAE3BCA0, &unk_19395C320);
  v20 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v20, v21, v9);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v19, v13);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v23, v24, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  v25 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata(0);
  sub_193448804(v3 + *(v25 + 20), v2, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v2, 1, v4);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v31 + 32))(v1, v2, v4);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_8_32();
    sub_19355A65C(v26, v27, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    v28 = OUTLINED_FUNCTION_175_0();
    v29(v28);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation.init()()
{
  OUTLINED_FUNCTION_8_4();
  sub_19393BE60();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  v5 = OUTLINED_FUNCTION_10_25();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void static IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_165_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_74();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42_0();
  v16 = *(v15 + 56);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v17, v18, v19, v20);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v21, v22, v23, v24);
  OUTLINED_FUNCTION_31(v0);
  if (!v29)
  {
    v25 = OUTLINED_FUNCTION_115_0();
    sub_193448804(v25, v26, v27, v28);
    OUTLINED_FUNCTION_31(v0 + v16);
    if (!v29)
    {
      (*(v4 + 32))(v8, v0 + v16, v2);
      OUTLINED_FUNCTION_8_32();
      sub_19355A65C(v30, v31, MEMORY[0x1E69695C8]);
      OUTLINED_FUNCTION_85_9();
      sub_19393C550();
      v32 = *(v4 + 8);
      v33 = OUTLINED_FUNCTION_13_0();
      v32(v33);
      (v32)(v1, v2);
      sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_10;
    }

    (*(v4 + 8))(v1, v2);
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3B4E8, &unk_193952CF0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v0 + v16);
  if (!v29)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v2 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_25_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_90_10(v0, v1);
  OUTLINED_FUNCTION_6_3(v1, 1, v2);
  if (v13)
  {
    sub_19393CAD0();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_115_0();
    v15(v14);
    sub_19393CAD0();
    OUTLINED_FUNCTION_8_32();
    sub_19355A65C(v16, v17, MEMORY[0x1E69695B8]);
    sub_19393C540();
    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceContext.hashValue.getter()
{
  v2[9] = *v0;
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRInferenceContext.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t sub_19355AEB8(uint64_t a1)
{
  v3[9] = *v1;
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRInferenceContext.hash(into:)(v3);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered.allocation.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered.codepathId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(v1) + 20);
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *v0 = MEMORY[0x1E69E7CC0];
  sub_19344E6DC(v0 + v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_19355B2F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355B350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1935682C8(v13, v10, type metadata accessor for AIML.UUID);
        sub_1935682C8(v14, v7, type metadata accessor for AIML.UUID);
        sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        v16 = sub_19393C550();
        sub_193568274();
        sub_193568274();
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_19355B558(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_19355B5C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(a2 + 32 + 8 * v3);
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    result = v7 == v8;
    if (v7 != v8)
    {
      return result;
    }

    if (v7)
    {
      v9 = v5 == v6;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = (v5 + 32);
      v11 = (v6 + 32);
      while (v7)
      {
        if (*v10 != *v11)
        {
          return 0;
        }

        ++v10;
        ++v11;
        if (!--v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355B674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v33 - v9;
  v38 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
  v11 = MEMORY[0x1EEE9AC00](v38);
  v40 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    return 0;
  }

  if (v16 && a1 != a2)
  {
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v17;
    v19 = a2 + v17;
    v35 = *(v13 + 72);
    v36 = v10;
    v33 = v8;
    v37 = &v33 - v14;
    do
    {
      sub_1935682C8(v18, v15, type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount);
      v20 = v40;
      sub_1935682C8(v19, v40, type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount);
      v21 = *(v39 + 48);
      sub_193448804(v15, v10, &qword_1EAE3BCA0, &unk_19395C320);
      sub_193448804(v20, &v10[v21], &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
      {
        if (__swift_getEnumTagSinglePayload(&v10[v21], 1, v4) != 1)
        {
          sub_193568274();
LABEL_21:
          sub_193568274();
          sub_19344E6DC(v10, &qword_1EAE3BD08, &qword_1939595A0);
          return 0;
        }

        sub_19344E6DC(v10, &qword_1EAE3BCA0, &unk_19395C320);
      }

      else
      {
        sub_193448804(v10, v33, &qword_1EAE3BCA0, &unk_19395C320);
        if (__swift_getEnumTagSinglePayload(&v10[v21], 1, v4) == 1)
        {
          sub_193568274();
          sub_193568274();
          goto LABEL_21;
        }

        sub_19355A5F8(&v10[v21], v34);
        sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        v22 = sub_19393C550();
        sub_193568274();
        sub_193568274();
        sub_19344E6DC(v10, &qword_1EAE3BCA0, &unk_19395C320);
        if ((v22 & 1) == 0)
        {
          sub_193568274();
          sub_193568274();
          return 0;
        }
      }

      v23 = v4;
      v24 = v38;
      v25 = &v37[*(v38 + 20)];
      v26 = *v25;
      v27 = v25[4];
      v15 = v37;
      sub_193568274();
      v28 = (v40 + *(v24 + 20));
      v29 = *v28;
      v30 = *(v28 + 4);
      sub_193568274();
      if (v27)
      {
        if (!v30)
        {
          return 0;
        }
      }

      else
      {
        if (v26 == v29)
        {
          v31 = v30;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          return 0;
        }
      }

      v19 += v35;
      v18 += v35;
      --v16;
      v4 = v23;
      v10 = v36;
    }

    while (v16);
  }

  return 1;
}

uint64_t sub_19355BB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID(0);
  v38 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = a1 + 32;
  v14 = a2 + 32;
  v30 = a1 + 32;
  v31 = v11;
  v29 = a2 + 32;
  while (v12 != v11)
  {
    v15 = (v13 + 16 * v12);
    v16 = *v15;
    v17 = (v14 + 16 * v12);
    v18 = *v17;
    v19 = *(*v15 + 16);
    if (v19 != *(*v17 + 16))
    {
      return 0;
    }

    v20 = *(v15 + 2);
    v21 = *(v15 + 12);
    v22 = *(v17 + 2);
    v23 = *(v17 + 12);
    if (v19 && v16 != v18)
    {
      v32 = v21;
      v33 = v22;
      v34 = v20;
      v35 = v23;
      v24 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v36 = v12;
      v37 = v16 + v24;
      v25 = v18 + v24;

      v26 = 0;
      while (v26 < *(v16 + 16))
      {
        v27 = *(v38 + 72) * v26;
        result = sub_1935682C8(v37 + v27, v10, type metadata accessor for AIML.UUID);
        if (v26 >= *(v18 + 16))
        {
          goto LABEL_27;
        }

        sub_1935682C8(v25 + v27, v7, type metadata accessor for AIML.UUID);
        sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        v28 = sub_19393C550();
        sub_193568274();
        result = sub_193568274();
        if ((v28 & 1) == 0)
        {

          return 0;
        }

        if (v19 == ++v26)
        {

          v13 = v30;
          v11 = v31;
          v12 = v36;
          v14 = v29;
          v20 = v34;
          v23 = v35;
          LOBYTE(v21) = v32;
          v22 = v33;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      break;
    }

LABEL_15:
    if (v21)
    {
      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      if (v20 != v22)
      {
        LOBYTE(v23) = 1;
      }

      if (v23)
      {
        return 0;
      }
    }

    ++v12;
    result = 1;
    if (v12 == v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355BE88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *v3;
      v6 = *i;
      if ((sub_19355B5C8(*(v3 - 1), *(i - 1)) & 1) == 0 || (sub_19355CEBC(v5, v6) & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_19355BF1C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(void), uint64_t), uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || result == a2)
  {
    return 1;
  }

  v6 = result + 40;
  v7 = a2 + 40;
  while (v4)
  {
    v7 += 16;
    v8 = a3(result, a2, a3, a4);
    v9 = v8 == (a3)();
    result = v9;
    v9 = !v9 || v4-- == 1;
    v6 += 16;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355BFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v46 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v60 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  v58 = *(v60 - 8);
  v16 = MEMORY[0x1EEE9AC00](v60);
  v64 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16);
  v62 = &v46 - v19;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = a1 + 32;
  v23 = a2 + 32;
  v52 = v9;
  v63 = v4;
  v24 = v62;
  v48 = v22;
  v49 = v20;
  v47 = a2 + 32;
  while (v21 != v20)
  {
    v25 = *(v22 + 8 * v21);
    v26 = *(v25 + 16);
    v59 = *(v23 + 8 * v21);
    v27 = *(v59 + 16);
    result = v26 == v27;
    if (v26 != v27)
    {
      return result;
    }

    if (v26 && v25 != v59)
    {
      v50 = v26 == v27;
      v51 = v21;
      v28 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v54 = v59 + v28;
      v55 = v25 + v28;

      v29 = 0;
      v53 = v26;
      while (v29 < *(v25 + 16))
      {
        v30 = *(v58 + 72) * v29;
        result = sub_1935682C8(v55 + v30, v24, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow);
        if (v29 >= *(v59 + 16))
        {
          goto LABEL_46;
        }

        v31 = v64;
        sub_1935682C8(v54 + v30, v64, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow);
        v32 = *(v61 + 48);
        sub_193448804(v24, v15, &qword_1EAE3BCA0, &unk_19395C320);
        sub_193448804(v31, &v15[v32], &qword_1EAE3BCA0, &unk_19395C320);
        if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
        {
          if (__swift_getEnumTagSinglePayload(&v15[v32], 1, v4) != 1)
          {
            sub_193568274();
            goto LABEL_37;
          }

          sub_19344E6DC(v15, &qword_1EAE3BCA0, &unk_19395C320);
        }

        else
        {
          sub_193448804(v15, v57, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(&v15[v32], 1, v4) == 1)
          {
            sub_193568274();
            sub_193568274();
LABEL_37:
            sub_193568274();
            v45 = v15;
            goto LABEL_41;
          }

          sub_19355A5F8(&v15[v32], v56);
          sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
          v33 = sub_19393C550();
          v24 = v62;
          v4 = v63;
          sub_193568274();
          sub_193568274();
          sub_19344E6DC(v15, &qword_1EAE3BCA0, &unk_19395C320);
          if ((v33 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        v34 = *(v60 + 20);
        v35 = *(v61 + 48);
        sub_193448804(v24 + v34, v13, &qword_1EAE3BCA0, &unk_19395C320);
        sub_193448804(v64 + v34, &v13[v35], &qword_1EAE3BCA0, &unk_19395C320);
        if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
        {
          if (__swift_getEnumTagSinglePayload(&v13[v35], 1, v4) != 1)
          {
            sub_193568274();
LABEL_40:
            sub_193568274();
            v45 = v13;
LABEL_41:
            sub_19344E6DC(v45, &qword_1EAE3BD08, &qword_1939595A0);
            goto LABEL_42;
          }

          sub_19344E6DC(v13, &qword_1EAE3BCA0, &unk_19395C320);
        }

        else
        {
          sub_193448804(v13, v52, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(&v13[v35], 1, v4) == 1)
          {
            sub_193568274();
            sub_193568274();
            goto LABEL_40;
          }

          sub_19355A5F8(&v13[v35], v56);
          sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
          v36 = sub_19393C550();
          v24 = v62;
          sub_193568274();
          v4 = v63;
          sub_193568274();
          sub_19344E6DC(v13, &qword_1EAE3BCA0, &unk_19395C320);
          if ((v36 & 1) == 0)
          {
LABEL_34:
            sub_193568274();
            sub_193568274();
LABEL_42:

            return 0;
          }
        }

        v37 = v60;
        v38 = v24 + *(v60 + 24);
        v39 = *v38;
        v40 = *(v38 + 4);
        sub_193568274();
        v41 = v64 + *(v37 + 24);
        v42 = *v41;
        v43 = *(v41 + 4);
        result = sub_193568274();
        if (v40)
        {
          if (!v43)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v39 == v42)
          {
            v44 = v43;
          }

          else
          {
            v44 = 1;
          }

          if (v44)
          {
            goto LABEL_42;
          }
        }

        ++v29;
        v24 = v62;
        if (v53 == v29)
        {

          v22 = v48;
          v20 = v49;
          v21 = v51;
          v23 = v47;
          result = v50;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      break;
    }

LABEL_31:
    if (++v21 == v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355C820(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_9_2();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_91();
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(a2 + 32 + 8 * v3);
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    result = v7 == v8;
    if (v7 != v8)
    {
      return result;
    }

    if (v7)
    {
      v9 = v5 == v6;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = (v5 + 32);
      v11 = (v6 + 32);
      while (v7)
      {
        if (*v10 != *v11)
        {
          return OUTLINED_FUNCTION_9_2();
        }

        ++v10;
        ++v11;
        if (!--v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355C8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID(0);
  v44 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v35 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = a1 + 32;
  v14 = a2 + 32;
  v36 = a1 + 32;
  v37 = v11;
  v35 = a2 + 32;
  while (v12 != v11)
  {
    v15 = (v13 + 24 * v12);
    v16 = *v15;
    v17 = (v14 + 24 * v12);
    v18 = *v17;
    v19 = *(*v15 + 16);
    if (v19 != *(*v17 + 16))
    {
      return 0;
    }

    v20 = v15[2];
    v21 = *(v15 + 12);
    v22 = v15[4];
    v23 = *(v15 + 20);
    v24 = v17[2];
    v25 = *(v17 + 12);
    v26 = v17[4];
    v27 = *(v17 + 20);
    if (v19 && v16 != v18)
    {
      v38 = v21;
      v39 = v25;
      v40 = v23;
      v41 = v27;
      v28 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v42 = v12;
      v43 = v16 + v28;
      v29 = v18 + v28;

      v30 = 0;
      while (v30 < *(v16 + 16))
      {
        v31 = *(v44 + 72) * v30;
        result = sub_1935682C8(v43 + v31, v10, type metadata accessor for AIML.UUID);
        if (v30 >= *(v18 + 16))
        {
          goto LABEL_35;
        }

        sub_1935682C8(v29 + v31, v7, type metadata accessor for AIML.UUID);
        sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        v32 = sub_19393C550();
        sub_193568274();
        result = sub_193568274();
        if ((v32 & 1) == 0)
        {

          return 0;
        }

        if (v19 == ++v30)
        {

          v13 = v36;
          v11 = v37;
          v12 = v42;
          v14 = v35;
          LOBYTE(v23) = v40;
          v27 = v41;
          LOBYTE(v21) = v38;
          v25 = v39;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

LABEL_15:
    if (v21)
    {
      if (!v25)
      {
        return 0;
      }
    }

    else
    {
      if (v20 == v24)
      {
        v33 = v25;
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        return 0;
      }
    }

    if (v23)
    {
      if (!v27)
      {
        return 0;
      }
    }

    else
    {
      if (v22 == v26)
      {
        v34 = v27;
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        return 0;
      }
    }

    ++v12;
    result = 1;
    if (v12 == v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355CBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID(0);
  v31 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = a1 + 32;
  v14 = a2 + 32;
  v26 = a1 + 32;
  v27 = v11;
  v25 = a2 + 32;
  while (v12 != v11)
  {
    v15 = *(v13 + 8 * v12);
    v16 = *(v14 + 8 * v12);
    v17 = *(v15 + 16);
    v18 = *(v16 + 16);
    result = v17 == v18;
    if (v17 != v18)
    {
      return result;
    }

    if (v17 && v15 != v16)
    {
      v28 = v17 == v18;
      v19 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v29 = v12;
      v30 = v15 + v19;
      v20 = v16 + v19;

      v21 = 0;
      while (v21 < *(v15 + 16))
      {
        v22 = *(v31 + 72) * v21;
        result = sub_1935682C8(v30 + v22, v10, type metadata accessor for AIML.UUID);
        if (v21 >= *(v16 + 16))
        {
          goto LABEL_22;
        }

        sub_1935682C8(v20 + v22, v7, type metadata accessor for AIML.UUID);
        sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        v23 = sub_19393C550();
        sub_193568274();
        result = sub_193568274();
        if ((v23 & 1) == 0)
        {

          return 0;
        }

        if (v17 == ++v21)
        {

          v13 = v26;
          v11 = v27;
          v12 = v29;
          v14 = v25;
          result = v28;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      break;
    }

LABEL_15:
    if (++v12 == v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355CEBC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_9_2();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_91();
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(a2 + 32 + 8 * v3);
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    result = v7 == v8;
    if (v7 != v8)
    {
      return result;
    }

    if (v7)
    {
      v9 = v5 == v6;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = (v5 + 32);
      v11 = (v6 + 32);
      while (v7)
      {
        if (*v10 != *v11)
        {
          return OUTLINED_FUNCTION_9_2();
        }

        ++v10;
        ++v11;
        if (!--v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355CF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v85 - v9;
  v10 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v99 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v100 = &v85 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v85 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v19 = MEMORY[0x1EEE9AC00](v104);
  v102 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v103 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v85 - v23;
  v25 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v105 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v106 = &v85 - v30;
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
    return 0;
  }

  if (!v31 || a1 == a2)
  {
    return 1;
  }

  v91 = v28;
  v86 = v5;
  v32 = 0;
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = a1 + v33;
  v92 = a2 + v33;
  v93 = v24;
  v35 = *(v29 + 72);
  v97 = v8;
  v94 = v31;
  v95 = v12;
  v88 = a1 + v33;
  v87 = v35;
  while (1)
  {
    v36 = v32;
    v37 = v35 * v32;
    result = sub_1935682C8(v34 + v37, v106, type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory);
    v89 = v36;
    if (v36 == v94)
    {
      goto LABEL_64;
    }

    v39 = v105;
    sub_1935682C8(v92 + v37, v105, type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory);
    v40 = *(v104 + 48);
    sub_193448804(v106, v24, &qword_1EAE3BCA0, &unk_19395C320);
    sub_193448804(v39, &v24[v40], &qword_1EAE3BCA0, &unk_19395C320);
    if (__swift_getEnumTagSinglePayload(v24, 1, v10) == 1)
    {
      if (__swift_getEnumTagSinglePayload(&v24[v40], 1, v10) != 1)
      {
        goto LABEL_62;
      }

      result = sub_19344E6DC(v24, &qword_1EAE3BCA0, &unk_19395C320);
      v41 = v91;
    }

    else
    {
      sub_193448804(v24, v98, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(&v24[v40], 1, v10) == 1)
      {
        sub_193568274();
LABEL_62:
        sub_19344E6DC(v24, &qword_1EAE3BD08, &qword_1939595A0);
        goto LABEL_59;
      }

      sub_19355A5F8(&v24[v40], v12);
      sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
      v42 = sub_19393C550();
      sub_193568274();
      sub_193568274();
      result = sub_19344E6DC(v24, &qword_1EAE3BCA0, &unk_19395C320);
      v41 = v91;
      if ((v42 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v43 = v41[5];
    v44 = *(v106 + v43);
    v45 = *(v105 + v43);
    v46 = *(v44 + 16);
    if (v46 != *(v45 + 16))
    {
      goto LABEL_59;
    }

    if (v46)
    {
      v47 = v44 == v45;
    }

    else
    {
      v47 = 1;
    }

    if (!v47)
    {
      v48 = (v44 + 32);
      v49 = (v45 + 32);
      while (v46)
      {
        if (*v48 != *v49)
        {
          goto LABEL_59;
        }

        ++v48;
        ++v49;
        if (!--v46)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

LABEL_20:
    v50 = v41[6];
    v51 = (v106 + v50);
    v52 = *(v106 + v50 + 4);
    v53 = (v105 + v50);
    v54 = *(v105 + v50 + 4);
    if (v52)
    {
      if (!v54)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (*v51 != *v53)
      {
        LOBYTE(v54) = 1;
      }

      if (v54)
      {
        goto LABEL_59;
      }
    }

    v55 = v41[7];
    v56 = *(v106 + v55);
    v57 = *(v105 + v55);
    v58 = *(v56 + 16);
    if (v58 != *(v57 + 16))
    {
      goto LABEL_59;
    }

    if (v58 && v56 != v57)
    {
      break;
    }

LABEL_53:
    v32 = v89 + 1;
    sub_193568274();
    sub_193568274();
    result = 1;
    v12 = v95;
    v34 = v88;
    v35 = v87;
    if (v32 == v94)
    {
      return result;
    }
  }

  v59 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v60 = v56 + v59;
  v61 = v57 + v59;
  v90 = *(v86 + 72);
  v101 = v4;
  while (1)
  {
    sub_1935682C8(v60, v107, type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext);
    v96 = v60;
    sub_1935682C8(v61, v8, type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext);
    v62 = *(v8 + 4);
    if (*(v107 + 4))
    {
      if (!*(v8 + 4))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*v107 != *v8)
      {
        v62 = 1;
      }

      if (v62)
      {
        goto LABEL_58;
      }
    }

    v63 = *(v4 + 20);
    v64 = v103;
    v65 = *(v104 + 48);
    sub_193448804(v107 + v63, v103, &qword_1EAE3BCA0, &unk_19395C320);
    v66 = v8 + v63;
    v67 = v64;
    sub_193448804(v66, v64 + v65, &qword_1EAE3BCA0, &unk_19395C320);
    if (__swift_getEnumTagSinglePayload(v64, 1, v10) == 1)
    {
      if (__swift_getEnumTagSinglePayload(v64 + v65, 1, v10) != 1)
      {
        goto LABEL_57;
      }

      sub_19344E6DC(v64, &qword_1EAE3BCA0, &unk_19395C320);
      v68 = v101;
    }

    else
    {
      sub_193448804(v64, v100, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v64 + v65, 1, v10) == 1)
      {
        goto LABEL_56;
      }

      sub_19355A5F8(v64 + v65, v95);
      sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
      v69 = sub_19393C550();
      sub_193568274();
      v8 = v97;
      sub_193568274();
      sub_19344E6DC(v64, &qword_1EAE3BCA0, &unk_19395C320);
      v68 = v101;
      v24 = v93;
      if ((v69 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v70 = *(v68 + 24);
    v71 = *(v104 + 48);
    v72 = v102;
    sub_193448804(v107 + v70, v102, &qword_1EAE3BCA0, &unk_19395C320);
    v73 = v8 + v70;
    v67 = v72;
    sub_193448804(v73, v72 + v71, &qword_1EAE3BCA0, &unk_19395C320);
    if (__swift_getEnumTagSinglePayload(v72, 1, v10) != 1)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v72 + v71, 1, v10) != 1)
    {
      goto LABEL_57;
    }

    sub_19344E6DC(v72, &qword_1EAE3BCA0, &unk_19395C320);
    v4 = v101;
LABEL_46:
    v75 = *(v4 + 28);
    v76 = (v107 + v75);
    v77 = *(v107 + v75 + 9);
    v78 = v8 + v75;
    if (v77)
    {
      if ((v78[9] & 1) == 0)
      {
        goto LABEL_58;
      }

      sub_193568274();
      sub_193568274();
    }

    else
    {
      if (v78[9])
      {
        goto LABEL_58;
      }

      v79 = *v76;
      v80 = *(v76 + 8);
      v81 = *v78;
      v82 = v78[8];
      v110 = v79;
      v111 = v80 & 1;
      v108 = v81;
      v109 = v82 & 1;
      v83 = IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
      v84 = IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
      sub_193568274();
      v4 = v101;
      sub_193568274();
      v47 = v83 == v84;
      v8 = v97;
      if (!v47)
      {
        goto LABEL_59;
      }
    }

    v61 += v90;
    v60 = v96 + v90;
    if (!--v58)
    {
      goto LABEL_53;
    }
  }

  sub_193448804(v72, v99, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v72 + v71, 1, v10) != 1)
  {
    sub_19355A5F8(v72 + v71, v95);
    sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
    v74 = sub_19393C550();
    sub_193568274();
    v8 = v97;
    sub_193568274();
    v24 = v93;
    sub_19344E6DC(v72, &qword_1EAE3BCA0, &unk_19395C320);
    v4 = v101;
    if ((v74 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_46;
  }

LABEL_56:
  sub_193568274();
LABEL_57:
  sub_19344E6DC(v67, &qword_1EAE3BD08, &qword_1939595A0);
LABEL_58:
  sub_193568274();
  sub_193568274();
LABEL_59:
  sub_193568274();
  sub_193568274();
  return 0;
}

void sub_19355DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30(0) - 8;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v37 = &a9 - v36;
  v38 = *(v29 + 16);
  if (v38 == *(v27 + 16) && v38 && v29 != v27)
  {
    v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v40 = v29 + v39;
    v41 = v27 + v39;
    v42 = *(v35 + 72);
    do
    {
      sub_1935682C8(v40, v37, v25);
      sub_1935682C8(v41, v34, v25);
      v43 = v23(v37, v34);
      sub_193568274();
      sub_193568274();
      if ((v43 & 1) == 0)
      {
        break;
      }

      v41 += v42;
      v40 += v42;
      --v38;
    }

    while (v38);
  }

  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v3 = v2;
  v4 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v6 = OUTLINED_FUNCTION_25_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_74();
  sub_1935648B0(v3, *v0);
  v10 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
  OUTLINED_FUNCTION_90_10(v0 + *(v10 + 20), v1);
  OUTLINED_FUNCTION_6_3(v1, 1, v4);
  if (v11)
  {
    sub_19393CAD0();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_175_0();
    sub_19355A5F8(v12, v13);
    sub_19393CAD0();
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v14, v15, &protocol conformance descriptor for AIML.UUID);
    sub_19393C540();
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.experimentNamespace.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.experimentId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.treatmentId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.deploymentId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.TrialExperiment.allocationStatus.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 32));
}

void IntelligenceFlowJointResolverTelemetry.TrialExperiment.allocationStatus.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 32));
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.allocationStatus.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.lastUpdatedAtInMs.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.TrialExperiment.compatibilityVersion.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0);
  OUTLINED_FUNCTION_263(*(v1 + 40));
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.compatibilityVersion.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.TrialExperiment.init()()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v1);
  v3 = v2[6];
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v0 + v2[7];
  v9 = v0 + v2[8];
  *v9 = 0;
  *(v9 + 4) = 256;
  v10 = v2[10];
  v11 = v0 + v2[9];
  v12 = v0 + v10;
  *v0 = 0u;
  v0[1] = 0u;
  sub_19344E6DC(v0 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *v8 = 0;
  v8[8] = 1;
  *v9 = 0;
  *(v9 + 4) = 256;
  *v11 = 0;
  v11[8] = 1;
  *v12 = 0;
  v12[4] = 1;
  OUTLINED_FUNCTION_116();
}

void static IntelligenceFlowJointResolverTelemetry.TrialExperiment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_50_0();
  v4 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_220();
  v12 = v1[1];
  v13 = v0[1];
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_28;
    }

    v14 = *v1 == *v0 && v12 == v13;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v13)
  {
    goto LABEL_28;
  }

  v15 = v1[3];
  v16 = v0[3];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = v1[2] == v0[2] && v15 == v16;
    if (!v17 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v16)
  {
    goto LABEL_28;
  }

  v35 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
  v18 = *(v35 + 24);
  v19 = *(v10 + 48);
  sub_193448804(v1 + v18, v3, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v0 + v18, v3 + v19, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v3);
  if (!v14)
  {
    sub_193448804(v3, v9, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v3 + v19);
    if (!v20)
    {
      sub_19355A5F8(v3 + v19, v2);
      OUTLINED_FUNCTION_0_38();
      sub_19355A65C(v21, v22, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_117_9();
      OUTLINED_FUNCTION_22();
      sub_19393C550();
      OUTLINED_FUNCTION_4_30();
      sub_193568274();
      OUTLINED_FUNCTION_165_1();
      sub_193568274();
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v4 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_1_37();
    sub_193568274();
LABEL_27:
    sub_19344E6DC(v3, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_31(v3 + v19);
  if (!v14)
  {
    goto LABEL_27;
  }

  sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_30:
  OUTLINED_FUNCTION_32_2();
  if (v24)
  {
    if (!v23)
    {
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v25)
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_106_9();
  if (v28)
  {
    if ((v27 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v27)
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_48_2(v26);
    v29 = IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.rawValue.getter();
    if (v29 != IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.rawValue.getter())
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_32_2();
  if (v31)
  {
    if (!v30)
    {
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v32)
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_49_2();
  if ((v33 & 1) == 0)
  {
    OUTLINED_FUNCTION_258();
  }

LABEL_28:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowJointResolverTelemetry.TrialExperiment.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v11 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
  sub_193448804(v0 + v11[6], v10, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v10, 1, v2);
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v10, v6);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v13, v14, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  v15 = (v0 + v11[7]);
  if (*(v15 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = *v15;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v16);
  }

  v17 = (v0 + v11[8]);
  if (*(v17 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v18 = *(v17 + 8);
    v19 = *v17;
    OUTLINED_FUNCTION_103_0();
    v23 = v19;
    v24 = v18 & 1;
    v20 = IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.rawValue.getter();
    MEMORY[0x193B18030](v20);
  }

  v21 = (v0 + v11[9]);
  if (*(v21 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v22 = *v21;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v22);
  }

  OUTLINED_FUNCTION_47_1();
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRInferenceFailed.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return OUTLINED_FUNCTION_9_2();
    }

    return OUTLINED_FUNCTION_91();
  }

  if (v3 == 2)
  {
    return OUTLINED_FUNCTION_91();
  }

  return OUTLINED_FUNCTION_9_2();
}

uint64_t _s27IntelligencePlatformLibrary0A28FlowQueryDecorationTelemetryV19QDSubComponentEndedV9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_119();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_19355E9C0(uint64_t a1)
{
  v2 = *v1;
  sub_19393CAB0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.modelInputShapes.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_193564CF8(v2);
}

__n128 IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.modelInputShapes.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_193564D78(*v1);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.modelOutputs.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), sizeof(__dst));
  memcpy(a1, (v1 + 48), 0x50uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE3D250, &qword_193961938);
}

void *IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.modelOutputs.setter(const void *a1)
{
  memcpy(v4, (v1 + 48), sizeof(v4));
  sub_19344E6DC(v4, &qword_1EAE3D250, &qword_193961938);
  return memcpy((v1 + 48), a1, 0x50uLL);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.version.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_193564DF8(v2, v3, v4, v5, v6);
}

__n128 IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.version.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_193564E0C(v1[16], v1[17], v1[18], v1[19], v1[20]);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 9) = v5;
  v1[20] = v3;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.trialDisambiguationRate.setter(uint64_t result)
{
  *(v1 + 168) = result;
  *(v1 + 172) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.trialConfirmationRate.setter(uint64_t result)
{
  *(v1 + 176) = result;
  *(v1 + 180) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.riskProfile.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 184) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.parameterType.setter(uint64_t a1)
{

  *(v1 + 192) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.alreadyPrompted.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.callerComponent.setter(uint64_t a1)
{

  *(v1 + 208) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.candidateHistoryCount.setter(uint64_t a1)
{

  *(v1 + 216) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.tupleHistoryCount.setter(uint64_t a1)
{

  *(v1 + 224) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.candidateRisk.setter(uint64_t a1)
{

  *(v1 + 232) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.searchToolRanks.setter(uint64_t a1)
{

  *(v1 + 240) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.bucketedDistance.setter(uint64_t a1)
{

  *(v1 + 248) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.intervalUntilStartTime.setter(uint64_t a1)
{

  *(v1 + 256) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.parameterSubType.setter(uint64_t a1)
{

  *(v1 + 264) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.signalToNoiseRatio.setter(uint64_t result)
{
  *(v1 + 272) = result;
  *(v1 + 276) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.loudnessLevel.setter(uint64_t result)
{
  *(v1 + 280) = result;
  *(v1 + 284) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.scores.setter(uint64_t a1)
{

  *(v1 + 288) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.jrEntitySimilarityScores.setter(uint64_t a1)
{

  *(v1 + 296) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  v2 = (a1 + 48);
  *(a1 + 160) = 1;
  *(a1 + 184) = 0;
  v3 = OUTLINED_FUNCTION_10_1();
  sub_193564D78(v3);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  memcpy(v6, v2, sizeof(v6));
  sub_19344E6DC(v6, &qword_1EAE3D250, &qword_193961938);
  *v2 = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  sub_193564E0C(*(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160));
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 176) = 0;
  *(a1 + 180) = 1;

  v5 = MEMORY[0x1E69E7CC0];
  *(a1 + 184) = 0;
  *(a1 + 192) = v5;
  *(a1 + 200) = v5;
  *(a1 + 208) = v5;
  *(a1 + 216) = v5;
  *(a1 + 224) = v5;
  *(a1 + 232) = v5;
  *(a1 + 240) = v5;
  *(a1 + 248) = v5;
  *(a1 + 256) = v5;
  *(a1 + 264) = v5;
  *(a1 + 272) = 0;
  *(a1 + 276) = 1;
  *(a1 + 280) = 0;
  *(a1 + 284) = 1;
  *(a1 + 288) = v5;
  *(a1 + 296) = v5;
  return result;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.== infix(_:_:)(float *a1, float *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  v9 = *(a1 + 4);
  v8 = *(a1 + 5);
  memcpy(__dst, a1 + 12, sizeof(__dst));
  v343 = *(a1 + 16);
  v348 = *(a1 + 17);
  v353 = *(a1 + 18);
  v358 = *(a1 + 19);
  v363 = *(a1 + 20);
  v10 = a1[42];
  HIDWORD(v333) = *(a1 + 172);
  v11 = a1[44];
  LODWORD(v333) = *(a1 + 180);
  v323 = *(a1 + 24);
  v328 = *(a1 + 23);
  v313 = *(a1 + 26);
  v318 = *(a1 + 25);
  v303 = *(a1 + 28);
  v308 = *(a1 + 27);
  v293 = *(a1 + 30);
  v298 = *(a1 + 29);
  v283 = *(a1 + 32);
  v288 = *(a1 + 31);
  v278 = *(a1 + 33);
  v12 = a1[68];
  v13 = a1[70];
  LODWORD(v273) = *(a1 + 284);
  HIDWORD(v273) = *(a1 + 276);
  v263 = *(a1 + 37);
  v268 = *(a1 + 36);
  v14 = *a2;
  v15 = *(a2 + 1);
  v16 = *(a2 + 2);
  v393 = *(a2 + 4);
  v398 = *(a2 + 3);
  v388 = *(a2 + 5);
  memcpy(__src, a2 + 12, 0x50uLL);
  v368 = *(a2 + 16);
  v373 = *(a2 + 17);
  v18 = *(a2 + 18);
  v17 = *(a2 + 19);
  v338 = *(a2 + 20);
  v19 = a2[42];
  v20 = *(a2 + 172);
  v21 = a2[44];
  v22 = *(a2 + 180);
  v23 = *(a2 + 23);
  v24 = *(a2 + 24);
  v26 = *(a2 + 25);
  v25 = *(a2 + 26);
  v28 = *(a2 + 27);
  v27 = *(a2 + 28);
  v30 = *(a2 + 29);
  v29 = *(a2 + 30);
  v32 = *(a2 + 31);
  v31 = *(a2 + 32);
  v33 = *(a2 + 33);
  v34 = a2[68];
  v35 = *(a2 + 276);
  v36 = a2[70];
  v37 = *(a2 + 284);
  v39 = *(a2 + 36);
  v38 = *(a2 + 37);
  if (!v4)
  {
    v254 = *(a2 + 9);
    LODWORD(v249) = *(a2 + 172);
    HIDWORD(v249) = *(a2 + 180);
    v214 = *(a2 + 25);
    v219 = *(a2 + 24);
    v159 = *(a2 + 37);
    v164 = *(a2 + 36);
    v244 = *(a2 + 23);
    v204 = *(a2 + 27);
    v209 = *(a2 + 26);
    v194 = *(a2 + 29);
    v199 = *(a2 + 28);
    v184 = *(a2 + 31);
    v189 = *(a2 + 30);
    v174 = *(a2 + 33);
    v179 = *(a2 + 32);
    LODWORD(v169) = *(a2 + 284);
    HIDWORD(v169) = *(a2 + 276);
    sub_193564CF8(0);
    if (!v14)
    {
      sub_193564CF8(0);
      OUTLINED_FUNCTION_18_22();
      sub_193564D78(v46);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_75_10(v14);
LABEL_8:
    OUTLINED_FUNCTION_18_22();
    sub_193564D78(v45);
    sub_193564D78(v14);
    goto LABEL_26;
  }

  v407[0] = v4;
  v407[1] = v5;
  v407[2] = v7;
  v407[3] = v6;
  v407[4] = v9;
  v407[5] = v8;
  v378 = v16;
  v383 = v15;
  if (!v14)
  {
    OUTLINED_FUNCTION_18_22();
    sub_193564CF8(v43);
    OUTLINED_FUNCTION_75_10(0);
    OUTLINED_FUNCTION_18_22();
    sub_193564CF8(v44);

    goto LABEL_8;
  }

  v229 = v8;
  *&v254 = v18;
  *(&v254 + 1) = v17;
  v249 = __PAIR64__(v22, v20);
  v214 = v26;
  v219 = v24;
  v159 = v38;
  v164 = v39;
  v244 = v23;
  v204 = v28;
  v209 = v25;
  v194 = v30;
  v199 = v27;
  v184 = v32;
  v189 = v29;
  v174 = v33;
  v179 = v31;
  v169 = __PAIR64__(v35, v37);
  v406[0] = v14;
  v234 = v14;
  v406[1] = v15;
  v406[2] = v16;
  v406[3] = v398;
  v224 = v4;
  v406[4] = v393;
  v406[5] = v388;
  static IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.== infix(_:_:)();
  HIDWORD(v239) = v40;
  sub_193564CF8(v4);
  sub_193564CF8(v14);
  v41 = OUTLINED_FUNCTION_69_7();
  sub_193564CF8(v41);

  v42 = OUTLINED_FUNCTION_69_7();
  sub_193564D78(v42);
  if ((v239 & 0x100000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  memcpy(v411, __dst, sizeof(v411));
  v47 = __dst[9];
  memcpy(v410, __src, sizeof(v410));
  v48 = __src[9];
  if (!__dst[9])
  {
    v50 = v368;
    v49 = v373;
    if (!__src[9])
    {
      memcpy(v407, __dst, 0x48uLL);
      v407[9] = 0;
      OUTLINED_FUNCTION_79_1(__dst, v406);
      OUTLINED_FUNCTION_79_1(__src, v406);
      OUTLINED_FUNCTION_85_9();
      sub_19344E6DC(v97, v98, v99);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_79_1(__dst, v407);
    OUTLINED_FUNCTION_79_1(__src, v407);
LABEL_17:
    memcpy(v407, v411, 0x48uLL);
    v407[9] = v47;
    memcpy(v408, v410, sizeof(v408));
    v409 = v48;
    sub_19344E6DC(v407, &qword_1EAE3D258, &qword_193961940);
    goto LABEL_26;
  }

  memcpy(v407, __dst, 0x48uLL);
  v407[9] = __dst[9];
  memcpy(v406, v407, 0x50uLL);
  v50 = v368;
  v49 = v373;
  if (!__src[9])
  {
    memcpy(v405, v407, sizeof(v405));
    OUTLINED_FUNCTION_51_9(__dst, v76, v77, v78, v79, v80, v81, v82, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199, v204, v209, v214, v219, v224, v229, v234, v239, v244, v249, v254, *(&v254 + 1), v263, v268, v273, v278, v283, v288, v293, v298, v303, v308, v313, v318, v323, v328, v333, v338, v343, v348, v353, v358, v363, v368, v373, v378, v383, v388, v393, v398, v403[0], v403[1], v403[2], v403[3], v403[4]);
    OUTLINED_FUNCTION_51_9(__src, v83, v84, v85, v86, v87, v88, v89, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v207, v212, v217, v222, v227, v232, v237, v242, v247, v252, v257, v261, v266, v271, v276, v281, v286, v291, v296, v301, v306, v311, v316, v321, v326, v331, v336, v341, v346, v351, v356, v361, v366, v371, v376, v381, v386, v391, v396, v401, v403[0], v403[1], v403[2], v403[3], v403[4]);
    OUTLINED_FUNCTION_51_9(v407, v90, v91, v92, v93, v94, v95, v96, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v228, v233, v238, v243, v248, v253, v258, v262, v267, v272, v277, v282, v287, v292, v297, v302, v307, v312, v317, v322, v327, v332, v337, v342, v347, v352, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v403[0], v403[1], v403[2], v403[3], v403[4]);
    sub_193564E74(v405);
    goto LABEL_17;
  }

  memcpy(v405, __src, 0x48uLL);
  *(&v405[4] + 1) = __src[9];
  OUTLINED_FUNCTION_51_9(__dst, v51, v52, v53, v54, v55, v56, v57, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199, v204, v209, v214, v219, v224, v229, v234, v239, v244, v249, v254, *(&v254 + 1), v263, v268, v273, v278, v283, v288, v293, v298, v303, v308, v313, v318, v323, v328, v333, v338, v343, v348, v353, v358, v363, v368, v373, v378, v383, v388, v393, v398, v403[0], v403[1], v403[2], v403[3], v403[4]);
  OUTLINED_FUNCTION_51_9(__src, v58, v59, v60, v61, v62, v63, v64, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v205, v210, v215, v220, v225, v230, v235, v240, v245, v250, v255, v259, v264, v269, v274, v279, v284, v289, v294, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v403[0], v403[1], v403[2], v403[3], v403[4]);
  OUTLINED_FUNCTION_51_9(v407, v65, v66, v67, v68, v69, v70, v71, v156, v161, v166, v171, v176, v181, v186, v191, v196, v201, v206, v211, v216, v221, v226, v231, v236, v241, v246, v251, v256, v260, v265, v270, v275, v280, v285, v290, v295, v300, v305, v310, v315, v320, v325, v330, v335, v340, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v403[0], v403[1], v403[2], v403[3], v403[4]);
  v72 = static IntelligenceFlowJointResolverTelemetry.JRModelOutputs.== infix(_:_:)(v406, v405);
  memcpy(v403, v405, sizeof(v403));
  sub_193564E74(v403);
  memcpy(v404, v406, sizeof(v404));
  sub_193564E74(v404);
  memcpy(v405, v411, 0x48uLL);
  *(&v405[4] + 1) = v47;
  OUTLINED_FUNCTION_85_9();
  sub_19344E6DC(v73, v74, v75);
  if ((v72 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  v100 = v363;
  if (v363 == 1)
  {
    v101 = OUTLINED_FUNCTION_13_5();
    sub_193564DF8(v101, v102, v353, v358, 1);
    v103 = v338;
    if (v338 == 1)
    {
      v104 = OUTLINED_FUNCTION_33_7();
      sub_193564DF8(v104, v105, v254, *(&v254 + 1), 1);
      v106 = OUTLINED_FUNCTION_15_27();
      sub_193564E0C(v106, v107, v108, v109, 1);
      goto LABEL_29;
    }

    v121 = OUTLINED_FUNCTION_33_7();
    sub_193564DF8(v121, v122, v254, *(&v254 + 1), v338);
    v100 = 1;
LABEL_25:
    v123 = OUTLINED_FUNCTION_15_27();
    sub_193564E0C(v123, v124, v125, v126, v100);
    v127 = OUTLINED_FUNCTION_33_7();
    sub_193564E0C(v127, v128, v254, *(&v254 + 1), v103);
    goto LABEL_26;
  }

  v407[0] = v343;
  v407[1] = v348;
  v407[2] = v353;
  v407[3] = v358;
  v407[4] = v363;
  if (v338 == 1)
  {
    OUTLINED_FUNCTION_64_6();
    v110 = OUTLINED_FUNCTION_15_27();
    v103 = v111;
    sub_193564DF8(v110, v112, v113, v114, v363);
    v115 = OUTLINED_FUNCTION_33_7();
    sub_193564DF8(v115, v116, v254, *(&v254 + 1), 1);
    v117 = OUTLINED_FUNCTION_15_27();
    sub_193564DF8(v117, v118, v119, v120, v363);
    sub_193564E20(v406);
    goto LABEL_25;
  }

  *&v404[0] = v50;
  *(&v404[0] + 1) = v49;
  v404[1] = v254;
  *&v404[2] = v338;
  v131 = OUTLINED_FUNCTION_15_27();
  v133 = v132;
  sub_193564DF8(v131, v134, v135, v136, v363);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_34_15();
  sub_193564DF8(v137, v138, v139, v140, v133);
  v141 = OUTLINED_FUNCTION_15_27();
  sub_193564DF8(v141, v142, v143, v144, v363);
  sub_1935013C0();
  v145 = sub_19393C550();
  v405[0] = v404[0];
  v405[1] = v404[1];
  *&v405[2] = *&v404[2];
  sub_193564E20(v405);
  OUTLINED_FUNCTION_64_6();
  sub_193564E20(v406);
  sub_193564E0C(v343, v348, v353, v358, v363);
  if ((v145 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_29:
  if ((v333 & 0x100000000) != 0)
  {
    v146 = v244;
    v147 = HIDWORD(v249);
    if (!v249)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v148 = v249;
    v147 = HIDWORD(v249);
    if (v10 != v19)
    {
      v148 = 1;
    }

    v146 = v244;
    if (v148)
    {
      goto LABEL_26;
    }
  }

  if (v333)
  {
    if (!v147)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v11 == v21)
    {
      v149 = v147;
    }

    else
    {
      v149 = 1;
    }

    if (v149)
    {
      goto LABEL_26;
    }
  }

  if (v328)
  {
    if (v146)
    {
      if ((sub_19355C820(v328, v146) & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_49;
    }

LABEL_47:

    goto LABEL_26;
  }

  if (v146)
  {
    goto LABEL_47;
  }

LABEL_49:
  if ((sub_1934DF324(v323, v219) & 1) == 0 || (sub_1934DF324(v318, v214) & 1) == 0 || (sub_1934DF324(v313, v209) & 1) == 0 || (sub_19355B674(v308, v204) & 1) == 0 || (sub_19355BB8C(v303, v199) & 1) == 0 || (sub_19355C820(v298, v194) & 1) == 0 || (sub_19355C820(v293, v189) & 1) == 0 || (sub_19355BF1C(v288, v184, IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter, v150) & 1) == 0 || (sub_19355BE88(v283, v179) & 1) == 0 || (sub_19355BF1C(v278, v174, IntelligenceFlowJointResolverTelemetry.JRParameterSubType.rawValue.getter, v151) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((v273 & 0x100000000) != 0)
  {
    if (!HIDWORD(v169))
    {
      goto LABEL_26;
    }
  }

  else
  {
    v152 = BYTE4(v169);
    if (v12 != v34)
    {
      v152 = 1;
    }

    if (v152)
    {
      goto LABEL_26;
    }
  }

  if (v273)
  {
    if (!v169)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v153 = v169;
    if (v13 != v36)
    {
      v153 = 1;
    }

    if (v153)
    {
      goto LABEL_26;
    }
  }

  if (sub_19355CEBC(v268, v164))
  {
    v129 = sub_19355BFE4(v263, v159);
    return v129 & 1;
  }

LABEL_26:
  v129 = 0;
  return v129 & 1;
}

void IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = *v0;
  v4 = *(v0 + 120);
  v13 = *(v0 + 136);
  v14 = *(v0 + 128);
  v11 = *(v0 + 152);
  v12 = *(v0 + 144);
  v19 = *(v0 + 160);
  v15 = *(v0 + 168);
  v16 = *(v0 + 176);
  v20 = *(v0 + 172);
  v21 = *(v0 + 180);
  v22 = *(v0 + 184);
  v23 = *(v0 + 192);
  v24 = *(v0 + 200);
  v25 = *(v0 + 208);
  v26 = *(v0 + 216);
  v27 = *(v0 + 224);
  v28 = *(v0 + 248);
  v29 = *(v0 + 256);
  v30 = *(v0 + 264);
  v17 = *(v0 + 272);
  v18 = *(v0 + 280);
  v31 = *(v0 + 276);
  v32 = *(v0 + 284);
  v33 = *(v0 + 296);
  if (*v0)
  {
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = *(v0 + 8);
    OUTLINED_FUNCTION_103_0();
    sub_193563E6C(v2, v3);
    sub_193563E6C(v2, v8);
    sub_193563E6C(v2, v7);
    sub_193563E6C(v2, v6);
    v9 = OUTLINED_FUNCTION_187();
    sub_193563E6C(v9, v10);
    sub_193563E6C(v2, v5);
    if (v4)
    {
LABEL_3:
      memcpy(__dst, (v0 + 48), 0x48uLL);
      *(&__dst[4] + 1) = v4;
      OUTLINED_FUNCTION_103_0();
      memcpy(v35, (v0 + 48), 0x48uLL);
      v35[9] = v4;
      sub_19354B9A8(v35, v36);
      IntelligenceFlowJointResolverTelemetry.JRModelOutputs.hash(into:)(v2);
      memcpy(v36, __dst, 0x50uLL);
      sub_193564E74(v36);
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v19 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    *&__dst[0] = v14;
    *(&__dst[0] + 1) = v13;
    *&__dst[1] = v12;
    *(&__dst[1] + 1) = v11;
    *&__dst[2] = v19;
    OUTLINED_FUNCTION_103_0();
    v35[0] = v14;
    v35[1] = v13;
    v35[2] = v12;
    v35[3] = v11;
    v35[4] = v19;
    sub_1934FDBFC(v35, v36);
    sub_193564EA4();
    sub_19393C540();
    v36[0] = __dst[0];
    v36[1] = __dst[1];
    *&v36[2] = *&__dst[2];
    sub_193564E20(v36);
  }

  if (v20)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v15);
    sub_19393CAE0();
  }

  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
    if (v22)
    {
LABEL_14:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_187();
      sub_193565A3C();
      goto LABEL_17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v16);
    sub_19393CAE0();
    if (v22)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_17:
  sub_1934DF380(v2, v23);
  sub_1934DF380(v2, v24);
  sub_1934DF380(v2, v25);
  sub_19356575C(v2, v26);
  sub_193565544(v2, v27);
  sub_193565A3C();
  sub_193565A3C();
  sub_1935654C0(v2, v28, IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter);
  sub_1935653A0(v2, v29);
  sub_1935654C0(v2, v30, IntelligenceFlowJointResolverTelemetry.JRParameterSubType.rawValue.getter);
  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v17);
    sub_19393CAE0();
  }

  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v18);
    sub_19393CAE0();
  }

  sub_193565318();
  sub_193564EF8(v2, v33);
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19355FF34(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193560000(uint64_t (*a1)(char *))
{
  v2 = OUTLINED_FUNCTION_119();
  v10 = OUTLINED_FUNCTION_62_0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  a1(v10);
  return sub_19393CB00();
}

uint64_t sub_193560044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_62_0(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.candidateBooleanMask.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.candidateTimeIntervalMatrix.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

IntelligencePlatformLibrary::IntelligenceFlowJointResolverTelemetry::IntervalUntilStartTime __swiftcall IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v1;
  return result;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.== infix(_:_:)(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_102_8(*a1);
  if (sub_19355B5C8(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_13_0();
    v5 = sub_19355CEBC(v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.hash(into:)(uint64_t a1)
{
  sub_193564830(a1, *v1);
  OUTLINED_FUNCTION_13_0();
  sub_193565318();
}

uint64_t IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_119();
  v8 = OUTLINED_FUNCTION_99(v0, v1, v2, v3, v4, v5, v6, v7, v19, v21);
  v10 = sub_193564830(v8, v9);
  OUTLINED_FUNCTION_62_0(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22);
  sub_193565318();
  return sub_19393CB00();
}

uint64_t sub_1935601EC(uint64_t a1)
{
  v1 = sub_19393CAB0();
  v9 = OUTLINED_FUNCTION_99(v1, v2, v3, v4, v5, v6, v7, v8, v20, v22);
  v11 = sub_193564830(v9, v10);
  OUTLINED_FUNCTION_62_0(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23);
  sub_193565318();
  return sub_19393CB00();
}

void IntelligenceFlowJointResolverTelemetry.JRCandidateBooleanMask.hash(into:)()
{
  OUTLINED_FUNCTION_46_11();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      ++v2;
      sub_19393CAD0();
      --v0;
    }

    while (v0);
  }
}

uint64_t IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow.candidateB.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow.similarityScore.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow.init()()
{
  OUTLINED_FUNCTION_237();
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  v7 = *(v6 + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = v0 + *(v6 + 24);
  v13 = OUTLINED_FUNCTION_187();
  sub_19344E6DC(v13, v14, &unk_19395C320);
  v15 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_19344E6DC(v0 + v7, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  *v12 = 0;
  *(v12 + 4) = 1;
  OUTLINED_FUNCTION_236();
}

void static IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v36 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v35 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  v23 = *(v20 + 48);
  v37 = v3;
  sub_193448804(v3, &v35 - v21, &qword_1EAE3BCA0, &unk_19395C320);
  v38 = v1;
  sub_193448804(v1, &v22[v23], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v22);
  if (v24)
  {
    OUTLINED_FUNCTION_31(&v22[v23]);
    if (v24)
    {
      sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_11;
    }

LABEL_9:
    v25 = v22;
LABEL_20:
    sub_19344E6DC(v25, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_21;
  }

  sub_193448804(v22, v13, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v22[v23]);
  if (v24)
  {
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
    goto LABEL_9;
  }

  sub_19355A5F8(&v22[v23], v36);
  OUTLINED_FUNCTION_0_38();
  sub_19355A65C(v26, v27, &protocol conformance descriptor for AIML.UUID);
  sub_19393C550();
  OUTLINED_FUNCTION_41_10();
  sub_193568274();
  OUTLINED_FUNCTION_125_3();
  sub_193568274();
  sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
  if ((&unk_19395C320 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v28 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  v29 = *(v28 + 20);
  v30 = *(v14 + 48);
  v31 = v37;
  sub_193448804(v37 + v29, v18, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v38 + v29, v18 + v30, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v18);
  if (!v24)
  {
    sub_193448804(v18, v35, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v18 + v30);
    if (!v32)
    {
      sub_19355A5F8(v18 + v30, v36);
      OUTLINED_FUNCTION_0_38();
      sub_19355A65C(v33, v34, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_117_9();
      sub_19393C550();
      OUTLINED_FUNCTION_41_10();
      sub_193568274();
      sub_193568274();
      sub_19344E6DC(v18, &qword_1EAE3BCA0, &unk_19395C320);
      if ((&qword_1EAE3BCA0 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_1_37();
    sub_193568274();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_31(v18 + v30);
  if (!v24)
  {
LABEL_19:
    v25 = v18;
    goto LABEL_20;
  }

  sub_19344E6DC(v18, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_23:
  if ((*(v31 + *(v28 + 24) + 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_109_8();
  }

LABEL_21:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v5 = OUTLINED_FUNCTION_165_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v17, v18, v3);
  if (v19)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_112();
    sub_19355A5F8(v20, v21);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    v24 = sub_19355A65C(v22, v23, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_73(v24);
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  v25 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  sub_193448804(v0 + *(v25 + 20), v11, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v11, 1, v3);
  if (v19)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v11, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    v28 = sub_19355A65C(v26, v27, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_73(v28);
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  OUTLINED_FUNCTION_47_1();
  if (v19)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.candidateTuplesShapes.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.deviceContextShapes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.candidateInteractionsShapes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.tupleInteractionsCandidatesShapes.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.tupleInteractionsAlignmentShapes.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.similarityScoresShapes.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

void IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

void static IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_102_8(*v0);
  if (sub_19355B2F4(v1, v2) & 1) != 0 && (v3 = OUTLINED_FUNCTION_125_3(), (sub_19355B2F4(v3, v4)) && (v5 = OUTLINED_FUNCTION_165_1(), (sub_19355B2F4(v5, v6)) && (v7 = OUTLINED_FUNCTION_32_4(), (sub_19355B2F4(v7, v8)) && (v9 = OUTLINED_FUNCTION_115_0(), (sub_19355B2F4(v9, v10)))
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_116();

    sub_19355B2F4(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_116();
  }
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_193563E6C(a1, *v1);
  v6 = OUTLINED_FUNCTION_187();
  sub_193563E6C(v6, v7);
  sub_193563E6C(a1, v3);
  sub_193563E6C(a1, v4);
  sub_193563E6C(a1, v5);
  v8 = OUTLINED_FUNCTION_13_0();

  return sub_193563E6C(v8, v9);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.hashValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = OUTLINED_FUNCTION_119();
  v12 = OUTLINED_FUNCTION_99(v4, v5, v6, v7, v8, v9, v10, v11, v35, v38[0]);
  v14 = sub_193563E6C(v12, v13);
  v22 = OUTLINED_FUNCTION_98_9(v14, v15, v16, v17, v18, v19, v20, v21, v36, v38[0]);
  sub_193563E6C(v22, v23);
  sub_193563E6C(v38, v1);
  sub_193563E6C(v38, v2);
  v24 = sub_193563E6C(v38, v3);
  v32 = OUTLINED_FUNCTION_62_0(v24, v25, v26, v27, v28, v29, v30, v31, v37, v38[0]);
  sub_193563E6C(v32, v33);
  return sub_19393CB00();
}

uint64_t sub_193560FF4(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = v1[2];
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.hash(into:)(v4);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.action.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.candidates.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.ranking.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_193565ACC(v2);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.ranking.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_193565B14(*(v1 + 16));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.jrAnonymizedHistoryAndContext.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.modelDiagnosticSignals.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 48) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.shadowAction.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 56) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.shadowCandidates.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 64) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.userHistory.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.init()@<X0>(uint64_t a1@<X8>)
{
  swift_bridgeObjectRelease_n();
  *a1 = 0u;
  sub_193565B14(1);
  *(a1 + 16) = xmmword_193961910;

  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  swift_bridgeObjectRelease_n();
  *(a1 + 48) = 0u;

  v3 = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  return result;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRModelOutputs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (*a1)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    v39 = *(a1 + 40);
    OUTLINED_FUNCTION_101_9();
    if ((sub_19355B2F4(v12, v7) & 1) == 0)
    {
      return 0;
    }

    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (!v6)
    {

      goto LABEL_17;
    }

LABEL_13:

LABEL_14:

    return 0;
  }

  if (v7)
  {
    goto LABEL_13;
  }

  v39 = *(a1 + 40);
  OUTLINED_FUNCTION_101_9();

  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (!v6)
  {
    goto LABEL_13;
  }

  swift_bridgeObjectRetain_n();

  v13 = OUTLINED_FUNCTION_32_4();
  v15 = sub_19355B350(v13, v14);
  swift_bridgeObjectRelease_n();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v2 == 1)
  {
    sub_193565ACC(1);
    if (v9 == 1)
    {
      sub_193565ACC(1);
      sub_193565B14(1);
      goto LABEL_25;
    }

    v19 = OUTLINED_FUNCTION_175_0();
    sub_193565ACC(v19);
LABEL_23:
    v20 = OUTLINED_FUNCTION_13_5();
    sub_193565B14(v20);
    v21 = OUTLINED_FUNCTION_175_0();
    sub_193565B14(v21);
    return 0;
  }

  v41[0] = v2;
  v41[1] = v4;
  if (v9 == 1)
  {
    v17 = OUTLINED_FUNCTION_13_5();
    sub_193565ACC(v17);
    sub_193565ACC(1);
    v18 = OUTLINED_FUNCTION_13_5();
    sub_193565ACC(v18);

    goto LABEL_23;
  }

  v40[0] = v9;
  v40[1] = v8;
  v22 = OUTLINED_FUNCTION_13_5();
  sub_193565ACC(v22);
  v23 = OUTLINED_FUNCTION_175_0();
  sub_193565ACC(v23);
  v24 = OUTLINED_FUNCTION_13_5();
  sub_193565ACC(v24);
  v25 = static IntelligenceFlowJointResolverTelemetry.Ranking.== infix(_:_:)(v41, v40);

  v26 = OUTLINED_FUNCTION_13_5();
  sub_193565B14(v26);
  if (!v25)
  {
    return 0;
  }

LABEL_25:
  if (v5)
  {
    if (!v10)
    {
      goto LABEL_30;
    }

    swift_bridgeObjectRetain_n();

    v27 = OUTLINED_FUNCTION_33_7();
    v29 = sub_19355C8C4(v27, v28);
    swift_bridgeObjectRelease_n();

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v10)
    {
      goto LABEL_30;
    }
  }

  if (v39 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v11 ^ v39) & 1) != 0)
  {
    return 0;
  }

  if (v37)
  {
    if (!v38)
    {
      goto LABEL_30;
    }

    if ((sub_1934DF324(v37, v38) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v38)
    {
      goto LABEL_30;
    }
  }

  if (v36)
  {
    if (!v35)
    {
      goto LABEL_30;
    }

    if ((sub_19355B2F4(v36, v35) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v35)
    {
      goto LABEL_30;
    }
  }

  if (v33)
  {
    if (v34)
    {
      swift_bridgeObjectRetain_n();

      v30 = sub_19355B350(v33, v34);
      swift_bridgeObjectRelease_n();

      if (v30)
      {
        goto LABEL_57;
      }

      return 0;
    }

    goto LABEL_30;
  }

  if (v34)
  {
LABEL_30:

    goto LABEL_14;
  }

LABEL_57:

  return sub_19355CF60(v32, v31);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = *(v2 + 64);
  v18 = *(v2 + 72);
  if (*v2)
  {
    sub_19393CAD0();
    sub_193563E6C(a1, v5);
    if (v4)
    {
LABEL_3:
      sub_19393CAD0();

      sub_19356408C(a1, v4);

      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v6 == 1)
  {
    goto LABEL_12;
  }

  sub_19393CAD0();
  if (v6)
  {
    sub_19393CAD0();
    sub_193565318();
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_19393CAD0();
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  sub_19393CAD0();
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_19393CAD0();
  v13 = OUTLINED_FUNCTION_165_1();
  sub_193565ACC(v13);
  sub_193563EBC(a1, v7);
  v14 = OUTLINED_FUNCTION_165_1();
  sub_193565B14(v14);
  if (!v8)
  {
LABEL_10:
    sub_19393CAD0();
    goto LABEL_14;
  }

LABEL_13:
  sub_19393CAD0();

  sub_193564188(a1, v8);

LABEL_14:
  if (v9 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v11)
  {
    sub_19393CAD0();
    v15 = OUTLINED_FUNCTION_112();
    sub_1934DF380(v15, v16);
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_21:
    sub_19393CAD0();
    if (v12)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  sub_19393CAD0();
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_18:
  sub_19393CAD0();
  sub_193563E6C(a1, v10);
  if (v12)
  {
LABEL_19:
    sub_19393CAD0();

    sub_19356408C(a1, v12);

    goto LABEL_23;
  }

LABEL_22:
  sub_19393CAD0();
LABEL_23:

  return sub_193565B58(a1, v18);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowJointResolverTelemetry.JRModelOutputs.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1935619A0(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRModelOutputs.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.candidateIds.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.uflScore.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

void __swiftcall IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.init()(IntelligencePlatformLibrary::IntelligenceFlowJointResolverTelemetry::JRAnonymizedHistoryAndContextTuple *__return_ptr retstr)
{
  retstr->candidateIds._rawValue = MEMORY[0x1E69E7CC0];
  retstr->contextSimilarityScore.value = 0.0;
  retstr->contextSimilarityScore.is_nil = 1;
  *(&retstr->uflScore.value + 3) = 0.0;
  *(&retstr->uflScore + 7) = 1;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = OUTLINED_FUNCTION_102_8(*a1);
  if ((sub_19355B350(v10, v11) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v6)
    {
      v12 = v7;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v5)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v8)
    {
      v14 = v9;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 12);
  v3 = *(v1 + 20);
  sub_19356408C(a1, *v1);
  if (v2 == 1)
  {
    sub_19393CAD0();
    if (!v3)
    {
LABEL_3:
      sub_19393CAD0();
      return sub_19393CAE0();
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  return sub_19393CAD0();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.hashValue.getter()
{
  OUTLINED_FUNCTION_39_13();
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.hash(into:)(&v1);
  return sub_19393CB00();
}

uint64_t sub_193561C94()
{
  OUTLINED_FUNCTION_39_13();
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.hash(into:)(&v1);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.Ranking.rankingScoreMatrix.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.Ranking.rankingCandidateMatrix.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.Ranking.init()()
{
  OUTLINED_FUNCTION_8_4();
  result = swift_bridgeObjectRelease_n();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

BOOL static IntelligenceFlowJointResolverTelemetry.Ranking.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  if (v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    if ((sub_19355CEBC(v3, *a2) & 1) == 0)
    {
      return 0;
    }

    if (v4)
    {
LABEL_5:
      if (v5)
      {
        swift_bridgeObjectRetain_n();

        v7 = OUTLINED_FUNCTION_13_5();
        v9 = sub_19355CBFC(v7, v8);
        swift_bridgeObjectRelease_n();

        return (v9 & 1) != 0;
      }

LABEL_13:

      return 0;
    }
  }

  else
  {
    if (v6)
    {
      goto LABEL_13;
    }

    if (v4)
    {
      goto LABEL_5;
    }
  }

  if (v5)
  {
    goto LABEL_13;
  }

  return 1;
}

uint64_t IntelligenceFlowJointResolverTelemetry.Ranking.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  if (!*v1)
  {
    sub_19393CAD0();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_175_0();
  sub_193565318();
  if (!v3)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();

  return sub_193563EBC(a1, v3);
}

uint64_t IntelligenceFlowJointResolverTelemetry.Ranking.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  OUTLINED_FUNCTION_119();
  if (v2)
  {
    v3 = sub_19393CAD0();
    OUTLINED_FUNCTION_98_9(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    sub_193565318();
  }

  else
  {
    sub_19393CAD0();
  }

  if (v1)
  {
    v11 = sub_19393CAD0();
    v19 = OUTLINED_FUNCTION_99(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23);
    sub_193563EBC(v19, v20);
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t sub_193562038(uint64_t a1)
{
  v4 = *v1;
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.Ranking.hash(into:)(v3);
  return sub_19393CB00();
}

uint64_t sub_1935620FC(uint64_t (*a1)(char *))
{
  v2 = OUTLINED_FUNCTION_119();
  v10 = OUTLINED_FUNCTION_62_0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  a1(v10);
  return sub_19393CB00();
}

uint64_t sub_193562160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_62_0(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

void _s27IntelligencePlatformLibrary0A26FlowJointResolverTelemetryV17JRTokenConfidenceV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_46_11();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 4;
      sub_19393CAE0();
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1935622C4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for AIML.UUID(0) - 8);
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v8, v9, &protocol conformance descriptor for AIML.UUID);
    do
    {
      result = sub_19393C540();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.RiskProfile.tuples.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

void _s27IntelligencePlatformLibrary0A26FlowJointResolverTelemetryV20JRCandidateRiskLevelV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_46_11();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 4;
      sub_19393CAE0();
      --v0;
    }

    while (v0);
  }
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalContext.getter()
{
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalContext.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(v0);
  return OUTLINED_FUNCTION_1_4();
}

void sub_1935626B0()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = v1(v0);
  OUTLINED_FUNCTION_263(*(v2 + 24));
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalFeedback.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalLocationContext.getter()
{
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalLocationContext.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalLocationContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
  v7 = v0 + v6[6];
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v13 = MEMORY[0x1E69E7CC0];
  *(v0 + v6[5]) = MEMORY[0x1E69E7CC0];
  *v7 = 0;
  *(v7 + 4) = 1;
  *(v0 + v6[7]) = v13;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.logOfTimeElapsedInSeconds.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.anonymizedLocationNameId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193562D90()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_46(*(v2 + 24), &qword_1EAE3BCA0, &unk_19395C320);
}

uint64_t sub_193562DEC()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1(v0);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.anonymizedLocationTypeId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.bucketedDistance.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 28));
}

void IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.bucketedDistance.setter()
{
  v0 = OUTLINED_FUNCTION_85_8();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v0);
  OUTLINED_FUNCTION_84_6(*(v1 + 28));
}

uint64_t IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.bucketedDistance.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.init()()
{
  OUTLINED_FUNCTION_237();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v1);
  v3 = v2[5];
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v2[6];
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v0 + v2[7];
  *v13 = 0;
  *(v13 + 8) = 256;
  *v0 = 0;
  *(v0 + 4) = 1;
  sub_19344E6DC(v0 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_19344E6DC(v0 + v8, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  *v13 = 0;
  *(v13 + 8) = 256;
  OUTLINED_FUNCTION_236();
}

void static IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = *(v0 + 4);
  if (*(v1 + 4))
  {
    if (!*(v0 + 4))
    {
      goto LABEL_27;
    }

LABEL_7:
    v39 = v9;
    v40 = v2;
    v41 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
    v42 = v0;
    v20 = *(v41 + 20);
    v21 = *(v11 + 48);
    sub_193448804(v1 + v20, v18, &qword_1EAE3BCA0, &unk_19395C320);
    sub_193448804(v42 + v20, &v18[v21], &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v18);
    if (v26)
    {
      OUTLINED_FUNCTION_31(&v18[v21]);
      if (v26)
      {
        sub_19344E6DC(v18, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_17:
        v31 = *(v41 + 24);
        v32 = *(v11 + 48);
        OUTLINED_FUNCTION_90_10(v1 + v31, v15);
        OUTLINED_FUNCTION_90_10(v42 + v31, v15 + v32);
        OUTLINED_FUNCTION_31(v15);
        if (v26)
        {
          OUTLINED_FUNCTION_31(v15 + v32);
          if (v26)
          {
            sub_19344E6DC(v15, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_29:
            OUTLINED_FUNCTION_106_9();
            if ((v38 & 1) == 0 && (v37 & 1) == 0)
            {
              OUTLINED_FUNCTION_48_2(v36);
              IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
              IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
            }

            goto LABEL_27;
          }
        }

        else
        {
          sub_193448804(v15, v39, &qword_1EAE3BCA0, &unk_19395C320);
          OUTLINED_FUNCTION_31(v15 + v32);
          if (!v33)
          {
            sub_19355A5F8(v15 + v32, v40);
            OUTLINED_FUNCTION_0_38();
            sub_19355A65C(v34, v35, &protocol conformance descriptor for AIML.UUID);
            OUTLINED_FUNCTION_117_9();
            OUTLINED_FUNCTION_22();
            sub_19393C550();
            OUTLINED_FUNCTION_4_30();
            sub_193568274();
            sub_193568274();
            sub_19344E6DC(v15, &qword_1EAE3BCA0, &unk_19395C320);
            if ((v3 & 1) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_29;
          }

          OUTLINED_FUNCTION_1_37();
          sub_193568274();
        }

        v27 = v15;
LABEL_26:
        sub_19344E6DC(v27, &qword_1EAE3BD08, &qword_1939595A0);
        goto LABEL_27;
      }
    }

    else
    {
      v22 = OUTLINED_FUNCTION_125_3();
      sub_193448804(v22, v23, v24, v25);
      OUTLINED_FUNCTION_31(&v18[v21]);
      if (!v26)
      {
        sub_19355A5F8(&v18[v21], v40);
        OUTLINED_FUNCTION_0_38();
        sub_19355A65C(v28, v29, &protocol conformance descriptor for AIML.UUID);
        OUTLINED_FUNCTION_85_9();
        v30 = sub_19393C550();
        sub_193568274();
        sub_193568274();
        sub_19344E6DC(v18, &qword_1EAE3BCA0, &unk_19395C320);
        if ((v30 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_1_37();
      sub_193568274();
    }

    v27 = v18;
    goto LABEL_26;
  }

  if (*v1 != *v0)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_27:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  if (*(v0 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  v13 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
  sub_193448804(v0 + v13[5], v12, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v12, 1, v3);
  if (v14)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v12, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    v17 = sub_19355A65C(v15, v16, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_73(v17);
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  sub_193448804(v0 + v13[6], v9, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v9, 1, v3);
  if (v14)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v9, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    v20 = sub_19355A65C(v18, v19, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_73(v20);
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  v21 = (v0 + v13[7]);
  if (*(v21 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v22 = *(v21 + 8);
    v23 = *v21;
    OUTLINED_FUNCTION_103_0();
    v25 = v23;
    v26 = v22 & 1;
    v24 = IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
    MEMORY[0x193B18030](v24);
  }

  OUTLINED_FUNCTION_236();
}

void IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount.count.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(v0);
  OUTLINED_FUNCTION_263(*(v1 + 20));
}

uint64_t IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount.count.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID(v1);
  v2 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_67_7();
  v7 = v0 + v6;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

void static IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_50_0();
  v2 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v4 = OUTLINED_FUNCTION_165_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_76_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_220();
  v11 = *(v10 + 56);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v12, v13, v14, v15);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v16, v17, v18, v19);
  OUTLINED_FUNCTION_31(v1);
  if (!v24)
  {
    v20 = OUTLINED_FUNCTION_32_4();
    sub_193448804(v20, v21, v22, v23);
    OUTLINED_FUNCTION_31(v1 + v11);
    if (!v24)
    {
      sub_19355A5F8(v1 + v11, v0);
      OUTLINED_FUNCTION_0_38();
      sub_19355A65C(v25, v26, &protocol conformance descriptor for AIML.UUID);
      OUTLINED_FUNCTION_22();
      sub_19393C550();
      OUTLINED_FUNCTION_4_30();
      sub_193568274();
      OUTLINED_FUNCTION_25_2();
      sub_193568274();
      sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_37();
    sub_193568274();
LABEL_9:
    sub_19344E6DC(v1, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v1 + v11);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  OUTLINED_FUNCTION_67_7();
  OUTLINED_FUNCTION_49_2();
  if ((v27 & 1) == 0)
  {
    OUTLINED_FUNCTION_258();
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount.tupleCandidates.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

void IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount.init()(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  v6 = OUTLINED_FUNCTION_102_8(*a1);
  if ((sub_19355B350(v6, v7) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v9 = v5;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  sub_19356408C(a1, v2);
  if (v3 == 1)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  return sub_19393CAE0();
}

uint64_t IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount.hashValue.getter()
{
  v1 = *(v0 + 12);
  v2 = OUTLINED_FUNCTION_119();
  v10 = OUTLINED_FUNCTION_98_9(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  sub_19356408C(v10, v11);
  if (v1 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_123();
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_193563D30(uint64_t a1)
{
  v2 = *(v1 + 12);
  v3 = sub_19393CAB0();
  v11 = OUTLINED_FUNCTION_98_9(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15);
  sub_19356408C(v11, v12);
  if (v2 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_123();
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_193563DC4(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_193563E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_193563E6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_19393CAE0();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193563EBC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID(0);
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  result = MEMORY[0x193B18030](v6);
  v17 = v6;
  if (v6)
  {
    v8 = 0;
    v16 = a2 + 32;
    do
    {
      v9 = *(v16 + 8 * v8);
      result = MEMORY[0x193B18030](*(v9 + 16));
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v15;
        v12 = v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80));

        v13 = *(v11 + 72);
        do
        {
          sub_1935682C8(v12, v5, type metadata accessor for AIML.UUID);
          sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
          sub_19393C540();
          sub_193568274();
          v12 += v13;
          --v10;
        }

        while (v10);
      }

      ++v8;
    }

    while (v8 != v17);
  }

  return result;
}

uint64_t sub_19356408C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for AIML.UUID(0) - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
    do
    {
      result = sub_19393C540();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193564188(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID(0);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  result = MEMORY[0x193B18030](v6);
  v20 = v6;
  if (v6)
  {
    v8 = 0;
    v19 = a2 + 32;
    do
    {
      v9 = (v19 + 24 * v8);
      v10 = *v9;
      v11 = *(v9 + 12);
      v12 = *(v9 + 4);
      v21 = *(v9 + 2);
      v22 = v12;
      LODWORD(v9) = *(v9 + 20);
      v23 = v11;
      v24 = v9;
      MEMORY[0x193B18030](*(v10 + 16));
      v13 = *(v10 + 16);
      if (v13)
      {
        v14 = v18;
        v15 = v10 + ((*(v18 + 80) + 32) & ~*(v18 + 80));

        v16 = *(v14 + 72);
        do
        {
          sub_1935682C8(v15, v5, type metadata accessor for AIML.UUID);
          sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
          sub_19393C540();
          sub_193568274();
          v15 += v16;
          --v13;
        }

        while (v13);
      }

      else
      {
      }

      if (v23)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      if (v24)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      ++v8;
    }

    while (v8 != v20);
  }

  return result;
}

uint64_t sub_1935643EC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  v20 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  result = MEMORY[0x193B18030](v15);
  if (v15)
  {
    v17 = a2;
    v18 = *(v12 + 20);
    v21 = &v14[*(v12 + 24)];
    v19 = v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v20 = *(v20 + 72);
    do
    {
      sub_1935682C8(v19, v14, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow);
      sub_193448804(v14, v11, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v11, v5);
        sub_19393CAD0();
        sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        sub_19393C540();
        sub_193568274();
      }

      sub_193448804(&v14[v18], v9, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v9, v5);
        sub_19393CAD0();
        sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        sub_19393C540();
        sub_193568274();
      }

      if (v21[4] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      result = sub_193568274();
      v19 += v20;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1935647E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      result = sub_19393CAD0();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193564830(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x193B18030](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v7 + 32;
        do
        {
          ++v9;
          result = sub_19393CAD0();
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1935648B0(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v27);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  result = MEMORY[0x193B18030](v11);
  if (v11)
  {
    v13 = v7[6];
    v25 = &v10[v7[7]];
    v26 = v13;
    v14 = &v10[v7[8]];
    v24 = &v10[v7[9]];
    v15 = &v10[v7[10]];
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v23 = *(v8 + 72);
    do
    {
      sub_1935682C8(v16, v10, type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment);
      if (*(v10 + 1))
      {
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      if (*(v10 + 3))
      {
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      sub_193448804(&v10[v26], v6, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v6, 1, v27) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v6, v22);
        sub_19393CAD0();
        sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        sub_19393C540();
        sub_193568274();
      }

      if (v25[8] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v17 = *v25;
        sub_19393CAD0();
        MEMORY[0x193B18060](v17);
      }

      if (v14[9] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v18 = v14[8];
        v19 = *v14;
        sub_19393CAD0();
        v28 = v19;
        v29 = v18 & 1;
        v20 = IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.rawValue.getter();
        MEMORY[0x193B18030](v20);
      }

      if (v24[8] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v21 = *v24;
        sub_19393CAD0();
        MEMORY[0x193B18060](v21);
      }

      if (v15[4] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      result = sub_193568274();
      v16 += v23;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_193564CF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_193564D78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_193564DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

uint64_t sub_193564E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

unint64_t sub_193564EA4()
{
  result = qword_1EAE3D260;
  if (!qword_1EAE3D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D260);
  }

  return result;
}

uint64_t sub_193564EF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  result = MEMORY[0x193B18030](v15);
  v28 = v15;
  if (v15)
  {
    v17 = 0;
    v27 = a2 + 32;
    do
    {
      v18 = *(v27 + 8 * v17);
      v19 = *(v18 + 16);
      result = MEMORY[0x193B18030](v19);
      if (v19)
      {
        v20 = *(v26 + 20);
        v32 = &v14[*(v26 + 24)];
        v33 = v20;
        v21 = v18;
        v22 = v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v23 = *(v25 + 72);
        v30 = v17;
        v31 = v23;
        v29 = v21;

        do
        {
          sub_1935682C8(v22, v14, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow);
          sub_193448804(v14, v11, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            sub_19355A5F8(v11, v5);
            sub_19393CAD0();
            sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
            sub_19393C540();
            sub_193568274();
          }

          sub_193448804(&v14[v33], v9, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            sub_19355A5F8(v9, v5);
            sub_19393CAD0();
            sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
            sub_19393C540();
            sub_193568274();
          }

          if (v32[4] == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            sub_19393CAD0();
            sub_19393CAE0();
          }

          sub_193568274();
          v22 += v31;
          --v19;
        }

        while (v19);

        v17 = v30;
      }

      ++v17;
    }

    while (v17 != v28);
  }

  return result;
}

void sub_193565318()
{
  OUTLINED_FUNCTION_122_5();
  if (v0)
  {
    v2 = 0;
    v3 = v1 + 32;
    do
    {
      v4 = *(v3 + 8 * v2);
      MEMORY[0x193B18030](*(v4 + 16));
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = v4 + 32;
        do
        {
          v6 += 4;
          sub_19393CAE0();
          --v5;
        }

        while (v5);
      }

      ++v2;
    }

    while (v2 != v0);
  }
}

uint64_t sub_1935653A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = (v6 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      MEMORY[0x193B18030](*(*v7 + 16));
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = v9 + 32;
        do
        {
          v13 = *(v12 + 8 * v11);
          MEMORY[0x193B18030](*(v13 + 16));
          v14 = *(v13 + 16);
          if (v14)
          {
            v15 = v13 + 32;
            do
            {
              ++v15;
              sub_19393CAD0();
              --v14;
            }

            while (v14);
          }

          ++v11;
        }

        while (v11 != v10);
      }

      v16 = *(v8 + 16);
      result = MEMORY[0x193B18030](v16);
      if (v16)
      {
        v17 = 0;
        v18 = v8 + 32;
        do
        {
          v19 = *(v18 + 8 * v17);
          result = MEMORY[0x193B18030](*(v19 + 16));
          v20 = *(v19 + 16);
          if (v20)
          {
            v21 = v19 + 32;
            do
            {
              v21 += 4;
              result = sub_19393CAE0();
              --v20;
            }

            while (v20);
          }

          ++v17;
        }

        while (v17 != v16);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1935654C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  result = MEMORY[0x193B18030](v5);
  if (v5)
  {
    v7 = a2 + 40;
    do
    {
      v7 += 16;
      v8 = a3(result);
      result = MEMORY[0x193B18030](v8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_193565544(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID(0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  result = MEMORY[0x193B18030](v6);
  v18 = v6;
  if (v6)
  {
    v8 = 0;
    v17 = a2 + 32;
    do
    {
      v9 = (v17 + 16 * v8);
      v10 = *v9;
      v11 = *(v9 + 2);
      LODWORD(v9) = *(v9 + 12);
      v19 = v11;
      v20 = v9;
      MEMORY[0x193B18030](*(v10 + 16));
      v12 = *(v10 + 16);
      if (v12)
      {
        v13 = v16;
        v14 = v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80));

        v15 = *(v13 + 72);
        do
        {
          sub_1935682C8(v14, v5, type metadata accessor for AIML.UUID);
          sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
          sub_19393C540();
          sub_193568274();
          v14 += v15;
          --v12;
        }

        while (v12);
      }

      else
      {
      }

      if (v20)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      ++v8;
    }

    while (v8 != v18);
  }

  return result;
}

uint64_t sub_19356575C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  result = MEMORY[0x193B18030](v12);
  if (v12)
  {
    v14 = &v11[*(v8 + 20)];
    v15 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    do
    {
      sub_1935682C8(v15, v11, type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount);
      sub_193448804(v11, v7, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v7, 1, v3) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v7, v18);
        sub_19393CAD0();
        sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        sub_19393C540();
        sub_193568274();
      }

      if (v14[4] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      result = sub_193568274();
      v15 += v16;
      --v12;
    }

    while (v12);
  }

  return result;
}

void sub_193565A3C()
{
  OUTLINED_FUNCTION_122_5();
  if (v0)
  {
    v2 = 0;
    v3 = v1 + 32;
    do
    {
      v4 = *(v3 + 8 * v2);
      MEMORY[0x193B18030](*(v4 + 16));
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = v4 + 32;
        do
        {
          v6 += 4;
          sub_19393CAE0();
          --v5;
        }

        while (v5);
      }

      ++v2;
    }

    while (v2 != v0);
  }
}

uint64_t sub_193565ACC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_193565B14(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_193565B58(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v43 - v15;
  v16 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  v20 = *(a2 + 16);
  result = MEMORY[0x193B18030](v20);
  v51 = v20;
  if (v20)
  {
    v22 = v19;
    v23 = 0;
    v24 = v16[5];
    v49 = &v19[v16[6]];
    v50 = v24;
    v25 = v16[7];
    v47 = v59 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v48 = v25;
    v46 = *(v17 + 72);
    v54 = v19;
    do
    {
      sub_1935682C8(v47 + v46 * v23, v22, type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory);
      v26 = v22;
      v27 = v52;
      sub_193448804(v26, v52, &qword_1EAE3BCA0, &unk_19395C320);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v6);
      v53 = v23;
      if (EnumTagSinglePayload == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v27, v8);
        sub_19393CAD0();
        sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        sub_19393C540();
        sub_193568274();
      }

      v29 = v55;
      v30 = *&v54[v50];
      MEMORY[0x193B18030](*(v30 + 16));
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = v30 + 32;
        do
        {
          v32 += 4;
          sub_19393CAE0();
          --v31;
        }

        while (v31);
      }

      if (v49[4])
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      v33 = *&v54[v48];
      MEMORY[0x193B18030](*(v33 + 16));
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v45[5];
        v58 = v45[6];
        v59 = v35;
        v57 = &v5[v45[7]];
        v36 = v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v56 = *(v44 + 72);
        do
        {
          sub_1935682C8(v36, v5, type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext);
          if (v5[4] == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            sub_19393CAD0();
            sub_19393CAE0();
          }

          sub_193448804(&v5[v59], v29, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(v29, 1, v6) == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            sub_19355A5F8(v29, v8);
            sub_19393CAD0();
            sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
            sub_19393C540();
            sub_193568274();
          }

          sub_193448804(&v5[v58], v12, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(v12, 1, v6) == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            sub_19355A5F8(v12, v8);
            sub_19393CAD0();
            sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
            sub_19393C540();
            sub_193568274();
          }

          if (v57[9] == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            v37 = v57[8];
            v38 = v8;
            v39 = v6;
            v40 = v12;
            v41 = *v57;
            sub_19393CAD0();
            v60 = v41;
            v12 = v40;
            v6 = v39;
            v8 = v38;
            v29 = v55;
            v61 = v37 & 1;
            v42 = IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
            MEMORY[0x193B18030](v42);
          }

          sub_193568274();
          v36 += v56;
          --v34;
        }

        while (v34);
      }

      v22 = v54;
      v23 = v53 + 1;
      result = sub_193568274();
    }

    while (v23 != v51);
  }

  return result;
}

void sub_193566264(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x193B18030](v3);
  if (v3)
  {
    v4 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.hash(into:)();
      v5 += v6;
      --v3;
    }

    while (v3);
  }
}

unint64_t sub_193566384()
{
  result = qword_1EAE3D278;
  if (!qword_1EAE3D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D278);
  }

  return result;
}

unint64_t sub_19356640C()
{
  result = qword_1EAE3D288;
  if (!qword_1EAE3D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D288);
  }

  return result;
}

unint64_t sub_193566494()
{
  result = qword_1EAE3D298;
  if (!qword_1EAE3D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D298);
  }

  return result;
}

unint64_t sub_193566610()
{
  result = qword_1EAE3D2A8;
  if (!qword_1EAE3D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2A8);
  }

  return result;
}

unint64_t sub_193566668()
{
  result = qword_1EAE3D2B0;
  if (!qword_1EAE3D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2B0);
  }

  return result;
}

unint64_t sub_1935666C0()
{
  result = qword_1EAE3D2B8;
  if (!qword_1EAE3D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2B8);
  }

  return result;
}

unint64_t sub_193566718()
{
  result = qword_1EAE3D2C0;
  if (!qword_1EAE3D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2C0);
  }

  return result;
}

unint64_t sub_193566770()
{
  result = qword_1EAE3D2C8;
  if (!qword_1EAE3D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2C8);
  }

  return result;
}

unint64_t sub_1935667C8()
{
  result = qword_1EAE3D2D0;
  if (!qword_1EAE3D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2D0);
  }

  return result;
}

unint64_t sub_193566820()
{
  result = qword_1EAE3D2D8;
  if (!qword_1EAE3D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2D8);
  }

  return result;
}

unint64_t sub_193566878()
{
  result = qword_1EAE3D2E0;
  if (!qword_1EAE3D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2E0);
  }

  return result;
}

unint64_t sub_1935668D0()
{
  result = qword_1EAE3D2E8;
  if (!qword_1EAE3D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2E8);
  }

  return result;
}

unint64_t sub_193566928()
{
  result = qword_1EAE3D2F0;
  if (!qword_1EAE3D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2F0);
  }

  return result;
}

unint64_t sub_1935669C8()
{
  result = qword_1EAE3D300;
  if (!qword_1EAE3D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D300);
  }

  return result;
}

unint64_t sub_193566A20()
{
  result = qword_1EAE3D308;
  if (!qword_1EAE3D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D308);
  }

  return result;
}

unint64_t sub_193566A78()
{
  result = qword_1EAE3D310;
  if (!qword_1EAE3D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D310);
  }

  return result;
}

unint64_t sub_193566AD0()
{
  result = qword_1EAE3D318;
  if (!qword_1EAE3D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D318);
  }

  return result;
}

unint64_t sub_193566B28()
{
  result = qword_1EAE3D320;
  if (!qword_1EAE3D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D320);
  }

  return result;
}

unint64_t sub_193566B80()
{
  result = qword_1EAE3D328;
  if (!qword_1EAE3D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D328);
  }

  return result;
}

unint64_t sub_193566BD8()
{
  result = qword_1EAE3D330;
  if (!qword_1EAE3D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D330);
  }

  return result;
}

unint64_t sub_193566C30()
{
  result = qword_1EAE3D338;
  if (!qword_1EAE3D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D338);
  }

  return result;
}

unint64_t sub_193566C88()
{
  result = qword_1EAE3D340;
  if (!qword_1EAE3D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D340);
  }

  return result;
}

unint64_t sub_193566CE0()
{
  result = qword_1EAE3D348;
  if (!qword_1EAE3D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D348);
  }

  return result;
}

unint64_t sub_193566D38()
{
  result = qword_1EAE3D350;
  if (!qword_1EAE3D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D350);
  }

  return result;
}

unint64_t sub_193566D90()
{
  result = qword_1EAE3D358;
  if (!qword_1EAE3D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D358);
  }

  return result;
}

unint64_t sub_193566DE8()
{
  result = qword_1EAE3D360;
  if (!qword_1EAE3D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D360);
  }

  return result;
}

unint64_t sub_193566E40()
{
  result = qword_1EAE3D368;
  if (!qword_1EAE3D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D368);
  }

  return result;
}

unint64_t sub_193566F70()
{
  result = qword_1EAE3D388;
  if (!qword_1EAE3D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D388);
  }

  return result;
}

void sub_193567034()
{
  sub_193567230(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      sub_193567230(319, qword_1ED507D60, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_2_34(v2, &qword_1ED5069F0, &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceContext);
        if (v4 <= 0x3F)
        {
          sub_193567230(319, qword_1ED507490, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_193567230(319, &qword_1ED5074F0, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_193567230(319, &qword_1ED507A78, type metadata accessor for MonotonicTimestamp, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                OUTLINED_FUNCTION_15_2();
                swift_cvw_initStructMetadataWithLayoutString();
                OUTLINED_FUNCTION_10_1();
              }
            }
          }
        }
      }
    }
  }
}

void sub_193567230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for IntelligenceFlowJointResolverTelemetry.JRBucketedDistance(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

uint64_t sub_1935672BC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

void sub_193567360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_3_34();
  sub_193567230(319, v11, v12, MEMORY[0x1E69E6720]);
  if (v13 <= 0x3F)
  {
    a7(319, a4, a5, a6);
    if (v14 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

void sub_193567450()
{
  sub_193567230(319, &qword_1ED508298, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_10_1();
  }
}

void *sub_1935674EC(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_2_11(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

void sub_193567570()
{
  sub_193567230(319, &qword_1ED5066A8, type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_3_34();
    sub_193567230(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

void sub_193567660(uint64_t a1)
{
  OUTLINED_FUNCTION_2_34(a1, &qword_1ED508290, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_3_34();
    sub_193567230(319, v2, v3, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_2_34(v4, &qword_1ED506678, MEMORY[0x1E69E7360]);
      if (v7 <= 0x3F)
      {
        OUTLINED_FUNCTION_2_34(v6, &qword_1ED5069E8, &type metadata for IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus);
        if (v9 <= 0x3F)
        {
          OUTLINED_FUNCTION_2_34(v8, &qword_1ED508070, MEMORY[0x1E69E76D8]);
          if (v11 <= 0x3F)
          {
            OUTLINED_FUNCTION_2_34(v10, qword_1ED506E98, MEMORY[0x1E69E7668]);
            if (v12 <= 0x3F)
            {
              OUTLINED_FUNCTION_15_2();
              swift_cvw_initStructMetadataWithLayoutString();
              OUTLINED_FUNCTION_10_1();
            }
          }
        }
      }
    }
  }
}

_BYTE *sub_1935677A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A26FlowJointResolverTelemetryV18JRModelInputShapesVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A26FlowJointResolverTelemetryV7RankingVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A26FlowJointResolverTelemetryV14JRModelOutputsVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary4AIMLV7VersionVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_193567904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 304))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 192);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193567940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_193567A00(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

void sub_193567AAC()
{
  OUTLINED_FUNCTION_3_34();
  sub_193567230(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v3 <= 0x3F)
  {
    OUTLINED_FUNCTION_2_34(v2, &qword_1EAE3A700, MEMORY[0x1E69E6448]);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

uint64_t sub_193567B50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 48))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_193567B8C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[5] = 0;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

uint64_t sub_193567BE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 80))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 72);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193567C24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_193567CCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 21))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_193567D08(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 4) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 21) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

uint64_t sub_193567D64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

void *sub_193567DB0(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
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
      return OUTLINED_FUNCTION_2_11(result, a2);
    }
  }

  return result;
}

uint64_t sub_193567E64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 8))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_193567EA0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 8) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

void sub_193567F0C()
{
  OUTLINED_FUNCTION_3_34();
  sub_193567230(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_193568124(319, &qword_1ED5066A0, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_2_34(v3, &qword_1EAE3A700, MEMORY[0x1E69E6448]);
      if (v5 <= 0x3F)
      {
        sub_193567230(319, &qword_1EAE3D398, type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext, MEMORY[0x1E69E62F8]);
        if (v6 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_10_1();
        }
      }
    }
  }
}

void sub_19356805C(uint64_t a1)
{
  OUTLINED_FUNCTION_2_34(a1, &qword_1EAE3A700, MEMORY[0x1E69E6448]);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_3_34();
    sub_193567230(319, v2, v3, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_2_34(v4, &qword_1EAE3D3A0, &type metadata for IntelligenceFlowJointResolverTelemetry.JRBucketedDistance);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_10_1();
      }
    }
  }
}

void sub_193568124(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_1935681EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 13))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_193568228(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 2) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 13) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

uint64_t sub_193568274()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1935682C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

void OUTLINED_FUNCTION_39_13()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *(v0 + 20);
  *(v1 - 40) = *v0;
  *(v1 - 32) = v2;
  *(v1 - 28) = v3;
  *(v1 - 24) = v4;
  *(v1 - 20) = v5;
}

uint64_t OUTLINED_FUNCTION_51_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_193448804(a1, &a65, v65, v66);
}

uint64_t OUTLINED_FUNCTION_75_10(uint64_t result)
{

  return sub_193564CF8(result);
}

uint64_t sub_1935685B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510418);
  v4 = __swift_project_value_buffer(v3, qword_1ED510418);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.ResponseGeneration.attribute(_:)(void (*a1)(void))
{
  result = sub_1935687E0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193568824(void (*a1)(void))
{
  result = sub_1935687E0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193568854(uint64_t a1)
{
  result = sub_19356887C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19356887C()
{
  result = qword_1ED507B20;
  if (!qword_1ED507B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507B20);
  }

  return result;
}

_BYTE *_s18ResponseGenerationOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowResponseGeneration.json()()
{
  OUTLINED_FUNCTION_26();
  v2 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3B0, &qword_193963838);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_76_0();
  OUTLINED_FUNCTION_6_28();
  sub_19356B5CC(v0, v13, v15);
  sub_1934470C8(v13, v9, v1);
  sub_19393C080();
  sub_193568B50();
  sub_19393C250();
  (*(v4 + 8))(v8, v2);
  sub_19344E6DC(v1, &qword_1EAE3D3B0, &qword_193963838);
  OUTLINED_FUNCTION_27();
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

unint64_t sub_193568B50()
{
  result = qword_1EAE3D3B8;
  if (!qword_1EAE3D3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3D3B0, &qword_193963838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D3B8);
  }

  return result;
}

uint64_t static IntelligenceFlowResponseGeneration.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3B0, &qword_193963838);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;

  sub_19393C060();
  sub_193568B50();
  result = sub_19393C260();
  if (!v3)
  {
    OUTLINED_FUNCTION_21_15();
    return sub_19356A000(v9, a3, v11);
  }

  return result;
}

void static IntelligenceFlowResponseGeneration.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v31 = v3;
  v32 = v2;
  v30 = v4;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3B0, &qword_193963838);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_1();
  v8 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  if (*sub_19357B508() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    (*(v10 + 16))(v14, v17, v8);
    v18 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v18, v19);
    sub_193568B50();
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v10 + 8))(v17, v8);
    if (!v0)
    {
      OUTLINED_FUNCTION_21_15();
      v22 = v31;
      sub_19356A000(v1, v31, v23);
      v24 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
      v25 = *(v24 + 20);
      sub_19344E6DC(v22 + v25, &qword_1EAE3A9E8, &qword_19394F800);
      v26 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v27 + 16))(v22 + v25, v30, v26);
      __swift_storeEnumTagSinglePayload(v22 + v25, 0, 1, v26);
      v28 = *(v24 + 24);
      sub_19344E6DC(v22 + v28, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v32, v22 + v28);
    }
  }

  else
  {
    v20 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
    *v21 = v6;
    *(v21 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowResponseGeneration.serialize()()
{
  v2 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3B0, &qword_193963838);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_6_28();
  sub_19356B5CC(v0, v6, v8);
  sub_1934470C8(v6, v2, v1);
  sub_193568B50();
  sub_19393C290();
  sub_19344E6DC(v1, &qword_1EAE3D3B0, &qword_193963838);
  return OUTLINED_FUNCTION_13_0();
}

void sub_193569124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v186 = v20;
  v187 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v29);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v31);
  v178 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_23_16(v34 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D8, &qword_193963850);
  OUTLINED_FUNCTION_47(v35);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v37);
  v179 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_23_16(v40 - v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D0, &unk_193964150);
  OUTLINED_FUNCTION_47(v41);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_53_1();
  v181 = v43;
  v180 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_23_16(v46 - v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C8, &qword_193963848);
  OUTLINED_FUNCTION_47(v47);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_53_1();
  v183 = v49;
  v182 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_1();
  v53 = v52 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v54);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_59_3();
  v56 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_1();
  v60 = v59 - v58;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C0, &qword_193963840);
  OUTLINED_FUNCTION_47(v61);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v177 - v63;
  v65 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  MEMORY[0x1EEE9AC00](0x617461646174656DLL);
  OUTLINED_FUNCTION_5_1();
  v69 = v68 - v67;
  v184 = v28;
  v185 = v26;
  v70 = v28 == v66 && v26 == 0xE800000000000000;
  if (v70 || (OUTLINED_FUNCTION_41_11(v66) & 1) != 0)
  {
    v71 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    v72 = OUTLINED_FUNCTION_49_7(*(v71 + 28));
    sub_193448758(v72, v64, v73, v74);
    OUTLINED_FUNCTION_6_3(v64, 1, v65);
    if (!v70)
    {
      sub_19356A000(v64, v69, type metadata accessor for IntelligenceFlowResponseGeneration.Metadata);
      sub_193494798(v65, &off_1F07CBFD8, v187);
      v79 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata;
      v80 = v69;
LABEL_11:
      sub_19356A24C(v80, v79);
      goto LABEL_12;
    }

    v75 = &qword_1EAE3D3C0;
    v76 = &qword_193963840;
    v77 = v64;
    goto LABEL_9;
  }

  v81 = v184 == 0x6D617473656D6974 && v185 == 0xE900000000000070;
  if (v81 || (OUTLINED_FUNCTION_41_11(0x6D617473656D6974) & 1) != 0)
  {
    v82 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    v83 = OUTLINED_FUNCTION_49_7(*(v82 + 32));
    sub_193448758(v83, v21, v84, v85);
    OUTLINED_FUNCTION_6_3(v21, 1, v56);
    if (!v70)
    {
      sub_19356A000(v21, v60, type metadata accessor for MonotonicTimestamp);
      sub_193494798(v56, &off_1F07BD958, v187);
      v79 = type metadata accessor for MonotonicTimestamp;
      v80 = v60;
      goto LABEL_11;
    }

    v75 = &qword_1EAE3B498;
    v76 = &unk_193959120;
    v77 = v21;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_30_11();
  v88 = v70 && v87 == 0xEE00747865746E6FLL;
  if (v88 || (OUTLINED_FUNCTION_41_11(v86) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33();
    if (v70)
    {
      goto LABEL_10;
    }

    v188[0] = v89;
    v90 = &type metadata for IntelligenceFlowResponseGeneration.RequestContext;
    v91 = &off_1F07CBFE8;
LABEL_28:
    sub_193494798(v90, v91, v187);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_38();
  v93 = v184 == 0xD000000000000011 && v92 == v185;
  if (v93 || (v94 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_41_11(v94) & 1) != 0))
  {
    v95 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    v96 = OUTLINED_FUNCTION_49_7(*(v95 + 40));
    v97 = v183;
    sub_193448758(v96, v183, v98, v99);
    v100 = OUTLINED_FUNCTION_131_0();
    v101 = v182;
    OUTLINED_FUNCTION_6_3(v100, v102, v182);
    if (!v70)
    {
      sub_19356A000(v97, v53, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
      sub_193494798(v101, &off_1F07CC028, v187);
      v79 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1;
      v80 = v53;
      goto LABEL_11;
    }

    v75 = &qword_1EAE3D3C8;
    v76 = &qword_193963848;
    v77 = v97;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_68_7();
  OUTLINED_FUNCTION_30_11();
  v106 = v70 && v105 == v104;
  if (v106 || (OUTLINED_FUNCTION_41_11(v103) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33();
    if (v70)
    {
      goto LABEL_10;
    }

    v188[0] = v107;
    v90 = &type metadata for IntelligenceFlowResponseGeneration.OverrideContext;
    v91 = &off_1F07CC038;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38();
  v109 = v184 == 0xD000000000000011 && v108 == v185;
  if (v109 || (v110 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_41_11(v110) & 1) != 0))
  {
    type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33();
    if (v70)
    {
      goto LABEL_10;
    }

    v188[0] = v111;
    v90 = &type metadata for IntelligenceFlowResponseGeneration.ValidationContext;
    v91 = &off_1F07CC078;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_30_11();
  v114 = v70 && v113 == 0xEE00747865746E6FLL;
  if (v114 || (OUTLINED_FUNCTION_41_11(v112) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33();
    if (v70)
    {
      goto LABEL_10;
    }

    v188[0] = v115;
    v90 = &type metadata for IntelligenceFlowResponseGeneration.CatalogContext;
    v91 = &off_1F07CC138;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_30_11();
  v119 = v70 && v117 == v118;
  if (v119 || (OUTLINED_FUNCTION_41_11(v116) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33();
    if (v70)
    {
      goto LABEL_10;
    }

    v188[0] = v120;
    v90 = &type metadata for IntelligenceFlowResponseGeneration.InferenceContext;
    v91 = &off_1F07CC178;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_30_11();
  v124 = v70 && v122 == v123;
  if (v124 || (OUTLINED_FUNCTION_41_11(v121) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33();
    if (v70)
    {
      goto LABEL_10;
    }

    v188[0] = v125;
    v90 = &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionContext;
    v91 = &off_1F07CC1B8;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_30_11();
  v128 = v70 && v127 == 0xEE00747865746E6FLL;
  if (v128 || (OUTLINED_FUNCTION_41_11(v126) & 1) != 0)
  {
    v129 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    v130 = OUTLINED_FUNCTION_49_7(*(v129 + 64));
    v26 = v181;
    sub_193448758(v130, v181, v131, v132);
    v133 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v133, v134, v180);
    if (!v70)
    {
      OUTLINED_FUNCTION_56_6();
      sub_19356A000(v135, v136, v137);
      sub_193494798(v180, &off_1F07CC0F8, v187);
      v138 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext;
LABEL_80:
      v79 = v138;
      v80 = v26;
      goto LABEL_11;
    }

    v75 = &qword_1EAE3D3D0;
    v76 = &unk_193964150;
    v77 = v181;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_30_11();
    v142 = v70 && v140 == v141;
    if (v142 || (OUTLINED_FUNCTION_41_11(v139) & 1) != 0)
    {
      v143 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
      OUTLINED_FUNCTION_49_7(*(v143 + 68));
      OUTLINED_FUNCTION_56_6();
      sub_193448758(v144, v145, v146, v147);
      v148 = OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_6_3(v148, v149, v179);
      if (!v70)
      {
        OUTLINED_FUNCTION_56_6();
        sub_19356A000(v151, v152, v153);
        sub_193494798(v179, &off_1F07CC0B8, v187);
        v138 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext;
        goto LABEL_80;
      }

      v75 = &qword_1EAE3D3D8;
      v76 = &qword_193963850;
      v150 = &a18;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_30_11();
      v157 = v70 && v155 == v156;
      if (!v157 && (OUTLINED_FUNCTION_41_11(v154) & 1) == 0)
      {
        v168 = v184 == 0x746E657665 && v185 == 0xE500000000000000;
        if (!v168 && (OUTLINED_FUNCTION_41_11(0x746E657665) & 1) == 0)
        {
          v171 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v171);
          v173 = v172;
          v174 = v185;
          *v172 = v184;
          v172[1] = v174;
          v172[5] = type metadata accessor for IntelligenceFlowResponseGeneration(0);
          __swift_allocate_boxed_opaque_existential_1Tm(v173 + 2);
          OUTLINED_FUNCTION_6_28();
          sub_19356B5CC(v186, v175, v176);
          *(v173 + 48) = 1;
          swift_willThrow();

          goto LABEL_12;
        }

        v169 = (v186 + *(type metadata accessor for IntelligenceFlowResponseGeneration(0) + 76));
        v170 = v169[96];
        if (v170 == 255)
        {
          goto LABEL_10;
        }

        memcpy(v188, v169, sizeof(v188));
        v189 = v170;
        v90 = &type metadata for IntelligenceFlowResponseGeneration.Event;
        v91 = &off_1F07CC208;
        goto LABEL_28;
      }

      v158 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
      OUTLINED_FUNCTION_49_7(*(v158 + 72));
      OUTLINED_FUNCTION_56_6();
      sub_193448758(v159, v160, v161, v162);
      v163 = OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_6_3(v163, v164, v178);
      if (!v70)
      {
        OUTLINED_FUNCTION_56_6();
        sub_19356A000(v165, v166, v167);
        sub_193494798(v178, &off_1F07C27B8, v187);
        v138 = type metadata accessor for IntelligenceFlowIdentifiers;
        goto LABEL_80;
      }

      v75 = &qword_1EAE3B948;
      v76 = &qword_193957C10;
      v150 = &a15;
    }

    v77 = *(v150 - 32);
  }

LABEL_9:
  sub_19344E6DC(v77, v75, v76);
LABEL_10:
  v78 = v187;
  *v187 = 0u;
  *(v78 + 1) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_193569CA8()
{
  OUTLINED_FUNCTION_26();
  v38 = v1;
  v39 = v0;
  v4 = v3;
  v6 = v5;
  v37 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_47(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v22 = v6 == 0x7365757165526669 && v4 == 0xEB00000000644974;
  if (v22 || (OUTLINED_FUNCTION_0_18(0x7365757165526669, 0xEB00000000644974) & 1) != 0)
  {
    sub_193448758(v39, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v2, 1, v14);
    if (!v22)
    {
      OUTLINED_FUNCTION_1_38();
      sub_19356A000(v2, v21, v25);
      sub_193494798(v14, &off_1F07C3F90, v37);
      OUTLINED_FUNCTION_0_39();
      v27 = v21;
LABEL_11:
      sub_19356A24C(v27, v26);
      goto LABEL_12;
    }

    v23 = v2;
  }

  else
  {
    v28 = v6 == 0x53676E6974736F70 && v4 == 0xED000064496E6170;
    if (v28 || (OUTLINED_FUNCTION_0_18(0x53676E6974736F70, 0xED000064496E6170) & 1) != 0)
    {
      if ((*(v39 + *(type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0) + 20) + 8) & 1) == 0)
      {
        sub_1934948FC();
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v29 = v6 == 1682532210 && v4 == 0xE400000000000000;
    if (!v29 && (OUTLINED_FUNCTION_0_18(1682532210, 0xE400000000000000) & 1) == 0)
    {
      v32 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v32);
      v34 = v33;
      *v33 = v6;
      v33[1] = v4;
      v33[5] = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v34 + 2);
      sub_19356B5CC(v39, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowResponseGeneration.Metadata);
      *(v34 + 48) = 1;
      swift_willThrow();

      goto LABEL_12;
    }

    v30 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
    sub_193448758(v39 + *(v30 + 24), v12, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v12, 1, v14);
    if (!v22)
    {
      OUTLINED_FUNCTION_1_38();
      sub_19356A000(v12, v18, v31);
      sub_193494798(v14, &off_1F07C3F90, v37);
      OUTLINED_FUNCTION_0_39();
      v27 = v18;
      goto LABEL_11;
    }

    v23 = v12;
  }

  sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  v24 = v37;
  *v37 = 0u;
  *(v24 + 1) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19356A000(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

void sub_19356A074()
{
  OUTLINED_FUNCTION_25_17();
  v5 = v4;
  v6 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v8 = *v0;
  OUTLINED_FUNCTION_38();
  v11 = v2 == 0xD000000000000010 && v10 == v1;
  if (!v11 && (OUTLINED_FUNCTION_10_26(v9, v10) & 1) == 0)
  {
    v14 = OUTLINED_FUNCTION_24_3();
    v15 = v11 && v1 == 0xE500000000000000;
    if (!v15 && (OUTLINED_FUNCTION_5_5(v14, 0xE500000000000000) & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_22_16();
      if (v11 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v11)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v18, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v11)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_2_35();
      v12 = &type metadata for IntelligenceFlowResponseGeneration.RequestFailed;
      v13 = &off_1F07CC018;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v11)
    {
      swift_projectBox();
      OUTLINED_FUNCTION_23_23();
      sub_19356B5CC(v16, v3, v17);
      sub_193494798(v6, &off_1F07CC008, v5);
      sub_19356A24C(v3, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded);
      goto LABEL_27;
    }

LABEL_26:
    v20 = sub_19349AB64();
    v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
    OUTLINED_FUNCTION_64(v21, v22);
    OUTLINED_FUNCTION_19_1(v23, &type metadata for IntelligenceFlowResponseGeneration.RequestContext);

    goto LABEL_27;
  }

  if (v8 >> 62)
  {
    goto LABEL_26;
  }

  v12 = &type metadata for IntelligenceFlowResponseGeneration.RequestStarted;
  v13 = &off_1F07CBFF8;
LABEL_8:
  sub_193494798(v12, v13, v5);
LABEL_27:
  OUTLINED_FUNCTION_72_0();
}

uint64_t sub_19356A24C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

int *sub_19356A2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v21 = a1 == 0x64496B6E696CLL && a2 == 0xE600000000000000;
  if (v21 || (OUTLINED_FUNCTION_67(0x64496B6E696CLL, 0xE600000000000000) & 1) != 0)
  {
    sub_193448758(v3, v4, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v4, 1, v13);
    if (!v21)
    {
      OUTLINED_FUNCTION_1_38();
      sub_19356A000(v4, v20, v25);
      sub_193494798(v13, &off_1F07C3F90, v51);
      OUTLINED_FUNCTION_0_39();
      v27 = v20;
      return sub_19356A24C(v27, v26);
    }

    v22 = v4;
LABEL_9:
    result = sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
    v24 = v51;
    *v51 = 0u;
    *(v24 + 1) = 0u;
    return result;
  }

  v28 = a1 == 0x65736E6F70736572 && a2 == 0xEE00656372756F53;
  if (v28 || (OUTLINED_FUNCTION_67(0x65736E6F70736572, 0xEE00656372756F53) & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    v29 = v3 + result[5];
    if (*(v29 + 9))
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v30 = OUTLINED_FUNCTION_29_15();
  v32 = a1 == v30 && a2 == v31;
  if (v32 || (OUTLINED_FUNCTION_67(v30, v31) & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    v33 = result[6];
LABEL_25:
    v34 = (v3 + v33);
    if (v34[1])
    {
      goto LABEL_10;
    }

    v52 = *v34;
    return sub_1934948FC();
  }

  v35 = OUTLINED_FUNCTION_45_12();
  v37 = a1 == v35 && a2 == v36;
  if (v37 || (OUTLINED_FUNCTION_67(v35, 0xE900000000000074) & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    v33 = result[7];
    goto LABEL_25;
  }

  v38 = OUTLINED_FUNCTION_80_1();
  v40 = a1 == v38 && a2 == v39;
  if (v40 || (OUTLINED_FUNCTION_67(v38, v39) & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    v29 = v3 + result[8];
    if (*(v29 + 9))
    {
      goto LABEL_10;
    }

LABEL_18:
    OUTLINED_FUNCTION_43_1(v29);
    return sub_1934948FC();
  }

  v41 = a1 == 0xD000000000000011 && 0x8000000193A197E0 == a2;
  if (v41 || (v42 = OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_67(v42, v43) & 1) != 0))
  {
    v44 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    sub_193448758(v3 + *(v44 + 36), v11, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v11, 1, v13);
    if (!v21)
    {
      OUTLINED_FUNCTION_1_38();
      sub_19356A000(v11, v17, v45);
      sub_193494798(v13, &off_1F07C3F90, v51);
      OUTLINED_FUNCTION_0_39();
      v27 = v17;
      return sub_19356A24C(v27, v26);
    }

    v22 = v11;
    goto LABEL_9;
  }

  v46 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v46);
  v48 = v47;
  *v47 = a1;
  v47[1] = a2;
  v47[5] = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v48 + 2);
  OUTLINED_FUNCTION_23_23();
  sub_19356B5CC(v3, v49, v50);
  *(v48 + 48) = 1;
  swift_willThrow();
}

void sub_19356A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0x6E6F73616572;
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v13 || (v15 = v8[3], v35 = v8[2], v16 = *(v8 + 36), v17 = *(v8 + 8), v10 = sub_19393CA30(), (v10 & 1) != 0))
  {
    if (v12)
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    OUTLINED_FUNCTION_77_2(v10, &type metadata for IntelligenceFlowResponseGeneration.FatalError, a3, a4, a5, a6, a7, a8, v34, v11);
    sub_1934948FC();
  }

  else
  {
    v18 = v17 | (v16 << 32);
    v19 = OUTLINED_FUNCTION_97() & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    v25 = a1 == v19 && a2 == 0xE500000000000000;
    if (v25 || (v19 = sub_19393CA30(), (v19 & 1) != 0))
    {
      if (v15 == 1)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_77_2(v19, &type metadata for IntelligenceFlowResponseGeneration.RGError, &off_1F07CC1F8, v20, v21, v22, v23, v24, v34, v35);
      sub_193494798(v26, v27, v28);
    }

    else
    {
      v29 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v29);
      v30 = v18;
      v32 = v31;
      *v31 = a1;
      v31[1] = a2;
      v31[5] = &type metadata for IntelligenceFlowResponseGeneration.RequestFailed;
      v33 = swift_allocObject();
      v32[2] = v33;
      *(v33 + 16) = v11;
      *(v33 + 24) = v12;
      *(v33 + 32) = v35;
      *(v33 + 40) = v15;
      *(v33 + 48) = v30;
      *(v33 + 52) = BYTE4(v30);
      OUTLINED_FUNCTION_26_0();

      sub_19350CB08(v35, v15);
    }
  }
}

void sub_19356A8BC(uint64_t a1, uint64_t a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_1();
  v9 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v11 = a1 == 0x64496B6E696CLL && a2 == 0xE600000000000000;
  if (!v11 && (OUTLINED_FUNCTION_59_0(0x64496B6E696CLL, 0xE600000000000000) & 1) == 0)
  {
    v17 = OUTLINED_FUNCTION_31_16();
    v19 = a1 == v17 && a2 == v18;
    if (v19 || (OUTLINED_FUNCTION_59_0(v17, v18) & 1) != 0)
    {
      v20 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 20);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_37_10();
      v23 = a1 == v21 && a2 == v22;
      if (v23 || (OUTLINED_FUNCTION_59_0(v21, v22) & 1) != 0)
      {
        v20 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 24);
      }

      else
      {
        v24 = a1 == 0x6449746163 && a2 == 0xE500000000000000;
        if (v24 || (OUTLINED_FUNCTION_59_0(0x6449746163, 0xE500000000000000) & 1) != 0)
        {
          v20 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 28);
        }

        else
        {
          v25 = OUTLINED_FUNCTION_28_12();
          v27 = a1 == v25 && a2 == v26;
          if (!v27 && (OUTLINED_FUNCTION_59_0(v25, v26) & 1) == 0)
          {
            v28 = sub_19349AB64();
            OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v28);
            v30 = v29;
            *v29 = a1;
            v29[1] = a2;
            v29[5] = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
            boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v30 + 2);
            sub_19356B5CC(v2, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
            OUTLINED_FUNCTION_65_1();

            goto LABEL_18;
          }

          v20 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 32);
        }
      }
    }

    if (*(v2 + v20 + 8))
    {
      sub_1934948FC();
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_193448758(v2, v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v3, 1, v9);
  if (v11)
  {
    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_1_38();
  sub_19356A000(v3, v4, v12);
  OUTLINED_FUNCTION_19_3();
  sub_193494798(v13, v14, v15);
  OUTLINED_FUNCTION_0_39();
  sub_19356A24C(v4, v16);
LABEL_18:
  OUTLINED_FUNCTION_72_0();
}

id sub_19356AB80()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_10_26(v2, v3) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_24_16();
      v11 = &type metadata for IntelligenceFlowResponseGeneration.OverrideStarted;
      v12 = &off_1F07CC048;
LABEL_8:
      OUTLINED_FUNCTION_77_2(v5, v11, v12, v6, v7, v8, v9, v10, v31, v32);
      return sub_193494798(v13, v14, v15);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_24_3();
    v18 = v4 && v1 == 0xE500000000000000;
    if (!v18 && (OUTLINED_FUNCTION_5_5(v17, 0xE500000000000000) & 1) == 0)
    {
      v25 = OUTLINED_FUNCTION_22_16();
      if (v4 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v4)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v25, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v4)
        {
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_11_20();
      v11 = &type metadata for IntelligenceFlowResponseGeneration.OverrideFailed;
      v12 = &off_1F07CC068;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v4)
    {
      OUTLINED_FUNCTION_77_2(v19, &type metadata for IntelligenceFlowResponseGeneration.OverrideEnded, &off_1F07CC058, v20, v21, v22, v23, v24, v31, *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10));
      return sub_193494798(v13, v14, v15);
    }
  }

LABEL_27:
  v27 = sub_19349AB64();
  v28 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v27);
  OUTLINED_FUNCTION_64(v28, v29);
  OUTLINED_FUNCTION_19_1(v30, &type metadata for IntelligenceFlowResponseGeneration.OverrideContext);
}

void sub_19356AD10()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  if (v1 != 0x656469727265766FLL || v2 != 0xEC00000065707954)
  {
    v8 = v1;
    v9 = v0[2];
    v10 = v0[3];
    v16 = v9;
    if ((OUTLINED_FUNCTION_55_4(0x656469727265766FLL, 0xEC00000065707954) & 1) == 0)
    {
      v11 = v8 == 0x656469727265766FLL && v3 == 0xEA00000000006449;
      if (!v11 && (OUTLINED_FUNCTION_55_4(0x656469727265766FLL, 0xEA00000000006449) & 1) == 0)
      {
        v12 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
        v14 = v13;
        *v13 = v8;
        v13[1] = v3;
        v13[5] = &type metadata for IntelligenceFlowResponseGeneration.OverrideEnded;
        OUTLINED_FUNCTION_95();
        v15 = swift_allocObject();
        v14[2] = v15;
        *(v15 + 16) = v4;
        *(v15 + 24) = v5;
        *(v15 + 25) = v6;
        *(v15 + 32) = v16;
        *(v15 + 40) = v10;
        *(v14 + 48) = 1;
        swift_willThrow();

        goto LABEL_16;
      }

      if (!v10)
      {
        goto LABEL_7;
      }

LABEL_15:
      OUTLINED_FUNCTION_118_0();
      goto LABEL_16;
    }
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  OUTLINED_FUNCTION_29();
LABEL_16:
  OUTLINED_FUNCTION_54_0();
}

id sub_19356AEB4()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_10_26(v2, v3) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_24_16();
      v11 = &type metadata for IntelligenceFlowResponseGeneration.ValidationStarted;
      v12 = &off_1F07CC088;
LABEL_8:
      OUTLINED_FUNCTION_77_2(v5, v11, v12, v6, v7, v8, v9, v10, v25, v26);
      return sub_193494798(v13, v14, v15);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_24_3();
    v18 = v4 && v1 == 0xE500000000000000;
    if (!v18 && (OUTLINED_FUNCTION_5_5(v17, 0xE500000000000000) & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_22_16();
      if (v4 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v19, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_11_20();
      v11 = &type metadata for IntelligenceFlowResponseGeneration.ValidationFailed;
      v12 = &off_1F07CC0A8;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v4)
    {
      OUTLINED_FUNCTION_53_11();
      v11 = &type metadata for IntelligenceFlowResponseGeneration.ValidationEnded;
      v12 = &off_1F07CC098;
      goto LABEL_8;
    }
  }

LABEL_26:
  v21 = sub_19349AB64();
  v22 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
  OUTLINED_FUNCTION_64(v22, v23);
  OUTLINED_FUNCTION_19_1(v24, &type metadata for IntelligenceFlowResponseGeneration.ValidationContext);
}

void sub_19356B06C()
{
  OUTLINED_FUNCTION_46_12();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_76_0();
  v9 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_38();
  v13 = v4 == v6 && v12 == v2;
  if (v13 || (v11 = OUTLINED_FUNCTION_0_18(0xD000000000000010, v12), (v11 & 1) != 0))
  {
    v14 = &type metadata for IntelligenceFlowResponseGeneration.CacheManagerCallStarted;
    v15 = &off_1F07CC0C8;
LABEL_7:
    OUTLINED_FUNCTION_85_10(v11, v14, v15);
    goto LABEL_8;
  }

  v11 = OUTLINED_FUNCTION_66_0();
  v16 = v13 && v2 == 0xE500000000000000;
  if (v16 || (v11 = OUTLINED_FUNCTION_0_18(v11, 0xE500000000000000), (v11 & 1) != 0))
  {
    v14 = &type metadata for IntelligenceFlowResponseGeneration.CacheManagerCallEnded;
    v15 = &off_1F07CC0D8;
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_79_2();
  v21 = v13 && v2 == 0xE600000000000000;
  if (v21 || (v17 = OUTLINED_FUNCTION_0_18(v17, 0xE600000000000000), (v17 & 1) != 0))
  {
    v22 = OUTLINED_FUNCTION_27_14(v17, v18, v19, v20);
    v23 = OUTLINED_FUNCTION_85_10(v22, &type metadata for IntelligenceFlowResponseGeneration.CacheManagerCallFailed, &off_1F07CC0E8);
    OUTLINED_FUNCTION_82_8(v23, v24, v25, v26);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_60_2();
    v28 = v13 && v2 == 0xE700000000000000;
    if (v28 || (OUTLINED_FUNCTION_0_18(v27, 0xE700000000000000) & 1) != 0)
    {
      v29 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(0);
      sub_193448758(v0 + *(v29 + 28), v3, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v3, 1, v9);
      if (v13)
      {
        sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_104();
      }

      else
      {
        OUTLINED_FUNCTION_1_38();
        sub_19356A000(v3, v5, v30);
        OUTLINED_FUNCTION_19_3();
        sub_193494798(v31, v32, v33);
        OUTLINED_FUNCTION_0_39();
        sub_19356A24C(v5, v34);
      }
    }

    else
    {
      v35 = sub_19349AB64();
      v36 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v35);
      v38 = OUTLINED_FUNCTION_75_2(v36, v37);
      *(v1 + 40) = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v38);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v1 + 16));
      sub_19356B5CC(v0, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext);
      OUTLINED_FUNCTION_65_1();
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_72_0();
}

void sub_19356B35C()
{
  OUTLINED_FUNCTION_46_12();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_76_0();
  v9 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_38();
  v13 = v4 == v6 && v12 == v2;
  if (v13 || (v11 = OUTLINED_FUNCTION_0_18(0xD000000000000010, v12), (v11 & 1) != 0))
  {
    v14 = &type metadata for IntelligenceFlowResponseGeneration.GMSCallStarted;
    v15 = &off_1F07CC108;
LABEL_7:
    OUTLINED_FUNCTION_85_10(v11, v14, v15);
    goto LABEL_8;
  }

  v11 = OUTLINED_FUNCTION_66_0();
  v16 = v13 && v2 == 0xE500000000000000;
  if (v16 || (v11 = OUTLINED_FUNCTION_0_18(v11, 0xE500000000000000), (v11 & 1) != 0))
  {
    v14 = &type metadata for IntelligenceFlowResponseGeneration.GMSCallEnded;
    v15 = &off_1F07CC118;
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_79_2();
  v21 = v13 && v2 == 0xE600000000000000;
  if (v21 || (v17 = OUTLINED_FUNCTION_0_18(v17, 0xE600000000000000), (v17 & 1) != 0))
  {
    v22 = OUTLINED_FUNCTION_27_14(v17, v18, v19, v20);
    v23 = OUTLINED_FUNCTION_85_10(v22, &type metadata for IntelligenceFlowResponseGeneration.GMSCallFailed, &off_1F07CC128);
    OUTLINED_FUNCTION_82_8(v23, v24, v25, v26);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_60_2();
    v28 = v13 && v2 == 0xE700000000000000;
    if (v28 || (OUTLINED_FUNCTION_0_18(v27, 0xE700000000000000) & 1) != 0)
    {
      v29 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(0);
      sub_193448758(v0 + *(v29 + 28), v3, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v3, 1, v9);
      if (v13)
      {
        sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_104();
      }

      else
      {
        OUTLINED_FUNCTION_1_38();
        sub_19356A000(v3, v5, v30);
        OUTLINED_FUNCTION_19_3();
        sub_193494798(v31, v32, v33);
        OUTLINED_FUNCTION_0_39();
        sub_19356A24C(v5, v34);
      }
    }

    else
    {
      v35 = sub_19349AB64();
      v36 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v35);
      v38 = OUTLINED_FUNCTION_75_2(v36, v37);
      *(v1 + 40) = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v38);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v1 + 16));
      sub_19356B5CC(v0, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext);
      OUTLINED_FUNCTION_65_1();
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_72_0();
}

uint64_t sub_19356B5CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

id sub_19356B6A8()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_10_26(v2, v3) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_24_16();
      v11 = &type metadata for IntelligenceFlowResponseGeneration.CatalogStarted;
      v12 = &off_1F07CC148;
LABEL_8:
      OUTLINED_FUNCTION_77_2(v5, v11, v12, v6, v7, v8, v9, v10, v25, v26);
      return sub_193494798(v13, v14, v15);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_24_3();
    v18 = v4 && v1 == 0xE500000000000000;
    if (!v18 && (OUTLINED_FUNCTION_5_5(v17, 0xE500000000000000) & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_22_16();
      if (v4 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v19, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_11_20();
      v11 = &type metadata for IntelligenceFlowResponseGeneration.CatalogFailed;
      v12 = &off_1F07CC168;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v4)
    {
      OUTLINED_FUNCTION_53_11();
      v11 = &type metadata for IntelligenceFlowResponseGeneration.CatalogEnded;
      v12 = &off_1F07CC158;
      goto LABEL_8;
    }
  }

LABEL_26:
  v21 = sub_19349AB64();
  v22 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
  OUTLINED_FUNCTION_64(v22, v23);
  OUTLINED_FUNCTION_19_1(v24, &type metadata for IntelligenceFlowResponseGeneration.CatalogContext);
}

void sub_19356B7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = a1 == 0x737473697865 && a2 == 0xE600000000000000;
  if (v6 || (v10 = *(v3 + 1), v9 = *(v3 + 2), (OUTLINED_FUNCTION_44_0(0x737473697865, 0xE600000000000000) & 1) != 0))
  {
    if (v5 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_15;
  }

  v11 = a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973;
  if (v11 || (OUTLINED_FUNCTION_44_0(0x7265567465737361, 0xEC0000006E6F6973) & 1) != 0)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1934948FC();
    return;
  }

  v12 = sub_19349AB64();
  v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
  *v14 = a1;
  *(v14 + 8) = a2;
  *(v14 + 32) = v9;
  *(v14 + 40) = a3;
  *(v14 + 16) = v5;
  *(v14 + 24) = v10;
  OUTLINED_FUNCTION_23_2(v13, v14);
}