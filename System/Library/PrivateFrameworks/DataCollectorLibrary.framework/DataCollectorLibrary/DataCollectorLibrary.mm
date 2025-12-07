uint64_t sub_2485D4EB0(uint64_t a1, char a2, uint64_t (*a3)(void *))
{
  v4 = sub_2485DFDD8();
  v5 = a3(v4);
  OUTLINED_FUNCTION_94(v5, v6);
  return sub_2485DFDE8();
}

uint64_t sub_2485D4F08()
{
  OUTLINED_FUNCTION_33();
  sub_2485DDA70();
  v0 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E238](v0);
}

uint64_t sub_2485D4F84(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5 = sub_2485DFDD8();
  v6 = a4(v5);
  OUTLINED_FUNCTION_94(v6, v7);
  return sub_2485DFDE8();
}

uint64_t sub_2485D5038@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Aiml_Dpg_Service_V1_DataEventErrorCode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2485D509C()
{
  OUTLINED_FUNCTION_33();
  sub_2485DDAC4();
  v0 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E238](v0);
}

uint64_t sub_2485D5188()
{
  OUTLINED_FUNCTION_33();
  sub_2485DDB18();
  v0 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E238](v0);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_45(v3);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_69(*(v5 + 24));
  OUTLINED_FUNCTION_96();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  OUTLINED_FUNCTION_49();
  if (v6)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = xmmword_2485DFF90;
    *(a1 + 48) = xmmword_2485DFF90;
    sub_2485DFBB8();
    result = OUTLINED_FUNCTION_49();
    if (!v6)
    {
      return sub_2485DD704(v1, &qword_27EE9E460, &qword_2485DFFF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_84();
    return sub_2485D5B98();
  }

  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.payload.setter()
{
  v1 = OUTLINED_FUNCTION_38();
  v2 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(v1);
  sub_2485DD704(v0 + *(v2 + 24), &qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_8();
  sub_2485D5B98();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  OUTLINED_FUNCTION_90();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_65(a1);
  *(v1 + 32) = xmmword_2485DFF90;
  *(v1 + 48) = xmmword_2485DFF90;
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  return sub_2485DFBB8();
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

void (*Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.payload.modify(uint64_t *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_45(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_10();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 24);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_69(v11);
  sub_2485D5928();
  v12 = OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_61(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[8] = 1;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0xE000000000000000;
    *(v10 + 2) = xmmword_2485DFF90;
    *(v10 + 3) = xmmword_2485DFF90;
    sub_2485DFBB8();
    v15 = OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_61(v15, v16, v7);
    if (!v14)
    {
      sub_2485DD704(v6, &qword_27EE9E460, &qword_2485DFFF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
    sub_2485D5B98();
  }

  return sub_2485D568C;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.hasPayload.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_45(v0);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_69(*(v2 + 24));
  sub_2485D5928();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v3 = OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_61(v3, v4, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_84();
  sub_2485DD704(v8, v9, &qword_2485DFFF0);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.clearPayload()()
{
  v1 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  sub_2485DD704(v0 + *(v1 + 24), &qword_27EE9E460, &qword_2485DFFF0);
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v2 = OUTLINED_FUNCTION_91();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.headers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_45(v3);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_69(*(v5 + 28));
  OUTLINED_FUNCTION_96();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  OUTLINED_FUNCTION_49();
  if (v6)
  {
    Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.init()(a1);
    result = OUTLINED_FUNCTION_49();
    if (!v6)
    {
      return sub_2485DD704(v1, &qword_27EE9E468, &qword_2485DFFF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_84();
    return sub_2485D5B98();
  }

  return result;
}

uint64_t sub_2485D5928()
{
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10();
  v3 = OUTLINED_FUNCTION_32();
  v4(v3);
  return v0;
}

uint64_t sub_2485D5A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_45(v8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_2485D63D4();
  return a7(v11);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.metadata.setter()
{
  v1 = OUTLINED_FUNCTION_38();
  v2 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(v1);
  sub_2485DD704(v0 + *(v2 + 28), &qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_7();
  sub_2485D5B98();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  OUTLINED_FUNCTION_90();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_2485DFFA0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = sub_2485DFD78();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  return sub_2485DFBB8();
}

uint64_t sub_2485D5B98()
{
  OUTLINED_FUNCTION_60();
  v1(0);
  OUTLINED_FUNCTION_10();
  v2 = OUTLINED_FUNCTION_32();
  v3(v2);
  return v0;
}

void (*Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.metadata.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_45(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_10();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0) + 28);
  sub_2485D5928();
  OUTLINED_FUNCTION_61(v6, 1, v7);
  if (v11)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0;
    *(v10 + 2) = xmmword_2485DFFA0;
    v10[6] = 0xE000000000000000;
    v10[7] = 0;
    v10[8] = 0xE000000000000000;
    v10[9] = 0;
    v10[10] = 0xE000000000000000;
    v10[11] = sub_2485DFD78();
    sub_2485DFBB8();
    OUTLINED_FUNCTION_61(v6, 1, v7);
    if (!v11)
    {
      sub_2485DD704(v6, &qword_27EE9E468, &qword_2485DFFF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
    sub_2485D5B98();
  }

  return sub_2485D5DA8;
}

void sub_2485D5DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_42();
  v24 = v23;
  v25 = v22;
  v27 = *(*v26 + 10);
  v28 = (*v26)[3];
  v29 = (*v26)[4];
  v30 = (*v26)[2];
  v41 = (*v26)[1];
  v31 = **v26;
  if (v32)
  {
    sub_2485D63D4();
    sub_2485DD704(v31 + v27, v25, v24);
    sub_2485D5B98();
    OUTLINED_FUNCTION_90();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v30);
    sub_2485D642C();
  }

  else
  {
    sub_2485DD704(v31 + v27, v22, v23);
    sub_2485D5B98();
    OUTLINED_FUNCTION_90();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v30);
  }

  free(v29);
  free(v28);
  free(v41);
  OUTLINED_FUNCTION_41();

  free(v39);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.hasMetadata.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_45(v0);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_69(*(v2 + 28));
  sub_2485D5928();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v3 = OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_61(v3, v4, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = OUTLINED_FUNCTION_84();
  sub_2485DD704(v8, v9, &qword_2485DFFF8);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.clearMetadata()()
{
  v1 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  sub_2485DD704(v0 + *(v1 + 28), &qword_27EE9E468, &qword_2485DFFF8);
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  v2 = OUTLINED_FUNCTION_91();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_71();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(v0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_36();

  return v2(v1);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_38();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(v0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_74();

  return v2(v1);
}

void (*Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(v0);
  return nullsub_1;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  sub_2485DFBB8();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.fqn.setter()
{
  OUTLINED_FUNCTION_33();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.requestID.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_32();
  sub_2485D6480(v1, v2);
  return OUTLINED_FUNCTION_32();
}

void Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.requestID.setter()
{
  OUTLINED_FUNCTION_33();
  sub_2485D64D8(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.sourceCluster.setter()
{
  OUTLINED_FUNCTION_33();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.stream.setter()
{
  OUTLINED_FUNCTION_33();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t sub_2485D63D4()
{
  OUTLINED_FUNCTION_60();
  v1(0);
  OUTLINED_FUNCTION_10();
  v2 = OUTLINED_FUNCTION_32();
  v3(v2);
  return v0;
}

uint64_t sub_2485D642C()
{
  v1 = OUTLINED_FUNCTION_38();
  v2(v1);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_2485D6480(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_2485D64D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.legacyHeaders.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_71();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(v0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_36();

  return v2(v1);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_38();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(v0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_74();

  return v2(v1);
}

void (*Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(v0);
  return nullsub_1;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.payloadType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.schemaName.setter()
{
  OUTLINED_FUNCTION_33();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.schemaFingerprint.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_32();
  sub_2485D6480(v1, v2);
  return OUTLINED_FUNCTION_32();
}

void Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.schemaFingerprint.setter()
{
  OUTLINED_FUNCTION_33();
  sub_2485D64D8(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.body.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_32();
  sub_2485D6480(v1, v2);
  return OUTLINED_FUNCTION_32();
}

void Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.body.setter()
{
  OUTLINED_FUNCTION_33();
  sub_2485D64D8(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

void (*Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(v0);
  return nullsub_1;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.requestID.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_32();
  sub_2485D6480(v1, v2);
  return OUTLINED_FUNCTION_32();
}

void Com_Apple_Aiml_Dpg_Service_V1_DataEventError.requestID.setter()
{
  OUTLINED_FUNCTION_33();
  sub_2485D64D8(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.code.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.message.setter()
{
  OUTLINED_FUNCTION_33();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t sub_2485D6A30()
{
  v0 = OUTLINED_FUNCTION_71();
  v1(v0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_10();
  v2 = OUTLINED_FUNCTION_36();

  return v3(v2);
}

uint64_t sub_2485D6AD8()
{
  v0 = OUTLINED_FUNCTION_38();
  v1(v0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_10();
  v2 = OUTLINED_FUNCTION_74();

  return v3(v2);
}

void (*Com_Apple_Aiml_Dpg_Service_V1_DataEventError.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(v0);
  return nullsub_1;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_2485DFF90;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
  return sub_2485DFBB8();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_71();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(v0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_36();

  return v2(v1);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_38();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(v0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_74();

  return v2(v1);
}

void (*Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(v0);
  return nullsub_1;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_2485DFF90;
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0);
  return sub_2485DFBB8();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.errors.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_71();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(v0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_36();

  return v2(v1);
}

uint64_t sub_2485D6EAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_38();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(v0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_74();

  return v2(v1);
}

void (*Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_38();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(v0);
  return nullsub_1;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_65(a1);
  *(v1 + 32) = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0);
  return sub_2485DFBB8();
}

void sub_2485D6FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_42();
  v9 = sub_2485DFD68();
  __swift_allocate_value_buffer(v9, qword_27EEA01F8);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11();
  v10 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_24(v10, xmmword_2485DFFB0);
  *v8 = 0;
  *v7 = "PAYLOAD_UNKNOWN";
  *(v7 + 8) = 15;
  *(v7 + 16) = 2;
  sub_2485DFD48();
  OUTLINED_FUNCTION_10();
  v12 = *(v11 + 104);
  v13 = OUTLINED_FUNCTION_34();
  (v12)(v13);
  v14 = OUTLINED_FUNCTION_21();
  *v15 = 1;
  OUTLINED_FUNCTION_62(v14, "PAYLOAD_AVRO_RECORD");
  OUTLINED_FUNCTION_40();
  v12();
  v16 = OUTLINED_FUNCTION_23();
  *v17 = 2;
  OUTLINED_FUNCTION_62(v16, "PAYLOAD_PROTO_RECORD");
  OUTLINED_FUNCTION_40();
  v12();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_2485D71A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_42();
  v8 = sub_2485DFD68();
  __swift_allocate_value_buffer(v8, qword_27EEA0210);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11();
  v10 = *(v9 + 72);
  OUTLINED_FUNCTION_56();
  v13 = OUTLINED_FUNCTION_67((v12 & ~v11) - v10 + 8 * v10, v11);
  OUTLINED_FUNCTION_53(v13, xmmword_2485DFFC0);
  v15 = v7 + v14;
  *v7 = 0;
  *v15 = "EVENT_HEADERS_INVALID";
  *(v15 + 1) = 21;
  v15[16] = 2;
  sub_2485DFD48();
  OUTLINED_FUNCTION_10();
  v17 = *(v16 + 104);
  OUTLINED_FUNCTION_39();
  v17();
  v18 = OUTLINED_FUNCTION_21();
  *v19 = 1;
  *v18 = "EVENT_BODY_INVALID";
  v18[1] = 18;
  v20 = OUTLINED_FUNCTION_37(v18);
  (v17)(v20);
  v21 = OUTLINED_FUNCTION_23();
  *v22 = 2;
  *v21 = "EVENT_BODY_TOO_LARGE";
  v21[1] = 20;
  v23 = OUTLINED_FUNCTION_37(v21);
  (v17)(v23);
  OUTLINED_FUNCTION_31(3 * v10);
  OUTLINED_FUNCTION_92(v24);
  *v25 = "EVENT_SCHEMA_UNKNOWN";
  v25[1] = 20;
  v26 = OUTLINED_FUNCTION_37(v25);
  (v17)(v26);
  v27 = (v7 + 4 * v10);
  v28 = (v27 + dword_27EEA0248);
  *v27 = 4;
  *v28 = "EVENT_UNSUPPORTED";
  v28[1] = 17;
  v29 = OUTLINED_FUNCTION_37(v28);
  (v17)(v29);
  v30 = OUTLINED_FUNCTION_31(5 * v10);
  *v31 = 5;
  *v30 = "EVENT_TIMEOUT";
  v30[1] = 13;
  v32 = OUTLINED_FUNCTION_37(v30);
  (v17)(v32);
  v33 = (v7 + 6 * v10);
  v34 = v33 + dword_27EEA0248;
  *v33 = 6;
  *v34 = "EVENT_PRODUCER_FAILED";
  *(v34 + 1) = 21;
  v34[16] = 2;
  OUTLINED_FUNCTION_39();
  v17();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

void sub_2485D7418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_42();
  v9 = sub_2485DFD68();
  __swift_allocate_value_buffer(v9, qword_27EEA0228);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11();
  v10 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_24(v10, xmmword_2485DFFB0);
  *v8 = 0;
  *v7 = "OK";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  sub_2485DFD48();
  OUTLINED_FUNCTION_10();
  v12 = *(v11 + 104);
  v13 = OUTLINED_FUNCTION_34();
  (v12)(v13);
  v14 = OUTLINED_FUNCTION_21();
  *v15 = 1;
  OUTLINED_FUNCTION_62(v14, "FAILED_ALL");
  OUTLINED_FUNCTION_40();
  v12();
  v16 = OUTLINED_FUNCTION_23();
  *v17 = 2;
  OUTLINED_FUNCTION_62(v16, "FAILED_PARTIAL");
  OUTLINED_FUNCTION_40();
  v12();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

void sub_2485D75C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_42();
  v9 = sub_2485DFD68();
  __swift_allocate_value_buffer(v9, &qword_27EEA0240);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11();
  v10 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_24(v10, xmmword_2485DFFB0);
  *v8 = 4;
  *v7 = "payload";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  sub_2485DFD48();
  OUTLINED_FUNCTION_10();
  v12 = *(v11 + 104);
  v13 = OUTLINED_FUNCTION_34();
  (v12)(v13);
  v14 = OUTLINED_FUNCTION_21();
  *v15 = 6;
  *v14 = "headers";
  *(v14 + 8) = 7;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_40();
  v12();
  v16 = OUTLINED_FUNCTION_23();
  *v17 = 7;
  *v16 = "metadata";
  *(v16 + 8) = 8;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_40();
  v12();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 7:
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
        OUTLINED_FUNCTION_2();
        v4 = &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata;
        v5 = &unk_27EE9E578;
LABEL_10:
        sub_2485DD75C(v5, v3, v4);
        OUTLINED_FUNCTION_27();
        sub_2485DFC88();
        break;
      case 6:
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
        OUTLINED_FUNCTION_0();
        sub_2485DD75C(&qword_27EE9E470, v6, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_27();
        sub_2485DFC78();
        break;
      case 4:
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
        OUTLINED_FUNCTION_0();
        v4 = &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage;
        v5 = &qword_27EE9E470;
        goto LABEL_10;
    }
  }
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2485D79A4(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
      OUTLINED_FUNCTION_0();
      sub_2485DD75C(v9, v10, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
      OUTLINED_FUNCTION_18();
      sub_2485DFD28();
    }

    sub_2485D7B64(v3, a1, a2, a3);
    type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
    return OUTLINED_FUNCTION_22();
  }

  return result;
}

uint64_t sub_2485D79A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_72(a1, a2, a3, a4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_45(v5);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_86();
  v8 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(v7);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v12 = v11 - v10;
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  OUTLINED_FUNCTION_95();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    return sub_2485DD704(v4, &qword_27EE9E460, &qword_2485DFFF0);
  }

  OUTLINED_FUNCTION_8();
  sub_2485D5B98();
  OUTLINED_FUNCTION_0();
  v16 = sub_2485DD75C(v14, v15, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  OUTLINED_FUNCTION_93(v12, 4, v17, v16);
  OUTLINED_FUNCTION_47();
  return sub_2485D642C();
}

BOOL sub_2485D7B00(uint64_t a1, unint64_t a2)
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

uint64_t sub_2485D7B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_72(a1, a2, a3, a4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_45(v5);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_86();
  v8 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(v7);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v12 = v11 - v10;
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  OUTLINED_FUNCTION_95();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    return sub_2485DD704(v4, &qword_27EE9E468, &qword_2485DFFF8);
  }

  OUTLINED_FUNCTION_7();
  sub_2485D5B98();
  OUTLINED_FUNCTION_2();
  v16 = sub_2485DD75C(v14, v15, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
  OUTLINED_FUNCTION_93(v12, 7, v17, v16);
  OUTLINED_FUNCTION_46();
  return sub_2485D642C();
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v38 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52();
  v35[1] = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v8);
  v35[2] = v35 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E478, &qword_2485E0000);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v10);
  v39 = v35 - v11;
  v12 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  OUTLINED_FUNCTION_45(v14);
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E480, &qword_2485E0008) - 8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x28223BE20](v17);
  v19 = v35 - v18;
  v37 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  v20 = *(v16 + 56);
  v40 = a1;
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_61(v19, 1, v12);
  if (v21)
  {
    OUTLINED_FUNCTION_61(&v19[v20], 1, v12);
    if (v21)
    {
      sub_2485DD704(v19, &qword_27EE9E460, &qword_2485DFFF0);
      goto LABEL_12;
    }

LABEL_9:
    v22 = &qword_27EE9E480;
    v23 = &qword_2485E0008;
    v24 = v19;
LABEL_10:
    sub_2485DD704(v24, v22, v23);
    goto LABEL_24;
  }

  sub_2485D5928();
  OUTLINED_FUNCTION_61(&v19[v20], 1, v12);
  if (v21)
  {
    OUTLINED_FUNCTION_47();
    sub_2485D642C();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8();
  sub_2485D5B98();
  v25 = static Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.== infix(_:_:)();
  sub_2485D642C();
  sub_2485D642C();
  sub_2485DD704(v19, &qword_27EE9E460, &qword_2485DFFF0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((sub_2485DC934(*v40, *a2) & 1) == 0)
  {
    goto LABEL_24;
  }

  v26 = *(v36 + 48);
  v27 = v39;
  sub_2485D5928();
  sub_2485D5928();
  v28 = v38;
  OUTLINED_FUNCTION_61(v27, 1, v38);
  if (!v21)
  {
    sub_2485D5928();
    OUTLINED_FUNCTION_61(v27 + v26, 1, v28);
    if (!v29)
    {
      OUTLINED_FUNCTION_7();
      sub_2485D5B98();
      v30 = static Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.== infix(_:_:)();
      sub_2485D642C();
      sub_2485D642C();
      sub_2485DD704(v27, &qword_27EE9E468, &qword_2485DFFF8);
      if (v30)
      {
        goto LABEL_23;
      }

LABEL_24:
      v33 = 0;
      return v33 & 1;
    }

    OUTLINED_FUNCTION_46();
    sub_2485D642C();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_61(v27 + v26, 1, v28);
  if (!v21)
  {
LABEL_21:
    v22 = &qword_27EE9E478;
    v23 = &qword_2485E0000;
    v24 = v27;
    goto LABEL_10;
  }

  sub_2485DD704(v27, &qword_27EE9E468, &qword_2485DFFF8);
LABEL_23:
  sub_2485DFBC8();
  OUTLINED_FUNCTION_6();
  sub_2485DD75C(v31, v32, MEMORY[0x277D216D0]);
  v33 = sub_2485DFDA8();
  return v33 & 1;
}

uint64_t sub_2485D8264()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485D82C8()
{
  OUTLINED_FUNCTION_1();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485D8324()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_1();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

void sub_2485D83A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_42();
  v8 = sub_2485DFD68();
  __swift_allocate_value_buffer(v8, qword_27EEA0258);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11();
  v10 = *(v9 + 72);
  OUTLINED_FUNCTION_56();
  v35 = OUTLINED_FUNCTION_67((v12 & ~v11) - v10 + 8 * v10, v11);
  OUTLINED_FUNCTION_53(v35, xmmword_2485DFFC0);
  v14 = v7 + v13;
  OUTLINED_FUNCTION_70();
  *v14 = "fqn";
  *(v14 + 8) = 3;
  *(v14 + 16) = 2;
  v15 = sub_2485DFD48();
  OUTLINED_FUNCTION_10();
  v17 = *(v16 + 104);
  OUTLINED_FUNCTION_39();
  v17();
  v18 = OUTLINED_FUNCTION_21();
  *v19 = 2;
  v20 = OUTLINED_FUNCTION_62(v18, "timestamp_ms");
  v21 = *MEMORY[0x277D21888];
  (v17)(v20, v21, v15);
  v22 = OUTLINED_FUNCTION_23();
  *v23 = 3;
  v24 = OUTLINED_FUNCTION_62(v22, "request_id");
  (v17)(v24, v21, v15);
  v25 = OUTLINED_FUNCTION_31(3 * v10);
  *v26 = 4;
  v27 = OUTLINED_FUNCTION_85(v25, "topic_override");
  (v17)(v27);
  v28 = (v7 + 4 * v10);
  v29 = v28 + dword_27EEA0290;
  *v28 = 5;
  v30 = OUTLINED_FUNCTION_85(v29, "source_cluster");
  (v17)(v30);
  v31 = OUTLINED_FUNCTION_31(5 * v10);
  *v32 = 6;
  *v31 = "stream";
  *(v31 + 8) = 6;
  *(v31 + 16) = 2;
  OUTLINED_FUNCTION_39();
  v17();
  v33 = (v7 + 6 * v10);
  v34 = v33 + dword_27EEA0290;
  *v33 = 7;
  OUTLINED_FUNCTION_62(v34, "legacyHeaders");
  OUTLINED_FUNCTION_39();
  v17();
  sub_2485DFD58();
  OUTLINED_FUNCTION_41();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_19();
        sub_2485DFC68();
        break;
      case 2:
        OUTLINED_FUNCTION_19();
        sub_2485DFC58();
        break;
      case 3:
        OUTLINED_FUNCTION_19();
        sub_2485DFC38();
        break;
      case 7:
        sub_2485DFB98();
        sub_2485DFC08();
        break;
      default:
        continue;
    }
  }
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14();
  if (!v3 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), (v0 = v1) == 0))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_87(), result = sub_2485DFD08(), (v0 = v1) == 0))
    {
      v5 = OUTLINED_FUNCTION_51();
      if (sub_2485D7B00(v5, v6) || (OUTLINED_FUNCTION_51(), OUTLINED_FUNCTION_9(), result = sub_2485DFCE8(), (v0 = v1) == 0))
      {
        OUTLINED_FUNCTION_14();
        if (!v7 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), (v0 = v1) == 0))
        {
          OUTLINED_FUNCTION_14();
          if (!v8 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), (v0 = v1) == 0))
          {
            OUTLINED_FUNCTION_14();
            if (!v9 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), (v0 = v1) == 0))
            {
              if (!*(*(v2 + 88) + 16) || (sub_2485DFB98(), result = sub_2485DFCC8(), !v0))
              {
                type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
                return OUTLINED_FUNCTION_22();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_60();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_2485DFDC8() & 1) == 0)
  {
    return 0;
  }

  if (v1[2] != v0[2] || (MEMORY[0x24C1D3780](v1[3], v1[4], v0[3], v0[4]) & 1) == 0)
  {
    return 0;
  }

  v4 = v1[5] == v0[5] && v1[6] == v0[6];
  if (!v4 && (sub_2485DFDC8() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[7] == v0[7] && v1[8] == v0[8];
  if (!v5 && (sub_2485DFDC8() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[9] == v0[9] && v1[10] == v0[10];
  if (!v6 && (sub_2485DFDC8() & 1) == 0 || (sub_2485DD7A4(v1[11], v0[11]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_6();
  v9 = sub_2485DD75C(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_28(v9) & 1;
}

uint64_t sub_2485D8A8C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485D8AF0()
{
  OUTLINED_FUNCTION_2();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485D8B4C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

void sub_2485D8BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_42();
  v8 = sub_2485DFD68();
  __swift_allocate_value_buffer(v8, qword_27EEA0270);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11();
  v10 = *(v9 + 72);
  OUTLINED_FUNCTION_56();
  v13 = OUTLINED_FUNCTION_67((v12 & ~v11) + 4 * v10, v11);
  OUTLINED_FUNCTION_53(v13, xmmword_2485DFFD0);
  v15 = v7 + v14;
  OUTLINED_FUNCTION_70();
  *v15 = "payload_type";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x277D21888];
  v17 = sub_2485DFD48();
  OUTLINED_FUNCTION_10();
  v19 = *(v18 + 104);
  v19(v15, v16, v17);
  v20 = OUTLINED_FUNCTION_21();
  *v21 = 2;
  v22 = OUTLINED_FUNCTION_62(v20, "schema_name");
  v19(v22, v16, v17);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_92(v23);
  v25 = OUTLINED_FUNCTION_62(v24, "schema_fingerprint");
  v19(v25, v16, v17);
  v26 = OUTLINED_FUNCTION_31(3 * v10);
  *v27 = 4;
  v28 = OUTLINED_FUNCTION_62(v26, "body");
  v19(v28, *MEMORY[0x277D21870], v17);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_2485DDA70();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_27();
        sub_2485DFC28();
        break;
      case 2:
        OUTLINED_FUNCTION_19();
        sub_2485DFC68();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_19();
        sub_2485DFC38();
        break;
      default:
        continue;
    }
  }
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15();
  if (!*v0 || (sub_2485DDA70(), OUTLINED_FUNCTION_18(), result = sub_2485DFCD8(), !v1))
  {
    OUTLINED_FUNCTION_14();
    if (!v3 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), !v1))
    {
      v4 = OUTLINED_FUNCTION_51();
      if (sub_2485D7B00(v4, v5) || (OUTLINED_FUNCTION_51(), OUTLINED_FUNCTION_9(), result = sub_2485DFCE8(), !v1))
      {
        v6 = OUTLINED_FUNCTION_51();
        if (sub_2485D7B00(v6, v7) || (OUTLINED_FUNCTION_51(), OUTLINED_FUNCTION_9(), result = sub_2485DFCE8(), !v1))
        {
          type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
          return OUTLINED_FUNCTION_22();
        }
      }
    }
  }

  return result;
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_89();
  if (v4)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v4 || (sub_2485DFDC8()) && (MEMORY[0x24C1D3780](v1[4], v1[5], v0[4], v0[5]) & 1) != 0 && (MEMORY[0x24C1D3780](v1[6], v1[7], v0[6], v0[7]))
  {
    type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
    sub_2485DFBC8();
    OUTLINED_FUNCTION_6();
    v7 = sub_2485DD75C(v5, v6, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_28(v7) & 1;
  }

  return 0;
}

uint64_t sub_2485D9130()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485D9194()
{
  OUTLINED_FUNCTION_0();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485D91F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_0();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

void sub_2485D926C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_42();
  v8 = sub_2485DFD68();
  __swift_allocate_value_buffer(v8, &qword_27EEA0288);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11();
  v10 = *(v9 + 72);
  OUTLINED_FUNCTION_56();
  v13 = OUTLINED_FUNCTION_67((v12 & ~v11) + 4 * v10, v11);
  OUTLINED_FUNCTION_53(v13, xmmword_2485DFFD0);
  v15 = v7 + v14;
  OUTLINED_FUNCTION_70();
  *v15 = "index";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v16 = sub_2485DFD48();
  OUTLINED_FUNCTION_10();
  v18 = *(v17 + 104);
  OUTLINED_FUNCTION_39();
  v18();
  v19 = OUTLINED_FUNCTION_21();
  *v20 = 2;
  v21 = OUTLINED_FUNCTION_62(v19, "request_id");
  (v18)(v21, *MEMORY[0x277D21888], v16);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_92(v22);
  *v23 = "code";
  *(v23 + 8) = 4;
  *(v23 + 16) = 2;
  OUTLINED_FUNCTION_39();
  v18();
  v24 = OUTLINED_FUNCTION_31(3 * v10);
  *v25 = 4;
  OUTLINED_FUNCTION_62(v24, "message");
  OUTLINED_FUNCTION_39();
  v18();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_19();
        sub_2485DFC48();
        break;
      case 2:
        OUTLINED_FUNCTION_19();
        sub_2485DFC38();
        break;
      case 3:
        sub_2485DDAC4();
        OUTLINED_FUNCTION_27();
        sub_2485DFC28();
        break;
      case 4:
        OUTLINED_FUNCTION_19();
        sub_2485DFC68();
        break;
      default:
        continue;
    }
  }
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_DataEventError.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15();
  if (!*v0 || (OUTLINED_FUNCTION_87(), result = sub_2485DFCF8(), !v1))
  {
    v4 = OUTLINED_FUNCTION_51();
    if (sub_2485D7B00(v4, v5) || (OUTLINED_FUNCTION_51(), OUTLINED_FUNCTION_9(), result = sub_2485DFCE8(), !v1))
    {
      if (!*(v2 + 24) || (sub_2485DDAC4(), OUTLINED_FUNCTION_18(), result = sub_2485DFCD8(), !v1))
      {
        OUTLINED_FUNCTION_14();
        if (!v6 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), !v1))
        {
          type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
          return OUTLINED_FUNCTION_22();
        }
      }
    }
  }

  return result;
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_DataEventError.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_60();
    if (MEMORY[0x24C1D3780](*(v4 + 8), v3[2], *(v2 + 8), *(v2 + 16)))
    {
      v5 = v3[3];
      v6 = *(v2 + 24);
      if (*(v2 + 32) == 1)
      {
        switch(v6)
        {
          case 1:
            if (v5 != 1)
            {
              return 0;
            }

            goto LABEL_8;
          case 2:
            if (v5 != 2)
            {
              return 0;
            }

            goto LABEL_8;
          case 3:
            if (v5 != 3)
            {
              return 0;
            }

            goto LABEL_8;
          case 4:
            if (v5 != 4)
            {
              return 0;
            }

            goto LABEL_8;
          case 5:
            if (v5 != 5)
            {
              return 0;
            }

            goto LABEL_8;
          case 6:
            if (v5 != 6)
            {
              return 0;
            }

            goto LABEL_8;
          default:
            if (!v5)
            {
              goto LABEL_8;
            }

            return 0;
        }
      }

      if (v5 == v6)
      {
LABEL_8:
        v7 = v3[5] == *(v2 + 40) && v3[6] == *(v2 + 48);
        if (v7 || (sub_2485DFDC8() & 1) != 0)
        {
          type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
          sub_2485DFBC8();
          OUTLINED_FUNCTION_6();
          v10 = sub_2485DD75C(v8, v9, MEMORY[0x277D216D0]);
          return OUTLINED_FUNCTION_28(v10) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2485D9824()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485D988C()
{
  OUTLINED_FUNCTION_3();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485D98E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

void sub_2485D9968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_42();
  v7 = sub_2485DFD68();
  __swift_allocate_value_buffer(v7, qword_27EEA02A0);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11();
  v9 = *(v8 + 72);
  OUTLINED_FUNCTION_56();
  v12 = v11 & ~v10;
  v13 = OUTLINED_FUNCTION_67(v12 + 2 * v9, v10);
  OUTLINED_FUNCTION_24(v13, xmmword_2485DFFE0);
  OUTLINED_FUNCTION_70();
  *v12 = "events";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v14 = sub_2485DFD48();
  OUTLINED_FUNCTION_10();
  v16 = *(v15 + 104);
  v17 = OUTLINED_FUNCTION_34();
  v16(v17);
  v18 = OUTLINED_FUNCTION_21();
  *v19 = 2;
  v20 = OUTLINED_FUNCTION_62(v18, "request_id");
  (v16)(v20, *MEMORY[0x277D21888], v14);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_19();
      sub_2485DFC38();
    }

    else if (result == 1)
    {
      type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
      OUTLINED_FUNCTION_1();
      sub_2485DD75C(&qword_27EE9E4C0, v3, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_27();
      sub_2485DFC78();
    }
  }

  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15();
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0), OUTLINED_FUNCTION_1(), sub_2485DD75C(v2, v3, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage), OUTLINED_FUNCTION_18(), result = sub_2485DFD28(), !v1))
  {
    v5 = OUTLINED_FUNCTION_51();
    if (sub_2485D7B00(v5, v6) || (OUTLINED_FUNCTION_51(), OUTLINED_FUNCTION_9(), result = sub_2485DFCE8(), !v1))
    {
      type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0);
      return OUTLINED_FUNCTION_22();
    }
  }

  return result;
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_60();
  if ((sub_2485DAF58(*v2, *v3) & 1) == 0 || (MEMORY[0x24C1D3780](*(v1 + 8), *(v1 + 16), *(v0 + 8), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0);
  sub_2485DFBC8();
  OUTLINED_FUNCTION_6();
  v6 = sub_2485DD75C(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_28(v6) & 1;
}

uint64_t sub_2485D9DC8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_5();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485D9E2C()
{
  OUTLINED_FUNCTION_5();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485D9E88()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_5();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

void sub_2485D9F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_42();
  v8 = sub_2485DFD68();
  __swift_allocate_value_buffer(v8, qword_27EEA02B8);
  OUTLINED_FUNCTION_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E638, &qword_2485E0F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE9E640, &qword_2485E0F50);
  OUTLINED_FUNCTION_11();
  v9 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_24(v9, xmmword_2485DFFB0);
  OUTLINED_FUNCTION_70();
  *v7 = "status";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  sub_2485DFD48();
  OUTLINED_FUNCTION_10();
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_34();
  (v11)(v12);
  v13 = OUTLINED_FUNCTION_21();
  *v14 = 2;
  *v13 = "message";
  *(v13 + 8) = 7;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_40();
  v11();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_92(v15);
  *v16 = "errors";
  *(v16 + 8) = 6;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_40();
  v11();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_41();
}

uint64_t sub_2485DA09C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2485DFD68();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12();
  while (1)
  {
    result = OUTLINED_FUNCTION_57();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
        OUTLINED_FUNCTION_3();
        sub_2485DD75C(&qword_27EE9E4D8, v3, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
        OUTLINED_FUNCTION_27();
        sub_2485DFC78();
        break;
      case 2:
        OUTLINED_FUNCTION_19();
        sub_2485DFC68();
        break;
      case 1:
        sub_2485DDB18();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_27();
        sub_2485DFC28();
        break;
    }
  }

  return result;
}

uint64_t Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15();
  if (!*v0 || (sub_2485DDB18(), OUTLINED_FUNCTION_18(), result = sub_2485DFCD8(), !v1))
  {
    OUTLINED_FUNCTION_14();
    if (!v4 || (OUTLINED_FUNCTION_9(), result = sub_2485DFD18(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0), OUTLINED_FUNCTION_3(), sub_2485DD75C(v5, v6, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError), OUTLINED_FUNCTION_18(), result = sub_2485DFD28(), !v1))
      {
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0);
        return OUTLINED_FUNCTION_22();
      }
    }
  }

  return result;
}

uint64_t static Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_89();
  if (v4)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v4 || (sub_2485DFDC8()) && (sub_2485DA6C8(v1[4], v0[4]))
  {
    type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0);
    sub_2485DFBC8();
    OUTLINED_FUNCTION_6();
    v7 = sub_2485DD75C(v5, v6, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_28(v7) & 1;
  }

  return 0;
}

uint64_t sub_2485DA450(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_2485DFDD8();
  a1(0);
  sub_2485DD75C(a2, a3, a4);
  sub_2485DFD98();
  return sub_2485DFDE8();
}

uint64_t sub_2485DA550()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse);
  v2 = OUTLINED_FUNCTION_13();

  return MEMORY[0x28217E230](v2);
}

uint64_t sub_2485DA5B4()
{
  OUTLINED_FUNCTION_4();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse);
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x28217E428](v2);
}

uint64_t sub_2485DA610()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_4();
  sub_2485DD75C(v0, v1, &protocol conformance descriptor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse);
  OUTLINED_FUNCTION_13();

  return sub_2485DFCB8();
}

uint64_t sub_2485DA670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2485DFDD8();
  sub_2485DFD98();
  return sub_2485DFDE8();
}

uint64_t sub_2485DA6C8(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
  v4 = MEMORY[0x28223BE20](v29);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = v27 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      v25 = 1;
      return v25 & 1;
    }

    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = *(v7 + 72);
    v27[2] = 0;
    v28 = v14;
    while (1)
    {
      sub_2485D63D4();
      v30 = v12;
      sub_2485D63D4();
      if (*v9 != *v6)
      {
        break;
      }

      v16 = *(v6 + 1);
      v15 = *(v6 + 2);
      if (*(v9 + 1) || (*(v9 + 2) == 0xC000000000000000 ? (v17 = v15 >> 62 == 3) : (v17 = 0), !v17 || v16 || v15 != 0xC000000000000000))
      {
        switch(v15 >> 62)
        {
          case 1uLL:
            LODWORD(v18) = HIDWORD(v16) - v16;
            if (__OFSUB__(HIDWORD(v16), v16))
            {
              __break(1u);
LABEL_51:
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
            }

            v18 = v18;
LABEL_21:
            if (!v18)
            {
              break;
            }

            goto LABEL_46;
          case 2uLL:
            v20 = *(v16 + 16);
            v19 = *(v16 + 24);
            v21 = __OFSUB__(v19, v20);
            v18 = v19 - v20;
            if (!v21)
            {
              goto LABEL_21;
            }

            goto LABEL_51;
          case 3uLL:
            break;
          default:
            v18 = BYTE6(v15);
            goto LABEL_21;
        }
      }

      v22 = *(v9 + 3);
      v23 = *(v6 + 3);
      if (v6[32] == 1)
      {
        switch(v23)
        {
          case 1:
            if (v22 != 1)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 2:
            if (v22 != 2)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 3:
            if (v22 != 3)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 4:
            if (v22 != 4)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 5:
            if (v22 != 5)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 6:
            if (v22 != 6)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          default:
            if (v22)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
        }
      }

      if (v22 != v23)
      {
        break;
      }

LABEL_27:
      v24 = *(v9 + 5) == *(v6 + 5) && *(v9 + 6) == *(v6 + 6);
      if (!v24 && (sub_2485DFDC8() & 1) == 0)
      {
        break;
      }

      sub_2485DFBC8();
      sub_2485DD75C(&qword_27EE9E488, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v25 = sub_2485DFDA8();
      sub_2485D642C();
      sub_2485D642C();
      if (v25)
      {
        v13 += v28;
        v12 = v30 + v28;
        if (--v10)
        {
          continue;
        }
      }

      return v25 & 1;
    }

LABEL_46:
    sub_2485D642C();
    sub_2485D642C();
  }

  v25 = 0;
  return v25 & 1;
}

uint64_t sub_2485DAF58(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v177 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E478, &qword_2485E0000);
  MEMORY[0x28223BE20](v10);
  v188 = &v177 - v11;
  v187 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  MEMORY[0x28223BE20](v187);
  v191 = (&v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
  MEMORY[0x28223BE20](v13 - 8);
  v186 = &v177 - v14;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E480, &qword_2485E0008);
  MEMORY[0x28223BE20](v185);
  v190 = &v177 - v15;
  v193 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  v16 = MEMORY[0x28223BE20](v193);
  v18 = (&v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    goto LABEL_268;
  }

  if (!v21 || a1 == a2)
  {
    v170 = 1;
    return v170 & 1;
  }

  v178 = 0;
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = a1 + v22;
  v189 = a2 + v22;
  v179 = *(v19 + 72);
  v180 = v10;
  v181 = v18;
  v182 = v4;
  v192 = (&v177 - v20);
  while (2)
  {
    sub_2485D63D4();
    v184 = v23;
    sub_2485D63D4();
    v24 = *(v185 + 48);
    v25 = v190;
    sub_2485D5928();
    v26 = v25;
    sub_2485D5928();
    v27 = v25;
    v28 = v187;
    if (__swift_getEnumTagSinglePayload(v27, 1, v187) == 1)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26 + v24, 1, v28);
      v30 = v182;
      if (EnumTagSinglePayload != 1)
      {
        goto LABEL_263;
      }

      sub_2485DD704(v26, &qword_27EE9E460, &qword_2485DFFF0);
      goto LABEL_176;
    }

    v31 = v26;
    v32 = v186;
    sub_2485D5928();
    if (__swift_getEnumTagSinglePayload(v31 + v24, 1, v28) == 1)
    {
      sub_2485D642C();
      v26 = v31;
LABEL_263:
      v174 = &qword_27EE9E480;
      v175 = &qword_2485E0008;
LABEL_266:
      sub_2485DD704(v26, v174, v175);
      goto LABEL_267;
    }

    v33 = v191;
    sub_2485D5B98();
    v34 = *v32;
    v35 = *v33;
    v36 = v32;
    if (*(v33 + 8) == 1)
    {
      v30 = v182;
      if (v35)
      {
        if (v35 == 1)
        {
          if (v34 != 1)
          {
            goto LABEL_260;
          }
        }

        else if (v34 != 2)
        {
          goto LABEL_260;
        }
      }

      else if (v34)
      {
        goto LABEL_260;
      }
    }

    else
    {
      v30 = v182;
      if (v34 != v35)
      {
        goto LABEL_260;
      }
    }

    v37 = v32[2] == v191[2] && v32[3] == v191[3];
    if (!v37)
    {
      v38 = sub_2485DFDC8();
      v36 = v186;
      if ((v38 & 1) == 0)
      {
        goto LABEL_260;
      }
    }

    v39 = v36[4];
    v40 = v36[5];
    v41 = v40 >> 62;
    v43 = v191[4];
    v42 = v191[5];
    v44 = v42 >> 62;
    if (!v37)
    {
      v46 = 0;
      switch(v41)
      {
        case 0uLL:
          v46 = BYTE6(v40);
          goto LABEL_40;
        case 1uLL:
          v37 = HIDWORD(v39) == v39;
          if (__OFSUB__(HIDWORD(v39), v39))
          {
            goto LABEL_276;
          }

          v46 = HIDWORD(v39) - v39;
          goto LABEL_40;
        case 2uLL:
          v48 = *(v39 + 16);
          v47 = *(v39 + 24);
          v49 = __OFSUB__(v47, v48);
          v46 = v47 - v48;
          v37 = v46 == 0;
          if (!v49)
          {
            goto LABEL_40;
          }

LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
          goto LABEL_293;
        case 3uLL:
          goto LABEL_40;
        default:
LABEL_314:
          JUMPOUT(0);
      }
    }

    v46 = 0;
    if (v39 || (v40 == 0xC000000000000000 ? (v45 = v42 >> 62 == 3, v37 = v44 == 3) : (v45 = 0, v37 = 0), !v45 || (v46 = 0, v43) || (v37 = v42 == 0xC000000000000000, v42 != 0xC000000000000000)))
    {
LABEL_40:
      switch(v44)
      {
        case 1uLL:
          LODWORD(v50) = HIDWORD(v43) - v43;
          if (__OFSUB__(HIDWORD(v43), v43))
          {
            goto LABEL_270;
          }

          v50 = v50;
LABEL_49:
          if (v46 != v50)
          {
            goto LABEL_260;
          }

          v37 = v46 == 1;
          if (v46 < 1)
          {
            goto LABEL_103;
          }

          break;
        case 2uLL:
          v52 = *(v43 + 16);
          v51 = *(v43 + 24);
          v49 = __OFSUB__(v51, v52);
          v50 = v51 - v52;
          if (!v49)
          {
            goto LABEL_49;
          }

          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
          goto LABEL_275;
        case 3uLL:
          if (v46)
          {
            goto LABEL_260;
          }

          goto LABEL_103;
        default:
          v50 = BYTE6(v42);
          goto LABEL_49;
      }

      v53 = v43 >> 32;
      switch(v41)
      {
        case 1:
          if (v39 >> 32 < v39)
          {
            goto LABEL_281;
          }

          v68 = v39;
          sub_2485D6480(v43, v42);
          sub_2485D6480(v43, v42);
          sub_2485D6480(v43, v42);
          v60 = sub_2485DFB58();
          if (!v60)
          {
            goto LABEL_75;
          }

          v69 = sub_2485DFB78();
          if (__OFSUB__(v68, v69))
          {
            goto LABEL_288;
          }

          v60 += v68 - v69;
LABEL_75:
          sub_2485DFB68();
          v70 = v60;
          v71 = v178;
          sub_2485DF12C(__s1, v70, v43, v42);
          v178 = v71;
          sub_2485D64D8(v43, v42);
          sub_2485D64D8(v43, v42);
          sub_2485D64D8(v43, v42);
          v30 = v182;
          v36 = v186;
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_260;
          }

          break;
        case 2:
          v59 = *(v39 + 16);
          v58 = *(v39 + 24);
          sub_2485D6480(v43, v42);
          sub_2485D6480(v43, v42);
          sub_2485D6480(v43, v42);
          v60 = sub_2485DFB58();
          if (!v60)
          {
            goto LABEL_63;
          }

          v61 = sub_2485DFB78();
          if (__OFSUB__(v59, v61))
          {
            goto LABEL_287;
          }

          v60 += v59 - v61;
LABEL_63:
          if (!__OFSUB__(v58, v59))
          {
            goto LABEL_75;
          }

          goto LABEL_282;
        case 3:
          memset(__s1, 0, 14);
          if (!v44)
          {
            goto LABEL_77;
          }

          if (v44 == 2)
          {
            v62 = *(v43 + 16);
            v63 = *(v43 + 24);
            sub_2485D6480(v43, v42);
            v64 = sub_2485DFB58();
            if (v64)
            {
              v65 = v64;
              v66 = sub_2485DFB78();
              if (__OFSUB__(v62, v66))
              {
                goto LABEL_302;
              }

              v67 = (v62 - v66 + v65);
            }

            else
            {
              v67 = 0;
            }

            v49 = __OFSUB__(v63, v62);
            v81 = v63 - v62;
            if (v49)
            {
              goto LABEL_295;
            }

            v82 = sub_2485DFB68();
            v30 = v182;
            if (!v67)
            {
              goto LABEL_308;
            }

LABEL_99:
            if (v82 >= v81)
            {
              v83 = v81;
            }

            else
            {
              v83 = v82;
            }

            v84 = memcmp(__s1, v67, v83);
            sub_2485D64D8(v43, v42);
            v36 = v186;
            if (v84)
            {
              goto LABEL_260;
            }
          }

          else
          {
            if (v53 < v43)
            {
LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
LABEL_295:
              __break(1u);
LABEL_296:
              __break(1u);
LABEL_297:
              __break(1u);
LABEL_298:
              __break(1u);
LABEL_299:
              __break(1u);
LABEL_300:
              __break(1u);
LABEL_301:
              __break(1u);
LABEL_302:
              __break(1u);
LABEL_303:
              __break(1u);
LABEL_304:
              __break(1u);
LABEL_305:
              __break(1u);
LABEL_306:
              __break(1u);
            }

            sub_2485D6480(v43, v42);
            v54 = sub_2485DFB58();
            if (v54)
            {
              v73 = sub_2485DFB78();
              if (__OFSUB__(v43, v73))
              {
                goto LABEL_303;
              }

              v54 += v43 - v73;
            }

            v56 = sub_2485DFB68();
            if (!v54)
            {
              __break(1u);
LABEL_308:
              __break(1u);
LABEL_309:
              __break(1u);
LABEL_310:
              __break(1u);
LABEL_311:
              __break(1u);
LABEL_312:
              __break(1u);
LABEL_313:
              MEMORY[0x24C1D3A80](*(v57 - 32));
              __break(1u);
              JUMPOUT(0x2485DC8A4);
            }

LABEL_84:
            if (v56 >= v53 - v43)
            {
              v74 = v53 - v43;
            }

            else
            {
              v74 = v56;
            }

            v75 = memcmp(__s1, v54, v74);
            sub_2485D64D8(v43, v42);
            v36 = v186;
            v30 = v182;
            if (v75)
            {
              goto LABEL_260;
            }
          }

          break;
        default:
          LOWORD(__s1[0]) = v36[4];
          BYTE2(__s1[0]) = BYTE2(v39);
          BYTE3(__s1[0]) = BYTE3(v39);
          BYTE4(__s1[0]) = BYTE4(v39);
          BYTE5(__s1[0]) = BYTE5(v39);
          BYTE6(__s1[0]) = BYTE6(v39);
          HIBYTE(__s1[0]) = HIBYTE(v39);
          LOWORD(__s1[1]) = v40;
          BYTE2(__s1[1]) = BYTE2(v40);
          BYTE3(__s1[1]) = BYTE3(v40);
          BYTE4(__s1[1]) = BYTE4(v40);
          BYTE5(__s1[1]) = BYTE5(v40);
          if (!v44)
          {
LABEL_77:
            __s2 = v43;
            v195 = v42;
            v196 = BYTE2(v42);
            v197 = BYTE3(v42);
            v198 = BYTE4(v42);
            v199 = BYTE5(v42);
            v72 = memcmp(__s1, &__s2, BYTE6(v42));
            v36 = v186;
            v30 = v182;
            if (v72)
            {
              goto LABEL_260;
            }

            break;
          }

          if (v44 == 1)
          {
            if (v53 < v43)
            {
              goto LABEL_294;
            }

            sub_2485D6480(v43, v42);
            v54 = sub_2485DFB58();
            if (v54)
            {
              v55 = sub_2485DFB78();
              if (__OFSUB__(v43, v55))
              {
                goto LABEL_304;
              }

              v54 += v43 - v55;
            }

            v56 = sub_2485DFB68();
            if (!v54)
            {
              goto LABEL_310;
            }

            goto LABEL_84;
          }

          v76 = *(v43 + 16);
          v77 = *(v43 + 24);
          sub_2485D6480(v43, v42);
          v78 = sub_2485DFB58();
          if (v78)
          {
            v79 = v78;
            v80 = sub_2485DFB78();
            if (__OFSUB__(v76, v80))
            {
              goto LABEL_301;
            }

            v67 = (v76 - v80 + v79);
          }

          else
          {
            v67 = 0;
          }

          v49 = __OFSUB__(v77, v76);
          v81 = v77 - v76;
          if (v49)
          {
            goto LABEL_296;
          }

          v82 = sub_2485DFB68();
          v30 = v182;
          if (!v67)
          {
            goto LABEL_309;
          }

          goto LABEL_99;
      }
    }

LABEL_103:
    v85 = v36[6];
    v86 = v36[7];
    v87 = v86 >> 62;
    v89 = v191[6];
    v88 = v191[7];
    v90 = v88 >> 62;
    if (v37)
    {
      v92 = 0;
      if (!v85 && v86 == 0xC000000000000000 && v88 >> 62 == 3)
      {
        v92 = 0;
        if (!v89 && v88 == 0xC000000000000000)
        {
          goto LABEL_175;
        }
      }
    }

    else
    {
      v92 = 0;
      switch(v87)
      {
        case 0uLL:
          v92 = BYTE6(v86);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v85), v85))
          {
            goto LABEL_277;
          }

          v92 = HIDWORD(v85) - v85;
          break;
        case 2uLL:
          v94 = *(v85 + 16);
          v93 = *(v85 + 24);
          v49 = __OFSUB__(v93, v94);
          v92 = v93 - v94;
          if (!v49)
          {
            break;
          }

          goto LABEL_278;
        case 3uLL:
          break;
        default:
          goto LABEL_314;
      }
    }

    switch(v90)
    {
      case 1uLL:
        LODWORD(v95) = HIDWORD(v89) - v89;
        if (__OFSUB__(HIDWORD(v89), v89))
        {
          goto LABEL_272;
        }

        v95 = v95;
LABEL_128:
        if (v92 != v95)
        {
          goto LABEL_260;
        }

        if (v92 < 1)
        {
          goto LABEL_175;
        }

        break;
      case 2uLL:
        v97 = *(v89 + 16);
        v96 = *(v89 + 24);
        v49 = __OFSUB__(v96, v97);
        v95 = v96 - v97;
        if (!v49)
        {
          goto LABEL_128;
        }

        goto LABEL_271;
      case 3uLL:
        if (v92)
        {
          goto LABEL_260;
        }

        goto LABEL_175;
      default:
        v95 = BYTE6(v88);
        goto LABEL_128;
    }

    v98 = v89 >> 32;
    switch(v87)
    {
      case 1:
        if (v85 >> 32 < v85)
        {
          goto LABEL_283;
        }

        v111 = v85;
        sub_2485D6480(v89, v88);
        sub_2485D6480(v89, v88);
        sub_2485D6480(v89, v88);
        v106 = sub_2485DFB58();
        if (!v106)
        {
          goto LABEL_156;
        }

        v112 = sub_2485DFB78();
        if (__OFSUB__(v111, v112))
        {
          goto LABEL_290;
        }

        v106 += v111 - v112;
LABEL_156:
        sub_2485DFB68();
        v113 = v106;
        v114 = v178;
        sub_2485DF12C(__s1, v113, v89, v88);
        v178 = v114;
        sub_2485D64D8(v89, v88);
        sub_2485D64D8(v89, v88);
        sub_2485D64D8(v89, v88);
        v30 = v182;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_260;
        }

        goto LABEL_175;
      case 2:
        v105 = *(v85 + 16);
        v104 = *(v85 + 24);
        sub_2485D6480(v89, v88);
        sub_2485D6480(v89, v88);
        sub_2485D6480(v89, v88);
        v106 = sub_2485DFB58();
        if (!v106)
        {
          goto LABEL_146;
        }

        v107 = sub_2485DFB78();
        if (__OFSUB__(v105, v107))
        {
          goto LABEL_289;
        }

        v106 += v105 - v107;
LABEL_146:
        if (!__OFSUB__(v104, v105))
        {
          goto LABEL_156;
        }

        goto LABEL_284;
      case 3:
        memset(__s1, 0, 14);
        if (!v90)
        {
          goto LABEL_158;
        }

        if (v90 == 2)
        {
          v108 = *(v89 + 16);
          v98 = *(v89 + 24);
          sub_2485D6480(v89, v88);
          sub_2485D6480(v89, v88);
          v109 = v88 & 0x3FFFFFFFFFFFFFFFLL;
          v110 = v108;
        }

        else
        {
          if (v98 < v89)
          {
            goto LABEL_297;
          }

          sub_2485D6480(v89, v88);
          sub_2485D6480(v89, v88);
          v109 = v88 & 0x3FFFFFFFFFFFFFFFLL;
          v110 = v89;
        }

        v116 = v98;
        v117 = v178;
        v118 = sub_2485DF2A8(v110, v116, v109, __s1);
        sub_2485D64D8(v89, v88);
        sub_2485D64D8(v89, v88);
        v57 = &v201;
        v178 = v117;
        if (v117)
        {
          goto LABEL_313;
        }

        v30 = v182;
        if ((v118 & 1) == 0)
        {
          goto LABEL_260;
        }

        goto LABEL_175;
      default:
        LOWORD(__s1[0]) = v36[6];
        BYTE2(__s1[0]) = BYTE2(v85);
        BYTE3(__s1[0]) = BYTE3(v85);
        BYTE4(__s1[0]) = BYTE4(v85);
        BYTE5(__s1[0]) = BYTE5(v85);
        BYTE6(__s1[0]) = BYTE6(v85);
        HIBYTE(__s1[0]) = HIBYTE(v85);
        LOWORD(__s1[1]) = v86;
        BYTE2(__s1[1]) = BYTE2(v86);
        BYTE3(__s1[1]) = BYTE3(v86);
        BYTE4(__s1[1]) = BYTE4(v86);
        BYTE5(__s1[1]) = BYTE5(v86);
        if (!v90)
        {
LABEL_158:
          __s2 = v89;
          v195 = v88;
          v196 = BYTE2(v88);
          v197 = BYTE3(v88);
          v198 = BYTE4(v88);
          v199 = BYTE5(v88);
          v115 = memcmp(__s1, &__s2, BYTE6(v88));
          v30 = v182;
          if (v115)
          {
            goto LABEL_260;
          }

LABEL_175:
          sub_2485DFBC8();
          sub_2485DD75C(&qword_27EE9E488, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v129 = sub_2485DFDA8();
          sub_2485D642C();
          sub_2485D642C();
          sub_2485DD704(v190, &qword_27EE9E460, &qword_2485DFFF0);
          v10 = v180;
          v18 = v181;
          if ((v129 & 1) == 0)
          {
            goto LABEL_267;
          }

LABEL_176:
          if ((sub_2485DC934(*v192, *v18) & 1) == 0)
          {
            goto LABEL_267;
          }

          v183 = v21;
          v130 = *(v10 + 48);
          v26 = v188;
          sub_2485D5928();
          sub_2485D5928();
          if (__swift_getEnumTagSinglePayload(v26, 1, v30) == 1)
          {
            if (__swift_getEnumTagSinglePayload(v26 + v130, 1, v30) != 1)
            {
              goto LABEL_265;
            }

            sub_2485DD704(v26, &qword_27EE9E468, &qword_2485DFFF8);
            v131 = v183;
            goto LABEL_255;
          }

          sub_2485D5928();
          if (__swift_getEnumTagSinglePayload(v26 + v130, 1, v30) == 1)
          {
            sub_2485D642C();
LABEL_265:
            v174 = &qword_27EE9E478;
            v175 = &qword_2485E0000;
            goto LABEL_266;
          }

          sub_2485D5B98();
          v132 = *v9 == *v6 && v9[1] == v6[1];
          v133 = v183;
          if (!v132 && (sub_2485DFDC8() & 1) == 0 || (v134 = v9[2], v135 = v6[2], v136 = v134 == v135, v134 != v135))
          {
LABEL_259:
            sub_2485D642C();
            sub_2485D642C();
            v171 = &qword_27EE9E468;
            v172 = &qword_2485DFFF8;
            v173 = v188;
            goto LABEL_261;
          }

          v137 = v9[3];
          v138 = v9[4];
          v139 = v138 >> 62;
          v141 = v6[3];
          v140 = v6[4];
          v142 = v140 >> 62;
          if (!v136)
          {
            v144 = 0;
            switch(v139)
            {
              case 0uLL:
                v144 = BYTE6(v138);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v137), v137))
                {
                  goto LABEL_280;
                }

                v144 = HIDWORD(v137) - v137;
                break;
              case 2uLL:
                v146 = *(v137 + 16);
                v145 = *(v137 + 24);
                v49 = __OFSUB__(v145, v146);
                v144 = v145 - v146;
                if (!v49)
                {
                  break;
                }

                goto LABEL_279;
              case 3uLL:
                break;
              default:
                goto LABEL_314;
            }

LABEL_203:
            switch(v142)
            {
              case 1uLL:
                LODWORD(v147) = HIDWORD(v141) - v141;
                if (__OFSUB__(HIDWORD(v141), v141))
                {
                  goto LABEL_273;
                }

                v147 = v147;
LABEL_212:
                if (v144 != v147)
                {
                  goto LABEL_259;
                }

                if (v144 < 1)
                {
                  goto LABEL_238;
                }

                break;
              case 2uLL:
                v149 = *(v141 + 16);
                v148 = *(v141 + 24);
                v49 = __OFSUB__(v148, v149);
                v147 = v148 - v149;
                if (!v49)
                {
                  goto LABEL_212;
                }

                goto LABEL_274;
              case 3uLL:
                if (v144)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              default:
                v147 = BYTE6(v140);
                goto LABEL_212;
            }

            switch(v139)
            {
              case 1:
                if (v137 >> 32 < v137)
                {
                  goto LABEL_285;
                }

                v158 = v137;
                sub_2485D6480(v6[3], v6[4]);
                sub_2485D6480(v141, v140);
                sub_2485D6480(v141, v140);
                v155 = sub_2485DFB58();
                if (!v155)
                {
                  goto LABEL_231;
                }

                v159 = sub_2485DFB78();
                if (__OFSUB__(v158, v159))
                {
                  goto LABEL_292;
                }

                v155 += v158 - v159;
LABEL_231:
                sub_2485DFB68();
                v160 = v155;
                v161 = v178;
                sub_2485DF12C(__s1, v160, v141, v140);
                v178 = v161;
                sub_2485D64D8(v141, v140);
                sub_2485D64D8(v141, v140);
                sub_2485D64D8(v141, v140);
                if ((__s1[0] & 1) == 0)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              case 2:
                v154 = *(v137 + 16);
                v153 = *(v137 + 24);
                sub_2485D6480(v6[3], v6[4]);
                sub_2485D6480(v141, v140);
                sub_2485D6480(v141, v140);
                v155 = sub_2485DFB58();
                if (!v155)
                {
                  goto LABEL_222;
                }

                v156 = sub_2485DFB78();
                if (__OFSUB__(v154, v156))
                {
                  goto LABEL_291;
                }

                v155 += v154 - v156;
LABEL_222:
                if (!__OFSUB__(v153, v154))
                {
                  goto LABEL_231;
                }

                goto LABEL_286;
              case 3:
                memset(__s1, 0, 14);
                sub_2485D6480(v141, v140);
                sub_2485D6480(v141, v140);
                v157 = v178;
                sub_2485DF12C(&__s2, __s1, v141, v140);
                v178 = v157;
                sub_2485D64D8(v141, v140);
                sub_2485D64D8(v141, v140);
                if ((__s2 & 1) == 0)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              default:
                LOWORD(__s1[0]) = v9[3];
                BYTE2(__s1[0]) = BYTE2(v137);
                BYTE3(__s1[0]) = BYTE3(v137);
                BYTE4(__s1[0]) = BYTE4(v137);
                BYTE5(__s1[0]) = BYTE5(v137);
                BYTE6(__s1[0]) = BYTE6(v137);
                HIBYTE(__s1[0]) = HIBYTE(v137);
                LOWORD(__s1[1]) = v138;
                BYTE2(__s1[1]) = BYTE2(v138);
                BYTE3(__s1[1]) = BYTE3(v138);
                BYTE4(__s1[1]) = BYTE4(v138);
                BYTE5(__s1[1]) = BYTE5(v138);
                if (v142)
                {
                  if (v142 == 1)
                  {
                    if (v141 >> 32 < v141)
                    {
                      goto LABEL_300;
                    }

                    sub_2485D6480(v141, v140);
                    sub_2485D6480(v141, v140);
                    v150 = v140 & 0x3FFFFFFFFFFFFFFFLL;
                    v151 = v141;
                    v152 = v141 >> 32;
                  }

                  else
                  {
                    v162 = *(v141 + 16);
                    v163 = *(v141 + 24);
                    sub_2485D6480(v141, v140);
                    sub_2485D6480(v141, v140);
                    v150 = v140 & 0x3FFFFFFFFFFFFFFFLL;
                    v151 = v162;
                    v152 = v163;
                  }

                  v164 = v178;
                  v165 = sub_2485DF2A8(v151, v152, v150, __s1);
                  sub_2485D64D8(v141, v140);
                  sub_2485D64D8(v141, v140);
                  v57 = &v201;
                  v178 = v164;
                  if (v164)
                  {
                    goto LABEL_313;
                  }

                  if ((v165 & 1) == 0)
                  {
                    goto LABEL_259;
                  }
                }

                else
                {
                  __s2 = v141;
                  v195 = v140;
                  v196 = BYTE2(v140);
                  v197 = BYTE3(v140);
                  v198 = BYTE4(v140);
                  v199 = BYTE5(v140);
                  if (memcmp(__s1, &__s2, BYTE6(v140)))
                  {
                    goto LABEL_259;
                  }
                }

                break;
            }

            goto LABEL_238;
          }

          v144 = 0;
          if (v137)
          {
            goto LABEL_203;
          }

          if (v138 != 0xC000000000000000 || v140 >> 62 != 3)
          {
            goto LABEL_203;
          }

          v144 = 0;
          if (v141 || v140 != 0xC000000000000000)
          {
            goto LABEL_203;
          }

LABEL_238:
          v166 = v9[5] == v6[5] && v9[6] == v6[6];
          if (!v166 && (sub_2485DFDC8() & 1) == 0)
          {
            goto LABEL_259;
          }

          v167 = v9[7] == v6[7] && v9[8] == v6[8];
          if (!v167 && (sub_2485DFDC8() & 1) == 0)
          {
            goto LABEL_259;
          }

          v168 = v9[9] == v6[9] && v9[10] == v6[10];
          if (!v168 && (sub_2485DFDC8() & 1) == 0 || (sub_2485DD7A4(v9[11], v6[11]) & 1) == 0)
          {
            goto LABEL_259;
          }

          sub_2485DFBC8();
          sub_2485DD75C(&qword_27EE9E488, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v169 = sub_2485DFDA8();
          sub_2485D642C();
          sub_2485D642C();
          sub_2485DD704(v188, &qword_27EE9E468, &qword_2485DFFF8);
          v10 = v180;
          v18 = v181;
          v131 = v133;
          if ((v169 & 1) == 0)
          {
            goto LABEL_267;
          }

LABEL_255:
          sub_2485DFBC8();
          sub_2485DD75C(&qword_27EE9E488, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v170 = sub_2485DFDA8();
          sub_2485D642C();
          sub_2485D642C();
          if ((v170 & 1) == 0)
          {
            return v170 & 1;
          }

          v189 += v179;
          v23 = v184 + v179;
          v21 = v131 - 1;
          if (!v21)
          {
            return v170 & 1;
          }

          continue;
        }

        if (v90 == 1)
        {
          if (v98 < v89)
          {
            goto LABEL_298;
          }

          sub_2485D6480(v89, v88);
          v99 = sub_2485DFB58();
          if (v99)
          {
            v100 = sub_2485DFB78();
            if (__OFSUB__(v89, v100))
            {
              goto LABEL_306;
            }

            v99 += v89 - v100;
          }

          v101 = sub_2485DFB68();
          if (!v99)
          {
            goto LABEL_312;
          }

          if (v101 >= v98 - v89)
          {
            v102 = v98 - v89;
          }

          else
          {
            v102 = v101;
          }

          v103 = memcmp(__s1, v99, v102);
          sub_2485D64D8(v89, v88);
          v30 = v182;
          if (v103)
          {
            goto LABEL_260;
          }

          goto LABEL_175;
        }

        v119 = *(v89 + 16);
        v120 = *(v89 + 24);
        sub_2485D6480(v89, v88);
        v121 = sub_2485DFB58();
        if (v121)
        {
          v122 = v121;
          v123 = sub_2485DFB78();
          if (__OFSUB__(v119, v123))
          {
            goto LABEL_305;
          }

          v124 = (v119 - v123 + v122);
        }

        else
        {
          v124 = 0;
        }

        v49 = __OFSUB__(v120, v119);
        v125 = v120 - v119;
        if (v49)
        {
          goto LABEL_299;
        }

        v126 = sub_2485DFB68();
        v30 = v182;
        if (!v124)
        {
          goto LABEL_311;
        }

        if (v126 >= v125)
        {
          v127 = v125;
        }

        else
        {
          v127 = v126;
        }

        v128 = memcmp(__s1, v124, v127);
        sub_2485D64D8(v89, v88);
        if (!v128)
        {
          goto LABEL_175;
        }

LABEL_260:
        sub_2485D642C();
        sub_2485D642C();
        v171 = &qword_27EE9E460;
        v172 = &qword_2485DFFF0;
        v173 = v190;
LABEL_261:
        sub_2485DD704(v173, v171, v172);
LABEL_267:
        sub_2485D642C();
        sub_2485D642C();
LABEL_268:
        v170 = 0;
        return v170 & 1;
    }
  }
}

uint64_t sub_2485DC934(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v99 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v4 = MEMORY[0x28223BE20](v99);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = (&v95 - v8);
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (v10 && a1 != a2)
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = *(v7 + 72);
      v97 = 0;
      v98 = v14;
      while (1)
      {
        sub_2485D63D4();
        sub_2485D63D4();
        v15 = *v9;
        v16 = *v6;
        v17 = v6[8];
        v100 = v12;
        if (v17 == 1)
        {
          if (v16)
          {
            if (v16 == 1)
            {
              if (v15 != 1)
              {
                goto LABEL_181;
              }
            }

            else if (v15 != 2)
            {
              goto LABEL_181;
            }
          }

          else if (v15)
          {
            goto LABEL_181;
          }
        }

        else if (v15 != v16)
        {
          goto LABEL_181;
        }

        v18 = v9[2] == *(v6 + 2) && v9[3] == *(v6 + 3);
        if (!v18 && (sub_2485DFDC8() & 1) == 0)
        {
LABEL_181:
          sub_2485D642C();
          sub_2485D642C();
          goto LABEL_182;
        }

        v19 = v9[4];
        v20 = v9[5];
        v21 = v20 >> 62;
        v23 = *(v6 + 4);
        v22 = *(v6 + 5);
        v24 = v22 >> 62;
        if (!v18)
        {
          v26 = 0;
          switch(v21)
          {
            case 0uLL:
              v26 = BYTE6(v20);
              goto LABEL_36;
            case 1uLL:
              v18 = HIDWORD(v19) == v19;
              if (__OFSUB__(HIDWORD(v19), v19))
              {
                goto LABEL_188;
              }

              v26 = HIDWORD(v19) - v19;
              goto LABEL_36;
            case 2uLL:
              v28 = *(v19 + 16);
              v27 = *(v19 + 24);
              v29 = __OFSUB__(v27, v28);
              v26 = v27 - v28;
              v18 = v26 == 0;
              if (!v29)
              {
                goto LABEL_36;
              }

LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
              goto LABEL_199;
            case 3uLL:
              goto LABEL_36;
            default:
LABEL_224:
              JUMPOUT(0);
          }
        }

        v26 = 0;
        if (v19 || (v20 == 0xC000000000000000 ? (v25 = v22 >> 62 == 3, v18 = v24 == 3) : (v25 = 0, v18 = 0), !v25 || (v26 = 0, v23) || (v18 = v22 == 0xC000000000000000, v22 != 0xC000000000000000)))
        {
LABEL_36:
          switch(v24)
          {
            case 1uLL:
              LODWORD(v30) = HIDWORD(v23) - v23;
              if (__OFSUB__(HIDWORD(v23), v23))
              {
                goto LABEL_184;
              }

              v30 = v30;
LABEL_45:
              if (v26 != v30)
              {
                goto LABEL_181;
              }

              v18 = v26 == 1;
              if (v26 < 1)
              {
                goto LABEL_99;
              }

              break;
            case 2uLL:
              v32 = *(v23 + 16);
              v31 = *(v23 + 24);
              v29 = __OFSUB__(v31, v32);
              v30 = v31 - v32;
              if (!v29)
              {
                goto LABEL_45;
              }

              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
              goto LABEL_187;
            case 3uLL:
              if (v26)
              {
                goto LABEL_181;
              }

              goto LABEL_99;
            default:
              v30 = BYTE6(v22);
              goto LABEL_45;
          }

          v33 = v23 >> 32;
          switch(v21)
          {
            case 1:
              v96 = v13;
              if (v19 >> 32 < v19)
              {
                goto LABEL_191;
              }

              v47 = v19;
              sub_2485D6480(v23, v22);
              sub_2485D6480(v23, v22);
              sub_2485D6480(v23, v22);
              v48 = sub_2485DFB58();
              if (!v48)
              {
                goto LABEL_75;
              }

              v49 = sub_2485DFB78();
              if (__OFSUB__(v47, v49))
              {
                goto LABEL_196;
              }

              v48 += v47 - v49;
LABEL_75:
              sub_2485DFB68();
              v50 = v97;
              sub_2485DF12C(__s1, v48, v23, v22);
              sub_2485D64D8(v23, v22);
              sub_2485D64D8(v23, v22);
              sub_2485D64D8(v23, v22);
              v97 = v50;
              if (v50)
              {
                goto LABEL_223;
              }

              v13 = v96;
              if ((__s1[0] & 1) == 0)
              {
                goto LABEL_181;
              }

              break;
            case 2:
              v37 = *(v19 + 16);
              v96 = *(v19 + 24);
              sub_2485D6480(v23, v22);
              sub_2485D6480(v23, v22);
              sub_2485D6480(v23, v22);
              v38 = sub_2485DFB58();
              if (!v38)
              {
                goto LABEL_59;
              }

              v39 = sub_2485DFB78();
              if (__OFSUB__(v37, v39))
              {
                goto LABEL_195;
              }

              v38 += v37 - v39;
LABEL_59:
              if (__OFSUB__(v96, v37))
              {
                goto LABEL_192;
              }

              sub_2485DFB68();
              v40 = v97;
              sub_2485DF12C(__s1, v38, v23, v22);
              sub_2485D64D8(v23, v22);
              sub_2485D64D8(v23, v22);
              sub_2485D64D8(v23, v22);
              v97 = v40;
              if (v40)
              {
                goto LABEL_223;
              }

              if ((__s1[0] & 1) == 0)
              {
                goto LABEL_181;
              }

              break;
            case 3:
              memset(__s1, 0, 14);
              if (!v24)
              {
                goto LABEL_78;
              }

              if (v24 == 2)
              {
                v41 = *(v23 + 16);
                v42 = *(v23 + 24);
                sub_2485D6480(v23, v22);
                v43 = sub_2485DFB58();
                if (v43)
                {
                  v44 = sub_2485DFB78();
                  if (__OFSUB__(v41, v44))
                  {
                    goto LABEL_207;
                  }

                  v43 += v41 - v44;
                }

                v29 = __OFSUB__(v42, v41);
                v45 = v42 - v41;
                if (v29)
                {
                  goto LABEL_202;
                }

                v46 = sub_2485DFB68();
                if (!v43)
                {
                  goto LABEL_218;
                }

LABEL_94:
                if (v46 >= v45)
                {
                  v52 = v45;
                }

                else
                {
                  v52 = v46;
                }

                v53 = v43;
              }

              else
              {
                if (v33 < v23)
                {
LABEL_199:
                  __break(1u);
LABEL_200:
                  __break(1u);
LABEL_201:
                  __break(1u);
LABEL_202:
                  __break(1u);
LABEL_203:
                  __break(1u);
LABEL_204:
                  __break(1u);
LABEL_205:
                  __break(1u);
LABEL_206:
                  __break(1u);
LABEL_207:
                  __break(1u);
LABEL_208:
                  __break(1u);
LABEL_209:
                  __break(1u);
LABEL_210:
                  __break(1u);
LABEL_211:
                  __break(1u);
LABEL_212:
                  __break(1u);
LABEL_213:
                  __break(1u);
LABEL_214:
                  __break(1u);
                }

                sub_2485D6480(v23, v22);
                v34 = sub_2485DFB58();
                if (v34)
                {
                  v51 = sub_2485DFB78();
                  if (__OFSUB__(v23, v51))
                  {
                    goto LABEL_209;
                  }

                  v34 += v23 - v51;
                }

                v36 = sub_2485DFB68();
                if (!v34)
                {
                  goto LABEL_217;
                }

LABEL_85:
                if (v36 >= v33 - v23)
                {
                  v52 = v33 - v23;
                }

                else
                {
                  v52 = v36;
                }

                v53 = v34;
              }

              v57 = memcmp(__s1, v53, v52);
              sub_2485D64D8(v23, v22);
              if (v57)
              {
                goto LABEL_181;
              }

              break;
            default:
              LOWORD(__s1[0]) = v9[4];
              BYTE2(__s1[0]) = BYTE2(v19);
              BYTE3(__s1[0]) = BYTE3(v19);
              BYTE4(__s1[0]) = BYTE4(v19);
              BYTE5(__s1[0]) = BYTE5(v19);
              BYTE6(__s1[0]) = BYTE6(v19);
              HIBYTE(__s1[0]) = HIBYTE(v19);
              LOWORD(__s1[1]) = v20;
              BYTE2(__s1[1]) = BYTE2(v20);
              BYTE3(__s1[1]) = BYTE3(v20);
              BYTE4(__s1[1]) = BYTE4(v20);
              BYTE5(__s1[1]) = BYTE5(v20);
              if (!v24)
              {
LABEL_78:
                __s2 = v23;
                v102 = v22;
                v103 = BYTE2(v22);
                v104 = BYTE3(v22);
                v105 = BYTE4(v22);
                v106 = BYTE5(v22);
                if (memcmp(__s1, &__s2, BYTE6(v22)))
                {
                  goto LABEL_181;
                }

                break;
              }

              if (v24 == 1)
              {
                if (v33 < v23)
                {
                  goto LABEL_200;
                }

                sub_2485D6480(v23, v22);
                v34 = sub_2485DFB58();
                if (v34)
                {
                  v35 = sub_2485DFB78();
                  if (__OFSUB__(v23, v35))
                  {
                    goto LABEL_210;
                  }

                  v34 += v23 - v35;
                }

                v36 = sub_2485DFB68();
                if (!v34)
                {
                  goto LABEL_216;
                }

                goto LABEL_85;
              }

              v54 = *(v23 + 16);
              v55 = *(v23 + 24);
              sub_2485D6480(v23, v22);
              v43 = sub_2485DFB58();
              if (v43)
              {
                v56 = sub_2485DFB78();
                if (__OFSUB__(v54, v56))
                {
                  goto LABEL_208;
                }

                v43 += v54 - v56;
              }

              v29 = __OFSUB__(v55, v54);
              v45 = v55 - v54;
              if (v29)
              {
                goto LABEL_201;
              }

              v46 = sub_2485DFB68();
              if (!v43)
              {
                __break(1u);
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:
                MEMORY[0x24C1D3A80](v97);
                __break(1u);
                JUMPOUT(0x2485DD6A4);
              }

              goto LABEL_94;
          }
        }

LABEL_99:
        v58 = v9[6];
        v59 = v9[7];
        v60 = v59 >> 62;
        v62 = *(v6 + 6);
        v61 = *(v6 + 7);
        v63 = v61 >> 62;
        if (v18)
        {
          v65 = 0;
          if (!v58 && v59 == 0xC000000000000000 && v61 >> 62 == 3)
          {
            v65 = 0;
            if (!v62 && v61 == 0xC000000000000000)
            {
              goto LABEL_177;
            }
          }
        }

        else
        {
          v65 = 0;
          switch(v60)
          {
            case 0uLL:
              v65 = BYTE6(v59);
              break;
            case 1uLL:
              if (__OFSUB__(HIDWORD(v58), v58))
              {
                goto LABEL_189;
              }

              v65 = HIDWORD(v58) - v58;
              break;
            case 2uLL:
              v67 = *(v58 + 16);
              v66 = *(v58 + 24);
              v29 = __OFSUB__(v66, v67);
              v65 = v66 - v67;
              if (!v29)
              {
                break;
              }

              goto LABEL_190;
            case 3uLL:
              break;
            default:
              goto LABEL_224;
          }
        }

        switch(v63)
        {
          case 1uLL:
            LODWORD(v68) = HIDWORD(v62) - v62;
            if (__OFSUB__(HIDWORD(v62), v62))
            {
              goto LABEL_186;
            }

            v68 = v68;
LABEL_124:
            if (v65 != v68)
            {
              goto LABEL_181;
            }

            if (v65 < 1)
            {
              goto LABEL_177;
            }

            break;
          case 2uLL:
            v70 = *(v62 + 16);
            v69 = *(v62 + 24);
            v29 = __OFSUB__(v69, v70);
            v68 = v69 - v70;
            if (!v29)
            {
              goto LABEL_124;
            }

            goto LABEL_185;
          case 3uLL:
            if (v65)
            {
              goto LABEL_181;
            }

            goto LABEL_177;
          default:
            v68 = BYTE6(v61);
            goto LABEL_124;
        }

        v71 = v62 >> 32;
        switch(v60)
        {
          case 1:
            if (v58 >> 32 < v58)
            {
              goto LABEL_193;
            }

            v96 = v58;
            sub_2485D6480(v62, v61);
            sub_2485D6480(v62, v61);
            sub_2485D6480(v62, v61);
            v76 = sub_2485DFB58();
            if (!v76)
            {
              goto LABEL_155;
            }

            v84 = sub_2485DFB78();
            if (__OFSUB__(v96, v84))
            {
              goto LABEL_198;
            }

            v76 += v96 - v84;
LABEL_155:
            sub_2485DFB68();
            v85 = v97;
            sub_2485DF12C(__s1, v76, v62, v61);
            sub_2485D64D8(v62, v61);
            sub_2485D64D8(v62, v61);
            sub_2485D64D8(v62, v61);
            v97 = v85;
            if (v85)
            {
              goto LABEL_223;
            }

            if ((__s1[0] & 1) == 0)
            {
              goto LABEL_181;
            }

            break;
          case 2:
            v75 = *(v58 + 16);
            v96 = *(v58 + 24);
            sub_2485D6480(v62, v61);
            sub_2485D6480(v62, v61);
            sub_2485D6480(v62, v61);
            v76 = sub_2485DFB58();
            if (!v76)
            {
              goto LABEL_138;
            }

            v77 = sub_2485DFB78();
            if (__OFSUB__(v75, v77))
            {
              goto LABEL_197;
            }

            v76 += v75 - v77;
LABEL_138:
            if (!__OFSUB__(v96, v75))
            {
              goto LABEL_155;
            }

            goto LABEL_194;
          case 3:
            memset(__s1, 0, 14);
            if (!v63)
            {
              goto LABEL_153;
            }

            if (v63 == 2)
            {
              v78 = *(v62 + 16);
              v79 = *(v62 + 24);
              sub_2485D6480(v62, v61);
              v80 = sub_2485DFB58();
              if (v80)
              {
                v81 = sub_2485DFB78();
                if (__OFSUB__(v78, v81))
                {
                  goto LABEL_211;
                }

                v80 += v78 - v81;
              }

              v29 = __OFSUB__(v79, v78);
              v82 = v79 - v78;
              if (v29)
              {
                goto LABEL_206;
              }

              v83 = sub_2485DFB68();
              if (!v80)
              {
                goto LABEL_220;
              }

              goto LABEL_172;
            }

            if (v71 < v62)
            {
              goto LABEL_204;
            }

            sub_2485D6480(v62, v61);
            v72 = sub_2485DFB58();
            if (v72)
            {
              v86 = sub_2485DFB78();
              if (__OFSUB__(v62, v86))
              {
                goto LABEL_214;
              }

              v72 += v62 - v86;
            }

            v74 = sub_2485DFB68();
            if (!v72)
            {
              goto LABEL_219;
            }

            goto LABEL_163;
          default:
            LOWORD(__s1[0]) = v9[6];
            BYTE2(__s1[0]) = BYTE2(v58);
            BYTE3(__s1[0]) = BYTE3(v58);
            BYTE4(__s1[0]) = BYTE4(v58);
            BYTE5(__s1[0]) = BYTE5(v58);
            BYTE6(__s1[0]) = BYTE6(v58);
            HIBYTE(__s1[0]) = HIBYTE(v58);
            LOWORD(__s1[1]) = v59;
            BYTE2(__s1[1]) = BYTE2(v59);
            BYTE3(__s1[1]) = BYTE3(v59);
            BYTE4(__s1[1]) = BYTE4(v59);
            BYTE5(__s1[1]) = BYTE5(v59);
            if (v63)
            {
              if (v63 == 1)
              {
                if (v71 < v62)
                {
                  goto LABEL_203;
                }

                sub_2485D6480(v62, v61);
                v72 = sub_2485DFB58();
                if (v72)
                {
                  v73 = sub_2485DFB78();
                  if (__OFSUB__(v62, v73))
                  {
                    goto LABEL_213;
                  }

                  v72 += v62 - v73;
                }

                v74 = sub_2485DFB68();
                if (!v72)
                {
                  goto LABEL_222;
                }

LABEL_163:
                if (v74 >= v71 - v62)
                {
                  v87 = v71 - v62;
                }

                else
                {
                  v87 = v74;
                }

                v88 = v72;
              }

              else
              {
                v89 = *(v62 + 16);
                v90 = *(v62 + 24);
                sub_2485D6480(v62, v61);
                v80 = sub_2485DFB58();
                if (v80)
                {
                  v91 = sub_2485DFB78();
                  if (__OFSUB__(v89, v91))
                  {
                    goto LABEL_212;
                  }

                  v80 += v89 - v91;
                }

                v29 = __OFSUB__(v90, v89);
                v82 = v90 - v89;
                if (v29)
                {
                  goto LABEL_205;
                }

                v83 = sub_2485DFB68();
                if (!v80)
                {
                  goto LABEL_221;
                }

LABEL_172:
                if (v83 >= v82)
                {
                  v87 = v82;
                }

                else
                {
                  v87 = v83;
                }

                v88 = v80;
              }

              v92 = memcmp(__s1, v88, v87);
              sub_2485D64D8(v62, v61);
              if (v92)
              {
                goto LABEL_181;
              }
            }

            else
            {
LABEL_153:
              __s2 = v62;
              v102 = v61;
              v103 = BYTE2(v61);
              v104 = BYTE3(v61);
              v105 = BYTE4(v61);
              v106 = BYTE5(v61);
              if (memcmp(__s1, &__s2, BYTE6(v61)))
              {
                goto LABEL_181;
              }
            }

            break;
        }

LABEL_177:
        sub_2485DFBC8();
        sub_2485DD75C(&qword_27EE9E488, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v93 = sub_2485DFDA8();
        sub_2485D642C();
        sub_2485D642C();
        if (v93)
        {
          v13 += v98;
          v12 = v100 + v98;
          if (--v10)
          {
            continue;
          }
        }

        return v93 & 1;
      }
    }

    v93 = 1;
  }

  else
  {
LABEL_182:
    v93 = 0;
  }

  return v93 & 1;
}

uint64_t sub_2485DD704(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2485DD75C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2485DD7A4(uint64_t result, uint64_t a2)
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
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_2485DD944(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_2485DFDC8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
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
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2485DD944(uint64_t a1, uint64_t a2)
{
  sub_2485DFDD8();
  sub_2485DFDB8();
  v4 = sub_2485DFDE8();

  return sub_2485DD9BC(a1, a2, v4);
}

unint64_t sub_2485DD9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2485DFDC8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2485DDA70()
{
  result = qword_27EE9E4A0;
  if (!qword_27EE9E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4A0);
  }

  return result;
}

unint64_t sub_2485DDAC4()
{
  result = qword_27EE9E4B0;
  if (!qword_27EE9E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4B0);
  }

  return result;
}

unint64_t sub_2485DDB18()
{
  result = qword_27EE9E4D0;
  if (!qword_27EE9E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4D0);
  }

  return result;
}

unint64_t sub_2485DDB70()
{
  result = qword_27EE9E4E8;
  if (!qword_27EE9E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4E8);
  }

  return result;
}

unint64_t sub_2485DDBC8()
{
  result = qword_27EE9E4F0;
  if (!qword_27EE9E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4F0);
  }

  return result;
}

unint64_t sub_2485DDC20()
{
  result = qword_27EE9E4F8;
  if (!qword_27EE9E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E4F8);
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

unint64_t sub_2485DDCF0()
{
  result = qword_27EE9E510;
  if (!qword_27EE9E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E510);
  }

  return result;
}

unint64_t sub_2485DDD48()
{
  result = qword_27EE9E518;
  if (!qword_27EE9E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E518);
  }

  return result;
}

unint64_t sub_2485DDDA0()
{
  result = qword_27EE9E520;
  if (!qword_27EE9E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E520);
  }

  return result;
}

unint64_t sub_2485DDE28()
{
  result = qword_27EE9E538;
  if (!qword_27EE9E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E538);
  }

  return result;
}

unint64_t sub_2485DDE80()
{
  result = qword_27EE9E540;
  if (!qword_27EE9E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E540);
  }

  return result;
}

unint64_t sub_2485DDED8()
{
  result = qword_27EE9E548;
  if (!qword_27EE9E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9E548);
  }

  return result;
}

uint64_t sub_2485DDF5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Aiml_Dpg_Service_V1_DataEventErrorCode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_81(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Aiml_Dpg_Service_V1_DataEventErrorCode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2485DE560(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_81(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2485DE574(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_2485DE5C8()
{
  OUTLINED_FUNCTION_30();
  if (v3)
  {
    return OUTLINED_FUNCTION_17(*v1);
  }

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_88();
  if (*(v5 + 84) == v0)
  {
    v6 = v2[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
    OUTLINED_FUNCTION_88();
    if (*(v7 + 84) == v0)
    {
      v6 = v2[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
      v6 = v2[7];
    }
  }

  v8 = OUTLINED_FUNCTION_43(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_2485DE6D8()
{
  OUTLINED_FUNCTION_16();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_2485DFBC8();
    OUTLINED_FUNCTION_88();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E460, &qword_2485DFFF0);
      OUTLINED_FUNCTION_88();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9E468, &qword_2485DFFF8);
        v8 = v5[7];
      }
    }

    v10 = OUTLINED_FUNCTION_29(v8);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

void sub_2485DE7E0()
{
  OUTLINED_FUNCTION_48();
  sub_2485DE8F8(319, v0, v1, MEMORY[0x277D83940]);
  if (v2 <= 0x3F)
  {
    sub_2485DFBC8();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_48();
      sub_2485DE8F8(319, v4, v5, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        sub_2485DE8F8(319, &qword_27EE9E5E8, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_35();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_73();
        }
      }
    }
  }
}

void sub_2485DE8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2485DE970()
{
  OUTLINED_FUNCTION_30();
  if (v2)
  {
    return OUTLINED_FUNCTION_17(*(v0 + 8));
  }

  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_43(*(v1 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2485DE9E8()
{
  OUTLINED_FUNCTION_16();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v4 = OUTLINED_FUNCTION_29(*(v2 + 44));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_2485DEA4C()
{
  sub_2485DEAF0();
  if (v0 <= 0x3F)
  {
    sub_2485DFBC8();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_35();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_73();
    }
  }
}

void sub_2485DEAF0()
{
  if (!qword_27EE9E5F0)
  {
    v0 = sub_2485DFD88();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE9E5F0);
    }
  }
}

uint64_t sub_2485DEB60()
{
  OUTLINED_FUNCTION_30();
  if (v2)
  {
    return OUTLINED_FUNCTION_17(*(v0 + 24));
  }

  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_43(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2485DEBD8()
{
  OUTLINED_FUNCTION_16();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v4 = OUTLINED_FUNCTION_29(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2485DEC70()
{
  OUTLINED_FUNCTION_30();
  if (v2)
  {
    return OUTLINED_FUNCTION_17(*(v0 + 48));
  }

  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_43(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2485DECE8()
{
  OUTLINED_FUNCTION_16();
  if (v3)
  {
    *(v1 + 48) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v4 = OUTLINED_FUNCTION_29(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2485DED70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_2485DFBC8();
  if (v8 <= 0x3F)
  {
    OUTLINED_FUNCTION_35();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_73();
  }

  return result;
}

uint64_t sub_2485DEDF0()
{
  OUTLINED_FUNCTION_30();
  if (v2)
  {
    return OUTLINED_FUNCTION_17(*v0);
  }

  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_43(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2485DEE68()
{
  OUTLINED_FUNCTION_16();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v4 = OUTLINED_FUNCTION_29(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_2485DEECC()
{
  sub_2485DE8F8(319, &qword_27EE9E5F8, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2485DFBC8();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_35();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_73();
    }
  }
}

uint64_t sub_2485DEF90()
{
  OUTLINED_FUNCTION_30();
  if (v2)
  {
    return OUTLINED_FUNCTION_17(*(v0 + 24));
  }

  OUTLINED_FUNCTION_54();
  v4 = OUTLINED_FUNCTION_43(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2485DF008()
{
  OUTLINED_FUNCTION_16();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v4 = OUTLINED_FUNCTION_29(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_2485DF06C()
{
  sub_2485DE8F8(319, &qword_27EE9E600, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2485DFBC8();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_35();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_73();
    }
  }
}

unint64_t sub_2485DF12C@<X0>(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x277D85DE8];
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
      result = sub_2485DF2A8(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        break;
      }

      goto LABEL_14;
    case 3uLL:
      if (!__s1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        MEMORY[0x24C1D3A80](v5);
        __break(1u);
        JUMPOUT(0x2485DF298);
      }

      result = 1;
      break;
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

      result = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      break;
  }

  *a1 = result & 1;
  return result;
}

char *sub_2485DF2A8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_2485DFB58();
  v8 = result;
  if (result)
  {
    result = sub_2485DFB78();
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

  result = sub_2485DFB68();
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

uint64_t OUTLINED_FUNCTION_17@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_22()
{

  return MEMORY[0x28217E158](v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_26()
{
  v4 = *(v0 + 80);

  return MEMORY[0x2821FE7E8](v1, ((v4 + 32) & ~v4) + 3 * v2, v4 | 7);
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1)
{

  return sub_2485DFDA8();
}

uint64_t OUTLINED_FUNCTION_50()
{

  return type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_2485DFBC8();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return MEMORY[0x28217E258](v1, v0);
}

uint64_t OUTLINED_FUNCTION_62@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

void OUTLINED_FUNCTION_65(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_67@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return MEMORY[0x2821FE7E8](v2, a1, a2 | 7);
}

uint64_t OUTLINED_FUNCTION_68()
{

  return sub_2485DFD58();
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_2485DFBC8();
}

uint64_t OUTLINED_FUNCTION_85@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v6 - 72);

  return MEMORY[0x28217E570](a1, a2, v5, a4, v4, v8);
}

uint64_t OUTLINED_FUNCTION_94(uint64_t a1, uint64_t a2, ...)
{

  return sub_2485DFD98();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_2485D5928();
}

uint64_t OUTLINED_FUNCTION_96()
{

  return sub_2485D5928();
}